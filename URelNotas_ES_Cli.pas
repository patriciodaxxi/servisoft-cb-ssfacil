unit URelNotas_ES_Cli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDMConsNotas_ES, UDMRel;

type
  TfRelNotas_ES_Cli = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLSubDetail1: TRLSubDetail;
    RLGroup1: TRLGroup;
    RLBand3: TRLBand;
    RLLabel2: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel16: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel4: TRLLabel;
    RLDraw1: TRLDraw;
    RLBand4: TRLBand;
    RLDBText10: TRLDBText;
    RLDBText12: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText11: TRLDBText;
    RLSubDetail2: TRLSubDetail;
    RLBand5: TRLBand;
    RLBand6: TRLBand;
    RLLabel12: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLDBText13: TRLDBText;
    RLLabel17: TRLLabel;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLBand7: TRLBand;
    RLLabel18: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLLabel6: TRLLabel;
    RLDBText17: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    fDMRel: TDMRel;
    vVlrTotal_ES, vBaseIcms_ES, vVlrIcms_ES, vVlrIPI_ES, vVlrFrete_ES : Real;
    vCodCFOP : String;
  public
    { Public declarations }
    fDMConsNotas_ES: TDMConsNotas_ES;
    vOpcaoImp : String;
    vImp_Por_CFOP : Boolean;
  end;

var
  fRelNotas_ES_Cli: TfRelNotas_ES_Cli;

implementation

uses rsDBUtils, DB;

{$R *.dfm}

procedure TfRelNotas_ES_Cli.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelNotas_ES_Cli.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel1.Caption := 'Relatório de Notas';
  if trim(vOpcaoImp) <> '' then
    RLLabel1.Caption := RLLabel1.Caption + ' - ' + vOpcaoImp;
end;

procedure TfRelNotas_ES_Cli.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self,fDMConsNotas_ES);
end;

procedure TfRelNotas_ES_Cli.FormCreate(Sender: TObject);
begin
  fDMRel := TDMRel.Create(Self);
end;

procedure TfRelNotas_ES_Cli.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMRel);
end;

procedure TfRelNotas_ES_Cli.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if StrToFloat(FormatFloat('0.00',fDMConsNotas_ES.cdsConsultaVLR_DUPLICATA.AsFloat)) > 0 then
  begin
    fDMConsNotas_ES.cdsNotaFiscal_Cli_Parc.Close;
    fDMConsNotas_ES.sdsNotaFiscal_Cli_Parc.ParamByName('ID').AsInteger := fDMConsNotas_ES.cdsConsultaID.AsInteger;
    fDMConsNotas_ES.cdsNotaFiscal_Cli_Parc.Open;
  end
  else
    fDMConsNotas_ES.cdsNotaFiscal_Cli_Parc.Close;
end;

procedure TfRelNotas_ES_Cli.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := fDMConsNotas_ES.cdsNotaFiscal_Cli_Parc.Active;
end;

procedure TfRelNotas_ES_Cli.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := fDMConsNotas_ES.cdsNotaFiscal_Cli_Parc.Active;
end;

end.
