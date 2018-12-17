unit USel_Vale;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, RxLookup, StdCtrls,
  UDMCadNotaFiscal, Buttons, Grids, DBGrids, SMDBGrid, DB, UCadNotaFiscal_Itens, UCadRecNF_Itens, NxCollection;

type
  TfrmSel_Vale = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    btnPesquisar: TNxButton;
    btnImportar: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Consultar_Vale;
    procedure prc_Gravar_Nota;
    procedure prc_Gravar_NotaItens;
    procedure prc_Gravar_RecItens;
  public
    { Public declarations }
    vCodCliente: Integer;
    vID_CFOP: Integer;
    vFinalidade, vOperacao, vTipo: String; //  RNF=Recibo   NOT=Nota

    fDMCadNotaFiscal: TDMCadNotaFiscal;
    ffrmCadNotaFiscal_Itens: TfrmCadNotaFiscal_Itens;
    ffrmCadRecNF_Itens: TfrmCadRecNF_Itens;
  end;

var
  frmSel_Vale: TfrmSel_Vale;

implementation

uses rsDBUtils, uCalculo_NotaFiscal;

{$R *.dfm}

procedure TfrmSel_Vale.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_Vale.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMCadNotaFiscal);
  btnPesquisarClick(Sender);
  Label3.Visible           := (vTipo <> 'RNF');
  RxDBLookupCombo1.Visible := (vTipo <> 'RNF');
  if vTipo <> 'RNF' then
    if vID_CFOP > 0 then
      RxDBLookupCombo1.KeyValue := vID_CFOP;
end;

procedure TfrmSel_Vale.prc_Gravar_NotaItens;
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
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger  := fDMCadNotaFiscal.cdsValeID_PRODUTO.AsInteger;

  //aqui 23/04/2018
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

{    if (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_OPERACAO_NOTA.AsInteger <> vID_OperacaoAnt) or
       (fDMCadNotaFiscal.cdsNotaFiscal_ItensFINALIDADE.AsString <> vFinalidadeAnt) then
      fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger := 0;
}

    if ((fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger <= 0) and //or (vID_Produto_Ant <> fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger))
       (fDMCadNotaFiscal.cdsNotaFiscal_ItensID_OPERACAO_NOTA.AsInteger > 0)) then
    begin
      uCalculo_NotaFiscal.prc_Posicionar_Regra_Empresa(fDMCadNotaFiscal,fDMCadNotaFiscal.cdsNotaFiscal_ItensID_OPERACAO_NOTA.AsInteger,vFinalidadeAux);
      if (fDMCadNotaFiscal.vID_CFOP <= 0) and (vID_CFOPAux > 0) then
        fDMCadNotaFiscal.vID_CFOP := vID_CFOPAux;
      fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger := fDMCadNotaFiscal.vID_CFOP;
    end;

    if fDMCadNotaFiscal.vID_CFOP > 0 then
    begin
      fDMCadNotaFiscal.vID_Variacao := fnc_Buscar_Regra_CFOP(fDMCadNotaFiscal, fDMCadNotaFiscal.vID_CFOP);
    end;
  end
  else
  begin
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger     := RxDBLookupCombo1.KeyValue;
    fDMCadNotaFiscal.vID_Variacao := fnc_Buscar_Regra_CFOP(fDMCadNotaFiscal, fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger);
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VARIACAO.AsInteger := fDMCadNotaFiscal.vID_Variacao;
  end;

  ffrmCadNotaFiscal_Itens.prc_Move_Dados_Itens;

  fDMCadNotaFiscal.cdsProduto.IndexFieldNames := 'ID';
  fDMCadNotaFiscal.cdsProduto.FindKey([fDMCadNotaFiscal.cdsValeID_PRODUTO.AsInteger]);
  if fDMCadNotaFiscal.cdsProdutoID_NCM.IsNull then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_NCM.AsInteger := fDMCadNotaFiscal.cdsProdutoID_NCM.AsInteger;
  if (fDMCadNotaFiscal.cdsParametrosEMPRESA_SUCATA.AsString = 'S') and (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsValeQTD_LANCAR_ESTOQUE.AsFloat)) > 0) and (trim(fDMCadNotaFiscal.cdsParametrosUNIDADE_PECA.AsString) <> '') then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString  := fDMCadNotaFiscal.cdsParametrosUNIDADE_PECA.AsString
  else
    fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString     := fDMCadNotaFiscal.cdsValeUNIDADE.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat          := fDMCadNotaFiscal.cdsValeQTD.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat     := fDMCadNotaFiscal.cdsValePERC_IPI.AsFloat;

  //09/01/2017
  //if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsValeVLR_DESCONTO.AsFloat)) > 0 then
  //begin
    //if fDMCadNotaFiscal.qParametros_FinCOPIAR_DESC_VALE.AsString = 'S' then
      //fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat := fDMCadNotaFiscal.cdsValeVLR_UNITARIO.AsFloat
    //else
    //begin
      //vVlrAux := StrToFloat(FormatFloat('0.00###',fDMCadNotaFiscal.cdsValeVLR_TOTAL.AsFloat / fDMCadNotaFiscal.cdsValeQTD.AsFloat));
      //fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat := vVlrAux;
    //end;
  //end
  //else
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat := fDMCadNotaFiscal.cdsValeVLR_UNITARIO.AsFloat;
  //****************
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
  fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString     := fDMCadNotaFiscal.cdsProdutoNOME.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensREFERENCIA.AsString       := fDMCadNotaFiscal.cdsProdutoREFERENCIA.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger   := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COMISSAO.AsFloat     := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensQTDRESTANTE.AsFloat       := fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString := '';
  if trim(fDMCadNotaFiscal.cdsValeCOMPLEMENTO_PROD.AsString) <> '' then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString := fDMCadNotaFiscal.cdsValeCOMPLEMENTO_PROD.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensPOSSUI_VALE.AsString      := 'S';
  fDMCadNotaFiscal.cdsNotaFiscal_ItensTIPO_NOTA.AsString        := fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString          := fDMCadNotaFiscal.cdsValeTAMANHO.AsString;
  if fDMCadNotaFiscal.cdsValeID_MOVESTOQUE.AsInteger > 0 then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString  := 'N'
  else
    fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString  := 'S';
  fDMCadNotaFiscal.cdsNotaFiscal_ItensNUMERO_OC.AsString        := fDMCadNotaFiscal.cdsValeNUMERO_OC.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensNUMERO_OS.AsString        := fDMCadNotaFiscal.cdsValeNUMERO_OS.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VALE.AsInteger         := fDMCadNotaFiscal.cdsValeID.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_VALE.AsInteger       := fDMCadNotaFiscal.cdsValeITEM.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensNUM_VALE.AsInteger        := fDMCadNotaFiscal.cdsValeNUM_VALE.AsInteger;
  //09/01/2017
  //if fDMCadNotaFiscal.qParametros_FinCOPIAR_DESC_VALE.AsString = 'S' then
  //begin
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat      := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsValeVLR_DESCONTO.AsFloat));
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat)) > 0 then
      fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESCONTO.AsString := 'I';
  //end
  //else
    //fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat      := StrToFloat(FormatFloat('0.00',0));
  //****************
  ffrmCadNotaFiscal_Itens.vNotaSelecionada := False;
  ffrmCadNotaFiscal_Itens.vValeSelecionado := True;
  ffrmCadNotaFiscal_Itens.BitBtn1Click(ffrmCadNotaFiscal_Itens);
  ffrmCadNotaFiscal_Itens.vValeSelecionado := False;

  if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsEdit,dsInsert] then
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Post;
end;

