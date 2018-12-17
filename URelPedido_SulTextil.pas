unit uRelPedido_SulTextil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, RLRichText,
  DB, DBTables, RLBarcode, jpeg, UDMCadPedido, UDMRel;
  //RLPDFFilter, RLHTMLFilter, RLFilters, RLRichFilter, RLPreviewForm;

type
  TfRelPedido_SulTextil = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLDraw1: TRLDraw;
    RLImage1: TRLImage;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel4: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLSubDetail2: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText18: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDraw7: TRLDraw;
    RLBand4: TRLBand;
    RLDraw6: TRLDraw;
    RLDraw5: TRLDraw;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLDBText20: TRLDBText;
    rlPreco: TRLLabel;
    rlVlrTotal: TRLLabel;
    RLDraw8: TRLDraw;
    RLLabel6: TRLLabel;
    rlEndFilial: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel57: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel58: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel59: TRLLabel;
    RLDBText19: TRLDBText;
    RLLabel60: TRLLabel;
    RLDBText24: TRLDBText;
    RLDBText30: TRLDBText;
    RLLabel61: TRLLabel;
    RLDBText35: TRLDBText;
    RLDBText36: TRLDBText;
    RLDBText31: TRLDBText;
    RLDBText49: TRLDBText;
    RLDBText51: TRLDBText;
    RLBand6: TRLBand;
    RLLabel31: TRLLabel;
    RLLabel47: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel52: TRLLabel;
    RLLabel53: TRLLabel;
    RLLabel54: TRLLabel;
    RLLabel55: TRLLabel;
    RLLabel50: TRLLabel;
    rlEndEntrega: TRLLabel;
    RLDBText40: TRLDBText;
    RLDBText41: TRLDBText;
    RLDBText42: TRLDBText;
    RLDBText43: TRLDBText;
    RLDBText44: TRLDBText;
    RLDBText45: TRLDBText;
    RLDBText46: TRLDBText;
    RLDBText47: TRLDBText;
    RLDBText48: TRLDBText;
    RLBand9: TRLBand;
    RLLabel15: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText27: TRLDBText;
    RLBand10: TRLBand;
    RLLabel9: TRLLabel;
    RLDBText28: TRLDBText;
    RLLabel39: TRLLabel;
    RLDBText50: TRLDBText;
    RLBand11: TRLBand;
    RLLabel26: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel22: TRLLabel;
    RLDBText16: TRLDBText;
    RLLabel43: TRLLabel;
    RLBand3: TRLBand;
    RLLabel38: TRLLabel;
    RLMemo3: TRLMemo;
    RLBand5: TRLBand;
    RLLabel56: TRLLabel;
    RLMemo2: TRLMemo;
    RLLabel27: TRLLabel;
    RLLabel32: TRLLabel;
    RLBand12: TRLBand;
    RLLabel62: TRLLabel;
    RLLabel63: TRLLabel;
    RLDBText55: TRLDBText;
    RLDBText56: TRLDBText;
    RLLabel65: TRLLabel;
    RLDBText25: TRLDBText;
    RLBand8: TRLBand;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLLabel25: TRLLabel;
    RLDBText17: TRLDBText;
    RLDBText7: TRLDBText;
    rlEndereco: TRLLabel;
    RLDBText37: TRLDBText;
    RLDBText39: TRLDBText;
    RLBand7: TRLBand;
    RLLabel46: TRLLabel;
    RLMemo1: TRLMemo;
    RLDraw11: TRLDraw;
    RLLabel14: TRLLabel;
    rlTipoFrete: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel29: TRLLabel;
    RLDBText26: TRLDBText;
    RLRomaneio: TRLLabel;
    RLDBText29: TRLDBText;
    RLLabel64: TRLLabel;
    RLDBText38: TRLDBText;
    RLBand13: TRLBand;
    RLDraw15: TRLDraw;
    RLLabel67: TRLLabel;
    RLBand14: TRLBand;
    RLLabel70: TRLLabel;
    RLLabel71: TRLLabel;
    RLLabel72: TRLLabel;
    RLDraw16: TRLDraw;
    RLBand15: TRLBand;
    RLDBText54: TRLDBText;
    RLDBText57: TRLDBText;
    RLDBText58: TRLDBText;
    RLDraw2: TRLDraw;
    rlPreco2: TRLLabel;
    rlVlrTotal2: TRLLabel;
    RLDBText59: TRLDBText;
    RLDBText64: TRLDBText;
    RLBand16: TRLBand;
    RLLabel66: TRLLabel;
    RLLabel68: TRLLabel;
    RLLabel69: TRLLabel;
    RLLabel73: TRLLabel;
    RLLabel74: TRLLabel;
    RLLabel75: TRLLabel;
    RLLabel76: TRLLabel;
    RLLabel77: TRLLabel;
    RLLabel79: TRLLabel;
    RLLabel78: TRLLabel;
    RLDBText63: TRLDBText;
    RLLabel80: TRLLabel;
    RLDBText65: TRLDBText;
    RLLabel81: TRLLabel;
    RLLabel82: TRLLabel;
    RLLabel83: TRLLabel;
    RLLabel84: TRLLabel;
    RLLabel85: TRLLabel;
    RLLabel86: TRLLabel;
    RLLabel87: TRLLabel;
    RLLabel88: TRLLabel;
    RLLabel89: TRLLabel;
    RLLabel90: TRLLabel;
    RLLabel91: TRLLabel;
    RLLabel92: TRLLabel;
    RLLabel93: TRLLabel;
    rlVlrDesc2: TRLLabel;
    RLMemo4: TRLMemo;
    RLMemo5: TRLMemo;
    RLSubDetail3: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    RLDraw3: TRLDraw;
    RLLabel94: TRLLabel;
    RLLabel95: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText23: TRLDBText;
    RLBand17: TRLBand;
    RLDBText32: TRLDBText;
    RLDBText33: TRLDBText;
    RLDBText34: TRLDBText;
    RLDraw4: TRLDraw;
    RLDBText52: TRLDBText;
    RLDBText53: TRLDBText;
    RLDBText60: TRLDBText;
    RLMemo6: TRLMemo;
    RLBand18: TRLBand;
    RLDBText61: TRLDBText;
    RLLabel96: TRLLabel;
    RLLabel97: TRLLabel;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand10BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RLBand12BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand14BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand15BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand11BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand16BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand17BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand18BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    fDMRel: TDMRel;

    vVlr_ICMS_FCP, vVLR_ICMS_UF_Dest, vVlr_ICMS_UF_Remet, vVlr_IcmsSubst : Real;
    vVlr_IPI, vVlr_Desconto, vVlr_Itens, vBase_Icms_Subst, vVlr_Total_Pedido : Real;
    vQtd_Total : Real;

  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;
    vImpPendente, vImpPreco, vImpPeso: Boolean;
    vImpDtProducao: Boolean;
    vImpSaldo : Boolean;

  end;

