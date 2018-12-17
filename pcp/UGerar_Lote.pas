unit UGerar_Lote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadLote, Grids, DBGrids, SMDBGrid,
  StdCtrls,DB, dbXPress, SqlExpr, RzTabs, CurrEdit, Mask, ToolEdit, RxLookup, Menus, UCBase, ExtCtrls, NxCollection, NxEdit;


type
  TfrmGerar_Lote = class(TForm)
    RzPageControl2: TRzPageControl;
    TS_Gerar: TRzTabSheet;
    TS_Consulta: TRzTabSheet;
    PopupMenu1: TPopupMenu;
    Lote1: TMenuItem;
    alo1: TMenuItem;
    Detalhado1: TMenuItem;
    Panel2: TPanel;
    btnExcluir: TNxButton;
    pnlPesquisa: TPanel;
    NxLabel3: TNxLabel;
    NxLabel4: TNxLabel;
    NxLabel5: TNxLabel;
    NxLabel6: TNxLabel;
    NxLabel7: TNxLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    cbxOpcao: TNxComboBox;
    RxDBLookupCombo1: TRxDBLookupCombo;
    cbxOpcaoData: TNxComboBox;
    btnConsultar: TNxButton;
    Shape2: TShape;
    Label1: TLabel;
    Panel1: TPanel;
    btnConfirmar: TNxButton;
    NxLabel2: TNxLabel;
    CurrencyEdit3: TCurrencyEdit;
    btnImprimir: TNxButton;
    pnlCadastro: TPanel;
    btnConsultar_Pedidos: TNxButton;
    GroupBox1: TGroupBox;
    SMDBGrid1: TSMDBGrid;
    ckAgrupar: TCheckBox;
    ckDtEntrega: TCheckBox;
    DateEdit3: TDateEdit;
    Label2: TLabel;
    FolhaResumo1: TMenuItem;
    ckAgrupar_Pedido: TCheckBox;
    aloRtulo1: TMenuItem;
    SMDBGrid2: TSMDBGrid;
    Etiqueta1: TMenuItem;
    FolhaA41: TMenuItem;
    Panel3: TPanel;
    NxLabel8: TNxLabel;
    NxLabel12: TNxLabel;
    NxButton1: TNxButton;
    CurrencyEdit6: TCurrencyEdit;
    Edit1: TEdit;
    TS_Consultar_PorPedido: TRzTabSheet;
    DateEdit4: TDateEdit;
    NxLabel1: TNxLabel;
    DateEdit5: TDateEdit;
    NxLabel9: TNxLabel;
    SMDBGrid3: TSMDBGrid;
    Label3: TLabel;
    CurrencyEdit4: TCurrencyEdit;
    CurrencyEdit5: TCurrencyEdit;
    Label4: TLabel;
    Personalizado1: TMenuItem;
    Personalizado11: TMenuItem;
    Personalizado21: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultar_PedidosClick(Sender: TObject);
    procedure ckDtEntregaClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Lote1Click(Sender: TObject);
    procedure alo1Click(Sender: TObject);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure RzPageControl2Change(Sender: TObject);
    procedure FolhaResumo1Click(Sender: TObject);
    procedure SMDBGrid2TitleClick(Column: TColumn);
    procedure Etiqueta1Click(Sender: TObject);
    procedure FolhaA41Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure SMDBGrid3TitleClick(Column: TColumn);
    procedure Personalizado11Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadLote: TDMCadLote;
    vNumLote: Integer;
    vNumOrdem: Integer;
    vNumPedido: Integer;

    procedure prc_Consultar;
    procedure prc_Gerar_Lote;
    procedure prc_Gerar_Talao;
    procedure prc_Consultar_Lote;

    procedure prc_Limpar_Auxiliar;
    procedure prc_Limpar_Var;
    procedure prc_Consultar_Pedido_PorTalao;  
  public
    { Public declarations }
  end;

var
  frmGerar_Lote: TfrmGerar_Lote;

implementation

uses rsDBUtils, DmdDatabase, uUtilPadrao, USel_Produto, UMenu, URelLote, URelLote_Res, URelTalao_Rot, URelTalao_Rot_A4,
  URelTalao_Rot2;

