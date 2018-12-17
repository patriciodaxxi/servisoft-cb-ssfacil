unit UPagto_Atelier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMMov_Atelier, ExtCtrls,
  DBCtrls, StdCtrls, ToolEdit, Mask, CurrEdit, RxLookup, Buttons, dbXPress, UDMGravarFinanceiro, SqlExpr,
  NxCollection, Grids, DBGrids, SMDBGrid, db, Menus;

type
  TfrmPagto_Atelier = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label4: TLabel;
    DateEdit1: TDateEdit;
    Label5: TLabel;
    DateEdit2: TDateEdit;
    Label6: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Panel2: TPanel;
    Label7: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label9: TLabel;
    Label10: TLabel;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    SMDBGrid3: TSMDBGrid;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    PopupMenu1: TPopupMenu;
    Selecionar1: TMenuItem;
    Desmarcar1: TMenuItem;
    SelecionarTodos1: TMenuItem;
    DesmarcarTodos1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure Selecionar1Click(Sender: TObject);
    procedure Desmarcar1Click(Sender: TObject);
    procedure SelecionarTodos1Click(Sender: TObject);
    procedure DesmarcarTodos1Click(Sender: TObject);
  private
    { Private declarations }
    fDMGravarFinanceiro: TDMGravarFinanceiro;
    vQtd: Real;
    vVlr: Real;
    vQtdReg: Integer;

    procedure prc_Verificar_Erros;
    procedure prc_Gravar_mSelPagto;
    procedure prc_AfterPost(DataSet: TDataSet);

  public
    { Public declarations }
    vID_Atelier: Integer;

    fDMMov_Atelier: TDMMov_Atelier;
  end;

var
  frmPagto_Atelier: TfrmPagto_Atelier;

implementation

uses rsDBUtils, uUtilPadrao, DmdDatabase;

{$R *.dfm}

procedure TfrmPagto_Atelier.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fDMMov_Atelier.mSelPagto.AfterPost := nil;

  fDMMov_Atelier.vExecutar_Post := 0;
  Action := Cafree;
end;

procedure TfrmPagto_Atelier.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMMov_Atelier);
  fDMMov_Atelier.vExecutar_Post := 0;

  Label10.Caption := vFilial_Nome;
  Label6.Visible  := (fDMMov_Atelier.qParametrosGRAVAR_FINANCEIRO_ATELIER.AsString = 'S');
  Label7.Visible  := (fDMMov_Atelier.qParametrosGRAVAR_FINANCEIRO_ATELIER.AsString = 'S');
  RxDBLookupCombo1.Visible  := (fDMMov_Atelier.qParametrosGRAVAR_FINANCEIRO_ATELIER.AsString = 'S');
  RxDBLookupCombo2.Visible  := (fDMMov_Atelier.qParametrosGRAVAR_FINANCEIRO_ATELIER.AsString = 'S');

  vQtd := 0;
  vVlr := 0;
  vQtdReg := 0;
  SMDBGrid3.DisableScroll;
  fDMMov_Atelier.mSelPagto.EmptyDataSet;
  fDMMov_Atelier.cdsConsulta_Talao_Aux.First;
  while not fDMMov_Atelier.cdsConsulta_Talao_Aux.Eof do
  begin
    if fDMMov_Atelier.cdsConsulta_Talao_AuxDTPAGAMENTO.IsNull then
    begin
      prc_Gravar_mSelPagto;
    end;
    fDMMov_Atelier.cdsConsulta_Talao_Aux.Next;
  end;
  Label8.Caption  := FormatFloat('###,###,##0.00',vVlr);
  Label12.Caption := FormatFloat('###,###,##0',vQtdReg);
  Label14.Caption := FormatFloat('###,###,##0.####',vQtd);
  CurrencyEdit1.Value := vVlr;
  SMDBGrid3.EnableScroll;

  fDMMov_Atelier.mSelPagto.AfterPost := prc_AfterPost;
  fDMMov_Atelier.vExecutar_Post := 1;
