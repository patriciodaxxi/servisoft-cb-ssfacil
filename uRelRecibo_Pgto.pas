unit uRelRecibo_Pgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, UDMCadDuplicata, jpeg,
  DB, ValorPor, UDMRel;

type
  TfRelRecibo_Pgto = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    RLImage1: TRLImage;
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
    RLDraw3: TRLDraw;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    ValorPorExtenso1: TValorPorExtenso;
    RLDBText7: TRLDBText;
    RLLabel25: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDraw10: TRLDraw;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLDBText18: TRLDBText;
    RLLabel33: TRLLabel;
    RLLabel36: TRLLabel;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLAngleLabel2: TRLAngleLabel;
    RLMemo1: TRLMemo;
    RLDraw12: TRLDraw;
    RLLabel40: TRLLabel;
    RLDBText24: TRLDBText;
    RLDraw13: TRLDraw;
    RLDraw14: TRLDraw;
    RLImage2: TRLImage;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel24: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel14: TRLLabel;
    RLLabel17: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText5: TRLDBText;
    RLDraw2: TRLDraw;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    fDMRel: TDMRel;
  public
    { Public declarations }
    fDMCadDuplicata: TDMCadDuplicata;
  end;

var
  fRelRecibo_Pgto: TfRelRecibo_Pgto;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfRelRecibo_Pgto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelRecibo_Pgto.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadDuplicata);
end;

procedure TfRelRecibo_Pgto.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  fDMCadDuplicata.cdsDuplicata_Consulta.Locate('ID',fDMCadDuplicata.mImpDuplicataID_Duplicata.AsInteger,[loCaseInsensitive]);
  fDMCadDuplicata.cdsFilial.Locate('ID',fDMCadDuplicata.cdsDuplicata_ConsultaFILIAL.AsInteger,[loCaseInsensitive]);

  RLLabel25.Caption := fDMCadDuplicata.cdsFilialENDERECO.AsString;
  if trim(fDMCadDuplicata.cdsFilialCOMPLEMENTO_END.AsString) <> '' then
    RLLabel25.Caption := RLLabel25.Caption + ', ' + fDMCadDuplicata.cdsFilialCOMPLEMENTO_END.AsString;
  RLLabel25.Caption := RLLabel25.Caption + ', ' + fDMCadDuplicata.cdsFilialNUM_END.AsString;

  RLLabel33.Caption := fDMCadDuplicata.cdsDuplicata_ConsultaENDERECO.AsString;
  if trim(fDMCadDuplicata.cdsDuplicata_ConsultaCOMPLEMENTO_END.AsString) <> '' then
    RLLabel33.Caption := RLLabel33.Caption + ', ' + fDMCadDuplicata.cdsDuplicata_ConsultaCOMPLEMENTO_END.AsString;
  RLLabel33.Caption := RLLabel33.Caption + ', ' + fDMCadDuplicata.cdsDuplicata_ConsultaNUM_END.AsString;

{  RLLabel34.Caption := fDMCadDuplicata.cdsDuplicata_ConsultaENDERECO_PGTO.AsString;
  if trim(fDMCadDuplicata.cdsDuplicata_ConsultaCOMPLEMENTO_END_PGTO.AsString) <> '' then
    RLLabel34.Caption := RLLabel34.Caption + ', ' + fDMCadDuplicata.cdsDuplicata_ConsultaCOMPLEMENTO_END_PGTO.AsString;
  RLLabel34.Caption := RLLabel34.Caption + ', ' + fDMCadDuplicata.cdsDuplicata_ConsultaNUM_END_PGTO.AsString;

  RLLabel35.Caption := '';
  if trim(fDMCadDuplicata.cdsDuplicata_ConsultaCIDADE_PGTO.AsString) <> '' then
    RLLabel35.Caption := fDMCadDuplicata.cdsDuplicata_ConsultaCIDADE_PGTO.AsString + ' - ' +
                         fDMCadDuplicata.cdsDuplicata_ConsultaUF_PGTO.AsString + ' - ' +
                         fDMCadDuplicata.cdsDuplicata_ConsultaCEP_PGTO.AsString;}

  if fDMCadDuplicata.cdsDuplicata_ConsultaPESSOA.AsString = 'J' then
    RLLabel36.Caption := 'Insc.CNPJ:'
  else
    RLLabel36.Caption := 'Insc.CPF:';

  RLLabel42.Caption := '';
  if (fDMCadDuplicata.cdsDuplicata_ConsultaDESCRICAO.AsString <> '') then
    RLLabel42.Caption := 'Obs: ' + fDMCadDuplicata.cdsDuplicata_ConsultaDESCRICAO.AsString;

  RLLabel43.Caption := '';
  if (fDMCadDuplicata.cdsDuplicata_ConsultaANO_REF.AsInteger > 0) then
    RLLabel43.Caption := 'Mês/Ano Ref: ' + fDMCadDuplicata.cdsDuplicata_ConsultaMES_REF.AsString + '/' + fDMCadDuplicata.cdsDuplicata_ConsultaANO_REF.AsString;

  RLMemo1.Lines.Clear;
  ValorPorExtenso1.Valor := fDMCadDuplicata.cdsDuplicata_ConsultaVLR_PAGO.AsFloat;
  RLMemo1.Lines.Text     := ValorPorExtenso1.texto;

  if FileExists(fDMCadDuplicata.cdsFilialENDLOGO.AsString) then
    RLImage1.Picture.LoadFromFile(fDMCadDuplicata.cdsFilialENDLOGO.AsString)
  else
     RLImage1.Picture := nil;
end;

procedure TfRelRecibo_Pgto.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelRecibo_Pgto.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

end.