{$R *.dfm}

procedure TfrmGerar_Lote.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmGerar_Lote.FormShow(Sender: TObject);
var
  i: Integer;
begin
  fDMCadLote := TDMCadLote.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadLote);
  DateEdit3.Date := Date;

  for i := 1 to SMDBGrid2.ColCount - 2 do
  begin
    if (SMDBGrid2.Columns[i].FieldName = 'CARIMBO') then
      SMDBGrid2.Columns[i].Visible := (fDMCadLote.qParametrosUSA_CARIMBO.AsString = 'S');
  end;
  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if (SMDBGrid1.Columns[i].FieldName = 'CARIMBO') then
      SMDBGrid1.Columns[i].Visible := (fDMCadLote.qParametrosUSA_CARIMBO.AsString = 'S');
  end;
end;

procedure TfrmGerar_Lote.btnConsultar_PedidosClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmGerar_Lote.prc_Consultar;
begin
  fDMCadLote.sdsPendente.CommandText := fDMCadLote.ctPendente;
  fDMCadLote.sdsPendente.CommandText := fDMCadLote.sdsPendente.CommandText
                                        + ' AND NOT EXISTS( SELECT 1 FROM TALAO_PED '
                                        + ' WHERE TALAO_PED.ID_PEDIDO =  PI2.ID AND TALAO_PED.ITEM_PEDIDO = PI2.ITEM) ';
  fDMCadLote.sdsPendente.CommandText := fDMCadLote.sdsPendente.CommandText + ' AND PI2.QTD_RESTANTE > 0';

  fDMCadLote.cdsPendente.Close;
  fDMCadLote.cdsPendente.Open;
  fDMCadLote.cdsPendente.IndexFieldNames := 'NUM_PEDIDO;ID_PRODUTO;ITEM_ORIGINAL;TAMANHO';
end;

procedure TfrmGerar_Lote.prc_Gerar_Lote;
var
  vData: TDateTime;
begin
  if (ckDtEntrega.Checked) and (fDMCadLote.cdsPendenteDTENTREGA.AsDateTime > 10) then
    vData := fDMCadLote.cdsPendenteDTENTREGA.AsDateTime
  else
    vData := DateEdit3.Date;
  if not(ckAgrupar_Pedido.Checked) and (vNumPedido <> fDMCadLote.cdsPendenteNUM_PEDIDO.AsInteger) then
    fDMCadLote.prc_Inserir
  else
  if not(ckAgrupar.Checked) or not(fDMCadLote.cdsLote.Locate('ID_PRODUTO;DTENTREGA',VarArrayOf([fDMCadLote.cdsPendenteID_PRODUTO.AsInteger,vData]),[locaseinsensitive])) then
    fDMCadLote.prc_Inserir
  else
  if fDMCadLote.cdsLote.Locate('ID_PRODUTO;DTENTREGA',VarArrayOf([fDMCadLote.cdsPendenteID_PRODUTO.AsInteger,vData]),[locaseinsensitive]) then
    fDMCadLote.cdsLote.Edit
  else
    fDMCadLote.cdsLote.Insert;
  if fDMCadLote.cdsLote.State in [dsInsert] then
  begin
    fDMCadLote.cdsLoteQTD_TALOES.AsInteger := 0;
    fDMCadLote.cdsLoteDTEMISSAO.AsDateTime := Date;
    fDMCadLote.cdsLoteHREMISSAO.AsDateTime := Now;
    fDMCadLote.cdsLoteID_PRODUTO.AsInteger := fDMCadLote.cdsPendenteID_PRODUTO.AsInteger;
    fDMCadLote.cdsLoteDTENTREGA.AsDateTime := vData;
    fDMCadLote.cdsLoteFILIAL.AsInteger     := fDMCadLote.cdsPendenteFILIAL.AsInteger;
    fDMCadLote.cdsLoteQTD.AsFloat          := 0;
    fDMCadLote.cdsLoteCARIMBO.AsString     := fDMCadLote.cdsPendenteCARIMBO.AsString;
    if vNumLote <= 0 then
    begin
      fDMCadLote.qProximo_Lote.Close;
      fDMCadLote.qProximo_Lote.Open;
      vNumLote := fDMCadLote.qProximo_LoteNUM_LOTE.AsInteger;
    end;
    vNumLote := vNumLote + 1;
    if vNumOrdem <= 0 then
    begin
      fDMCadLote.qProxima_Ordem.Close;
      fDMCadLote.qProxima_Ordem.Open;
      vNumOrdem := fDMCadLote.qProxima_OrdemNUM_ORDEM.AsInteger + 1;
    end;
    fDMCadLote.cdsLoteNUM_LOTE.AsInteger  := vNumLote;
    fDMCadLote.cdsLoteNUM_ORDEM.AsInteger := vNumOrdem;
  end;
  fDMCadLote.cdsLoteQTD.AsFloat := fDMCadLote.cdsLoteQTD.AsFloat + fDMCadLote.cdsPendenteQTD_RESTANTE.AsFloat;
  fDMCadLote.cdsLote.Post;
