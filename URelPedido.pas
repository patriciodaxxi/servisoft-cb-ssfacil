unit uRelPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, RLRichText, DB, DBTables,
  RLBarcode, jpeg, UDMCadPedido, UDMRel;

type
  TfRelPedido = class(TForm)
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
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText29: TRLDBText;
    RLBand7: TRLBand;
    RLDraw7: TRLDraw;
    RLDraw3: TRLDraw;
    RLLabel46: TRLLabel;
    RLMemo1: TRLMemo;
    RLBand4: TRLBand;
    RLDraw6: TRLDraw;
    RLDraw5: TRLDraw;
    RLLabel40: TRLLabel;
    RLDBText32: TRLDBText;
    RLLabel41: TRLLabel;
    RLLabel44: TRLLabel;
    RLDBText33: TRLDBText;
    RLLabel45: TRLLabel;
    RLDBText20: TRLDBText;
    rlPreco: TRLLabel;
    rlVlrTotal: TRLLabel;
    RLDBText8: TRLDBText;
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
    RLDBText49: TRLDBText;
    RLDBText51: TRLDBText;
    RLBand8: TRLBand;
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
    RLLabel18: TRLLabel;
    RLDBText7: TRLDBText;
    rlEndereco: TRLLabel;
    RLDBText37: TRLDBText;
    RLDBText38: TRLDBText;
    RLDBText39: TRLDBText;
    RLBand6: TRLBand;
    RLDraw9: TRLDraw;
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
    RLDraw4: TRLDraw;
    RLLabel15: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText27: TRLDBText;
    RLBand10: TRLBand;
    RLDraw12: TRLDraw;
    RLLabel9: TRLLabel;
    RLDBText28: TRLDBText;
    RLLabel39: TRLLabel;
    RLDBText50: TRLDBText;
    RLBand11: TRLBand;
    RLLabel26: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel14: TRLLabel;
    rlTipoFrete: TRLLabel;
    RLLabel22: TRLLabel;
    RLDBText16: TRLDBText;
    RLLabel43: TRLLabel;
    RLDBText52: TRLDBText;
    RLBand3: TRLBand;
    RLLabel38: TRLLabel;
    RLMemo3: TRLMemo;
    RLBand5: TRLBand;
    RLLabel56: TRLLabel;
    RLMemo2: TRLMemo;
    RLDraw13: TRLDraw;
    RLLabel27: TRLLabel;
    RLDBText23: TRLDBText;
    RLLabel32: TRLLabel;
    RLDBText53: TRLDBText;
    rlVlrST: TRLLabel;
    RLDBText54: TRLDBText;
    RLBand12: TRLBand;
    RLDraw14: TRLDraw;
    RLLabel62: TRLLabel;
    RLLabel63: TRLLabel;
    RLDBText55: TRLDBText;
    RLDBText56: TRLDBText;
    RLLabel64: TRLLabel;
    RLLabel65: TRLLabel;
    RLDBText34: TRLDBText;
    RLDBText57: TRLDBText;
    RLLabel66: TRLLabel;
    RLBand13: TRLBand;
    RLDraw15: TRLDraw;
    RLLabel67: TRLLabel;
    RLLabel68: TRLLabel;
    RLDBText58: TRLDBText;
    RLLabel69: TRLLabel;
    RLDBText59: TRLDBText;
    RLBand14: TRLBand;
    RLDraw16: TRLDraw;
    RLLabel70: TRLLabel;
    RLLabel71: TRLLabel;
    RLDBText61: TRLDBText;
    RLDBText60: TRLDBText;
    RLLabel72: TRLLabel;
    RLDBText62: TRLDBText;
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
  private
    { Private declarations }
    fDMRel: TDMRel;
  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;
    vImpPendente, vImpPreco, vImpImposto, vImpPeso: Boolean;
  end;

var
  fRelPedido: TfRelPedido;

implementation

uses rsDBUtils;


{$R *.dfm}

procedure TfRelPedido.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
  {if fPedido.RadioGroup3.ItemIndex = 0 then
    RLDBText22.DataField  := 'QtdPares'
  else
    RLDBText22.DataField  := 'QtdParesRest';}
  if fDMCadPedido.cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger = fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger then
    RLDBText4.DataField  := 'NOME_CLI_CONS'
  else
    RLDBText4.DataField  := 'NOME_CLI';
end;

procedure TfRelPedido.RLBand1BeforePrint(Sender: TObject;
   var PrintIt: Boolean);
begin
  RLLabel42.Visible    := (fDMCadPedido.cdsParametrosUSA_ID_PRODUTO.AsString = 'S');
  rlEndFilial.Caption  := fDMCadPedido.cdsPedidoImpEND_FILIAL.AsString + ',' + fDMCadPedido.cdsPedidoImpNUM_END_FILIAL.AsString;
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
end;