var
  fRelPedido_SulTextil: TfRelPedido_SulTextil;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfRelPedido_SulTextil.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
  RLBand2.Visible  := (fDMCadPedido.cdsParametrosTIPO_REL_PEDIDO.AsString = 'PE');
  RLBand15.Visible := (fDMCadPedido.cdsParametrosTIPO_REL_PEDIDO.AsString = 'P2');

  //17/05/2016  impressão do saldo do pedido
  if vImpSaldo then
  begin
    RLDBText22.DataField := 'QTD_RESTANTE';
    RLDBText34.DataField := 'QTD_RESTANTE';
    RLDBText16.DataField := 'VLR_IPI_PARCIAL';
  end
  else
  begin
    RLDBText22.DataField := 'QTD';
    RLDBText34.DataField := 'QTD';
    RLDBText16.DataField := 'VLR_IPI';
  end;
  RLDBText58.DataField := RLDBText22.DataField;
  RLDBText64.DataField := RLDBText16.DataField;
  //****

  //17/05/2016
  vVlr_ICMS_FCP      := 0;
  vVLR_ICMS_UF_Dest  := 0;
  vVlr_ICMS_UF_Remet := 0;
  vVlr_IcmsSubst     := 0;
  vVlr_IPI           := 0;
  vVlr_Desconto      := 0;
  vVlr_Itens         := 0;
  vBase_Icms_Subst   := 0;
  vVlr_Total_Pedido  := 0;
  vQtd_Total         := 0;

  if fDMCadPedido.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger = fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger then
    RLDBText4.DataField  := 'NOME_CLI_CONS'
  else
    RLDBText4.DataField  := 'NOME_CLI';
end;

procedure TfRelPedido_SulTextil.RLBand1BeforePrint(Sender: TObject;
   var PrintIt: Boolean);