end;

procedure TfrmGerar_Lote.prc_Gerar_Talao;
var
  vTamAux: String;
  vTalaoAux: Integer;
  vFlag: Boolean;
  vQtd_Ped: Real;
  vQtd_Aux: Real;
begin
  if trim(fDMCadLote.cdsPendenteTAMANHO.AsString) = '' then
    vTamAux := ''
  else
    vTamAux := fDMCadLote.cdsPendenteTAMANHO.AsString;

  vTalaoAux := 0;
  if (fDMCadLote.mAuxiliar_Talao.FindKey([fDMCadLote.cdsPendenteID_PRODUTO.AsInteger,vTamAux])) then
    vTalaoAux := fDMCadLote.mAuxiliar_TalaoNum_Talao.AsInteger;

  vQtd_Aux := 0;
  vQtd_Ped := fDMCadLote.cdsPendenteQTD_RESTANTE.AsFloat;
  vFlag    := False;
  while StrToFloat(FormatFloat('0.00000',vQtd_Ped)) > 0  do
  begin                                                
    //if fDMCadLote.cdsTalao.Locate('TAMANHO',vTamAux,[loCaseInsensitive]) then
    if not(vFlag) and (fDMCadLote.cdsTalao.Locate('ID_PRODUTO;TAMANHO;NUM_TALAO',VarArrayOf([fDMCadLote.cdsPendenteID_PRODUTO.AsInteger,vTamAux,vTalaoAux]),[locaseinsensitive])) then
      fDMCadLote.cdsTalao.Edit
    else
    begin
      fDMCadLote.prc_Inserir_Talao;
      fDMCadLote.cdsTalaoID_PRODUTO.AsInteger := fDMCadLote.cdsPendenteID_PRODUTO.AsInteger;
      fDMCadLote.cdsTalaoTAMANHO.AsString     := vTamAux;
    end;
    vQtd_Aux := vQtd_Ped;
    if StrToFloat(FormatFloat('0',fDMCadLote.cdsProdutoQTD_TALAO.AsInteger)) > 0 then
    begin
      if StrToFloat(FormatFloat('0.00000',fDMCadLote.cdsTalaoQTD.AsFloat)) >= StrToFloat(FormatFloat('0',fDMCadLote.cdsProdutoQTD_TALAO.AsInteger)) then
      begin
        fDMCadLote.prc_Inserir_Talao;
        fDMCadLote.cdsTalaoID_PRODUTO.AsInteger := fDMCadLote.cdsPendenteID_PRODUTO.AsInteger;
        fDMCadLote.cdsTalaoTAMANHO.AsString     := vTamAux;
      end
      else
      begin
        vQtd_Aux := fDMCadLote.cdsTalaoQTD.AsFloat + vQtd_Ped;
        if StrToFloat(FormatFloat('0.00000',vQtd_Aux)) >= StrToFloat(FormatFloat('0',fDMCadLote.cdsProdutoQTD_TALAO.AsInteger)) then
          vQtd_Aux := fDMCadLote.cdsProdutoQTD_TALAO.AsInteger -  fDMCadLote.cdsTalaoQTD.AsFloat;
      end;
    end;
    //fDMCadLote.cdsTalaoQTD.AsFloat          := fDMCadLote.cdsTalaoQTD.AsFloat + fDMCadLote.cdsPendenteQTD_RESTANTE.AsFloat;
    fDMCadLote.cdsTalaoQTD.AsFloat          := fDMCadLote.cdsTalaoQTD.AsFloat + vQtd_Aux;
    fDMCadLote.cdsTalaoQTD_PENDENTE.AsFloat := fDMCadLote.cdsTalaoQTD.AsFloat;
    fDMCadLote.cdsTalao.Post;

    if fDMCadLote.cdsTalao.State in [dsInsert] then
    begin
      fDMCadLote.mAuxiliar_Talao.Insert;
      fDMCadLote.mAuxiliar_TalaoID_Produto.AsInteger := fDMCadLote.cdsPendenteID_PRODUTO.AsInteger;
      fDMCadLote.mAuxiliar_TalaoTamanho.AsString     := fDMCadLote.cdsPendenteTAMANHO.AsString;
      fDMCadLote.mAuxiliar_TalaoNum_Talao.AsInteger  := fDMCadLote.cdsTalaoNUM_TALAO.AsInteger;
      fDMCadLote.mAuxiliar_Talao.Post;
    end;
    fDMCadLote.cdsTalao_Ped.Insert;
    fDMCadLote.cdsTalao_PedID_PEDIDO.AsInteger   := fDMCadLote.cdsPendenteID.AsInteger;
    fDMCadLote.cdsTalao_PedITEM_PEDIDO.AsInteger := fDMCadLote.cdsPendenteITEM.AsInteger;
    //fDMCadLote.cdsTalao_PedQTD.AsFloat           := fDMCadLote.cdsPendenteQTD_RESTANTE.AsFloat;
    fDMCadLote.cdsTalao_PedQTD.AsFloat           := vQtd_Aux;
    fDMCadLote.cdsTalao_PedID_CLIENTE.AsInteger  := fDMCadLote.cdsPendenteID_CLIENTE.AsInteger;
    fDMCadLote.cdsTalao_PedBAIXADO.AsString      := 'N';
    fDMCadLote.cdsTalao_Ped.Post;

    vQtd_Ped := StrToFloat(FormatFloat('0.00000',vQtd_Ped - vQtd_Aux));
    if StrToFloat(FormatFloat('0.00000',vQtd_Ped)) <= 0 then
      vFlag := True;
  end;
