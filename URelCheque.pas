unit URelCheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadCheque, RLReport, UDMRel;

type
  TfRelCheque = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDraw1: TRLDraw;
    RLSubDetail1: TRLSubDetail;
    RLLabel3: TRLLabel;
    RLLabel9: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLLabel8: TRLLabel;
    RLLabel10: TRLLabel;
    RLBand3: TRLBand;
    RLDBText2: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBMemo1: TRLDBMemo;
    RLDraw2: TRLDraw;
    RLBand4: TRLBand;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLBand5: TRLBand;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText1: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel11: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    fDMRel: TDMRel;
    vVlrCompensado, vVlrPendente, vVlrCompensado_Geral, vVlrPendente_Geral : Real;
  public
    { Public declarations }
    fDMCadCheque: TDMCadCheque;
    vDataRef : TDateTime;
  end;

var
  fRelCheque: TfRelCheque;

implementation

uses DB, rsDBUtils;

{$R *.dfm}

procedure TfRelCheque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelCheque.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMCadCheque);
end;

procedure TfRelCheque.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
  vVlrCompensado       := 0;
  vVlrPendente         := 0;
  vVlrCompensado_Geral := 0;
  vVlrPendente_Geral   := 0;
end;

procedure TfRelCheque.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

procedure TfRelCheque.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel10.Caption := fDMCadCheque.cdsCheque_ConsultaAGENCIA_CONTA.AsString;
  if trim(fDMCadCheque.cdsCheque_ConsultaDIG_AGENCIA.AsString) <> '' then
    RLLabel10.Caption := RLLabel10.Caption + '-' + fDMCadCheque.cdsCheque_ConsultaDIG_AGENCIA.AsString;
  RLLabel10.Caption := RLLabel10.Caption + ' ' + fDMCadCheque.cdsCheque_ConsultaNUMCONTA.AsString;
  if trim(fDMCadCheque.cdsCheque_ConsultaDIG_CONTA.AsString) <> '' then
    RLLabel10.Caption := RLLabel10.Caption + '-' + fDMCadCheque.cdsCheque_ConsultaDIG_CONTA.AsString;
  RLLabel10.Caption := RLLabel10.Caption + '  ' + fDMCadCheque.cdsCheque_ConsultaNOME_CONTA_BANCO.AsString;
end;

procedure TfRelCheque.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fDMCadCheque.cdsCheque_ConsultaDTCOMPENSADO.AsDateTime > 10 then
  begin
    vVlrCompensado       := vVlrCompensado + fDMCadCheque.cdsCheque_ConsultaVALOR.AsFloat;
    vVlrCompensado_Geral := vVlrCompensado_Geral + fDMCadCheque.cdsCheque_ConsultaVALOR.AsFloat;
  end
  else
  begin
    vVlrPendente       := vVlrPendente + fDMCadCheque.cdsCheque_ConsultaVALOR.AsFloat;
    vVlrPendente_Geral := vVlrPendente_Geral + fDMCadCheque.cdsCheque_ConsultaVALOR.AsFloat;
  end;
end;

procedure TfRelCheque.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel17.Caption := FormatFloat('###,###,##0.00',vVlrCompensado);
  RLLabel15.Caption := FormatFloat('###,###,##0.00',vVlrPendente);
  vVlrCompensado    := 0;
  vVlrPendente      := 0;
end;

procedure TfRelCheque.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel23.Caption    := FormatFloat('###,###,##0.00',vVlrCompensado_Geral);
  RLLabel19.Caption    := FormatFloat('###,###,##0.00',vVlrPendente_Geral);
  vVlrCompensado_Geral := 0;
  vVlrPendente_Geral   := 0;
end;

end.