begin
  //RLLabel42.Visible    := (fDMCadPedido.cdsParametrosUSA_ID_PRODUTO.AsString = 'S');
  if fDMCadPedido.qParametros_PedIMP_REF_COD_PEDIDO.AsString = 'R' then
    RLLabel42.Caption := 'Referência'
  else
    RLLabel42.Caption := 'Código';
  rlEndFilial.Caption  := fDMCadPedido.cdsPedidoImpEND_FILIAL.AsString + ', ' + fDMCadPedido.cdsPedidoImpNUM_END_FILIAL.AsString;
  rlEndereco.Caption   := fDMCadPedido.cdsPedidoImpEND_CLIENTE.AsString + ', ' + fDMCadPedido.cdsPedidoImpNUM_END_CLIENTE.AsString;
  rlEndEntrega.Caption := '';
  if Trim(fDMCadPedido.cdsPedidoImpENDERECO_ENT.AsString) <> '' then
  begin
    rlEndEntrega.Caption   := fDMCadPedido.cdsPedidoImpENDERECO_ENT.AsString;
    if fDMCadPedido.cdsPedidoImpNUM_END_ENT.AsString <> '' then
      rlEndEntrega.Caption := rlEndEntrega.Caption + ', ' + fDMCadPedido.cdsPedidoImpNUM_END_ENT.AsString;
  end;

  RLLabel35.Caption := 'Pr.Unitário';
  RLLabel34.Caption := 'Pr.Total';
  RLLabel35.Visible := vImpPreco;
  RLLabel34.Visible := vImpPreco;
  RLLabel22.Visible := vImpPreco;

  RLImage1.Picture := nil;
  try
  if FileExists(fDMCadPedido.cdsPedidoImpENDLOGO.AsString) then
    RLImage1.Picture.LoadFromFile(fDMCadPedido.cdsFilialENDLOGO.AsString)
  else
  except
  end;

  rlTipoFrete.Caption := '';
  if fDMCadPedido.cdsPedidoImpTIPO_FRETE.AsString = '1' then
    rlTipoFrete.Caption := 'Emitente'
  else
  if fDMCadPedido.cdsPedidoImpTIPO_FRETE.AsString = '2' then
    rlTipoFrete.Caption := 'Destinatário'
  else
  if fDMCadPedido.cdsPedidoImpTIPO_FRETE.AsString = '3' then
    rlTipoFrete.Caption := 'Terceiros'
  else
  if fDMCadPedido.cdsPedidoImpTIPO_FRETE.AsString = '9' then
    rlTipoFrete.Caption := 'Sem Frete';

  RLLabel39.Visible  := (fDMCadPedido.cdsParametrosCONFECCAO.AsString = 'S');
  RLDBText50.Visible := (fDMCadPedido.cdsParametrosCONFECCAO.AsString = 'S');

  if fDMCadPedido.cdsPedidoROMANEIO.AsString = 'S' then
    RLRomaneio.Caption := 'SIM'
  else
    RLRomaneio.Caption := 'NÃO'
end;

procedure TfRelPedido_SulTextil.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
  var
  vDesc: string;
begin
  RLLabel27.Visible  := (vImpPreco);
  RLLabel32.Visible  := (vImpPreco);
  RLLabel40.Visible  := (vImpPreco);
  RLLabel43.Visible  := (vImpPreco);
  RLLabel44.Visible  := (vImpPreco);
  RLLabel45.Visible  := (vImpPreco);
  RLLabel80.Visible  := (vImpPreco);
  RLLabel84.Visible  := (vImpPreco);
  RLLabel85.Visible  := (vImpPreco);
  RLLabel86.Visible  := (vImpPreco);
  RLLabel87.Visible  := (vImpPreco);
  RLLabel88.Visible  := (vImpPreco);
  RLLabel89.Visible  := (vImpPreco);
  RLDBText65.Visible := (vImpPreco);

  RLLabel84.Caption := FormatFloat('###,###,##0.00',vVlr_Itens);
  RLLabel85.Caption := FormatFloat('###,###,##0.00',vBase_Icms_Subst);
  RLLabel86.Caption := FormatFloat('###,###,##0.00',vVlr_Desconto);
  RLLabel87.Caption := FormatFloat('###,###,##0.00',vVlr_IPI);
  RLLabel88.Caption := FormatFloat('###,###,##0.00',vVlr_IcmsSubst);
  RLLabel89.Caption := FormatFloat('###,###,##0.00',vVlr_Total_Pedido + vVlr_IPI + fDMCadPedido.cdsPedidoImpVLR_FRETE.AsFloat);
  RLLabel90.Caption := FormatFloat('###,##0.####',vQtd_Total);

  vVlr_Itens := 0;
  vBase_Icms_Subst := 0;
  vVlr_Desconto := 0;
  vVlr_IPI := 0;
  vVlr_IcmsSubst := 0;
  vVlr_Total_Pedido := 0;
  vQtd_Total := 0;
end;

procedure TfRelPedido_SulTextil.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo1.Lines.Clear;
  RLMemo1.Lines.Text := fDMCadPedido.cdsPedidoImpOBS.Value;
end;

procedure TfRelPedido_SulTextil.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vQtdPed: Real;
  vTexto: String;
  vAux, I: Integer;
  vVlrTotalAux: Real;
  vTexto_Saldo : String;
