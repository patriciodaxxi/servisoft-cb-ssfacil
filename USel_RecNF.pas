unit USel_RecNF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, RxLookup, StdCtrls,
  UDMCadNotaFiscal, Buttons, Grids, DBGrids, SMDBGrid, DB, UCadNotaFiscal_Itens, NxCollection,
  FMTBcd, SqlExpr, Provider, DBClient;

type
  TfrmSel_RecNF = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    btnPesquisar: TNxButton;
    btnImportar: TNxButton;
    sdsRecNF: TSQLDataSet;
    dspRecNF: TDataSetProvider;
    cdsRecNF: TClientDataSet;
    cdsRecNFNUMNOTA: TIntegerField;
    cdsRecNFDTEMISSAO: TDateField;
    cdsRecNFID: TIntegerField;
    cdsRecNFID_CLIENTE: TIntegerField;
    cdsRecNFFILIAL: TIntegerField;
    cdsRecNFSERIE: TStringField;
    cdsRecNFID_PRODUTO: TIntegerField;
    cdsRecNFREFERENCIA: TStringField;
    cdsRecNFNOME_PRODUTO: TStringField;
    cdsRecNFID_COR: TIntegerField;
    cdsRecNFNOME_COR: TStringField;
    cdsRecNFQTD: TFloatField;
    cdsRecNFVLR_UNITARIO: TFloatField;
    cdsRecNFVLR_DESCONTO: TFloatField;
    cdsRecNFVLR_TOTAL: TFloatField;
    cdsRecNFNOME_CLIENTE: TStringField;
    cdsRecNFCNPJ_CPF: TStringField;
    cdsRecNFCIDADE: TStringField;
    cdsRecNFUF: TStringField;
    dsRecNF: TDataSource;
    cdsRecNFITEM: TIntegerField;
    cdsRecNFUNIDADE: TStringField;
    cdsRecNFID_PEDIDO: TIntegerField;
    cdsRecNFNUM_PEDIDO: TIntegerField;
    cdsRecNFNUMERO_OC: TStringField;
    cdsRecNFNUMERO_OS: TStringField;
    cdsRecNFID_MOVESTOQUE: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Consultar_Rec;
    procedure prc_Gravar_Nota;
    procedure prc_Gravar_NotaItens;
  public
    { Public declarations }
    vCodCliente: Integer;
    vID_CFOP: Integer;
    vFinalidade, vOperacao, vTipo: String; //  RNF=Recibo   NOT=Nota

    fDMCadNotaFiscal: TDMCadNotaFiscal;
    ffrmCadNotaFiscal_Itens: TfrmCadNotaFiscal_Itens;
  end;

var
  frmSel_RecNF: TfrmSel_RecNF;

implementation

uses rsDBUtils, uCalculo_NotaFiscal, DmdDatabase;

{$R *.dfm}

procedure TfrmSel_RecNF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_RecNF.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMCadNotaFiscal);
  btnPesquisarClick(Sender);
  Label3.Visible           := (vTipo <> 'RNF');
  RxDBLookupCombo1.Visible := (vTipo <> 'RNF');
  if vTipo <> 'RNF' then
    if vID_CFOP > 0 then
      RxDBLookupCombo1.KeyValue := vID_CFOP;
end;

procedure TfrmSel_RecNF.prc_Gravar_NotaItens;
var
  vItemAux: Integer;
  vVlrAux: Real;
  vID_CFOPAux: Integer;
  vFinalidadeAux: String;
