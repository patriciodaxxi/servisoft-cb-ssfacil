unit UDMRecNF;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, frxClass,
  frxDBSet, frxRich, frxExportMail, frxExportPDF;

type
  TDMRecNF = class(TDataModule)
    sdsNotaFiscal: TSQLDataSet;
    dspNotaFiscal: TDataSetProvider;
    cdsNotaFiscal: TClientDataSet;
    cdsNotaFiscalID: TIntegerField;
    cdsNotaFiscalFILIAL: TIntegerField;
    cdsNotaFiscalSERIE: TStringField;
    cdsNotaFiscalNUMNOTA: TIntegerField;
    cdsNotaFiscalDTEMISSAO: TDateField;
    cdsNotaFiscalID_CFOP: TIntegerField;
    cdsNotaFiscalID_CLIENTE: TIntegerField;
    cdsNotaFiscalID_CONDPGTO: TIntegerField;
    cdsNotaFiscalID_VENDEDOR: TIntegerField;
    cdsNotaFiscalVLR_NOTA: TFloatField;
    cdsNotaFiscalBASE_ICMS: TFloatField;
    cdsNotaFiscalVLR_ICMS: TFloatField;
    cdsNotaFiscalVLR_IPI: TFloatField;
    cdsNotaFiscalVLR_ITENS: TFloatField;
    cdsNotaFiscalVLR_DUPLICATA: TFloatField;
    cdsNotaFiscalVLR_ENTRADA: TFloatField;
    cdsNotaFiscalPERC_DESCONTO: TFloatField;
    cdsNotaFiscalVLR_DESCONTO: TFloatField;
    cdsNotaFiscalVLR_FRETE: TFloatField;
    cdsNotaFiscalVLR_SEGURO: TFloatField;
    cdsNotaFiscalVLR_OUTRASDESP: TFloatField;
    cdsNotaFiscalBASE_ICMSTRANSF: TFloatField;
    cdsNotaFiscalPERC_TRANSF: TFloatField;
    cdsNotaFiscalVLR_TRANSF: TFloatField;
    cdsNotaFiscalVLR_PIS: TFloatField;
    cdsNotaFiscalVLR_COFINS: TFloatField;
    cdsNotaFiscalVLR_TAXACISCOMEX: TFloatField;
    cdsNotaFiscalVLR_OUTROS: TFloatField;
    cdsNotaFiscalBASE_ICMSSIMPLES: TFloatField;
    cdsNotaFiscalVLR_ICMSSIMPLES: TFloatField;
    cdsNotaFiscalPERC_ICMSSIMPLES: TFloatField;
    cdsNotaFiscalVLR_IMPORTACAO: TFloatField;
    cdsNotaFiscalBASE_ICMSSUBST: TFloatField;
    cdsNotaFiscalVLR_ICMSSUBST: TFloatField;
    cdsNotaFiscalBASE_ICMSOUTROS: TFloatField;
    cdsNotaFiscalVLR_ICMSOUTROS: TFloatField;
    cdsNotaFiscalVLR_DUPLICATAOUTROS: TFloatField;
    cdsNotaFiscalVLR_ADUANEIRA: TFloatField;
    cdsNotaFiscalPERC_ICMS_PISCOFINS: TFloatField;
    cdsNotaFiscalPERC_ICMS_OUTROSVALORES: TFloatField;
    cdsNotaFiscalPERC_ICMS_FRETE: TFloatField;
    cdsNotaFiscalPERC_DESCONTOORIG: TFloatField;
    cdsNotaFiscalQTDVOLUME: TIntegerField;
    cdsNotaFiscalESPECIE: TStringField;
    cdsNotaFiscalMARCA: TStringField;
    cdsNotaFiscalNUMEROVOLUME: TStringField;
    cdsNotaFiscalPESOBRUTO: TFloatField;
    cdsNotaFiscalPESOLIQUIDO: TFloatField;
    cdsNotaFiscalPLACA: TStringField;
    cdsNotaFiscalUFPLACA: TStringField;
    cdsNotaFiscalTIPO_FRETE: TStringField;
    cdsNotaFiscalID_TRANSPORTADORA: TIntegerField;
    cdsNotaFiscalID_REDESPACHO: TIntegerField;
    cdsNotaFiscalTIPO_NOTA: TStringField;
    cdsNotaFiscalCANCELADA: TStringField;
    cdsNotaFiscalMOTIVO_CANCELADA: TStringField;
    cdsNotaFiscalDTSAIDAENTRADA: TDateField;
    cdsNotaFiscalHRSAIDAENTRADA: TTimeField;
    cdsNotaFiscalID_BANCO: TIntegerField;
    cdsNotaFiscalLOCALENTREGA: TStringField;
    cdsNotaFiscalID_EXTCOMISSAO: TIntegerField;
    cdsNotaFiscalDESCRICAO_DESC: TStringField;
    cdsNotaFiscalID_CLIENTETRIANG: TIntegerField;
    cdsNotaFiscalQTDTOTAL_ITENS: TIntegerField;
    cdsNotaFiscalNFERECIBO: TStringField;
    cdsNotaFiscalNFEPROTOCOLO: TStringField;
    cdsNotaFiscalNFECHAVEACESSO: TStringField;
    cdsNotaFiscalNFEPROTOCOLO_CANCELADA: TStringField;
    cdsNotaFiscalTIPO_ENVIONFE: TStringField;
    cdsNotaFiscalNFECODBARRA_CONTINGENCIA: TStringField;
    cdsNotaFiscalNFEVERSAO: TStringField;
    cdsNotaFiscalNFEFINALIDADE: TStringField;
    cdsNotaFiscalNFEAMBIENTE: TStringField;
    cdsNotaFiscalNUMNOTACOPIADA: TIntegerField;
    cdsNotaFiscalSERIECOPIADA: TStringField;
    cdsNotaFiscalDTCONTINGENCIA: TDateField;
    cdsNotaFiscalHRCONTINGENCIA: TTimeField;
    cdsNotaFiscalMOTIVO_CONTINGENCIA: TStringField;
    cdsNotaFiscalNFEVERSAOEMISSAO: TStringField;
    cdsNotaFiscalID_REGIMETRIB: TIntegerField;
    cdsNotaFiscalRNTC: TStringField;
    cdsNotaFiscalVAGAOBALSA_IDENTIF: TStringField;
    cdsNotaFiscalVAGAOBALSA_TIPOIDENTIF: TStringField;
    cdsNotaFiscalUFEMBEXPORTACAO: TStringField;
    cdsNotaFiscalLOCALEMBEXPORTACAO: TStringField;
    cdsNotaFiscalPISCOFINS_SOMAROUTRASDESP: TStringField;
    cdsNotaFiscalTIPO_DESCONTO: TStringField;
    cdsNotaFiscalGERARDUPL_OUTROSVALORES: TStringField;
    cdsNotaFiscalGERARDUPL_FRETE: TStringField;
    cdsNotaFiscalGERARDUPL_SEGURO: TStringField;
    cdsNotaFiscalINFORMADO_NUMNOTAMANUAL: TStringField;
    cdsNotaFiscalNFEDENEGADA: TStringField;
    cdsNotaFiscalMOTIVO_DENEGADA: TStringField;
    cdsNotaFiscalDADOS_ADICIONAIS: TMemoField;
    cdsNotaFiscalDTINICIO_DUPLICATA: TDateField;
    cdsNotaFiscalTIPO_PRAZO: TStringField;
    cdsNotaFiscalPERC_COMISSAO: TFloatField;
    cdsNotaFiscalNOME_CLI: TStringField;
    cdsNotaFiscalEMAIL_NFE_CLI: TStringField;
    cdsNotaFiscalENDERECO_CLI: TStringField;
    cdsNotaFiscalNUM_END_CLI: TStringField;
    cdsNotaFiscalCOMPLEMENTO_END_CLI: TStringField;
    cdsNotaFiscalBAIRRO_CLI: TStringField;
    cdsNotaFiscalID_CIDADE_CLI: TIntegerField;
    cdsNotaFiscalUF_CLI: TStringField;
    cdsNotaFiscalCNPJ_CPF_CLI: TStringField;
    cdsNotaFiscalINSCR_EST_CLI: TStringField;
    cdsNotaFiscalCIDADE_CLI: TStringField;
    cdsNotaFiscalNOME_TRANSP: TStringField;
    cdsNotaFiscalEMAIL_NFE_TRANSP: TStringField;
    cdsNotaFiscalENDERECO_TRANSP: TStringField;
    cdsNotaFiscalNUM_END_TRANSP: TStringField;
    cdsNotaFiscalCOMPLEMENTO_END_TRANSP: TStringField;
    cdsNotaFiscalBAIRRO_TRANSP: TStringField;
    cdsNotaFiscalID_CIDADE_TRANSP: TIntegerField;
    cdsNotaFiscalUF_TRANSP: TStringField;
    cdsNotaFiscalCNPJ_CPF_TRANSP: TStringField;
    cdsNotaFiscalINSCR_EST_TRANSP: TStringField;
    cdsNotaFiscalCIDADE_TRANSP: TStringField;
    cdsNotaFiscalENDERECO_CLI2: TStringField;
    cdsNotaFiscalENDERECO_TRANSP2: TStringField;
    cdsNotaFiscalCEP_CLI: TStringField;
    cdsNotaFiscalCEP_TRANSP: TStringField;
    cdsNotaFiscalDDDFONE1_CLI: TIntegerField;
    cdsNotaFiscalTELEFONE1_CLI: TStringField;
    cdsNotaFiscalDDDFONE2_CLI: TIntegerField;
    cdsNotaFiscalTELEFONE2_CLI: TStringField;
    cdsNotaFiscalDDDFAX_CLI: TIntegerField;
    cdsNotaFiscalFAX_CLI: TStringField;
    cdsNotaFiscalVLR_TRIBUTOS: TFloatField;
    cdsNotaFiscalGRAVOU_DADOSADICIONAIS: TStringField;
    dsNotaFiscal: TDataSource;
    cdsNotaFiscalNOME_FIL: TStringField;
    cdsNotaFiscalENDERECO_FIL: TStringField;
    cdsNotaFiscalNUM_END_FIL: TStringField;
    cdsNotaFiscalBAIRRO_FIL: TStringField;
    cdsNotaFiscalCIDADE_FIL: TStringField;
    cdsNotaFiscalUF_FIL: TStringField;
    cdsNotaFiscalCNPJ_CFP_FIL: TStringField;
    cdsNotaFiscalINSCR_EST_FIL: TStringField;
    cdsNotaFiscalNOME_CONDPGTO: TStringField;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    frxRichObject1: TfrxRichObject;
    frxDBDataset1: TfrxDBDataset;
    sdsNotaFiscal_Itens: TSQLDataSet;
    dspNotaFiscal_Itens: TDataSetProvider;
    cdsNotaFiscal_Itens: TClientDataSet;
    dsNotaFiscal_Itens: TDataSource;
    frxDBDataset2: TfrxDBDataset;
    cdsNotaFiscalCEP_FIL: TStringField;
    cdsNotaFiscalDDD_FIL: TIntegerField;
    cdsNotaFiscalFONE_FIL: TStringField;
    cdsNotaFiscal_ItensID: TIntegerField;
    cdsNotaFiscal_ItensITEM: TIntegerField;
    cdsNotaFiscal_ItensID_PRODUTO: TIntegerField;
    cdsNotaFiscal_ItensREFERENCIA: TStringField;
    cdsNotaFiscal_ItensNOME_PRODUTO: TStringField;
    cdsNotaFiscal_ItensQTD: TFloatField;
    cdsNotaFiscal_ItensVLR_UNITARIO: TFloatField;
    cdsNotaFiscal_ItensVLR_TOTAL: TFloatField;
    cdsNotaFiscal_ItensUNIDADE: TStringField;
    cdsNotaFiscalVLR_NOTA2: TFloatField;
    sdsNotaFiscal_Parc: TSQLDataSet;
    dspNotaFiscal_Parc: TDataSetProvider;
    cdsNotaFiscal_Parc: TClientDataSet;
    dsNotaFiscal_Parc: TDataSource;
    cdsNotaFiscal_ParcID: TIntegerField;
    cdsNotaFiscal_ParcITEM: TIntegerField;
    cdsNotaFiscal_ParcDTVENCIMENTO: TDateField;
    cdsNotaFiscal_ParcVLR_VENCIMENTO: TFloatField;
    frxNotaFiscal_Parc: TfrxDBDataset;
    qFilialRel: TSQLQuery;
    qFilialRelCAMINHO: TStringField;
    cdsNotaFiscalUSUARIO: TStringField;
    cdsNotaFiscal_ItensVLR_DESCONTO: TFloatField;
    sdsNumOC: TSQLDataSet;
    dspNumOC: TDataSetProvider;
    cdsNumOC: TClientDataSet;
    cdsNumOCNUMERO_OC: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMRecNF: TDMRecNF;

implementation

uses DmdDatabase;

{$R *.dfm}

end.
