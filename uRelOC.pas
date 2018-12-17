unit uRelOC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, DB, DBTables, jpeg, UDMRel,
  UDMCadPedido;

type
  TfRelOC = class(TForm)
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
    RLDBText2: TRLDBText;
    RLDraw2: TRLDraw;
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
    RLLabel26: TRLLabel;
    RLSubDetail2: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText20: TRLDBText;
    RLDBText7: TRLDBText;
    rlEndereco: TRLLabel;
    RLBand5: TRLBand;
    RLLabel56: TRLLabel;
    RLMemo2: TRLMemo;
    RLDraw8: TRLDraw;
    RLDraw10: TRLDraw;
    RLDraw11: TRLDraw;
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
    RLDBText37: TRLDBText;
    RLDBText39: TRLDBText;
    RLDraw12: TRLDraw;
    RLLabel9: TRLLabel;
    RLDBText28: TRLDBText;
    RLLabel29: TRLLabel;
    RLDBText8: TRLDBText;
    RLSubDetail3: TRLSubDetail;
    RLBand6: TRLBand;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLBand8: TRLBand;
    RLDBText26: TRLDBText;
    RLDBText33: TRLDBText;
    RLPanel2: TRLPanel;
    RLPanel3: TRLPanel;
    RLPanel1: TRLPanel;
    RLLabel43: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel48: TRLLabel;
    RLDBText18: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText49: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText38: TRLDBText;
    RLDBText40: TRLDBText;
    RLMemo3: TRLMemo;
    RLBand7: TRLBand;
    RLDraw4: TRLDraw;
    RLDraw3: TRLDraw;
    RLLabel46: TRLLabel;
    RLMemo1: TRLMemo;
    RLLabel31: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel5: TRLLabel;
    RLDraw5: TRLDraw;
    RLLabel45: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel38: TRLLabel;
    rlVlr_Frete: TRLLabel;
    rlVlr_IPI: TRLLabel;
    rlVlr_Total: TRLLabel;
    RLDraw6: TRLDraw;
    RLLabel44: TRLLabel;
    RLLabel47: TRLLabel;
    RLLabel41: TRLLabel;
    rlQtd_Total: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel50: TRLLabel;
    rlVlr_Duplicata: TRLLabel;
    RLLabel52: TRLLabel;
    rlVlr_Desconto: TRLLabel;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RLBand2AfterPrint(Sender: TObject);
  private
    { Private declarations }
    fDMRel: TDMRel;

    vVlr_Frete, vVlr_IPI, vVlr_Total, vQtd_Total: Real;
    vVlr_Duplicata: Real;
    vVlr_Desconto: Real;
  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;
    vImpProjeto: Boolean;
    vNumOPImp: String;
    vImpSaldo: Boolean;
  end;

var
  fRelOC: TfRelOC;

implementation

uses rsDBUtils, SendMailOptions;

{$R *.dfm}

procedure TfRelOC.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);

  if vImpSaldo then
  begin
    RLDBText22.DataField := 'QTD_RESTANTE';
    RLDBText25.DataField := 'VLR_IPI_PARCIAL';
    RLDBText38.DataField := 'VLR_ICMS_PARCIAL';
    RLDBText23.DataField := 'VLR_TOTAL_PARCIAL';
  end
  else
  begin
    RLDBText22.DataField := 'QTD';
    RLDBText25.DataField := 'VLR_IPI';
    RLDBText38.DataField := 'VLR_ICMS';
    RLDBText23.DataField := 'VLR_TOTAL';
  end;

  vVlr_Frete     := 0;
  vVlr_IPI       := 0;
  vVlr_Total     := 0;
  vVlr_Duplicata := 0;
  vVlr_Desconto  := 0;
end;

procedure TfRelOC.RLBand1BeforePrint(Sender: TObject;
   var PrintIt: Boolean);
