unit UBaixaMaterialOP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMBaixaMaterialOP,
  StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, Buttons, RxLookup, SMDBGrid,
  NxCollection, Mask, ToolEdit, UDMEstoque, UDMEstoque_Res, DB, dbXPress, SqlExpr;



  {DB, DBGrids, ExtCtrls, StdCtrls, FMTBcd, , RzTabs, Mask, DBCtrls, ToolEdit, CurrEdit, RxLookup, RxDBComb, UNFe, UCBase,
  Menus, , DateUtils, UDMMovimento, NxEdit, USenha,
  UCadNotaFiscal_Obs, UConsNotaFiscal_NDevol, UCadNotaFiscal_Copia, UCadNotaFiscal_Alt_Imp, NxCollection, UCadNotaFiscal_Cons,
  UDMCadNotaFiscal_MP, UConsLimite_Credito, UImportar_TXT, UCadNotaFiscal_MObra, USel_Vale, Variants, UCadNotaFiscal_Imp_Aux,
  UCadNotaFiscal_ST, UEtiq_Rotulo, USel_Sacola, USel_Pedido_Tam, VarUtils;}



type
  TfrmBaixa_Material_OP = class(TForm)
    Panel1: TPanel;
    lblOrdemProducao: TLabel;
    edtOrdemProducao: TEdit;
    btnPesquisa: TBitBtn;
    StatusBar1: TStatusBar;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Shape3: TShape;
    Label14: TLabel;
    Shape4: TShape;
    Label15: TLabel;
    Label4: TLabel;
    DateEdit1: TDateEdit;
    btnConfBaixa: TNxButton;
    Panel3: TPanel;
    NxPanel1: TNxPanel;
    SMDBGrid2: TSMDBGrid;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPesquisaClick(Sender: TObject);
    procedure edtOrdemProducaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnConfBaixaClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure NxPanel1Click(Sender: TObject);
  private
    { Private declarations }
    fDMBaixaMaterial: TDMBaixaMaterial;
    fDMEstoque : TDMEstoque;
    fDMEstoque_Res : TDMEstoque_Res;

    procedure prc_Gravar_Lote_Mat_Est;

  public
    { Public declarations }
  end;

var
  frmBaixa_Material_OP: TfrmBaixa_Material_OP;

implementation

uses
  uUtilPadrao, rsDBUtils, DmdDatabase;

{$R *.dfm}

procedure TfrmBaixa_Material_OP.FormShow(Sender: TObject);
begin
  fDMBaixaMaterial := TDMBaixaMaterial.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMBaixaMaterial);
  fDMBaixaMaterial.prc_Abrir_Filial;
  uUtilPadrao.fnc_Busca_Nome_Filial;
  StatusBar1.Panels[0].Text := vUsuario;
  StatusBar1.Panels[1].Text := vFilial_Nome;
end;

procedure TfrmBaixa_Material_OP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmBaixa_Material_OP.btnPesquisaClick(Sender: TObject);
begin
  if edtOrdemProducao.Text = '' then
  begin
    MessageDlg('Informe o nº da Ordem de Produção!',mtError,[mbOK],0);
    edtOrdemProducao.SetFocus;
    fDMBaixaMaterial.cdsLoteMat.Close;
    Exit;
  end;
 fDMBaixaMaterial.prc_Abrir_Lote(StrToInt(edtOrdemProducao.Text));
end;

procedure TfrmBaixa_Material_OP.edtOrdemProducaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnPesquisaClick(Sender);
end;

procedure TfrmBaixa_Material_OP.btnConfBaixaClick(Sender: TObject);
var
  ID: TTransactionDesc;
  sds: TSQLDataSet;
  vID_Estoque, vID_Estoque_Res : Integer;
