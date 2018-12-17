unit uRelOC_Hidro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, DB, DBTables,
  jpeg, UDMCadPedido, UDMRel;

type
  TfRelOC_Hidro = class(TForm)
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
    RLSubDetail2: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText18: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText29: TRLDBText;
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
    RLDBText39: TRLDBText;
    RLDraw12: TRLDraw;
    RLLabel9: TRLLabel;
    RLDBText28: TRLDBText;
    RLDBText49: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText25: TRLDBText;
    RLSubDetail3: TRLSubDetail;
    RLBand6: TRLBand;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLBand8: TRLBand;
    RLDBText26: TRLDBText;
    RLDBText33: TRLDBText;
    RLPanel2: TRLPanel;
    RLDBText3: TRLDBText;
    rlCidade_Forn: TRLLabel;
    RLLabel44: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel29: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel47: TRLLabel;
    rlNomeFrete: TRLLabel;
    RLLabel48: TRLLabel;
    RLMemo1: TRLMemo;
    RLLabel5: TRLLabel;
    RLLabel15: TRLLabel;
    RLBand4: TRLBand;
    RLPanel3: TRLPanel;
    RLPanel4: TRLPanel;
    RLLabel46: TRLLabel;
    RLLabel50: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel22: TRLLabel;
    RLDBText27: TRLDBText;
    RLDBText32: TRLDBText;
    RLDBText34: TRLDBText;
    RLDBText37: TRLDBText;
    RLBand3: TRLBand;
    RLPanel1: TRLPanel;
    RLLabel43: TRLLabel;
    RLLabel26: TRLLabel;
    RLBand7: TRLBand;
    RLLabel27: TRLLabel;
    RLLabel31: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel38: TRLLabel;
    RLLabel41: TRLLabel;
    RLDraw4: TRLDraw;
    RLLabel42: TRLLabel;
    RLDBText38: TRLDBText;
    RLLabel51: TRLLabel;
    RLDBText40: TRLDBText;
    RLLabel52: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel34: TRLLabel;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    fDMRel: TDMRel;
    vQtdItens : Integer;
    vTotalFisico : Integer;
  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;
    vImpProjeto: Boolean;
  end;

var
  fRelOC_Hidro: TfRelOC_Hidro;

implementation

uses rsDBUtils, SendMailOptions;

{$R *.dfm}

procedure TfRelOC_Hidro.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
  {if fPedido.RadioGroup3.ItemIndex = 0 then
    RLDBText22.DataField  := 'QtdPares'
  else
    RLDBText22.DataField  := 'QtdParesRest';}
end;

procedure TfRelOC_Hidro.RLBand1BeforePrint(Sender: TObject;
   var PrintIt: Boolean);
begin
  rlEndFilial.Caption   := fDMCadPedido.cdsPedidoImpEND_FILIAL.AsString + ',' + fDMCadPedido.cdsPedidoImpNUM_END_FILIAL.AsString;
  rlEndereco.Caption    := fDMCadPedido.cdsPedidoImpEND_CLIENTE.AsString + ', ' + fDMCadPedido.cdsPedidoImpNUM_END_CLIENTE.AsString;
  rlCidade_Forn.Caption := fDMCadPedido.cdsPedidoImpCIDADE_CLIENTE.AsString + ' / ' + fDMCadPedido.cdsPedidoImpUF.AsString;
  if fDMCadPedido.cdsPedidoImpTIPO_FRETE.AsString = '1' then
    rlNomeFrete.Caption := 'Emitente'
  else
  if fDMCadPedido.cdsPedidoImpTIPO_FRETE.AsString = '2' then
    rlNomeFrete.Caption := 'Destinatário'
  else
  if fDMCadPedido.cdsPedidoImpTIPO_FRETE.AsString = '3' then
    rlNomeFrete.Caption := 'Terceiro'
  else
  if fDMCadPedido.cdsPedidoImpTIPO_FRETE.AsString = '9' then
    rlNomeFrete.Caption := 'Sem Frete'
  else
    rlNomeFrete.Caption := '';
  RLMemo1.Lines.Clear;
  RLMemo1.Lines.Text := fDMCadPedido.cdsPedidoImpOBS.Value;
  RLLabel15.Caption  := fDMCadPedido.cdsFilialEMAIL_NFE.AsString;
    
  try
    RLImage1.Picture.LoadFromFile(fDMCadPedido.cdsFilialENDLOGO.AsString)
  except
     RLImage1.Picture := nil;
  end;
end;

procedure TfRelOC_Hidro.RLBand2BeforePrint(Sender: TObject;
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

  vAux := 4;
  //if DM1.tParametrosQtdCasasDecimaisPrecoPed.AsInteger > 0 then
  //  vAux := DM1.tParametrosQtdCasasDecimaisPrecoPed.AsInteger;
  vTexto := '0.';
  for i := 1 to vAux do
    vTexto := vTexto + '0';
  vQtdItens := vQtdItens + 1;
  vTotalFisico := vTotalFisico + fDMCadPedido.cdsPedidoImp_ItensQTD.AsInteger;
end;

procedure TfRelOC_Hidro.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := True;
  RLMemo2.Lines.Clear;
  if trim(fDMCadPedido.cdsPedidoImp_ItensOBS.AsString) = '' then
    PrintIt := False;
  if not PrintIt then
    exit;
  RLMemo2.Lines.Text := fDMCadPedido.cdsPedidoImp_ItensOBS.AsString;
end;

procedure TfRelOC_Hidro.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := vImpProjeto;
end;

procedure TfRelOC_Hidro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelOC_Hidro.RLBand8BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := vImpProjeto;
end;

procedure TfRelOC_Hidro.FormCreate(Sender: TObject);
begin
  fDMRel       := TDMRel.Create(Self);
  vQtdItens    := 0;
  vTotalFisico := 0;
end;

procedure TfRelOC_Hidro.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

procedure TfRelOC_Hidro.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel49.Caption := IntToStr(vQtdItens);
  RLLabel52.Caption := IntToStr(vTotalFisico);
  vQtdItens         := 0;
  vTotalFisico      := 0;
  {rlVlr_Frete.Caption := FormatFloat('###,###,##0.00',fDMCadPedido.cdsPedidoImpVLR_FRETE.AsFloat);
  rlVlr_IPI.Caption   := FormatFloat('###,###,##0.00',fDMCadPedido.cdsPedidoImpVLR_IPI.AsFloat);
  rlVlr_Total.Caption := FormatFloat('###,###,##0.00',fDMCadPedido.cdsPedidoImpVLR_TOTAL.AsFloat);}
end;

procedure TfRelOC_Hidro.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel38.Caption := fDMCadPedido.cdsFilialNOME.AsString;
end;

end.
