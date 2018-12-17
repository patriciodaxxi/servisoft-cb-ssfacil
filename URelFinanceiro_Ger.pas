unit URelFinanceiro_Ger;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadFinanceiro, RLReport, UDMRel;

type
  TfRelFinanceiro_Ger = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLSubDetail1: TRLSubDetail;
    RLLabel2: TRLLabel;
    rllbOpcao: TRLLabel;
    RLSubDetail2: TRLSubDetail;
    RLBand2: TRLBand;
    RLPanel1: TRLPanel;
    RLLabel8: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLBand3: TRLBand;
    RLDraw1: TRLDraw;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLSubDetail3: TRLSubDetail;
    RLBand4: TRLBand;
    RLPanel2: TRLPanel;
    RLLabel7: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLBand5: TRLBand;
    RLDraw2: TRLDraw;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLSubDetail4: TRLSubDetail;
    RLBand6: TRLBand;
    RLPanel3: TRLPanel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLBand7: TRLBand;
    RLDraw3: TRLDraw;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLSubDetail5: TRLSubDetail;
    RLBand8: TRLBand;
    RLPanel4: TRLPanel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLBand9: TRLBand;
    RLDraw4: TRLDraw;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLBand10: TRLBand;
    RLPanel5: TRLPanel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand10BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    fDMRel: TDMRel;
    vVlrCompensado, vVlrPendente, vVlrCompensado_Geral, vVlrPendente_Geral : Real;
  public
    { Public declarations }
    fDMCadFinanceiro: TDMCadFinanceiro;
    vDataRef : TDateTime;
    vOpcaoImp : String;
    vImprimir_Tipo : String;
    vImprimir_SConta : Boolean;
    vTotal_Ent, vTotal_Sai, vSaldo : String;
  end;

var
  fRelFinanceiro_Ger: TfRelFinanceiro_Ger;

implementation

uses DB, rsDBUtils;

{$R *.dfm}

procedure TfRelFinanceiro_Ger.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelFinanceiro_Ger.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMCadFinanceiro);
end;

procedure TfRelFinanceiro_Ger.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelFinanceiro_Ger.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

procedure TfRelFinanceiro_Ger.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rllbOpcao.Caption := vOpcaoImp;
end;

procedure TfRelFinanceiro_Ger.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  //if (fDMCadFinanceiro.qParametrosCONTROLAR_FAT_SEPARADO.AsString = 'S') and (fDMCadFinanceiro.mFaturamentoCodigo.AsString = '10001A3') then
  if (fDMCadFinanceiro.qParametrosCONTROLAR_FAT_SEPARADO.AsString = 'S') and ((fDMCadFinanceiro.mFaturamentoCodigo.AsString = '10001B3') or (fDMCadFinanceiro.mFaturamentoCodigo.AsString = '10001A3')) then
    RLDBText9.Font.Style := [fsBold]
  else
  if copy(fDMCadFinanceiro.mFaturamentoCodigo.AsString,Length(fDMCadFinanceiro.mFaturamentoCodigo.AsString),1) = 'T' then
    RLDBText9.Font.Style := [fsBold]
  else
    RLDBText9.Font.Style := [];
  RLDBText10.Font.Style := RLDBText9.Font.Style;
end;

procedure TfRelFinanceiro_Ger.RLBand10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel20.Caption := vTotal_Ent;
  RLLabel24.Caption := vTotal_Sai;
  RLLabel26.Caption := vSaldo;
end;

end.
