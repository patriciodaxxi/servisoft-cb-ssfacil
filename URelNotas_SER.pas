unit URelNotas_SER;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMConsNotas_SER, UDMRel;

type
  TfRelNotas_SER = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLSubDetail1: TRLSubDetail;
    RLGroup1: TRLGroup;
    RLBand3: TRLBand;
    RLLabel2: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel19: TRLLabel;
    RLDraw1: TRLDraw;
    RLBand2: TRLBand;
    RLLabel6: TRLLabel;
    rlVlrTotal_Ger: TRLLabel;
    rlVlrLiquido_Ger: TRLLabel;
    rlVlrISS_Ger: TRLLabel;
    rlBaseINSS_Ger: TRLLabel;
    rlVlrINSS_Ger: TRLLabel;
    RLDraw2: TRLDraw;
    RLBand4: TRLBand;
    rlVlrINSS: TRLLabel;
    rlBaseINSS: TRLLabel;
    rlPercISS: TRLLabel;
    rlVlrTotal: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText13: TRLDBText;
    RLDraw3: TRLDraw;
    RLBand5: TRLBand;
    RLLabel5: TRLLabel;
    RLMemo2: TRLMemo;
    RLLabel3: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel11: TRLLabel;
    rlVlrISS: TRLLabel;
    rlVlrLiquido: TRLLabel;
    RLLabel18: TRLLabel;
    RLDBText2: TRLDBText;
    rlVlrISSRet_Ger: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel20: TRLLabel;
    RLDBText3: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    fDMRel: TDMRel;
    vVlrTotal_GER, vVlrLiquido_Ger, vVlrISS_Ger, vVlrISSRet_GEr, vBaseINSS_Ger, vVlrINSS_Ger : Real;
  public
    { Public declarations }
    fDMConsNotas_SER: TDMConsNotas_SER;
    vOpcaoImp : String;
  end;

var
  fRelNotas_SER: TfRelNotas_SER;

implementation

uses rsDBUtils, DB, URelNotas_ES;

{$R *.dfm}

procedure TfRelNotas_SER.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelNotas_SER.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel1.Caption := 'Relatório de Notas de Serviço';
  if trim(vOpcaoImp) <> '' then
    RLLabel1.Caption := RLLabel1.Caption + ' - ' + vOpcaoImp;
end;

procedure TfRelNotas_SER.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMConsNotas_SER);
  RLGroup1.DataFields := 'FILIAL';
end;

procedure TfRelNotas_SER.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo2.Lines.Clear;
  PrintIt := (fDMConsNotas_SER.cdsConsultaSTATUS_RPS.AsString = '2'); 
  if not PrintIt then
    exit;

  RLLabel5.Caption   := 'Nota Cancelada:';
  RLMemo2.Lines.Text := fDMConsNotas_SER.cdsConsultaMOTIVO_CANCELAMENTO.AsString;
end;

procedure TfRelNotas_SER.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fDMConsNotas_SER.cdsConsultaISS_Retido.AsString = '1' then
    rlLabel18.Caption := 'Sim'
  else
    rlLabel18.Caption := '';

  rlVlrTotal.Caption   := '';
  rlVlrLiquido.Caption := '';
  rlVlrINSS.Caption    := '';
  rlVlrISS.Caption     := '';
  rlBaseINSS.Caption   := '';
  rlPercISS.Caption    := '';
  if (fDMConsNotas_SER.cdsConsultaSTATUS_RPS.AsString = '2') then
    exit;

  vVlrTotal_GER   := StrToFloat(FormatFloat('0.00',vVlrTotal_GER + fDMConsNotas_SER.cdsConsultaVLR_TOTAL.AsFloat));
  vVlrLiquido_Ger := StrToFloat(FormatFloat('0.00',vVlrLiquido_Ger + fDMConsNotas_SER.cdsConsultaVLR_LIQUIDO_NFSE.AsFloat));
  if fDMConsNotas_SER.cdsConsultaISS_RETIDO.AsString = '1' then
    vVlrISSRet_GEr := StrToFloat(FormatFloat('0.00',vVlrISSRet_GEr + fDMConsNotas_SER.cdsConsultaVLR_ISS_RETIDO.AsFloat))
  else
    vVlrISS_GEr := StrToFloat(FormatFloat('0.00',vVlrISS_GEr + fDMConsNotas_SER.cdsConsultaVLR_ISS.AsFloat));
  vBaseINSS_Ger := StrToFloat(FormatFloat('0.00',vBaseINSS_Ger + fDMConsNotas_SER.cdsConsultaBASE_INSS.AsFloat));
  vVlrINSS_Ger  := StrToFloat(FormatFloat('0.00',vVlrINSS_Ger + fDMConsNotas_SER.cdsConsultaVLR_INSS.AsFloat));

  rlVlrTotal.Caption   := FormatFloat('###,###,##0.00',fDMConsNotas_SER.cdsConsultaVLR_TOTAL.AsFloat);
  rlVlrLiquido.Caption := FormatFloat('###,###,##0.00',fDMConsNotas_SER.cdsConsultaVLR_LIQUIDO_NFSE.AsFloat);
  rlVlrINSS.Caption    := FormatFloat('###,###,##0.00',fDMConsNotas_SER.cdsConsultaVLR_INSS.AsFloat);
  rlBaseINSS.Caption   := FormatFloat('###,###,##0.00',fDMConsNotas_SER.cdsConsultaBASE_INSS.AsFloat);
  if fDMConsNotas_SER.cdsConsultaISS_RETIDO.AsString = '1' then
    rlVlrISS.Caption := FormatFloat('###,###,##0.00',fDMConsNotas_SER.cdsConsultaVLR_ISS_RETIDO.AsFloat)
  else
    rlVlrISS.Caption := FormatFloat('###,###,##0.00',fDMConsNotas_SER.cdsConsultaVLR_ISS.AsFloat);
  if StrToFloat(FormatFloat('0.00',fDMConsNotas_SER.cdsConsultaPERC_ALIQUOTA.AsFloat)) > 0 then
    rlPercISS.Caption  := FormatFloat('0.00',fDMConsNotas_SER.cdsConsultaPERC_ALIQUOTA.AsFloat);
end;

procedure TfRelNotas_SER.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rlVlrTotal_Ger.Caption   := FormatFloat('###,###,##0.00',vVlrTotal_GER);
  rlVlrLiquido_Ger.Caption := FormatFloat('###,###,##0.00',vVlrLiquido_Ger);
  rlVlrINSS_Ger.Caption    := FormatFloat('###,###,##0.00',vVlrINSS_Ger);
  rlBaseINSS_Ger.Caption   := FormatFloat('###,###,##0.00',vBaseINSS_Ger);
  rlVlrISS_Ger.Caption     := FormatFloat('###,###,##0.00',vVlrISS_Ger);
  rlVlrISSRet_Ger.Caption  := FormatFloat('###,###,##0.00',vVlrISSRet_GEr);

  vVlrTotal_GER   := 0;
  vVlrLiquido_Ger := 0;
  vVlrISS_Ger     := 0;
  vBaseINSS_Ger   := 0;
  vVlrINSS_Ger    := 0;
  vVlrISSRet_GEr  := 0;
end;

procedure TfRelNotas_SER.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
  vVlrTotal_GER   := 0;
  vVlrLiquido_Ger := 0;
  vVlrISS_Ger     := 0;
  vBaseINSS_Ger   := 0;
  vVlrINSS_Ger    := 0;
  vVlrISSRet_GEr  := 0;
end;

procedure TfRelNotas_SER.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

end.