begin
  PrintIt := (fDMCadPedido.cdsParametrosTIPO_REL_PEDIDO.AsString = 'PE');
  if fDMCadPedido.cdsParametrosTIPO_REL_PEDIDO.AsString <> 'PE' then
    exit;

  //17/05/2016  Impressão do Saldo
  if vImpSaldo then
    vQtdPed := fDMCadPedido.cdsPedidoImp_ItensQTD_RESTANTE.AsFloat
  else
   vQtdPed := fDMCadPedido.cdsPedidoImp_ItensQTD.AsFloat;
  //17/05/2016
  if (vImpSaldo) and (StrToFloat(FormatFloat('0.0000',vQtdPed)) <= 0) then
    PrintIt := False;
  if not PrintIt then
    exit;
  if not vImpPreco then
    PrintIt := False;
  if not PrintIt then
    exit;

  vVlrTotalAux := StrToFloat(FormatFloat('0.00',vQtdPed * fDMCadPedido.cdsPedidoImp_ItensVLR_UNITARIO.AsFloat));
  //17/05/2016  Impressão do Saldo
  if vImpSaldo then
  begin
    vVlrTotalAux := StrToFloat(FormatFloat('0.00',vVlrTotalAux + fDMCadPedido.cdsPedidoImp_ItensVLR_ICMSSUBST_PARCIAL.AsFloat
                  - fDMCadPedido.cdsPedidoImp_ItensVLR_DESCONTO_PARCIAL.AsFloat
                 - fDMCadPedido.cdsPedidoImp_ItensVLR_DESCONTORATEIO_PARCIAL.AsFloat));
  end
  else
  begin
    vVlrTotalAux := StrToFloat(FormatFloat('0.00',vVlrTotalAux + fDMCadPedido.cdsPedidoImp_ItensVLR_ICMSSUBST.AsFloat
                  - fDMCadPedido.cdsPedidoImp_ItensVLR_DESCONTO.AsFloat
                 - fDMCadPedido.cdsPedidoImp_ItensVLR_DESCONTORATEIO.AsFloat));
  end;

  rlPreco.Visible    := vImpPreco;
  rlVlrTotal.Visible := vImpPreco;
  RLDBText16.Visible := vImpPreco;
  vAux := 4;
  //if DM1.tParametrosQtdCasasDecimaisPrecoPed.AsInteger > 0 then
  //  vAux := DM1.tParametrosQtdCasasDecimaisPrecoPed.AsInteger;
  vTexto := '0.';
  for i := 1 to vAux do
    vTexto := vTexto + '0';
  if vImpPreco then
  begin
    rlPreco.Caption    := FormatFloat(vTexto,fDMCadPedido.cdsPedidoImp_ItensVLR_UNITARIO.AsFloat);
    rlVlrTotal.Caption := FormatFloat('###,##0.00',vVlrTotalAux);
  end;
  //RLDBText51.Visible := (fDMCadPedido.cdsParametrosUSA_ID_PRODUTO.AsString = 'S');

  fDMCadPedido.cdsPedidoImp_Tam.Close;
  fDMCadPedido.sdsPedidoImp_Tam.ParamByName('ID').AsInteger   := fDMCadPedido.cdsPedidoImp_ItensID.AsInteger;
  fDMCadPedido.sdsPedidoImp_Tam.ParamByName('ITEM').AsInteger := fDMCadPedido.cdsPedidoImp_ItensITEM.AsInteger;
  fDMCadPedido.cdsPedidoImp_Tam.Open;

  //17/04/2017
  {if vImpDtProducao then
    RLDBText21.DataField := 'DTPRODUCAO'
  else
    RLDBText21.DataField := 'DTENTREGA';}

  if fDMCadPedido.qParametros_PedIMP_REF_COD_PEDIDO.AsString = 'R' then
  begin
    RLDBText51.DataField := 'REFERENCIA';
    RLDBText8.DataField  := 'REFERENCIA';
  end
  else
  begin
    RLDBText51.DataField := 'ID_PRODUTO';
    RLDBText8.DataField  := 'ID_PRODUTO';
  end;
  //02/05/2017
  RLMemo5.Lines.Clear;
  vTexto := fDMCadPedido.cdsPedidoImp_ItensNOMEPRODUTO.AsString;
  if trim(fDMCadPedido.cdsPedidoImp_ItensNOME_COR_COMBINACAO.AsString) <> '' then
    vTexto := vTexto + ' ' + fDMCadPedido.cdsPedidoImp_ItensNOME_COR_COMBINACAO.AsString;

  if fDMCadPedido.cdsPedidoImpIMP_COR_CLIENTE.AsString = 'S' then
  begin
    if trim(fDMCadPedido.cdsPedidoImp_ItensCOD_COR_CLIENTE.AsString) <> '' then
      vTexto := vTexto + '(' +fDMCadPedido.cdsPedidoImp_ItensCOD_COR_CLIENTE.AsString + ')';
    if trim(fDMCadPedido.cdsPedidoImp_ItensCOD_PRODUTO_CLIENTE.AsString) <> '' then
      vTexto := vTexto + '(P.Cli:' +fDMCadPedido.cdsPedidoImp_ItensCOD_PRODUTO_CLIENTE.AsString + ')';
    if trim(fDMCadPedido.cdsPedidoImp_ItensTAMANHO_CLIENTE.AsString) <> '' then
      vTexto := vTexto + '(T.' +fDMCadPedido.cdsPedidoImp_ItensTAMANHO_CLIENTE.AsString + ')';
  end;
  RLMemo5.Lines.Text := vTexto;
  //17/05/2016
  vTexto_Saldo := '';
  if vImpSaldo then
    vTexto_Saldo := '_PARCIAL';
  vVlr_ICMS_FCP      := vVlr_ICMS_FCP + fDMCadPedido.cdsPedidoImp_Itens.FieldByName('VLR_ICMS_FCP'+vTexto_Saldo).AsFloat;
  vVLR_ICMS_UF_Dest  := vVLR_ICMS_UF_Dest + fDMCadPedido.cdsPedidoImp_Itens.FieldByName('VLR_ICMS_UF_DEST'+vTexto_Saldo).AsFloat;
  vVlr_ICMS_UF_Remet := vVLR_ICMS_UF_Remet + fDMCadPedido.cdsPedidoImp_Itens.FieldByName('VLR_ICMS_UF_REMET'+vTexto_Saldo).AsFloat;
  vVlr_IcmsSubst     := vVlr_IcmsSubst + fDMCadPedido.cdsPedidoImp_Itens.FieldByName('VLR_ICMSSUBST'+vTexto_Saldo).AsFloat;
  vVlr_IPI           := vVlr_IPI + fDMCadPedido.cdsPedidoImp_Itens.FieldByName('VLR_IPI'+vTexto_Saldo).AsFloat;
  vVlr_Desconto      := vVlr_Desconto + fDMCadPedido.cdsPedidoImp_Itens.FieldByName('VLR_DESCONTO'+vTexto_Saldo).AsFloat + fDMCadPedido.cdsPedidoImp_Itens.FieldByName('VLR_DESCONTORATEIO'+vTexto_Saldo).AsFloat;
  vVlr_Itens         := vVlr_Itens + fDMCadPedido.cdsPedidoImp_Itens.FieldByName('VLR_TOTAL'+vTexto_Saldo).AsFloat + (fDMCadPedido.cdsPedidoImp_Itens.FieldByName('VLR_DESCONTO'+vTexto_Saldo).AsFloat + fDMCadPedido.cdsPedidoImp_Itens.FieldByName('VLR_DESCONTORATEIO'+vTexto_Saldo).AsFloat);
  vBase_Icms_Subst   := vBase_Icms_Subst + fDMCadPedido.cdsPedidoImp_Itens.FieldByName('BASE_ICMSSUBST'+vTexto_Saldo).AsFloat;
  vVlr_Total_Pedido  := vVlr_Total_Pedido + vVlrTotalAux;
  vQtd_Total         := vQtd_Total + vQtdPed;