begin
  rlEndFilial.Caption := fDMCadPedido.cdsPedidoImpEND_FILIAL.AsString + ',' + fDMCadPedido.cdsPedidoImpNUM_END_FILIAL.AsString;
  rlEndereco.Caption  := fDMCadPedido.cdsPedidoImpEND_CLIENTE.AsString + ', ' + fDMCadPedido.cdsPedidoImpNUM_END_CLIENTE.AsString;

  try
    RLImage1.Picture.LoadFromFile(fDMCadPedido.cdsFilialENDLOGO.AsString)
  except
     RLImage1.Picture := nil;
  end;

  RLLabel49.Visible := vImpSaldo;
  vQtd_Total := 0;
end;

procedure TfRelOC.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vAux: String;
begin
  RLLabel27.Caption := '';
  if fDMCadPedido.cdsPedidoTIPO_FRETE.AsString = '1' then
    RLLabel27.Caption := 'Por Conta Emitente'
  else
  if fDMCadPedido.cdsPedidoTIPO_FRETE.AsString = '2' then
    RLLabel27.Caption := 'Por Conta Destinatário'
  else
  if fDMCadPedido.cdsPedidoTIPO_FRETE.AsString = '3' then
    RLLabel27.Caption := 'Terceiros'
  else
  if fDMCadPedido.cdsPedidoTIPO_FRETE.AsString = '9' then
    RLLabel27.Caption := 'Sem Frete';

   //17/05/2016 
  //rlVlr_Frete.Caption := FormatFloat('###,###,##0.00',fDMCadPedido.cdsPedidoImpVLR_FRETE.AsFloat);
  //rlVlr_IPI.Caption   := FormatFloat('###,###,##0.00',fDMCadPedido.cdsPedidoImpVLR_IPI.AsFloat);
  //rlVlr_Total.Caption := FormatFloat('###,###,##0.00',fDMCadPedido.cdsPedidoImpVLR_TOTAL.AsFloat);
  //rlQtd_Total.Caption := FormatFloat('###,###,##0.####',fDMCadPedido.cdsPedidoImpQTD.AsFloat);
  //rlVlr_Frete.Caption := FormatFloat('###,###,##0.00',vVlr_Frete);
  rlVlr_Frete.Caption := FormatFloat('###,###,##0.00',fDMCadPedido.cdsPedidoImpVLR_FRETE.AsFloat);
  rlVlr_IPI.Caption   := FormatFloat('###,###,##0.00',vVlr_IPI);
  rlVlr_Total.Caption := FormatFloat('###,###,##0.00',(vVlr_Total + vVlr_IPI + fDMCadPedido.cdsPedidoImpVLR_FRETE.AsFloat) - vVlr_Desconto);
  rlQtd_Total.Caption := FormatFloat('###,###,##0.####',vQtd_Total);
  rlVlr_Duplicata.Caption := FormatFloat('###,###,##0.00',vVlr_Duplicata);
  rlVlr_Desconto.Caption  := FormatFloat('###,###,##0.00',vVlr_Desconto);

  vVlr_Frete     := 0;
  vVlr_IPI       := 0;
  vVlr_Total     := 0;
  vQtd_Total     := 0;
  vVlr_Duplicata := 0;
  vVlr_Desconto  := 0;

  RLLabel44.Visible := (fDMCadPedido.cdsPedidoImpID_MAPA.AsInteger > 0);
  RLLabel47.Visible := (fDMCadPedido.cdsPedidoImpID_MAPA.AsInteger > 0);
  if (fDMCadPedido.cdsPedidoImpID_MAPA.AsInteger > 0) then
    RLLabel47.Caption := 'Nº ' + fDMCadPedido.cdsPedidoImpNUM_MAPA.AsString + '  ' + fDMCadPedido.cdsPedidoImpNOME_MAPA.AsString;

  RLLabel15.Caption := fDMCadPedido.cdsFilialEMAIL_NFE.AsString;

  RLMemo1.Lines.Clear;
  if trim(fDMCadPedido.qParametros_OCOBS_OC.AsString) <> '' then
    RLMemo1.Lines.Text := fDMCadPedido.qParametros_OCOBS_OC.AsString + #13 + #13;
  RLMemo1.Lines.Text := RLMemo1.Lines.Text + fDMCadPedido.cdsPedidoImpOBS.Value;
  if trim(vNumOPImp) <> '' then
    RLMemo1.Lines.Add(vNumOPImp);
  if fDMCadPedido.cdsPedidoImpID_ATELIER.AsInteger > 0 then
  begin
    vAux := 'Emitir Nota Triangular Para: ' + fDMCadPedido.cdsPedidoImpNOME_ATELIER.AsString;
    if fDMCadPedido.cdsPedidoImpPESSOA_ATELIER.AsString = 'J' then
      vAux := vAux + '   CNPJ: ' + fDMCadPedido.cdsPedidoImpCNPJ_CPF_ATELIER.AsString
    else
    if fDMCadPedido.cdsPedidoImpPESSOA_ATELIER.AsString = 'F' then
      vAux := vAux + '  CPF: ' + fDMCadPedido.cdsPedidoImpCNPJ_CPF_ATELIER.AsString;
    RLMemo1.Lines.Add('');
    RLMemo1.Lines.Add(vAux);
  end;
  
  RLLabel42.Visible := False;
  if (fDMCadPedido.cdsParametrosUSA_APROVACAO_OC_FORN.AsString = 'S') and (fDMCadPedido.cdsPedidoImpAPROVADO_PED.AsString <> 'A') then
  begin
    if (fDMCadPedido.cdsPedidoImpAPROVADO_PED.AsString = 'N') then
      RLLabel42.Caption := 'OC NÃO aprovada interna'
    else
      RLLabel42.Caption := 'Pendente de aprovação interna';
    RLLabel42.Visible := True;
  end;

  RLLabel50.Visible       := (fDMCadPedido.qParametros_OCUSAR_GERAR_COBRANCA.AsString = 'S');
  rlVlr_Duplicata.Visible := (fDMCadPedido.qParametros_OCUSAR_GERAR_COBRANCA.AsString = 'S');