end;

procedure TfrmPagto_Atelier.prc_Verificar_Erros;
begin
  fDMMov_Atelier.vMsgErro := '';
  if (trim(RxDBLookupCombo1.Text) = '') and (fDMMov_Atelier.qParametrosGRAVAR_FINANCEIRO_ATELIER.AsString = 'S') then
    fDMMov_Atelier.vMsgErro := fDMMov_Atelier.vMsgErro + #13 + '*** Conta não informada!';
  if (trim(RxDBLookupCombo2.Text) = '') and (fDMMov_Atelier.qParametrosGRAVAR_FINANCEIRO_ATELIER.AsString = 'S') then
    fDMMov_Atelier.vMsgErro := fDMMov_Atelier.vMsgErro + #13 + '*** Forma de pagamento não informada!';
  if CurrencyEdit1.Value <= 0 then
    fDMMov_Atelier.vMsgErro := fDMMov_Atelier.vMsgErro + #13 + '*** Valor de pagamento não informado!';
  if DateEdit1.Date < 10 then
    fDMMov_Atelier.vMsgErro := fDMMov_Atelier.vMsgErro + #13 + '*** Data de pagamento não informada!';
  if DateEdit2.Date < 10 then
    fDMMov_Atelier.vMsgErro := fDMMov_Atelier.vMsgErro + #13 + '*** Data base não informada!';
  if vQtdReg <= 0 then
    fDMMov_Atelier.vMsgErro := fDMMov_Atelier.vMsgErro + #13 + '*** Nenhum talão selecionado!';
end;

procedure TfrmPagto_Atelier.btnConfirmarClick(Sender: TObject);
var
  sds: TSQLDataSet;
  sds2: TSQLDataSet;
  ID: TTransactionDesc;
  vID_MovAtelier: Integer;
begin
  prc_Verificar_Erros;
  if trim(fDMMov_Atelier.vMsgErro) <> '' then
  begin
    MessageDlg(fDMMov_Atelier.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  if not(fDMMov_Atelier.cdsMov_Atelier.Active) then
    fDMMov_Atelier.prc_Localizar(0);

  sds := TSQLDataSet.Create(nil);
  sds2 := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);

  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := ' UPDATE TABELALOC SET FLAG = 1 ' +
                         ' WHERE TABELA = ' + QuotedStr('MOV_ATELIER');
    sds.ExecSQL();

    fDMMov_Atelier.prc_Inserir;
    fDMMov_Atelier.cdsMov_AtelierDT_CADASTRO.AsDateTime   := DateEdit1.Date;
    fDMMov_Atelier.cdsMov_AtelierDT_REFERENCIA.AsDateTime := DateEdit2.Date;
    fDMMov_Atelier.cdsMov_AtelierTIPO_REG.AsString        := 'PAG';
    //fDMMov_Atelier.cdsMov_AtelierVLR_MOV.AsFloat          := CurrencyEdit1.Value;
    fDMMov_Atelier.cdsMov_AtelierVLR_MOV.AsFloat          := vVlr;
    fDMMov_Atelier.cdsMov_AtelierID_ATELIER.AsInteger     := vID_Atelier;

    fDMMov_Atelier.cdsMov_AtelierID_FINANCEIRO.Clear;
    fDMMov_Atelier.cdsMov_AtelierFILIAL.AsInteger := vFilial;
    if trim(RxDBLookupCombo1.Text) <> '' then
      fDMMov_Atelier.cdsMov_AtelierID_CONTA.AsInteger := RxDBLookupCombo1.KeyValue;

    if trim(RxDBLookupCombo2.Text) <> '' then
      fDMMov_Atelier.cdsMov_AtelierID_FORMA_PAGAMENTO.AsInteger := RxDBLookupCombo2.KeyValue;

    fDMMov_Atelier.cdsMov_Atelier.Post;
    vID_MovAtelier := fDMMov_Atelier.cdsMov_AtelierID.AsInteger;

    if fDMMov_Atelier.qParametrosGRAVAR_FINANCEIRO_ATELIER.AsString = 'S' then
      fDMMov_Atelier.prc_Gravar_Financeiro;

    fDMMov_Atelier.cdsMov_Atelier.ApplyUpdates(0);

    fDMMov_Atelier.mSelPagto.First;
    while not fDMMov_Atelier.mSelPagto.Eof do
    begin
      if fDMMov_Atelier.mSelPagtoSelecionado.AsBoolean then
      begin
        sds.SQLConnection := dmDatabase.scoDados;
        sds.NoMetadata    := True;
        sds.GetMetadata   := False;
        sds.CommandText   := ' UPDATE TALAO_AUX SET DTPAGAMENTO = ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.Date))
                           + ' , ID_MOV_ATELIER = ' + IntToStr(vID_MovAtelier)
                           + ' WHERE ID = ' + IntToStr(fDMMov_Atelier.mSelPagtoID_Talao.AsInteger)
                           + '   AND ITEM = ' + IntToStr(fDMMov_Atelier.mSelPagtoItem.AsInteger);
        sds.ExecSQL();
      end;
      fDMMov_Atelier.mSelPagto.Next;
    end;

    dmDatabase.scoDados.Commit(ID);
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
  FreeAndNil(sds);
  FreeAndNil(sds2);
  Close;
