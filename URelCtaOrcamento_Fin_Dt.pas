unit URelCtaOrcamento_Fin_Dt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMConsFinanceiro, RLReport, UDMRel;

type
  TfRelCtaOrcamento_Fin_Dt = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel4: TRLLabel;
    RLDraw1: TRLDraw;
    RLSubDetail1: TRLSubDetail;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLLabel10: TRLLabel;
    RLBand3: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel2: TRLLabel;
    rllbOpcao: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLBand4: TRLBand;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLDBText1: TRLDBText;
    RLDraw8: TRLDraw;
    RLDraw2: TRLDraw;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDraw9: TRLDraw;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDraw10: TRLDraw;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDraw11: TRLDraw;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDraw12: TRLDraw;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    fDMRel: TDMRel;
    vVlrCompensado, vVlrPendente, vVlrCompensado_Geral, vVlrPendente_Geral : Real;
  public
    { Public declarations }
    fDMConsFinanceiro: TDMConsFinanceiro;
    vDataRef : TDateTime;
    vOpcaoImp : String;
    vImprimir_Tipo : String;
    vImprimir_SConta : Boolean;
  end;

var
  fRelCtaOrcamento_Fin_Dt: TfRelCtaOrcamento_Fin_Dt;

implementation

uses DB, rsDBUtils;

{$R *.dfm}

procedure TfRelCtaOrcamento_Fin_Dt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelCtaOrcamento_Fin_Dt.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMConsFinanceiro);
end;

procedure TfRelCtaOrcamento_Fin_Dt.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelCtaOrcamento_Fin_Dt.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

procedure TfRelCtaOrcamento_Fin_Dt.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fDMConsFinanceiro.mConta_Orc_DtTipo_ES.AsString = 'E' then
    RLLabel10.Caption := 'RECEITA'
  else
  if fDMConsFinanceiro.mConta_Orc_DtTipo_ES.AsString = 'S' then
    RLLabel10.Caption := 'DESPESA'
  else
  if fDMConsFinanceiro.mConta_Orc_DtTipo_ES.AsString = 'T' then
    RLLabel10.Caption := 'SALDO'
  else
    RLLabel10.Caption := 'Eficiência-P X R';
end;

procedure TfRelCtaOrcamento_Fin_Dt.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  Style : TFontStyles;
begin
  if (vImprimir_Tipo = 'S') and (fDMConsFinanceiro.mConta_Orc_DtTipo_Conta.AsString <> 'S') then
    PrintIt := False
  else
    PrintIt := True;
  if not PrintIt then
    exit;
  if not(vImprimir_SConta) and (trim(fDMConsFinanceiro.mConta_Orc_DtNome_Conta_Orc.AsString) = '') then
    PrintIt := False;
  if not PrintIt then
    exit;
  if fDMConsFinanceiro.mConta_Orc_DtTipo_Conta.AsString = 'S' then
    Style := [fsBold]
  else
    Style := [];
  RLDBText2.Font.Style := Style;
  RLDBText3.Font.Style := Style;
  RLDBText4.Font.Style := Style;
  RLDBText5.Font.Style := Style;
  RLDBText6.Font.Style := Style;

  if (fDMConsFinanceiro.mConta_Orc_DtID_Conta_Orc.AsInteger = 999991) or (fDMConsFinanceiro.mConta_Orc_DtID_Conta_Orc.AsInteger = 999996) or
     (fDMConsFinanceiro.mConta_Orc_DtID_Conta_Orc.AsInteger = 999997) or (fDMConsFinanceiro.mConta_Orc_DtID_Conta_Orc.AsInteger = 999998) or
     (fDMConsFinanceiro.mConta_Orc_DtID_Conta_Orc.AsInteger = 999999) then
    RLDBText2.Visible := False
  else
    RLDBText2.Visible := True;

end;

procedure TfRelCtaOrcamento_Fin_Dt.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rllbOpcao.Caption := vOpcaoImp;
end;

end.