end;

procedure TfrmGerar_Lote.ckDtEntregaClick(Sender: TObject);
begin
  Label2.Visible    := not(ckDtEntrega.Checked);
  DateEdit3.Visible := not(ckDtEntrega.Checked);
end;

procedure TfrmGerar_Lote.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar_Lote;
end;

procedure TfrmGerar_Lote.prc_Consultar_Lote;
var
  vComando: String;
  vDescData: String;
begin
  case cbxOpcaoData.ItemIndex of
    0: vDescData := 'L.DTEMISSAO';
    1: vDescData := 'L.DTENTREGA';
  end;
  fDMCadLote.cdsConsulta_Lote.Close;
  fDMCadLote.sdsConsulta_Lote.CommandText := fDMCadLote.ctConsulta_Lote + ' WHERE 0 = 0 ';
  vComando := '';
  if CurrencyEdit1.AsInteger > 0 then
    vComando :=  vComando + ' AND L.NUM_LOTE >= ' + CurrencyEdit1.Text;
  if CurrencyEdit2.AsInteger > 0 then
    vComando :=  vComando + ' AND L.NUM_LOTE <= ' + CurrencyEdit2.Text;
  if CurrencyEdit3.AsInteger > 0 then
    vComando :=  vComando + ' AND L.NUM_ORDEM = ' + CurrencyEdit3.Text;
  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND ' + vDescData + ' >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    vComando := vComando + ' AND ' + vDescData + ' <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  case cbxOpcao.ItemIndex of
    0: vComando := vComando + ' AND T.QTD_PENDENTE > 0';
    1: vComando := vComando + ' AND T.QTD_PRODUZIDO > 0';
  end;
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND T.ID_PRODUTO = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  fDMCadLote.sdsConsulta_Lote.CommandText := fDMCadLote.sdsConsulta_Lote.CommandText + vComando;
  fDMCadLote.cdsConsulta_Lote.Open;
