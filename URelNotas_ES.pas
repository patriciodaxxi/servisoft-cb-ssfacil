unit URelNotas_ES;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMConsNotas_ES, UDMRel;

type
  TfRelNotas_ES = class(TForm)
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
    RLLabel3: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLDraw1: TRLDraw;
    RLBand2: TRLBand;
    RLLabel6: TRLLabel;
    rlVlrTotal_ES: TRLLabel;
    rlBaseIcms_ES: TRLLabel;
    rlVlrIcms_ES: TRLLabel;
    rlVlrIPI_ES: TRLLabel;
    rlVlrFrete_ES: TRLLabel;
    RLDraw2: TRLDraw;
    RLBand4: TRLBand;
    rlVlrFrete: TRLLabel;
    rlVlrIPI: TRLLabel;
    rlVlrIcms: TRLLabel;
    rlBaseIcms: TRLLabel;
    rlVlrTotal: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDraw3: TRLDraw;
    RLBand5: TRLBand;
    RLLabel5: TRLLabel;
    RLMemo2: TRLMemo;
    rlVlrDesconto: TRLLabel;
    RLLabel8: TRLLabel;
    rlVlrDesconto_ES: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    fDMRel: TDMRel;
    vVlrTotal_ES, vVlrDesconto_ES, vBaseIcms_ES, vVlrIcms_ES, vVlrIPI_ES, vVlrFrete_ES : Real;
    vCodCFOP : String;
  public
    { Public declarations }
    fDMConsNotas_ES: TDMConsNotas_ES;
    vOpcaoImp : String;
    vImp_Por_CFOP : Boolean;
  end;

var
  fRelNotas_ES: TfRelNotas_ES;

implementation

uses rsDBUtils, DB;

{$R *.dfm}

procedure TfRelNotas_ES.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelNotas_ES.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel1.Caption := 'Relatório de Notas';
  if trim(vOpcaoImp) <> '' then
    RLLabel1.Caption := RLLabel1.Caption + ' - ' + vOpcaoImp;
end;

procedure TfRelNotas_ES.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMConsNotas_ES);

  if vImp_Por_CFOP then
    RLGroup1.DataFields := 'FILIAL;CODCFOP'
  else
    RLGroup1.DataFields := 'FILIAL;TIPO_NOTA';
end;

procedure TfRelNotas_ES.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if vImp_Por_CFOP then
    RLLabel13.Caption := fDMConsNotas_ES.cdsConsultaCODCFOP.AsString
  else
  if fDMConsNotas_ES.cdsConsultaTIPO_NOTA.AsString = 'S' then
    RLLabel13.Caption := 'S A Í D A'
  else
    RLLabel13.Caption := 'E N T R A D A';
end;

procedure TfRelNotas_ES.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo2.Lines.Clear;
  PrintIt := ((fDMConsNotas_ES.cdsConsultaCANCELADA.AsString = 'S') or (fDMConsNotas_ES.cdsConsultaNFEDENEGADA.AsString = 'S'));
  if not PrintIt then
    exit;

  if fDMConsNotas_ES.cdsConsultaCANCELADA.AsString = 'S' then
  begin
    RLLabel5.Caption   := 'Nota Cancelada:';
    RLMemo2.Lines.Text := fDMConsNotas_ES.cdsConsultaMOTIVO_CANCELADA.AsString;
  end
  else
  if fDMConsNotas_ES.cdsConsultaNFEDENEGADA.AsString = 'S' then
  begin
    RLLabel5.Caption   := 'Nota Denegada:';
    RLMemo2.Lines.Text := fDMConsNotas_ES.cdsConsultaMOTIVO_DENEGADA.AsString;
  end;
end;