end;

procedure TfRelPedido_SulTextil.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := True;
  RLMemo2.Lines.Clear;
  if trim(fDMCadPedido.cdsPedidoImp_ItensOBS_COMPLEMENTAR.AsString) = '' then
    PrintIt := False;
  if not PrintIt then
    exit;
  RLMemo2.Lines.Text := fDMCadPedido.cdsPedidoImp_ItensOBS_COMPLEMENTAR.AsString;
end;

procedure TfRelPedido_SulTextil.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := True;
  RLMemo3.Lines.Clear;
  if trim(fDMCadPedido.cdsPedidoImp_ItensOBS.AsString) = '' then
    PrintIt := False;
  if not PrintIt then
    exit;
  RLMemo3.Lines.Text := fDMCadPedido.cdsPedidoImp_ItensOBS.AsString;
end;

procedure TfRelPedido_SulTextil.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := ((RLReport1.PageNumber <= 1) and (Trim(fDMCadPedido.cdsPedidoImpENDERECO_ENT.AsString) <> '')) ;
end;

procedure TfRelPedido_SulTextil.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := ((RLReport1.PageNumber <= 1) and ((Trim(fDMCadPedido.cdsPedidoImpNOME_TRA.AsString) <> '') or (Trim(fDMCadPedido.cdsPedidoImpNOME_RED.AsString) <> ''))) ;
end;