end;

procedure TfrmPagto_Atelier.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPagto_Atelier.prc_Gravar_mSelPagto;
begin
  fDMMov_Atelier.mSelPagto.Insert;
  fDMMov_Atelier.mSelPagtoNum_Ordem.AsInteger := fDMMov_Atelier.cdsConsulta_Talao_AuxNUM_ORDEM.AsInteger;
  fDMMov_Atelier.mSelPagtoNum_Lote.AsInteger  := fDMMov_Atelier.cdsConsulta_Talao_AuxNUM_LOTE.AsInteger;
  fDMMov_Atelier.mSelPagtoID_Talao.AsInteger  := fDMMov_Atelier.cdsConsulta_Talao_AuxID_TALAO.AsInteger;
  fDMMov_Atelier.mSelPagtoItem.AsInteger      := fDMMov_Atelier.cdsConsulta_Talao_AuxITEM.AsInteger;
  fDMMov_Atelier.mSelPagtoTalao_CodBarra.AsString  := fDMMov_Atelier.cdsConsulta_Talao_AuxTALAO_COD_BARRA.AsString;
  fDMMov_Atelier.mSelPagtoReferencia.AsString      := fDMMov_Atelier.cdsConsulta_Talao_AuxREFERENCIA.AsString;
  fDMMov_Atelier.mSelPagtoNome_Combinacao.AsString := fDMMov_Atelier.cdsConsulta_Talao_AuxNOME_COMBINACAO.AsString;
  fDMMov_Atelier.mSelPagtoQtd.AsFloat              := fDMMov_Atelier.cdsConsulta_Talao_AuxQTD_TALAO.AsFloat;
  fDMMov_Atelier.mSelPagtoVlr_Par.AsFloat          := StrToFloat(FormatFloat('0.0000',fDMMov_Atelier.cdsConsulta_Talao_AuxVLR_PAR.AsFloat));
  fDMMov_Atelier.mSelPagtoVlr_Total.AsFloat        := StrToFloat(FormatFloat('0.00',fDMMov_Atelier.cdsConsulta_Talao_AuxVLR_TOTAL.AsFloat));
  fDMMov_Atelier.mSelPagtoDtRetorno.AsDateTime     := fDMMov_Atelier.cdsConsulta_Talao_AuxDTRETORNO.AsDateTime;
  fDMMov_Atelier.mSelPagtoSelecionado.AsBoolean    := True;
  fDMMov_Atelier.mSelPagto.Post;
  vQtd := vQtd + fDMMov_Atelier.cdsConsulta_Talao_AuxQTD_TALAO.AsFloat;
  vVlr := StrToFloat(FormatFloat('0.00',vVlr + fDMMov_Atelier.cdsConsulta_Talao_AuxVLR_TOTAL.AsFloat));
  vQtdReg := vQtdReg + 1;
