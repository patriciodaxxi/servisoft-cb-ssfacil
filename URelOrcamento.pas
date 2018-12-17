unit uRelOrcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLRichText, DB, DBTables, RLBarcode, jpeg, UDMCadPedido, UDMRel;

type
  TfRelOrcamento = class(TForm)
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
    RLDBText26: TRLDBText;
    RLDBText29: TRLDBText;
    RLDraw7: TRLDraw;
    RLBand4: TRLBand;
    RLDraw5: TRLDraw;
    RLLabel40: TRLLabel;
    RLDBText32: TRLDBText;
    RLDBText20: TRLDBText;
    RLLabel18: TRLLabel;
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
    RLDBText38: TRLDBText;
    RLDBText39: TRLDBText;
    RLDraw12: TRLDraw;
    RLLabel9: TRLLabel;
    RLDBText28: TRLDBText;
    RLDBText49: TRLDBText;
    RLDraw4: TRLDraw;
    RLLabel5: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText9: TRLDBText;
    RLBand7: TRLBand;
    RLDraw3: TRLDraw;
    RLLabel46: TRLLabel;
    RLMemo1: TRLMemo;
    RLDBText16: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText25: TRLDBText;
    RLBand3: TRLBand;
    RLLabel26: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel27: TRLLabel;
    RLDBText33: TRLDBText;
    RLLabel29: TRLLabel;
    RLDBText40: TRLDBText;
    RLSubDetail3: TRLSubDetail;
    RLBand6: TRLBand;
    RLDraw6: TRLDraw;
    RLLabel45: TRLLabel;
    RLLabel22: TRLLabel;
    RLDBText27: TRLDBText;
    RLLabel15: TRLLabel;
    RLBand8: TRLBand;
    RLLabel31: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel47: TRLLabel;
    RLBand9: TRLBand;
    RLDBText41: TRLDBText;
    RLMemo3: TRLMemo;
    RLDBText42: TRLDBText;
    RLDBText43: TRLDBText;
    RLDBText44: TRLDBText;
    RLBand10: TRLBand;
    RLLabel38: TRLLabel;
    RLDBText45: TRLDBText;
    RLLabel44: TRLLabel;
    RLLabel48: TRLLabel;
    RLBand11: TRLBand;
    RLLabel51: TRLLabel;
    RLDraw9: TRLDraw;
    RLLabel52: TRLLabel;
    RLDraw13: TRLDraw;
    RLLabel133: TRLLabel;
    RLDraw14: TRLDraw;
    RLImage2: TRLImage;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand10BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    fDMRel: TDMRel;
  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;

  end;

var
  fRelOrcamento: TfRelOrcamento;

implementation

uses rsDBUtils;


{$R *.dfm}

procedure TfRelOrcamento.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
end;

procedure TfRelOrcamento.RLBand1BeforePrint(Sender: TObject;
   var PrintIt: Boolean);
begin
  rlEndFilial.Caption  := fDMCadPedido.cdsPedidoImpEND_FILIAL.AsString + ',' + fDMCadPedido.cdsPedidoImpNUM_END_FILIAL.AsString;
  rlEndereco.Caption   := fDMCadPedido.cdsPedidoImpEND_CLIENTE.AsString + ', ' + fDMCadPedido.cdsPedidoImpNUM_END_CLIENTE.AsString;

  if trim(fDMCadPedido.cdsFilialENDLOGO.AsString) <> '' then
  begin
    try
      RLImage1.Picture.LoadFromFile(fDMCadPedido.cdsFilialENDLOGO.AsString)
    except
       RLImage1.Picture := nil;
    end;
  end;

  if fDMCadPedido.qParametros_PedIMP_IPI_DEPOIS_VLR.AsString = 'S' then
  begin
    RLLabel14.Caption := 'Pr.Unitário';
    RLLabel35.Caption := 'Vlr.IPI';
    RLDBText25.DataField := 'VLR_UNITARIO';
    RLDBText25.Font.Style := [fsBold];
    RLDBText16.DataField := 'VLR_IPI';
  end
  else
  begin
    RLLabel14.Caption := 'Vlr.IPI';
    RLLabel35.Caption := 'Pr.Unitário';
    RLDBText16.DataField := 'VLR_UNITARIO';
    RLDBText25.DataField := 'VLR_IPI';
  end;
end;

procedure TfRelOrcamento.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo1.Lines.Clear;
  if trim(fDMCadPedido.qParametros_PedOBS_PEDIDO.AsString) <> '' then
    RLMemo1.Lines.Text := fDMCadPedido.qParametros_PedOBS_PEDIDO.AsString + #13 + #13;
  RLMemo1.Lines.Text := RLMemo1.Lines.Text + fDMCadPedido.cdsPedidoImpOBS.Value;
end;

procedure TfRelOrcamento.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vQtdPed : Real;
  vTexto : String;
  vAux, I : Integer;
  vVlrTotalAux : Real;
begin
  vQtdPed := fDMCadPedido.cdsPedidoImp_ItensQTD.AsFloat;
  vVlrTotalAux := StrToFloat(FormatFloat('0.00',vQtdPed * fDMCadPedido.cdsPedidoImp_ItensVLR_UNITARIO.AsFloat));

  vAux := 4;
  vTexto := '0.';
  for i := 1 to vAux do
    vTexto := vTexto + '0';
end;

procedure TfRelOrcamento.RLBand5BeforePrint(Sender: TObject;
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

procedure TfRelOrcamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelOrcamento.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelOrcamento.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

procedure TfRelOrcamento.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := not(fDMCadPedido.cdsPedidoImp_Serv.IsEmpty);
  if not PrintIt then
    exit;

  RLMemo3.Lines.Text := fDMCadPedido.cdsPedidoImp_ServNOME_SERVICO_INT.AsString + '  ' + fDMCadPedido.cdsPedidoImp_ServCOMPLEMENTO_SERVICO.AsString;
end;

procedure TfRelOrcamento.RLBand8BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := not(fDMCadPedido.cdsPedidoImp_Serv.IsEmpty);
end;

procedure TfRelOrcamento.RLBand10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := not(fDMCadPedido.cdsPedidoImp_Serv.IsEmpty);
end;

procedure TfRelOrcamento.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel15.Visible := not(fDMCadPedido.cdsPedidoImp_Itens.IsEmpty);
  RLLabel48.Visible := not(fDMCadPedido.cdsPedidoImp_Itens.IsEmpty);
  RLLabel48.Caption := FormatFloat('###,###,##0.00',fDMCadPedido.cdsPedidoImpVLR_ICMSSUBST.AsFloat);
  RLLabel44.Caption := FormatFloat('###,###,##0.00',fDMCadPedido.cdsPedidoImpVLR_TOTAL.AsFloat);

  if trim(fDMCadPedido.qParametros_GeralEND_ASSINATURA.AsString) <> '' then
  begin
    try
      RLImage2.Picture.LoadFromFile(fDMCadPedido.qParametros_GeralEND_ASSINATURA.AsString)
    except
       RLImage2.Picture := nil;
    end;
  end;

end;

procedure TfRelOrcamento.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := not(fDMCadPedido.cdsPedidoImp_Itens.IsEmpty);
end;

end.