procedure TfRelPedido_SulTextil.RLBand8BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (RLReport1.PageNumber <= 1);
end;

procedure TfRelPedido_SulTextil.RLBand10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (RLReport1.PageNumber <= 1);
end;

procedure TfRelPedido_SulTextil.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  vImpSaldo := False;
  Action    := Cafree;
end;

procedure TfRelPedido_SulTextil.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelPedido_SulTextil.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

procedure TfRelPedido_SulTextil.RLBand12BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := vImpPeso;
end;

procedure TfRelPedido_SulTextil.RLBand14BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := vImpPreco;
  if not PrintIt then
    exit;
  PrintIt := ((StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoImpVLR_ICMS_FCP.AsFloat)) > 0)
             or (StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoImpVLR_ICMS_UF_DEST.AsFloat)) > 0)
             or (StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoImpVLR_ICMS_UF_REMET.AsFloat)) > 0));
  if not PrintIt then
    exit;
  RLLabel81.Caption := FormatFloat('###,###,##0.00',vVlr_ICMS_FCP);
  RLLabel82.Caption := FormatFloat('###,###,##0.00',vVLR_ICMS_UF_Dest);
  RLLabel83.Caption := FormatFloat('###,###,##0.00',vVlr_ICMS_UF_Remet);

  vVlr_ICMS_FCP      := 0;
  vVLR_ICMS_UF_Dest  := 0;
  vVlr_ICMS_UF_Remet := 0;
end;

procedure TfRelPedido_SulTextil.RLBand15BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vQtdPed: Real;
  vTexto: String;
  vAux, I: Integer;
  vVlrTotalAux: Real;
  vTexto_Saldo : String;
  vVlrDescAux : Real;
