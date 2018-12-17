unit UDMConsManifesto;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMConsManifesto = class(TDataModule)
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    sdsCliente: TSQLDataSet;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    dsCliente: TDataSource;
    cdsClienteCODIGO: TIntegerField;
    cdsClienteNOME: TStringField;
    cdsClienteFANTASIA: TStringField;
    qParametros: TSQLQuery;
    qParametrosID: TIntegerField;
    qParametrosENDXMLNFE: TStringField;
    qParametrosENDPDFNFE: TStringField;
    qParametrosSERIENORMAL: TStringField;
    qParametrosSERIECONTINGENCIA: TStringField;
    qParametrosLOCALSERVIDORNFE: TStringField;
    qParametrosEMAILRESPONSAVELSISTEMA: TStringField;
    qParametrosNFEPRODUCAO: TStringField;
    qParametrosANEXARDANFE: TStringField;
    qParametrosVERSAONFE: TStringField;
    qParametrosVERSAOEMISSAONFE: TStringField;
    qParametrosTIPOLOGONFE: TStringField;
    qParametrosAPLICARDESCONTONOICMS: TStringField;
    qParametrosAPLICARDESCONTONOIPI: TStringField;
    qParametrosSOMARNOPROD_FRETE: TStringField;
    qParametrosSOMARNOPROD_OUTRASDESP: TStringField;
    qParametrosSOMARNOPROD_SEGURO: TStringField;
    qParametrosAJUSTELOGONFEAUTOMATICO: TStringField;
    qParametrosINFNUMNOTAMANUAL: TStringField;
    qParametrosOPCAO_DTENTREGAPEDIDO: TStringField;
    qParametrosOBS_SIMPLES: TStringField;
    qParametrosIMP_OBSSIMPLES: TStringField;
    qParametrosIMP_REFERENCIANANOTA: TStringField;
    qParametrosENVIARNOTABENEF_NANFE: TStringField;
    qParametrosESPECIE_NOTA: TStringField;
    qParametrosMARCA_NOTA: TStringField;
    qParametrosVERSAO_BANCO: TIntegerField;
    qParametrosUSA_QTDPACOTE_NTE: TStringField;
    qParametrosATUALIZAR_PRECO: TStringField;
    qParametrosUSA_VENDEDOR: TStringField;
    qParametrosUSA_CONSUMO: TStringField;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    cdsConsultaID: TIntegerField;
    cdsConsultaNUMNOTA: TIntegerField;
    cdsConsultaSERIE: TStringField;
    cdsConsultaDTEMISSAO: TDateField;
    cdsConsultaID_CLIENTE: TIntegerField;
    cdsConsultaNOME_CLIENTE: TStringField;
    cdsConsultaVLR_NOTA: TFloatField;
    cdsConsultaVLR_DUPLICATA: TFloatField;
    cdsConsultaEVENTO: TIntegerField;
    cdsConsultaTIPO: TStringField;
    cdsConsultaNOME_TIPO: TStringField;
    cdsConsultaFILIAL: TIntegerField;
    cdsFilialNOME_INTERNO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsConsultaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }

  public
    { Public declarations }
    ctConsulta : String;

  end;

var
  DMConsManifesto: TDMConsManifesto;

implementation

uses DmdDatabase;

{$R *.dfm}


procedure TDMConsManifesto.DataModuleCreate(Sender: TObject);
begin
  ctConsulta  := sdsConsulta.CommandText;

  cdsFilial.Open;
  cdsCliente.Open;
  qParametros.Open;
end;

procedure TDMConsManifesto.cdsConsultaCalcFields(DataSet: TDataSet);
begin
  if cdsConsultaTIPO.AsString = 'CCE' then
    cdsConsultaNOME_TIPO.AsString := 'Carta de Correção'
  else
  if cdsConsultaTIPO.AsString = 'COP' then
    cdsConsultaNOME_TIPO.AsString := 'Confirmação Operação'
  else
  if cdsConsultaTIPO.AsString = 'CIE' then
    cdsConsultaNOME_TIPO.AsString := 'Ciência da Operação'
  else
  if cdsConsultaTIPO.AsString = 'DES' then
    cdsConsultaNOME_TIPO.AsString := 'Desconhecimento da Operação'
  else
  if cdsConsultaTIPO.AsString = 'ONR' then
    cdsConsultaNOME_TIPO.AsString := 'Operação não Realizada';
end;

end.