end;

procedure TfrmGerar_Lote.RxDBLookupCombo1Enter(Sender: TObject);
begin
  fDMCadLote.cdsProduto.IndexFieldNames := 'REFERENCIA';
end;

procedure TfrmGerar_Lote.RxDBLookupCombo1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if RxDBLookupCombo1.Text <> '' then
      vCodProduto_Pos := RxDBLookupCombo1.KeyValue;
    frmSel_Produto  := TfrmSel_Produto.Create(Self);
    frmSel_Produto.ShowModal;
    if vCodProduto_Pos > 0 then
      RxDBLookupCombo1.KeyValue := vCodProduto_Pos;
  end;
end;

procedure TfrmGerar_Lote.Lote1Click(Sender: TObject);
begin
  prc_Limpar_Auxiliar;
  fDMCadLote.qParametros.Close;
  fDMCadLote.qParametros.Open;
  fDMCadLote.cdsConsulta_Lote.First;
  while not fDMCadLote.cdsConsulta_Lote.Eof do
  begin
    if (SMDBGrid2.SelectedRows.CurrentRowSelected) then
      fDMCadLote.prc_Gravar_mLote('L');
    fDMCadLote.cdsConsulta_Lote.Next;
  end;
  fDMCadLote.mMaterial.First;
  while not fDMCadLote.mMaterial.Eof do
  begin
    fDMCadLote.mMaterial_Tam.First;
    while not fDMCadLote.mMaterial_Tam.Eof do
      fDMCadLote.mMaterial_Tam.Delete;
    fDMCadLote.mMaterial.Delete;
  end;
  fRelLote            := TfRelLote.Create(Self);
  fRelLote.fDMCadLote := fDMCadLote;
  fRelLote.vTipo_Rel  := 'L';
  fRelLote.RLReport1.PreviewModal;
  fRelLote.RLReport1.Free;
  FreeAndNil(fRelLote);
end;

procedure TfrmGerar_Lote.alo1Click(Sender: TObject);
begin
  prc_Limpar_Auxiliar;
  fDMCadLote.cdsConsulta_Lote.First;
  while not fDMCadLote.cdsConsulta_Lote.Eof do
  begin
    if (SMDBGrid2.SelectedRows.CurrentRowSelected) then
      fDMCadLote.prc_Gravar_mLote('T');
    fDMCadLote.cdsConsulta_Lote.Next;
  end;
  try
    fDMCadLote.mLote.IndexFieldNames := 'Num_Lote;Referencia';
    fRelLote            := TfRelLote.Create(Self);
    fRelLote.fDMCadLote := fDMCadLote;
    fRelLote.vTipo_Rel  := 'T';
    fRelLote.RLReport1.PreviewModal;
  finally
    fRelLote.RLReport1.Free;
    FreeAndNil(fRelLote);
    fDMCadLote.mLote.IndexFieldNames := 'Num_Lote';
  end;
end;

procedure TfrmGerar_Lote.prc_Limpar_Auxiliar;
begin
  fDMCadLote.mLote.First;
  while not fDMCadLote.mLote.eof do
  begin
    fDMCadLote.mTalao.First;
    while not fDMCadLote.mTalao.Eof do
      fDMCadLote.mTalao.Delete;
    fDMCadLote.mLote.Delete;
  end;
  fDMCadLote.mMaterial.First;
  while not fDMCadLote.mMaterial.Eof do
  begin
    fDMCadLote.mMaterial_Tam.First;
    while not fDMCadLote.mMaterial_Tam.Eof do
      fDMCadLote.mMaterial_Tam.Delete;
    fDMCadLote.mMaterial.Delete;
  end;
  fDMCadLote.mTamanho.First;
  while not fDMCadLote.mTamanho.Eof do
    fDMCadLote.mTamanho.Delete;
