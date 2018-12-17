unit uEtiquetaR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, uDmEtiqueta, rsDBUtils,
  RLBarcode, jpeg;

type
  TfEtiquetaR = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLDraw1: TRLDraw;
    RLImage1: TRLImage;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBBarcode1: TRLDBBarcode;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    vCabecalho: Boolean;
    fDmEtiqueta: TDmEtiqueta;
  end;

var
  fEtiquetaR: TfEtiquetaR;

implementation

{$R *.dfm}

procedure TfEtiquetaR.RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  RLLabel6.Caption := fDmEtiqueta.cdsFilialENDERECO.AsString + ', ' + fDmEtiqueta.cdsFilialNUM_END.AsString;
  RLLabel7.Caption := fDmEtiqueta.cdsFilialCIDADE.AsString + ' - ' + fDmEtiqueta.cdsFilialUF.AsString;
  case fDmEtiqueta.mEtiquetaFD_TP_SP.AsInteger of
    1: RLLabel11.Caption := 'FUNDO';
    2: RLLabel11.Caption := 'TAMPA';
    3: RLLabel11.Caption := 'SUPORTE';
    4: RLLabel11.Caption := 'CARTUCHO';
    5: RLLabel11.Caption := 'SACOLA';
    6: RLLabel11.Caption := 'ACOPLADA';
  end;
  RLLabel1.Caption := fDmEtiqueta.mEtiquetaQUANTIDADE.AsString + ' UNIDADES';
  RLLabel2.Caption := 'Fone: (' + fDmEtiqueta.cdsFilialDDD1.AsString + ') ' +
                      fDmEtiqueta.cdsFilialFONE.AsString;

  RLLabel2.Visible := vCabecalho;
  RLLabel6.Visible := vCabecalho;
  RLLabel7.Visible := vCabecalho;
  RLImage1.Visible := vCabecalho;
  RLDBText6.Visible := vCabecalho;
  RLDBText7.Visible := vCabecalho;
end;

procedure TfEtiquetaR.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmEtiqueta);
end;

procedure TfEtiquetaR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
