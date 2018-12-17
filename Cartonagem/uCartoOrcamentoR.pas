unit uCartoOrcamentoR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, jpeg, uDmCartoOrcamento,
  rsDBUtils;

type
  TfCartoOrcamentoR = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLImage1: TRLImage;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel2: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText10: TRLDBText;
    RLSubDetail2: TRLSubDetail;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLLabel12: TRLLabel;
    RLDBText11: TRLDBText;
    RLSubDetail3: TRLSubDetail;
    RLBand5: TRLBand;
    RLLabel13: TRLLabel;
    RLBand6: TRLBand;
    RLDBText12: TRLDBText;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLBand7: TRLBand;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLBand8: TRLBand;
    RLBand9: TRLBand;
    RLLabel22: TRLLabel;
    RLDBText21: TRLDBText;
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmCartoOrcamento: TDmCartoOrcamento;
  end;

var
  fCartoOrcamentoR: TfCartoOrcamentoR;

implementation

{$R *.dfm}

procedure TfCartoOrcamentoR.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel6.Caption := fDmCartoOrcamento.cdsFilialENDERECO.AsString + ', ' + fDmCartoOrcamento.cdsFilialNUM_END.AsString;
  RLLabel7.Caption := fDmCartoOrcamento.cdsFilialCIDADE.AsString + ' - ' + fDmCartoOrcamento.cdsFilialUF.AsString;
  RLLabel2.Caption := 'Fone: (' + fDmCartoOrcamento.cdsFilialDDD1.AsString + ') ' + fDmCartoOrcamento.cdsFilialFONE.AsString;
end;

procedure TfCartoOrcamentoR.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfCartoOrcamentoR.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmCartoOrcamento);
  oDBUtils.OpenTables(True,Self);
end;

end.