begin
  fDMEstoque     := TDMEstoque.Create(Self);
  fDMEstoque_Res := TDMEstoque_Res.Create(Self);

  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 5;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'UPDATE TABELALOC SET FLAG = 1 ' +
                         'WHERE TABELA = ' + QuotedStr('LOTE_MAT');
    sds.ExecSQL();

    fDMBaixaMaterial.cdsLoteMat.First;
    while not fDMBaixaMaterial.cdsLoteMat.Eof do
    begin
      if (SMDBGrid1.SelectedRows.CurrentRowSelected) and (StrToFloat(FormatFloat('0.00000',fDMBaixaMaterial.cdsLoteMatQTD_CONSUMO.AsFloat)) > 0) then
      begin
        prc_Gravar_Lote_Mat_Est;

        fDMBaixaMaterial.cdsLoteMat.Edit;
        fDMBaixaMaterial.cdsLoteMatQTD_EST_BAIXADO.AsFloat := StrToFloat(FormatFloat('0.0000',fDMBaixaMaterial.cdsLoteMatQTD_EST_BAIXADO.AsFloat + fDMBaixaMaterial.cdsLoteMatQTD_CONSUMO.AsFloat));
        fDMBaixaMaterial.cdsLoteMat.Post;

        fDMBaixaMaterial.cdsLoteMatEst.Edit;
        vID_Estoque := fDMEstoque.fnc_Gravar_Estoque(0,fDMBaixaMaterial.cdsLoteMatFILIAL.AsInteger, 1,
                                                       fDMBaixaMaterial.cdsLoteMatID_MATERIAL.AsInteger,
                                                       fDMBaixaMaterial.cdsLoteMatNUM_ORDEM.AsInteger,
                                                       0,0,0,0, 'S', 'LOT',
                                                       fDMBaixaMaterial.cdsLoteMatUNIDADE.AsString,
                                                       fDMBaixaMaterial.cdsLoteMatUNIDADE.AsString,
                                                       '',
                                                       fDMBaixaMaterial.cdsLoteMatTAMANHO.AsString,
                                                       fDMBaixaMaterial.cdsLoteMatEstDTMOVIMENTO.AsDateTime,
                                                       fDMBaixaMaterial.cdsLoteMatPRECO_VENDA.AsFloat,
                                                       fDMBaixaMaterial.cdsLoteMatEstQTD.AsFloat,
                                                       0,0,0,0,0,
                                                       fDMBaixaMaterial.cdsLoteMatEstQTD.AsFloat,
                                                       fDMBaixaMaterial.cdsLoteMatPRECO_VENDA.AsFloat,
                                                       0,0,fDMBaixaMaterial.cdsLoteMatUNIDADE.AsString,
                                                       fDMBaixaMaterial.cdsLoteMatID_COR.AsInteger,
                                                       '','N',0);
        if (StrToFloat(FormatFloat('0.0000',fDMBaixaMaterial.cdsLoteMatQTD_RESERVA.AsFloat)) > 0) then
        begin
          vID_Estoque_Res := fDMEstoque_Res.fnc_Gravar_Estoque_Res(0,fDMBaixaMaterial.cdsLoteMatFILIAL.AsInteger,
                                                         fDMBaixaMaterial.cdsLoteMatID_MATERIAL.AsInteger,
                                                         fDMBaixaMaterial.cdsLoteMatID_COR.AsInteger,
                                                         fDMBaixaMaterial.cdsLoteMatNUM_ORDEM.AsInteger,
                                                         fDMBaixaMaterial.cdsLoteMatTAMANHO.AsString,
                                                         'S', 'LOT',
                                                         fDMBaixaMaterial.cdsLoteMatEstQTD_RES.AsFloat,
                                                         fDMBaixaMaterial.cdsLoteMatEstDTMOVIMENTO.AsDateTime,'');
         fDMBaixaMaterial.cdsLoteMatEstID_MOVESTOQUE_RES.AsInteger := vID_Estoque_Res;
        end;
        fDMBaixaMaterial.cdsLoteMatEstID_MOVESTOQUE.AsInteger     := vID_Estoque;
        fDMBaixaMaterial.cdsLoteMatEst.Post;
      end;
      fDMBaixaMaterial.cdsLoteMat.Next;
    end;

    fDMBaixaMaterial.cdsLoteMatEst.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);
  except
    on e: Exception do
      begin
        dmDatabase.scoDados.Rollback(ID);
        raise Exception.Create('Erro ao gravar o Estoque: ' + #13 + e.Message);
      end;
  end;
  FreeAndNil(sds);
  FreeAndNil(fDMEstoque);
  FreeAndNil(fDMEstoque_Res);
  btnPesquisaClick(Sender);
end;

procedure TfrmBaixa_Material_OP.prc_Gravar_Lote_Mat_Est;
var
  vAux : Integer;
begin
  if not fDMBaixaMaterial.cdsLoteMatEst.Active then
  begin
    fDMBaixaMaterial.cdsLoteMatEst.Close;
    fDMBaixaMaterial.sdsLoteMatEst.ParamByName('ID').AsInteger := 0;
    fDMBaixaMaterial.cdsLoteMatEst.Open;
  end;
  vAux := dmDatabase.ProximaSequencia('LOTE_MAT_EST', 0);
  fDMBaixaMaterial.cdsLoteMatEst.Insert;
  fDMBaixaMaterial.cdsLoteMatEstID.AsInteger        := vAux;
  fDMBaixaMaterial.cdsLoteMatEstNUM_ORDEM.AsInteger := fDMBaixaMaterial.cdsLoteMatNUM_ORDEM.AsInteger; 
  fDMBaixaMaterial.cdsLoteMatEstITEM.AsInteger      := fDMBaixaMaterial.cdsLoteMatITEM.AsInteger;
  fDMBaixaMaterial.cdsLoteMatEstQTD.AsFloat         := StrToFloat(FormatFloat('0.0000',fDMBaixaMaterial.cdsLoteMatQTD_CONSUMO.AsFloat));
  fDMBaixaMaterial.cdsLoteMatEstDTMOVIMENTO.AsDateTime := DateEdit1.Date;
  fDMBaixaMaterial.cdsLoteMatEstID_MOVESTOQUE.AsInteger     := 0;
  fDMBaixaMaterial.cdsLoteMatEstFILIAL.AsInteger            := fDMBaixaMaterial.cdsLoteMatFILIAL.AsInteger;
  fDMBaixaMaterial.cdsLoteMatEstID_MOVESTOQUE_RES.AsInteger := 0;
  fDMBaixaMaterial.cdsLoteMatEstQTD_RES.AsFloat             := StrToFloat(FormatFloat('0.0000',fDMBaixaMaterial.cdsLoteMatQTD_RESERVA.AsFloat));
  fDMBaixaMaterial.cdsLoteMatEst.Post;
end;

procedure TfrmBaixa_Material_OP.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if StrToFloat(FormatFloat('0.0000',fDMBaixaMaterial.cdsLoteMatSaldo.AsFloat)) <= 0 then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if (StrToFloat(FormatFloat('0.0000',fDMBaixaMaterial.cdsLoteMatSaldo.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.0000',fDMBaixaMaterial.cdsLoteMatQTD_EST_BAIXADO.AsFloat)) > 0) then
  begin
    Background  := clAqua;
    AFont.Color := clBlack;
  end;
end;

procedure TfrmBaixa_Material_OP.NxPanel1Click(Sender: TObject);
begin
  fDMBaixaMaterial.cdsConsPend.Close;
  fDMBaixaMaterial.cdsConsPend.Open;
end;

end.

