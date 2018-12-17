unit uComandaR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, uDmCupomFiscal,
  RLBarcode, jpeg;

type
  TfComandaR = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLSubDetail2: TRLSubDetail;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
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
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLBand2: TRLBand;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLImage1: TRLImage;
    RLBand3: TRLBand;
    RLBarcode2: TRLBarcode;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    lbDtEmissao: TRLLabel;
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    vCod: String;
    vData: TDateTime;
  public
    { Public declarations }
    fDmCupomFiscal: TDmCupomFiscal;
  end;

var
  fComandaR: TfComandaR;

implementation

{$R *.dfm}

procedure TfComandaR.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  i: Word;
begin
  vCod := fDmCupomFiscal.cdsComandaRelID.AsString;
  for i := 1 to 11 - Length(vCod) do
    vCod := '0' + vCod;
  vCod  := '2' + vCod;
  vData := fDmCupomFiscal.cdsComandaRelDTEMISSAO.AsDateTime;
end;

procedure TfComandaR.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLBarcode2.Caption  := vCod;
  lbDtEmissao.Caption := FormatDateTime('DD/MM/YYYY',vData);
end;

end.