begin
  PrintIt := (fDMCadPedido.cdsParametrosTIPO_REL_PEDIDO.AsString = 'P2');
  if fDMCadPedido.cdsParametrosTIPO_REL_PEDIDO.AsString <> 'P2' then
    exit;

  //17/05/2016   Impressão Saldo  
  if vImpSaldo then
    vQtdPed := fDMCadPedido.cdsPedidoImp_ItensQTD_RESTANTE.AsFloat
  else
    vQtdPed := fDMCadPedido.cdsPedidoImp_ItensQTD.AsFloat;

  //17/05/2016
  if (vImpSaldo) and (StrToFloat(FormatFloat('0.0000',vQtdPed)) <= 0) then
    PrintIt := False;
  if not PrintIt then
    exit;

  //27/07/2017
  RLMemo4.Lines.Clear;
  vTexto := fDMCadPedido.cdsPedidoImp_ItensNOMEPRODUTO.AsString;
  if trim(fDMCadPedido.cdsPedidoImp_ItensNOME_COR_COMBINACAO.AsString) <> '' then
    vTexto := vTexto + ' ' + fDMCadPedido.cdsPedidoImp_ItensNOME_COR_COMBINACAO.AsString;
  RLMemo4.Lines.Text := vTexto;
  //

  vVlrTotalAux := StrToFloat(FormatFloat('0.00',vQtdPed * fDMCadPedido.cdsPedidoImp_ItensVLR_UNITARIO.AsFloat));
  if vImpSaldo then
  begin
    vVlrTotalAux := StrToFloat(FormatFloat('0.00',vVlrTotalAux + fDMCadPedido.cdsPedidoImp_ItensVLR_ICMSSUBST_PARCIAL.AsFloat
                  - fDMCadPedido.cdsPedidoImp_ItensVLR_DESCONTO_PARCIAL.AsFloat
                  - fDMCadPedido.cdsPedidoImp_ItensVLR_DESCONTORATEIO_PARCIAL.AsFloat));
    vVlrDescAux := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoImp_ItensVLR_DESCONTO_PARCIAL.AsFloat
                 + fDMCadPedido.cdsPedidoImp_ItensVLR_DESCONTORATEIO_PARCIAL.AsFloat)); 
  end
  else
  begin
    vVlrTotalAux := StrToFloat(FormatFloat('0.00',vVlrTotalAux + fDMCadPedido.cdsPedidoImp_ItensVLR_ICMSSUBST.AsFloat
                  - fDMCadPedido.cdsPedidoImp_ItensVLR_DESCONTO.AsFloat
                  - fDMCadPedido.cdsPedidoImp_ItensVLR_DESCONTORATEIO.AsFloat));
    vVlrDescAux := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoImp_ItensVLR_DESCONTO.AsFloat
                 + fDMCadPedido.cdsPedidoImp_ItensVLR_DESCONTORATEIO.AsFloat));
  end;
  rlPreco2.Visible    := vImpPreco;
  rlVlrTotal2.Visible := vImpPreco;
  rlVlrDesc2.Visible  := vImpPreco;
  RLDBText64.Visible  := vImpPreco;
  vAux := 4;
  //if DM1.tParametrosQtdCasasDecimaisPrecoPed.AsInteger > 0 then
  //  vAux := DM1.tParametrosQtdCasasDecimaisPrecoPed.AsInteger;
  vTexto := '0.';
  for i := 1 to vAux do
    vTexto := vTexto + '0';
  if vImpPreco then
  begin
    rlPreco2.Caption    := FormatFloat(vTexto,fDMCadPedido.cdsPedidoImp_ItensVLR_UNITARIO.AsFloat);
    rlVlrTotal2.Caption := FormatFloat('###,##0.00',vVlrTotalAux);
    rlVlrDesc2.Caption  := FormatFloat('###,##0.00',vVlrDescAux);
  end;

  //RLDBText51.Visible := (fDMCadPedido.cdsParametrosUSA_ID_PRODUTO.AsString = 'S');

  fDMCadPedido.cdsPedidoImp_Tam.Close;
  fDMCadPedido.sdsPedidoImp_Tam.ParamByName('ID').AsInteger   := fDMCadPedido.cdsPedidoImp_ItensID.AsInteger;
  fDMCadPedido.sdsPedidoImp_Tam.ParamByName('ITEM').AsInteger := fDMCadPedido.cdsPedidoImp_ItensITEM.AsInteger;
  fDMCadPedido.cdsPedidoImp_Tam.Open;

  //17/04/2017
  {if vImpDtProducao then
    RLDBText57.DataField := 'DTPRODUCAO'
  else
    RLDBText57.DataField := 'DTENTREGA';}

  //17/05/2016
  vTexto_Saldo := '';
  if vImpSaldo then
    vTexto_Saldo := '_PARCIAL';
  vVlr_ICMS_FCP      := vVlr_ICMS_FCP + fDMCadPedido.cdsPedidoImp_Itens.FieldByName('VLR_ICMS_FCP'+vTexto_Saldo).AsFloat;
  vVLR_ICMS_UF_Dest  := vVLR_ICMS_UF_Dest + fDMCadPedido.cdsPedidoImp_Itens.FieldByName('VLR_ICMS_UF_DEST'+vTexto_Saldo).AsFloat;
  vVlr_ICMS_UF_Remet := vVLR_ICMS_UF_Remet + fDMCadPedido.cdsPedidoImp_Itens.FieldByName('VLR_ICMS_UF_REMET'+vTexto_Saldo).AsFloat;
  vVlr_IPI           := vVlr_IPI + fDMCadPedido.cdsPedidoImp_Itens.FieldByName('VLR_IPI'+vTexto_Saldo).AsFloat;
  vVlr_Desconto      := vVlr_Desconto + fDMCadPedido.cdsPedidoImp_Itens.FieldByName('VLR_DESCONTO'+vTexto_Saldo).AsFloat + fDMCadPedido.cdsPedidoImp_Itens.FieldByName('VLR_DESCONTORATEIO'+vTexto_Saldo).AsFloat;
  vVlr_Itens         := vVlr_Itens + fDMCadPedido.cdsPedidoImp_Itens.FieldByName('VLR_TOTAL'+vTexto_Saldo).AsFloat + (fDMCadPedido.cdsPedidoImp_Itens.FieldByName('VLR_DESCONTO'+vTexto_Saldo).AsFloat + fDMCadPedido.cdsPedidoImp_Itens.FieldByName('VLR_DESCONTORATEIO'+vTexto_Saldo).AsFloat) ;
  vBase_Icms_Subst   := vBase_Icms_Subst + fDMCadPedido.cdsPedidoImp_Itens.FieldByName('BASE_ICMSSUBST'+vTexto_Saldo).AsFloat;
  vVlr_Total_Pedido  := vVlr_Total_Pedido + vVlrTotalAux;
  vQtd_Total         := vQtd_Total + vQtdPed;
end;

procedure TfRelPedido_SulTextil.RLBand11BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (fDMCadPedido.cdsParametrosTIPO_REL_PEDIDO.AsString = 'PE');
  RLLabel91.Visible := ((PrintIt) and (vImpSaldo));
  if not PrintIt then
    exit;
  if fDMCadPedido.qParametros_PedIMP_REF_COD_PEDIDO.AsString = 'R' then
    RLLabel42.Caption := 'Referência';
end;