end;

procedure TfrmGerar_Lote.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if not(fDMCadLote.cdsConsulta_LoteDTBAIXA.IsNull) then
    Background := clMoneyGreen;
end;

procedure TfrmGerar_Lote.btnConfirmarClick(Sender: TObject);
var
  ID: TTransactionDesc;
  sds: TSQLDataSet;
begin
  if MessageDlg('Gerar Lote/Talões?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  if not(ckDtEntrega.Checked) and (DateEdit3.Date < 10) then
  begin
    MessageDlg('*** Data de entrega do Lote/Talão não informada!', mtError, [mbOk], 0);
    exit;
  end;

  vNumLote  := 0;
  vNumOrdem := 0;
  fDMCadLote.mAuxiliar_Talao.EmptyDataSet;
  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := ' UPDATE TABELALOC SET FLAG = 1 WHERE TABELA = ' + QuotedStr('LOTE');
    sds.ExecSQL();

    fDMCadLote.prc_Localizar(-1);

    vNumPedido := 0;
    fDMCadLote.cdsPendente.First;
    while not fDMCadLote.cdsPendente.Eof do
    begin
      if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
      begin
        if fDMCadLote.cdsProdutoID.AsInteger <> fDMCadLote.cdsPendenteID_PRODUTO.AsInteger then
          fDMCadLote.cdsProduto.Locate('ID',fDMCadLote.cdsPendenteID_PRODUTO.AsInteger,[loCaseInsensitive]);
        prc_Gerar_Lote;
        prc_Gerar_Talao;
      end;
      vNumPedido := fDMCadLote.cdsPendenteNUM_PEDIDO.AsInteger;
      fDMCadLote.cdsPendente.Next;
    end;

    if not fDMCadLote.cdsLote.IsEmpty then
    begin
      fDMCadLote.cdsLote.First;
      while not fDMCadLote.cdsLote.Eof do
      begin
        fDMCadLote.cdsLote.Edit;
        fDMCadLote.cdsLoteQTD_TALOES.AsInteger := fDMCadLote.cdsTalao.RecordCount;
        fDMCadLote.cdsLote.Post;
        fDMCadLote.cdsLote.Next;
      end;
      fDMCadLote.cdsLote.ApplyUpdates(0);
      MessageDlg('*** Lotes/Talões Gerados!', mtInformation, [mbok], 0);
      dmDatabase.scoDados.Commit(ID);
      prc_Limpar_Var;
      CurrencyEdit3.AsInteger := vNumOrdem;
      //btnConsultar_PedidosClick(Sender);
      RzPageControl2.ActivePage := TS_Consulta;
      btnConsultarClick(Sender);
    end
    else
    begin
      MessageDlg('*** Nenhum pedido selecionado!' +  fDMCadLote.cdsLoteNUM_LOTE.AsString, mtInformation, [mbok], 0);
      dmDatabase.scoDados.Rollback(ID);
    end;

  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
  FreeAndNil(sds);
end;

procedure TfrmGerar_Lote.prc_Limpar_Var;
begin
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  CurrencyEdit3.Clear;
  DateEdit1.Clear;
  DateEdit2.Clear;
  cbxOpcao.ItemIndex := 0;
  RxDBLookupCombo1.ClearValue;
end;

procedure TfrmGerar_Lote.btnExcluirClick(Sender: TObject);
var
  vNumOrdemAux: String;
  sds: TSQLDataSet;
begin
  if MessageDlg('Deseja excluir os Lotes/Talões selecionados?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  vNumOrdemAux := InputBox('Exclusão dos Lotes/Talões','Informe o número do controle: ', '');
  vNumOrdemAux := Monta_Numero(vNumOrdemAux,0);
  if (trim(vNumOrdemAux) = '') or (vNumOrdemAux = '0') then
    exit;

  fDMCadLote.qVerificaExclusao.Close;
  fDMCadLote.qVerificaExclusao.ParamByName('NUM_ORDEM').AsInteger := StrToInt(vNumOrdemAux);
  fDMCadLote.qVerificaExclusao.Open;
  if fDMCadLote.qVerificaExclusaoCOUNT.AsInteger > 0 then
  begin
    MessageDlg('*** Existe Lote/Talão baixado, exclusão cancelada!', mtError, [mbOk], 0);
    exit;
  end;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  try
    sds.CommandText   := ' DELETE FROM LOTE  '
                     + ' WHERE NUM_ORDEM = ' + vNumOrdemAux;
    sds.ExecSQL();

    MessageDlg('*** Nº Controle ' + vNumOrdemAux + ' excluído!', mtInformation, [mbok], 0);

  finally
    FreeAndNil(sds);
    btnConsultarClick(Sender);
  end;
end;

procedure TfrmGerar_Lote.RzPageControl2Change(Sender: TObject);
begin
  if RzPageControl2.ActivePage = TS_Gerar then
    btnConsultar_PedidosClick(Sender);
end;

procedure TfrmGerar_Lote.FolhaResumo1Click(Sender: TObject);
begin
  prc_Limpar_Auxiliar;
  fDMCadLote.qParametros.Close;
  fDMCadLote.qParametros.Open;
  fDMCadLote.cdsConsulta_Lote.First;
  while not fDMCadLote.cdsConsulta_Lote.Eof do
  begin
    if (SMDBGrid2.SelectedRows.CurrentRowSelected) then
      fDMCadLote.prc_Gravar_mLote('L');
    fDMCadLote.cdsConsulta_Lote.Next;
  end;
  fDMCadLote.mMaterial.First;
  while not fDMCadLote.mMaterial.Eof do
  begin
    fDMCadLote.mMaterial_Tam.First;
    while not fDMCadLote.mMaterial_Tam.Eof do
      fDMCadLote.mMaterial_Tam.Delete;
    fDMCadLote.mMaterial.Delete;
  end;
  try
    fDMCadLote.mLote.IndexFieldNames := 'Num_Lote;Referencia';
    fRelLote_Res            := TfRelLote_Res.Create(Self);
    fRelLote_Res.fDMCadLote := fDMCadLote;
    fRelLote_Res.RLReport1.PreviewModal;
    fRelLote_Res.RLReport1.Free;
  finally
    FreeAndNil(fRelLote_Res);
    fDMCadLote.mLote.IndexFieldNames := 'Num_Lote';        
  end;

end;

procedure TfrmGerar_Lote.SMDBGrid2TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadLote.cdsConsulta_Lote.IndexFieldNames := Column.FieldName;
  if Column.FieldName = 'NUM_LOTE' then
    fDMCadLote.cdsConsulta_Lote.IndexFieldNames := Column.FieldName + ';NUM_TALAO'
  else
  if Column.FieldName = 'TAMANHO' then
    fDMCadLote.cdsConsulta_Lote.IndexFieldNames := Column.FieldName + ';REFERENCIA';
  fDMCadLote.cdsConsulta_Lote.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid2.Columns.Count - 1 do
    if not (SMDBGrid2.Columns.Items[I].Title = Column.Title) then
      SMDBGrid2.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmGerar_Lote.Etiqueta1Click(Sender: TObject);
begin
  fDMCadLote.qParametros.Close;
  fDMCadLote.qParametros.Open;
  if fDMCadLote.qParametrosALTURA_ETIQ_ROT.AsInteger <= 0 then
    fDMCadLote.vAltura_Etiq_Rot := 104
  else
    fDMCadLote.vAltura_Etiq_Rot := fDMCadLote.qParametrosALTURA_ETIQ_ROT.AsInteger;
  prc_Limpar_Auxiliar;
  fDMCadLote.cdsConsulta_Lote.First;
  while not fDMCadLote.cdsConsulta_Lote.Eof do
  begin
    if (SMDBGrid2.SelectedRows.CurrentRowSelected) then
      fDMCadLote.prc_Gravar_mLote('T');
    fDMCadLote.cdsConsulta_Lote.Next;
  end;
  if fDMCadLote.qParametrosUSA_ROTULO2.AsString = 'S' then
  begin
    fRelTalao_Rot2 := TfRelTalao_Rot2.Create(Self);
    fRelTalao_Rot2.fDMCadLote := fDMCadLote;
    fRelTalao_Rot2.RLReport1.PreviewModal;
    fRelTalao_Rot2.RLReport1.Free;
    FreeAndNil(fRelTalao_Rot2);
  end
  else
  begin
    fRelTalao_Rot := TfRelTalao_Rot.Create(Self);
    fRelTalao_Rot.fDMCadLote := fDMCadLote;
    fRelTalao_Rot.RLReport1.PreviewModal;
    fRelTalao_Rot.RLReport1.Free;
    FreeAndNil(fRelTalao_Rot);
  end;
end;

procedure TfrmGerar_Lote.FolhaA41Click(Sender: TObject);
begin
  fDMCadLote.qParametros.Close;
  fDMCadLote.qParametros.Open;
  prc_Limpar_Auxiliar;
  fDMCadLote.cdsConsulta_Lote.First;
  while not fDMCadLote.cdsConsulta_Lote.Eof do
  begin
    if (SMDBGrid2.SelectedRows.CurrentRowSelected) then
      fDMCadLote.prc_Gravar_mLote('T');
    fDMCadLote.cdsConsulta_Lote.Next;
  end;
  fRelTalao_Rot_A4 := TfRelTalao_Rot_A4.Create(Self);
  fRelTalao_Rot_A4.fDMCadLote := fDMCadLote;
  fRelTalao_Rot_A4.RLReport1.PreviewModal;
  fRelTalao_Rot_A4.RLReport1.Free;
  FreeAndNil(fRelTalao_Rot_A4);
end;

procedure TfrmGerar_Lote.NxButton1Click(Sender: TObject);
begin
  prc_Consultar_Pedido_PorTalao;
end;

procedure TfrmGerar_Lote.prc_Consultar_Pedido_PorTalao;
var
  vComando: String;
begin
  fDMCadLote.cdsPedido_PorTalao.Close;
  vComando := ' WHERE 0 = 0 ';
  if CurrencyEdit6.AsInteger > 0 then
    vComando := vComando + ' AND PED.NUM_PEDIDO = ' + IntToStr(CurrencyEdit6.AsInteger);
  if trim(Edit1.Text) <> '' then
    vComando := vComando + ' AND PED.PEDIDO_CLIENTE = ' + QuotedStr(Edit1.Text);
  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND PED.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    vComando := vComando + ' AND PED.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  fDMCadLote.sdsPedido_PorTalao.CommandText := fDMCadLote.ctPedido_PorTalao + vComando;
  fDMCadLote.cdsPedido_PorTalao.Open;
end;

procedure TfrmGerar_Lote.SMDBGrid3TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadLote.cdsPedido_PorTalao.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid3.Columns.Count - 1 do
    if not (SMDBGrid3.Columns.Items[I].Title = Column.Title) then
      SMDBGrid3.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmGerar_Lote.Personalizado11Click(Sender: TObject);
begin
{  prc_Limpar_Auxiliar;
  fDMCadLote.qParametros.Close;
  fDMCadLote.qParametros.Open;
  fDMCadLote.cdsConsulta_Lote.First;
  while not fDMCadLote.cdsConsulta_Lote.Eof do
  begin
    if (SMDBGrid2.SelectedRows.CurrentRowSelected) then
      fDMCadLote.prc_Gravar_mLote('L');
    fDMCadLote.cdsConsulta_Lote.Next;
  end;
  fDMCadLote.mMaterial.First;
  while not fDMCadLote.mMaterial.Eof do
  begin
    fDMCadLote.mMaterial_Tam.First;
    while not fDMCadLote.mMaterial_Tam.Eof do
      fDMCadLote.mMaterial_Tam.Delete;
    fDMCadLote.mMaterial.Delete;
  end;
  fRelLote            := TfRelLote.Create(Self);
  fRelLote.fDMCadLote := fDMCadLote;
  fRelLote.vTipo_Rel  := 'L';
  fRelLote.RLReport1.PreviewModal;
  fRelLote.RLReport1.Free;
  FreeAndNil(fRelLote);}

end;

end.
