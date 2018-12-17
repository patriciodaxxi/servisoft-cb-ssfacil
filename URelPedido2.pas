unit uRelPedido2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, RLRichText, DBTables,
  DB, RLBarcode, jpeg, UDMCadPedido;

type
  TfRelPedido2 = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
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
    RLLabel30: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel37: TRLLabel;
    RLDBText18: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText29: TRLDBText;
    RLBand7: TRLBand;
    RLDraw3: TRLDraw;
    RLLabel46: TRLLabel;
    RLMemo1: TRLMemo;
    RLBand4: TRLBand;
    RLDraw6: TRLDraw;
    RLLabel45: TRLLabel;
    RLDBText34: TRLDBText;
    RLDBText20: TRLDBText;
    rlPreco: TRLLabel;
    rlVlrTotal: TRLLabel;
    RLLabel18: TRLLabel;
    RLDBText7: TRLDBText;
    rlEndereco: TRLLabel;
    RLDraw8: TRLDraw;
    RLDBText31: TRLDBText;
    RLDBText37: TRLDBText;
    RLDBText38: TRLDBText;
    RLDBText39: TRLDBText;
    RLDraw12: TRLDraw;
    RLLabel9: TRLLabel;
    RLDBText28: TRLDBText;
    RLLabel28: TRLLabel;
    RLDBText49: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel6: TRLLabel;
    RLBand3: TRLBand;
    RLLabel15: TRLLabel;
    RLDBText5: TRLDBText;
    RLMemo2: TRLMemo;
    RLLabel16: TRLLabel;
    RLDraw4: TRLDraw;
    RLBand5: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLDraw7: TRLDraw;
    RLLabel17: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText10: TRLDBText;
    RLLabel22: TRLLabel;
    RLLabel26: TRLLabel;
    RLDBText16: TRLDBText;
    RLLabel27: TRLLabel;
    RLDBText19: TRLDBText;
    RLLabel29: TRLLabel;
    RLDBText21: TRLDBText;
    RLLabel31: TRLLabel;
    RLDBText23: TRLDBText;
    RLBand14: TRLBand;
    RLLabel70: TRLLabel;
    RLLabel71: TRLLabel;
    RLDBText61: TRLDBText;
    RLDBText60: TRLDBText;
    RLLabel72: TRLLabel;
    RLDBText62: TRLDBText;
    RLDraw16: TRLDraw;
    RLBand6: TRLBand;
    RLDBText24: TRLDBText;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand14BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;
    vImpPendente, vImpPreco, vImpPeso: Boolean;
  end;

var
  fRelPedido2: TfRelPedido2;

implementation

uses rsDBUtils;                   

{$R *.dfm}

procedure TfRelPedido2.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
  {if fPedido.RadioGroup3.ItemIndex = 0 then
    RLDBText22.DataField  := 'QtdPares'
  else
    RLDBText22.DataField  := 'QtdParesRest';}
end;

procedure TfRelPedido2.RLBand1BeforePrint(Sender: TObject;
   var PrintIt: Boolean);
begin
  rlEndereco.Caption   := fDMCadPedido.cdsPedidoImpEND_CLIENTE.AsString + ', ' + fDMCadPedido.cdsPedidoImpNUM_END_CLIENTE.AsString;

  RLLabel35.Caption := 'Pr.Unitário';
  RLLabel34.Caption := 'Pr.Total';
  RLLabel35.Visible := vImpPreco;
  RLLabel34.Visible := vImpPreco;
  RLLabel17.Visible := vImpPreco;

end;

procedure TfRelPedido2.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (vImpPreco);

  {RLLabel45.Visible  := (vImpPreco);
  RLDBText34.Visible := (vImpPreco);
  RLLabel22.Visible  := (vImpPreco);
  RLDBText10.Visible := (vImpPreco);
  RLLabel26.Visible  := (vImpPreco);
  RLDBText16.Visible := (vImpPreco);}
end;

procedure TfRelPedido2.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo1.Lines.Clear;
  RLMemo1.Lines.Text := fDMCadPedido.cdsPedidoImpOBS.Value;
end;

procedure TfRelPedido2.RLBand2BeforePrint(Sender: TObject;
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

  rlPreco.Visible    := vImpPreco;
  rlVlrTotal.Visible := vImpPreco;
  RLDBText8.Visible  := vImpPreco;
  vAux := 4;
  //if DM1.tParametrosQtdCasasDecimaisPrecoPed.AsInteger > 0 then
  //  vAux := DM1.tParametrosQtdCasasDecimaisPrecoPed.AsInteger;
  vTexto := '0.';
  for i := 1 to vAux do
    vTexto := vTexto + '0';
  if vImpPreco then
  begin
    rlPreco.Caption    := FormatFloat(vTexto,fDMCadPedido.cdsPedidoImp_ItensVLR_UNITARIO.AsFloat);
    rlVlrTotal.Caption := FormatFloat(vTexto,vVlrTotalAux);
  end;

  RLMemo2.Lines.Clear;
  if trim(fDMCadPedido.cdsPedidoImp_ItensNOME_MARCA.AsString) <> '' then
    RLMemo2.Lines.Text := fDMCadPedido.cdsPedidoImp_ItensNOMEPRODUTO.AsString + '/' + fDMCadPedido.cdsPedidoImp_ItensNOME_MARCA.AsString
  else
    RLMemo2.Lines.Text := fDMCadPedido.cdsPedidoImp_ItensNOMEPRODUTO.AsString;
end;

procedure TfRelPedido2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelPedido2.RLBand14BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := vImpPreco;
  if not PrintIt then
    exit;
  PrintIt := ((StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoImpVLR_ICMS_FCP.AsFloat)) > 0)
             or (StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoImpVLR_ICMS_UF_DEST.AsFloat)) > 0)
             or (StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedidoImpVLR_ICMS_UF_REMET.AsFloat)) > 0));
end;

procedure TfRelPedido2.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (fDMCadPedido.cdsPedidoImp_ItensOBS.AsString <> '')
end;

end.