procedure TfRelPedido_SulTextil.RLBand16BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (fDMCadPedido.cdsParametrosTIPO_REL_PEDIDO.AsString = 'P2');
  RLLabel92.Visible := ((PrintIt) and (vImpSaldo));
end;

procedure TfRelPedido_SulTextil.RLBand17BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vQtdPed : Real;
  vTexto : String;  
begin
  PrintIt := (fDMCadPedido.cdsParametrosTIPO_REL_PEDIDO.AsString = 'PE');
  if fDMCadPedido.cdsParametrosTIPO_REL_PEDIDO.AsString <> 'PE' then
    exit;

  //17/05/2016  Impressão do Saldo
  if vImpSaldo then
    vQtdPed := fDMCadPedido.cdsPedidoImp_ItensQTD_RESTANTE.AsFloat
  else
    vQtdPed := fDMCadPedido.cdsPedidoImp_ItensQTD.AsFloat;
  //17/05/2016
  if (vImpSaldo) and (StrToFloat(FormatFloat('0.0000',vQtdPed)) <= 0) then
    PrintIt := False;
  if not PrintIt then
    exit;
  if vImpPreco then
    PrintIt := False;
  if not PrintIt then
    exit;

  if fDMCadPedido.qParametros_PedIMP_REF_COD_PEDIDO.AsString = 'R' then
  begin
    RLDBText53.DataField := 'REFERENCIA';
    RLDBText8.DataField  := 'REFERENCIA';
  end
  else
  begin
    RLDBText53.DataField := 'ID_PRODUTO';
    RLDBText8.DataField  := 'ID_PRODUTO';
  end;
  //02/05/2017
  RLMemo6.Lines.Clear;
  vTexto := fDMCadPedido.cdsPedidoImp_ItensNOMEPRODUTO.AsString;
  if trim(fDMCadPedido.cdsPedidoImp_ItensNOME_COR_COMBINACAO.AsString) <> '' then
    vTexto := vTexto + ' ' + fDMCadPedido.cdsPedidoImp_ItensNOME_COR_COMBINACAO.AsString;
  if fDMCadPedido.cdsPedidoImpIMP_COR_CLIENTE.AsString = 'S' then
  begin
    if trim(fDMCadPedido.cdsPedidoImp_ItensCOD_COR_CLIENTE.AsString) <> '' then
      vTexto := vTexto + '(' +fDMCadPedido.cdsPedidoImp_ItensCOD_COR_CLIENTE.AsString + ')';
    if trim(fDMCadPedido.cdsPedidoImp_ItensCOD_PRODUTO_CLIENTE.AsString) <> '' then
      vTexto := vTexto + '(P.Cli:' +fDMCadPedido.cdsPedidoImp_ItensCOD_PRODUTO_CLIENTE.AsString + ')';
    if trim(fDMCadPedido.cdsPedidoImp_ItensTAMANHO_CLIENTE.AsString) <> '' then
      vTexto := vTexto + '(T.' +fDMCadPedido.cdsPedidoImp_ItensTAMANHO_CLIENTE.AsString + ')';
  end;
  RLMemo6.Lines.Text := vTexto;
  vQtd_Total         := vQtd_Total + vQtdPed;
  if fDMCadPedido.cdsPedidoImp_ItensENCERADO.AsString = 'S' then
    RLLabel97.Caption := 'Encerado'
  else
  if fDMCadPedido.cdsPedidoImp_ItensENCERADO.AsString = 'G' then
    RLLabel97.Caption := 'Engomado'
  else
    RLLabel97.Caption := '';
end;

procedure TfRelPedido_SulTextil.RLBand18BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vQtdAux : Real;  
begin
  RLLabel96.Caption := '';
  PrintIt := (fDMCadPedido.qParametros_PedUSA_UNIDADE_VENDA.AsString = 'S');
  if not PrintIt then
    exit;
  PrintIt := ((trim(fDMCadPedido.cdsPedidoImp_ItensUNIDADE_PROD.AsString) <> '') and
             (fDMCadPedido.cdsPedidoImp_ItensUNIDADE_PROD.AsString <> fDMCadPedido.cdsPedidoImp_ItensUNIDADE.AsString));
  if RLDBText34.DataField = 'QTD_RESTANTE' then
    vQtdAux := fDMCadPedido.cdsPedidoImp_ItensQTD_RESTANTE.AsFloat * fDMCadPedido.cdsPedidoImp_ItensCONV_UNIDADE.AsFloat
  else
    vQtdAux := fDMCadPedido.cdsPedidoImp_ItensQTD.AsFloat * fDMCadPedido.cdsPedidoImp_ItensCONV_UNIDADE.AsFloat;
  RLLabel96.Caption := FormatFloat('0.####',vQtdAux);
end;

end.