procedure TfRelNotas_ES.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  vCodCFOP := fDMConsNotas_ES.cdsConsultaCODCFOP.AsString;
  rlVlrTotal.Caption := '';
  rlVlrDesconto.Caption := '';
  rlBaseIcms.Caption := '';
  rlVlrFrete.Caption := '';
  rlVlrIcms.Caption  := '';
  rlVlrIPI.Caption   := '';
  if (fDMConsNotas_ES.cdsConsultaCANCELADA.AsString = 'S') or (fDMConsNotas_ES.cdsConsultaNFEDENEGADA.AsString = 'S') then
    exit;

  vVlrTotal_ES         := StrToFloat(FormatFloat('0.00',vVlrTotal_ES + fDMConsNotas_ES.cdsConsultaVLR_TOTAL.AsFloat));
  vVlrDesconto_ES      := StrToFloat(FormatFloat('0.00',vVlrDesconto_ES + fDMConsNotas_ES.cdsConsultaVLR_DESCONTO.AsFloat));
  vVlrIPI_ES           := StrToFloat(FormatFloat('0.00',vVlrIPI_ES + fDMConsNotas_ES.cdsConsultaVLR_IPI.AsFloat));
  vVlrFrete_ES         := StrToFloat(FormatFloat('0.00',vVlrFrete_ES + fDMConsNotas_ES.cdsConsultaVLR_FRETE.AsFloat));
  rlVlrTotal.Caption    := FormatFloat('###,###,##0.00',fDMConsNotas_ES.cdsConsultaVLR_TOTAL.AsFloat);
  rlVlrDesconto.Caption := FormatFloat('###,###,##0.00',fDMConsNotas_ES.cdsConsultaVLR_DESCONTO.AsFloat);
  rlVlrFrete.Caption := FormatFloat('###,###,##0.00',fDMConsNotas_ES.cdsConsultaVLR_FRETE.AsFloat);
  rlVlrIPI.Caption   := FormatFloat('###,###,##0.00',fDMConsNotas_ES.cdsConsultaVLR_IPI.AsFloat);
  if (StrToFloat(FormatFloat('0.00',fDMConsNotas_ES.cdsConsultaBASE_ICMSSIMPLES.AsFloat)) > 0) or (StrToFloat(FormatFloat('0.00',fDMConsNotas_ES.cdsConsultaVLR_ICMSSIMPLES.AsFloat)) > 0) then
  begin
    rlBaseIcms.Caption := FormatFloat('###,###,##0.00',fDMConsNotas_ES.cdsConsultaBASE_ICMSSIMPLES.AsFloat);
    rlVlrIcms.Caption  := FormatFloat('###,###,##0.00',fDMConsNotas_ES.cdsConsultaVLR_ICMSSIMPLES.AsFloat);
    vBaseIcms_ES       := StrToFloat(FormatFloat('0.00',vBaseIcms_ES + fDMConsNotas_ES.cdsConsultaBASE_ICMSSIMPLES.AsFloat));
    vVlrIcms_ES        := StrToFloat(FormatFloat('0.00',vVlrIcms_ES + fDMConsNotas_ES.cdsConsultaVLR_ICMSSIMPLES.AsFloat));
  end
  else
  begin
    rlBaseIcms.Caption := FormatFloat('###,###,##0.00',fDMConsNotas_ES.cdsConsultaBASE_ICMS.AsFloat);
    rlVlrIcms.Caption  := FormatFloat('###,###,##0.00',fDMConsNotas_ES.cdsConsultaVLR_ICMS.AsFloat);
    vBaseIcms_ES       := StrToFloat(FormatFloat('0.00',vBaseIcms_ES + fDMConsNotas_ES.cdsConsultaBASE_ICMS.AsFloat));
    vVlrIcms_ES        := StrToFloat(FormatFloat('0.00',vVlrIcms_ES + fDMConsNotas_ES.cdsConsultaVLR_ICMS.AsFloat));
  end;
end;

procedure TfRelNotas_ES.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel6.Caption := 'TOTAL ' + RLLabel13.Caption + ' ==>';

  rlVlrTotal_ES.Caption := FormatFloat('###,###,##0.00',vVlrTotal_ES);
  rlVlrDesconto_ES.Caption := FormatFloat('###,###,##0.00',vVlrDesconto_ES);
  rlVlrFrete_ES.Caption := FormatFloat('###,###,##0.00',vVlrFrete_ES);
  rlVlrIPI_ES.Caption   := FormatFloat('###,###,##0.00',vVlrIPI_ES);
  rlBaseIcms_ES.Caption := FormatFloat('###,###,##0.00',vBaseIcms_ES);
  rlVlrIcms_ES.Caption  := FormatFloat('###,###,##0.00',vVlrIcms_ES);

  vVlrTotal_ES    := 0;
  vVlrDesconto_ES := 0;
  vBaseIcms_ES    := 0;
  vVlrIcms_ES     := 0;
  vVlrIPI_ES      := 0;
  vVlrFrete_ES    := 0;
end;

procedure TfRelNotas_ES.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
  vVlrTotal_ES    := 0;
  vVlrDesconto_ES := 0;
  vBaseIcms_ES    := 0;
  vVlrIcms_ES     := 0;
  vVlrIPI_ES      := 0;
  vVlrFrete_ES    := 0;
end;

procedure TfRelNotas_ES.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

end.