end;

procedure TfRelOC.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vQtdPed: Real;      
  vTexto: String;
  vAux, I: Integer;
  vVlrTotalAux: Real;
  vNomeAux: String;
begin
  if vImpSaldo then
    PrintIt := (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedidoImp_ItensQTD_RESTANTE.AsFloat)) > 0);
  if not PrintIt then
    exit;

  if vImpSaldo then
    vQtdPed := fDMCadPedido.cdsPedidoImp_ItensQTD_RESTANTE.AsFloat
  else
    vQtdPed := fDMCadPedido.cdsPedidoImp_ItensQTD.AsFloat;
  vVlrTotalAux := StrToFloat(FormatFloat('0.00',vQtdPed * fDMCadPedido.cdsPedidoImp_ItensVLR_UNITARIO.AsFloat));

  vAux   := 4;
  vTexto := '0.';
  for i := 1 to vAux do
    vTexto := vTexto + '0';
  RLMemo3.Lines.Clear;

  vNomeAux := fDMCadPedido.cdsPedidoImp_ItensNOMEPRODUTO.AsString;
  if fDMCadPedido.cdsPedidoImp_ItensNOME_COR_COMBINACAO.AsString <> '' then
    vNomeAux := vNomeAux + ' ' + fDMCadPedido.cdsPedidoImp_ItensNOME_COR_COMBINACAO.AsString;
  if trim(fDMCadPedido.cdsPedidoImp_ItensTAMANHO.AsString) <> '' then
    vNomeAux := vNomeAux + ' TAM. ' + fDMCadPedido.cdsPedidoImp_ItensTAMANHO.AsString;
  RLMemo3.Lines.Text := vNomeAux;

  vVlr_Total := StrToFloat(FormatFloat('0.00',vVlr_Total + vVlrTotalAux));