procedure TfrmSel_Vale.btnPesquisarClick(Sender: TObject);
begin
  prc_Consultar_Vale;
end;

procedure TfrmSel_Vale.btnImportarClick(Sender: TObject);
var
  vMsgErro: String;
begin
  if fDMCadNotaFiscal.cdsVale.IsEmpty then
    exit;

  if (trim(RxDBLookupCombo1.Text) = '') and (vTipo <> 'RNF') then
  begin
    MessageDlg('*** CFOP Não informado', mtInformation, [mbOk], 0);
    RxDBLookupCombo1.SetFocus;
    exit;
  end;

  vMsgErro := '';
  try
    fDMCadNotaFiscal.cdsVale.First;
    while not fDMCadNotaFiscal.cdsVale.Eof do
    begin
      if SMDBGrid1.SelectedRows.CurrentRowSelected then
      begin
        if vTipo = 'RNF' then
          prc_Gravar_RecItens
        else
          prc_Gravar_NotaItens;
      end;
      fDMCadNotaFiscal.cdsVale.Next;
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

procedure TfrmSel_Vale.prc_Consultar_Vale;
begin
  SMDBGrid1.DisableScroll;

  fDMCadNotaFiscal.cdsVale.Close;
  fDMCadNotaFiscal.sdsVale.CommandText := fDMCadNotaFiscal.ctVale;
  fDMCadNotaFiscal.sdsVale.CommandText := fDMCadNotaFiscal.sdsVale.CommandText +
                                          ' AND V.ID_CLIENTE = ' + IntToStr(vCodCliente);
  fDMCadNotaFiscal.cdsVale.Open;
  SMDBGrid1.EnableScroll;
end;

procedure TfrmSel_Vale.prc_Gravar_Nota;
begin

end;

procedure TfrmSel_Vale.prc_Gravar_RecItens;
var
  vItemAux: Integer;
  vVlrAux: Real;
