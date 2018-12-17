unit URelFinanceiro_FPgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMCadFinanceiro, DB, UDMRel;

type
  TfRelFinanceiro_FPgto = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    rllbFilial: TRLLabel;
    rllbOpcao: TRLLabel;
    RLLabel6: TRLLabel;
    RLDraw1: TRLDraw;
    RLSubDetail1: TRLSubDetail;
    RLGroup1: TRLGroup;
    RLBand3: TRLBand;
    RLLabel9: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel13: TRLLabel;
    RLBand4: TRLBand;
    RLLabel12: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    rllbSaldo_Periodo: TRLLabel;
    rllbSaldo_Final: TRLLabel;
    RLBand5: TRLBand;
    RLDBText3: TRLDBText;
    RLDraw2: TRLDraw;
    RLDBMemo1: TRLDBMemo;
    RLDBText7: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    rllbSaldo: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4AfterPrint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    fDMRel: TDMRel;
  public
    { Public declarations }
    fDMCadFinanceiro: TDMCadFinanceiro;
    vOpcaoImp : String;
    vVlrSaldo : Real;

  end;

var
  fRelFinanceiro_FPgto: TfRelFinanceiro_FPgto;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfRelFinanceiro_FPgto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelFinanceiro_FPgto.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rllbFilial.Caption := fDMCadFinanceiro.cdsFilialNOME.AsString;
  rllbOpcao.Caption  := vOpcaoImp;
end;

procedure TfRelFinanceiro_FPgto.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMCadFinanceiro);
end;

procedure TfRelFinanceiro_FPgto.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
  vVlrSaldo  := 0;
end;

procedure TfRelFinanceiro_FPgto.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fDMCadFinanceiro.cdsFinanceiro_ConsultaTIPO_ES.AsString = 'E' then
    vVlrSaldo := StrToFloat(FormatFloat('0.00',vVlrSaldo + fDMCadFinanceiro.cdsFinanceiro_ConsultaVLR_MOVIMENTO.AsFloat))
  else
  if fDMCadFinanceiro.cdsFinanceiro_ConsultaTIPO_ES.AsString = 'S' then
    vVlrSaldo := StrToFloat(FormatFloat('0.00',vVlrSaldo - fDMCadFinanceiro.cdsFinanceiro_ConsultaVLR_MOVIMENTO.AsFloat));
  rllbSaldo.Caption := FormatFloat('###,###,##0.00',vVlrSaldo);
end;

procedure TfRelFinanceiro_FPgto.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vAux : Real;  
begin
  vAux := StrToFloat(FormatFloat('0.00',RLDBResult1.Value - RLDBResult2.Value));
  rllbSaldo_Periodo.Caption := FormatFloat('###,###,##0.00',vAux);

  rllbSaldo_Final.Caption   := FormatFloat('###,###,##0.00',vVlrSaldo);
end;

procedure TfRelFinanceiro_FPgto.RLBand4AfterPrint(Sender: TObject);
begin
  vVlrSaldo := 0;
end;

procedure TfRelFinanceiro_FPgto.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

end.