end;

procedure TfRelOC.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vObsAux: String;
begin
  vObsAux := '';
  if trim(fDMCadPedido.cdsPedidoImp_ItensCARIMBO.AsString) <> '' then
    vObsAux := 'Carimbo: ' + fDMCadPedido.cdsPedidoImp_ItensCARIMBO.AsString;
  if trim(fDMCadPedido.cdsPedidoImp_ItensOBS.AsString) <> '' then
  begin
    if trim(vObsAux) <> '' then
      vObsAux := vObsAux + '.  ';
     vObsAux := fDMCadPedido.cdsPedidoImp_ItensOBS.AsString;
  end;

  PrintIt := True;
  RLMemo2.Lines.Clear;
  //if trim(fDMCadPedido.cdsPedidoImp_ItensOBS.AsString) = '' then
  if trim(vObsAux) = '' then
    PrintIt := False;
  if not PrintIt then
    exit;
  //RLMemo2.Lines.Text := fDMCadPedido.cdsPedidoImp_ItensOBS.AsString;
  RLMemo2.Lines.Text := vObsAux;
end;

procedure TfRelOC.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := vImpProjeto;
end;

procedure TfRelOC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelOC.RLBand8BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := vImpProjeto;
end;

procedure TfRelOC.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelOC.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

procedure TfRelOC.RLBand2AfterPrint(Sender: TObject);
begin
  if vImpSaldo then
  begin
    vVlr_Frete := StrToFloat(FormatFloat('0.00',vVlr_Frete + fDMCadPedido.cdsPedidoImp_ItensVLR_FRETE_PARCIAL.AsFloat));
    vVlr_IPI   := StrToFloat(FormatFloat('0.00',vVlr_IPI + fDMCadPedido.cdsPedidoImp_ItensVLR_IPI_PARCIAL.AsFloat));
    vQtd_Total := StrToFloat(FormatFloat('0.0000',vQtd_Total + fDMCadPedido.cdsPedidoImp_ItensQTD_RESTANTE.AsFloat));
    vVlr_Duplicata := StrToFloat(FormatFloat('0.00',vVlr_Duplicata + fDMCadPedido.cdsPedidoImp_ItensVLR_DUPLICATA_PARCIAL.AsFloat));
    vVlr_Desconto  := StrToFloat(FormatFloat('0.00',vVlr_Desconto + fDMCadPedido.cdsPedidoImp_ItensVLR_DESCONTO_PARCIAL.AsFloat + fDMCadPedido.cdsPedidoImp_ItensVLR_DESCONTO_RATEIO_PARCIAL.AsFloat));
  end
  else
  begin
    vVlr_Frete := StrToFloat(FormatFloat('0.00',vVlr_Frete + fDMCadPedido.cdsPedidoImp_ItensVLR_FRETE.AsFloat));
    vVlr_IPI   := StrToFloat(FormatFloat('0.00',vVlr_IPI + fDMCadPedido.cdsPedidoImp_ItensVLR_IPI.AsFloat));
    vQtd_Total := StrToFloat(FormatFloat('0.0000',vQtd_Total + fDMCadPedido.cdsPedidoImp_ItensQTD.AsFloat));
    vVlr_Duplicata := StrToFloat(FormatFloat('0.00',vVlr_Duplicata + fDMCadPedido.cdsPedidoImp_ItensVLR_DUPLICATA.AsFloat));
    vVlr_Desconto  := StrToFloat(FormatFloat('0.00',vVlr_Desconto + fDMCadPedido.cdsPedidoImp_ItensVLR_DESCONTORATEIO.AsFloat + fDMCadPedido.cdsPedidoImp_ItensVLR_DESCONTO.AsFloat));
  end;
end;

end.