end;

procedure TfrmPagto_Atelier.prc_AfterPost(DataSet: TDataSet);
begin
  //if fDMMov_Atelier.mSelPagtoSelecionado.OldValue <> fDMMov_Atelier.mSelPagtoSelecionado.AsBoolean then
  if fDMMov_Atelier.vExecutar_Post = 1 then
  begin
    if fDMMov_Atelier.mSelPagtoSelecionado.AsBoolean then
    begin
      vQtd := vQtd + fDMMov_Atelier.mSelPagtoQtd.AsFloat;
      vVlr := StrToFloat(FormatFloat('0.00',vVlr + fDMMov_Atelier.mSelPagtoVlr_Total.AsFloat));
      vQtdReg := vQtdReg + 1;
    end
    else
    if not(fDMMov_Atelier.mSelPagtoSelecionado.AsBoolean) and (vQtdReg > 0) then
    begin
      vQtd := vQtd - fDMMov_Atelier.cdsConsulta_Talao_AuxQTD_TALAO.AsFloat;
      vVlr := StrToFloat(FormatFloat('0.00',vVlr - fDMMov_Atelier.mSelPagtoVlr_Total.AsFloat));
      vQtdReg := vQtdReg - 1;
    end;
    Label8.Caption  := FormatFloat('###,###,##0.00',vVlr);
    Label12.Caption := FormatFloat('###,###,##0',vQtdReg);
    Label14.Caption := FormatFloat('###,###,##0.####',vQtd);
    CurrencyEdit1.Value := vVlr;
  end;
end;

procedure TfrmPagto_Atelier.Selecionar1Click(Sender: TObject);
begin
  if not fDMMov_Atelier.mSelPagtoSelecionado.AsBoolean then
  begin
    fDMMov_Atelier.mSelPagto.Edit;
    fDMMov_Atelier.mSelPagtoSelecionado.AsBoolean := True;
    fDMMov_Atelier.mSelPagto.Post;
  end;
end;

procedure TfrmPagto_Atelier.Desmarcar1Click(Sender: TObject);
begin
  if fDMMov_Atelier.mSelPagtoSelecionado.AsBoolean then
  begin
    fDMMov_Atelier.mSelPagto.Edit;
    fDMMov_Atelier.mSelPagtoSelecionado.AsBoolean := False;
    fDMMov_Atelier.mSelPagto.Post;
  end;
end;

procedure TfrmPagto_Atelier.SelecionarTodos1Click(Sender: TObject);
begin
  vQtd := 0;
  vQtdReg := 0;
  vVlr := 0;
  fDMMov_Atelier.mSelPagto.First;
  while not fDMMov_Atelier.mSelPagto.Eof do
  begin
    fDMMov_Atelier.mSelPagto.Edit;
    fDMMov_Atelier.mSelPagtoSelecionado.AsBoolean := True;
    fDMMov_Atelier.mSelPagto.Post;
    fDMMov_Atelier.mSelPagto.Next;
  end;
end;

procedure TfrmPagto_Atelier.DesmarcarTodos1Click(Sender: TObject);
begin
  vQtd := 0;
  vQtdReg := 0;
  vVlr := 0;
  fDMMov_Atelier.mSelPagto.First;
  while not fDMMov_Atelier.mSelPagto.Eof do
  begin
    fDMMov_Atelier.mSelPagto.Edit;
    fDMMov_Atelier.mSelPagtoSelecionado.AsBoolean := False;
    fDMMov_Atelier.mSelPagto.Post;
    fDMMov_Atelier.mSelPagto.Next;
  end;
end;

end.