begin
  fDMCadNotaFiscal.cdsNotaFiscal_Itens.Last;
  vItemAux := fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger + 1;

  fDMCadNotaFiscal.cdsNotaFiscal_Itens.Insert;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID.AsInteger          := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger        := vItemAux;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger  := fDMCadNotaFiscal.cdsValeID_PRODUTO.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.Clear;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VARIACAO.Clear;

  ffrmCadRecNF_Itens.prc_Move_Dados_Itens;

  fDMCadNotaFiscal.cdsProduto.IndexFieldNames := 'ID';
  fDMCadNotaFiscal.cdsProduto.FindKey([fDMCadNotaFiscal.cdsValeID_PRODUTO.AsInteger]);
  if fDMCadNotaFiscal.cdsProdutoID_NCM.IsNull then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensID_NCM.AsInteger := fDMCadNotaFiscal.cdsProdutoID_NCM.AsInteger;
  if (fDMCadNotaFiscal.cdsParametrosEMPRESA_SUCATA.AsString = 'S') and (StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsValeQTD_LANCAR_ESTOQUE.AsFloat)) > 0) and (trim(fDMCadNotaFiscal.cdsParametrosUNIDADE_PECA.AsString) <> '') then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString  := fDMCadNotaFiscal.cdsParametrosUNIDADE_PECA.AsString
  else
    fDMCadNotaFiscal.cdsNotaFiscal_ItensUNIDADE.AsString     := fDMCadNotaFiscal.cdsValeUNIDADE.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat          := fDMCadNotaFiscal.cdsValeQTD.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_IPI.AsFloat     := fDMCadNotaFiscal.cdsValePERC_IPI.AsFloat;
  //09/01/2017
  //fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat := fDMCadNotaFiscal.cdsValeVLR_UNITARIO.AsFloat;
  //if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsValeVLR_DESCONTO.AsFloat)) > 0 then
  //begin
    //if fDMCadNotaFiscal.qParametros_FinCOPIAR_DESC_VALE.AsString = 'S' then
      //fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat := fDMCadNotaFiscal.cdsValeVLR_UNITARIO.AsFloat
    //else
    //begin
      //vVlrAux := StrToFloat(FormatFloat('0.00###',fDMCadNotaFiscal.cdsValeVLR_TOTAL.AsFloat / fDMCadNotaFiscal.cdsValeQTD.AsFloat));
      //fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat := vVlrAux;
    //end;
  //end
  //else
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat := fDMCadNotaFiscal.cdsValeVLR_UNITARIO.AsFloat;
  //*****************

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
  fDMCadNotaFiscal.cdsNotaFiscal_ItensNOME_PRODUTO.AsString     := fDMCadNotaFiscal.cdsProdutoNOME.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensREFERENCIA.AsString       := fDMCadNotaFiscal.cdsProdutoREFERENCIA.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger   := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensPERC_COMISSAO.AsFloat     := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensQTDRESTANTE.AsFloat       := fDMCadNotaFiscal.cdsNotaFiscal_ItensQTD.AsFloat;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString := '';
  if trim(fDMCadNotaFiscal.cdsValeCOMPLEMENTO_PROD.AsString) <> '' then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString := fDMCadNotaFiscal.cdsValeCOMPLEMENTO_PROD.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensPOSSUI_VALE.AsString      := 'S';
  fDMCadNotaFiscal.cdsNotaFiscal_ItensTIPO_NOTA.AsString        := fDMCadNotaFiscal.cdsNotaFiscalTIPO_NOTA.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensTAMANHO.AsString          := fDMCadNotaFiscal.cdsValeTAMANHO.AsString;
  if fDMCadNotaFiscal.cdsValeID_MOVESTOQUE.AsInteger > 0 then
    fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString  := 'N'
  else
    fDMCadNotaFiscal.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString  := 'S';
  fDMCadNotaFiscal.cdsNotaFiscal_ItensNUMERO_OC.AsString        := fDMCadNotaFiscal.cdsValeNUMERO_OC.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensNUMERO_OS.AsString        := fDMCadNotaFiscal.cdsValeNUMERO_OS.AsString;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensID_VALE.AsInteger         := fDMCadNotaFiscal.cdsValeID.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM_VALE.AsInteger       := fDMCadNotaFiscal.cdsValeITEM.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_ItensNUM_VALE.AsInteger        := fDMCadNotaFiscal.cdsValeNUM_VALE.AsInteger;

  //09/01/2017
  //if fDMCadNotaFiscal.qParametros_FinCOPIAR_DESC_VALE.AsString = 'S' then
  //begin
    fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat      := StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsValeVLR_DESCONTO.AsFloat));
    if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat)) > 0 then
      fDMCadNotaFiscal.cdsNotaFiscalTIPO_DESCONTO.AsString := 'I';
  //end
  //else
    //fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat      := StrToFloat(FormatFloat('0.00',0));
  //*****************
  ffrmCadRecNF_Itens.vNotaSelecionada := False;
  ffrmCadRecNF_Itens.vValeSelecionado := True;
  ffrmCadRecNF_Itens.BitBtn1Click(ffrmCadRecNF_Itens);
  ffrmCadRecNF_Itens.vValeSelecionado := False;

  if fDMCadNotaFiscal.cdsNotaFiscal_Itens.State in [dsEdit,dsInsert] then
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Post;
end;

end.
