unit uRelPedido_Tam2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB, DBTables, RLBarcode, jpeg, UDMCadPedido, UDMRel;

type
  TfRelPedido_Tam2 = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
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
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLSubDetail2: TRLSubDetail;
    RLBand2: TRLBand;
    RLLabel30: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel37: TRLLabel;
    RLDBText22: TRLDBText;
    RLDBText29: TRLDBText;
    RLBand7: TRLBand;
    RLLabel46: TRLLabel;
    RLMemo1: TRLMemo;
    RLBand4: TRLBand;
    RLLabel45: TRLLabel;
    RLDBText34: TRLDBText;
    RLDBText20: TRLDBText;
    rlPreco: TRLLabel;
    rlVlrTotal: TRLLabel;
    rlEndereco: TRLLabel;
    RLDBText31: TRLDBText;
    RLDBText37: TRLDBText;
    RLLabel28: TRLLabel;
    RLDBText49: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText9: TRLDBText;
    RLBand3: TRLBand;
    RLMemo2: TRLMemo;
    RLSubDetail3: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    RLLabel14: TRLLabel;
    RLLabel16: TRLLabel;
    RLDraw1: TRLDraw;
    RLDBText16: TRLDBText;
    RLDraw4: TRLDraw;
    RLDBText18: TRLDBText;
    RLSubDetail4: TRLSubDetail;
    RLBand6: TRLBand;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel33: TRLLabel;
    RLBand8: TRLBand;
    RLDBText19: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLBand9: TRLBand;
    RLLabel36: TRLLabel;
    RLMemo3: TRLMemo;
    RLLabel38: TRLLabel;
    RLDBText26: TRLDBText;
    RLLabel39: TRLLabel;
    RLDBText27: TRLDBText;
    rlFone_Filial: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel18: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel25: TRLLabel;
    RLDBText5: TRLDBText;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLDetailGrid1AfterPrint(Sender: TObject);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    fDMRel: TDMRel;
  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;
    vImpPendente, vImpPreco : Boolean;
    vTipo_Reg : String; //P=Pedido O=Orçamento

  end;

var
  fRelPedido_Tam2: TfRelPedido_Tam2;

implementation

uses rsDBUtils;


{$R *.dfm}

procedure TfRelPedido_Tam2.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);

  RLLabel8.Visible  := (Copy(vTipo_Reg,1,1) = 'P');
  RLDBText3.Visible := (Copy(vTipo_Reg,1,1) = 'P');

  if Copy(vTipo_Reg,1,1) = 'P' then
  begin
    RLLabel4.Caption     := 'Pedido Interno:';
    RLDBText20.DataField := 'NUM_PEDIDO';
  end
  else
  begin
    RLLabel4.Caption := 'Nº Orçamento:';
    RLDBText20.DataField := 'NUM_ORCAMENTO';
  end;

  {if fPedido.RadioGroup3.ItemIndex = 0 then
    RLDBText22.DataField  := 'QtdPares'
  else
    RLDBText22.DataField  := 'QtdParesRest';}
end;

procedure TfRelPedido_Tam2.RLBand1BeforePrint(Sender: TObject;
   var PrintIt: Boolean);
begin
  rlEndereco.Caption    := fDMCadPedido.cdsPedidoImpEND_CLIENTE.AsString + ', ' + fDMCadPedido.cdsPedidoImpNUM_END_CLIENTE.AsString;
  rlFone_Filial.Caption := '(' + fDMCadPedido.cdsPedidoImpDDD_FILIAL.AsString + ') ' + fDMCadPedido.cdsPedidoImpFONE_FILIAL.AsString;
  RLLabel22.Caption     := '(' + fDMCadPedido.cdsPedidoImpDDD_CLIENTE.AsString + ') ' + fDMCadPedido.cdsPedidoImpFONE_CLIENTE.AsString;

  RLLabel35.Caption := 'Pr.Unitário';
  RLLabel34.Caption := 'Pr.Total';
  RLLabel35.Visible := vImpPreco;
  RLLabel34.Visible := vImpPreco;
  RLLabel31.Visible := vImpPreco;
  RLLabel33.Visible := vImpPreco;
end;

procedure TfRelPedido_Tam2.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel45.Visible  := (vImpPreco);
  RLDBText34.Visible := (vImpPreco);
end;

procedure TfRelPedido_Tam2.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo1.Lines.Clear;
  RLMemo1.Lines.Text := fDMCadPedido.cdsPedidoImpOBS.Value;
end;

procedure TfRelPedido_Tam2.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vQtdPed : Real;
  vTexto : String;
  vAux, I : Integer;
  vVlrTotalAux : Real;
begin
  //if vImpPendente then
  //  vQtdPed := fDMCadPedido.cdsPedidoImp_ItensQTD_RESTANTE.AsFloat
  //else
    vQtdPed := fDMCadPedido.mItensImpQtd.AsFloat;

  vVlrTotalAux := StrToFloat(FormatFloat('0.00',vQtdPed * fDMCadPedido.mItensImpVlr_Unitario.AsFloat));

  rlPreco.Visible    := vImpPreco;
  rlVlrTotal.Visible := vImpPreco;
  vAux := 4;
  //if DM1.tParametrosQtdCasasDecimaisPrecoPed.AsInteger > 0 then
  //  vAux := DM1.tParametrosQtdCasasDecimaisPrecoPed.AsInteger;
  vTexto := '0.';
  for i := 1 to vAux do
    vTexto := vTexto + '0';
  if vImpPreco then
  begin
    rlPreco.Caption    := FormatFloat(vTexto,fDMCadPedido.mItensImpVlr_Unitario.AsFloat);
    rlVlrTotal.Caption := FormatFloat(vTexto,vVlrTotalAux);
  end;

  RLMemo2.Lines.Clear;
  RLMemo2.Lines.Text := fDMCadPedido.mItensImpNome_Produto.AsString;
end;

procedure TfRelPedido_Tam2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelPedido_Tam2.RLDetailGrid1AfterPrint(Sender: TObject);
begin
  RLLabel14.Visible := False;
  RLLabel16.Visible := False;
end;

procedure TfRelPedido_Tam2.RLBand8BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (Copy(vTipo_Reg,2,1) = 'S');
  if not PrintIt then
    exit;
  RLDBText24.Visible := vImpPreco;
  RLDBText25.Visible := vImpPreco;
end;

procedure TfRelPedido_Tam2.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo3.Lines.Clear;
  PrintIt := (Copy(vTipo_Reg,2,1) = 'S');
  if not PrintIt then
    Exit;
  PrintIt := (trim(fDMCadPedido.mItensImpOBS.Value) <> '');
  if not PrintIt then
    Exit;
  RLMemo3.Lines.Text := fDMCadPedido.mItensImpOBS.Value;
end;

procedure TfRelPedido_Tam2.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (Copy(vTipo_Reg,2,1) = 'S');
  if not PrintIt then
    exit;
  PrintIt := not(fDMCadPedido.mItensImp_Mat.IsEmpty);
end;

procedure TfRelPedido_Tam2.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelPedido_Tam2.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

end.
