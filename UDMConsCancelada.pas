unit UDMConsCancelada;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMConsCancelada = class(TDataModule)
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    cdsConsultaCANCELADA: TStringField;
    cdsConsultaNFEDENEGADA: TStringField;
    cdsConsultaFILIAL: TIntegerField;
    cdsConsultaNUMNOTA: TIntegerField;
    cdsConsultaSERIE: TStringField;
    cdsConsultaDTEMISSAO: TDateField;
    cdsConsultaID_CLIENTE: TIntegerField;
    cdsConsultaVLR_NOTA: TFloatField;
    cdsConsultaNOMECLIENTE: TStringField;
    cdsConsultaCODCFOP: TStringField;
    cdsConsultaFANTASIA: TStringField;
    cdsConsultaTIPO_NOTA: TStringField;
    cdsConsultaMOTIVO_CANCELADA: TStringField;
    cdsConsultaMOTIVO_DENEGADA: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    ctConsulta : String;

  end;

var
  DMConsCancelada: TDMConsCancelada;

implementation

uses DmdDatabase;

{$R *.dfm}


procedure TDMConsCancelada.DataModuleCreate(Sender: TObject);
begin
  ctConsulta := sdsConsulta.CommandText;
  cdsFilial.Open;
end;

end.
