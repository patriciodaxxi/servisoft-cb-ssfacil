unit uRelVale;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, RLRichText, DB, DBTables,
  RLBarcode, jpeg, UDMCadVale, UDMRel;

type
  TfRelVale = class(TForm)
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
    RLSubDetail2: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText22: TRLDBText;
    RLDraw7: TRLDraw;
    RLDBText20: TRLDBText;
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
    RLDBText7: TRLDBText;
    rlEndereco: TRLLabel;
    RLDBText37: TRLDBText;
    RLBand11: TRLBand;
    RLLabel26: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel22: TRLLabel;
    RLDBText16: TRLDBText;
    RLDBText57: TRLDBText;
    RLLabel66: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLBand3: TRLBand;
    RLDBMemo2: TRLDBMemo;
    RLLabel9: TRLLabel;
    RLDraw3: TRLDraw;
    RLBand5: TRLBand;
    RLDraw4: TRLDraw;
    RLMemo1: TRLMemo;
    RLSubDetail3: TRLSubDetail;
    RLBand6: TRLBand;
    RLDBText23: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLBand4: TRLBand;
    RLLabel45: TRLLabel;
    RLDBText8: TRLDBText;
    RLBand7: TRLBand;
    RLLabel14: TRLLabel;
    RLDraw2: TRLDraw;
    RLDraw5: TRLDraw;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    RLLabel15: TRLLabel;
    RLDBText21: TRLDBText;
    RLDBText29: TRLDBText;
    RLLabel18: TRLLabel;
    RLDBText32: TRLDBText;
    RLLabel25: TRLLabel;
    RLDBText33: TRLDBText;
    RLDBText34: TRLDBText;
    RLLabel27: TRLLabel;
    RLLabel29: TRLLabel;
    RLDBText38: TRLDBText;
    RLBand9: TRLBand;
    RLDBText39: TRLDBText;
    RLLabel30: TRLLabel;
    RLDBText40: TRLDBText;
    RLLabel31: TRLLabel;
    RLDBText41: TRLDBText;
    RLLabel32: TRLLabel;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RLSubDetail1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand11BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    fDMRel: TDMRel;
  public
    { Public declarations }
    fDMCadVale: TDMCadVale;
    vImpPendente, vImpPreco, vImpImposto, vImpPeso: Boolean;
    vImpDesconto : Boolean;
  end;

var
  fRelVale: TfRelVale;

implementation

uses rsDBUtils;              

{$R *.dfm}

procedure TfRelVale.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadVale);
end;

procedure TfRelVale.RLBand1BeforePrint(Sender: TObject;
   var PrintIt: Boolean);
begin
  rlEndFilial.Caption := fDMCadVale.cdsValeImpENDERECO_FILIAL.AsString + ',' + fDMCadVale.cdsValeImpNUM_END_FILIAL.AsString;
  rlEndereco.Caption  := fDMCadVale.cdsValeImpENDERECO_CLIENTE.AsString + ', ' + fDMCadVale.cdsValeImpNUM_END_CLIENTE.AsString;

  RLImage1.Picture := nil;
  try
  if FileExists(fDMCadVale.cdsFilialENDLOGO.AsString) then
    RLImage1.Picture.LoadFromFile(fDMCadVale.cdsFilialENDLOGO.AsString)
  else
  except
  end;
end;

procedure TfRelVale.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelVale.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelVale.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

procedure TfRelVale.RLSubDetail1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel5.Visible   := (fDMCadVale.qParametrosEMPRESA_SUCATA.AsString = 'S');
  RLDBText18.Visible := (fDMCadVale.qParametrosEMPRESA_SUCATA.AsString = 'S');
  RLLabel9.Visible   := (fDMCadVale.qParametrosEMPRESA_SUCATA.AsString = 'S');
  RLDBMemo2.Visible  := (fDMCadVale.qParametrosEMPRESA_SUCATA.AsString = 'S');
end;

procedure TfRelVale.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo1.Lines.Clear;
  PrintIt := (not(fDMCadVale.cdsValeImp_Ped.IsEmpty) or (trim(fDMCadVale.cdsValeImp_ItensNUMERO_OC.AsString) <> ''));
  if PrintIt then
    RLMemo1.Lines.Text := 'Nº Pedido OC: ' + fDMCadVale.cdsValeImp_PedPEDIDO_CLIENTE.AsString + ' ' + fDMCadVale.cdsValeImp_ItensNUMERO_OC.AsString;
end;

procedure TfRelVale.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  fDMCadVale.cdsValeImp_Ped.Close;
  fDMCadVale.sdsValeImp_Ped.ParamByName('ID').AsInteger   := fDMCadVale.cdsValeImp_ItensID.AsInteger;
  fDMCadVale.sdsValeImp_Ped.ParamByName('ITEM').AsInteger := fDMCadVale.cdsValeImp_ItensITEM.AsInteger;
  fDMCadVale.cdsValeImp_Ped.Open;
  RLDraw3.Visible := fDMCadVale.cdsValeImp_Ped.IsEmpty;
  PrintIt := ((trim(fDMCadVale.cdsValeImp_ItensCOMPLEMENTO_PROD.AsString) <> '') or (not fDMCadVale.cdsValeImp_Ped.IsEmpty));
  RLLabel9.Visible := (trim(fDMCadVale.cdsValeImp_ItensCOMPLEMENTO_PROD.AsString) <> '');
end;

procedure TfRelVale.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLDBText34.Visible := ((vImpDesconto) and (fDMCadVale.qParametros_FinUSA_DESCONTO_VALE.AsString = 'S'));
end;

procedure TfRelVale.RLBand11BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel27.Visible := ((vImpDesconto) and (fDMCadVale.qParametros_FinUSA_DESCONTO_VALE.AsString = 'S'));
end;

procedure TfRelVale.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel18.Visible  := vImpDesconto;
  RLDBText32.Visible := vImpDesconto;
  RLLabel25.Visible  := (vImpDesconto) and (fDMCadVale.qParametros_FinUSA_DESCONTO_VALE.AsString = 'S');
  RLDBText33.Visible := (vImpDesconto) and (fDMCadVale.qParametros_FinUSA_DESCONTO_VALE.AsString = 'S');
  RLLabel29.Visible  := (fDMCadVale.qParametros_NFeIMPRIMIR_TOTAL_VALE.AsString = 'S');
  RLDBText38.Visible := (fDMCadVale.qParametros_NFeIMPRIMIR_TOTAL_VALE.AsString = 'S');
end;

procedure TfRelVale.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := not fDmCadVale.cdsValeImp_Servico.IsEmpty;
end;

procedure TfRelVale.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := (fDMCadVale.qParametros_NFeIMPRIMIR_TOTAL_VALE.AsString = 'S');
  if PrintIt then
  begin
    RLLabel31.Visible  := (vImpDesconto) and (fDMCadVale.qParametros_FinUSA_DESCONTO_VALE.AsString = 'S');
    RLDBText41.Visible := (vImpDesconto) and (fDMCadVale.qParametros_FinUSA_DESCONTO_VALE.AsString = 'S');
  end;
end;

end.
