unit UDMManifesto_Cli;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, xmldom,
  Xmlxform;

type
  TDMManifesto_Cli = class(TDataModule)
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
    sdsNotaFiscal_NFe: TSQLDataSet;
    sdsNotaFiscal_NFeID: TIntegerField;
    sdsNotaFiscal_NFeITEM: TIntegerField;
    sdsNotaFiscal_NFeTIPO: TStringField;
    sdsNotaFiscal_NFeITEMTIPO: TIntegerField;
    sdsNotaFiscal_NFeDESCRICAO: TStringField;
    sdsNotaFiscal_NFeMOTIVO: TMemoField;
    sdsNotaFiscal_NFeNFEPROTOCOLO: TStringField;
    sdsNotaFiscal_NFeNFERECIBO: TStringField;
    sdsNotaFiscal_NFeDATAHORAAUT: TSQLTimeStampField;
    sdsNotaFiscal_NFeXML: TMemoField;
    sdsNotaFiscal_NFeDTCADASTRO: TDateField;
    sdsNotaFiscal_NFeHRCADASTRO: TTimeField;
    cdsNotaFiscal_NFe: TClientDataSet;
    cdsNotaFiscal_NFeID: TIntegerField;
    cdsNotaFiscal_NFeITEM: TIntegerField;
    cdsNotaFiscal_NFeTIPO: TStringField;
    cdsNotaFiscal_NFeITEMTIPO: TIntegerField;
    cdsNotaFiscal_NFeDESCRICAO: TStringField;
    cdsNotaFiscal_NFeMOTIVO: TMemoField;
    cdsNotaFiscal_NFeNFEPROTOCOLO: TStringField;
    cdsNotaFiscal_NFeNFERECIBO: TStringField;
    cdsNotaFiscal_NFeDATAHORAAUT: TSQLTimeStampField;
    cdsNotaFiscal_NFeXML: TMemoField;
    cdsNotaFiscal_NFeDTCADASTRO: TDateField;
    cdsNotaFiscal_NFeHRCADASTRO: TTimeField;
    dsNotaFiscal_NFe: TDataSource;
    dspNotaFiscal_NFe: TDataSetProvider;
    qProximaItem_NFe: TSQLQuery;
    qProximaItem_NFeITEM: TIntegerField;
    cdsNFeCancelamento: TClientDataSet;
    dsNFeCancelamento: TDataSource;
    cdsNFeEventos: TClientDataSet;
    cdsNFeEventosId: TStringField;
    cdsNFeEventoscOrgao: TStringField;
    cdsNFeEventosCNPJ: TStringField;
    cdsNFeEventosdhEvento: TDateTimeField;
    cdsNFeEventostpEvento: TIntegerField;
    cdsNFeEventosnSeqEvento: TIntegerField;
    cdsNFeEventosdescEvento: TStringField;
    cdsNFeEventosxJust: TStringField;
    cdsNFeEventosxCorrecao: TStringField;
    dsNFeEventos: TDataSource;
    cdsNFeProtocolo: TClientDataSet;
    cdsNFeProtocolodhRecbto: TDateTimeField;
    cdsNFeProtocolonProt: TStringField;
    cdsNFeProtocolocStat: TIntegerField;
    cdsNFeProtocoloxMotivo: TStringField;
    dsNFeProtocolo: TDataSource;
    cdsConsultaNFe: TClientDataSet;
    cdsConsultaNFetpAmb: TIntegerField;
    cdsConsultaNFecStat: TIntegerField;
    cdsConsultaNFexMotivo: TStringField;
    cdsConsultaNFecUF: TIntegerField;
    cdsConsultaNFechNFe: TStringField;
    cdsConsultaNFeprotNFe: TDataSetField;
    cdsConsultaNFeprocEventoNFe: TDataSetField;
    cdsConsultaNFeretCancNFe: TDataSetField;
    dsConsultaNFe: TDataSource;
    xtrConsultaNFe: TXMLTransformProvider;
    qFilial: TSQLQuery;
    qFilialID: TIntegerField;
    qFilialNOME: TStringField;
    qFilialNOME_INTERNO: TStringField;
    qFilialCNPJ_CPF: TStringField;
    sdsNotaFiscal: TSQLDataSet;
    cdsNotaFiscal: TClientDataSet;
    dsNotaFiscal: TDataSource;
    dspNotaFiscal: TDataSetProvider;
    sdsNotaFiscalID: TIntegerField;
    sdsNotaFiscalSERIE: TStringField;
    sdsNotaFiscalNUMNOTA: TIntegerField;
    sdsNotaFiscalDTEMISSAO: TDateField;
    sdsNotaFiscalSTATUS_MANIFESTO: TStringField;
    cdsNotaFiscalID: TIntegerField;
    cdsNotaFiscalSERIE: TStringField;
    cdsNotaFiscalNUMNOTA: TIntegerField;
    cdsNotaFiscalDTEMISSAO: TDateField;
    cdsNotaFiscalSTATUS_MANIFESTO: TStringField;
    sdsNotaFiscalNFECHAVEACESSO: TStringField;
    cdsNotaFiscalNFECHAVEACESSO: TStringField;
    qFilialLOCALSERVIDORNFE: TStringField;
    qFilialPESSOA: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    ctConsulta : String;

  end;

var
  DMManifesto_Cli: TDMManifesto_Cli;

implementation

uses DmdDatabase;

{$R *.dfm}


procedure TDMManifesto_Cli.DataModuleCreate(Sender: TObject);
begin
  qParametros.Open;
end;

end.
