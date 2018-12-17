unit uRelPagarReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, UDMCadDuplicata;

type
  TfRelPagarReceber = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLBand3: TRLBand;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLReport2: TRLReport;
    RLSubDetail2: TRLSubDetail;
    RLGroup1: TRLGroup;
    RLBand4: TRLBand;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLBand5: TRLBand;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLBand6: TRLBand;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLBand7: TRLBand;
    RLDBText21: TRLDBText;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    RLTitulo: TRLLabel;
    RLPerEmissao: TRLLabel;
    RLPerVcto: TRLLabel;
    RLSomaE: TRLLabel;
    RLSaldo: TRLLabel;
    RLSomaS: TRLLabel;
    RLLabel9: TRLLabel;
    RLBand8: TRLBand;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLTotalReceber: TRLLabel;
    RLTotalSaldo: TRLLabel;
    RLTotalPagar: TRLLabel;
    RLLabel30: TRLLabel;
    procedure FormCreate(Sender: TObject);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    vSomaE, vSomaS: Currency;
    vTotalE, vTotalS: Currency;
  public
    { Public declarations }
    fDMCadDuplicata: TDMCadDuplicata;
  end;

var
  fRelPagarReceber: TfRelPagarReceber;

implementation

uses UCadDuplicata, rsDBUtils, DB;

{$R *.dfm}

procedure TfRelPagarReceber.FormCreate(Sender: TObject);
begin
  vSomaE  := 0;
  vSomaS  := 0;
  vTotalE := 0;
  vTotalS := 0;
//  oDBUtils.SetDataSourceProperties(Self, fDMCadDuplicata);
end;

procedure TfRelPagarReceber.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fDMCadDuplicata.cdsDuplicata_ConsultaTIPO_ES.AsString = 'E' then
    vSomaE := vSomaE + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsCurrency
  else
    vSomaS := vSomaS + fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsCurrency;
end;

procedure TfRelPagarReceber.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLSomaS.Caption := FormatCurr('0.00',vSomaS);
  RLSomaE.Caption := FormatCurr('0.00',vSomaE);
  RLSaldo.Caption := FormatCurr('0.00',vSomaE - vSomaS);
  vTotalE := vTotalE + vSomaE;
  vTotalS := vTotalS + vSomaS;
  vSomaE := 0;
  vSomaS := 0;
end;

procedure TfRelPagarReceber.RLBand8BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLTotalPagar.Caption   := FormatCurr('0.00',vTotalS);
  RLTotalReceber.Caption := FormatCurr('0.00',vTotalE);
  RLTotalSaldo.Caption   := FormatCurr('0.00',vTotalE - vTotalS);
end;

end.