begin
  fDMCadNotaFiscal.cdsNotaFiscal_Itens.Last;
  vItemAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger + 1;

  fDMCadNotaFiscal.cdsNotaFiscal_Itens.Insert;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID.AsInteger          := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger        := vItemAux;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger  := cdsRecNFID_PRODUTO.AsInteger;

  if (vOperacao <> '') and (vFinalidade <> '') then
  begin
    fDMCadNotaFiscal.cdsOperacao_Nota.IndexFieldNames := 'NOME';
    fDMCadNotaFiscal.cdsOperacao_Nota.FindKey([vOperacao]);
    vID_CFOPAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger;
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_OPERACAO_NOTA.AsInteger := fDMCadNotaFiscal.cdsOperacao_NotaID.AsInteger;
    if fDMCadNotaFiscal.cdsClienteCODIGO.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger then
      fDMCadNotaFiscal.cdsCliente.Locate('CODIGO',fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,[loCaseInsensitive]);
    vFinalidadeAux := vFinalidade;
    if trim(vFinalidadeAux) = '' then
      vFinalidadeAux := 'O';
    if not fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]) then
      exit;

    if ((fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger <= 0) and (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_OPERACAO_NOTA.AsInteger > 0)) then
    begin
      uCalculo_NotaFiscal.prc_Posicionar_Regra_Empresa(fDMCadNotaFiscal,fDMCadNotaFiscal.cdsNotaFiscal_ItensID_OPERACAO_NOTA.AsInteger,vFinalidadeAux);
      if (fDMCadNotaFiscal.vID_CFOP <= 0) and (vID_CFOPAux > 0) then
        fDMCadNotaFiscal.vID_CFOP := vID_CFOPAux;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger := fDMCadNotaFiscal.vID_CFOP;
    end;
    if fDMCadNotaFiscal.vID_CFOP > 0 then
      fDMCadNotaFiscal.vID_Variacao := fnc_Buscar_Regra_CFOP(fDMCadNotaFiscal, fDMCadNotaFiscal.vID_CFOP);
  end
  else
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger     := RxDBLookupCombo1.KeyValue;
    fDMCadNotaFiscal.vID_Variacao := fnc_Buscar_Regra_CFOP(fDMCadNotaFiscal, fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger);
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VARIACAO.AsInteger := fDMCadNotaFiscal.vID_Variacao;
  end;

  ffrmCadNotaFiscal_Itens.prc_Move_Dados_Itens;

  fDMCadNotaFiscal.cdsProduto.IndexFieldNames := 'ID';
  fDMCadNotaFiscal.cdsProduto.FindKey([cdsRecNFID_PRODUTO.AsInteger]);
  if fDMCadNotaFiscal.cdsProdutoID_NCM.IsNull then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_NCM.AsInteger := fDMCadNotaFiscal.cdsProdutoID_NCM.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString     := cdsRecNFUNIDADE.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat          := cdsRecNFQTD.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat := cdsRecNFVLR_UNITARIO.AsFloat;
  
  if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat := StrToCurr(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat))
  else
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat));
  if fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat > 0 then
  begin
    if fDMCadNotaFiscal.cdsParametrosARREDONDAR_5.AsString = 'B' then
      vVlrAux := StrToCurr(FormatCurr('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat / 100))
    else
      vVlrAux := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat * fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat / 100));
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_IPI.AsFloat := StrToFloat(FormatFloat('0.00',vVlrAux));
  end;
  if fDMCadNotaFiscal.qParametros_NFeALTERAR_NOME_PROD.AsString = 'S' then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString := cdsRecNFNOME_PRODUTO.AsString
  else
    fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString := fDMCadNotaFiscal.cdsProdutoNOME.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensREFERENCIA.AsString       := fDMCadNotaFiscal.cdsProdutoREFERENCIA.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger   := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COMISSAO.AsFloat     := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensQTDRESTANTE.AsFloat       := fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString := '';
  fDMCadNotaFiscal.cdsNotaFiscal_ItensTIPO_NOTA.AsString        := fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString          := '';
  if cdsRecNFID_MOVESTOQUE.AsInteger > 0 then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString  := 'N'
  else
    fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString  := 'S';
  fDMCadNotaFiscal.cdsNotaFiscal_ItensNUMERO_OC.AsString        := cdsRecNFNUMERO_OC.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensNUMERO_OS.AsString        := cdsRecNFNUMERO_OS.AsString;

  //Grava Recibo Copia  03/09/2018
  fDMCadNotaFiscal.cdsNotaFiscal_Copia.Insert;
  fDMCadNotaFiscal.cdsNotaFiscal_CopiaID.AsInteger         := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_CopiaITEM.AsInteger       := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_CopiaID_RECNF.AsInteger   := cdsRecNFID.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_CopiaITEM_RECNF.AsInteger := cdsRecNFITEM.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_Copia.Post;
  //**************
  
  fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat      := StrToFloat(FormatFloat('0.00',cdsRecNFVLR_DESCONTO.AsFloat));
  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat)) > 0 then
    fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESCONTO.AsString := 'I';
  ffrmCadNotaFiscal_Itens.vNotaSelecionada  := False;
  ffrmCadNotaFiscal_Itens.vValeSelecionado  := False;
  ffrmCadNotaFiscal_Itens.vRecNFSelecionado := True;
  ffrmCadNotaFiscal_Itens.BitBtn1Click(ffrmCadNotaFiscal_Itens);
  ffrmCadNotaFiscal_Itens.vRecNFSelecionado := False;

  if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsEdit,dsInsert] then
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Post;
end;

procedure TfrmSel_RecNF.btnPesquisarClick(Sender: TObject);
begin
  prc_Consultar_Rec;
end;

procedure TfrmSel_RecNF.btnImportarClick(Sender: TObject);
var
  vMsgErro: String;
begin
  if fDMCadNotaFiscal.cdsNotaFiscal.IsEmpty then
    exit;

  if (trim(RxDBLookupCombo1.Text) = '') then
  begin
    MessageDlg('*** CFOP Não informado', mtInformation, [mbOk], 0);
    RxDBLookupCombo1.SetFocus;
    exit;
  end;

  vMsgErro := '';
  try
    cdsRecNF.First;
    while not cdsRecNF.Eof do
    begin
      if SMDBGrid1.SelectedRows.CurrentRowSelected then
        prc_Gravar_NotaItens;
      cdsRecNF.Next;
    end;
  except
    on E: exception do
    begin
      if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsEdit,dsInsert] then
        fDMCadNotaFiscal.cdsNotaFiscal_Itens.Cancel;
      vMsgErro := E.Message;
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
  if trim(vMsgErro) <> '' then
    MessageDlg(vMsgErro, mtError, [mbOk], 0)
  else
  if trim(vMsgErro) = '' then
    Close;
end;

procedure TfrmSel_RecNF.prc_Consultar_Rec;
begin
  SMDBGrid1.DisableScroll;

  cdsRecNF.Close;
  sdsRecNF.ParamByName('ID_CLIENTE').AsInteger := vCodCliente;
  cdsRecNF.Open;

  SMDBGrid1.EnableScroll;
end;

procedure TfrmSel_RecNF.prc_Gravar_Nota;
begin

end;

end.
