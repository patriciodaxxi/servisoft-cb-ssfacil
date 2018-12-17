unit UDMConsNotas_SER;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMConsNotas_SER = class(TDataModule)
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
    sdsPessoa: TSQLDataSet;
    dspPessoa: TDataSetProvider;
    cdsPessoa: TClientDataSet;
    dsPessoa: TDataSource;
    sdsPessoaCODIGO: TIntegerField;
    sdsPessoaNOME: TStringField;
    sdsPessoaFANTASIA: TStringField;
    cdsPessoaCODIGO: TIntegerField;
    cdsPessoaNOME: TStringField;
    cdsPessoaFANTASIA: TStringField;
    sdsConsultaID: TIntegerField;
    sdsConsultaNUMNOTA: TIntegerField;
    sdsConsultaDTEMISSAO_CAD: TDateField;
    sdsConsultaNOME_CLIENTE: TStringField;
    sdsConsultaCODIGO: TStringField;
    sdsConsultaNOME_SERVICO: TStringField;
    sdsConsultaSTATUS_RPS: TStringField;
    sdsConsultaMOTIVO_CANCELAMENTO: TStringField;
    sdsConsultaFILIAL: TIntegerField;
    sdsConsultaNOME_FILIAL: TStringField;
    sdsConsultaSERIE: TStringField;
    sdsConsultaNOME_INTERNO: TStringField;
    sdsConsultaVLR_TOTAL: TFloatField;
    sdsConsultaVLR_LIQUIDO_NFSE: TFloatField;
    sdsConsultaVLR_INSS: TFloatField;
    sdsConsultaBASE_CALCULO: TFloatField;
    sdsConsultaBASE_INSS: TFloatField;
    sdsConsultaVLR_ISS: TFloatField;
    sdsConsultaVLR_ISS_RETIDO: TFloatField;
    sdsConsultaPERC_ALIQUOTA: TFloatField;
    cdsConsultaID: TIntegerField;
    cdsConsultaNUMNOTA: TIntegerField;
    cdsConsultaDTEMISSAO_CAD: TDateField;
    cdsConsultaNOME_CLIENTE: TStringField;
    cdsConsultaCODIGO: TStringField;
    cdsConsultaNOME_SERVICO: TStringField;
    cdsConsultaSTATUS_RPS: TStringField;
    cdsConsultaMOTIVO_CANCELAMENTO: TStringField;
    cdsConsultaFILIAL: TIntegerField;
    cdsConsultaNOME_FILIAL: TStringField;
    cdsConsultaSERIE: TStringField;
    cdsConsultaNOME_INTERNO: TStringField;
    cdsConsultaVLR_TOTAL: TFloatField;
    cdsConsultaVLR_LIQUIDO_NFSE: TFloatField;
    cdsConsultaVLR_INSS: TFloatField;
    cdsConsultaBASE_CALCULO: TFloatField;
    cdsConsultaBASE_INSS: TFloatField;
    cdsConsultaVLR_ISS: TFloatField;
    cdsConsultaVLR_ISS_RETIDO: TFloatField;
    cdsConsultaPERC_ALIQUOTA: TFloatField;
    sdsConsultaISS_RETIDO: TStringField;
    cdsConsultaISS_RETIDO: TStringField;
    sdsConsultaNUMRPS: TIntegerField;
    cdsConsultaNUMRPS: TIntegerField;
    cdsFilialNOME_INTERNO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    ctConsulta : String;

  end;

var
  DMConsNotas_SER: TDMConsNotas_SER;

implementation

uses DmdDatabase;

{$R *.dfm}


procedure TDMConsNotas_SER.DataModuleCreate(Sender: TObject);
begin
  ctConsulta := sdsConsulta.CommandText;
  cdsFilial.Open;
  cdsPessoa.Open;
end;

end.
