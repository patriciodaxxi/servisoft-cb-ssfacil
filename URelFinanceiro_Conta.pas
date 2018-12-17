unit URelFinanceiro_Conta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMCadFinanceiro, DB, UDMRel;

type
  TfRelFinanceiro_Conta = class(TForm)
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
    RLLabel10: TRLLabel;
    rllbSaldo_Inicial: TRLLabel;
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
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5AfterPrint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    fDMRel: TDMRel;
    procedure prc_Montar_SaldoAnt;
  public
    { Public declarations }
    fDMCadFinanceiro: TDMCadFinanceiro;
    vOpcaoImp : String;
    vVlrSaldo : Real;
    vID_Conta : Integer;
    vSaldo_Ini : Real;

  end;

var
  fRelFinanceiro_Conta: TfRelFinanceiro_Conta;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfRelFinanceiro_Conta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelFinanceiro_Conta.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rllbFilial.Caption := fDMCadFinanceiro.cdsFilialNOME.AsString;
  rllbOpcao.Caption  := vOpcaoImp;
end;

procedure TfRelFinanceiro_Conta.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMCadFinanceiro);
end;

procedure TfRelFinanceiro_Conta.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
  vVlrSaldo  := 0;
  vID_Conta  := 0;
  vSaldo_Ini := 0;
end;

procedure TfRelFinanceiro_Conta.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  //prc_Montar_SaldoAnt;
  //rllbSaldo_Inicial.Caption := FormatFloat('###,###,##0.00',vVlrSaldo);
  rllbSaldo_Inicial.Caption := FormatFloat('###,###,##0.00',vSaldo_Ini);
  vID_Conta := fDMCadFinanceiro.cdsFinanceiro_ConsultaID_CONTA.AsInteger;
end;

procedure TfRelFinanceiro_Conta.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  prc_Montar_SaldoAnt;
  if fDMCadFinanceiro.cdsFinanceiro_ConsultaTIPO_ES.AsString = 'E' then
    vVlrSaldo := StrToFloat(FormatFloat('0.00',vVlrSaldo + fDMCadFinanceiro.cdsFinanceiro_ConsultaVLR_MOVIMENTO.AsFloat))
  else
  if fDMCadFinanceiro.cdsFinanceiro_ConsultaTIPO_ES.AsString = 'S' then
    vVlrSaldo := StrToFloat(FormatFloat('0.00',vVlrSaldo - fDMCadFinanceiro.cdsFinanceiro_ConsultaVLR_MOVIMENTO.AsFloat));
  rllbSaldo.Caption := FormatFloat('###,###,##0.00',vVlrSaldo);
end;

procedure TfRelFinanceiro_Conta.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vAux : Real;  
begin
  vAux := StrToFloat(FormatFloat('0.00',RLDBResult1.Value - RLDBResult2.Value));
  rllbSaldo_Periodo.Caption := FormatFloat('###,###,##0.00',vAux);

  rllbSaldo_Final.Caption   := FormatFloat('###,###,##0.00',vVlrSaldo);
end;

procedure TfRelFinanceiro_Conta.prc_Montar_SaldoAnt;
var
  i : Integer;
  vVlrEnt, vVlrSai, vAux : Real;
begin
  if fDMCadFinanceiro.cdsFinanceiro_ConsultaID_CONTA.AsInteger <> vID_Conta then
  begin
    vVlrSaldo  := 0;
    vSaldo_Ini := 0;
    if fDMCadFinanceiro.qSaldoMov.Active then
    begin
      if fDMCadFinanceiro.qSaldoMov.Locate('ID_CONTA',fDMCadFinanceiro.cdsFinanceiro_ConsultaID_CONTA.AsInteger,[loCaseInsensitive]) then
      begin
        //vVlrSaldo  := fDMCadFinanceiro.qSaldoMovVLR_SALDO.AsFloat;
        vVlrSaldo  := StrToFloat(FormatFloat('0.00',vVlrSaldo + fDMCadFinanceiro.qSaldoMovVLR_ENTRADA.AsFloat));
        vVlrSaldo  := StrToFloat(FormatFloat('0.00',vVlrSaldo - fDMCadFinanceiro.qSaldoMovVLR_SAIDA.AsFloat));
        vSaldo_Ini := StrToFloat(FormatFloat('0.00',vVlrSaldo));
      end;
    end;
  end;
end;

procedure TfRelFinanceiro_Conta.RLBand5AfterPrint(Sender: TObject);
begin
  vID_Conta  := fDMCadFinanceiro.cdsFinanceiro_ConsultaID_CONTA.AsInteger;
  //vSaldo_Ini := vVlrSaldo;
end;

procedure TfRelFinanceiro_Conta.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

end.
