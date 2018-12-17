unit URelDuplicata;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RLReport, UDMCadDuplicata, jpeg,
  DB, ValorPor, UDMRel;

type
  TfRelDuplicata = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw2: TRLDraw;
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
    RLLabel12: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel13: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel15: TRLLabel;
    RLDraw4: TRLDraw;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLDraw5: TRLDraw;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLDraw6: TRLDraw;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLDraw7: TRLDraw;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDraw8: TRLDraw;
    RLDBText3: TRLDBText;
    RLLabel24: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
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
    RLDraw9: TRLDraw;
    RLAngleLabel1: TRLAngleLabel;
    RLDraw10: TRLDraw;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLDraw11: TRLDraw;
    RLLabel32: TRLLabel;
    RLDBText18: TRLDBText;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
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
    RLMemo2: TRLMemo;
    RLLabel40: TRLLabel;
    RLDBText24: TRLDBText;
    RLLabel41: TRLLabel;
    RLDraw13: TRLDraw;
    RLDraw14: TRLDraw;
    RLImage2: TRLImage;
    RLLabel42: TRLLabel;
    RLDraw15: TRLDraw;
    RLLabel43: TRLLabel;
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
  fRelDuplicata: TfRelDuplicata;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfRelDuplicata.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelDuplicata.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadDuplicata);
end;

procedure TfRelDuplicata.RLBand1BeforePrint(Sender: TObject;
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

  RLLabel34.Caption := fDMCadDuplicata.cdsDuplicata_ConsultaENDERECO_PGTO.AsString;
  if trim(fDMCadDuplicata.cdsDuplicata_ConsultaCOMPLEMENTO_END_PGTO.AsString) <> '' then
    RLLabel34.Caption := RLLabel34.Caption + ', ' + fDMCadDuplicata.cdsDuplicata_ConsultaCOMPLEMENTO_END_PGTO.AsString;
  RLLabel34.Caption := RLLabel34.Caption + ', ' + fDMCadDuplicata.cdsDuplicata_ConsultaNUM_END_PGTO.AsString;

  RLLabel35.Caption := '';
  if trim(fDMCadDuplicata.cdsDuplicata_ConsultaCIDADE_PGTO.AsString) <> '' then
    RLLabel35.Caption := fDMCadDuplicata.cdsDuplicata_ConsultaCIDADE_PGTO.AsString + ' - ' + fDMCadDuplicata.cdsDuplicata_ConsultaUF_PGTO.AsString + ' - ' + fDMCadDuplicata.cdsDuplicata_ConsultaCEP_PGTO.AsString;

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
  ValorPorExtenso1.Valor := fDMCadDuplicata.cdsDuplicata_ConsultaVLR_RESTANTE.AsFloat;
  RLMemo1.Lines.Text     := ValorPorExtenso1.texto;

  RLMemo2.Lines.Clear;
  RLMemo2.Lines.Text := 'Reconheço(emos) a exatidão desta DUPLICATA DE VENDA MERCANTIL, na importância acima, que pagarei(emos) a ';
  RLMemo2.Lines.Text := RLMemo2.Lines.Text + fDMCadDuplicata.cdsFilialNOME.AsString + ', na praça e vencimento acima indicados.';

  if FileExists(fDMCadDuplicata.cdsFilialENDLOGO.AsString) then
    RLImage1.Picture.LoadFromFile(fDMCadDuplicata.cdsFilialENDLOGO.AsString)
  else
     RLImage1.Picture := nil;
end;

procedure TfRelDuplicata.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelDuplicata.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

end.