procedure TfRelPedido.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel27.Visible  := (vImpPreco) and (vImpImposto);
  RLDBText23.Visible := (vImpPreco) and (vImpImposto);
  RLLabel32.Visible  := (vImpPreco) and (vImpImposto);
  RLDBText53.Visible := (vImpPreco) and (vImpImposto);
  RLLabel40.Visible  := (vImpPreco);
  RLLabel43.Visible  := (vImpPreco);
  RLLabel44.Visible  := (vImpPreco);
  RLLabel45.Visible  := (vImpPreco);
  RLDBText33.Visible := (vImpPreco);
  RLDBText32.Visible := (vImpPreco);
  RLDBText52.Visible := (vImpPreco);
  RLLabel45.Visible  := (vImpPreco);
  RLLabel64.Visible  := (vImpPreco);
  if (vImpPreco) and (vImpImposto) then
    RLLabel64.Caption := FormatFloat('###,###,##0.00',fDMCadPedido.cdsPedidoImpVLR_TOTAL.AsFloat)
  else
  if (vImpPreco) then
    RLLabel64.Caption := FormatFloat('###,###,##0.00',fDMCadPedido.cdsPedidoImpVLR_TOTAL.AsFloat - fDMCadPedido.cdsPedidoImpVLR_ICMSSUBST.AsFloat)
end;

procedure TfRelPedido.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo1.Lines.Clear;
  if trim(fDMCadPedido.qParametros_PedOBS_PEDIDO.AsString) <> '' then
   RLMemo1.Lines.Text := fDMCadPedido.qParametros_PedOBS_PEDIDO.AsString + #13 + #13;
  RLMemo1.Lines.Text := RLMemo1.Lines.Text + fDMCadPedido.cdsPedidoImpOBS.Value;
end;

procedure TfRelPedido.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vQtdPed: Real;
  vTexto: String;
  vAux, I: Integer;
  vVlrTotalAux: Real;
begin
  //if vImpPendente then
  //  vQtdPed := fDMCadPedido.cdsPedidoImp_ItensQTD_RESTANTE.AsFloat
  //else
    vQtdPed := fDMCadPedido.cdsPedidoImp_ItensQTD.AsFloat;
  vVlrTotalAux := StrToFloat(FormatFloat('0.00',vQtdPed * fDMCadPedido.cdsPedidoImp_ItensVLR_UNITARIO.AsFloat));
  vVlrTotalAux := StrToFloat(FormatFloat('0.00',vVlrTotalAux + fDMCadPedido.cdsPedidoImp_ItensVLR_ICMSSUBST.AsFloat));
  vVlrTotalAux := StrToFloat(FormatFloat('0.00',vVlrTotalAux - fDMCadPedido.cdsPedidoImp_ItensVLR_DESCONTO.AsFloat
                - fDMCadPedido.cdsPedidoImp_ItensVLR_DESCONTORATEIO.AsFloat));

  rlVlrST.Visible    := vImpPreco;
  rlPreco.Visible    := vImpPreco;
  rlVlrTotal.Visible := vImpPreco;
  RLDBText16.Visible := vImpPreco;
  RLDBText54.Visible := vImpPreco;
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
  RLDBText51.Visible := (fDMCadPedido.cdsParametrosUSA_ID_PRODUTO.AsString = 'S');

  fDMCadPedido.cdsPedidoImp_Tam.Close;
  fDMCadPedido.sdsPedidoImp_Tam.ParamByName('ID').AsInteger   := fDMCadPedido.cdsPedidoImp_ItensID.AsInteger;
  fDMCadPedido.sdsPedidoImp_Tam.ParamByName('ITEM').AsInteger := fDMCadPedido.cdsPedidoImp_ItensITEM.AsInteger;
  fDMCadPedido.cdsPedidoImp_Tam.Open;
end;

procedure TfRelPedido.RLBand5BeforePrint(Sender: TObject;
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

procedure TfRelPedido.RLBand3BeforePrint(Sender: TObject;
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

procedure TfRelPedido.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := ((RLReport1.PageNumber <= 1) and (Trim(fDMCadPedido.cdsPedidoImpENDERECO_ENT.AsString) <> '')) ;
end;

procedure TfRelPedido.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := ((RLReport1.PageNumber <= 1) and ((Trim(fDMCadPedido.cdsPedidoImpNOME_TRA.AsString) <> '') or (Trim(fDMCadPedido.cdsPedidoImpNOME_RED.AsString) <> ''))) ;
end;

procedure TfRelPedido.RLBand8BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (RLReport1.PageNumber <= 1);
end;

procedure TfRelPedido.RLBand10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (RLReport1.PageNumber <= 1);
end;

procedure TfRelPedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelPedido.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelPedido.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

procedure TfRelPedido.RLBand12BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := vImpPeso;
end;

procedure TfRelPedido.RLBand14BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := vImpPreco;
  if not PrintIt then
    exit;
  PrintIt := ((StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoImpVLR_ICMS_FCP.AsFloat)) > 0)
             or (StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoImpVLR_ICMS_UF_DEST.AsFloat)) > 0)
             or (StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoImpVLR_ICMS_UF_REMET.AsFloat)) > 0));
end;

end.
