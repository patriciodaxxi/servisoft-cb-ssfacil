unit UDMCadNotaFiscal;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, dbXPress, Math, Messages, Dialogs, LogTypes, Variants,
  frxClass, frxDBSet;

type
  TDMCadNotaFiscal = class(TDataModule)
    sdsNotaFiscal: TSQLDataSet;
    dspNotaFiscal: TDataSetProvider;
    cdsNotaFiscal: TClientDataSet;
    dsNotaFiscal: TDataSource;
    sdsNotaFiscalID: TIntegerField;
    sdsNotaFiscalNUMNOTA: TIntegerField;
    sdsNotaFiscalDTEMISSAO: TDateField;
    sdsNotaFiscalID_CFOP: TIntegerField;
    sdsNotaFiscalID_CLIENTE: TIntegerField;
    sdsNotaFiscalID_CONDPGTO: TIntegerField;
    sdsNotaFiscalID_VENDEDOR: TIntegerField;
    sdsNotaFiscalVLR_ICMS: TFloatField;
    sdsNotaFiscalVLR_IPI: TFloatField;
    sdsNotaFiscalVLR_NOTA: TFloatField;
    sdsNotaFiscalVLR_ITENS: TFloatField;
    sdsNotaFiscalVLR_DUPLICATA: TFloatField;
    sdsNotaFiscalVLR_ENTRADA: TFloatField;
    sdsNotaFiscalPERC_DESCONTO: TFloatField;
    sdsNotaFiscalVLR_DESCONTO: TFloatField;
    sdsNotaFiscalVLR_FRETE: TFloatField;
    sdsNotaFiscalVLR_SEGURO: TFloatField;
    sdsNotaFiscalVLR_OUTRASDESP: TFloatField;
    sdsNotaFiscalBASE_ICMSTRANSF: TFloatField;
    sdsNotaFiscalPERC_TRANSF: TFloatField;
    sdsNotaFiscalVLR_TRANSF: TFloatField;
    sdsNotaFiscalVLR_PIS: TFloatField;
    sdsNotaFiscalVLR_COFINS: TFloatField;
    sdsNotaFiscalVLR_TAXACISCOMEX: TFloatField;
    sdsNotaFiscalVLR_OUTROS: TFloatField;
    sdsNotaFiscalBASE_ICMSSIMPLES: TFloatField;
    sdsNotaFiscalVLR_ICMSSIMPLES: TFloatField;
    sdsNotaFiscalPERC_ICMSSIMPLES: TFloatField;
    sdsNotaFiscalVLR_IMPORTACAO: TFloatField;
    sdsNotaFiscalBASE_ICMSSUBST: TFloatField;
    sdsNotaFiscalVLR_ICMSSUBST: TFloatField;
    sdsNotaFiscalBASE_ICMSOUTROS: TFloatField;
    sdsNotaFiscalVLR_ICMSOUTROS: TFloatField;
    sdsNotaFiscalVLR_DUPLICATAOUTROS: TFloatField;
    sdsNotaFiscalVLR_ADUANEIRA: TFloatField;
    sdsNotaFiscalPERC_ICMS_PISCOFINS: TFloatField;
    sdsNotaFiscalPERC_ICMS_OUTROSVALORES: TFloatField;
    sdsNotaFiscalPERC_ICMS_FRETE: TFloatField;
    sdsNotaFiscalPERC_DESCONTOORIG: TFloatField;
    sdsNotaFiscalQTDVOLUME: TIntegerField;
    sdsNotaFiscalESPECIE: TStringField;
    sdsNotaFiscalMARCA: TStringField;
    sdsNotaFiscalNUMEROVOLUME: TStringField;
    sdsNotaFiscalPESOBRUTO: TFloatField;
    sdsNotaFiscalPESOLIQUIDO: TFloatField;
    sdsNotaFiscalPLACA: TStringField;
    sdsNotaFiscalUFPLACA: TStringField;
    sdsNotaFiscalTIPO_FRETE: TStringField;
    sdsNotaFiscalID_TRANSPORTADORA: TIntegerField;
    sdsNotaFiscalID_REDESPACHO: TIntegerField;
    sdsNotaFiscalCANCELADA: TStringField;
    sdsNotaFiscalMOTIVO_CANCELADA: TStringField;
    sdsNotaFiscalDTSAIDAENTRADA: TDateField;
    sdsNotaFiscalHRSAIDAENTRADA: TTimeField;
    sdsNotaFiscalID_BANCO: TIntegerField;
    sdsNotaFiscalLOCALENTREGA: TStringField;
    sdsNotaFiscalID_EXTCOMISSAO: TIntegerField;
    sdsNotaFiscalDESCRICAO_DESC: TStringField;
    sdsNotaFiscalID_CLIENTETRIANG: TIntegerField;
    sdsNotaFiscalQTDTOTAL_ITENS: TIntegerField;
    sdsNotaFiscalNFERECIBO: TStringField;
    sdsNotaFiscalNFEPROTOCOLO: TStringField;
    sdsNotaFiscalNFECHAVEACESSO: TStringField;
    sdsNotaFiscalNFEPROTOCOLO_CANCELADA: TStringField;
    sdsNotaFiscalTIPO_ENVIONFE: TStringField;
    sdsNotaFiscalNFECODBARRA_CONTINGENCIA: TStringField;
    sdsNotaFiscalNFEVERSAO: TStringField;
    sdsNotaFiscalNFEFINALIDADE: TStringField;
    sdsNotaFiscalNFEAMBIENTE: TStringField;
    sdsNotaFiscalNUMNOTACOPIADA: TIntegerField;
    sdsNotaFiscalSERIECOPIADA: TStringField;
    sdsNotaFiscalDTCONTINGENCIA: TDateField;
    sdsNotaFiscalHRCONTINGENCIA: TTimeField;
    sdsNotaFiscalMOTIVO_CONTINGENCIA: TStringField;
    sdsNotaFiscalNFEVERSAOEMISSAO: TStringField;
    sdsNotaFiscalID_REGIMETRIB: TIntegerField;
    sdsNotaFiscalRNTC: TStringField;
    sdsNotaFiscalVAGAOBALSA_IDENTIF: TStringField;
    sdsNotaFiscalVAGAOBALSA_TIPOIDENTIF: TStringField;
    sdsNotaFiscalUFEMBEXPORTACAO: TStringField;
    sdsNotaFiscalLOCALEMBEXPORTACAO: TStringField;
    sdsNotaFiscalPISCOFINS_SOMAROUTRASDESP: TStringField;
    sdsNotaFiscalGERARDUPL_OUTROSVALORES: TStringField;
    sdsNotaFiscalGERARDUPL_FRETE: TStringField;
    sdsNotaFiscalGERARDUPL_SEGURO: TStringField;
    sdsNotaFiscalINFORMADO_NUMNOTAMANUAL: TStringField;
    sdsNotaFiscalNFEDENEGADA: TStringField;
    sdsNotaFiscalMOTIVO_DENEGADA: TStringField;
    cdsNotaFiscalFILIAL: TIntegerField;
    cdsNotaFiscalID: TIntegerField;
    cdsNotaFiscalSERIE: TStringField;
    cdsNotaFiscalNUMNOTA: TIntegerField;
    cdsNotaFiscalDTEMISSAO: TDateField;
    cdsNotaFiscalID_CFOP: TIntegerField;
    cdsNotaFiscalID_CLIENTE: TIntegerField;
    cdsNotaFiscalID_CONDPGTO: TIntegerField;
    cdsNotaFiscalID_VENDEDOR: TIntegerField;
    cdsNotaFiscalVLR_ICMS: TFloatField;
    cdsNotaFiscalVLR_IPI: TFloatField;
    cdsNotaFiscalVLR_NOTA: TFloatField;
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
    cdsNotaFiscalGERARDUPL_OUTROSVALORES: TStringField;
    cdsNotaFiscalGERARDUPL_FRETE: TStringField;
    cdsNotaFiscalGERARDUPL_SEGURO: TStringField;
    cdsNotaFiscalINFORMADO_NUMNOTAMANUAL: TStringField;
    cdsNotaFiscalNFEDENEGADA: TStringField;
    cdsNotaFiscalMOTIVO_DENEGADA: TStringField;
    dsNotaFiscal_Mestre: TDataSource;
    sdsNotaFiscal_Itens: TSQLDataSet;
    cdsNotaFiscal_Itens: TClientDataSet;
    dsNotaFiscal_Itens: TDataSource;
    sdsNotaFiscal_Desconto: TSQLDataSet;
    cdsNotaFiscal_Desconto: TClientDataSet;
    dsNotaFiscal_Desconto: TDataSource;
    sdsNotaFiscal_Lacre: TSQLDataSet;
    cdsNotaFiscal_Lacre: TClientDataSet;
    dsNotaFiscal_Lacre: TDataSource;
    sdsNotaFiscal_NFe: TSQLDataSet;
    cdsNotaFiscal_NFe: TClientDataSet;
    dsNotaFiscal_NFe: TDataSource;
    sdsNotaFiscal_Parc: TSQLDataSet;
    cdsNotaFiscal_Parc: TClientDataSet;
    dsNotaFiscal_Parc: TDataSource;
    sdsNotaFiscal_Reboque: TSQLDataSet;
    cdsNotaFiscal_Reboque: TClientDataSet;
    dsNotaFiscal_Reboque: TDataSource;
    sdsNotaFiscal_ItensID: TIntegerField;
    sdsNotaFiscal_ItensITEM: TIntegerField;
    sdsNotaFiscal_ItensID_PRODUTO: TIntegerField;
    sdsNotaFiscal_ItensID_COR: TIntegerField;
    sdsNotaFiscal_ItensTAMANHO: TStringField;
    sdsNotaFiscal_ItensID_NCM: TIntegerField;
    sdsNotaFiscal_ItensUNIDADE: TStringField;
    sdsNotaFiscal_ItensQTD: TFloatField;
    sdsNotaFiscal_ItensID_CFOP: TIntegerField;
    sdsNotaFiscal_ItensID_CSTICMS: TIntegerField;
    sdsNotaFiscal_ItensID_CSTIPI: TIntegerField;
    sdsNotaFiscal_ItensID_PIS: TIntegerField;
    sdsNotaFiscal_ItensID_COFINS: TIntegerField;
    sdsNotaFiscal_ItensPERC_ICMS: TFloatField;
    sdsNotaFiscal_ItensPERC_IPI: TFloatField;
    sdsNotaFiscal_ItensVLR_UNITARIO: TFloatField;
    sdsNotaFiscal_ItensVLR_TOTAL: TFloatField;
    sdsNotaFiscal_ItensPERC_DESCONTO: TFloatField;
    sdsNotaFiscal_ItensVLR_DESCONTO: TFloatField;
    sdsNotaFiscal_ItensBASE_ICMS: TFloatField;
    sdsNotaFiscal_ItensVLR_ICMS: TFloatField;
    sdsNotaFiscal_ItensVLR_IPI: TFloatField;
    sdsNotaFiscal_ItensPERC_PIS: TFloatField;
    sdsNotaFiscal_ItensPERC_COFINS: TFloatField;
    sdsNotaFiscal_ItensVLR_PIS: TFloatField;
    sdsNotaFiscal_ItensVLR_COFINS: TFloatField;
    sdsNotaFiscal_ItensORIGEM_PROD: TStringField;
    sdsNotaFiscal_ItensBASE_ICMSSIMPLES: TFloatField;
    sdsNotaFiscal_ItensVLR_ICMSSIMPLES: TFloatField;
    sdsNotaFiscal_ItensCALCULARICMSSOBREIPI: TStringField;
    sdsNotaFiscal_ItensNOME_PRODUTO: TStringField;
    sdsNotaFiscal_ItensREFERENCIA: TStringField;
    sdsNotaFiscal_ItensID_MOVESTOQUE: TIntegerField;
    sdsNotaFiscal_ItensGERAR_DUPLICATA: TStringField;
    sdsNotaFiscal_ItensNUMERO_OC: TStringField;
    sdsNotaFiscal_ItensNUMERO_OS: TStringField;
    sdsNotaFiscal_ItensITEM_PEDIDO: TIntegerField;
    sdsNotaFiscal_ItensPERC_COMISSAO: TFloatField;
    sdsNotaFiscal_ItensQTDRESTANTE: TFloatField;
    sdsNotaFiscal_ItensQTDDEVOLVIDA: TFloatField;
    sdsNotaFiscal_ItensSOMAR_TRANSF_ICMS: TStringField;
    sdsNotaFiscal_ItensOBS_COMPLEMENTAR: TStringField;
    sdsNotaFiscal_ItensSOMAR_VLRTOTALPRODUTO: TStringField;
    sdsNotaFiscal_ItensVLR_FRETE: TFloatField;
    sdsNotaFiscal_ItensVLR_OUTRASDESPESAS: TFloatField;
    sdsNotaFiscal_ItensVLR_SEGURO: TFloatField;
    sdsNotaFiscal_ItensVLR_ICMSFRETE: TFloatField;
    sdsNotaFiscal_ItensVLR_ICMSOUTRASDESPESAS: TFloatField;
    sdsNotaFiscal_ItensBASE_ICMSSUBST: TFloatField;
    sdsNotaFiscal_ItensVLR_ICMSSUBST: TFloatField;
    sdsNotaFiscal_ItensVLR_IMPORTACAO: TFloatField;
    sdsNotaFiscal_ItensVLR_ADUANEIRA: TFloatField;
    cdsNotaFiscalsdsNotaFiscal_Itens: TDataSetField;
    cdsNotaFiscal_ItensID: TIntegerField;
    cdsNotaFiscal_ItensITEM: TIntegerField;
    cdsNotaFiscal_ItensID_PRODUTO: TIntegerField;
    cdsNotaFiscal_ItensID_COR: TIntegerField;
    cdsNotaFiscal_ItensTAMANHO: TStringField;
    cdsNotaFiscal_ItensID_NCM: TIntegerField;
    cdsNotaFiscal_ItensUNIDADE: TStringField;
    cdsNotaFiscal_ItensQTD: TFloatField;
    cdsNotaFiscal_ItensID_CFOP: TIntegerField;
    cdsNotaFiscal_ItensID_CSTICMS: TIntegerField;
    cdsNotaFiscal_ItensID_CSTIPI: TIntegerField;
    cdsNotaFiscal_ItensID_PIS: TIntegerField;
    cdsNotaFiscal_ItensID_COFINS: TIntegerField;
    cdsNotaFiscal_ItensPERC_ICMS: TFloatField;
    cdsNotaFiscal_ItensPERC_IPI: TFloatField;
    cdsNotaFiscal_ItensVLR_UNITARIO: TFloatField;
    cdsNotaFiscal_ItensVLR_TOTAL: TFloatField;
    cdsNotaFiscal_ItensPERC_DESCONTO: TFloatField;
    cdsNotaFiscal_ItensVLR_DESCONTO: TFloatField;
    cdsNotaFiscal_ItensBASE_ICMS: TFloatField;
    cdsNotaFiscal_ItensVLR_ICMS: TFloatField;
    cdsNotaFiscal_ItensVLR_IPI: TFloatField;
    cdsNotaFiscal_ItensPERC_PIS: TFloatField;
    cdsNotaFiscal_ItensPERC_COFINS: TFloatField;
    cdsNotaFiscal_ItensVLR_PIS: TFloatField;
    cdsNotaFiscal_ItensVLR_COFINS: TFloatField;
    cdsNotaFiscal_ItensORIGEM_PROD: TStringField;
    cdsNotaFiscal_ItensBASE_ICMSSIMPLES: TFloatField;
    cdsNotaFiscal_ItensVLR_ICMSSIMPLES: TFloatField;
    cdsNotaFiscal_ItensCALCULARICMSSOBREIPI: TStringField;
    cdsNotaFiscal_ItensNOME_PRODUTO: TStringField;
    cdsNotaFiscal_ItensREFERENCIA: TStringField;
    cdsNotaFiscal_ItensID_MOVESTOQUE: TIntegerField;
    cdsNotaFiscal_ItensGERAR_DUPLICATA: TStringField;
    cdsNotaFiscal_ItensNUMERO_OC: TStringField;
    cdsNotaFiscal_ItensNUMERO_OS: TStringField;
    cdsNotaFiscal_ItensITEM_PEDIDO: TIntegerField;
    cdsNotaFiscal_ItensPERC_COMISSAO: TFloatField;
    cdsNotaFiscal_ItensQTDRESTANTE: TFloatField;
    cdsNotaFiscal_ItensQTDDEVOLVIDA: TFloatField;
    cdsNotaFiscal_ItensSOMAR_TRANSF_ICMS: TStringField;
    cdsNotaFiscal_ItensOBS_COMPLEMENTAR: TStringField;
    cdsNotaFiscal_ItensSOMAR_VLRTOTALPRODUTO: TStringField;
    cdsNotaFiscal_ItensVLR_FRETE: TFloatField;
    cdsNotaFiscal_ItensVLR_OUTRASDESPESAS: TFloatField;
    cdsNotaFiscal_ItensVLR_SEGURO: TFloatField;
    cdsNotaFiscal_ItensVLR_ICMSFRETE: TFloatField;
    cdsNotaFiscal_ItensVLR_ICMSOUTRASDESPESAS: TFloatField;
    cdsNotaFiscal_ItensBASE_ICMSSUBST: TFloatField;
    cdsNotaFiscal_ItensVLR_ICMSSUBST: TFloatField;
    cdsNotaFiscal_ItensVLR_IMPORTACAO: TFloatField;
    cdsNotaFiscal_ItensVLR_ADUANEIRA: TFloatField;
    sdsNotaFiscal_DescontoID: TIntegerField;
    sdsNotaFiscal_DescontoITEM: TIntegerField;
    sdsNotaFiscal_DescontoPERC_DESCONTO: TFloatField;
    cdsNotaFiscalsdsNotaFiscal_Desconto: TDataSetField;
    cdsNotaFiscal_DescontoID: TIntegerField;
    cdsNotaFiscal_DescontoITEM: TIntegerField;
    cdsNotaFiscal_DescontoPERC_DESCONTO: TFloatField;
    sdsNotaFiscal_LacreID: TIntegerField;
    sdsNotaFiscal_LacreITEM: TIntegerField;
    sdsNotaFiscal_LacreNUMLACRE: TStringField;
    cdsNotaFiscalsdsNotaFiscal_Lacre: TDataSetField;
    cdsNotaFiscal_LacreID: TIntegerField;
    cdsNotaFiscal_LacreITEM: TIntegerField;
    cdsNotaFiscal_LacreNUMLACRE: TStringField;
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
    cdsNotaFiscalsdsNotaFiscal_NFe: TDataSetField;
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
    sdsNotaFiscal_ParcID: TIntegerField;
    sdsNotaFiscal_ParcITEM: TIntegerField;
    sdsNotaFiscal_ParcDTVENCIMENTO: TDateField;
    sdsNotaFiscal_ParcVLR_VENCIMENTO: TFloatField;
    sdsNotaFiscal_ParcID_TIPOCOBRANCA: TIntegerField;
    sdsNotaFiscal_ParcID_CONTA: TIntegerField;
    cdsNotaFiscalsdsNotaFiscal_Parc: TDataSetField;
    cdsNotaFiscal_ParcID: TIntegerField;
    cdsNotaFiscal_ParcITEM: TIntegerField;
    cdsNotaFiscal_ParcDTVENCIMENTO: TDateField;
    cdsNotaFiscal_ParcVLR_VENCIMENTO: TFloatField;
    cdsNotaFiscal_ParcID_TIPOCOBRANCA: TIntegerField;
    cdsNotaFiscal_ParcID_CONTA: TIntegerField;
    sdsNotaFiscal_ReboqueID: TIntegerField;
    sdsNotaFiscal_ReboqueITEM: TIntegerField;
    sdsNotaFiscal_ReboquePLACA: TStringField;
    sdsNotaFiscal_ReboqueUF: TStringField;
    sdsNotaFiscal_ReboqueRNTC: TStringField;
    cdsNotaFiscalsdsNotaFiscal_Reboque: TDataSetField;
    cdsNotaFiscal_ReboqueID: TIntegerField;
    cdsNotaFiscal_ReboqueITEM: TIntegerField;
    cdsNotaFiscal_ReboquePLACA: TStringField;
    cdsNotaFiscal_ReboqueUF: TStringField;
    cdsNotaFiscal_ReboqueRNTC: TStringField;
    sdsNotaFiscal_Ref: TSQLDataSet;
    cdsNotaFiscal_Ref: TClientDataSet;
    dsNotaFiscal_Ref: TDataSource;
    sdsNotaFiscal_RefID: TIntegerField;
    sdsNotaFiscal_RefITEM: TIntegerField;
    sdsNotaFiscal_RefTIPO: TStringField;
    sdsNotaFiscal_RefID_NOTAREF: TIntegerField;
    sdsNotaFiscal_RefNUMNOTA_REF: TIntegerField;
    sdsNotaFiscal_RefSERIE_REF: TStringField;
    sdsNotaFiscal_RefUF_REF: TStringField;
    sdsNotaFiscal_RefANO_REF: TIntegerField;
    sdsNotaFiscal_RefMES_REF: TIntegerField;
    sdsNotaFiscal_RefCNPJ_REF: TStringField;
    sdsNotaFiscal_RefMODELO_REF: TStringField;
    sdsNotaFiscal_RefNFECHAVEACESSO_REF: TStringField;
    sdsNotaFiscal_RefID_FORNECEDOR: TIntegerField;
    sdsNotaFiscal_RefDESCRICAO_TIPO: TStringField;
    sdsNotaFiscal_RefCUPOM_NUMECF: TIntegerField;
    sdsNotaFiscal_RefCUPOM_NUMCOO: TIntegerField;
    sdsNotaFiscal_RefCUPOM_MODELO: TStringField;
    sdsNotaFiscal_RefINSCESTADUAL_REF: TStringField;
    cdsNotaFiscalsdsNotaFiscal_Ref: TDataSetField;
    cdsNotaFiscal_RefID: TIntegerField;
    cdsNotaFiscal_RefITEM: TIntegerField;
    cdsNotaFiscal_RefTIPO: TStringField;
    cdsNotaFiscal_RefID_NOTAREF: TIntegerField;
    cdsNotaFiscal_RefNUMNOTA_REF: TIntegerField;
    cdsNotaFiscal_RefSERIE_REF: TStringField;
    cdsNotaFiscal_RefUF_REF: TStringField;
    cdsNotaFiscal_RefANO_REF: TIntegerField;
    cdsNotaFiscal_RefMES_REF: TIntegerField;
    cdsNotaFiscal_RefCNPJ_REF: TStringField;
    cdsNotaFiscal_RefMODELO_REF: TStringField;
    cdsNotaFiscal_RefNFECHAVEACESSO_REF: TStringField;
    cdsNotaFiscal_RefID_FORNECEDOR: TIntegerField;
    cdsNotaFiscal_RefDESCRICAO_TIPO: TStringField;
    cdsNotaFiscal_RefCUPOM_NUMECF: TIntegerField;
    cdsNotaFiscal_RefCUPOM_NUMCOO: TIntegerField;
    cdsNotaFiscal_RefCUPOM_MODELO: TStringField;
    cdsNotaFiscal_RefINSCESTADUAL_REF: TStringField;
    dsNotaFiscal_Mestre_Item: TDataSource;
    sdsNotaFiscal_Ped: TSQLDataSet;
    cdsNotaFiscal_Ped: TClientDataSet;
    dsNotaFiscal_Ped: TDataSource;
    sdsNotaFiscal_PedID: TIntegerField;
    sdsNotaFiscal_PedITEM: TIntegerField;
    sdsNotaFiscal_PedITEM_PEDIDO: TIntegerField;
    sdsNotaFiscal_PedQTD: TFloatField;
    cdsNotaFiscal_ItenssdsNotaFiscal_Ped: TDataSetField;
    cdsNotaFiscal_PedID: TIntegerField;
    cdsNotaFiscal_PedITEM: TIntegerField;
    cdsNotaFiscal_PedITEM_PEDIDO: TIntegerField;
    cdsNotaFiscal_PedQTD: TFloatField;
    sdsNotaFiscal_NDevolvida: TSQLDataSet;
    sdsNotaFiscal_NDevolvidaID: TIntegerField;
    sdsNotaFiscal_NDevolvidaITEM: TIntegerField;
    sdsNotaFiscal_NDevolvidaITEM_NDEV: TIntegerField;
    sdsNotaFiscal_NDevolvidaID_FORNECEDOR: TIntegerField;
    sdsNotaFiscal_NDevolvidaFILIAL_NTE: TIntegerField;
    sdsNotaFiscal_NDevolvidaID_NTE: TIntegerField;
    sdsNotaFiscal_NDevolvidaITEM_NTE: TIntegerField;
    sdsNotaFiscal_NDevolvidaQTD: TFloatField;
    sdsNotaFiscal_NDevolvidaNFECHAVEACESSO_NTE: TStringField;
    cdsNotaFiscal_ItenssdsNotaFiscal_NDevolvida: TDataSetField;
    cdsNotaFiscal_NDevolvida: TClientDataSet;
    cdsNotaFiscal_NDevolvidaID: TIntegerField;
    cdsNotaFiscal_NDevolvidaITEM: TIntegerField;
    cdsNotaFiscal_NDevolvidaITEM_NDEV: TIntegerField;
    cdsNotaFiscal_NDevolvidaID_FORNECEDOR: TIntegerField;
    cdsNotaFiscal_NDevolvidaFILIAL_NTE: TIntegerField;
    cdsNotaFiscal_NDevolvidaID_NTE: TIntegerField;
    cdsNotaFiscal_NDevolvidaITEM_NTE: TIntegerField;
    cdsNotaFiscal_NDevolvidaQTD: TFloatField;
    cdsNotaFiscal_NDevolvidaNFECHAVEACESSO_NTE: TStringField;
    dsNotaFiscal_NDevolvida: TDataSource;
    sdsNotaFiscal_Imp: TSQLDataSet;
    cdsNotaFiscal_Imp: TClientDataSet;
    dsNotaFiscal_Imp: TDataSource;
    dsNotaFiscal_Mestre_Imp: TDataSource;
    cdsNotaFiscal_Imp_Ad: TClientDataSet;
    dsNotaFiscal_Imp_Ad: TDataSource;
    sdsCliente: TSQLDataSet;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    dsCliente: TDataSource;
    sdsVendedor: TSQLDataSet;
    dspVendedor: TDataSetProvider;
    cdsVendedor: TClientDataSet;
    dsVendedor: TDataSource;
    cdsVendedorCODIGO: TIntegerField;
    cdsVendedorNOME: TStringField;
    sdsTransportadora: TSQLDataSet;
    dspTransportadora: TDataSetProvider;
    cdsTransportadora: TClientDataSet;
    dsTransportadora: TDataSource;
    cdsTransportadoraCODIGO: TIntegerField;
    cdsTransportadoraNOME: TStringField;
    sdsCFOP: TSQLDataSet;
    dspCFOP: TDataSetProvider;
    cdsCFOP: TClientDataSet;
    dsCFOP: TDataSource;
    sdsNotaFiscal_Consulta: TSQLDataSet;
    dspNotaFiscal_Consulta: TDataSetProvider;
    cdsNotaFiscal_Consulta: TClientDataSet;
    dsNotaFiscal_Consulta: TDataSource;
    qProximaNota: TSQLQuery;
    qProximaNotaNUMNOTA: TIntegerField;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    sdsUF: TSQLDataSet;
    dspUF: TDataSetProvider;
    cdsUF: TClientDataSet;
    dsUF: TDataSource;
    cdsUFUF: TStringField;
    sdsObs_Aux: TSQLDataSet;
    cdsObs_Aux: TClientDataSet;
    dsObs_Aux: TDataSource;
    dspObs_Aux: TDataSetProvider;
    cdsObs_AuxID: TIntegerField;
    cdsObs_AuxNOME: TStringField;
    cdsObs_AuxOBS: TStringField;
    sdsNotaFiscalDADOS_ADICIONAIS: TMemoField;
    cdsNotaFiscalDADOS_ADICIONAIS: TMemoField;
    sdsNotaFiscalBASE_ICMS: TFloatField;
    cdsNotaFiscalBASE_ICMS: TFloatField;
    sdsNotaFiscalDTINICIO_DUPLICATA: TDateField;
    cdsNotaFiscalDTINICIO_DUPLICATA: TDateField;
    sdsTipoCobranca: TSQLDataSet;
    dspTipoCobranca: TDataSetProvider;
    cdsTipoCobranca: TClientDataSet;
    dsTipoCobranca: TDataSource;
    cdsTipoCobrancaID: TIntegerField;
    cdsTipoCobrancaNOME: TStringField;
    cdsTipoCobrancaDESCONTADO: TStringField;
    cdsTipoCobrancaDEPOSITO: TStringField;
    cdsTipoCobrancaGERARBOLETO: TStringField;
    cdsTipoCobrancaQTDDIAS: TIntegerField;
    cdsTipoCobrancaCARTAOCREDITO: TStringField;
    cdsTipoCobrancaCHEQUE: TStringField;
    cdsTipoCobrancaDINHEIRO: TStringField;
    cdsTipoCobrancaMOSTRARNOCUPOM: TStringField;
    sdsContas: TSQLDataSet;
    dspContas: TDataSetProvider;
    cdsContas: TClientDataSet;
    dsContas: TDataSource;
    cdsContasID: TIntegerField;
    sdsProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    dsProduto: TDataSource;
    sdsUnidade: TSQLDataSet;
    dspUnidade: TDataSetProvider;
    cdsUnidade: TClientDataSet;
    dsUnidade: TDataSource;
    cdsUnidadeUNIDADE: TStringField;
    cdsUnidadeCONVERSOR: TFloatField;
    cdsUnidadeNOME: TStringField;
    cdsUFPERC_ICMS: TFloatField;
    cdsUFIDPAIS: TIntegerField;
    cdsUFCODUF: TStringField;
    cdsUFPERC_ICMS_INTERNO: TFloatField;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    cdsFilialENDERECO: TStringField;
    cdsFilialCOMPLEMENTO_END: TStringField;
    cdsFilialNUM_END: TStringField;
    cdsFilialBAIRRO: TStringField;
    cdsFilialCEP: TStringField;
    cdsFilialID_CIDADE: TIntegerField;
    cdsFilialCIDADE: TStringField;
    cdsFilialUF: TStringField;
    cdsFilialDDD1: TIntegerField;
    cdsFilialFONE1: TStringField;
    cdsFilialDDD2: TIntegerField;
    cdsFilialFONE: TStringField;
    cdsFilialDDDFAX: TIntegerField;
    cdsFilialFAX: TStringField;
    cdsFilialPESSOA: TStringField;
    cdsFilialCNPJ_CPF: TStringField;
    cdsFilialINSCR_EST: TStringField;
    cdsFilialSIMPLES: TStringField;
    cdsFilialENDLOGO: TStringField;
    cdsFilialCALCULAR_IPI: TStringField;
    cdsFilialINATIVO: TStringField;
    cdsFilialINSCMUNICIPAL: TStringField;
    cdsFilialCNAE: TStringField;
    cdsFilialHOMEPAGE: TStringField;
    cdsFilialID_REGIME_TRIB: TIntegerField;
    cdsFilialID_PIS: TIntegerField;
    cdsFilialID_COFINS: TIntegerField;
    cdsFilialTIPO_PIS: TStringField;
    cdsFilialTIPO_COFINS: TStringField;
    cdsFilialPERC_PIS: TFloatField;
    cdsFilialPERC_COFINS: TFloatField;
    cdsFilialID_CSTICMS: TIntegerField;
    cdsFilialID_CSTIPI: TIntegerField;
    cdsFilialEMAIL_NFE: TStringField;
    cdsFilialDTESTOQUE: TDateField;
    sdsNotaFiscal_ItensGERAR_ESTOQUE: TStringField;
    cdsNotaFiscal_ItensGERAR_ESTOQUE: TStringField;
    sdsParametros: TSQLDataSet;
    dspParametros: TDataSetProvider;
    cdsParametros: TClientDataSet;
    cdsParametrosID: TIntegerField;
    cdsParametrosENDXMLNFE: TStringField;
    cdsParametrosENDPDFNFE: TStringField;
    cdsParametrosSERIENORMAL: TStringField;
    cdsParametrosSERIECONTINGENCIA: TStringField;
    cdsParametrosLOCALSERVIDORNFE: TStringField;
    cdsParametrosEMAILRESPONSAVELSISTEMA: TStringField;
    cdsParametrosNFEPRODUCAO: TStringField;
    cdsParametrosANEXARDANFE: TStringField;
    cdsParametrosVERSAONFE: TStringField;
    cdsParametrosVERSAOEMISSAONFE: TStringField;
    cdsParametrosTIPOLOGONFE: TStringField;
    cdsParametrosAPLICARDESCONTONOICMS: TStringField;
    cdsParametrosAPLICARDESCONTONOIPI: TStringField;
    cdsParametrosSOMARNOPROD_FRETE: TStringField;
    cdsParametrosSOMARNOPROD_OUTRASDESP: TStringField;
    cdsParametrosSOMARNOPROD_SEGURO: TStringField;
    cdsParametrosAJUSTELOGONFEAUTOMATICO: TStringField;
    cdsParametrosINFNUMNOTAMANUAL: TStringField;
    cdsParametrosOPCAO_DTENTREGAPEDIDO: TStringField;
    sdsNotaFiscalTIPO_DESCONTO: TStringField;
    cdsNotaFiscalTIPO_DESCONTO: TStringField;
    qTotalItem: TSQLQuery;
    qTotalItemVLRTOTAL: TFloatField;
    qTotalItemQTDITENS: TIntegerField;
    qTotalItemGERAR_DUPLICATA: TStringField;
    sdsNotaFiscal_ItensVLR_DESCONTORATEIO: TFloatField;
    cdsNotaFiscal_ItensVLR_DESCONTORATEIO: TFloatField;
    sdsTab_CSTICMS: TSQLDataSet;
    dspTab_CSTICMS: TDataSetProvider;
    cdsTab_CSTICMS: TClientDataSet;
    dsTab_CSTICMS: TDataSource;
    cdsTab_CSTICMSID: TIntegerField;
    cdsTab_CSTICMSPERCENTUAL: TFloatField;
    cdsTab_CSTICMSHISTORICO: TMemoField;
    cdsTab_CSTICMSTIPO: TStringField;
    cdsTab_CSTICMSNOME: TStringField;
    sdsTab_CSTIPI: TSQLDataSet;
    dspTab_CSTIPI: TDataSetProvider;
    cdsTab_CSTIPI: TClientDataSet;
    dsTab_CSTIPI: TDataSource;
    cdsTab_CSTIPIID: TIntegerField;
    cdsTab_CSTIPICOD_IPI: TStringField;
    cdsTab_CSTIPINOME: TStringField;
    sdsOrigem_Prod: TSQLDataSet;
    dspOrigem_Prod: TDataSetProvider;
    cdsOrigem_Prod: TClientDataSet;
    dsOrigem_Prod: TDataSource;
    cdsTab_CSTIPIGERAR_IPI: TStringField;
    cdsOrigem_ProdORIGEM: TStringField;
    cdsOrigem_ProdNOME: TStringField;
    sdsTab_NCM: TSQLDataSet;
    dspTab_NCM: TDataSetProvider;
    cdsTab_NCM: TClientDataSet;
    dsTab_NCM: TDataSource;
    cdsTab_NCMID: TIntegerField;
    cdsTab_NCMNCM: TStringField;
    sdsTab_Pis: TSQLDataSet;
    dspTab_Pis: TDataSetProvider;
    cdsTab_Pis: TClientDataSet;
    dsTab_Pis: TDataSource;
    cdsTab_PisID: TIntegerField;
    cdsTab_PisCODIGO: TStringField;
    cdsTab_PisNOME: TStringField;
    sdsTab_Cofins: TSQLDataSet;
    dspTab_Cofins: TDataSetProvider;
    cdsTab_Cofins: TClientDataSet;
    dsTab_Cofins: TDataSource;
    cdsTab_CofinsID: TIntegerField;
    cdsTab_CofinsNOME: TStringField;
    cdsTab_CofinsCODIGO: TStringField;
    cdsTab_CSTICMSCOD_CST: TStringField;
    sdsNotaFiscal_ItensNCM: TStringField;
    cdsNotaFiscal_ItensNCM: TStringField;
    sdsNotaFiscalTIPO_PRAZO: TStringField;
    cdsNotaFiscalTIPO_PRAZO: TStringField;
    sdsCondPgto: TSQLDataSet;
    dspCondPgto: TDataSetProvider;
    cdsCondPgto: TClientDataSet;
    dsCondPgto: TDataSource;
    sdsCondPgtoID: TIntegerField;
    sdsCondPgtoNOME: TStringField;
    sdsCondPgtoTIPO: TStringField;
    cdsCondPgtoID: TIntegerField;
    cdsCondPgtoNOME: TStringField;
    cdsCondPgtoTIPO: TStringField;
    dsCondPgto_Mestre: TDataSource;
    sdsCondPgto_Dia: TSQLDataSet;
    sdsCondPgto_DiaID: TIntegerField;
    sdsCondPgto_DiaITEM: TIntegerField;
    sdsCondPgto_DiaQTDDIAS: TIntegerField;
    cdsCondPgto_Dia: TClientDataSet;
    cdsCondPgtosdsCondPgto_Dia: TDataSetField;
    cdsCondPgto_DiaID: TIntegerField;
    cdsCondPgto_DiaITEM: TIntegerField;
    cdsCondPgto_DiaQTDDIAS: TIntegerField;
    sdsNotaFiscalPERC_COMISSAO: TFloatField;
    cdsNotaFiscalPERC_COMISSAO: TFloatField;
    cdsVendedorPERC_COMISSAO: TFloatField;
    sdsNotaFiscalTIPO_NOTA: TStringField;
    cdsNotaFiscalTIPO_NOTA: TStringField;
    cdsNotaFiscal_ConsultaID: TIntegerField;
    cdsNotaFiscal_ConsultaFILIAL: TIntegerField;
    cdsNotaFiscal_ConsultaSERIE: TStringField;
    cdsNotaFiscal_ConsultaNUMNOTA: TIntegerField;
    cdsNotaFiscal_ConsultaDTEMISSAO: TDateField;
    cdsNotaFiscal_ConsultaID_CFOP: TIntegerField;
    cdsNotaFiscal_ConsultaID_CLIENTE: TIntegerField;
    cdsNotaFiscal_ConsultaID_CONDPGTO: TIntegerField;
    cdsNotaFiscal_ConsultaID_VENDEDOR: TIntegerField;
    cdsNotaFiscal_ConsultaVLR_NOTA: TFloatField;
    cdsNotaFiscal_ConsultaVLR_DUPLICATA: TFloatField;
    cdsNotaFiscal_ConsultaVLR_ENTRADA: TFloatField;
    cdsNotaFiscal_ConsultaCANCELADA: TStringField;
    cdsNotaFiscal_ConsultaDTSAIDAENTRADA: TDateField;
    cdsNotaFiscal_ConsultaID_CLIENTETRIANG: TIntegerField;
    cdsNotaFiscal_ConsultaNFERECIBO: TStringField;
    cdsNotaFiscal_ConsultaNFEPROTOCOLO: TStringField;
    cdsNotaFiscal_ConsultaNFECHAVEACESSO: TStringField;
    cdsNotaFiscal_ConsultaNFEPROTOCOLO_CANCELADA: TStringField;
    cdsNotaFiscal_ConsultaNFEVERSAO: TStringField;
    cdsNotaFiscal_ConsultaNFEFINALIDADE: TStringField;
    cdsNotaFiscal_ConsultaNFEAMBIENTE: TStringField;
    cdsNotaFiscal_ConsultaNFEDENEGADA: TStringField;
    cdsNotaFiscal_ConsultaNOMECLIENTE: TStringField;
    cdsNotaFiscal_ConsultaCODCFOP: TStringField;
    cdsNotaFiscal_ConsultaTIPO_NOTA: TStringField;
    sdsNFe_Email: TSQLDataSet;
    dspNFe_Email: TDataSetProvider;
    cdsNFe_Email: TClientDataSet;
    dsNFe_Email: TDataSource;
    cdsNFe_EmailID: TIntegerField;
    cdsNFe_EmailNOME: TStringField;
    cdsNFe_EmailEMAIL: TStringField;
    qNatOper: TSQLQuery;
    qNatOperCODCFOP: TStringField;
    cdsTransportadoraEMAIL_NFE: TStringField;
    cdsTransportadoraENDERECO: TStringField;
    cdsTransportadoraNUM_END: TStringField;
    cdsTransportadoraCOMPLEMENTO_END: TStringField;
    cdsTransportadoraBAIRRO: TStringField;
    cdsTransportadoraID_CIDADE: TIntegerField;
    cdsTransportadoraUF: TStringField;
    cdsTransportadoraCNPJ_CPF: TStringField;
    cdsTransportadoraINSCR_EST: TStringField;
    mCCe: TClientDataSet;
    mCCeNumSequencial: TIntegerField;
    mCCeObs: TWideStringField;
    mCCeNumProtocolo: TStringField;
    dsmCCe: TDataSource;
    sdsNotaFiscal_NDevolvidaNUMNOTA_ENTRADA: TIntegerField;
    sdsNotaFiscal_NDevolvidaSERIE_ENTRADA: TStringField;
    cdsNotaFiscal_NDevolvidaNUMNOTA_ENTRADA: TIntegerField;
    cdsNotaFiscal_NDevolvidaSERIE_ENTRADA: TStringField;
    sdsNotaFiscal_NDevolvidaMODELO: TStringField;
    cdsNotaFiscal_NDevolvidaMODELO: TStringField;
    sdsNotaFiscal_NDevolvidaNOMEFORNECEDOR: TStringField;
    cdsNotaFiscal_NDevolvidaNOMEFORNECEDOR: TStringField;
    sdsNotaFiscal_NDevolvidaCNPJ_CPF: TStringField;
    sdsNotaFiscal_NDevolvidaUF: TStringField;
    cdsNotaFiscal_NDevolvidaCNPJ_CPF: TStringField;
    cdsNotaFiscal_NDevolvidaUF: TStringField;
    cdsParametrosOBS_SIMPLES: TStringField;
    cdsParametrosIMP_OBSSIMPLES: TStringField;
    cdsContasNOME: TStringField;
    sdsNotaFiscal_CCe: TSQLDataSet;
    cdsNotaFiscal_CCe: TClientDataSet;
    dsNotaFical_CCe: TDataSource;
    sdsNotaFiscal_CCeID: TIntegerField;
    sdsNotaFiscal_CCeITEM: TIntegerField;
    sdsNotaFiscal_CCeTIPO: TStringField;
    sdsNotaFiscal_CCeITEMTIPO: TIntegerField;
    sdsNotaFiscal_CCeDESCRICAO: TStringField;
    sdsNotaFiscal_CCeMOTIVO: TMemoField;
    sdsNotaFiscal_CCeNFEPROTOCOLO: TStringField;
    sdsNotaFiscal_CCeNFERECIBO: TStringField;
    sdsNotaFiscal_CCeDATAHORAAUT: TSQLTimeStampField;
    sdsNotaFiscal_CCeXML: TMemoField;
    sdsNotaFiscal_CCeDTCADASTRO: TDateField;
    sdsNotaFiscal_CCeHRCADASTRO: TTimeField;
    dspNotaFiscal_CCe: TDataSetProvider;
    cdsNotaFiscal_CCeID: TIntegerField;
    cdsNotaFiscal_CCeITEM: TIntegerField;
    cdsNotaFiscal_CCeTIPO: TStringField;
    cdsNotaFiscal_CCeITEMTIPO: TIntegerField;
    cdsNotaFiscal_CCeDESCRICAO: TStringField;
    cdsNotaFiscal_CCeMOTIVO: TMemoField;
    cdsNotaFiscal_CCeNFEPROTOCOLO: TStringField;
    cdsNotaFiscal_CCeNFERECIBO: TStringField;
    cdsNotaFiscal_CCeDATAHORAAUT: TSQLTimeStampField;
    cdsNotaFiscal_CCeXML: TMemoField;
    cdsNotaFiscal_CCeDTCADASTRO: TDateField;
    cdsNotaFiscal_CCeHRCADASTRO: TTimeField;
    qPercentual_Simples: TSQLQuery;
    qPercentual_SimplesID: TIntegerField;
    qPercentual_SimplesFILIAL: TIntegerField;
    qPercentual_SimplesANO: TIntegerField;
    qPercentual_SimplesMES: TIntegerField;
    qPercentual_SimplesPERCENTUAL: TFloatField;
    qRegime_Trib: TSQLQuery;
    qRegime_TribID: TIntegerField;
    qRegime_TribCODIGO: TIntegerField;
    qRegime_TribNOME: TStringField;
    sdsNotaFiscalSIMPLES_FILIAL: TStringField;
    cdsNotaFiscalSIMPLES_FILIAL: TStringField;
    sdsNotaFiscal_ItensTIPO_PIS: TStringField;
    sdsNotaFiscal_ItensTIPO_COFINS: TStringField;
    cdsNotaFiscal_ItensTIPO_PIS: TStringField;
    cdsNotaFiscal_ItensTIPO_COFINS: TStringField;
    sdsNotaFiscalFILIAL: TIntegerField;
    sdsNotaFiscalSERIE: TStringField;
    sdsNotaFiscalTIPO_REG: TStringField;
    cdsNotaFiscalTIPO_REG: TStringField;
    cdsNotaFiscal_ConsultaTIPO_REG: TStringField;
    sdsNotaFiscal_ItensCODCFOP: TStringField;
    cdsNotaFiscal_ItensCODCFOP: TStringField;
    sdsNotaFiscal_ItensCOD_CST: TStringField;
    sdsNotaFiscal_ItensCOD_IPI: TStringField;
    sdsNotaFiscal_ItensCODCOFINS: TStringField;
    sdsNotaFiscal_ItensCODPIS: TStringField;
    cdsNotaFiscal_ItensCOD_CST: TStringField;
    cdsNotaFiscal_ItensCOD_IPI: TStringField;
    cdsNotaFiscal_ItensCODCOFINS: TStringField;
    cdsNotaFiscal_ItensCODPIS: TStringField;
    cdsParametrosIMP_REFERENCIANANOTA: TStringField;
    cdsParametrosENVIARNOTABENEF_NANFE: TStringField;
    cdsParametrosESPECIE_NOTA: TStringField;
    cdsParametrosMARCA_NOTA: TStringField;
    sdsDuplicata: TSQLDataSet;
    dspDuplicata: TDataSetProvider;
    sdsDuplicataID: TIntegerField;
    sdsDuplicataTIPO_ES: TStringField;
    sdsDuplicataFILIAL: TIntegerField;
    sdsDuplicataID_NOTA: TIntegerField;
    sdsDuplicataPARCELA: TIntegerField;
    sdsDuplicataNUMDUPLICATA: TStringField;
    sdsDuplicataNUMNOTA: TIntegerField;
    sdsDuplicataSERIE: TStringField;
    sdsDuplicataDTVENCIMENTO: TDateField;
    sdsDuplicataVLR_PARCELA: TFloatField;
    sdsDuplicataVLR_RESTANTE: TFloatField;
    sdsDuplicataVLR_PAGO: TFloatField;
    sdsDuplicataVLR_DEVOLUCAO: TFloatField;
    sdsDuplicataVLR_DESPESAS: TFloatField;
    sdsDuplicataVLR_DESCONTO: TFloatField;
    sdsDuplicataVLR_JUROSPAGOS: TFloatField;
    sdsDuplicataVLR_COMISSAO: TFloatField;
    sdsDuplicataPERC_COMISSAO: TFloatField;
    sdsDuplicataDTULTPAGAMENTO: TDateField;
    sdsDuplicataID_PESSOA: TIntegerField;
    sdsDuplicataID_CONTA: TIntegerField;
    sdsDuplicataID_TIPOCOBRANCA: TIntegerField;
    sdsDuplicataID_VENDEDOR: TIntegerField;
    sdsDuplicataID_CONTA_BOLETO: TIntegerField;
    sdsDuplicataID_COMISSAO: TIntegerField;
    sdsDuplicataQTD_DIASATRASO: TIntegerField;
    sdsDuplicataDTRECEBIMENTO_TITULO: TDateField;
    sdsDuplicataDTEMISSAO: TDateField;
    sdsDuplicataPAGO_CARTORIO: TStringField;
    sdsDuplicataPROTESTADO: TStringField;
    sdsDuplicataTIPO_LANCAMENTO: TStringField;
    sdsDuplicataTRANSFERENCIA_ICMS: TStringField;
    sdsDuplicataNOSSONUMERO: TStringField;
    sdsDuplicataDTFINANCEIRO: TDateField;
    sdsDuplicataNUMCHEQUE: TIntegerField;
    sdsDuplicataACEITE: TStringField;
    cdsDuplicata: TClientDataSet;
    cdsDuplicataID: TIntegerField;
    cdsDuplicataTIPO_ES: TStringField;
    cdsDuplicataFILIAL: TIntegerField;
    cdsDuplicataID_NOTA: TIntegerField;
    cdsDuplicataPARCELA: TIntegerField;
    cdsDuplicataNUMDUPLICATA: TStringField;
    cdsDuplicataNUMNOTA: TIntegerField;
    cdsDuplicataSERIE: TStringField;
    cdsDuplicataDTVENCIMENTO: TDateField;
    cdsDuplicataVLR_PARCELA: TFloatField;
    cdsDuplicataVLR_RESTANTE: TFloatField;
    cdsDuplicataVLR_PAGO: TFloatField;
    cdsDuplicataVLR_DEVOLUCAO: TFloatField;
    cdsDuplicataVLR_DESPESAS: TFloatField;
    cdsDuplicataVLR_DESCONTO: TFloatField;
    cdsDuplicataVLR_JUROSPAGOS: TFloatField;
    cdsDuplicataVLR_COMISSAO: TFloatField;
    cdsDuplicataPERC_COMISSAO: TFloatField;
    cdsDuplicataDTULTPAGAMENTO: TDateField;
    cdsDuplicataID_PESSOA: TIntegerField;
    cdsDuplicataID_CONTA: TIntegerField;
    cdsDuplicataID_TIPOCOBRANCA: TIntegerField;
    cdsDuplicataID_VENDEDOR: TIntegerField;
    cdsDuplicataID_CONTA_BOLETO: TIntegerField;
    cdsDuplicataID_COMISSAO: TIntegerField;
    cdsDuplicataQTD_DIASATRASO: TIntegerField;
    cdsDuplicataDTRECEBIMENTO_TITULO: TDateField;
    cdsDuplicataDTEMISSAO: TDateField;
    cdsDuplicataPAGO_CARTORIO: TStringField;
    cdsDuplicataPROTESTADO: TStringField;
    cdsDuplicataTIPO_LANCAMENTO: TStringField;
    cdsDuplicataTRANSFERENCIA_ICMS: TStringField;
    cdsDuplicataNOSSONUMERO: TStringField;
    cdsDuplicataDTFINANCEIRO: TDateField;
    cdsDuplicataNUMCHEQUE: TIntegerField;
    cdsDuplicataACEITE: TStringField;
    dsDuplicata_Mestre: TDataSource;
    sdsDuplicata_Hist: TSQLDataSet;
    cdsDuplicata_Hist: TClientDataSet;
    sdsDuplicata_HistID: TIntegerField;
    sdsDuplicata_HistITEM: TIntegerField;
    sdsDuplicata_HistID_HISTORICO: TIntegerField;
    sdsDuplicata_HistCOMPLEMENTO: TStringField;
    sdsDuplicata_HistVLR_PAGAMENTO: TFloatField;
    sdsDuplicata_HistVLR_JUROSPAGOS: TFloatField;
    sdsDuplicata_HistVLR_DESCONTOS: TFloatField;
    sdsDuplicata_HistVLR_DESPESAS: TFloatField;
    sdsDuplicata_HistVLR_DEVOLUCAO: TFloatField;
    sdsDuplicata_HistVLR_JUROSCALCULADO: TFloatField;
    sdsDuplicata_HistNUMCHEQUE: TIntegerField;
    sdsDuplicata_HistDTPREVISAO_CHEQUE: TDateField;
    sdsDuplicata_HistID_CONTA: TIntegerField;
    sdsDuplicata_HistID_COMISSAO: TIntegerField;
    sdsDuplicata_HistTIPO_ES: TStringField;
    cdsDuplicatasdsDuplicata_Hist: TDataSetField;
    cdsDuplicata_HistID: TIntegerField;
    cdsDuplicata_HistITEM: TIntegerField;
    cdsDuplicata_HistID_HISTORICO: TIntegerField;
    cdsDuplicata_HistCOMPLEMENTO: TStringField;
    cdsDuplicata_HistVLR_PAGAMENTO: TFloatField;
    cdsDuplicata_HistVLR_JUROSPAGOS: TFloatField;
    cdsDuplicata_HistVLR_DESCONTOS: TFloatField;
    cdsDuplicata_HistVLR_DESPESAS: TFloatField;
    cdsDuplicata_HistVLR_DEVOLUCAO: TFloatField;
    cdsDuplicata_HistVLR_JUROSCALCULADO: TFloatField;
    cdsDuplicata_HistNUMCHEQUE: TIntegerField;
    cdsDuplicata_HistDTPREVISAO_CHEQUE: TDateField;
    cdsDuplicata_HistID_CONTA: TIntegerField;
    cdsDuplicata_HistID_COMISSAO: TIntegerField;
    cdsDuplicata_HistTIPO_ES: TStringField;
    sdsDuplicataARQUIVO_GERADO: TStringField;
    cdsDuplicataARQUIVO_GERADO: TStringField;
    sdsDuplicata_HistTIPO_HISTORICO: TStringField;
    cdsDuplicata_HistTIPO_HISTORICO: TStringField;
    sdsDuplicata_HistDTHISTORICO: TDateField;
    sdsDuplicata_HistDTLANCAMENTO: TDateField;
    cdsDuplicata_HistDTHISTORICO: TDateField;
    cdsDuplicata_HistDTLANCAMENTO: TDateField;
    qVerificaNota: TSQLQuery;
    qVerificaNotaSERIE: TStringField;
    qVerificaNotaNUMNOTA: TIntegerField;
    qVerificaNotaID_CLIENTE: TIntegerField;
    qVerificaNotaID: TIntegerField;
    sdsOperacao_Nota: TSQLDataSet;
    dspOperacao_Nota: TDataSetProvider;
    cdsOperacao_Nota: TClientDataSet;
    dsOperacao_Nota: TDataSource;
    qCFOP_Variacao: TSQLQuery;
    qCFOP_VariacaoID: TIntegerField;
    qCFOP_VariacaoITEM: TIntegerField;
    qCFOP_VariacaoID_CSTICMS: TIntegerField;
    qCFOP_VariacaoID_CSTIPI: TIntegerField;
    sdsNotaEntrada: TSQLDataSet;
    dspNotaEntrada: TDataSetProvider;
    cdsNotaEntrada: TClientDataSet;
    cdsNotaEntradaSERIE: TStringField;
    cdsNotaEntradaNUMNOTA: TIntegerField;
    cdsNotaEntradaID_CLIENTE: TIntegerField;
    cdsNotaEntradaID: TIntegerField;
    cdsNotaEntradaID_PRODUTO: TIntegerField;
    cdsNotaEntradaQTD: TFloatField;
    cdsNotaEntradaQTDRESTANTE: TFloatField;
    cdsNotaEntradaQTDDEVOLVIDA: TFloatField;
    cdsNotaEntradaVLR_UNITARIO: TFloatField;
    cdsNotaEntradaID_CSTIPI: TIntegerField;
    cdsNotaEntradaID_CSTICMS: TIntegerField;
    cdsNotaEntradaPERC_ICMS: TFloatField;
    cdsNotaEntradaPERC_IPI: TFloatField;
    cdsNotaEntradaCODCFOP: TStringField;
    cdsNotaEntradaBENEFICIAMENTO: TStringField;
    dsNotaEntrada: TDataSource;
    cdsNotaEntradaDTEMISSAO: TDateField;
    cdsNotaEntradaDTSAIDAENTRADA: TDateField;
    cdsNotaEntradaNOMECLIENTE: TStringField;
    cdsNotaEntradaUNIDADE: TStringField;
    sdsFornecedor: TSQLDataSet;
    dspFornecedor: TDataSetProvider;
    cdsFornecedor: TClientDataSet;
    dsFornecedor: TDataSource;
    cdsFornecedorCODIGO: TIntegerField;
    cdsFornecedorNOME: TStringField;
    cdsFornecedorCNPJ_CPF: TStringField;
    sdsNotaFiscal_ItensQTD_ADEVOLVER: TFloatField;
    cdsNotaFiscal_ItensQTD_ADEVOLVER: TFloatField;
    cdsNotaEntradaQTD_ADEVOLVER: TFloatField;
    cdsNotaEntradaID_NCM: TIntegerField;
    sdsNotaFiscal_ItensQTD_PACOTE: TFloatField;
    sdsNotaFiscal_ItensITEM_DEVOL: TStringField;
    cdsNotaFiscal_ItensQTD_PACOTE: TFloatField;
    cdsNotaFiscal_ItensITEM_DEVOL: TStringField;
    cdsNotaEntradaFILIAL: TIntegerField;
    cdsNotaEntradaITEM: TIntegerField;
    cdsNotaEntradaNFECHAVEACESSO: TStringField;
    cdsNotaEntradaCNPJ_CPF: TStringField;
    sdsNotaFiscal_NDevolvidaDTEMISSAO_NTE: TDateField;
    cdsNotaFiscal_NDevolvidaDTEMISSAO_NTE: TDateField;
    sdsPedido: TSQLDataSet;
    dspPedido: TDataSetProvider;
    cdsPedido: TClientDataSet;
    dsPedido: TDataSource;
    cdsPedidoID: TIntegerField;
    cdsPedidoPEDIDO_CLIENTE: TStringField;
    cdsPedidoID_CLIENTE: TIntegerField;
    cdsPedidoDTEMISSAO: TDateField;
    cdsPedidoID_PRODUTO: TIntegerField;
    cdsPedidoID_CFOP: TIntegerField;
    cdsPedidoVLR_UNITARIO: TFloatField;
    cdsPedidoQTD: TFloatField;
    cdsPedidoQTD_FATURADO: TFloatField;
    cdsPedidoQTD_RESTANTE: TFloatField;
    cdsPedidoQTD_AFATURAR: TFloatField;
    cdsPedidoNOMECLIENTE: TStringField;
    cdsPedidoNOMEPRODUTO: TStringField;
    cdsPedidoCNPJ_CPF: TStringField;
    cdsPedidoDTENTREGA: TDateField;
    cdsPedidoITEM: TIntegerField;
    cdsPedidoVLR_DESCONTO: TFloatField;
    cdsPedidoID_NCM: TIntegerField;
    cdsPedidoUNIDADE: TStringField;
    cdsPedidoPERC_IPI: TFloatField;
    cdsPedidoOBS_COMPLEMENTAR: TStringField;
    sdsNotaFiscal_PedITEM_NOTAPED: TIntegerField;
    cdsNotaFiscal_PedITEM_NOTAPED: TIntegerField;
    sdsNotaFiscal_PedID_PEDIDO: TIntegerField;
    cdsNotaFiscal_PedID_PEDIDO: TIntegerField;
    cdsPedidoNUMOS: TStringField;
    sdsNotaFiscal_ItensID_PEDIDO: TIntegerField;
    cdsNotaFiscal_ItensID_PEDIDO: TIntegerField;
    cdsPedidoTIPO_FRETE: TStringField;
    cdsPedidoID_CONDPGTO: TIntegerField;
    sdsNotaFiscalID_OPERACAO_NOTA: TIntegerField;
    cdsNotaFiscalID_OPERACAO_NOTA: TIntegerField;
    cdsOperacao_NotaID: TIntegerField;
    cdsOperacao_NotaNOME: TStringField;
    sdsNotaFiscal_ItensID_OPERACAO_NOTA: TIntegerField;
    cdsNotaFiscal_ItensID_OPERACAO_NOTA: TIntegerField;
    sdsNotaFiscalFINALIDADE: TStringField;
    cdsNotaFiscalFINALIDADE: TStringField;
    sdsNotaFiscal_ItensFINALIDADE: TStringField;
    cdsNotaFiscal_ItensFINALIDADE: TStringField;
    sdsNotaFiscalID_VARIACAO: TIntegerField;
    cdsNotaFiscalID_VARIACAO: TIntegerField;
    sdsNotaFiscal_ItensID_VARIACAO: TIntegerField;
    cdsNotaFiscal_ItensID_VARIACAO: TIntegerField;
    qRegra_Variacao: TSQLQuery;
    qRegra_VariacaoID: TIntegerField;
    qRegra_VariacaoITEM: TIntegerField;
    qRegra_VariacaoID_CSTICMS: TIntegerField;
    qRegra_VariacaoID_CSTIPI: TIntegerField;
    qRegra_VariacaoID_PIS: TIntegerField;
    qRegra_VariacaoID_COFINS: TIntegerField;
    qRegra_VariacaoID_OPERACAO_NOTA: TIntegerField;
    qRegra_VariacaoTIPO_EMPRESA: TStringField;
    qRegra_VariacaoTIPO_CLIENTE: TStringField;
    qRegra_VariacaoUF_CLIENTE: TStringField;
    qRegra_VariacaoFINALIDADE: TStringField;
    qRegra_VariacaoCONTROLAR_ICMS: TStringField;
    qRegra_VariacaoCONTROLAR_REDUCAO: TStringField;
    qRegra_VariacaoCONTROLAR_IPI: TStringField;
    qRegra_VariacaoCONTROLAR_SUBSTICMS: TStringField;
    qRegra_VariacaoCONTROLAR_DIFERIMENTO: TStringField;
    sdsCFOP_Variacao: TSQLDataSet;
    cdsCFOP_Variacao: TClientDataSet;
    dsCFOP_Variacao: TDataSource;
    sdsCFOP_VariacaoID: TIntegerField;
    sdsCFOP_VariacaoITEM: TIntegerField;
    sdsCFOP_VariacaoID_CSTICMS: TIntegerField;
    sdsCFOP_VariacaoID_CSTIPI: TIntegerField;
    sdsCFOP_VariacaoID_PIS: TIntegerField;
    sdsCFOP_VariacaoID_COFINS: TIntegerField;
    sdsCFOP_VariacaoID_OPERACAO_NOTA: TIntegerField;
    sdsCFOP_VariacaoTIPO_EMPRESA: TStringField;
    sdsCFOP_VariacaoTIPO_CLIENTE: TStringField;
    sdsCFOP_VariacaoUF_CLIENTE: TStringField;
    sdsCFOP_VariacaoFINALIDADE: TStringField;
    sdsCFOP_VariacaoCONTROLAR_ICMS: TStringField;
    sdsCFOP_VariacaoCONTROLAR_REDUCAO: TStringField;
    sdsCFOP_VariacaoCONTROLAR_IPI: TStringField;
    sdsCFOP_VariacaoCONTROLAR_SUBSTICMS: TStringField;
    sdsCFOP_VariacaoCONTROLAR_DIFERIMENTO: TStringField;
    sdsCFOP_VariacaoNOME: TStringField;
    dsCFOP_Mestre: TDataSource;
    cdsCFOPsdsCFOP_Variacao: TDataSetField;
    cdsCFOP_VariacaoID: TIntegerField;
    cdsCFOP_VariacaoITEM: TIntegerField;
    cdsCFOP_VariacaoID_CSTICMS: TIntegerField;
    cdsCFOP_VariacaoID_CSTIPI: TIntegerField;
    cdsCFOP_VariacaoID_PIS: TIntegerField;
    cdsCFOP_VariacaoID_COFINS: TIntegerField;
    cdsCFOP_VariacaoID_OPERACAO_NOTA: TIntegerField;
    cdsCFOP_VariacaoTIPO_EMPRESA: TStringField;
    cdsCFOP_VariacaoTIPO_CLIENTE: TStringField;
    cdsCFOP_VariacaoUF_CLIENTE: TStringField;
    cdsCFOP_VariacaoFINALIDADE: TStringField;
    cdsCFOP_VariacaoCONTROLAR_ICMS: TStringField;
    cdsCFOP_VariacaoCONTROLAR_REDUCAO: TStringField;
    cdsCFOP_VariacaoCONTROLAR_IPI: TStringField;
    cdsCFOP_VariacaoCONTROLAR_SUBSTICMS: TStringField;
    cdsCFOP_VariacaoCONTROLAR_DIFERIMENTO: TStringField;
    cdsCFOP_VariacaoNOME: TStringField;
    cdsTab_PisGERAR: TStringField;
    cdsTab_CofinsGERAR: TStringField;
    cdsParametrosUSA_VENDEDOR: TStringField;
    sdsNotaFiscal_ItensPERC_TRIBICMS: TFloatField;
    cdsNotaFiscal_ItensPERC_TRIBICMS: TFloatField;
    sdsNotaFiscal_ItensPERC_TABCSTICMS: TFloatField;
    cdsNotaFiscal_ItensPERC_TABCSTICMS: TFloatField;
    mMaterialConsumo: TClientDataSet;
    mMaterialConsumoID_Material: TIntegerField;
    mMaterialConsumoNomeMaterial: TStringField;
    mMaterialConsumoQtdProduto: TFloatField;
    mMaterialConsumoQtdConsumo: TFloatField;
    dsmMaterialConsumo: TDataSource;
    cdsParametrosUSA_CONSUMO: TStringField;
    sdsNotaFiscal_ItensMAOOBRA: TStringField;
    cdsNotaFiscal_ItensMAOOBRA: TStringField;
    qProduto_Consumo: TSQLQuery;
    qProduto_ConsumoID: TIntegerField;
    qProduto_ConsumoITEM: TIntegerField;
    qProduto_ConsumoID_MATERIAL: TIntegerField;
    qProduto_ConsumoQTD_CONSUMO: TFloatField;
    qProduto_ConsumoQTD_UNIDADE: TFloatField;
    qProduto_ConsumoUNIDADE: TStringField;
    qProduto_ConsumoNOMEMATERIAL: TStringField;
    mMaterialConsumoQtdJaInformada: TFloatField;
    qProduto_Forn: TSQLQuery;
    qProduto_FornCOD_MATERIAL_FORN: TStringField;
    qProduto_FornNOME_MATERIAL_FORN: TStringField;
    qProduto_FornCOD_BARRA: TStringField;
    sdsNotaFiscal_ItensCOD_PRODUTO_FORN: TStringField;
    cdsNotaFiscal_ItensCOD_PRODUTO_FORN: TStringField;
    sdsNotaFiscal_ItensCOD_BARRA: TStringField;
    cdsNotaFiscal_ItensCOD_BARRA: TStringField;
    sdsCidade: TSQLDataSet;
    dspCidade: TDataSetProvider;
    cdsCidade: TClientDataSet;
    dsCidade: TDataSource;
    cdsCidadeID: TIntegerField;
    cdsCidadeNOME: TStringField;
    cdsCidadeUF: TStringField;
    cdsCidadeCODMUNICIPIO: TStringField;
    sdsNotaFiscal_ImpID: TIntegerField;
    sdsNotaFiscal_ImpITEM: TIntegerField;
    sdsNotaFiscal_ImpITEM_IMP: TIntegerField;
    sdsNotaFiscal_ImpNUMDI: TStringField;
    sdsNotaFiscal_ImpDTREGISTRO: TDateField;
    sdsNotaFiscal_ImpDTDESEMBARACO: TDateField;
    sdsNotaFiscal_ImpCODEXPORTADOR: TStringField;
    cdsNotaFiscal_ImpID: TIntegerField;
    cdsNotaFiscal_ImpITEM: TIntegerField;
    cdsNotaFiscal_ImpITEM_IMP: TIntegerField;
    cdsNotaFiscal_ImpNUMDI: TStringField;
    cdsNotaFiscal_ImpDTREGISTRO: TDateField;
    cdsNotaFiscal_ImpDTDESEMBARACO: TDateField;
    cdsNotaFiscal_ImpCODEXPORTADOR: TStringField;
    cdsNotaFiscal_Imp_AdID: TIntegerField;
    cdsNotaFiscal_Imp_AdITEM: TIntegerField;
    cdsNotaFiscal_Imp_AdITEM_IMP: TIntegerField;
    cdsNotaFiscal_Imp_AdITEM_AD: TIntegerField;
    cdsNotaFiscal_Imp_AdNUMADICAO: TIntegerField;
    cdsNotaFiscal_Imp_AdCODFABRICANTE: TStringField;
    cdsNotaFiscal_Imp_AdVLR_DESCONTO_DI: TFloatField;
    sdsNotaFiscal_ImpLOCAL_DESEMBARACO: TStringField;
    cdsNotaFiscal_ImpLOCAL_DESEMBARACO: TStringField;
    sdsNotaFiscal_ImpUF: TStringField;
    cdsNotaFiscal_ImpUF: TStringField;
    cdsNotaFiscal_ItenssdsNotaFiscal_Imp: TDataSetField;
    sdsNotaFiscal_Imp_Ad: TSQLDataSet;
    sdsNotaFiscal_Imp_AdID: TIntegerField;
    sdsNotaFiscal_Imp_AdITEM: TIntegerField;
    sdsNotaFiscal_Imp_AdITEM_IMP: TIntegerField;
    sdsNotaFiscal_Imp_AdITEM_AD: TIntegerField;
    sdsNotaFiscal_Imp_AdNUMADICAO: TIntegerField;
    sdsNotaFiscal_Imp_AdCODFABRICANTE: TStringField;
    sdsNotaFiscal_Imp_AdVLR_DESCONTO_DI: TFloatField;
    cdsNotaFiscal_ImpsdsNotaFiscal_Imp_Ad: TDataSetField;
    sdsNotaFiscal_ItensIMP_OC_NOTA: TStringField;
    cdsNotaFiscal_ItensIMP_OC_NOTA: TStringField;
    cdsPedidoIMP_OC_NOTA: TStringField;
    cdsPedidoNUM_PEDIDO: TIntegerField;
    sdsNotaFiscal_ItensNUM_PEDIDO: TIntegerField;
    cdsNotaFiscal_ItensNUM_PEDIDO: TIntegerField;
    sdsNotaFiscal_PedNUM_PEDIDO: TIntegerField;
    cdsNotaFiscal_PedNUM_PEDIDO: TIntegerField;
    cdsNotaFiscal_ConsultaFANTASIA: TStringField;
    cdsNotaEntradaNOME_PRODUTO: TStringField;
    cdsNotaEntradaREFERENCIA: TStringField;
    sdsNotaFiscal_ItensID_NTE: TIntegerField;
    sdsNotaFiscal_ItensITEM_NTE: TIntegerField;
    cdsNotaFiscal_ItensID_NTE: TIntegerField;
    cdsNotaFiscal_ItensITEM_NTE: TIntegerField;
    mSelecionado: TClientDataSet;
    mSelecionadoID_Material: TIntegerField;
    mSelecionadoQtdNota: TFloatField;
    mMaterialConsumoQtdAutomatica: TFloatField;
    sdsNotaFiscal_ItensQTD_NOTAATUAL: TFloatField;
    cdsNotaFiscal_ItensQTD_NOTAATUAL: TFloatField;
    cdsNotaEntradaQTD_NOTAATUAL: TFloatField;
    mAgrupaMat: TClientDataSet;
    mAgrupaMatID_Material: TIntegerField;
    mAgrupaMatUnidade: TStringField;
    mAgrupaMatVlr_Unitario: TFloatField;
    mAgrupaMatQtd: TFloatField;
    mAgrupaMatID_Agrupa: TIntegerField;
    mAgrupaMatNCM: TStringField;
    mAgrupaMatID_NCM: TIntegerField;
    mAgrupaMat_Nota: TClientDataSet;
    dsmAgrupaMat: TDataSource;
    mAgrupaMat_NotaID_Agrupa: TIntegerField;
    mAgrupaMat_NotaID_NTE: TIntegerField;
    mAgrupaMat_NotaItem_NTE: TIntegerField;
    mAgrupaMat_NotaQtd: TFloatField;
    mAgrupaMat_NotaNumNota_NTE: TIntegerField;
    mAgrupaMat_NotaSerie_NTE: TStringField;
    mAgrupaMat_NotaDtEmissao_NTE: TDateField;
    mAgrupaMatPerc_IPI: TFloatField;
    mAgrupaMatNome_Material: TStringField;
    mAgrupaMatReferencia: TStringField;
    mAgrupaMat_NotaID_Fornecedor: TIntegerField;
    mAgrupaMat_NotaFilial: TIntegerField;
    mAgrupaMat_NotaNFeChaveAcesso: TStringField;
    mSelecionado_Nota: TClientDataSet;
    mSelecionado_NotaID_NTE: TIntegerField;
    mSelecionado_NotaITEM_NTE: TIntegerField;
    mSelecionado_NotaQTD: TFloatField;
    cdsOperacao_NotaPEDIR_FINALIDADE: TStringField;
    cdsParametrosID_OPERACAO_BENEF_RET: TIntegerField;
    cdsParametrosID_OPERACAO_MAOOBRA: TIntegerField;
    qProximaItem_NFe: TSQLQuery;
    qProximaItem_NFeITEM: TIntegerField;
    cdsPedidoID_VARIACAO: TIntegerField;
    sdsNotaFiscal_ItensVLR_DUPLICATA: TFloatField;
    cdsNotaFiscal_ItensVLR_DUPLICATA: TFloatField;
    sdsDuplicata_HistVLR_LANCAMENTO: TFloatField;
    cdsDuplicata_HistVLR_LANCAMENTO: TFloatField;
    sdsNotaFiscal_Eventos: TSQLDataSet;
    cdsNotaFiscal_Eventos: TClientDataSet;
    dsNotaFiscal_Eventos: TDataSource;
    dsNotaFiscal_Consulta_Mestre: TDataSource;
    cdsParametrosID_OPERACAO_TRIANGULAR: TIntegerField;
    cdsFilialPRINCIPAL: TStringField;
    cdsFilialLIBERADO_ATE: TStringField;
    cdsFilialULTIMO_ACESSO: TStringField;
    cdsFilialUSARICMSSIMPLES: TStringField;
    sdsNotaFiscal_EventosID: TIntegerField;
    sdsNotaFiscal_EventosITEM: TIntegerField;
    sdsNotaFiscal_EventosTIPO: TStringField;
    sdsNotaFiscal_EventosITEMTIPO: TIntegerField;
    sdsNotaFiscal_EventosDESCRICAO: TStringField;
    sdsNotaFiscal_EventosMOTIVO: TMemoField;
    sdsNotaFiscal_EventosNFEPROTOCOLO: TStringField;
    sdsNotaFiscal_EventosNFERECIBO: TStringField;
    sdsNotaFiscal_EventosDATAHORAAUT: TSQLTimeStampField;
    sdsNotaFiscal_EventosXML: TMemoField;
    sdsNotaFiscal_EventosDTCADASTRO: TDateField;
    sdsNotaFiscal_EventosHRCADASTRO: TTimeField;
    cdsNotaFiscal_ConsultasdsNotaFiscal_Eventos: TDataSetField;
    cdsNotaFiscal_EventosID: TIntegerField;
    cdsNotaFiscal_EventosITEM: TIntegerField;
    cdsNotaFiscal_EventosTIPO: TStringField;
    cdsNotaFiscal_EventosITEMTIPO: TIntegerField;
    cdsNotaFiscal_EventosDESCRICAO: TStringField;
    cdsNotaFiscal_EventosMOTIVO: TMemoField;
    cdsNotaFiscal_EventosNFEPROTOCOLO: TStringField;
    cdsNotaFiscal_EventosNFERECIBO: TStringField;
    cdsNotaFiscal_EventosDATAHORAAUT: TSQLTimeStampField;
    cdsNotaFiscal_EventosXML: TMemoField;
    cdsNotaFiscal_EventosDTCADASTRO: TDateField;
    cdsNotaFiscal_EventosHRCADASTRO: TTimeField;
    cdsNotaFiscal_ConsultaSTATUS_MANIFESTO: TStringField;
    cdsNotaFiscal_ConsultaDESCRICAO_MANIFESTO: TStringField;
    sdsNotaFiscalSTATUS_MANIFESTO: TStringField;
    cdsNotaFiscalSTATUS_MANIFESTO: TStringField;
    cdsVendedorTIPO_COMISSAO: TStringField;
    cdsVendedorPERC_COMISSAO_VEND: TFloatField;
    cdsParametrosUSA_COD_BARRAS: TStringField;
    sdsNotaFiscalID_CONTA: TIntegerField;
    sdsNotaFiscalID_TIPO_COBRANCA: TIntegerField;
    cdsNotaFiscalID_CONTA: TIntegerField;
    cdsNotaFiscalID_TIPO_COBRANCA: TIntegerField;
    sdsDuplicata_HistID_FORMA_PAGAMENTO: TIntegerField;
    cdsDuplicata_HistID_FORMA_PAGAMENTO: TIntegerField;
    cdsParametrosUSA_ID_PRODUTO: TStringField;
    cdsTransportadoraCEP: TStringField;
    sdsNotaFiscal_PedTIPO_NOTA: TStringField;
    cdsNotaFiscal_PedTIPO_NOTA: TStringField;
    sdsNotaFiscal_NDevolvidaTIPO_NOTA: TStringField;
    cdsNotaFiscal_NDevolvidaTIPO_NOTA: TStringField;
    sdsNotaFiscal_ItensTIPO_NOTA: TStringField;
    cdsNotaFiscal_ItensTIPO_NOTA: TStringField;
    cdsParametrosEMPRESA_VEICULO: TStringField;
    cdsParametrosID_CONTA_PADRAO: TIntegerField;
    cdsParametrosID_TIPO_COBRANCA_PADRAO: TIntegerField;
    cdsParametrosPERMITE_QTDMAIOR_PEDIDO: TStringField;
    cdsFilialSERIENORMAL: TStringField;
    sdsPrc_Atualiza_Status_Ped: TSQLDataSet;
    mPedidoAux: TClientDataSet;
    mPedidoAuxID_Pedido: TIntegerField;
    sdsDuplicataID_COB_ELETRONICA: TIntegerField;
    sdsDuplicataBOLETO_IMP: TStringField;
    sdsDuplicataID_CARTEIRA: TIntegerField;
    sdsDuplicataID_BANCO: TIntegerField;
    cdsDuplicataID_COB_ELETRONICA: TIntegerField;
    cdsDuplicataBOLETO_IMP: TStringField;
    cdsDuplicataID_CARTEIRA: TIntegerField;
    cdsDuplicataID_BANCO: TIntegerField;
    sdsNotaFiscal_ItensPERC_IMPORTACAO: TFloatField;
    cdsNotaFiscal_ItensPERC_IMPORTACAO: TFloatField;
    sdsNotaFiscalCALCULAR_IMP_ITEM: TStringField;
    cdsNotaFiscalCALCULAR_IMP_ITEM: TStringField;
    sdsNotaFiscal_ImpNUMFATURA: TStringField;
    cdsNotaFiscal_ImpNUMFATURA: TStringField;
    cdsParametrosQUITAR_AVISTA_AUT: TStringField;
    qPessoa_Fiscal: TSQLQuery;
    qPessoa_FiscalCODIGO: TIntegerField;
    qPessoa_FiscalIPI_SUSPENSO: TStringField;
    qPessoa_FiscalIPI_DT_INICIO: TDateField;
    qPessoa_FiscalIPI_DT_FINAL: TDateField;
    qPessoa_FiscalIPI_OBS: TStringField;
    qPessoa_FiscalIPI_ID_CSTIPI: TIntegerField;
    qPessoa_FiscalPIS_SUSPENSO: TStringField;
    qPessoa_FiscalPIS_DT_INICIO: TDateField;
    qPessoa_FiscalPIS_DT_FINAL: TDateField;
    qPessoa_FiscalPIS_OBS: TStringField;
    qPessoa_FiscalPIS_ID_PIS: TIntegerField;
    qPessoa_FiscalPIS_ID_COFINS: TIntegerField;
    qPessoa_FiscalCOD_IPI: TStringField;
    qPessoa_FiscalCOD_PIS: TStringField;
    qPessoa_FiscalCOD_COFINS: TStringField;
    sdsPessoa_Contato: TSQLDataSet;
    dspPessoa_Contato: TDataSetProvider;
    cdsPessoa_Contato: TClientDataSet;
    sdsNotaFiscal_ItensCONTA_ORCAMENTO_ID: TIntegerField;
    sdsNotaFiscal_ItensCENTRO_CUSTO_ID: TIntegerField;
    cdsNotaFiscal_ItensCONTA_ORCAMENTO_ID: TIntegerField;
    cdsNotaFiscal_ItensCENTRO_CUSTO_ID: TIntegerField;
    sdsContaOrcamento: TSQLDataSet;
    dspContaOrcamento: TDataSetProvider;
    cdsContaOrcamento: TClientDataSet;
    dsContaOrcamento: TDataSource;
    sdsCentroCusto: TSQLDataSet;
    dspCentroCusto: TDataSetProvider;
    cdsCentroCusto: TClientDataSet;
    dsCentroCusto: TDataSource;
    cdsCentroCustoID: TIntegerField;
    cdsCentroCustoTIPO: TStringField;
    cdsCentroCustoCODIGO: TStringField;
    cdsCentroCustoDESCRICAO: TStringField;
    cdsCentroCustoNIVEL: TIntegerField;
    cdsCentroCustoAPROPRIACAO: TStringField;
    cdsCentroCustoSUPERIOR: TStringField;
    cdsPessoa_ContatoCODIGO: TIntegerField;
    cdsPessoa_ContatoITEM: TIntegerField;
    cdsPessoa_ContatoCONTATO: TStringField;
    cdsPessoa_ContatoEMAIL: TStringField;
    cdsPessoa_ContatoENVIAR_NFE: TStringField;
    cdsPessoa_ContatoFONE: TStringField;
    cdsPessoa_ContatoSETOR: TStringField;
    cdsParametrosATUALIZAR_PRECO: TStringField;
    qVerificaNEDevol: TSQLQuery;
    qVerificaNEDevolQTDDEVOLVIDA: TFloatField;
    qVerificaNEDevolID: TIntegerField;
    cdsParametrosNOTA_ENTRADA_MOSTRAR_PROD: TStringField;
    sdsNotaFiscal_ItensTIPO_REG: TStringField;
    cdsNotaFiscal_ItensTIPO_REG: TStringField;
    qVerificaDupl: TSQLQuery;
    qVerificaDuplID: TIntegerField;
    sdsNotaFiscalGRAVOU_DADOSADICIONAIS: TStringField;
    cdsNotaFiscalGRAVOU_DADOSADICIONAIS: TStringField;
    qNCM_UF: TSQLQuery;
    qNCM_UFID: TIntegerField;
    qNCM_UFITEM: TIntegerField;
    qNCM_UFUF: TStringField;
    qNCM_UFMVAINTERNO: TFloatField;
    cdsParametrosDESTACAR_IMPOSTO_NOTA: TStringField;
    sdsNotaFiscal_ItensPERC_MVA: TFloatField;
    sdsNotaFiscal_ItensPERC_REDUCAO_ICMSSUBST: TFloatField;
    cdsNotaFiscal_ItensPERC_MVA: TFloatField;
    cdsNotaFiscal_ItensPERC_REDUCAO_ICMSSUBST: TFloatField;
    sdsNotaFiscal_ItensID_MOVIMENTO: TIntegerField;
    cdsNotaFiscal_ItensID_MOVIMENTO: TIntegerField;
    cdsPedidoQTD_LIBERADA: TFloatField;
    cdsPedidoQTD_PRODUZIDA: TFloatField;
    cdsPedidoclQtd_Restante: TFloatField;
    cdsParametrosCONTROLAR_PEDIDO_LIBERACAO: TStringField;
    cdsPedidoclQtd_NaoLiberada: TFloatField;
    cdsPedidoTIPO_REG: TStringField;
    sdsNotaFiscalVLR_TRIBUTOS: TFloatField;
    cdsNotaFiscalVLR_TRIBUTOS: TFloatField;
    sdsNotaFiscal_ItensVLR_TRIBUTOS: TFloatField;
    cdsNotaFiscal_ItensVLR_TRIBUTOS: TFloatField;
    sdsCFOP_VariacaoPESSOA_CLIENTE: TStringField;
    sdsCFOP_VariacaoLEI: TMemoField;
    sdsCFOP_VariacaoPERC_TRIBUTO: TFloatField;
    cdsCFOP_VariacaoPESSOA_CLIENTE: TStringField;
    cdsCFOP_VariacaoLEI: TMemoField;
    cdsCFOP_VariacaoPERC_TRIBUTO: TFloatField;
    qRegra_CFOP: TSQLQuery;
    cdsFilialPERC_TRIB_NTS_IND: TFloatField;
    cdsFilialPERC_TRIB_NTS_VEN: TFloatField;
    cdsFilialPERC_TRIB_NTS_IND_EXP: TFloatField;
    cdsFilialPERC_TRIB_NTS_VEN_EXP: TFloatField;
    qNCM_UFNCM: TStringField;
    cdsFilialPERC_LISTA_CAMEX: TFloatField;
    cdsPedidoTAMANHO: TStringField;
    cdsParametrosUSA_GRADE: TStringField;
    sdsNotaFiscalUSA_TRANSFICMS: TStringField;
    cdsNotaFiscalUSA_TRANSFICMS: TStringField;
    sdsNotaFiscalID_NOTACOPIADA: TIntegerField;
    cdsNotaFiscalID_NOTACOPIADA: TIntegerField;
    dsVale: TDataSource;
    cdsVale: TClientDataSet;
    dspVale: TDataSetProvider;
    sdsVale: TSQLDataSet;
    sdsNotaFiscal_ItensPOSSUI_VALE: TStringField;
    cdsNotaFiscal_ItensPOSSUI_VALE: TStringField;
    cdsParametrosMOSTRAR_CFOP_PEDIDO: TStringField;
    qNCM_UFPERC_RED_STRIB: TFloatField;
    cdsTab_NCMNOME: TStringField;
    cdsTab_NCMPERC_RED_STRIB: TFloatField;
    cdsNotaEntradaOBS_COMPLEMENTAR: TStringField;
    cdsParametrosGRAVAR_INF_ADICIONAIS_NTE: TStringField;
    sdsProduto_Consumo_Tam: TSQLDataSet;
    dspProduto_Consumo_Tam: TDataSetProvider;
    cdsProduto_Consumo_Tam: TClientDataSet;
    cdsParametrosCALCULAR_PESO_CONSUMO: TStringField;
    cdsProduto_Consumo_TamQTD_CONSUMO: TFloatField;
    cdsProduto_Consumo_TamTAMANHO: TStringField;
    sdsProduto_Consumo: TSQLDataSet;
    dspProduto_Consumo: TDataSetProvider;
    cdsProduto_Consumo: TClientDataSet;
    cdsProduto_ConsumoID: TIntegerField;
    cdsProduto_ConsumoITEM: TIntegerField;
    cdsProduto_ConsumoID_MATERIAL: TIntegerField;
    cdsProduto_ConsumoQTD_CONSUMO: TFloatField;
    cdsProduto_ConsumoQTD_UNIDADE: TFloatField;
    cdsProduto_ConsumoUNIDADE: TStringField;
    cdsProduto_ConsumoID_POSICAO: TIntegerField;
    cdsProduto_ConsumoTIPO_CONSUMO: TStringField;
    sdsCondPgtoENTRADA: TStringField;
    sdsCondPgtoTIPO_CONDICAO: TStringField;
    sdsCondPgtoQTD_PARCELA: TIntegerField;
    cdsCondPgtoENTRADA: TStringField;
    cdsCondPgtoTIPO_CONDICAO: TStringField;
    cdsCondPgtoQTD_PARCELA: TIntegerField;
    cdsNotaFiscal_ParclkNome_TipoCobranca: TStringField;
    cdsNotaFiscal_ParclkNome_Conta: TStringField;
    sdsCFOP_VariacaoPERC_PIS: TFloatField;
    sdsCFOP_VariacaoPERC_COFINS: TFloatField;
    sdsCFOP_VariacaoTIPO_PIS: TStringField;
    sdsCFOP_VariacaoTIPO_COFINS: TStringField;
    cdsCFOP_VariacaoPERC_PIS: TFloatField;
    cdsCFOP_VariacaoPERC_COFINS: TFloatField;
    cdsCFOP_VariacaoTIPO_PIS: TStringField;
    cdsCFOP_VariacaoTIPO_COFINS: TStringField;
    cdsPedidoID_TRANSPORTADORA: TIntegerField;
    sdsNotaFiscal_Imp_AdNUM_SEQ: TIntegerField;
    cdsNotaFiscal_Imp_AdNUM_SEQ: TIntegerField;
    cdsParametrosUSA_TAMANHO_AGRUPADO_NFE: TStringField;
    cdsTab_NCMGERAR_ST: TStringField;
    cdsPedidoID_NCM_PED: TIntegerField;
    cdsPedidoREFERENCIA: TStringField;
    cdsPedidoREFERENCIA_PRO: TStringField;
    cdsPedidoNUM_DOC: TIntegerField;
    cdsParametrosEMPRESA_NAVALHA: TStringField;
    cdsPedidoNUM_TALAO: TStringField;
    mAux_Imp: TClientDataSet;
    mAux_ImpID: TIntegerField;
    mAux_ImpITEM: TIntegerField;
    mAux_ImpITEM_IMP: TIntegerField;
    mAux_ImpNUMDI: TStringField;
    mAux_ImpDTREGISTRO: TDateField;
    mAux_ImpDTDESEMBARACO: TDateField;
    mAux_ImpCODEXPORTADOR: TStringField;
    mAux_ImpUF: TStringField;
    mAux_Imp_Ad: TClientDataSet;
    mAux_Imp_AdID: TIntegerField;
    mAux_Imp_AdITEM: TIntegerField;
    mAux_Imp_AdITEM_IMP: TIntegerField;
    mAux_Imp_AdITEM_AD: TIntegerField;
    mAux_Imp_AdNUMADICAO: TIntegerField;
    mAux_Imp_AdCODFABRICANTE: TStringField;
    mAux_Imp_AdVLR_DESCONTO_DI: TFloatField;
    mAux_Imp_AdNUM_SEQ: TIntegerField;
    mAux_ImpNUMFATURA: TStringField;
    mAux_ImpLOCAL_DESEMBARACO: TStringField;
    cdsParametrosUSA_CONTA_ORCAMENTO: TStringField;
    sdsNotaFiscalID_CONTA_ORCAMENTO: TIntegerField;
    cdsNotaFiscalID_CONTA_ORCAMENTO: TIntegerField;
    sdsDuplicataID_CONTA_ORCAMENTO: TIntegerField;
    cdsDuplicataID_CONTA_ORCAMENTO: TIntegerField;
    cdsParametrosTIPO_LEI_TRANSPARENCIA: TStringField;
    qIBPT: TSQLQuery;
    qIBPTPERC_NACIONAL: TFloatField;
    qIBPTPERC_IMPORTACAO: TFloatField;
    qIBPTNCM: TStringField;
    qIBPTID: TIntegerField;
    qPeso_Tam: TSQLQuery;
    qPeso_TamPESO_LIQUIDO: TFloatField;
    qPeso_TamPESO_BRUTO: TFloatField;
    cdsContaOrcamentoID: TIntegerField;
    cdsContaOrcamentoDESCRICAO: TStringField;
    cdsContaOrcamentoTIPO: TStringField;
    cdsContaOrcamentoCODIGO: TStringField;
    cdsContaOrcamentoNOME_AUX: TStringField;
    cdsPedidoVLR_DESCONTORATEIO: TFloatField;
    cdsParametrosUSA_FAIXA_SIMPLES: TStringField;
    cdsParametrosBAIXA_ESTOQUE_MP: TStringField;
    cdsParametrosUSA_LIMITE_CREDITO: TStringField;
    cdsParametrosSENHA_CREDITO: TStringField;
    cdsParametrosEMPRESA_INJETADO: TStringField;
    cdsNotaEntradaID_CLIENTETRIANG: TIntegerField;
    cdsNotaEntradaNOME_CLIENTETRIANG: TStringField;
    cdsParametrosUSA_PEDIDO_CONTROLE_MOBRA: TStringField;
    mMObra_Ped: TClientDataSet;
    dsmMObra_Ped: TDataSource;
    mMObra_PedNum_Pedido: TIntegerField;
    mMObra_PedItem_Pedido: TIntegerField;
    mMObra_PedID_Produto: TIntegerField;
    mMObra_PedReferencia: TStringField;
    mMObra_PedNome_Produto: TStringField;
    mMObra_PedQtd: TFloatField;
    mMObra_PedID_CFOP: TIntegerField;
    mMObra_PedCODCFOP: TStringField;
    mMObra_Nota: TClientDataSet;
    mMObra_NotaID_Nota: TIntegerField;
    mMObra_NotaItem_Nota: TIntegerField;
    mMObra_NotaNum_Nota: TIntegerField;
    mMObra_NotaID_Material: TIntegerField;
    mMObra_NotaNome_Material: TStringField;
    mMObra_NotaQtd: TFloatField;
    dsmMObra_Nota: TDataSource;
    mMObra_PedID_Pedido: TIntegerField;
    mMObra_NotaID_CFOP: TIntegerField;
    mMObra_NotaCODCFOP: TStringField;
    cdsNotaEntradaID_CFOP: TIntegerField;
    cdsParametrosIMP_NFE_REF_PROD: TStringField;
    qDePara_CFOP: TSQLQuery;
    qDePara_CFOPID: TIntegerField;
    qDePara_CFOPID_CFOP_ENT: TIntegerField;
    qDePara_CFOPTIPO_PRODUTO: TStringField;
    qDePara_CFOPID_CFOP_GRA: TIntegerField;
    qDePara_CFOPCOD_CFOP_ENT: TStringField;
    qDePara_CFOPCOD_CFOP_GRA: TStringField;
    qDePara_CFOPID_CFOP_PED: TIntegerField;
    qDePara_CFOPCOD_CFOP_PED: TStringField;
    mMObra_NotaID_CFOP_Ped: TIntegerField;
    mMObra_NotaCODCFOP_Ped: TStringField;
    mMObra_PedPedido_Cliente: TStringField;
    mMaterialConsumoQtdAutomatica2: TFloatField;
    qProduto_Consumo_Tam: TSQLQuery;
    qProduto_Consumo_TamID: TIntegerField;
    qProduto_Consumo_TamITEM: TIntegerField;
    qProduto_Consumo_TamTAMANHO: TStringField;
    qProduto_Consumo_TamQTD_CONSUMO: TFloatField;
    qProduto_ConsumoTIPO_CONSUMO: TStringField;
    mMObra_PedTamanho: TStringField;
    sdsNotaFiscal_Imp_Aux: TSQLDataSet;
    cdsNotaFiscal_Imp_Aux: TClientDataSet;
    dsNotaFiscal_Imp_Aux: TDataSource;
    sdsNotaFiscal_Imp_AuxID: TIntegerField;
    sdsNotaFiscal_Imp_AuxITEM: TIntegerField;
    sdsNotaFiscal_Imp_AuxNUM_DI: TStringField;
    sdsNotaFiscal_Imp_AuxDTREGISTRO: TDateField;
    sdsNotaFiscal_Imp_AuxDTDESEMBARACO: TDateField;
    sdsNotaFiscal_Imp_AuxCOD_EXPORTADOR: TStringField;
    sdsNotaFiscal_Imp_AuxLOCAL_DESEMBARACO: TStringField;
    sdsNotaFiscal_Imp_AuxUF: TStringField;
    sdsNotaFiscal_Imp_AuxNUM_FATURA: TStringField;
    sdsNotaFiscal_Imp_AuxNUM_ADICAO: TIntegerField;
    sdsNotaFiscal_Imp_AuxNUM_SEQ: TIntegerField;
    sdsNotaFiscal_Imp_AuxCOD_FABRICANTE: TStringField;
    sdsNotaFiscal_Imp_AuxVLR_DESCONTO_DI: TFloatField;
    cdsNotaFiscalsdsNotaFiscal_Imp_Aux: TDataSetField;
    cdsNotaFiscal_Imp_AuxID: TIntegerField;
    cdsNotaFiscal_Imp_AuxITEM: TIntegerField;
    cdsNotaFiscal_Imp_AuxNUM_DI: TStringField;
    cdsNotaFiscal_Imp_AuxDTREGISTRO: TDateField;
    cdsNotaFiscal_Imp_AuxDTDESEMBARACO: TDateField;
    cdsNotaFiscal_Imp_AuxCOD_EXPORTADOR: TStringField;
    cdsNotaFiscal_Imp_AuxLOCAL_DESEMBARACO: TStringField;
    cdsNotaFiscal_Imp_AuxUF: TStringField;
    cdsNotaFiscal_Imp_AuxNUM_FATURA: TStringField;
    cdsNotaFiscal_Imp_AuxNUM_ADICAO: TIntegerField;
    cdsNotaFiscal_Imp_AuxNUM_SEQ: TIntegerField;
    cdsNotaFiscal_Imp_AuxCOD_FABRICANTE: TStringField;
    cdsNotaFiscal_Imp_AuxVLR_DESCONTO_DI: TFloatField;
    sdsNotaFiscalNOTA_ESTORNO: TStringField;
    cdsNotaFiscalNOTA_ESTORNO: TStringField;
    sdsObs_Lei: TSQLDataSet;
    dspObs_Lei: TDataSetProvider;
    cdsObs_Lei: TClientDataSet;
    dsObs_Lei: TDataSource;
    sdsObs_LeiID: TIntegerField;
    sdsObs_LeiNOME: TStringField;
    sdsObs_LeiOBS: TStringField;
    cdsObs_LeiID: TIntegerField;
    cdsObs_LeiNOME: TStringField;
    cdsObs_LeiOBS: TStringField;
    cdsParametrosUSA_SPED: TStringField;
    cdsParametrosID_OBS_LEI_SIMPLES: TIntegerField;
    sdsNotaFiscal_Lei: TSQLDataSet;
    sdsNotaFiscal_LeiID: TIntegerField;
    sdsNotaFiscal_LeiID_OBS_LEI: TIntegerField;
    sdsNotaFiscal_LeiOBS: TStringField;
    cdsNotaFiscalsdsNotaFiscal_Lei: TDataSetField;
    cdsNotaFiscal_Lei: TClientDataSet;
    cdsNotaFiscal_LeiID: TIntegerField;
    cdsNotaFiscal_LeiID_OBS_LEI: TIntegerField;
    cdsNotaFiscal_LeiOBS: TStringField;
    dsNotaFiscal_Lei: TDataSource;
    sdsNotaFiscalCOD_MODELO: TStringField;
    sdsNotaFiscalCOD_CONS_EE: TStringField;
    sdsNotaFiscalCOD_CONS_AGUA: TStringField;
    cdsNotaFiscalCOD_MODELO: TStringField;
    cdsNotaFiscalCOD_CONS_EE: TStringField;
    cdsNotaFiscalCOD_CONS_AGUA: TStringField;
    cdsParametrosEMPRESA_SUCATA: TStringField;
    sdsPedido_Tipo: TSQLDataSet;
    dspPedido_Tipo: TDataSetProvider;
    cdsPedido_Tipo: TClientDataSet;
    dsPedido_Tipo: TDataSource;
    cdsPedido_TipoID: TIntegerField;
    cdsPedido_TipoITEM: TIntegerField;
    cdsPedido_TipoCOMPRIMENTO: TFloatField;
    cdsPedido_TipoLARGURA: TFloatField;
    cdsPedido_TipoALTURA: TFloatField;
    cdsPedido_TipoVLR_KG: TFloatField;
    cdsPedido_TipoQTD: TFloatField;
    cdsPedido_TipoVLR_UNITARIO: TFloatField;
    cdsPedido_TipoVLR_TOTAL: TFloatField;
    cdsPedido_TipoDIAMETRO: TFloatField;
    cdsPedido_TipoDIAMETRO_EXT: TFloatField;
    cdsPedido_TipoDIAMETRO_INT: TFloatField;
    cdsPedido_TipoPAREDE: TFloatField;
    cdsPedido_TipoPESO: TFloatField;
    cdsPedido_TipoCOMPLEMENTO_NOME: TStringField;
    cdsPedido_TipoTIPO_ORCAMENTO: TStringField;
    cdsPedido_TipoDESCRICAO_TIPO: TStringField;
    sdsNotaFiscal_ItensITEM_CLIENTE: TIntegerField;
    cdsNotaFiscal_ItensITEM_CLIENTE: TIntegerField;
    cdsPedidoITEM_CLIENTE: TIntegerField;
    qProduto_UF: TSQLQuery;
    qProduto_UFID: TIntegerField;
    qProduto_UFUF: TStringField;
    qProduto_UFPERC_ICMS: TFloatField;
    qProduto_UFPERC_ICMS_INTERNO: TFloatField;
    qProduto_UFPERC_REDUCAO_ST: TFloatField;
    cdsClienteCODIGO: TIntegerField;
    cdsClienteNOME: TStringField;
    cdsClienteFANTASIA: TStringField;
    cdsClienteENDERECO: TStringField;
    cdsClienteCOMPLEMENTO_END: TStringField;
    cdsClienteNUM_END: TStringField;
    cdsClienteBAIRRO: TStringField;
    cdsClienteID_CIDADE: TIntegerField;
    cdsClienteCIDADE: TStringField;
    cdsClienteUF: TStringField;
    cdsClienteBAIRRO_ENT: TStringField;
    cdsClienteBAIRRO_PGTO: TStringField;
    cdsClienteENDERECO_ENT: TStringField;
    cdsClienteENDERECO_PGTO: TStringField;
    cdsClienteCOMPLEMENTO_END_ENT: TStringField;
    cdsClienteCOMPLEMENTO_END_PGTO: TStringField;
    cdsClienteNUM_END_ENT: TStringField;
    cdsClienteNUM_END_PGTO: TStringField;
    cdsClienteCNPJ_CPF: TStringField;
    cdsClienteCEP: TStringField;
    cdsClienteCEP_ENT: TStringField;
    cdsClienteCEP_PGTO: TStringField;
    cdsClienteID_CIDADE_ENT: TIntegerField;
    cdsClienteID_CIDADE_PGTO: TIntegerField;
    cdsClienteUF_ENT: TStringField;
    cdsClienteFONE_PGTO: TStringField;
    cdsClienteCNPJ_CPF_ENT: TStringField;
    cdsClienteID_REGIME_TRIB: TIntegerField;
    cdsClienteID_PAIS: TIntegerField;
    cdsClientePESSOA: TStringField;
    cdsClienteTIPO_ICMS: TStringField;
    cdsClienteEMAIL_NFE: TStringField;
    cdsClienteEMAIL_NFE2: TStringField;
    cdsClienteINSCR_EST: TStringField;
    cdsClienteDDDFONE1: TIntegerField;
    cdsClienteTELEFONE1: TStringField;
    cdsClientePESSOA_PGTO: TStringField;
    cdsClienteCNPJ_CPG_PGTO: TStringField;
    cdsClientePESSOA_ENT: TStringField;
    cdsClienteUSA_TAMANHO_AGRUPADO_NFE: TStringField;
    cdsClienteID_TAB_PRECO: TIntegerField;
    cdsClienteVLR_LIMITE_CREDITO: TFloatField;
    cdsClienteUSA_TRANSFICMS: TStringField;
    cdsClienteID_TIPOCOBRANCA: TIntegerField;
    cdsClienteID_CONTABOLETO: TIntegerField;
    cdsClienteID_CONDPGTO: TIntegerField;
    cdsClienteCLIENTE_CONTA_ID: TIntegerField;
    cdsClienteCLIENTE_ESTOQUE: TStringField;
    cdsClienteID_VENDEDOR: TIntegerField;
    cdsClientePERC_COMISSAO: TFloatField;
    cdsClienteID_TRANSPORTADORA: TIntegerField;
    cdsClienteID_REDESPACHO: TIntegerField;
    cdsClienteTIPO_FRETE: TStringField;
    cdsClienteEMAIL_PGTO: TStringField;
    cdsClienteFORNECEDOR_CONTA_ID: TIntegerField;
    cdsCFOPID: TIntegerField;
    cdsCFOPCODCFOP: TStringField;
    cdsCFOPNOME: TStringField;
    cdsCFOPNOME_INTERNO: TStringField;
    cdsCFOPGERAR_IPI: TStringField;
    cdsCFOPGERAR_ICMS: TStringField;
    cdsCFOPGERAR_DUPLICATA: TStringField;
    cdsCFOPGERAR_ICMS_SIMPLES: TStringField;
    cdsCFOPGERAR_TRIBUTO: TStringField;
    cdsCFOPGERAR_ESTOQUE_MP: TStringField;
    cdsCFOPSOMAR_VLRTOTALPRODUTO: TStringField;
    cdsCFOPID_CSTICMS: TIntegerField;
    cdsCFOPID_CSTIPI: TIntegerField;
    cdsCFOPID_PIS: TIntegerField;
    cdsCFOPID_COFINS: TIntegerField;
    cdsCFOPID_OBS_LEI: TIntegerField;
    cdsCFOPCOPIARNOTATRIANGULAR: TStringField;
    cdsCFOPTIPO_PIS: TStringField;
    cdsCFOPTIPO_COFINS: TStringField;
    cdsCFOPTIPO_EMPRESA: TStringField;
    cdsCFOPTIPO_IND_VEN: TStringField;
    cdsCFOPSUBSTITUICAO_TRIB: TStringField;
    cdsCFOPMVA: TStringField;
    cdsCFOPBENEFICIAMENTO: TStringField;
    cdsCFOPMAOOBRA: TStringField;
    cdsCFOPPERC_TRIBUTO: TFloatField;
    cdsCFOPPERC_COFINS: TFloatField;
    cdsCFOPPERC_PIS: TFloatField;
    cdsCFOPENTRADASAIDA: TStringField;
    cdsProdutoID: TIntegerField;
    cdsProdutoREFERENCIA: TStringField;
    cdsProdutoNOME: TStringField;
    cdsProdutoUNIDADE: TStringField;
    cdsProdutoPESOLIQUIDO: TFloatField;
    cdsProdutoPESOBRUTO: TFloatField;
    cdsProdutoINATIVO: TStringField;
    cdsProdutoID_CSTIPI: TIntegerField;
    cdsProdutoPERC_IPI: TFloatField;
    cdsProdutoPRECO_CUSTO: TFloatField;
    cdsProdutoPRECO_VENDA: TFloatField;
    cdsProdutoTIPO_REG: TStringField;
    cdsProdutoESTOQUE: TStringField;
    cdsProdutoMATERIAL_OUTROS: TStringField;
    cdsProdutoCA: TStringField;
    cdsProdutoCOMPLEMENTO: TStringField;
    cdsProdutoID_NCM: TIntegerField;
    cdsProdutoORIGEM_PROD: TStringField;
    cdsProdutoCODSITCF: TStringField;
    cdsProdutoPERC_REDUCAOICMS: TFloatField;
    cdsProdutoTIPO_VENDA: TStringField;
    cdsProdutoCOD_BARRA: TStringField;
    cdsProdutoPERC_IMPORTACAO: TFloatField;
    cdsProdutoDT_ALTPRECO: TDateField;
    cdsProdutoPERC_REDUCAOICMSSUBST: TFloatField;
    cdsProdutoUSA_GRADE: TStringField;
    cdsProdutoID_GRADE: TIntegerField;
    cdsProdutoUSA_PERC_IMP_INTERESTADUAL: TStringField;
    cdsProdutoPERC_PIS: TFloatField;
    cdsProdutoPERC_COFINS: TFloatField;
    cdsProdutoPERC_ICMS_IMP: TFloatField;
    cdsProdutoPERC_IPI_IMP: TFloatField;
    cdsNotaFiscal_ConsultaTIPO_PRAZO: TStringField;
    cdsNotaFiscal_ConsultaNFECODBARRA_CONTINGENCIA: TStringField;
    cdsPedidoQTD_PECA: TIntegerField;
    cdsParametrosUSA_FCI: TStringField;
    sdsNotaFiscal_ItensNUM_FCI: TStringField;
    cdsNotaFiscal_ItensNUM_FCI: TStringField;
    qProduto_FornNUM_FCI: TStringField;
    cdsProdutoNUM_FCI: TStringField;
    sdsNotaFiscal_ItensPERC_USADO_FCI: TFloatField;
    cdsNotaFiscal_ItensPERC_USADO_FCI: TFloatField;
    cdsParametrosARREDONDAR_5: TStringField;
    cdsProdutoNCM_EX: TStringField;
    cdsParametrosLEI_TRANSPARENCIA_IMP_ITEM: TStringField;
    cdsParametrosLEI_TRANSPARENCIA_TEXTO_ITEM: TStringField;
    cdsParametrosLEI_TRANSPARENCIA_PERC_ADIC: TStringField;
    qNCM_UFPERC_RED_MVA: TFloatField;
    cdsTab_NCMUSAR_MVA_UF_DESTINO: TStringField;
    qNCM_UFPERC_RED_MVA_GERAL: TFloatField;
    qNCM_UFTIPO_EMPRESA: TStringField;
    qNCM_UFTIPO_PRODUTO: TStringField;
    qNCM_UFAJUSTAR_MVA: TStringField;
    qNCM_UFPERC_ICMS_INTERNO: TFloatField;
    qNCM_UFID_OBS_LEI: TIntegerField;
    sdsNotaFiscal_ItensID_OBS_LEI_NCM: TIntegerField;
    cdsNotaFiscal_ItensID_OBS_LEI_NCM: TIntegerField;
    cdsParametrosUSA_VALE: TStringField;
    cdsValeID: TIntegerField;
    cdsValeNUM_VALE: TIntegerField;
    cdsValeDTEMISSAO: TDateField;
    cdsValeID_CLIENTE: TIntegerField;
    cdsValeFILIAL: TIntegerField;
    cdsValeITEM: TIntegerField;
    cdsValeITEM_PEDIDO: TIntegerField;
    cdsValeID_PRODUTO: TIntegerField;
    cdsValeTAMANHO: TStringField;
    cdsValeQTD: TFMTBCDField;
    cdsValeUNIDADE: TStringField;
    cdsValeVLR_UNITARIO: TFloatField;
    cdsValeVLR_TOTAL: TFloatField;
    cdsValeID_PEDIDO: TIntegerField;
    cdsValeFATURADO: TStringField;
    cdsValeNUMERO_OS: TStringField;
    cdsValeNUMERO_OC: TStringField;
    cdsValeNUM_PEDIDO: TIntegerField;
    cdsValeCOMPLEMENTO_PROD: TStringField;
    cdsValeQTD_PECA: TIntegerField;
    cdsValePERC_IPI: TFloatField;
    cdsValeNOME_PRODUTO: TStringField;
    cdsValeREFERENCIA: TStringField;
    sdsNotaFiscal_ItensID_VALE: TIntegerField;
    sdsNotaFiscal_ItensITEM_VALE: TIntegerField;
    cdsNotaFiscal_ItensID_VALE: TIntegerField;
    cdsNotaFiscal_ItensITEM_VALE: TIntegerField;
    mValeAux: TClientDataSet;
    mValeAuxID_Vale: TIntegerField;
    sdsNotaFiscal_ItensNUM_VALE: TIntegerField;
    cdsNotaFiscal_ItensNUM_VALE: TIntegerField;
    cdsParametrosUSA_PRODUTO_CLIENTE: TStringField;
    cdsProdutoID_CLIENTE: TIntegerField;
    sdsNotaFiscal_ItensPERC_ICMSSUBST_INTERNO: TFloatField;
    sdsNotaFiscal_ItensVLR_ICMSSUBST_INTERNO: TFloatField;
    sdsNotaFiscal_ItensPERC_ICMSSUBST_PROPRIO: TFloatField;
    sdsNotaFiscal_ItensVLR_ICMSSUBST_PROPRIO: TFloatField;
    cdsNotaFiscal_ItensPERC_ICMSSUBST_INTERNO: TFloatField;
    cdsNotaFiscal_ItensVLR_ICMSSUBST_INTERNO: TFloatField;
    cdsNotaFiscal_ItensPERC_ICMSSUBST_PROPRIO: TFloatField;
    cdsNotaFiscal_ItensVLR_ICMSSUBST_PROPRIO: TFloatField;
    sdsNotaFiscal_ItensBASE_ICMSSUBST_PROPRIO: TFloatField;
    cdsNotaFiscal_ItensBASE_ICMSSUBST_PROPRIO: TFloatField;
    sdsNotaFiscalVLR_ICMSSUBST_PROPRIO: TFloatField;
    sdsNotaFiscalBASE_ICMSSUBST_PROPRIO: TFloatField;
    cdsNotaFiscalVLR_ICMSSUBST_PROPRIO: TFloatField;
    cdsNotaFiscalBASE_ICMSSUBST_PROPRIO: TFloatField;
    cdsParametrosSOMAR_PIS_COFINS_IMP: TStringField;
    cdsValeID_MOVESTOQUE: TIntegerField;
    cdsParametrosALERTA_VALE: TStringField;
    cdsProdutoPRECO_REVENDA: TFMTBCDField;
    cdsProdutoPRECO_INDUSTRIALIZACAO: TFMTBCDField;
    cdsProdutoPRECO_CONSUMO: TFMTBCDField;
    cdsParametrosPRODUTO_PRECO_POR_FINALIDADE: TStringField;
    sdsNotaFiscal_ItensGRAVACAO_COM_ERRO: TStringField;
    cdsNotaFiscal_ItensGRAVACAO_COM_ERRO: TStringField;
    cdsParametrosUSA_BOLETO_ACBR: TStringField;
    sdsNotaFiscalHREMISSAO: TTimeField;
    cdsNotaFiscalHREMISSAO: TTimeField;
    sdsNotaFiscalTIPO_DESTINO_OPERACAO: TSmallintField;
    sdsNotaFiscalTIPO_CONSUMIDOR: TSmallintField;
    sdsNotaFiscalTIPO_ATENDIMENTO: TSmallintField;
    cdsNotaFiscalTIPO_DESTINO_OPERACAO: TSmallintField;
    cdsNotaFiscalTIPO_CONSUMIDOR: TSmallintField;
    cdsNotaFiscalTIPO_ATENDIMENTO: TSmallintField;
    cdsClienteTIPO_CONSUMIDOR: TSmallintField;
    sdsNotaFiscal_DrawBack: TSQLDataSet;
    cdsNotaFiscal_DrawBack: TClientDataSet;
    dsNotaFiscal_DrawBack: TDataSource;
    sdsNotaFiscal_DrawBackID: TIntegerField;
    sdsNotaFiscal_DrawBackITEM: TIntegerField;
    sdsNotaFiscal_DrawBackITEM_DRAWBACK: TIntegerField;
    sdsNotaFiscal_DrawBackNUM_DRAWBACK: TStringField;
    sdsNotaFiscal_DrawBackNUM_REG_EXPORTACAO: TStringField;
    sdsNotaFiscal_DrawBackNUM_CHAVE_ACESSO_NFE: TStringField;
    sdsNotaFiscal_DrawBackQTD: TFloatField;
    cdsNotaFiscal_ItenssdsNotaFiscal_DrawBack: TDataSetField;
    cdsNotaFiscal_DrawBackID: TIntegerField;
    cdsNotaFiscal_DrawBackITEM: TIntegerField;
    cdsNotaFiscal_DrawBackITEM_DRAWBACK: TIntegerField;
    cdsNotaFiscal_DrawBackNUM_DRAWBACK: TStringField;
    cdsNotaFiscal_DrawBackNUM_REG_EXPORTACAO: TStringField;
    cdsNotaFiscal_DrawBackNUM_CHAVE_ACESSO_NFE: TStringField;
    cdsNotaFiscal_DrawBackQTD: TFloatField;
    sdsNotaFiscalLOCALDESPEXPORTACAO: TStringField;
    cdsNotaFiscalLOCALDESPEXPORTACAO: TStringField;
    cdsOperacao_NotaNATUREZA_NOTA: TStringField;
    sdsNotaFiscal_RefCTECHAVEACESSO_REF: TStringField;
    cdsNotaFiscal_RefCTECHAVEACESSO_REF: TStringField;
    cdsClienteTIPO_CONTRIBUINTE: TSmallintField;
    cdsClienteINSC_SUFRAMA: TStringField;
    cdsClienteINSC_MUNICIPAL: TStringField;
    sdsNotaFiscal_ImpTIPO_VIA_TRANSORTE: TSmallintField;
    sdsNotaFiscal_ImpVLR_AFRMM: TFloatField;
    sdsNotaFiscal_ImpTIPO_INTERMEDIO: TSmallintField;
    sdsNotaFiscal_ImpCNPJ: TStringField;
    sdsNotaFiscal_ImpUF_TERCEIRO: TStringField;
    cdsNotaFiscal_ImpTIPO_VIA_TRANSORTE: TSmallintField;
    cdsNotaFiscal_ImpVLR_AFRMM: TFloatField;
    cdsNotaFiscal_ImpTIPO_INTERMEDIO: TSmallintField;
    cdsNotaFiscal_ImpCNPJ: TStringField;
    cdsNotaFiscal_ImpUF_TERCEIRO: TStringField;
    sdsNotaFiscal_Imp_AdNUM_DRAWBACK: TStringField;
    cdsNotaFiscal_Imp_AdNUM_DRAWBACK: TStringField;
    sdsNotaFiscalVLR_ICMSDESONERADO: TFloatField;
    cdsNotaFiscalVLR_ICMSDESONERADO: TFloatField;
    sdsNotaFiscal_ItensVLR_ICMSDESONERADO: TFloatField;
    sdsNotaFiscal_ItensCOD_DESONERACAO: TSmallintField;
    cdsNotaFiscal_ItensVLR_ICMSDESONERADO: TFloatField;
    cdsNotaFiscal_ItensCOD_DESONERACAO: TSmallintField;
    cdsTab_CSTICMSCOD_DESONERACAO: TSmallintField;
    qUF: TSQLQuery;
    qUFPERC_ICMS: TFloatField;
    qUFIDPAIS: TIntegerField;
    qUFCODUF: TStringField;
    qUFPERC_ICMS_INTERNO: TFloatField;
    cdsCFOPGERAR_DESONERACAO_ICMS: TStringField;
    sdsDesoneracao: TSQLDataSet;
    dspDesoneracao: TDataSetProvider;
    cdsDesoneracao: TClientDataSet;
    cdsDesoneracaoCOD_CST_ICMS: TStringField;
    cdsDesoneracaoCOD_DESONERACAO: TSmallintField;
    cdsDesoneracaoNOME: TStringField;
    dsDesoneracao: TDataSource;
    sdsNotaFiscal_Imp_AuxVLR_AFRMM: TFloatField;
    sdsNotaFiscal_Imp_AuxTIPO_INTERMEDIO: TSmallintField;
    sdsNotaFiscal_Imp_AuxUF_TERCEIRO: TStringField;
    sdsNotaFiscal_Imp_AuxCNPJ_TERCEIRO: TStringField;
    sdsNotaFiscal_Imp_AuxNUM_DRAWBACK: TStringField;
    cdsNotaFiscal_Imp_AuxTIPO_INTERMEDIO: TSmallintField;
    cdsNotaFiscal_Imp_AuxUF_TERCEIRO: TStringField;
    cdsNotaFiscal_Imp_AuxCNPJ_TERCEIRO: TStringField;
    cdsNotaFiscal_Imp_AuxNUM_DRAWBACK: TStringField;
    sdsNotaFiscal_Imp_AuxTIPO_VIA_TRANSPORTE: TSmallintField;
    cdsNotaFiscal_Imp_AuxVLR_AFRMM: TFloatField;
    cdsNotaFiscal_Imp_AuxTIPO_VIA_TRANSPORTE: TSmallintField;
    sdsNotaFiscal_ItensVLR_ICMSOPERACAO: TFloatField;
    cdsNotaFiscal_ItensVLR_ICMSOPERACAO: TFloatField;
    cdsParametrosUSA_DESONERACAO: TStringField;
    cdsParametrosUSA_ICMSOPERACAO_CST51: TStringField;
    cdsParametrosABRIR_NFECONFIG: TStringField;
    sdsDuplicataTIPO_MOV: TStringField;
    cdsDuplicataTIPO_MOV: TStringField;
    cdsParametrosCONTROLAR_NOTIFICACAO: TStringField;
    qNCM_CST: TSQLQuery;
    qNCM_CSTID: TIntegerField;
    qNCM_CSTITEM: TIntegerField;
    qNCM_CSTUF: TStringField;
    qNCM_CSTID_CST_ICMS: TIntegerField;
    cdsCFOPGERAR_ESTOQUE: TStringField;
    cdsCFOPBAIXAR_FUT: TStringField;
    sdsNotaFiscal_Fut: TSQLDataSet;
    cdsNotaFiscal_Fut: TClientDataSet;
    dsNotaFiscal_Fut: TDataSource;
    sdsNotaFiscal_FutID: TIntegerField;
    sdsNotaFiscal_FutITEM: TIntegerField;
    sdsNotaFiscal_FutITEM_NOTAFUT: TIntegerField;
    sdsNotaFiscal_FutID_PEDIDO: TIntegerField;
    sdsNotaFiscal_FutITEM_PEDIDO: TIntegerField;
    sdsNotaFiscal_FutQTD: TFloatField;
    sdsNotaFiscal_FutNUM_PEDIDO: TIntegerField;
    cdsNotaFiscal_ItenssdsNotaFiscal_Fut: TDataSetField;
    cdsNotaFiscal_FutID: TIntegerField;
    cdsNotaFiscal_FutITEM: TIntegerField;
    cdsNotaFiscal_FutITEM_NOTAFUT: TIntegerField;
    cdsNotaFiscal_FutID_PEDIDO: TIntegerField;
    cdsNotaFiscal_FutITEM_PEDIDO: TIntegerField;
    cdsNotaFiscal_FutQTD: TFloatField;
    cdsNotaFiscal_FutNUM_PEDIDO: TIntegerField;
    sdsNotaFiscal_ItensID_PEDIDO_FUT: TIntegerField;
    sdsNotaFiscal_ItensITEM_PEDIDO_FUT: TIntegerField;
    cdsNotaFiscal_ItensID_PEDIDO_FUT: TIntegerField;
    cdsNotaFiscal_ItensITEM_PEDIDO_FUT: TIntegerField;
    cdsPedidoQTD_FUT: TFloatField;
    sdsNotaFiscal_FutTIPO_NOTA: TStringField;
    cdsNotaFiscal_FutTIPO_NOTA: TStringField;
    cdsParametrosUSA_PEDIDO_FUT: TStringField;
    cdsParametrosID_OPERACAO_PED_FUT: TIntegerField;
    sdsNotaFiscal_ItensID_OS: TIntegerField;
    sdsNotaFiscal_ItensITEM_OS: TIntegerField;
    sdsNotaFiscal_ItensITEM_OS_MAT: TIntegerField;
    cdsNotaFiscal_ItensID_OS: TIntegerField;
    cdsNotaFiscal_ItensITEM_OS: TIntegerField;
    cdsNotaFiscal_ItensITEM_OS_MAT: TIntegerField;
    sdsNotaFiscal_OS: TSQLDataSet;
    cdsNotaFiscal_OS: TClientDataSet;
    dsNotaFiscal_OS: TDataSource;
    sdsNotaFiscal_OSID: TIntegerField;
    sdsNotaFiscal_OSITEM: TIntegerField;
    sdsNotaFiscal_OSITEM_NOTAOS: TIntegerField;
    sdsNotaFiscal_OSID_OS: TIntegerField;
    sdsNotaFiscal_OSITEM_OS: TIntegerField;
    sdsNotaFiscal_OSITEM_OS_MAT: TIntegerField;
    sdsNotaFiscal_OSQTD: TFloatField;
    sdsNotaFiscal_OSNUM_OS: TIntegerField;
    sdsNotaFiscal_OSTIPO_NOTA: TStringField;
    cdsNotaFiscal_ItenssdsNotaFiscal_OS: TDataSetField;
    cdsNotaFiscal_OSID: TIntegerField;
    cdsNotaFiscal_OSITEM: TIntegerField;
    cdsNotaFiscal_OSITEM_NOTAOS: TIntegerField;
    cdsNotaFiscal_OSID_OS: TIntegerField;
    cdsNotaFiscal_OSITEM_OS: TIntegerField;
    cdsNotaFiscal_OSITEM_OS_MAT: TIntegerField;
    cdsNotaFiscal_OSQTD: TFloatField;
    cdsNotaFiscal_OSNUM_OS: TIntegerField;
    cdsNotaFiscal_OSTIPO_NOTA: TStringField;
    sdsOS: TSQLDataSet;
    dspOS: TDataSetProvider;
    cdsOS: TClientDataSet;
    dsOS: TDataSource;
    cdsParametrosUSA_SERVICO: TStringField;
    sdsNotaFiscal_ItensNUM_OSERVICO: TIntegerField;
    cdsNotaFiscal_ItensNUM_OSERVICO: TIntegerField;
    cdsParametrosUSA_COPIA_OS_NOTA: TStringField;
    cdsOSID: TIntegerField;
    cdsOSNUM_OS: TIntegerField;
    cdsOSID_CLIENTE: TIntegerField;
    cdsOSDTEMISSAO: TDateField;
    cdsOSID_PRODUTO: TIntegerField;
    cdsOSVLR_UNITARIO: TFloatField;
    cdsOSQTD: TFloatField;
    cdsOSQTD_FATURADO: TFloatField;
    cdsOSQTD_RESTANTE: TFloatField;
    cdsOSQTD_AFATURAR: TFloatField;
    cdsOSID_NCM: TIntegerField;
    cdsOSNOMECLIENTE: TStringField;
    cdsOSREFERENCIA: TStringField;
    cdsOSNOMEPRODUTO: TStringField;
    cdsOSCNPJ_CPF: TStringField;
    cdsOSITEM: TIntegerField;
    cdsOSUNIDADE: TStringField;
    cdsOSID_CONDPGTO: TIntegerField;
    cdsOSNCM: TStringField;
    cdsOSID_TRANSPORTADORA: TIntegerField;
    cdsOSPERC_IPI: TFloatField;
    cdsOSITEM_MAT: TIntegerField;
    qIBPTPERC_ESTADUAL: TFloatField;
    qIBPTPERC_MUNICIPAL: TFloatField;
    sdsNotaFiscalVLR_TRIBUTOS_ESTADUAL: TFloatField;
    sdsNotaFiscalVLR_TRIBUTOS_MUNICIPAL: TFloatField;
    cdsNotaFiscalVLR_TRIBUTOS_ESTADUAL: TFloatField;
    cdsNotaFiscalVLR_TRIBUTOS_MUNICIPAL: TFloatField;
    sdsNotaFiscal_ItensVERSAO_TRIBUTO: TStringField;
    sdsNotaFiscal_ItensFONTE_TRIBUTO: TStringField;
    cdsNotaFiscal_ItensVERSAO_TRIBUTO: TStringField;
    cdsNotaFiscal_ItensFONTE_TRIBUTO: TStringField;
    sdsNotaFiscal_ItensVLR_TRIBUTOS_ESTADUAL: TFloatField;
    sdsNotaFiscal_ItensVLR_TRIBUTOS_MUNICIPAL: TFloatField;
    cdsNotaFiscal_ItensVLR_TRIBUTOS_ESTADUAL: TFloatField;
    cdsNotaFiscal_ItensVLR_TRIBUTOS_MUNICIPAL: TFloatField;
    sdsNotaFiscal_ItensPERC_TRIBUTO_ESTADUAL: TFloatField;
    sdsNotaFiscal_ItensPERC_TRIBUTO_MUNICIPAL: TFloatField;
    cdsNotaFiscal_ItensPERC_TRIBUTO_ESTADUAL: TFloatField;
    cdsNotaFiscal_ItensPERC_TRIBUTO_MUNICIPAL: TFloatField;
    qIBPTFONTE: TStringField;
    qIBPTVERSAO: TStringField;
    sdsNotaFiscalFONTE_TRIBUTOS: TStringField;
    sdsNotaFiscalVERSAO_TRIBUTOS: TStringField;
    cdsNotaFiscalFONTE_TRIBUTOS: TStringField;
    cdsNotaFiscalVERSAO_TRIBUTOS: TStringField;
    sdsNotaFiscal_ItensPERC_TRIBUTO_FEDERAL: TFloatField;
    sdsNotaFiscal_ItensVLR_TRIBUTOS_FEDERAL: TFloatField;
    cdsNotaFiscal_ItensPERC_TRIBUTO_FEDERAL: TFloatField;
    cdsNotaFiscal_ItensVLR_TRIBUTOS_FEDERAL: TFloatField;
    sdsNotaFiscalVLR_TRIBUTOS_FEDERAL: TFloatField;
    cdsNotaFiscalVLR_TRIBUTOS_FEDERAL: TFloatField;
    cdsParametrosIMP_TIPO_TRIBUTOS_ITENS: TStringField;
    cdsParametrosIMP_TIPO_TRIBUTOS: TStringField;
    cdsParametrosIMP_PERC_TRIB_DADOS_ADIC: TStringField;
    cdsParametrosIMP_PERC_TRIB_ITENS: TStringField;
    mAux_ImpTIPO_VIA_TRANSORTE: TIntegerField;
    mAux_ImpVLR_AFRMM: TFloatField;
    mAux_ImpTIPO_INTERMEDIO: TIntegerField;
    mAux_ImpCNPJ: TStringField;
    mAux_ImpUF_TERCEIRO: TStringField;
    mAux_Imp_AdNUM_DRAWBACK: TStringField;
    sdsCombinacao: TSQLDataSet;
    dspCombinacao: TDataSetProvider;
    cdsCombinacao: TClientDataSet;
    dsCombinacao: TDataSource;
    cdsParametrosINFORMAR_COR_MATERIAL: TStringField;
    cdsParametrosINFORMAR_COR_PROD: TStringField;
    cdsPedidoID_COR: TFMTBCDField;
    cdsPedidoNOME_COR: TStringField;
    cdsClienteCARIMBO: TStringField;
    cdsParametrosCONTROLAR_DUP_PEDIDO: TStringField;
    qDupPedido: TSQLQuery;
    qDupPedidoID: TIntegerField;
    qDupPedidoID_PEDIDO: TIntegerField;
    qDupPedidoVLR_PARCELA: TFloatField;
    sdsNotaFiscal_ItensQTD_DESC_ESTOQUE: TFloatField;
    cdsNotaFiscal_ItensQTD_DESC_ESTOQUE: TFloatField;
    qEstoque_Descaa: TSQLQuery;
    qEstoque_DescaaQTD: TFloatField;
    qEstoque_DescaaTIPO_NOTA: TStringField;
    sdsEstoque_Desc: TSQLDataSet;
    dspEstoque_Desc: TDataSetProvider;
    cdsEstoque_Desc: TClientDataSet;
    cdsEstoque_DescQTD: TFloatField;
    cdsEstoque_DescTIPO_NOTA: TStringField;
    cdsParametrosOBS_SIMPLES2: TStringField;
    cdsParametrosPERC_COMISSAO_PAGA_NOTA: TFloatField;
    sdsNotaFiscalPERC_COMISSAO_PAGAR_NOTA: TFloatField;
    cdsNotaFiscalPERC_COMISSAO_PAGAR_NOTA: TFloatField;
    sdsDuplicataPERC_COMISSAO_PAGAR_NOTA: TFloatField;
    cdsDuplicataPERC_COMISSAO_PAGAR_NOTA: TFloatField;
    cdsPedidoID_MOVESTOQUE: TIntegerField;
    cdsParametrosCALC_VOLUME_EMB: TStringField;
    cdsParametrosMOSTRAR_EMBALAGEM: TStringField;
    mEmbAux: TClientDataSet;
    mEmbAuxID_Material: TIntegerField;
    mEmbAuxQtd_Capacidade: TIntegerField;
    mEmbAuxQtd_Produto: TIntegerField;
    mEmbAuxQtd_Restante: TIntegerField;
    mEmbAuxQtd_Embalagem: TIntegerField;
    sdsNotaFiscalNFEENVIADA: TStringField;
    cdsNotaFiscalNFEENVIADA: TStringField;
    cdsNotaFiscal_ConsultaNFEENVIADA: TStringField;
    cdsParametrosCONTROLAR_ESTOQUE_SAIDA: TStringField;
    cdsParametrosSENHA_LIBERA_ESTOQUE: TStringField;
    cdsParametrosALERTA_VLR_ATRASO: TStringField;
    sdsNotaFiscal_ItensITEM_ORIGINAL: TIntegerField;
    cdsNotaFiscal_ItensITEM_ORIGINAL: TIntegerField;
    cdsCFOPCALCULAR_ICMS_DIFERIDO: TStringField;
    cdsTab_CSTICMSPERC_DIFERIMENTO: TFloatField;
    sdsNotaFiscal_ItensPERC_DIFERIMENTO: TFloatField;
    cdsNotaFiscal_ItensPERC_DIFERIMENTO: TFloatField;
    sdsNotaFiscal_ItensVLR_ICMSDIFERIDO: TFloatField;
    cdsNotaFiscal_ItensVLR_ICMSDIFERIDO: TFloatField;
    cdsCombinacaoID_PRODUTO: TIntegerField;
    cdsCombinacaoNOME: TStringField;
    cdsCombinacaoID_COR_COMBINACAO: TIntegerField;
    sdsNotaFiscal_ItensNOME_COR_COMBINACAO: TStringField;
    cdsNotaFiscal_ItensNOME_COR_COMBINACAO: TStringField;
    cdsParametrosSOMAR_SISCOMEX_IMP: TStringField;
    cdsParametrosSOMAR_IPI_IMP: TStringField;
    cdsParametrosSOMAR_II_IMP: TStringField;
    cdsParametrosSOMAR_SEGURO_IMP: TStringField;
    cdsParametrosSOMAR_ADUANEIRA_IMP: TStringField;
    sdsNotaFiscal_ItensVLR_TAXACISCOMEX: TFloatField;
    cdsNotaFiscal_ItensVLR_TAXACISCOMEX: TFloatField;
    sdsPRC_Atualiza_DtNota: TSQLDataSet;
    sdsNotaFiscal_ItensDIFERENCA_ICMS: TStringField;
    cdsNotaFiscal_ItensDIFERENCA_ICMS: TStringField;
    cdsParametrosGRAVAR_CONSUMO_NOTA: TStringField;
    sdsNotaFiscal_ProdPrincipal: TSQLDataSet;
    dspNotaFiscal_ProdPrincipal: TDataSetProvider;
    cdsNotaFiscal_ProdPrincipal: TClientDataSet;
    dsNotaFiscal_ProdPrincipal: TDataSource;
    sdsNotaFiscal_ProdPrincipalID: TIntegerField;
    sdsNotaFiscal_ProdPrincipalITEM_ORIGINAL: TIntegerField;
    sdsNotaFiscal_ProdPrincipalID_PRODUTO: TIntegerField;
    sdsNotaFiscal_ProdPrincipalVLR_PRODUTO: TFloatField;
    sdsNotaFiscal_ProdPrincipalQTD: TIntegerField;
    cdsNotaFiscal_ProdPrincipalID: TIntegerField;
    cdsNotaFiscal_ProdPrincipalITEM_ORIGINAL: TIntegerField;
    cdsNotaFiscal_ProdPrincipalID_PRODUTO: TIntegerField;
    cdsNotaFiscal_ProdPrincipalVLR_PRODUTO: TFloatField;
    cdsNotaFiscal_ProdPrincipalQTD: TIntegerField;
    sdsNotaFiscal_ProdPrincipalVLR_TOTAL: TFloatField;
    cdsNotaFiscal_ProdPrincipalVLR_TOTAL: TFloatField;
    cdsParametrosEMPRESA_AMBIENTES: TStringField;
    cdsPedido_TipoID_ACABAMENTO: TIntegerField;
    cdsPedido_TipoID_REDONDO_MOD: TIntegerField;
    cdsPedido_TipoID_CMOEDA: TIntegerField;
    cdsPedido_TipoID_FUROS: TIntegerField;
    cdsPedido_TipoID_FURACAO: TIntegerField;
    cdsPedido_TipoID_PERFIL: TIntegerField;
    cdsPedido_TipoID_VIDRO: TIntegerField;
    cdsPedido_TipoQTD_FUROS: TIntegerField;
    mPedAmbientes: TClientDataSet;
    mPedAmbientesID_Pedido: TIntegerField;
    cdsPedidoTIPO_ACESSORIO: TStringField;
    cdsPedidoNOME_GRUPO: TStringField;
    cdsPedidoNOME_CONSUMIDOR: TStringField;
    sdsDuplicataANO_REF: TIntegerField;
    sdsDuplicataMES_REF: TIntegerField;
    cdsDuplicataANO_REF: TIntegerField;
    cdsDuplicataMES_REF: TIntegerField;
    sdsDuplicataTITULO_CARTORIO: TStringField;
    cdsDuplicataTITULO_CARTORIO: TStringField;
    sdsNotaFiscal_ItensQTD_LANCAR_ESTOQUE: TFloatField;
    cdsNotaFiscal_ItensQTD_LANCAR_ESTOQUE: TFloatField;
    cdsPedidoQTD_LANCAR_ESTOQUE: TFloatField;
    cdsParametrosUNIDADE_PECA: TStringField;
    cdsProdutoID_CONTA_ORCAMENTO: TIntegerField;
    cdsParametrosUSA_LOCAL_ESTOQUE: TStringField;
    sdsLocal_Estoque: TSQLDataSet;
    dspLocal_Estoque: TDataSetProvider;
    cdsLocal_Estoque: TClientDataSet;
    cdsLocal_EstoqueID: TIntegerField;
    cdsLocal_EstoqueCOD_LOCAL: TIntegerField;
    cdsLocal_EstoqueNOME: TStringField;
    cdsLocal_EstoqueENDERECO: TStringField;
    cdsLocal_EstoqueNUM_ENDERECO: TStringField;
    cdsLocal_EstoqueID_CIDADE: TIntegerField;
    cdsLocal_EstoqueUF: TStringField;
    cdsLocal_EstoqueBAIRRO: TStringField;
    cdsLocal_EstoqueCEP: TStringField;
    cdsLocal_EstoquePRINCIPAL: TStringField;
    cdsLocal_EstoqueINATIVO: TStringField;
    dsLocal_Estoque: TDataSource;
    sdsNotaFiscalID_LOCAL_ESTOQUE: TIntegerField;
    cdsNotaFiscalID_LOCAL_ESTOQUE: TIntegerField;
    cdsParametrosFUSOHORARIO: TStringField;
    cdsParametrosFUSOHORARIO_VERAO: TStringField;
    cdsParametrosUSA_APROVACAO_PED: TStringField;
    cdsClientePERC_DESC_SUFRAMA: TFloatField;
    cdsParametrosUSA_LOTE_CONTROLE: TStringField;
    sdsNotaFiscal_ItensNUM_LOTE_CONTROLE: TStringField;
    cdsNotaFiscal_ItensNUM_LOTE_CONTROLE: TStringField;
    cdsNotaEntradaNUM_LOTE_CONTROLE: TStringField;
    qPessoa_FiscalDESC_SUFRAMA_PIS_COFINS: TStringField;
    qPessoa_FiscalDESC_SUFRAMA_ICMS: TStringField;
    qPessoa_FiscalDESC_SUFRAMA_IPI: TStringField;
    qPessoa_FiscalOBS_LEI_SUFRAMA: TStringField;
    qPessoa_FiscalOBS_LEI_DADOS_ADICIONAIS: TStringField;
    cdsCFOPUSA_REGRA_ORGAO_PUBLICO: TStringField;
    cdsParametrosUSA_PERC_ORGAO_PUBLICO: TStringField;
    cdsParametrosUSA_PERC_ORGAO_PUBLICO_IMP: TStringField;
    cdsClienteORGAO_PUBLICO: TStringField;
    cdsParametrosUSA_APROVACAO_OC_FORN: TStringField;
    cdsParametrosID_LOCAL_ESTOQUE_NTE: TIntegerField;
    qPessoa_FiscalID_CST_ICMS_SUFRAMA: TIntegerField;
    qPessoa_FiscalID_CST_PIS_COFINS_SUFRAMA: TIntegerField;
    qPessoa_FiscalID_CST_IPI_SUFRAMA: TIntegerField;
    sdsNotaFiscalVLR_ADIANTAMENTO: TFloatField;
    cdsNotaFiscalVLR_ADIANTAMENTO: TFloatField;
    cdsParametrosUSA_ADIANTAMENTO_PEDIDO: TStringField;
    cdsPedidoVLR_ADIANTAMENTO: TFloatField;
    mPedidoAuxVlr_Adiantamento: TFloatField;
    cdsPedidoPERC_COMISSAO_ITEM: TFloatField;
    cdsPedidoPERC_COMISSAO: TFloatField;
    cdsParametrosTIPO_COMISSAO_PROD: TStringField;
    qProduto_UFPERC_REDUCAO_ICMS: TFloatField;
    cdsParametrosSOMAR_BASE_ICMS_SISCOMEX: TStringField;
    cdsParametrosCONTROLAR_SERIE_OPERACAO: TStringField;
    cdsOperacao_NotaSERIE_NFE: TStringField;
    cdsParametrosMOSTRAR_END_ENTREGA_DADOS_ADI: TStringField;
    mLoteControle: TClientDataSet;
    dsmLoteConrole: TDataSource;
    mLoteControleID_Pedido: TIntegerField;
    mLoteControleItem_Pedido: TIntegerField;
    mLoteControleQtd: TFloatField;
    mLoteControleNum_Lote_Controle: TStringField;
    cdsPedidoNUM_LOTE_CONTROLE: TStringField;
    mItensAlt: TClientDataSet;
    mItensAltID_Produto: TIntegerField;
    mItensAltID_Cor: TIntegerField;
    mItensAltTamanho: TStringField;
    mItensAltQtd: TFloatField;
    sdsNotaFiscal_ItensAux: TSQLDataSet;
    dspNotaFiscal_ItensAux: TDataSetProvider;
    cdsNotaFiscal_ItensAux: TClientDataSet;
    sdsNotaFiscal_ItensAuxID: TIntegerField;
    sdsNotaFiscal_ItensAuxID_PRODUTO: TIntegerField;
    sdsNotaFiscal_ItensAuxID_COR: TIntegerField;
    sdsNotaFiscal_ItensAuxTAMANHO: TStringField;
    sdsNotaFiscal_ItensAuxQTD: TFloatField;
    cdsNotaFiscal_ItensAuxID: TIntegerField;
    cdsNotaFiscal_ItensAuxID_PRODUTO: TIntegerField;
    cdsNotaFiscal_ItensAuxID_COR: TIntegerField;
    cdsNotaFiscal_ItensAuxTAMANHO: TStringField;
    cdsNotaFiscal_ItensAuxQTD: TFloatField;
    sdsNotaFiscal_ItensAuxITEM: TIntegerField;
    cdsNotaFiscal_ItensAuxITEM: TIntegerField;
    cdsParametrosMSG_PADRAO_NOTA: TMemoField;
    cdsParametrosALERTA_FRETE_DEST: TStringField;
    mPedidoAuxOBS_Nota: TStringField;
    cdsTab_NCMCOD_CEST: TStringField;
    sdsEnqIPI: TSQLDataSet;
    dspEnqIPI: TDataSetProvider;
    cdsEnqIPI: TClientDataSet;
    dsEnqIPI: TDataSource;
    cdsEnqIPIID: TIntegerField;
    cdsEnqIPICODIGO: TStringField;
    cdsEnqIPITIPO: TStringField;
    cdsEnqIPIDESCRICAO: TStringField;
    sdsNotaFiscal_ItensID_ENQIPI: TIntegerField;
    cdsNotaFiscal_ItensID_ENQIPI: TIntegerField;
    sdsNotaFiscal_ItensPERC_ICMS_FCP: TFloatField;
    sdsNotaFiscal_ItensPERC_ICMS_UF_DEST: TFloatField;
    sdsNotaFiscal_ItensPERC_ICMS_PARTILHA: TFloatField;
    sdsNotaFiscal_ItensVLR_ICMS_FCP: TFloatField;
    sdsNotaFiscal_ItensVLR_ICMS_UF_DEST: TFloatField;
    sdsNotaFiscal_ItensVLR_ICMS_UF_REMET: TFloatField;
    cdsNotaFiscal_ItensPERC_ICMS_FCP: TFloatField;
    cdsNotaFiscal_ItensPERC_ICMS_UF_DEST: TFloatField;
    cdsNotaFiscal_ItensPERC_ICMS_PARTILHA: TFloatField;
    cdsNotaFiscal_ItensVLR_ICMS_FCP: TFloatField;
    cdsNotaFiscal_ItensVLR_ICMS_UF_DEST: TFloatField;
    cdsNotaFiscal_ItensVLR_ICMS_UF_REMET: TFloatField;
    qUFPERC_CP: TFloatField;
    sdsNotaFiscalVLR_ICMS_FCP: TFloatField;
    sdsNotaFiscalVLR_ICMS_UF_DEST: TFloatField;
    sdsNotaFiscalVLR_ICMS_UF_REMET: TFloatField;
    cdsNotaFiscalVLR_ICMS_FCP: TFloatField;
    cdsNotaFiscalVLR_ICMS_UF_DEST: TFloatField;
    cdsNotaFiscalVLR_ICMS_UF_REMET: TFloatField;
    qIcmsPartilha: TSQLQuery;
    qIcmsPartilhaANO: TIntegerField;
    qIcmsPartilhaPERC_DESTINO: TFloatField;
    cdsUFPERC_CP: TFloatField;
    sdsCFOP_VariacaoID_ENQIPI: TIntegerField;
    cdsCFOP_VariacaoID_ENQIPI: TIntegerField;
    cdsProdutoID_ENQIPI: TIntegerField;
    qPessoa_FiscalID_ENQIPI_SUFRAMA: TIntegerField;
    qPessoa_FiscalID_ENQIPI: TIntegerField;
    cdsProdutoID_CFOP_NFCE: TIntegerField;
    cdsFilialID_ENQIPI: TIntegerField;
    cdsPedidoID_TIPO_COBRANCA: TIntegerField;
    cdsPedidoID_CONTA: TIntegerField;
    qParametros_Est: TSQLQuery;
    qParametros_EstID: TIntegerField;
    qParametros_EstUSA_RESERVA: TStringField;
    sdsNotaFiscal_ItensPERC_ICMS_INTER: TFloatField;
    cdsNotaFiscal_ItensPERC_ICMS_INTER: TFloatField;
    qParametros_Com: TSQLQuery;
    qParametros_ComID: TIntegerField;
    qParametros_ComCOMISSAO_DESCONTAR: TStringField;
    sdsNotaFiscalVLR_BASE_COMISSAO: TFloatField;
    cdsNotaFiscalVLR_BASE_COMISSAO: TFloatField;
    sdsNotaFiscal_ParcPERC_BASE_COMISSAO: TFloatField;
    cdsNotaFiscal_ParcPERC_BASE_COMISSAO: TFloatField;
    sdsDuplicataPERC_BASE_COMISSAO: TFloatField;
    cdsDuplicataPERC_BASE_COMISSAO: TFloatField;
    qParametros_Imp: TSQLQuery;
    qParametros_ImpID: TIntegerField;
    qParametros_ImpSOMAR_VLR_II_NO_IPI: TStringField;
    cdsNotaFiscal_ConsultaVLR_BASE_COMISSAO: TFloatField;
    qParametros_NFe: TSQLQuery;
    qParametros_NFeID: TIntegerField;
    qParametros_NFeSOMAR_IPI_NO_ICMS: TStringField;
    cdsFilialCALCULAR_DIFAL: TStringField;
    cdsPedidoLOCALENTREGA: TStringField;
    qParametros_EstGERAR_LOTE_AUT: TStringField;
    cdsProdutoLANCA_LOTE_CONTROLE: TStringField;
    cdsPedidoLANCA_LOTE_CONTROLE: TStringField;
    cdsPedidoCOPIAR_SELECIONADO: TStringField;
    sdsEstoqueLoteAux: TSQLDataSet;
    dspEstoqueLoteAux: TDataSetProvider;
    cdsEstoqueLoteAux: TClientDataSet;
    cdsEstoqueLoteAuxDTMOVIMENTO: TDateField;
    cdsEstoqueLoteAuxNUM_LOTE_CONTROLE: TStringField;
    cdsEstoqueLoteAuxQTD: TFloatField;
    cdsContasGERAR_BOLETO: TStringField;
    cdsContasGERAR_DEPOSITO: TStringField;
    qParametros_Fin: TSQLQuery;
    qParametros_FinCONTROLAR_BANCO_REM_DEP: TStringField;
    cdsProdutoCOD_CEST: TStringField;
    qParametros_Ped: TSQLQuery;
    qParametros_PedCONTROLAR_FILIAL_NA_COPIA_NOTA: TStringField;
    cdsPedidoNOTIFICACAO: TIntegerField;
    qParametros_PedID_CONDPGTO_PRIMEIRO_PED: TIntegerField;
    sdsNotaFiscalNOTIFICACAO: TIntegerField;
    cdsNotaFiscalNOTIFICACAO: TIntegerField;
    cdsParametrosSENHA_PEDIDO: TStringField;
    cdsPedidoID_VENDEDOR: TIntegerField;
    qParametros_NFeSOMAR_IPI_NO_ICM_TC: TStringField;
    qParametros_NFeIMP_COMBINACAO_NFE: TStringField;
    qParametros_PedUSA_PROCESSO: TStringField;
    cdsProdutoCOD_PRODUTO_CLI: TStringField;
    qParametros_NFeUSA_OPCAO_IMP_COD_CLI: TStringField;
    cdsClienteIMP_COD_PRODUTO_CLI: TStringField;
    mPedidoAuxVlr_Entrada: TFloatField;
    cdsPedidoVLR_ENTRADA: TFloatField;
    cdsPedidoGERA_ENTRADA_NO_PEDIDO: TStringField;
    cdsFilialLOCALSERVIDORNFE: TStringField;
    qParametros_NFeIMP_END_COBRANCA: TStringField;
    cdsPedidoITEM_ORIGINAL: TIntegerField;
    sdsNotaFiscal_ItensGRAVOU_TAB_TAMANHO: TStringField;
    cdsNotaFiscal_ItensGRAVOU_TAB_TAMANHO: TStringField;
    sdsNotaFiscal_Tam: TSQLDataSet;
    sdsNotaFiscal_TamID: TIntegerField;
    sdsNotaFiscal_TamITEM: TIntegerField;
    sdsNotaFiscal_TamTAMANHO: TStringField;
    sdsNotaFiscal_TamQTD: TFMTBCDField;
    sdsNotaFiscal_TamID_PEDIDO: TIntegerField;
    sdsNotaFiscal_TamITEM_PEDIDO: TIntegerField;
    cdsNotaFiscal_Tam: TClientDataSet;
    cdsNotaFiscal_ItenssdsNotaFiscal_Tam: TDataSetField;
    cdsNotaFiscal_TamID: TIntegerField;
    cdsNotaFiscal_TamITEM: TIntegerField;
    cdsNotaFiscal_TamTAMANHO: TStringField;
    cdsNotaFiscal_TamQTD: TFMTBCDField;
    cdsNotaFiscal_TamID_PEDIDO: TIntegerField;
    cdsNotaFiscal_TamITEM_PEDIDO: TIntegerField;
    dsNotaFiscal_Tam: TDataSource;
    qParametros_NFeGRAVAR_TAB_TAMANHO: TStringField;
    cdsPedidoID_GRADE: TIntegerField;
    sdsNotaFiscal_TamID_MOVESTOQUE: TIntegerField;
    cdsNotaFiscal_TamID_MOVESTOQUE: TIntegerField;
    qParametros_NFeUSA_SEL_PEDIDO_TAM: TStringField;
    sdsPedido_Tam: TSQLDataSet;
    dspPedido_Tam: TDataSetProvider;
    cdsPedido_Tam: TClientDataSet;
    cdsPedido_TamID: TIntegerField;
    cdsPedido_TamPEDIDO_CLIENTE: TStringField;
    cdsPedido_TamID_CLIENTE: TIntegerField;
    cdsPedido_TamDTEMISSAO: TDateField;
    cdsPedido_TamID_PRODUTO: TIntegerField;
    cdsPedido_TamID_CFOP: TIntegerField;
    cdsPedido_TamNUM_PEDIDO: TIntegerField;
    cdsPedido_TamVLR_UNITARIO: TFloatField;
    cdsPedido_TamID_NCM_PED: TIntegerField;
    cdsPedido_TamREFERENCIA: TStringField;
    cdsPedido_TamNOMECLIENTE: TStringField;
    cdsPedido_TamREFERENCIA_PRO: TStringField;
    cdsPedido_TamNOMEPRODUTO: TStringField;
    cdsPedido_TamCNPJ_CPF: TStringField;
    cdsPedido_TamDTENTREGA: TDateField;
    cdsPedido_TamVLR_DESCONTO: TFloatField;
    cdsPedido_TamID_NCM: TIntegerField;
    cdsPedido_TamUNIDADE: TStringField;
    cdsPedido_TamPERC_IPI: TFloatField;
    cdsPedido_TamOBS_COMPLEMENTAR: TStringField;
    cdsPedido_TamNUMOS: TStringField;
    cdsPedido_TamTIPO_FRETE: TStringField;
    cdsPedido_TamID_CONDPGTO: TIntegerField;
    cdsPedido_TamIMP_OC_NOTA: TStringField;
    cdsPedido_TamID_VARIACAO: TIntegerField;
    cdsPedido_TamTIPO_REG: TStringField;
    cdsPedido_TamID_TRANSPORTADORA: TIntegerField;
    cdsPedido_TamVLR_DESCONTORATEIO: TFloatField;
    cdsPedido_TamID_COR: TFMTBCDField;
    cdsPedido_TamNOME_COR: TStringField;
    cdsPedido_TamPERC_COMISSAO_ITEM: TFloatField;
    cdsPedido_TamPERC_COMISSAO: TFloatField;
    cdsPedido_TamID_TIPO_COBRANCA: TIntegerField;
    cdsPedido_TamID_CONTA: TIntegerField;
    cdsPedido_TamLOCALENTREGA: TStringField;
    cdsPedido_TamLANCA_LOTE_CONTROLE: TStringField;
    cdsPedido_TamCOPIAR_SELECIONADO: TStringField;
    cdsPedido_TamNOTIFICACAO: TIntegerField;
    cdsPedido_TamID_VENDEDOR: TIntegerField;
    cdsPedido_TamITEM_ORIGINAL: TIntegerField;
    cdsPedido_TamID_GRADE: TIntegerField;
    cdsPedido_TamQTD: TFloatField;
    cdsPedido_TamQTD_FATURADO: TFloatField;
    cdsPedido_TamQTD_RESTANTE: TFloatField;
    cdsPedido_TamQTD_AFATURAR: TFloatField;
    cdsPedido_TamQTD_LIBERADA: TFloatField;
    cdsPedido_TamclQtd_Restante: TFloatField;
    cdsPedido_TamclQtd_NaoLiberada: TFloatField;
    dsPedido_Tam: TDataSource;
    qParametros_Prod: TSQLQuery;
    qParametros_ProdUSA_PRODUTO_FILIAL: TStringField;
    qParametros_Geral: TSQLQuery;
    qParametros_GeralUSAR_PESSOA_FILIAL: TStringField;
    qParametros_ImpSOMAR_FRETE_ICMS: TStringField;
    mEtiquetas: TClientDataSet;
    dsmEtiquetas: TDataSource;
    mEtiquetasREFERENCIA: TStringField;
    mEtiquetasNOME: TStringField;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    mEtiquetasITEM: TIntegerField;
    sdsDuplicataID_TERMINAL: TIntegerField;
    cdsDuplicataID_TERMINAL: TIntegerField;
    sdsCFOP_VariacaoCALCULAR_ST: TStringField;
    cdsCFOP_VariacaoCALCULAR_ST: TStringField;
    cdsCFOPID_COFINS_SIMP: TIntegerField;
    cdsCFOPID_PIS_SIMP: TIntegerField;
    cdsCFOPPERC_PIS_SIMP: TFloatField;
    cdsCFOPPERC_COFINS_SIMP: TFloatField;
    cdsCFOPTIPO_PIS_SIMP: TStringField;
    cdsCFOPTIPO_COFINS_SIMP: TStringField;
    sdsNotaFiscal_ItensVLR_OUTROS: TFloatField;
    cdsNotaFiscal_ItensVLR_OUTROS: TFloatField;
    sdsDuplicataVLR_MULTA: TFloatField;
    cdsDuplicataVLR_MULTA: TFloatField;
    sdsDuplicata_HistVLR_MULTA: TFloatField;
    cdsDuplicata_HistVLR_MULTA: TFloatField;
    cdsProdutoNUM_MS: TStringField;
    cdsProduto_ConsumoREFERENCIA: TStringField;
    cdsProduto_ConsumoNUM_MS: TStringField;
    qParametros_NFeCOPIAR_QTD_REST_ADEVOLVER: TStringField;
    qParametros_NFeIMP_CONSUMO_NOTA: TStringField;
    qParametros_EstGERAR_LOTE_AUT_CONSUMO: TStringField;
    qParametros_Usuario: TSQLQuery;
    qParametros_UsuarioID: TIntegerField;
    qParametros_UsuarioUSUARIO: TStringField;
    qParametros_UsuarioSENHA_PEDIDO: TStringField;
    qParametros_UsuarioSENHA_CREDITO: TStringField;
    sdsHist_Senha: TSQLDataSet;
    sdsHist_SenhaID: TIntegerField;
    sdsHist_SenhaID_DOC: TIntegerField;
    sdsHist_SenhaITEM_DOC: TIntegerField;
    sdsHist_SenhaNUM_DOC: TIntegerField;
    sdsHist_SenhaTIPO_ARQ: TStringField;
    sdsHist_SenhaTIPO_DOC: TStringField;
    sdsHist_SenhaTIPO_HIST: TStringField;
    sdsHist_SenhaSENHA: TStringField;
    sdsHist_SenhaSENHA_PERTENCE_AO_USUARIO: TStringField;
    sdsHist_SenhaUSUARIO: TStringField;
    sdsHist_SenhaDATA: TDateField;
    sdsHist_SenhaHORA: TTimeField;
    dspHist_Senha: TDataSetProvider;
    cdsHist_Senha: TClientDataSet;
    cdsHist_SenhaID: TIntegerField;
    cdsHist_SenhaID_DOC: TIntegerField;
    cdsHist_SenhaITEM_DOC: TIntegerField;
    cdsHist_SenhaNUM_DOC: TIntegerField;
    cdsHist_SenhaTIPO_ARQ: TStringField;
    cdsHist_SenhaTIPO_DOC: TStringField;
    cdsHist_SenhaTIPO_HIST: TStringField;
    cdsHist_SenhaSENHA: TStringField;
    cdsHist_SenhaSENHA_PERTENCE_AO_USUARIO: TStringField;
    cdsHist_SenhaUSUARIO: TStringField;
    cdsHist_SenhaDATA: TDateField;
    cdsHist_SenhaHORA: TTimeField;
    dsHist_Senha: TDataSource;
    mSenha: TClientDataSet;
    mSenhaSenha: TStringField;
    mSenhaItem: TIntegerField;
    mSenhaTipo_Alt: TStringField;
    mSenhaTipo_Doc: TStringField;
    mSenhaSenha_Pertence: TStringField;
    qParametros_GeralGRAVAR_HIST_SENHA: TStringField;
    cdsFilialDIFAL_GERAR_VALORES: TStringField;
    cdsFilialOBS_DIFAL: TStringField;
    cdsCFOPNFEFINALIDADE: TStringField;
    cdsProdutoIMP_CONSUMO_NFE: TStringField;
    qProduto_UFID_CST_ICMS: TIntegerField;
    qPessoa_FiscalID_CST_ICMS: TIntegerField;
    sdsNotaFiscal_ItensID_MOVESTOQUE_PED: TIntegerField;
    cdsNotaFiscal_ItensID_MOVESTOQUE_PED: TIntegerField;
    qParametros_FinSENHA_RECIBO: TStringField;
    sdsNotaFiscal_ItensPERC_ICMS_DESON: TFloatField;
    cdsNotaFiscal_ItensPERC_ICMS_DESON: TFloatField;
    sdsNotaFiscal_ItensPERC_PIS_COFINS_SUFRAMA: TFloatField;
    sdsNotaFiscal_ItensVLR_PIS_COFINS_SUFRAMA: TFloatField;
    cdsNotaFiscal_ItensPERC_PIS_COFINS_SUFRAMA: TFloatField;
    cdsNotaFiscal_ItensVLR_PIS_COFINS_SUFRAMA: TFloatField;
    sdsNotaFiscalVLR_PIS_COFINS_SUFRAMA: TFloatField;
    cdsNotaFiscalVLR_PIS_COFINS_SUFRAMA: TFloatField;
    sdsNotaFiscalVLR_DESC_SUFRAMA: TFloatField;
    cdsNotaFiscalVLR_DESC_SUFRAMA: TFloatField;
    sdsNotaFiscal_ItensPERC_DESC_SUFRAMA: TFloatField;
    sdsNotaFiscal_ItensVLR_DESC_SUFRAMA: TFloatField;
    cdsNotaFiscal_ItensPERC_DESC_SUFRAMA: TFloatField;
    cdsNotaFiscal_ItensVLR_DESC_SUFRAMA: TFloatField;
    qParametros_OC: TSQLQuery;
    qParametros_OCPERMITIR_ENT_MAIOR: TStringField;
    qParametros_NFeAJUSTA_VARIACAO: TStringField;
    cdsNotaFiscal_ConsultaNOME_VENDEDOR: TStringField;
    cdsNotaFiscal_ConsultaDESCRICAO_PRAZO: TStringField;
    frxDBDataset2: TfrxDBDataset;
    qParametros_NTE: TSQLQuery;
    qParametros_NTEID: TIntegerField;
    qParametros_NTESOMAR_IPI_NO_CUSTO: TStringField;
    qParametros_NTESOMAR_FRETE_NO_CUSTO: TStringField;
    qParametros_NTEATUALIZAR_CUSTO: TStringField;
    cdsProdutoDT_ALT_PRECOCUSTO: TDateField;
    cdsProdutoPRECO_CUSTO_TOTAL: TFloatField;
    qParametros_ProdOPCAO_APLICAR_MARGEM: TStringField;
    cdsProdutoPERC_MARGEMLUCRO: TFloatField;
    sdsNotaFiscalIBPT_CHAVE: TStringField;
    cdsNotaFiscalIBPT_CHAVE: TStringField;
    sdsNotaFiscal_ItensIBPT_CHAVE: TStringField;
    cdsNotaFiscal_ItensIBPT_CHAVE: TStringField;
    qIBPTCHAVE: TStringField;
    qParametros_NFeSOMAR_FRETE_ICMS_NAC: TStringField;
    qParametros_NFeSOMAR_FRETE_NO_ICMS_TC: TStringField;
    qParametros_PedUSA_CONFERENCIA: TStringField;
    cdsNotaFiscal_ConsultaUF_CLIENTE: TStringField;
    qParametros_ProdUSA_DESC_MAXIMO: TStringField;
    cdsProdutoPERC_DESC_MAX: TFloatField;
    cdsValeVLR_DESCONTO: TFloatField;
    qParametros_FinCOPIAR_DESC_VALE: TStringField;
    qParametros_ImpSOMAR_VLR_AFRMM_ICMS: TStringField;
    mEtiquetasPRECO: TCurrencyField;
    mEtiquetasID: TIntegerField;
    cdsPedidoVLR_FRETE: TFloatField;
    qParametros_NFeCOPIAR_VLR_FRETE_PED: TStringField;
    cdsParametrosUSA_OBS_PEDIDO_NOTA: TStringField;
    cdsPedidoOBS_NOTA: TStringField;
    qParametros_FinCONTROLE_DIG_PRECO: TStringField;
    qParametros_UsuarioALT_PRECO_PED: TStringField;
    cdsPedidoID_CLIENTE_TRIANGULAR: TIntegerField;
    mVerReserva: TClientDataSet;
    mVerReservaID_Material: TIntegerField;
    mVerReservaID_OC: TIntegerField;
    mVerReservaNum_OC: TIntegerField;
    mVerReservaID_Cor: TIntegerField;
    mVerReservaNome_Cor: TStringField;
    qParametros_GeralEMPRESA_VAREJO: TStringField;
    cdsPedidoPERC_ICMS_FRETE: TFloatField;
    cdsProdutoSPED_TIPO_ITEM: TStringField;
    qRegra_CFOPID: TIntegerField;
    qRegra_CFOPITEM: TIntegerField;
    qRegra_CFOPID_CSTICMS: TIntegerField;
    qRegra_CFOPID_CSTIPI: TIntegerField;
    qRegra_CFOPID_PIS: TIntegerField;
    qRegra_CFOPID_COFINS: TIntegerField;
    qRegra_CFOPID_OPERACAO_NOTA: TIntegerField;
    qRegra_CFOPTIPO_EMPRESA: TStringField;
    qRegra_CFOPTIPO_CLIENTE: TStringField;
    qRegra_CFOPUF_CLIENTE: TStringField;
    qRegra_CFOPFINALIDADE: TStringField;
    qRegra_CFOPCONTROLAR_ICMS: TStringField;
    qRegra_CFOPCONTROLAR_REDUCAO: TStringField;
    qRegra_CFOPCONTROLAR_IPI: TStringField;
    qRegra_CFOPCONTROLAR_SUBSTICMS: TStringField;
    qRegra_CFOPCONTROLAR_DIFERIMENTO: TStringField;
    qRegra_CFOPNOME: TStringField;
    qRegra_CFOPPESSOA_CLIENTE: TStringField;
    qRegra_CFOPLEI: TMemoField;
    qRegra_CFOPPERC_TRIBUTO: TFloatField;
    qRegra_CFOPPERC_PIS: TFloatField;
    qRegra_CFOPPERC_COFINS: TFloatField;
    qRegra_CFOPTIPO_PIS: TStringField;
    qRegra_CFOPTIPO_COFINS: TStringField;
    qRegra_CFOPID_OBS_LEI: TIntegerField;
    qRegra_CFOPID_ENQIPI: TIntegerField;
    qRegra_CFOPTIPO_CONSUMIDOR: TSmallintField;
    qRegra_CFOPTIPO_CONTRIBUINTE: TSmallintField;
    qRegra_CFOPCALCULAR_ST: TStringField;
    cdsProdutoID_CSTICMS_BRED: TIntegerField;
    qParametros_NTESOMAR_ST_NO_CUSTO: TStringField;
    qParametros_ImpSOMAR_VLR_AFRMM_ODESP: TStringField;
    qParametros_ImpSOMAR_FRETE_ODESP: TStringField;
    sdsNotaFiscalVLR_AFRMM: TFloatField;
    cdsNotaFiscalVLR_AFRMM: TFloatField;
    sdsNotaFiscal_ItensVLR_AFRMM: TFloatField;
    cdsNotaFiscal_ItensVLR_AFRMM: TFloatField;
    cdsCFOPGERAR_CUSTO_MEDIO: TStringField;
    cdsCFOPDEVOLUCAO: TStringField;
    cdsNotaEntradaPERC_TRIBICMS: TFloatField;
    qParametros_PedUSA_OPERACAO_SERV: TStringField;
    sdsNotaFiscal_ItensPERC_ISSQN: TFloatField;
    sdsNotaFiscal_ItensVLR_ISSQN: TFloatField;
    cdsNotaFiscal_ItensPERC_ISSQN: TFloatField;
    cdsNotaFiscal_ItensVLR_ISSQN: TFloatField;
    cdsPedidoNOME_PRODUTO_PED: TStringField;
    qParametros_NFeALTERAR_NOME_PROD: TStringField;
    qParametros_ProdPRODUTO_PRECO_COR: TStringField;
    cdsProdutoUSA_PRECO_COR: TStringField;
    cdsCombinacaoPRECO_VENDA: TFloatField;
    cdsCombinacaoPRECO_CUSTO: TFloatField;
    qParametros_PedUSA_NUM_TALAO: TStringField;
    sdsNotaFiscal_ItensNUM_TALAO: TStringField;
    cdsNotaFiscal_ItensNUM_TALAO: TStringField;
    qParametros_NFeMOSTRAR_OC_NO_ITEM: TStringField;
    qParametros_NFeMOSTRAR_OS_NO_ITEM: TStringField;
    qPessoa_FiscalID_CST_ICMS_SUFRAMA_ST: TIntegerField;
    qProximaNotaRamiro: TSQLQuery;
    cdsFilialNUM_NOTA_RAMIRO: TIntegerField;
    qProximaNotaRamiroNUMNOTA: TIntegerField;
    sdsNotaFiscal_ItensQTD_TRIB: TFloatField;
    sdsNotaFiscal_ItensVLR_UNITARIO_TRIB: TFloatField;
    sdsNotaFiscal_ItensUNIDADE_TRIB: TStringField;
    cdsNotaFiscal_ItensQTD_TRIB: TFloatField;
    cdsNotaFiscal_ItensVLR_UNITARIO_TRIB: TFloatField;
    cdsNotaFiscal_ItensUNIDADE_TRIB: TStringField;
    cdsCFOPUSA_UNIDADE_TRIB: TStringField;
    cdsTab_NCMUNIDADE_TRIB: TStringField;
    qParametros_ImpSOMAR_NO_ICMS_OUTROS_VLR: TStringField;
    mPedidoAuxExcluir: TClientDataSet;
    mPedidoAuxExcluirID_pedido: TIntegerField;
    qParametros_ProdUSA_TAM_INDIVIDUAL: TStringField;
    cdsProdutoTAMANHO: TStringField;
    qParametros_NFeUSA_NOMEPROD_FORN_NFE: TStringField;
    frxDBDuplicatas: TfrxDBDataset;
    frxDBNota: TfrxDBDataset;
    frxDBFilial: TfrxDBDataset;
    qParametros_GeralUSA_ISENTO_PESSOA: TStringField;
    qParametros_UsuarioCONFIRMA_ENVIO_NFE: TStringField;
    qParametros_ProdUSA_LOTE_PROD: TStringField;
    qParametros_NFeIMP_QTDE_PRODUTO: TStringField;
    sdsNotaFiscalQTD_TOTAL_PRODUTOS: TFloatField;
    cdsNotaFiscalQTD_TOTAL_PRODUTOS: TFloatField;
    cdsCFOPALT_NCM_CUSTO: TStringField;
    qParametros_GeralUSA_TRIANGULAR: TStringField;
    qParametros_Custo: TSQLQuery;
    qParametros_CustoID: TIntegerField;
    qParametros_CustoREV_SOMAR_IPI: TStringField;
    qParametros_CustoREV_SOMAR_FRETE: TStringField;
    qParametros_CustoREV_SOMAR_ST: TStringField;
    qParametros_CustoREV_SUB_ICMS: TStringField;
    qParametros_CustoREV_SUB_PISCOFINS: TStringField;
    qParametros_CustoIND_SOMAR_IPI: TStringField;
    qParametros_CustoIND_SOMAR_FRETE: TStringField;
    qParametros_CustoIND_SOMAR_ST: TStringField;
    qParametros_CustoIND_SUB_ICMS: TStringField;
    qParametros_CustoIND_SUB_PISCOFINS: TStringField;
    qParametros_CustoCON_SOMAR_IPI: TStringField;
    qParametros_CustoCON_SOMAR_ST: TStringField;
    qParametros_CustoCON_SOMAR_FRETE: TStringField;
    qParametros_CustoCON_SUB_ICMS: TStringField;
    qParametros_CustoCON_SUB_PISCOFINS: TStringField;
    qParametros_NTEMOSTRAR_FINALIDADE: TStringField;
    cdsClienteIMP_COR_CLIENTE: TStringField;
    qParametros_ImpCOFINS_SOMAR_SEG: TStringField;
    qParametros_ImpCOFINS_SOMAR_FRETE: TStringField;
    qParametros_ImpICMS_SOMAR_SEG: TStringField;
    cdsParametrosTIPO_ESTOQUE: TStringField;
    qParametros_NFeUSA_PROD_NTE: TStringField;
    qParametros_CustoCON_SUB_IPI: TStringField;
    qParametros_CustoIND_SUB_IPI: TStringField;
    qParametros_CustoREV_SUB_IPI: TStringField;
    sdsNotaFiscal_ItensPRECO_CUSTO_TOTAL: TFloatField;
    cdsNotaFiscal_ItensPRECO_CUSTO_TOTAL: TFloatField;
    sdsNotaFiscal_Custo: TSQLDataSet;
    sdsNotaFiscal_CustoID: TIntegerField;
    sdsNotaFiscal_CustoITEM: TIntegerField;
    sdsNotaFiscal_CustoDESCRICAO: TStringField;
    sdsNotaFiscal_CustoVALOR: TFloatField;
    sdsNotaFiscal_CustoSD: TStringField;
    cdsNotaFiscalsdsNotaFiscal_Custo: TDataSetField;
    cdsNotaFiscal_Custo: TClientDataSet;
    cdsNotaFiscal_CustoID: TIntegerField;
    cdsNotaFiscal_CustoITEM: TIntegerField;
    cdsNotaFiscal_CustoDESCRICAO: TStringField;
    cdsNotaFiscal_CustoVALOR: TFloatField;
    cdsNotaFiscal_CustoSD: TStringField;
    dsNotaFiscal_Custo: TDataSource;
    sdsNotaFiscalVLR_AJUSTE_CUSTO: TFloatField;
    cdsNotaFiscalVLR_AJUSTE_CUSTO: TFloatField;
    sdsNotaFiscal_ItensVLR_AJUSTE_CUSTO: TFloatField;
    cdsNotaFiscal_ItensVLR_AJUSTE_CUSTO: TFloatField;
    sdsNotaFiscalTIPO_AJUSTE_CUSTO: TStringField;
    cdsNotaFiscalTIPO_AJUSTE_CUSTO: TStringField;
    qParametros_GeralUSA_AJUSTE_CUSTO: TStringField;
    qParametros_NFeUSA_PROD_CLI_PED: TStringField;
    sdsNotaFiscalVLR_FRETE_CUSTO: TFloatField;
    cdsNotaFiscalVLR_FRETE_CUSTO: TFloatField;
    sdsNotaFiscal_CustoFRETE: TStringField;
    cdsNotaFiscal_CustoFRETE: TStringField;
    qParametros_NFeENDERECO_ENTREGA_BRANCO: TStringField;
    qParametros_NFeAVISA_GNRE: TStringField;
    cdsTab_NCMID_CFOP: TIntegerField;
    cdsTab_NCMID_PIS: TIntegerField;
    cdsTab_NCMID_COFINS: TIntegerField;
    cdsTab_NCMID_CST_ICMS: TIntegerField;
    cdsTab_NCMPERC_PIS: TFloatField;
    cdsTab_NCMPERC_COFINS: TFloatField;
    cdsTab_NCMPERC_BASE_ICMS: TFloatField;
    cdsTab_NCMID_OBS_LEI: TIntegerField;
    mPedidoAuxNum_OC: TStringField;
    sdsNotaFiscalUSUARIO: TStringField;
    cdsNotaFiscalUSUARIO: TStringField;
    cdsNotaFiscal_ConsultaUSUARIO: TStringField;
    qParametros_NFePERMITE_IMPORTAR_S_CLIENTE: TStringField;
    qParametros_NFeCOPIA_PED_IMPOSTO: TStringField;
    cdsParametrosID_OPERACAO_VENDA: TIntegerField;
    cdsFilialFINALIDADE_PADRAO: TStringField;
    qParametros_FinUSA_NGR: TStringField;
    sdsDuplicataNGR: TStringField;
    sdsDuplicataAPROVADO: TStringField;
    sdsDuplicataDTAPROVADO: TDateField;
    cdsDuplicataNGR: TStringField;
    cdsDuplicataAPROVADO: TStringField;
    cdsDuplicataDTAPROVADO: TDateField;
    qParametros_FinUSA_APROVA_DUP: TStringField;
    qParametros_PedIMP_ORDEM_ITEM_PED: TStringField;
    cdsTransportadoraPLACA: TStringField;
    cdsTransportadoraUF_PLACA: TStringField;
    qParametros_NFeCALC_VOLUME_QTD: TStringField;
    sdsNotaFiscalNGR: TStringField;
    cdsNotaFiscalNGR: TStringField;
    cdsPedidoNGR: TStringField;
    sdsNotaFiscalID_TAB_PRECO: TIntegerField;
    cdsNotaFiscalID_TAB_PRECO: TIntegerField;
    qParametros_PedUSA_TAB_PRECO: TStringField;
    cdsPedidoID_TAB_PRECO: TIntegerField;
    sdsCondPgtoPERC_ENTRADA: TFloatField;
    cdsCondPgtoPERC_ENTRADA: TFloatField;
    sdsCondPgto_DiaPERC_PARCELA: TFloatField;
    cdsCondPgto_DiaPERC_PARCELA: TFloatField;
    qParametros_FinUSA_PERC_CONDPGTO: TStringField;
    cdsTab_NCMID_CSTIPI: TIntegerField;
    cdsTab_NCMPERC_IPI: TFloatField;
    qParametros_FinQTD_DIAS_MPAG: TIntegerField;
    cdsClienteMDIA1: TIntegerField;
    cdsClienteMDIA2: TIntegerField;
    qParametros_NFeUSA_PREFAT: TStringField;
    sdsNotaFiscalID_PREFAT: TIntegerField;
    cdsNotaFiscalID_PREFAT: TIntegerField;
    qNCM_CSTPERC_FCP: TFloatField;
    sdsNotaFiscal_ItensTIPO_ESCALA: TStringField;
    cdsNotaFiscal_ItensTIPO_ESCALA: TStringField;
    cdsTab_NCMTIPO_ESCALA: TStringField;
    cdsTab_NCMCALCULA_FCP: TStringField;
    cdsUFEXIGE_CBENEF: TStringField;
    cdsUFACEITA_ISENTO: TStringField;
    cdsUFPOSSUI_FCP: TStringField;
    sdsNotaFiscalBASE_ICMS_FCP: TFloatField;
    cdsNotaFiscalBASE_ICMS_FCP: TFloatField;
    sdsNotaFiscal_ItensBASE_ICMS_FCP: TFloatField;
    cdsNotaFiscal_ItensBASE_ICMS_FCP: TFloatField;
    sdsNotaFiscalBASE_FCP_ST: TFloatField;
    sdsNotaFiscalVLR_FCP_ST: TFloatField;
    sdsNotaFiscalPERC_FCP_ST: TFloatField;
    cdsNotaFiscalBASE_FCP_ST: TFloatField;
    cdsNotaFiscalVLR_FCP_ST: TFloatField;
    cdsNotaFiscalPERC_FCP_ST: TFloatField;
    sdsNotaFiscal_ItensBASE_FCP_ST: TFloatField;
    sdsNotaFiscal_ItensVLR_FCP_ST: TFloatField;
    sdsNotaFiscal_ItensPERC_FCP_ST: TFloatField;
    cdsNotaFiscal_ItensBASE_FCP_ST: TFloatField;
    cdsNotaFiscal_ItensVLR_FCP_ST: TFloatField;
    cdsNotaFiscal_ItensPERC_FCP_ST: TFloatField;
    sdsNotaFiscalVLR_ICMS_FCP_DEST: TFloatField;
    sdsNotaFiscalBASE_ICMS_FCP_DEST: TFloatField;
    cdsNotaFiscalVLR_ICMS_FCP_DEST: TFloatField;
    cdsNotaFiscalBASE_ICMS_FCP_DEST: TFloatField;
    sdsNotaFiscal_ItensVLR_ICMS_FCP_DEST: TFloatField;
    sdsNotaFiscal_ItensBASE_ICMS_FCP_DEST: TFloatField;
    cdsNotaFiscal_ItensVLR_ICMS_FCP_DEST: TFloatField;
    cdsNotaFiscal_ItensBASE_ICMS_FCP_DEST: TFloatField;
    cdsTipoCobrancaCOD_IMP_FISCAL: TStringField;
    cdsTab_CSTICMSCALCULA_FCP: TStringField;
    qParametros_NFeTIPO_ATENDIMENTO: TSmallintField;
    cdsOperacao_NotaMOSTRAR_CLI_TRIANG2: TStringField;
    cdsProdutoQTD_EMBALAGEM: TFloatField;
    cdsProdutoCOD_BARRA2: TStringField;
    cdsProdutoUNIDADE2: TStringField;
    qNCM_CSTCOD_CST: TStringField;
    cdsPedidoTIPO_OS: TStringField;
    qParametros_NFeENVIAR_VPAG_SEM_VLR: TIntegerField;
    qParametros_NTEUSA_CONTA_ORCAMENTO_ITENS: TStringField;
    qParametros_NTEUSA_CENTRO_CUSTO: TStringField;
    qParametros_FinEXIGIR_CONTA_ORC_DUP: TStringField;
    sdsNotaFiscal_ItensPERC_ICMS_SUFRAMA: TFloatField;
    cdsNotaFiscal_ItensPERC_ICMS_SUFRAMA: TFloatField;
    sdsNotaFiscal_ItensPERC_IPI_SUFRAMA: TFloatField;
    cdsNotaFiscal_ItensPERC_IPI_SUFRAMA: TFloatField;
    sdsNotaFiscal_ItensREC_COPIADO: TStringField;
    cdsNotaFiscal_ItensREC_COPIADO: TStringField;
    sdsNotaFiscal_Copia: TSQLDataSet;
    cdsNotaFiscal_Copia: TClientDataSet;
    sdsNotaFiscal_CopiaID: TIntegerField;
    sdsNotaFiscal_CopiaITEM: TIntegerField;
    sdsNotaFiscal_CopiaID_RECNF: TIntegerField;
    sdsNotaFiscal_CopiaITEM_RECNF: TIntegerField;
    cdsNotaFiscal_ItenssdsNotaFiscal_Copia: TDataSetField;
    cdsNotaFiscal_CopiaID: TIntegerField;
    cdsNotaFiscal_CopiaITEM: TIntegerField;
    cdsNotaFiscal_CopiaID_RECNF: TIntegerField;
    cdsNotaFiscal_CopiaITEM_RECNF: TIntegerField;
    dsNotaFiscal_Copia: TDataSource;
    mRecNFAux: TClientDataSet;
    mRecNFAuxID_RecNF: TIntegerField;
    qParametros_NFeCOPIAR_RECNF: TStringField;
    cdsNotaFiscal_ConsultaREC_COPIADO: TStringField;
    qPreFat: TSQLQuery;
    qPreFatCONTADOR: TIntegerField;
    cdsPedidoExiste_PreFat: TStringField;
    sdsCondPgtoIMPOSTOS: TStringField;
    sdsCondPgtoFRETE: TStringField;
    cdsCondPgtoIMPOSTOS: TStringField;
    cdsCondPgtoFRETE: TStringField;
    qParametros_FinCONDPGTO_FRETE_IMP: TStringField;
    qNCM_UFPERC_RED_BASE_ST: TFloatField;
    sdsNotaFiscalSOMAR_FRETE_II: TStringField;
    cdsNotaFiscalSOMAR_FRETE_II: TStringField;
    cdsProdutoID_MARCA: TIntegerField;
    cdsValeQTD_LANCAR_ESTOQUE: TFloatField;
    cdsNotaFiscal_ConsultaCNPJ_CPF_CLIENTE: TStringField;
    cdsNotaFiscal_ConsultaID_TRANSPORTADORA: TIntegerField;
    cdsNotaFiscal_ConsultaINSC_SUFRAMA_CLIENTE: TStringField;
    qParametros_NFeEND_ARQUIVO_SUFRAMA: TStringField;
    qParametros_NFeVERSAO_SUFRAMA: TStringField;
    qNCM_UFPERC_RED_BASE_ST_SIMPLES: TFloatField;
    qNCM_UFPERC_RED_MVA_CLI_GERAL: TFloatField;
    qNCM_UFPERC_RED_MVA_CLI_SIMPLES: TFloatField;
    sdsNotaFiscal_ItensVLR_IPI_DEVOL: TFloatField;
    cdsNotaFiscal_ItensVLR_IPI_DEVOL: TFloatField;
    sdsNotaFiscalVLR_IPI_DEVOL: TFloatField;
    cdsNotaFiscalVLR_IPI_DEVOL: TFloatField;
    sdsNotaFiscal_ItensPERC_DEVOL: TFloatField;
    cdsNotaFiscal_ItensPERC_DEVOL: TFloatField;
    qParametros_NFeDESCONTA_ICMS_DESON: TStringField;
    cdsPedidoDESC_SUFRAMA_PIS_COFINS: TStringField;
    cdsPedidoDESC_SUFRAMA_ICMS: TStringField;
    sdsImpNota: TSQLDataSet;
    dspImpNota: TDataSetProvider;
    cdsImpNota: TClientDataSet;
    dsImpNota: TDataSource;
    cdsImpNotaID: TIntegerField;
    cdsImpNotaNUMNOTA: TIntegerField;
    cdsImpNotaFILIAL: TIntegerField;
    cdsImpNotaSERIE: TStringField;
    cdsImpNotaDTEMISSAO: TDateField;
    cdsImpNotaDTSAIDAENTRADA: TDateField;
    cdsImpNotaID_CFOP: TIntegerField;
    cdsImpNotaID_CLIENTE: TIntegerField;
    cdsImpNotaID_CLIENTETRIANG: TIntegerField;
    cdsImpNotaVLR_NOTA: TFloatField;
    cdsImpNotaVLR_DUPLICATA: TFloatField;
    cdsImpNotaCANCELADA: TStringField;
    cdsImpNotaNFEDENEGADA: TStringField;
    cdsImpNotaNFECHAVEACESSO: TStringField;
    cdsImpNotaNFERECIBO: TStringField;
    cdsImpNotaNFEPROTOCOLO: TStringField;
    cdsImpNotaNFEPROTOCOLO_CANCELADA: TStringField;
    cdsImpNotaTIPO_PRAZO: TStringField;
    cdsImpNotaID_CONDPGTO: TIntegerField;
    cdsImpNotaID_VENDEDOR: TIntegerField;
    cdsImpNotaSTATUS_MANIFESTO: TStringField;
    cdsImpNotaVLR_ENTRADA: TFloatField;
    cdsImpNotaNFEFINALIDADE: TStringField;
    cdsImpNotaNFEVERSAO: TStringField;
    cdsImpNotaNFEAMBIENTE: TStringField;
    cdsImpNotaTIPO_NOTA: TStringField;
    cdsImpNotaTIPO_REG: TStringField;
    cdsImpNotaNFECODBARRA_CONTINGENCIA: TStringField;
    cdsImpNotaNFEENVIADA: TStringField;
    cdsImpNotaVLR_BASE_COMISSAO: TFloatField;
    cdsImpNotaUF_CLIENTE: TStringField;
    cdsImpNotaUSUARIO: TStringField;
    cdsImpNotaNOMECLIENTE: TStringField;
    cdsImpNotaCODCFOP: TStringField;
    cdsImpNotaFANTASIA: TStringField;
    cdsImpNotaNOME_VENDEDOR: TStringField;
    cdsImpNotaREC_COPIADO: TStringField;
    cdsImpNotaCNPJ_CPF_CLIENTE: TStringField;
    cdsImpNotaID_TRANSPORTADORA: TIntegerField;
    cdsImpNotaINSC_SUFRAMA_CLIENTE: TStringField;
    cdsImpNotaDESCRICAO_PRAZO: TStringField;
    cdsImpNotaNOME_FILIAL: TStringField;
    cdsImpNotaEND_FILIAL: TStringField;
    cdsImpNotaNUM_END_FIL: TStringField;
    cdsImpNotaBAIRRO_FIL: TStringField;
    cdsImpNotaCIDADE_FIL: TStringField;
    cdsImpNotaUF_FIL: TStringField;
    cdsImpNotaEMAIL_FIL: TStringField;
    cdsImpNotaSITE_FIL: TStringField;
    cdsImpNotaNOME_TRANSPORTADORA: TStringField;
    cdsImpNotaPLACA: TStringField;
    cdsImpNotaUFPLACA: TStringField;
    frxImpNota: TfrxDBDataset;
    cdsImpNotaCEP_FIL: TStringField;
    cdsImpNotaDDDFONE_FIL: TIntegerField;
    cdsImpNotaFONE_FIL: TStringField;
    cdsImpNotaDDDFAX_FIL: TIntegerField;
    cdsImpNotaFAX_FIL: TStringField;
    cdsImpNotaLOCALENTREGA: TStringField;
    cdsImpNotaID_CIDADE: TIntegerField;
    cdsImpNotaCIDADE_CLI: TStringField;
    cdsImpNotaUF_CLI: TStringField;
    sdsNotaFiscalBASE_IPI: TFloatField;
    cdsNotaFiscalBASE_IPI: TFloatField;
    sdsNotaFiscal_ItensBASE_IPI: TFloatField;
    cdsNotaFiscal_ItensBASE_IPI: TFloatField;
    qParametros_NFeSOMAR_FRETE_IPI: TStringField;
    cdsNotaEntradaID_COR: TIntegerField;
    cdsNotaEntradaNOME_COR: TStringField;
    qParametros_NFeCALCULAR_DIFAL: TStringField;
    cdsProdutoID_CSTICMS: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsNotaFiscalNewRecord(DataSet: TDataSet);
    procedure cdsNotaFiscalBeforePost(DataSet: TDataSet);
    procedure cdsNotaFiscal_ItensNewRecord(DataSet: TDataSet);
    procedure cdsNotaFiscal_ItensBeforePost(DataSet: TDataSet);
    procedure dspNotaFiscalUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsNotaFiscal_ConsultaCalcFields(DataSet: TDataSet);
    procedure cdsNotaFiscal_PedNewRecord(DataSet: TDataSet);
    procedure cdsNotaFiscal_NDevolvidaNewRecord(DataSet: TDataSet);
    procedure cdsPedidoCalcFields(DataSet: TDataSet);
    procedure cdsNotaFiscal_ParcBeforePost(DataSet: TDataSet);
    procedure cdsDuplicataBeforePost(DataSet: TDataSet);
    procedure cdsNotaFiscal_Imp_AuxBeforeInsert(DataSet: TDataSet);
    procedure cdsNotaFiscal_Imp_AuxAfterInsert(DataSet: TDataSet);
    procedure cdsNotaFiscal_Imp_AuxBeforePost(DataSet: TDataSet);
    procedure cdsDuplicataReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsDuplicata_HistReconcileError(
      DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure cdsNotaFiscal_Imp_AuxNewRecord(DataSet: TDataSet);
    procedure cdsNotaFiscal_TamNewRecord(DataSet: TDataSet);
    procedure cdsPedido_TamCalcFields(DataSet: TDataSet);
    procedure mPedidoAuxNewRecord(DataSet: TDataSet);
    procedure cdsDuplicataNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    vItem_Imp_Aux: Integer;
    vNUM_DI_Imp_Aux: String;
    vDTREGISTRO_Imp_Aux, vDTDESEMBARACO_Imp_Aux: TDateTime;
    vCOD_EXPORTADOR_Imp_Aux, vLOCAL_DESEMBARACO_Imp_Aux, vUF_Imp_Aux, vNUM_FATURA_Imp_Aux, vCOD_FABRICANTE_Imp_Aux: String;
    vVLR_DESCONTO_DI_Imp_Aux: Real;

    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
    procedure prc_montar_Importacao;
    procedure prc_montar_Importacao_Imp_Aux;
    procedure prc_Gravar_Importacao;
    procedure prc_Verificar_Consumo;

  public
    { Public declarations }
    vMSGNotaFiscal: String;
    vMsgErroParc: String;
    vID_Nota_Imp: Integer;
    vQtd_MatPrima_Calc, vQtd_MatPrima_Sel: Real;
    vState_Item: String; //I = Insert   E = Edit;
    vExiste_MObra: String;
    vExcluir_Dup_Est: Boolean;
    vExcluir_Com_Est: Boolean;
    vPerc_Comissao_Rateio: Real;
    vCopia_Igual: Boolean;

    ctCommand, ctConsulta, ctNotaEntrada, ctPedido, ctProduto, ctVale, ctCliente, ctOS, ctNotaFiscal_ProdPrincipal: String;
    ctPedido_Tam: String;
    ctqEstoque_Desc: String;
    ctCFOP: String;
    ctqIBPT: String;
    ctHist_Senha: String;
    vAliqIcms: Real;
    vSiglaUF: String;
    vMotivoCancelamento: String;
    vUsarRegraEmpresa: Boolean;
    vID_CFOP, vID_Variacao: Integer;
    vVlr_Entrada: Real;
    vNotaEnviada: Boolean;

    vNaoMostrarCampoVazio: Boolean;

    procedure prc_Localizar(ID: Integer);
    procedure prc_Inserir(Tipo_Reg: String = 'NTS');
    procedure prc_Excluir;
    procedure prc_Excluir_Item;
    function fnc_Possui_Erro(NaoContDupl: Boolean = False): Boolean;

    procedure prc_Inserir_Itens(Montar_Imp: Boolean = True);

    procedure prc_Inserir_Ref;

    procedure prc_Abrir_cdsCliente(Tipo_Reg: String; ID_Filial: Integer);
    procedure prc_Abrir_cdsCFOP(Tipo_Reg: String);
    procedure Abrir_cdsDuplicata(ID: Integer);
    procedure Abrir_DuplicatasNota(ID: Integer);

    procedure Excluir_Duplicata(ID_Nota: Integer = 0);
    procedure Excluir_ExtComissao(ID_Nota: Integer = 0);

    procedure Gravar_Envio_Nota(Recibo,NroProtocolo,ChaveAcesso: String; Finalidade, Ambiente,CodigoErro: Integer; DadosAdicionais: WideString);

    procedure prc_Ajustar_NDevolvida;

    function fnc_verificar_CFOP(ID: Integer): Boolean;

    procedure prc_Gravar_mSelecionado;

    procedure prc_Excluir_Financeiro(ID_Nota: Integer = 0);
    procedure prc_Cancelar_Movimento(ID_Nota: Integer = 0);
    procedure prc_Excluir_Movimento;
    procedure prc_Excluir_NotaFiscal_MP;
    procedure prc_Excluir_NotaFiscal_ProdPrincipal;

    procedure prc_Le_Itens(fDMCadNotaFiscal: TDMCadNotaFiscal ; Tipo: String); //Z=Zerar  G=Gerar Duplicata

    procedure prc_Gravar_NotaFiscal_Parc(Parcela, ID_TipoCobranca, ID_Conta: Integer; Data: TDateTime; Valor, Perc_Base_Com: Real; Dia1, Dia2 : Integer);
    procedure prc_Abrir_CSTICMS(Tipo: String);
    procedure prc_Excluir_Auxiliar_Retorno;
    procedure prc_Atualiza_Vale_Itens(Tipo_Fat: String);
    procedure prc_Atualiza_Vale(ID: Integer);
    procedure prc_Atualiza_RecNF(ID: Integer);

    procedure prc_Abrir_Desoneracao(Cod_CST: String);
    procedure prc_Abrir_NotaFiscal_ProdPrincipal(ID, Item: Integer);

    function fnc_Erro_Imp_Aux: Boolean;
    procedure prc_Excluir_cdsNotaFiscal_ItensAux(Item: Integer);

    procedure prc_Filtrar_Produto_Cliente(Somente_Filial: Boolean = False);

    procedure prc_Gravar_cdsHist_Senha;

  end;
var
  DMCadNotaFiscal: TDMCadNotaFiscal;

implementation

uses DmdDatabase, uUtilPadrao, uCalculo_NotaFiscal, DateUtils, LogProvider, DmdDatabase_NFeBD,
  uErro, StdConvs;

{$R *.dfm}

{ TDMCadCFOP}

procedure TDMCadNotaFiscal.prc_Inserir(Tipo_Reg: String);
var
  vAux: Integer;
  sds: TSQLDataSet;
  vNumAux: Integer;
begin
  if not cdsNotaFiscal.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('NOTAFISCAL',0);

  mSenha.EmptyDataSet;
  
  cdsNotaFiscal.Insert;
  cdsNotaFiscalID.AsInteger         := vAux;
  cdsNotaFiscalFILIAL.AsInteger     := vFilial;
  cdsNotaFiscalDTEMISSAO.AsDateTime := Date;
  cdsNotaFiscalTIPO_REG.AsString    := Tipo_Reg;
  cdsNotaFiscalUSUARIO.AsString     := vUsuario;
  if Tipo_Reg = 'NTE' then
    cdsNotaFiscalTIPO_NOTA.AsString := 'E'
  else
    cdsNotaFiscalTIPO_NOTA.AsString := 'S';
  if Tipo_Reg = 'PED' then
  begin
    sds := TSQLDataSet.Create(nil);
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT MAX(NUMNOTA) NUMNOTA ' +
                         ' FROM NOTAFISCAL ' +
                         ' WHERE TIPO_REG = ' + QuotedStr('PED');
    sds.Open;
    vNumAux := sds.FieldByName('NUMNOTA').AsInteger;
    FreeAndNil(sds);
    cdsNotaFiscalNUMNOTA.AsInteger   := vNumAux + 1;
    cdsNotaFiscalSERIE.AsString      := 'PED';
    cdsNotaFiscalTIPO_PRAZO.AsString := 'N';
  end;
end;

procedure TDMCadNotaFiscal.prc_Excluir;
var
  ID: TTransactionDesc;
  sds: TSQLDataSet;
  vPedAux: Integer;
  vID_CliAux: Integer;
  vExcluir: Boolean;
begin
  if not(cdsNotaFiscal.Active) or (cdsNotaFiscal.IsEmpty) then
    exit;

  vExcluir   := False;
  vID_CliAux := 0;
  mPedidoAux.EmptyDataSet;
  if cdsParametrosUSA_VALE.AsString = 'S' then
    mValeAux.EmptyDataSet;
  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := ' UPDATE TABELALOC SET FLAG = 1 WHERE TABELA = ' + QuotedStr('NOTAFISCAL');
    sds.ExecSQL();

    //03/10/2015 versão .889 ou superior. Foi passado para trigger
    //Excluir_Duplicata;
    //Excluir_ExtComissao;
    //prc_Excluir_Financeiro;
    //prc_Excluir_Movimento;
    //prc_Excluir_NotaFiscal_MP;
    //******************

    cdsNotaFiscal_Parc.First;
    while not cdsNotaFiscal_Parc.Eof do
      cdsNotaFiscal_Parc.Delete;
    cdsNotaFiscal_Desconto.First;
    while not cdsNotaFiscal_Desconto.Eof do
      cdsNotaFiscal_Desconto.Delete;
    cdsNotaFiscal_Lacre.First;
    while not cdsNotaFiscal_Lacre.Eof do
      cdsNotaFiscal_Lacre.Delete;
    cdsNotaFiscal_Reboque.First;
    while not cdsNotaFiscal_Reboque.Eof do
      cdsNotaFiscal_Reboque.Delete;
    cdsNotaFiscal_Ref.First;
    while not cdsNotaFiscal_Ref.Eof do
      cdsNotaFiscal_Ref.Delete;
    cdsNotaFiscal_NFe.First;
    while not cdsNotaFiscal_NFe.Eof do
      cdsNotaFiscal_NFe.Delete;
    cdsNotaFiscal_Imp.First;
    while not cdsNotaFiscal_Imp.Eof do
    begin
      cdsNotaFiscal_Imp_Ad.First;
      while not cdsNotaFiscal_Imp_Ad.Eof do
        cdsNotaFiscal_Imp_Ad.Delete;
      cdsNotaFiscal_Imp.Delete;
    end;
    cdsNotaFiscal_Imp_Aux.First;
    while not cdsNotaFiscal_Imp_Aux.Eof do
      cdsNotaFiscal_Imp_Aux.Delete;
    cdsNotaFiscal_Itens.First;
    while not cdsNotaFiscal_Itens.Eof do
    begin
      cdsNotaFiscal_Tam.First;
      while not cdsNotaFiscal_Tam.Eof do
        cdsNotaFiscal_Tam.Delete;
      cdsNotaFiscal_Ped.First;
      while not cdsNotaFiscal_Ped.Eof do
        cdsNotaFiscal_Ped.Delete;
      cdsNotaFiscal_NDevolvida.First;
      while not cdsNotaFiscal_NDevolvida.Eof do
        cdsNotaFiscal_NDevolvida.Delete;
      cdsNotaFiscal_DrawBack.First;
      while not cdsNotaFiscal_DrawBack.Eof do
        cdsNotaFiscal_DrawBack.Delete;
      cdsNotaFiscal_Fut.First;
      while not cdsNotaFiscal_Fut.Eof do
        cdsNotaFiscal_Fut.Delete;
      cdsNotaFiscal_OS.First;
      while not cdsNotaFiscal_OS.Eof do
        cdsNotaFiscal_OS.Delete;
      cdsNotaFiscal_Custo.First;
      while not cdsNotaFiscal_Custo.Eof do
        cdsNotaFiscal_Custo.Delete;
     vPedAux := 0;
     if cdsNotaFiscal_ItensID_PEDIDO.AsInteger > 0 then
       vPedAux := cdsNotaFiscal_ItensID_PEDIDO.AsInteger
     else
     if cdsNotaFiscal_ItensID_PEDIDO_FUT.AsInteger > 0 then
       vPedAux := cdsNotaFiscal_ItensID_PEDIDO_FUT.AsInteger;
      //if (cdsNotaFiscal_ItensID_PEDIDO.AsInteger > 0) and not(mPedidoAux.FindKey([cdsNotaFiscal_ItensID_PEDIDO.AsInteger])) then
      if (vPedAux > 0) and not(mPedidoAux.FindKey([vPedAux])) then
      begin
        mPedidoAux.Insert;
        //mPedidoAuxID_Pedido.AsInteger := cdsNotaFiscal_ItensID_PEDIDO.AsInteger;
        mPedidoAuxID_Pedido.AsInteger := vPedAux;
        mPedidoAux.Post;
      end;

      //Vale 19/06/2014
      if (cdsParametrosUSA_VALE.AsString = 'S') and (cdsNotaFiscal_ItensID_VALE.AsInteger > 0) then
      begin
        if not(mValeAux.FindKey([cdsNotaFiscal_ItensID_VALE.AsInteger])) then
        begin
          mValeAux.Insert;
          mValeAuxID_Vale.AsInteger := cdsNotaFiscal_ItensID_VALE.AsInteger;
          mValeAux.Post;
        end;
      end;

      //03/09/2018
      if not cdsNotaFiscal_Copia.IsEmpty then
      begin
        if not(mRecNFAux.FindKey([cdsNotaFiscal_CopiaID_RECNF.AsInteger])) then
        begin
          mRecNFAux.Insert;
          mRecNFAuxID_RecNF.AsInteger := cdsNotaFiscal_CopiaID_RECNF.AsInteger;
          mRecNFAux.Post;
        end;
        cdsNotaFiscal_Copia.Delete;
      end;
      
      cdsNotaFiscal_Itens.Delete;
    end;

    vID_CliAux := cdsNotaFiscalID_CLIENTE.AsInteger;

    prc_Excluir_NotaFiscal_ProdPrincipal;

    //17/08/2016
    if (qParametros_GeralGRAVAR_HIST_SENHA.AsString = 'S') then
      prc_Gravar_cdsHist_Senha;
    //****************

    cdsNotaFiscal.Delete;
    cdsNotaFiscal.ApplyUpdates(0);

    //27/06/2016
    //sdsPRC_Atualiza_DtNota.Close;
    //sdsPRC_Atualiza_DtNota.ParamByName('C_ID').AsInteger := vID_CliAux;
    //sdsPRC_Atualiza_DtNota.ExecSQL;

    dmDatabase.scoDados.Commit(ID);

    vExcluir := True;

  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
  FreeAndNil(sds);

  //Atualiza Status do pedido
  mPedidoAux.First;
  while not mPedidoAux.Eof do
  begin
    sdsPrc_Atualiza_Status_Ped.Close;
    sdsPrc_Atualiza_Status_Ped.ParamByName('P_ID').AsInteger := mPedidoAuxID_Pedido.AsInteger;
    sdsPrc_Atualiza_Status_Ped.ExecSQL;
    mPedidoAux.Next;
  end;

  //27/06/2016
  if vExcluir then
  begin
    sdsPRC_Atualiza_DtNota.Close;
    sdsPRC_Atualiza_DtNota.ParamByName('C_ID').AsInteger := vID_CliAux;
    sdsPRC_Atualiza_DtNota.ExecSQL;
  end;

  try
    //Vale 18/06/2014
    if cdsParametrosUSA_VALE.AsString = 'S' then
    begin
      mValeAux.First;
      while not mValeAux.Eof do
      begin
        prc_Atualiza_Vale(mValeAuxID_Vale.AsInteger);
        mValeAux.Next;
      end;
    end;
  except
  end;

  try
    //Recibo NF 03/09/2018
    mRecNFAux.First;
    while not mRecNFAux.Eof do
    begin
      prc_Atualiza_RecNF(mRecNFAuxID_RecNF.AsInteger);
      mRecNFAux.Next;
    end;
  except
  end;

end;

procedure TDMCadNotaFiscal.prc_Localizar(ID: Integer); //-1 é para inclusão
begin
  cdsNotaFiscal.Close;
  sdsNotaFiscal.CommandText := ctCommand;
  if ID <> 0 then
    sdsNotaFiscal.CommandText := sdsNotaFiscal.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsNotaFiscal.Open;
end;

procedure TDMCadNotaFiscal.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand       := sdsNotaFiscal.CommandText;
  ctConsulta      := sdsNotaFiscal_Consulta.CommandText;
  ctNotaEntrada   := sdsNotaEntrada.CommandText;
  ctPedido        := sdsPedido.CommandText;
  ctOS            := sdsOS.CommandText;
  ctProduto       := sdsProduto.CommandText;
  ctVale          := sdsVale.CommandText;
  ctCliente       := sdsCliente.CommandText;
  ctCFOP          := sdsCFOP.CommandText;
  ctqIBPT         := qIBPT.SQL.Text;
  //ctqEstoque_Desc := qEstoque_Desc.SQL.Text;
  ctqEstoque_Desc := sdsEstoque_Desc.CommandText;
  ctNotaFiscal_ProdPrincipal := sdsNotaFiscal_ProdPrincipal.CommandText;
  ctPedido_Tam    := sdsPedido_Tam.CommandText;
  ctHist_Senha    := sdsHist_Senha.CommandText;

  cdsVendedor.Open;
  cdsTransportadora.Open;
  cdsFilial.Open;
  cdsUF.Open;
  cdsObs_Aux.Open;
  cdsTipoCobranca.Open;
  cdsCondPgto.Open;
  cdsContas.Open;
  cdsProduto.Open;
  cdsUnidade.Open;
  cdsParametros.Open;
  cdsTab_Cofins.Open;
  cdsTab_Pis.Open;
  cdsTab_CSTIPI.Open;
  cdsTab_NCM.Open;
  cdsOrigem_Prod.Open;
  cdsOperacao_Nota.Open;
  cdsContaOrcamento.Open;
  cdsCentroCusto.Open;
  cdsLocal_Estoque.Open;
  cdsEnqIPI.Open;
  if cdsParametrosUSA_SPED.AsString = 'S' then
    cdsObs_Lei.Open;
  qParametros_Est.Close;
  qParametros_Est.Open;
  qParametros_Com.Close;
  qParametros_Com.Open;
  qParametros_Imp.Close;
  qParametros_Imp.Open;
  qParametros_NFe.Open;
  qParametros_Fin.Open;
  qParametros_Ped.Open;
  qParametros_Geral.Open;
  qParametros_Prod.Open;
  qParametros_OC.Open;
  qParametros_NTE.Open;
  qParametros_Custo.Open;

  //*** Logs Implantado na versão .353
  LogProviderList.OnAdditionalValues := DoLogAdditionalValues;
  for i := 0 to (Self.ComponentCount - 1) do
  begin
    if (Self.Components[i] is TClientDataSet) then
    begin
      SetLength(aIndices, 0);
      vIndices := TClientDataSet(Components[i]).IndexFieldNames;
      while (vIndices <> EmptyStr) do
      begin
        SetLength(aIndices, Length(aIndices) + 1);
        x := Pos(';', vIndices);
        if (x = 0) then
        begin
          aIndices[Length(aIndices) - 1] := vIndices;
          vIndices := EmptyStr;
        end
        else
        begin
          aIndices[Length(aIndices) - 1] := Copy(vIndices, 1, x - 1);
          vIndices := Copy(vIndices, x + 1, MaxInt);
        end;
      end;
      LogProviderList.AddProvider(TClientDataSet(Self.Components[i]), TClientDataSet(Self.Components[i]).Name, aIndices);
    end;
  end;
  //***********************
  cdsPedido.IndexFieldNames := 'NOMECLIENTE;PEDIDO_CLIENTE;ITEM';
  if cdsParametrosUSA_PEDIDO_CONTROLE_MOBRA.AsString = 'S' then
    cdsNotaEntrada.IndexFieldNames := 'CODCFOP;DTEMISSAO;SERIE;NUMNOTA;NOME_PRODUTO;DTEMISSAO'
  else
    cdsNotaEntrada.IndexFieldNames := 'DTEMISSAO;SERIE;NUMNOTA;NOME_PRODUTO;DTEMISSAO';

  qParametros_Usuario.Close;
  qParametros_Usuario.ParamByName('USUARIO').AsString := vUsuario;
  qParametros_Usuario.Open;
end;

procedure TDMCadNotaFiscal.prc_Excluir_Item;
begin
  cdsNotaFiscal_Tam.First;
  while not cdsNotaFiscal_Tam.Eof do
    cdsNotaFiscal_Tam.Delete;
  cdsNotaFiscal_NDevolvida.First;
  while not cdsNotaFiscal_NDevolvida.Eof do
    cdsNotaFiscal_NDevolvida.Delete;
  cdsNotaFiscal_Ped.First;
  while not cdsNotaFiscal_Ped.Eof do
    cdsNotaFiscal_Ped.Delete;
  cdsNotaFiscal_Imp.First;
  while not cdsNotaFiscal_Imp.Eof do
  begin
    cdsNotaFiscal_Imp_Ad.First;
    while not cdsNotaFiscal_Imp_Ad.Eof do
      cdsNotaFiscal_Imp_Ad.Delete;
    cdsNotaFiscal_Imp.Delete;
  end;
  cdsNotaFiscal_DrawBack.First;
  while not cdsNotaFiscal_DrawBack.Eof do
    cdsNotaFiscal_DrawBack.Delete;

  prc_Atualiza_Vale_Itens('N');
  if (cdsParametrosCONTROLAR_ESTOQUE_SAIDA.AsString = 'S') and (cdsNotaFiscalTIPO_NOTA.AsString = 'S') then
    prc_Excluir_cdsNotaFiscal_ItensAux(cdsNotaFiscal_ItensITEM.AsInteger);

  if not cdsNotaFiscal_Copia.IsEmpty then
    cdsNotaFiscal_Copia.Delete;

  cdsNotaFiscal_Itens.Delete;

end;

procedure TDMCadNotaFiscal.prc_Inserir_Itens(Montar_Imp: Boolean = True);
var
  vItemAux: Integer;
  vID_CFOPAux, vID_OperacaoAux: Integer;
  vFinalidadeAux: String;
  vNum_Lote_Controle: String;
  vFlag: Boolean;
begin
  vNum_Lote_Controle := '';
  cdsNotaFiscal_Itens.Last;
  vItemAux := cdsNotaFiscal_ItensITEM.AsInteger;
  vItemAux := vItemAux + 1;

  if cdsNotaFiscalTIPO_NOTA.AsString = 'E' then
    vNum_Lote_Controle := cdsNotaFiscal_ItensNUM_LOTE_CONTROLE.AsString;

  //03/10/2015
  if cdsNotaFiscal_Itens.Locate('ID;ITEM',VarArrayOf([cdsNotaFiscalID.AsInteger,vItemAux]),[locaseinsensitive]) then
  begin
    vFlag := False;
    while vFlag do
    begin
      vItemAux := vItemAux + 1;
      if not cdsNotaFiscal_Itens.Locate('ID;ITEM',VarArrayOf([cdsNotaFiscalID.AsInteger,vItemAux]),[locaseinsensitive]) then
        vFlag := True;
    end;
  end;
  //**************

  if cdsNotaFiscal_Itens.RecordCount >= 1 then
  begin
    vID_CFOPAux     := cdsNotaFiscal_ItensID_CFOP.AsInteger;
    vID_OperacaoAux := cdsNotaFiscal_ItensID_OPERACAO_NOTA.AsInteger;
    vFinalidadeAux  := cdsNotaFiscal_ItensFINALIDADE.AsString;
    vID_Variacao    := cdsNotaFiscal_ItensID_VARIACAO.AsInteger;
    if (Montar_Imp) and not(vCopia_Igual) then
      prc_montar_Importacao;
  end
  else
  begin
    vID_CFOPAux     := cdsNotaFiscalID_CFOP.AsInteger;
    vID_OperacaoAux := cdsNotaFiscalID_OPERACAO_NOTA.AsInteger;
    vFinalidadeAux  := cdsNotaFiscalFINALIDADE.AsString;
    vID_Variacao    := cdsNotaFiscalID_VARIACAO.AsInteger;
    if (cdsNotaFiscal_Imp_Aux.RecordCount = 1) and (Montar_Imp) and not(vCopia_Igual) then
      prc_montar_Importacao_Imp_Aux;
  end;
  vID_CFOP := vID_CFOPAux;

  cdsNotaFiscal_Itens.Insert;
  cdsNotaFiscal_ItensID.AsInteger               := cdsNotaFiscalID.AsInteger;
  cdsNotaFiscal_ItensITEM.AsInteger             := vItemAux;
  cdsNotaFiscal_ItensID_CFOP.AsInteger          := vID_CFOPAux;
  cdsNotaFiscal_ItensID_OPERACAO_NOTA.AsInteger := vID_OperacaoAux;
  cdsNotaFiscal_ItensFINALIDADE.AsString        := vFinalidadeAux;
  cdsNotaFiscal_ItensID_VARIACAO.AsInteger      := vID_Variacao;
  cdsNotaFiscal_ItensNUM_LOTE_CONTROLE.AsString := vNum_Lote_Controle;
  if not(cdsNotaFiscalFINALIDADE.IsNull) and (trim(cdsNotaFiscalFINALIDADE.AsString) <> '') then
    cdsNotaFiscal_ItensFINALIDADE.AsString := cdsNotaFiscalFINALIDADE.AsString;

  vState_Item := 'I';

  if (Montar_Imp) and not(vCopia_Igual) then
    prc_Gravar_Importacao;
end;

procedure TDMCadNotaFiscal.prc_Inserir_Ref;
var
  vItemAux: Integer;
begin
  cdsNotaFiscal_Ref.Last;
  vItemAux := cdsNotaFiscal_RefITEM.AsInteger;
  cdsNotaFiscal_Ref.Insert;
  cdsNotaFiscal_RefID.AsInteger   := cdsNotaFiscalID.AsInteger;
  cdsNotaFiscal_RefITEM.AsInteger := vItemAux + 1;
end;

procedure TDMCadNotaFiscal.cdsNotaFiscalNewRecord(DataSet: TDataSet);
begin
  cdsNotaFiscalLOCALENTREGA.AsString       := 'N';
  cdsNotaFiscalFILIAL.AsInteger            := 0;
  cdsNotaFiscalNFEVERSAO.AsString          := cdsParametrosVERSAONFE.AsString;
  cdsNotaFiscalNFEVERSAOEMISSAO.AsString   := cdsParametrosVERSAOEMISSAONFE.AsString;
  cdsNotaFiscalVLR_IPI.AsFloat             := 0;
  cdsNotaFiscalVLR_ADUANEIRA.AsFloat       := 0;
  cdsNotaFiscalVLR_COFINS.AsFloat          := 0;
  cdsNotaFiscalVLR_DESCONTO.AsFloat        := 0;
  cdsNotaFiscalVLR_DUPLICATA.AsFloat       := 0;
  cdsNotaFiscalVLR_DUPLICATAOUTROS.AsFloat := 0;
  cdsNotaFiscalVLR_ENTRADA.AsFloat         := 0;
  cdsNotaFiscalVLR_FRETE.AsFloat           := 0;
  cdsNotaFiscalVLR_ICMS.AsFloat            := 0;
  cdsNotaFiscalVLR_ICMSOUTROS.AsFloat      := 0;
  cdsNotaFiscalVLR_ICMSSIMPLES.AsFloat     := 0;
  cdsNotaFiscalVLR_ICMSSUBST.AsFloat       := 0;
  cdsNotaFiscalVLR_IMPORTACAO.AsFloat      := 0;
  cdsNotaFiscalVLR_ITENS.AsFloat           := 0;
  cdsNotaFiscalVLR_NOTA.AsFloat            := 0;
  cdsNotaFiscalVLR_OUTRASDESP.AsFloat      := 0;
  cdsNotaFiscalVLR_OUTROS.AsFloat          := 0;
  cdsNotaFiscalVLR_PIS.AsFloat             := 0;
  cdsNotaFiscalVLR_SEGURO.AsFloat          := 0;
  cdsNotaFiscalVLR_TAXACISCOMEX.AsFloat    := 0;
  cdsNotaFiscalVLR_TRANSF.AsFloat          := 0;
  cdsNotaFiscalQTDTOTAL_ITENS.AsInteger    := 0;
  cdsNotaFiscalGERARDUPL_FRETE.AsString    := 'N';
  cdsNotaFiscalGERARDUPL_OUTROSVALORES.AsString := 'N';
  cdsNotaFiscalGERARDUPL_SEGURO.AsString        := 'N';
  cdsNotaFiscalTIPO_FRETE.AsString              := '';
  cdsNotaFiscalSTATUS_MANIFESTO.AsString        := 'SMA';
  cdsNotaFiscalCALCULAR_IMP_ITEM.AsString       := 'S';
  cdsNotaFiscalGRAVOU_DADOSADICIONAIS.AsString  := 'N';
  cdsNotaFiscalNFEFINALIDADE.AsString           := '1';
  cdsNotaFiscalNOTA_ESTORNO.AsString            := 'N';
  cdsNotaFiscalBASE_ICMSSUBST_PROPRIO.AsFloat   := 0;
  cdsNotaFiscalVLR_ICMSSUBST_PROPRIO.AsFloat    := 0;
  cdsNotaFiscalVLR_TRIBUTOS_ESTADUAL.AsFloat    := 0;
  cdsNotaFiscalVLR_TRIBUTOS_MUNICIPAL.AsFloat   := 0;
  cdsNotaFiscalNFEENVIADA.AsString              := 'N';
  cdsNotaFiscalNFEDENEGADA.AsString             := 'N';
  cdsNotaFiscalVLR_ADIANTAMENTO.AsFloat         := 0;
  cdsNotaFiscalNOTIFICACAO.AsInteger            := 0;
  cdsNotaFiscalVLR_PIS_COFINS_SUFRAMA.AsFloat   := 0;
  cdsNotaFiscalNGR.AsString                     := 'N';
  cdsNotaFiscalBASE_ICMS_FCP.AsFloat            := 0;
  cdsNotaFiscalVLR_ICMS_FCP.AsFloat             := 0;
  cdsNotaFiscalBASE_ICMS_FCP_DEST.AsFloat       := 0;
  cdsNotaFiscalVLR_ICMS_FCP_DEST.AsFloat        := 0;
  cdsNotaFiscalSOMAR_FRETE_II.AsString          := 'N';
end;

function TDMCadNotaFiscal.fnc_Possui_Erro(NaoContDupl: Boolean = False): Boolean;
var
  vVlrAux: Real;
  vTexto: String;
  vComissaoAux: Real;
  vPercAux: Real;
begin
  Result          := True;
  vPerc_Comissao_Rateio := 0;
  vComissaoAux          := 0;
  cdsParametros.Close;
  cdsParametros.Open;

  vMSGNotaFiscal  := '';
  vMSgNotificacao := '';
  if (qParametros_FinEXIGIR_CONTA_ORC_DUP.AsString = 'S') and (StrToFloat(FormatFloat('0.00',cdsNotaFiscalVLR_DUPLICATA.AsFloat)) > 0)
    and (cdsNotaFiscalID_CONTA_ORCAMENTO.AsInteger <= 0) then
    vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Conta de orçamento não informada!';
  if cdsNotaFiscal_Itens.IsEmpty then
    vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Nota não pode ficar sem item (Produto)!';
  if ((cdsClienteTIPO_CONTRIBUINTE.AsInteger = 1) and ((trim(cdsClienteINSCR_EST.AsString) = '') or (trim(cdsClienteINSCR_EST.AsString) = 'ISENTO')))
    and (cdsNotaFiscalTIPO_REG.AsString = 'NTS') then
    vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Inscrição estadual não informada para o cliente!';
  if qParametros_GeralUSA_ISENTO_PESSOA.AsString <> 'S' then
  begin
    if ((cdsClienteTIPO_CONTRIBUINTE.AsInteger = 2) and ((trim(cdsClienteINSCR_EST.AsString) = '') or (trim(cdsClienteINSCR_EST.AsString) <> 'ISENTO')))
      and (cdsNotaFiscalTIPO_REG.AsString = 'NTS') then
      vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Inscrição estadual informada incorretamente!';
  end;
  if ((cdsClienteTIPO_CONTRIBUINTE.AsInteger = 9) and (trim(cdsClienteINSCR_EST.AsString) <> ''))
    and (cdsNotaFiscalTIPO_REG.AsString = 'NTS') then
    vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Inscrição estadual informada incorretamente!';
  if (cdsNotaFiscalLOCALENTREGA.AsString = 'E') and (trim(cdsClienteENDERECO_ENT.AsString) = '') then
    vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Local de entrega não pode ser (Endereço de Entrega)!';
  if (qParametros_NFeENDERECO_ENTREGA_BRANCO.AsString = 'S') and (cdsNotaFiscalLOCALENTREGA.AsString = '') then
    vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Local de entrega não pode ser branco!';
  if cdsNotaFiscalID_CLIENTE.AsInteger = cdsNotaFiscalID_CLIENTETRIANG.AsInteger then
    vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Cliente triangular não pode ser o mesmo da nota)!';
  if cdsNotaFiscalID_CFOP.AsInteger < 0 then
    vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Natureza não informada no cabeçalho da nota!';
  if (cdsNotaFiscalTIPO_REG.AsString = 'NTS') and ((cdsNotaFiscalDTSAIDAENTRADA.AsDateTime > 10) and (cdsNotaFiscalHRSAIDAENTRADA.AsDateTime <= 0)) then
    vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Hora de saída precisa ser informada quando a data estiver preenchida!';
  if (cdsNotaFiscalTIPO_REG.AsString = 'NTS') and ((cdsNotaFiscalDTSAIDAENTRADA.AsDateTime < 10) and (cdsNotaFiscalHRSAIDAENTRADA.AsDateTime > 0)) then
    vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Data de saída precisa ser informada quando a hora estiver preenchida!';
  if (cdsNotaFiscalTIPO_REG.AsString = 'NTE') and (cdsNotaFiscalNUMNOTA.AsInteger <= 0) then
    vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Número da nota não informado!';
  if (cdsNotaFiscalTIPO_REG.AsString = 'NTE') and (trim(cdsNotaFiscalSERIE.AsString) = '') then
    vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Série da nota não informado!';
  if (cdsNotaFiscalID_CLIENTE.AsInteger < 1) and (cdsNotaFiscalTIPO_REG.AsString = 'NTE') then
    vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Fornecedor não informado!';
  if (cdsNotaFiscalTIPO_REG.AsString = 'NTE') and (cdsNotaFiscalDTSAIDAENTRADA.AsDateTime < cdsNotaFiscalDTEMISSAO.AsDateTime) then
    vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Data de entrada não pode ser menor que data de emissão!';
  if (cdsNotaFiscalID_CLIENTE.AsInteger < 1) and (cdsNotaFiscalTIPO_REG.AsString = 'NTS') then
    vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Cliente não informado!';
  if cdsNotaFiscalDTEMISSAO.AsDateTime < 10 then
    vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Data de Emissão não informada!';
  if (StrToFloat(FormatFloat('0.00',cdsNotaFiscalVLR_DUPLICATA.AsFloat)) > 0) and (cdsNotaFiscalTIPO_PRAZO.AsString = 'N') then
    vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Prazo de pagamento não pode ser nenhum!';
  if (trim(cdsNotaFiscalTIPO_FRETE.AsString) = '') and (cdsNotaFiscalTIPO_REG.AsString = 'NTS') then
    vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Tipo do frete não informado!';
  if (cdsNotaFiscalTIPO_REG.AsString = 'NTS') and (StrToFloat(FormatFloat('0.00000',cdsNotaFiscalPESOBRUTO.AsFloat)) < StrToFloat(FormatFloat('0.00000',cdsNotaFiscalPESOLIQUIDO.AsFloat))) then
    vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Peso Bruto não pode ser menor que o líquido!';
  if (length(cdsNotaFiscalPLACA.AsString) > 1) and (length(cdsNotaFiscalPLACA.AsString) <> 7) and (cdsNotaFiscalTIPO_REG.AsString = 'NTS') then
    vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Placa inválida!';
  if (length(cdsNotaFiscalPLACA.AsString) > 1) and (trim(cdsNotaFiscalUFPLACA.AsString) = '') then
    vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Quando a placa for informada, é obrigatório informar a UF!';
  //Tirado no dia 30/07/2013 pois o valor de entrada vai ser gravado na tabela NOTAFISCAL_PARC como parcela = 0
  //if (cdsNotaFiscalTIPO_REG.AsString = 'NTS') and (StrToFloat(formatFloat('0.00',cdsNotaFiscalVLR_ENTRADA.AsFloat)) > 0) and (cdsNotaFiscalID_CONTA.AsInteger <= 0) then
  //  vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Nota possui valor de entrada, precisa informar a conta/banco para lançamento no financeiro!';
  if (cdsNotaFiscalTIPO_REG.AsString = 'NTS') and (cdsNotaFiscalTIPO_PRAZO.AsString = 'V') and (cdsNotaFiscalID_CONTA.AsInteger <= 0) then
    vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Nota é A Vista, precisa informar a conta/banco para lançamento no financeiro!';
  if trim(cdsFilialSERIENORMAL.AsString) = '' then
    vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Série não foi informada no cadastro da Filial/Empresa!';
  if ((cdsNotaFiscalTIPO_ATENDIMENTO.AsInteger < 0) or (cdsNotaFiscalTIPO_ATENDIMENTO.IsNull))
    and (cdsNotaFiscalTIPO_REG.AsString = 'NTS') then
    vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Tipo de atendimento não informado!';
  if ((cdsNotaFiscalNFEFINALIDADE.IsNull) or (trim(cdsNotaFiscalNFEFINALIDADE.AsString) = '')) 
    and (cdsNotaFiscalTIPO_REG.AsString = 'NTS') then
    vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** NFE finalidade não informada!';
  if (StrToFloat(FormatFloat('0.00',cdsNotaFiscalPERC_COMISSAO.AsFloat)) > 0) and (cdsNotaFiscalID_VENDEDOR.AsInteger <= 0) and
     (cdsNotaFiscalTIPO_REG.AsString = 'NTS') then
    vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Nota com % de comissão e o vendedor não informado!';
  if (cdsNotaFiscalID_TRANSPORTADORA.AsInteger > 0) and (vMSGNotaFiscal = '') and (cdsNotaFiscalTIPO_REG.AsString = 'NTS') then
  begin
    if not cdsTransportadora.Locate('CODIGO',cdsNotaFiscalID_TRANSPORTADORA.AsInteger,([Locaseinsensitive])) then
      vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Transportadora não encontrada!'
    else
    begin
      if (trim(cdsTransportadoraENDERECO.AsString) = '') or (trim(cdsTransportadoraNUM_END.AsString) = '') then
        vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Endereço/Nº da transportadora não informado!';
      if cdsTransportadoraID_CIDADE.AsInteger <= 0 then
        vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Cidade da transportadora não informada!';
      if cdsTransportadoraUF.AsString = '' then
        vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** UF da transportadora não informada!';
      vTexto := Monta_Numero(cdsTransportadoraCNPJ_CPF.AsString,0);
      if trim(vTexto) = '' then
        vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** CNPJ/CPF da transportadora não informado!';
      vTexto := Monta_Numero(cdsTransportadoraCEP.AsString,0);
      if Length(vTexto) <> 8 then
        vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** CEP da transportadora esta incorreto!';
    end;
  end;
  if (vMSGNotaFiscal = '') and ((cdsNotaFiscalTIPO_REG.AsString = 'NTS') or (cdsNotaFiscalTIPO_REG.AsString = 'RNF')) then
  begin
    if (cdsNotaFiscalTIPO_REG.AsString = 'NTS') then
    begin
      if cdsNotaFiscalID_CLIENTE.AsInteger <= 0 then
        vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Cliente não informado!'
      else
      if not cdsCliente.Locate('CODIGO',cdsNotaFiscalID_CLIENTE.AsInteger,([Locaseinsensitive])) then
        vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Cliente não encontrado!'
      else
      begin
        if (trim(cdsClienteENDERECO.AsString) = '') or (trim(cdsClienteNUM_END.AsString) = '') then
          vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Endereço/Nº do cliente não informado!';
        if cdsClienteID_CIDADE.AsInteger <= 0 then
          vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Cidade do cliente não informada!';
        if cdsClienteUF.AsString = '' then
          vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** UF do cliente não informada!';
        vTexto := Monta_Numero(cdsClienteCNPJ_CPF.AsString,0);
        if trim(vTexto) = '' then
          vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** CNPJ/CPF do cliente não informado!';
        vTexto := Monta_Numero(cdsClienteCEP.AsString,0);
        if Length(vTexto) <> 8 then
          vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** CEP do cliente esta incorreto!';
        //Endereço de Entrega
        if (trim(cdsClienteENDERECO_ENT.AsString) <> '') and (cdsParametrosMOSTRAR_END_ENTREGA_DADOS_ADI.AsString <> 'S') then
        begin
          if (trim(cdsClienteNUM_END.AsString) = '') then
            vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Nº do endereço de entrega do cliente não informado!';
          if cdsClienteID_CIDADE_ENT.AsInteger <= 0 then
            vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Cidade do endereço de entrega do cliente não informada!';
          if cdsClienteUF_ENT.AsString = '' then
            vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** UF do endereço de entrega do cliente não informada!';
          vTexto := Monta_Numero(cdsClienteCNPJ_CPF_ENT.AsString,0);
          if trim(vTexto) = '' then
            vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** CNPJ/CPF do endereço de entrega do cliente não informado!';
          vTexto := Monta_Numero(cdsClienteCEP_ENT.AsString,0);
          if Length(vTexto) <> 8 then
            vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** CEP do endereço de entrega do cliente esta incorreto!';
        end;
      end;
      if cdsCFOP.Locate('ID',cdsNotaFiscalID_CFOP.AsInteger,([Locaseinsensitive])) then
      begin
        if (copy(cdsCFOPCODCFOP.AsString,1,1) = '7') and ((trim(cdsNotaFiscalUFEMBEXPORTACAO.AsString) = '') or (Trim(cdsNotaFiscalLOCALEMBEXPORTACAO.AsString) = '')) then
          vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Nota Exportação, não foi informada a UF ou Local de Embarque!';
        if ((copy(cdsCFOPCODCFOP.AsString,1,1) = '1') or (copy(cdsCFOPCODCFOP.AsString,1,1) = '2') or (copy(cdsCFOPCODCFOP.AsString,1,1) = '3')) and (cdsNotaFiscalTIPO_NOTA.AsString <> 'E') then
          vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** CFOP é de entrada!';
        if ((copy(cdsCFOPCODCFOP.AsString,1,1) = '5') or (copy(cdsCFOPCODCFOP.AsString,1,1) = '6') or (copy(cdsCFOPCODCFOP.AsString,1,1) = '7')) and (cdsNotaFiscalTIPO_NOTA.AsString <> 'S') then
          vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** CFOP é de saída!';
        if (cdsCFOPCOPIARNOTATRIANGULAR.AsString = 'S') and (cdsNotaFiscalID_CLIENTETRIANG.AsInteger <= 0) then
          vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Cliente triangular não foi informado!';
        if (cdsCFOPCOPIARNOTATRIANGULAR.AsString = 'S') and (cdsNotaFiscalID_CLIENTETRIANG.AsInteger > 0) and (cdsParametrosID_OPERACAO_TRIANGULAR.AsInteger <= 0) then
          vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Operação triangular não foi configurada no novo padrão das regras ' + #13
                           + '   (Ajustar nas Regras e depois informar nos parâmetros)';
      end;
    end;
    vExiste_MObra := '';
    cdsNotaFiscal_Itens.First;
    while not cdsNotaFiscal_Itens.Eof do
    begin
      if (cdsNotaFiscalTIPO_REG.AsString = 'NTS') then
      begin
        if (copy(cdsNotaFiscal_ItensCODCFOP.AsString,1,1) = '7') and ((trim(cdsNotaFiscalUFEMBEXPORTACAO.AsString) = '') or (Trim(cdsNotaFiscalLOCALEMBEXPORTACAO.AsString) = '')) then
          vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Nota Exportação, não foi informada a UF ou Local de Embarque!';
        if ((copy(cdsNotaFiscal_ItensCODCFOP.AsString,1,1) = '1') or (copy(cdsNotaFiscal_ItensCODCFOP.AsString,1,1) = '2') or (copy(cdsNotaFiscal_ItensCODCFOP.AsString,1,1) = '3')) and (cdsNotaFiscalTIPO_NOTA.AsString <> 'E') then
          vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** CFOP é de entrada (Itens)!';
        if ((copy(cdsNotaFiscal_ItensCODCFOP.AsString,1,1) = '5') or (copy(cdsNotaFiscal_ItensCODCFOP.AsString,1,1) = '6') or (copy(cdsNotaFiscal_ItensCODCFOP.AsString,1,1) = '7')) and (cdsNotaFiscalTIPO_NOTA.AsString <> 'S') then
          vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** CFOP é de saída (Itens)!';
        if (cdsNotaFiscal_ItensID_PEDIDO.AsInteger > 0) or (cdsNotaFiscal_ItensID_VALE.AsInteger > 0) then
        begin
          if cdsNotaFiscal_ItensGRAVACAO_COM_ERRO.AsString = 'CSI' then
            vMSgNotificacao := 'Existem itens com notificação de não ter calculado o icms simples!'
          else
          if cdsNotaFiscal_ItensGRAVACAO_COM_ERRO.AsString = 'CST' then
            vMSgNotificacao := 'Existem itens com notificação de não ter calculado a Substituição Tributária!';
        end;
      end;
      if (cdsParametrosUSA_CONSUMO.AsString = 'S') then
        prc_Verificar_Consumo;
      if cdsNotaFiscal_ItensMAOOBRA.AsString = 'S' then
        vExiste_MObra := 'S';
      //10/02/2015
      if (cdsParametrosTIPO_COMISSAO_PROD.AsString = 'I') and (cdsNotaFiscalID_VENDEDOR.AsInteger > 0) and (StrToFloat(FormatFloat('0.00',cdsNotaFiscalVLR_DUPLICATA.AsFloat)) > 0)  then
      begin
        if StrToFloat(FormatFloat('0.00',cdsNotaFiscal_ItensPERC_COMISSAO.AsFloat)) > 0 then
          vPercAux := StrToFloat(FormatFloat('0.00',cdsNotaFiscal_ItensPERC_COMISSAO.AsFloat))
        else
          vPercAux := StrToFloat(FormatFloat('0.00',cdsNotaFiscalPERC_COMISSAO.AsFloat));
        if StrToFloat(FormatFloat('0.00',cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat)) > 0 then
        begin
          vVlrAux := StrToFloat(FormatFloat('0.00',(cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat * vPercAux) / 100));
          vComissaoAux := StrToFloat(FormatFloat('0.00',vComissaoAux + vVlrAux));
        end;
      end;
      cdsNotaFiscal_Itens.Next;
    end;
    //10/11/2015
    if (StrToFloat(FormatFloat('0.00',vComissaoAux)) > 0) and (cdsParametrosTIPO_COMISSAO_PROD.AsString = 'I') then
    begin
      vComissaoAux := StrToFloat(FormatFloat('0.00',vComissaoAux));
      vPerc_Comissao_Rateio := StrToFloat(FormatFloat('0.00000',(vComissaoAux / (cdsNotaFiscalVLR_DUPLICATA.AsFloat + cdsNotaFiscalVLR_ADIANTAMENTO.AsFloat)) * 100));
    end
    else
    if (cdsParametrosTIPO_COMISSAO_PROD.AsString <> 'I') then
      vPerc_Comissao_Rateio := StrToFloat(FormatFloat('0.000',cdsNotaFiscalPERC_COMISSAO.AsFloat));
    //***********************

    if vExiste_MObra <> 'S' then
      mMaterialConsumo.EmptyDataSet;

    if (cdsNotaFiscalID_CONDPGTO.AsInteger > 0) and (cdsCondPgto.Locate('ID',cdsNotaFiscalID_CONDPGTO.AsInteger,([Locaseinsensitive]))) then
    begin
      if (cdsCondPgtoENTRADA.AsString = 'S') and (StrToFloat(FormatFloat('0.00',cdsNotaFiscalVLR_ENTRADA.AsFloat)) <= 0) and (StrToFloat(FormatFloat('0.00',cdsNotaFiscalVLR_ADIANTAMENTO.AsFloat)) <= 0) then
        vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** A condição de pagamento informada exige valor da entrada!';
    end;
  end;
  //Tirado no dia 30/07/2013 pois o valor de entrada vai ser gravado na tabela NOTAFISCAL_PARC como parcela = 0
  //vVlrAux := StrToFloat(FormatFloat('0.00',cdsNotaFiscalVLR_ENTRADA.AsFloat));
  vVlrAux := StrToFloat(FormatFloat('0.00',0));
  cdsNotaFiscal_Parc.First;
  while not cdsNotaFiscal_Parc.Eof do
  begin
    if (cdsNotaFiscal_ParcITEM.AsInteger = 0) and (cdsNotaFiscal_ParcID_CONTA.AsInteger <= 0) then
      vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Nota possui valor de entrada, precisa informar a conta/banco para lançamento no financeiro!';
    if YearOf(cdsNotaFiscal_ParcDTVENCIMENTO.AsDateTime) < 2000 then
      vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Ano do vencimento inválido!';
    if cdsNotaFiscalDTEMISSAO.AsDateTime > cdsNotaFiscal_ParcDTVENCIMENTO.AsDateTime then
      vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Data de vencimento menor que a data de emissão!';
    vVlrAux := StrToFloat(FormatFloat('0.00',vVlrAux + cdsNotaFiscal_ParcVLR_VENCIMENTO.AsFloat));
    cdsNotaFiscal_Parc.Next;
  end;
  if (cdsNotaFiscalTIPO_PRAZO.AsString = 'V') and (StrToFloat(FormatFloat('0.00',cdsNotaFiscalVLR_DUPLICATA.AsFloat)) <= 0) then
    vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Vencimento informado à vista, mas o valor da duplicata é zerado!';
  if (cdsNotaFiscalTIPO_PRAZO.AsString = 'P') and (StrToFloat(FormatFloat('0.00',cdsNotaFiscalVLR_DUPLICATA.AsFloat)) <= 0) then
    vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Vencimento informado a prazo, mas o valor da duplicata é zerado!';
  if ((cdsNotaFiscalTIPO_PRAZO.AsString <> 'V') and (cdsNotaFiscalTIPO_PRAZO.AsString <> 'A')) and  (StrToFloat(FormatFloat('0.00',cdsNotaFiscalVLR_DUPLICATA.AsFloat)) <> StrToFloat(FormatFloat('0.00',vVlrAux))) then
  begin
    if not(NaoContDupl) then
      vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Valor das parcelas diferente do valor de duplicata!';
  end;
  if cdsNotaFiscalID_LOCAL_ESTOQUE.AsInteger <= 0 then
    vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Local Estoque não informado!';
  if (cdsNotaFiscalTIPO_REG.AsString = 'NTS') and (cdsNotaFiscalTIPO_NOTA.AsString = 'S') and (StrToFloat(FormatFloat('0.00',cdsNotaFiscalVLR_DUPLICATA.AsFloat)) > 0)
    and (cdsNotaFiscalID_TIPO_COBRANCA.AsInteger <= 0) then
    vMSGNotaFiscal := vMSGNotaFiscal + #13 + '*** Forma de Pagamento não informada!';
  if vMSGNotaFiscal <> '' then
    exit;
  Result := False;
end;

procedure TDMCadNotaFiscal.cdsNotaFiscalBeforePost(DataSet: TDataSet);
begin
  if cdsNotaFiscalID_BANCO.AsInteger <= 0 then
    cdsNotaFiscalID_BANCO.Clear;
  if cdsNotaFiscalID_CLIENTETRIANG.AsInteger <= 0 then
    cdsNotaFiscalID_CLIENTETRIANG.Clear;
  if cdsNotaFiscalID_CONDPGTO.AsInteger <= 0 then
    cdsNotaFiscalID_CONDPGTO.Clear;
  if cdsNotaFiscalID_REDESPACHO.AsInteger <= 0 then
    cdsNotaFiscalID_REDESPACHO.Clear;
  if cdsNotaFiscalID_REGIMETRIB.AsInteger <= 0 then
    cdsNotaFiscalID_REGIMETRIB.Clear;
  if cdsNotaFiscalID_TRANSPORTADORA.AsInteger <= 0 then
    cdsNotaFiscalID_TRANSPORTADORA.Clear;
  if cdsNotaFiscalID_VENDEDOR.AsInteger <= 0 then
    cdsNotaFiscalID_VENDEDOR.Clear;
  if cdsNotaFiscalID_CONTA.AsInteger <= 0 then
    cdsNotaFiscalID_CONTA.Clear;
  if cdsNotaFiscalID_TIPO_COBRANCA.AsInteger <= 0 then
    cdsNotaFiscalID_TIPO_COBRANCA.Clear;
  if cdsNotaFiscalID_CONTA_ORCAMENTO.AsInteger <= 0 then
    cdsNotaFiscalID_CONTA_ORCAMENTO.Clear;
  if trim(cdsNotaFiscalFONTE_TRIBUTOS.AsString) = '' then
    cdsNotaFiscalFONTE_TRIBUTOS.Clear;
  if trim(cdsNotaFiscalVERSAO_TRIBUTOS.AsString) = '' then
    cdsNotaFiscalVERSAO_TRIBUTOS.Clear;
  if trim(cdsNotaFiscalIBPT_CHAVE.AsString) = '' then
    cdsNotaFiscalIBPT_CHAVE.Clear;
  if cdsNotaFiscalTIPO_REG.AsString = 'RNF' then
  begin
    if cdsNotaFiscalID_CFOP.AsInteger <= 0 then
      cdsNotaFiscalID_CFOP.Clear;
  end;
end;

procedure TDMCadNotaFiscal.prc_Abrir_cdsCliente(Tipo_Reg: String; ID_Filial: Integer);
begin
  cdsCliente.Close;
  sdsCliente.CommandText := ctCliente + ' WHERE PES.INATIVO = '  + QuotedStr('N');
  if Tipo_Reg = 'NTE' then
    sdsCliente.CommandText := sdsCliente.CommandText + ' AND PES.TP_FORNECEDOR = ' + QuotedStr('S')
  else
    sdsCliente.CommandText := sdsCliente.CommandText + ' AND PES.TP_CLIENTE = ' + QuotedStr('S');
  if ID_Filial > 0 then
    sdsCliente.CommandText := sdsCliente.CommandText + ' AND PES.FILIAL = ' + IntToStr(ID_Filial);
  cdsCliente.Open;
end;

procedure TDMCadNotaFiscal.prc_Abrir_cdsCFOP(Tipo_Reg: String);
begin
  cdsCFOP.Close;
  sdsCFOP.CommandText := ctCFOP + ' WHERE T.INATIVO = ' + QuotedStr('N');
  if Tipo_Reg <> '' then
    sdsCFOP.CommandText := sdsCFOP.CommandText + ' AND T.ENTRADASAIDA = ' + QuotedStr(Tipo_Reg);
  cdsCFOP.Open;
end;

procedure TDMCadNotaFiscal.Excluir_Duplicata(ID_Nota: Integer = 0);
var
  sds: TSQLDataSet;
begin
  if ID_Nota <= 0 then
    ID_Nota := cdsNotaFiscalID.AsInteger;
  //if cdsNotaFiscalID.AsInteger <= 0 then
  if ID_Nota <= 0 then
    exit;
  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.GetMetadata   := False;
  sds.NoMetadata    := True;
  sds.CommandText   := 'DELETE FROM DUPLICATA WHERE ID_NOTA = ' + IntToStr(ID_Nota);
  sds.ExecSQL;
  FreeAndNil(sds);
end;

procedure TDMCadNotaFiscal.Excluir_ExtComissao(ID_Nota: Integer = 0);
var
  sds: TSQLDataSet;
begin
  if ID_Nota <= 0 then
    ID_Nota := cdsNotaFiscalID.AsInteger;
  if ID_Nota <= 0 then
    exit;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText   := 'DELETE FROM EXTCOMISSAO WHERE ID_NOTA = ' + IntToStr(ID_Nota);
  sds.ExecSQL;

  FreeAndNil(sds);
end;

procedure TDMCadNotaFiscal.Abrir_cdsDuplicata(ID: Integer);
begin
  cdsDuplicata.Close;
  sdsDuplicata.CommandText := 'SELECT * FROM DUPLICATA WHERE ID = ' + IntToStr(ID);
  cdsDuplicata.Open;
end;

procedure TDMCadNotaFiscal.Gravar_Envio_Nota(Recibo, NroProtocolo,
  ChaveAcesso: String; Finalidade, Ambiente, CodigoErro: Integer; DadosAdicionais: WideString);
begin
  cdsNotaFiscal.Edit;
  cdsNotaFiscalNFERECIBO.AsString      := Recibo;
  cdsNotaFiscalNFEPROTOCOLO.AsString   := NroProtocolo;
  cdsNotaFiscalNFECHAVEACESSO.AsString := ChaveAcesso;
  cdsNotaFiscalNFEFINALIDADE.AsString  := IntToStr(Finalidade);
  cdsNotaFiscalNFEAMBIENTE.AsString    := IntToStr(Ambiente);
  if (CodigoErro = 301) or (CodigoErro = 302) then
    cdsNotaFiscalNFEDENEGADA.AsString := 'S'
  else
    cdsNotaFiscalNFEDENEGADA.AsString := 'N';
  if CodigoErro = 301 then
    cdsNotaFiscalMOTIVO_DENEGADA.AsString := 'Irregularidade do Emitente'
  else
  if CodigoErro = 302 then
    cdsNotaFiscalMOTIVO_DENEGADA.AsString := 'Irregularidade do Destinatário';
  cdsNotaFiscalDADOS_ADICIONAIS.Value := DadosAdicionais;
  cdsNotaFiscalGRAVOU_DADOSADICIONAIS.AsString := 'S';
  if cdsNotaFiscalHREMISSAO.IsNull then
    cdsNotaFiscalHREMISSAO.AsDateTime := vHrEmissaoNFe;
  cdsNotaFiscal.Post;
  cdsNotaFiscal.ApplyUpdates(0);
end;

procedure TDMCadNotaFiscal.cdsNotaFiscal_ItensNewRecord(DataSet: TDataSet);
begin
  cdsNotaFiscal_ItensPERC_DESCONTO.AsFloat           := 0;
  cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat            := 0;
  cdsNotaFiscal_ItensVLR_IPI.AsFloat                 := 0;
  cdsNotaFiscal_ItensNUMERO_OC.AsString              := '';
  cdsNotaFiscal_ItensNUMERO_OS.AsString              := '';
  cdsNotaFiscal_ItensITEM_PEDIDO.AsInteger           := 0;
  cdsNotaFiscal_ItensQTDDEVOLVIDA.AsFloat            := 0;
  cdsNotaFiscal_ItensSOMAR_TRANSF_ICMS.AsString      := 'N';
  cdsNotaFiscal_ItensSOMAR_VLRTOTALPRODUTO.AsString  := 'S';
  cdsNotaFiscal_ItensVLR_FRETE.AsFloat               := 0;
  cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat      := 0;
  cdsNotaFiscal_ItensVLR_SEGURO.AsFloat              := 0;
  cdsNotaFiscal_ItensVLR_ICMSFRETE.AsFloat           := 0;
  cdsNotaFiscal_ItensBASE_ICMSSUBST.AsFloat          := 0;
  cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat           := 0;
  cdsNotaFiscal_ItensVLR_IMPORTACAO.AsFloat          := 0;
  cdsNotaFiscal_ItensVLR_ADUANEIRA.AsFloat           := 0;
  cdsNotaFiscal_ItensVLR_ICMSOUTRASDESPESAS.AsFloat  := 0;
  cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString          := 'S';
  cdsNotaFiscal_ItensVLR_DESCONTORATEIO.AsFloat      := 0;
  cdsNotaFiscal_ItensCALCULARICMSSOBREIPI.AsString   := 'N';
  cdsNotaFiscal_ItensITEM_DEVOL.AsString             := 'N';
  cdsNotaFiscal_ItensID_PEDIDO.AsInteger             := 0;
  cdsNotaFiscal_ItensITEM_PEDIDO.AsInteger           := 0;
  cdsNotaFiscal_ItensIMP_OC_NOTA.AsString            := 'S';
  cdsNotaFiscal_ItensID_NTE.AsInteger                := 0;
  cdsNotaFiscal_ItensITEM_NTE.AsInteger              := 0;
  cdsNotaFiscal_ItensQTD_NOTAATUAL.AsInteger         := 0;
  cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat           := 0;
  cdsNotaFiscal_ItensPERC_REDUCAO_ICMSSUBST.AsFloat  := 0;
  cdsNotaFiscal_ItensPERC_MVA.AsFloat                := 0;
  cdsNotaFiscal_ItensID_MOVIMENTO.AsInteger          := 0;
  cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger         := 0;
  cdsNotaFiscal_ItensPERC_ICMSSUBST_INTERNO.AsFloat  := 0;
  cdsNotaFiscal_ItensVLR_ICMSSUBST_INTERNO.AsFloat   := 0;
  cdsNotaFiscal_ItensPERC_ICMSSUBST_PROPRIO.AsFloat  := 0;
  cdsNotaFiscal_ItensVLR_ICMSSUBST_PROPRIO.AsFloat   := 0;
  cdsNotaFiscal_ItensBASE_ICMSSUBST_PROPRIO.AsFloat  := 0;
  cdsNotaFiscal_ItensQTD_PACOTE.AsFloat              := 0;
  cdsNotaFiscal_ItensGRAVACAO_COM_ERRO.AsString      := '';
  cdsNotaFiscal_ItensID_PEDIDO_FUT.AsInteger         := 0;
  cdsNotaFiscal_ItensITEM_PEDIDO_FUT.AsInteger       := 0;
  cdsNotaFiscal_ItensVLR_TRIBUTOS_ESTADUAL.AsFloat   := 0;
  cdsNotaFiscal_ItensVLR_TRIBUTOS_FEDERAL.AsFloat    := 0;
  cdsNotaFiscal_ItensVLR_TRIBUTOS_MUNICIPAL.AsFloat  := 0;
  cdsNotaFiscal_ItensPERC_TRIBUTO_ESTADUAL.AsFloat   := 0;
  cdsNotaFiscal_ItensPERC_TRIBUTO_FEDERAL.AsFloat    := 0;
  cdsNotaFiscal_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat  := 0;
  cdsNotaFiscal_ItensQTD_DESC_ESTOQUE.AsInteger      := 0;
  cdsNotaFiscal_ItensDIFERENCA_ICMS.AsString         := 'N';
  cdsNotaFiscal_ItensQTD_LANCAR_ESTOQUE.AsInteger    := 0;
  cdsNotaFiscal_ItensGRAVOU_TAB_TAMANHO.AsString     := 'N';
  cdsNotaFiscal_ItensID_MOVESTOQUE_PED.AsInteger     := 0;
  cdsNotaFiscal_ItensPERC_ICMS_DESON.AsFloat         := 0;
  cdsNotaFiscal_ItensPERC_PIS_COFINS_SUFRAMA.AsFloat := 0;
  cdsNotaFiscal_ItensVLR_PIS_COFINS_SUFRAMA.AsFloat  := 0;
  cdsNotaFiscal_ItensBASE_ICMS_FCP.AsFloat           := 0;
  cdsNotaFiscal_ItensVLR_ICMS_FCP.AsFloat            := 0;
  cdsNotaFiscal_ItensVLR_ICMS_FCP_DEST.AsFloat       := 0;
  cdsNotaFiscal_ItensBASE_ICMS_FCP_DEST.AsFloat      := 0;
end;

procedure TDMCadNotaFiscal.prc_Gravar_NotaFiscal_Parc(Parcela, ID_TipoCobranca, ID_Conta: Integer; Data: TDateTime;
          Valor, Perc_Base_Com: Real; Dia1, Dia2 : Integer);
begin
  cdsNotaFiscal_Parc.Insert;
  cdsNotaFiscal_ParcID.AsInteger              := cdsNotaFiscalID.AsInteger;
  cdsNotaFiscal_ParcITEM.AsInteger            := Parcela;
  cdsNotaFiscal_ParcDTVENCIMENTO.AsDateTime   := Data;
  //03/06/2018
  if ((Dia1 > 0) or (Dia2 > 0)) then
    cdsNotaFiscal_ParcDTVENCIMENTO.AsDateTime := fnc_Ajusta_DtVencimento(DayOfWeek(Data),Dia1,Dia2,qParametros_FinQTD_DIAS_MPAG.AsInteger,Data);
  //************
  
  cdsNotaFiscal_ParcVLR_VENCIMENTO.AsFloat    := Valor;
  if ID_TipoCobranca > 0 then
    cdsNotaFiscal_ParcID_TIPOCOBRANCA.AsInteger := ID_TipoCobranca;
  if ID_Conta > 0 then
    cdsNotaFiscal_ParcID_CONTA.AsInteger        := ID_Conta;
  if StrToFloat(FormatFloat('0.00',Perc_Base_Com)) <> 100 then
    cdsNotaFiscal_ParcPERC_BASE_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00000',Perc_Base_Com))
  else
    cdsNotaFiscal_ParcPERC_BASE_COMISSAO.AsFloat := Perc_Base_Com;
  if cdsNotaFiscal_ParcID_CONTA.AsInteger > 0 then
  begin
    if not cdsContas.Locate('ID',cdsNotaFiscal_ParcID_CONTA.AsInteger,[loCaseInsensitive]) then
      cdsNotaFiscal_ParcID_CONTA.Clear;
  end;
  cdsNotaFiscal_Parc.Post;
end;

procedure TDMCadNotaFiscal.cdsNotaFiscal_ItensBeforePost(
  DataSet: TDataSet);
begin
  if cdsNotaFiscal_ItensID_PIS.AsInteger < 1 then
    cdsNotaFiscal_ItensID_PIS.Clear;
  if cdsNotaFiscal_ItensID_COFINS.AsInteger < 1 then
    cdsNotaFiscal_ItensID_COFINS.Clear;
  if cdsNotaFiscal_ItensID_CSTICMS.AsInteger < 1 then
    cdsNotaFiscal_ItensID_CSTICMS.Clear;
  if cdsNotaFiscal_ItensID_CSTIPI.AsInteger < 1 then
    cdsNotaFiscal_ItensID_CSTIPI.Clear;
  if cdsNotaFiscal_ItensCONTA_ORCAMENTO_ID.AsInteger <= 0 then
    cdsNotaFiscal_ItensCONTA_ORCAMENTO_ID.Clear;
  cdsNotaFiscal_ItensTIPO_REG.AsString := cdsNotaFiscalTIPO_REG.AsString;
  if cdsNotaFiscalTIPO_REG.AsString = 'RNF' then
  begin
    if cdsNotaFiscal_ItensID_CFOP.AsInteger <= 0 then
      cdsNotaFiscal_ItensID_CFOP.Clear;
  end;
end;

function TDMCadNotaFiscal.fnc_verificar_CFOP(ID: Integer): Boolean;
var
  vCodigo: String;
  vMsgErroAux: String;
begin
  Result := False;
  //if fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger <= 0 then
  if ID  <= 0 then
    exit;
  //if fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger <> ID then
    //fDMCadNotaFiscal.cdsCFOP.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscalID_CFOP.AsInteger,[loCaseInsensitive]);
  cdsCFOP.Locate('ID',ID,[loCaseInsensitive]);
  vCodigo     := cdsCFOPCODCFOP.AsString;
  vMsgErroAux := '';
  if vCodigo <> '' then
  begin
    if (cdsNotaFiscalTIPO_NOTA.AsString = 'E') and ((Copy(vCodigo,1,1) = '5') or (Copy(vCodigo,1,1) = '6') or (Copy(vCodigo,1,1) = '7')) then
      vMsgErroAux := vMsgErroAux + #13 + '*** Natureza é de saída!'
    else
    if (cdsNotaFiscalTIPO_NOTA.AsString = 'S') and ((Copy(vCodigo,1,1) = '1') or (Copy(vCodigo,1,1) = '2') or (Copy(vCodigo,1,1) = '3')) then
      vMsgErroAux := vMsgErroAux + #13 + '*** Natureza é de entrada!'
    else
    if cdsNotaFiscalID_CLIENTE.AsInteger > 0 then
    begin
      if length(vCodigo) <> 3 then
      begin
        if (cdsNotaFiscalNFEFINALIDADE.AsString = '1') or (cdsNotaFiscalNFEFINALIDADE.AsString = '4') then
        begin
          if (vSiglaUF <> cdsFilialUF.AsString) and ((Copy(vCodigo,1,1) = '1') or (Copy(vCodigo,1,1) = '5')) then
            vMsgErroAux := vMsgErroAux + #13 + '*** Natureza inválida para o estado!'
          else
          if (vSiglaUF = cdsFilialUF.AsString) and ((Copy(vCodigo,1,1) <> '5') and (Copy(vCodigo,1,1) <> '1')) then
            vMsgErroAux := vMsgErroAux + #13 + '*** Natureza inválida para o estado!';
        end;
      end;
    end;
  end;
  vMSGNotaFiscal := vMsgErroAux;
  if trim(vMsgErroAux) <> '' then
    exit;
  Result := True;
end;

procedure TDMCadNotaFiscal.prc_Ajustar_NDevolvida;
begin
  if cdsNotaFiscal_NDevolvida.IsEmpty then
    exit;

  cdsNotaFiscal_NDevolvida.Edit;
  cdsNotaFiscal_NDevolvidaQTD.AsFloat := StrToFloat(FormatFloat('0.00000',cdsNotaFiscal_ItensQTD.AsFloat));
  cdsNotaFiscal_NDevolvida.Post;
end;

procedure TDMCadNotaFiscal.prc_Gravar_mSelecionado;
begin
  mSelecionado.EmptyDataSet;
  cdsNotaFiscal_Itens.First;
  while not cdsNotaFiscal_Itens.Eof do
  begin
    if cdsNotaFiscal_ItensID_NTE.AsInteger > 0 then
    begin
      if mSelecionado.Locate('ID_MATERIAL',cdsNotaFiscal_ItensID_PRODUTO.AsInteger,([Locaseinsensitive])) then
        mSelecionado.Edit
      else
      begin
        mSelecionado.Insert;
        mSelecionadoID_Material.AsInteger := cdsNotaFiscal_ItensID_PRODUTO.AsInteger;
        mSelecionadoQtdNota.AsInteger     := 0;
      end;
      mSelecionadoQtdNota.AsFloat := StrToFloat(FormatFloat('0.00000',mSelecionadoQtdNota.AsFloat + cdsNotaFiscal_ItensQTD.AsFloat));
      mSelecionado.Post;
    end;
    cdsNotaFiscal_Itens.Next;
  end;
end;

procedure TDMCadNotaFiscal.dspNotaFiscalUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadNotaFiscal.cdsNotaFiscal_ConsultaCalcFields(
  DataSet: TDataSet);
begin
  cdsNotaFiscal_ConsultaDESCRICAO_MANIFESTO.AsString := '';
  if cdsNotaFiscal_ConsultaSTATUS_MANIFESTO.AsString = 'CCE' then
    cdsNotaFiscal_ConsultaDESCRICAO_MANIFESTO.AsString := 'Carta de Correção'
  else
  if cdsNotaFiscal_ConsultaSTATUS_MANIFESTO.AsString = 'COP' then
    cdsNotaFiscal_ConsultaDESCRICAO_MANIFESTO.AsString := 'Confirmação Operação'
  else
  if cdsNotaFiscal_ConsultaSTATUS_MANIFESTO.AsString = 'CIE' then
    cdsNotaFiscal_ConsultaDESCRICAO_MANIFESTO.AsString := 'Ciência da Operação'
  else
  if cdsNotaFiscal_ConsultaSTATUS_MANIFESTO.AsString = 'DES' then
    cdsNotaFiscal_ConsultaDESCRICAO_MANIFESTO.AsString := 'Desconhecimento da Operação'
  else
  if cdsNotaFiscal_ConsultaSTATUS_MANIFESTO.AsString = 'ONR' then
    cdsNotaFiscal_ConsultaDESCRICAO_MANIFESTO.AsString := 'Operação não Realizada';
end;

procedure TDMCadNotaFiscal.prc_Excluir_Financeiro(ID_Nota: Integer = 0);
var
  sds: TSQLDataSet;
begin
  if ID_Nota <= 0 then
    ID_Nota := cdsNotaFiscalID.AsInteger;
  //if cdsNotaFiscalID.AsInteger <= 0 then
  if ID_Nota <= 0 then
    exit;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText   := 'DELETE FROM FINANCEIRO WHERE ID_NOTA = ' + IntToStr(ID_Nota);
  sds.ExecSQL;

  FreeAndNil(sds);
end;

procedure TDMCadNotaFiscal.cdsNotaFiscal_PedNewRecord(DataSet: TDataSet);
begin
  cdsNotaFiscal_PedTIPO_NOTA.AsString := cdsNotaFiscalTIPO_NOTA.AsString;
end;

procedure TDMCadNotaFiscal.cdsNotaFiscal_NDevolvidaNewRecord(
  DataSet: TDataSet);
begin
  cdsNotaFiscal_NDevolvidaTIPO_NOTA.AsString := cdsNotaFiscalTIPO_NOTA.AsString;
end;

procedure TDMCadNotaFiscal.prc_Le_Itens(fDMCadNotaFiscal: TDMCadNotaFiscal ; Tipo: String);
var
  vGerar: String;
begin
  cdsNotaFiscal_Itens.First;
  while not cdsNotaFiscal_Itens.Eof do
  begin
    vGerar := 'N';
    if Tipo = 'G' then
      if cdsCFOP.Locate('ID',cdsNotaFiscal_ItensID_CFOP.AsInteger,[loCaseInsensitive]) then
        vGerar := cdsCFOPGERAR_DUPLICATA.AsString;
    cdsNotaFiscal_Itens.Edit;
    cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString := vGerar;
    cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat    := StrtoFloat(FormatFloat('0.00',0));

    cdsNotaFiscal_Itens.Post;
    cdsNotaFiscal_Itens.Next;
  end;
  prc_Calcular_Desconto_Novo(fDMCadNotaFiscal, False);
  if Tipo = 'Z' then
    cdsNotaFiscalVLR_DUPLICATA.AsFloat := 0;
end;

procedure TDMCadNotaFiscal.cdsPedidoCalcFields(DataSet: TDataSet);
begin
  if cdsPedidoTIPO_REG.AsString = 'P' then
  begin
    if cdsParametrosCONTROLAR_PEDIDO_LIBERACAO.AsString = 'S' then
      cdsPedidoclQtd_Restante.AsFloat := StrToFloat(FormatFloat('0.000000',cdsPedidoQTD_LIBERADA.AsFloat))
    else
      cdsPedidoclQtd_Restante.AsFloat := StrToFloat(FormatFloat('0.000000',cdsPedidoQTD_RESTANTE.AsFloat));
    if cdsParametrosCONTROLAR_PEDIDO_LIBERACAO.AsString = 'S' then
      cdsPedidoclQtd_NaoLiberada.AsFloat := StrToFloat(FormatFloat('0.000000',cdsPedidoQTD_RESTANTE.AsFloat - cdsPedidoQTD_LIBERADA.AsFloat))
    else
      cdsPedidoclQtd_NaoLiberada.AsFloat := StrToFloat(FormatFloat('0.000000',0));
  end
  else
    cdsPedidoclQtd_Restante.AsFloat := StrToFloat(FormatFloat('0.000000',cdsPedidoQTD_RESTANTE.AsFloat));
  if qParametros_NFeUSA_PREFAT.AsString = 'S' then
  begin
    qPreFat.Close;
    qPreFat.ParamByName('ID_PEDIDO').AsInteger   := cdsPedidoID.AsInteger;
    qPreFat.ParamByName('ITEM_PEDIDO').AsInteger := cdsPedidoITEM.AsInteger;
    qPreFat.Open;
    if qPreFatCONTADOR.AsInteger > 0 then
      cdsPedidoExiste_PreFat.AsString := 'S';
  end;
end;

procedure TDMCadNotaFiscal.cdsNotaFiscal_ParcBeforePost(DataSet: TDataSet);
begin
  if cdsNotaFiscal_ParcITEM.AsInteger = 0 then
  begin
    if StrToFloat(FormatFloat('0.00',cdsNotaFiscal_ParcVLR_VENCIMENTO.AsFloat)) <> StrToFloat(FormatFloat('0.00',cdsNotaFiscalVLR_ENTRADA.AsFloat)) then
      cdsNotaFiscalVLR_ENTRADA.AsFloat := StrToFloat(FormatFloat('0.00',cdsNotaFiscal_ParcVLR_VENCIMENTO.AsFloat));
  end;
end;

procedure TDMCadNotaFiscal.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadNotaFiscal.prc_Excluir_Movimento;
var
  sds: TSQLDataSet;
begin
  if cdsNotaFiscalID.AsInteger <= 0 then
    exit;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText   := 'DELETE FROM MOVIMENTO WHERE ID_NOTAFISCAL = ' + IntToStr(cdsNotaFiscalID.AsInteger);
  sds.ExecSQL;

  FreeAndNil(sds);
end;

procedure TDMCadNotaFiscal.prc_Excluir_NotaFiscal_MP;
var
  sds: TSQLDataSet;
begin
  if cdsNotaFiscalID.AsInteger <= 0 then
    exit;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText   := 'DELETE FROM NOTAFISCAL_MP WHERE ID = ' + IntToStr(cdsNotaFiscalID.AsInteger);
  sds.ExecSQL;

  FreeAndNil(sds);
end;

procedure TDMCadNotaFiscal.prc_montar_Importacao;
var
  i: Integer;
begin
  mAux_Imp.EmptyDataSet;
  mAux_Imp_Ad.EmptyDataSet;
  if cdsNotaFiscal_Imp.IsEmpty then
    exit;
  cdsNotaFiscal_Imp.First;
  while not cdsNotaFiscal_Imp.Eof do
  begin
    mAux_Imp.Insert;
    for i := 0 to cdsNotaFiscal_Imp.FieldCount-1 do
      if (cdsNotaFiscal_Imp.Fields[i].FieldName <> 'sdsNotaFiscal_Imp_Ad') then
        mAux_Imp.FieldByName(cdsNotaFiscal_Imp.Fields[i].FieldName).AsVariant := cdsNotaFiscal_Imp.Fields[i].Value;
    mAux_Imp.Post;
    cdsNotaFiscal_Imp_Ad.First;
    while not cdsNotaFiscal_Imp_Ad.Eof do
    begin
      mAux_Imp_Ad.Insert;
      for i := 0 to cdsNotaFiscal_Imp_Ad.FieldCount-1 do
        mAux_Imp_Ad.FieldByName(cdsNotaFiscal_Imp_Ad.Fields[i].FieldName).AsVariant := cdsNotaFiscal_Imp_Ad.Fields[i].Value;

      mAux_Imp_Ad.Post;
      cdsNotaFiscal_Imp_Ad.Next;
    end;
    cdsNotaFiscal_Imp.Next;
  end;
end;

procedure TDMCadNotaFiscal.prc_montar_Importacao_Imp_Aux;
var
  i: Integer;
begin
  mAux_Imp.EmptyDataSet;
  mAux_Imp_Ad.EmptyDataSet;
  if cdsNotaFiscal_Imp_Aux.IsEmpty then
    exit;
  cdsNotaFiscal_Imp.First;
  mAux_Imp.Insert;
  mAux_ImpID.AsInteger               := cdsNotaFiscal_Imp_AuxID.AsInteger;
  mAux_ImpITEM.AsInteger             := cdsNotaFiscal_ItensITEM.AsInteger;
  mAux_ImpITEM_IMP.AsInteger         := 1;
  mAux_ImpNUMDI.AsString             := cdsNotaFiscal_Imp_AuxNUM_DI.AsString;
  mAux_ImpDTREGISTRO.AsDateTime      := cdsNotaFiscal_Imp_AuxDTREGISTRO.AsDateTime;
  mAux_ImpDTDESEMBARACO.AsDateTime   := cdsNotaFiscal_Imp_AuxDTDESEMBARACO.AsDateTime;
  mAux_ImpCODEXPORTADOR.AsString     := cdsNotaFiscal_Imp_AuxCOD_EXPORTADOR.AsString;
  mAux_ImpUF.AsString                := cdsNotaFiscal_Imp_AuxUF.AsString;
  mAux_ImpNUMFATURA.AsString         := cdsNotaFiscal_Imp_AuxNUM_FATURA.AsString;
  mAux_ImpLOCAL_DESEMBARACO.AsString := cdsNotaFiscal_Imp_AuxLOCAL_DESEMBARACO.AsString;
  mAux_ImpTIPO_VIA_TRANSORTE.AsInteger := cdsNotaFiscal_Imp_AuxTIPO_VIA_TRANSPORTE.AsInteger;
  mAux_ImpVLR_AFRMM.AsFloat            := cdsNotaFiscal_Imp_AuxVLR_AFRMM.AsFloat;
  mAux_ImpTIPO_INTERMEDIO.AsInteger    := cdsNotaFiscal_Imp_AuxTIPO_INTERMEDIO.AsInteger;
  mAux_ImpCNPJ.AsString                := cdsNotaFiscal_Imp_AuxCNPJ_TERCEIRO.AsString;
  mAux_ImpUF_TERCEIRO.AsString         := cdsNotaFiscal_Imp_AuxUF_TERCEIRO.AsString;
  mAux_Imp.Post;

  mAux_Imp_Ad.Insert;
  mAux_Imp_AdID.AsInteger            := mAux_ImpID.AsInteger;
  mAux_Imp_AdITEM.AsInteger          := mAux_ImpITEM.AsInteger;
  mAux_Imp_AdITEM_IMP.AsInteger      := mAux_ImpITEM_IMP.AsInteger;
  mAux_Imp_AdITEM_AD.AsInteger       := 1;
  mAux_Imp_AdNUMADICAO.AsInteger     := cdsNotaFiscal_Imp_AuxNUM_ADICAO.AsInteger;
  mAux_Imp_AdCODFABRICANTE.AsString  := cdsNotaFiscal_Imp_AuxCOD_FABRICANTE.AsString;
  mAux_Imp_AdVLR_DESCONTO_DI.AsFloat := StrToFloat(FormatFloat('0.00',cdsNotaFiscal_Imp_AuxVLR_DESCONTO_DI.AsFloat));
  mAux_Imp_AdNUM_SEQ.AsInteger       := cdsNotaFiscal_Imp_AuxNUM_SEQ.AsInteger;
  mAux_Imp_AdNUM_DRAWBACK.AsString   := cdsNotaFiscal_Imp_AuxNUM_DRAWBACK.AsString;
  mAux_Imp_Ad.Post;
end;

procedure TDMCadNotaFiscal.prc_Gravar_Importacao;
var
  i: Integer;
begin
  if mAux_Imp.IsEmpty then
    exit;
  mAux_Imp.First;
  while not mAux_Imp.Eof do
  begin
    cdsNotaFiscal_Imp.Insert;
    for i := 0 to mAux_Imp.FieldCount-1 do
    begin
      if (mAux_Imp.Fields[i].FieldName <> 'ID') and (mAux_Imp.Fields[i].FieldName <> 'ITEM') then
        cdsNotaFiscal_Imp.FieldByName(mAux_Imp.Fields[i].FieldName).AsVariant := mAux_Imp.Fields[i].Value;
    end;
    cdsNotaFiscal_Imp.Post;
    mAux_Imp.Next;
  end;
  mAux_Imp_Ad.First;
  while not mAux_Imp_Ad.Eof do
  begin
    cdsNotaFiscal_Imp_Ad.Insert;
    for i := 0 to mAux_Imp_Ad.FieldCount-1 do
    begin
      if (mAux_Imp_Ad.Fields[i].FieldName <> 'ID') and (mAux_Imp_Ad.Fields[i].FieldName <> 'ITEM') and (mAux_Imp_Ad.Fields[i].FieldName <> 'ITEM_IMP') then
        cdsNotaFiscal_Imp_Ad.FieldByName(mAux_Imp_Ad.Fields[i].FieldName).AsVariant := mAux_Imp_Ad.Fields[i].Value;
    end;
    cdsNotaFiscal_Imp_Ad.Post;
    mAux_Imp_Ad.Next;
  end;
end;

procedure TDMCadNotaFiscal.cdsDuplicataBeforePost(DataSet: TDataSet);
begin
  if cdsDuplicataID_CONTA_ORCAMENTO.AsInteger <= 0 then
    cdsDuplicataID_CONTA_ORCAMENTO.Clear;
  if cdsNotaFiscalTIPO_REG.AsString = 'RNF' then
    cdsDuplicataTIPO_MOV.AsString := 'D'
  else
    cdsDuplicataTIPO_MOV.AsString := 'N';
end;

procedure TDMCadNotaFiscal.prc_Abrir_CSTICMS(Tipo: String);
begin
  cdsTab_CSTICMS.Close;
  sdsTab_CSTICMS.CommandText := 'SELECT * FROM TAB_CSTICMS ';
  if (trim(Tipo) <> '') and (Tipo <> '2') then
    sdsTab_CSTICMS.CommandText := sdsTab_CSTICMS.CommandText + ' WHERE TIPO = ' + QuotedStr(Tipo);
  cdsTab_CSTICMS.Open;
end;

procedure TDMCadNotaFiscal.prc_Excluir_Auxiliar_Retorno;
begin
  mMObra_Nota.First;
  while not mMObra_Nota.Eof do
    mMObra_Nota.Delete;
  mMObra_Ped.First;
  while not mMObra_Ped.Eof do
    mMObra_Ped.Delete;
end;

procedure TDMCadNotaFiscal.cdsNotaFiscal_Imp_AuxBeforeInsert(
  DataSet: TDataSet);
begin
  vNUM_DI_Imp_Aux            := '';
  vDTREGISTRO_Imp_Aux        := 0;
  vDTDESEMBARACO_Imp_Aux     := 0;
  vCOD_EXPORTADOR_Imp_Aux    := '';
  vLOCAL_DESEMBARACO_Imp_Aux := '';
  vUF_Imp_Aux                := '';
  vNUM_FATURA_Imp_Aux        := '';
  vCOD_FABRICANTE_Imp_Aux    := '';
  vVLR_DESCONTO_DI_Imp_Aux   := 0;

  cdsNotaFiscal_Imp_Aux.Last;
  if cdsNotaFiscal_Imp_AuxItem.AsInteger > 0 then
    if fnc_Erro_Imp_Aux then
      abort;
  vItem_Imp_Aux := cdsNotaFiscal_Imp_AuxITEM.AsInteger;
  if cdsNotaFiscal_Imp_AuxITEM.AsInteger > 0 then
  begin
    vNUM_DI_Imp_Aux            := cdsNotaFiscal_Imp_AuxNUM_DI.AsString;
    vDTREGISTRO_Imp_Aux        := cdsNotaFiscal_Imp_AuxDTREGISTRO.AsDateTime;
    vDTDESEMBARACO_Imp_Aux     := cdsNotaFiscal_Imp_AuxDTDESEMBARACO.AsDateTime;
    vCOD_EXPORTADOR_Imp_Aux    := cdsNotaFiscal_Imp_AuxCOD_EXPORTADOR.AsString;
    vLOCAL_DESEMBARACO_Imp_Aux := cdsNotaFiscal_Imp_AuxLOCAL_DESEMBARACO.AsString;
    vUF_Imp_Aux                := cdsNotaFiscal_Imp_AuxUF.AsString;
    vNUM_FATURA_Imp_Aux        := cdsNotaFiscal_Imp_AuxNUM_FATURA.AsString;
    vCOD_FABRICANTE_Imp_Aux    := cdsNotaFiscal_Imp_AuxCOD_FABRICANTE.AsString;
    vVLR_DESCONTO_DI_Imp_Aux   := StrToFloat(FormatFloat('0.00',cdsNotaFiscal_Imp_AuxVLR_DESCONTO_DI.AsFloat));
  end;
end;

procedure TDMCadNotaFiscal.cdsNotaFiscal_Imp_AuxAfterInsert(
  DataSet: TDataSet);
begin
  cdsNotaFiscal_Imp_AuxITEM.AsInteger := vItem_Imp_Aux + 1;

  cdsNotaFiscal_Imp_AuxNUM_DI.AsString            := vNUM_DI_Imp_Aux;
  cdsNotaFiscal_Imp_AuxDTREGISTRO.AsDateTime      := vDTREGISTRO_Imp_Aux;
  cdsNotaFiscal_Imp_AuxDTDESEMBARACO.AsDateTime   := vDTDESEMBARACO_Imp_Aux;
  cdsNotaFiscal_Imp_AuxCOD_EXPORTADOR.AsString    := vCOD_EXPORTADOR_Imp_Aux;
  cdsNotaFiscal_Imp_AuxLOCAL_DESEMBARACO.AsString := vLOCAL_DESEMBARACO_Imp_Aux;
  cdsNotaFiscal_Imp_AuxUF.AsString                := vUF_Imp_Aux;
  cdsNotaFiscal_Imp_AuxNUM_FATURA.AsString        := vNUM_FATURA_Imp_Aux;
  cdsNotaFiscal_Imp_AuxCOD_FABRICANTE.AsString    := vCOD_FABRICANTE_Imp_Aux;
  cdsNotaFiscal_Imp_AuxVLR_DESCONTO_DI.AsFloat    := StrToFloat(FormatFloat('0.00',vVLR_DESCONTO_DI_Imp_Aux));
end;

procedure TDMCadNotaFiscal.cdsNotaFiscal_Imp_AuxBeforePost(
  DataSet: TDataSet);
begin
  cdsNotaFiscal_Imp_AuxUF.AsString := UpperCase(cdsNotaFiscal_Imp_AuxUF.AsString);
  if fnc_Erro_Imp_Aux then
    abort;
end;

function TDMCadNotaFiscal.fnc_Erro_Imp_Aux: Boolean;
var
  vMsgErro_Aux: String;
begin
  Result := True;
  vMsgErro_Aux := '';
  if trim(cdsNotaFiscal_Imp_AuxCOD_EXPORTADOR.AsString) = '' then
    vMsgErro_Aux := vMsgErro_Aux + #13 + '*** Código Exportador não informado!';
  if trim(cdsNotaFiscal_Imp_AuxCOD_FABRICANTE.AsString) = '' then
    vMsgErro_Aux := vMsgErro_Aux + #13 + '*** Código Fabricante não informado!';
  if cdsNotaFiscal_Imp_AuxDTDESEMBARACO.AsDateTime <= 10 then
    vMsgErro_Aux := vMsgErro_Aux + #13 + '*** Data Desembaraço não informada!';
  if cdsNotaFiscal_Imp_AuxDTREGISTRO.AsDateTime <= 10 then
    vMsgErro_Aux := vMsgErro_Aux + #13 + '*** Data Registro não informada!';
  if trim(cdsNotaFiscal_Imp_AuxLOCAL_DESEMBARACO.AsString) = '' then
    vMsgErro_Aux := vMsgErro_Aux + #13 + '*** Local Desembaraço não informado!';
  if trim(cdsNotaFiscal_Imp_AuxNUM_FATURA.AsString) = '' then
    vMsgErro_Aux := vMsgErro_Aux + #13 + '*** Número Fatura não informada!';
  if trim(cdsNotaFiscal_Imp_AuxUF.AsString) = '' then
    vMsgErro_Aux := vMsgErro_Aux + #13 + '*** UF não informada!';
  if cdsNotaFiscal_Imp_AuxNUM_ADICAO.AsInteger <= 0 then
    vMsgErro_Aux := vMsgErro_Aux + #13 + '*** Número da Adição não informada!';
  if cdsNotaFiscal_Imp_AuxNUM_SEQ.AsInteger <= 0 then
    vMsgErro_Aux := vMsgErro_Aux + #13 + '*** Número da Sequencia da Adição não informada!';
  if trim(cdsNotaFiscal_Imp_AuxNUM_DI.AsString) = '' then
    vMsgErro_Aux := vMsgErro_Aux + #13 + '*** Número da DI não informada!';
  if vMsgErro_Aux <> '' then
  begin
    MessageDlg(vMsgErro_Aux, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TDMCadNotaFiscal.prc_Cancelar_Movimento(ID_Nota: Integer);
var
  sds: TSQLDataSet;
begin
  if ID_Nota <= 0 then
    exit;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText   := 'UPDATE MOVIMENTO SET CANCELADO = ' + QuotedStr('S') + ' , MOTIVO_CD = ' + QuotedStr('Nota Cancelada fora do Prazo na nota ' + cdsNotaFiscalNUMNOTA.AsString)
                     + ' WHERE ID_NOTAFISCAL = ' + IntToStr(ID_Nota)
                     + '   AND TIPO_REG = ' + QuotedStr('NTS');
  sds.ExecSQL;
  FreeAndNil(sds);
end;

procedure TDMCadNotaFiscal.prc_Atualiza_Vale_Itens(Tipo_Fat: String);
var
  sds: TSQLDataSet;
begin
  {sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := ' UPDATE VALE_ITENS SET FATURADO = ' + QuotedStr(Tipo_Fat)
                       +    ' WHERE ID_VALE = ' + cdsNotaFiscal_ItensID_VALE.AsString
                       +    '   AND ITEM_VALE = ' + cdsNotaFiscal_ItensITEM_VALE.AsString;
    sds.ExecSQL();
  finally
    FreeAndNil(sds);
  end;}
end;

procedure TDMCadNotaFiscal.prc_Atualiza_Vale(ID: Integer);
var
  sds: TSQLDataSet;
  sds2: TSQLDataSet;
  vTipo_Fat: String;
begin
  sds  := TSQLDataSet.Create(nil);
  sds2 := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT V.ID, ( SELECT COUNT(FATURADO) FATNAO FROM VALE_ITENS VNAO '
                       + ' WHERE VNAO.FATURADO = ' + QuotedStr('N')
                       + ' AND VNAO.ID = V.ID ) TOT_NAO_FAT, '
                       + ' ( SELECT COUNT(FATURADO) FATNAO FROM VALE_ITENS VNAO WHERE VNAO.ID = V.ID) TOT_ITENS '
                       + ' FROM VALE V '
                       + ' WHERE V.ID = ' + IntToStr(ID);
    sds.Open;

    if sds.FieldByName('TOT_NAO_FAT').AsInteger <= 0 then
      vTipo_Fat := 'S'
    else
    if sds.FieldByName('TOT_NAO_FAT').AsInteger <> sds.FieldByName('TOT_ITENS').AsInteger then
      vTipo_Fat := 'P'
    else
      vTipo_Fat := 'N';

    sds2.SQLConnection := dmDatabase.scoDados;
    sds2.NoMetadata    := True;
    sds2.GetMetadata   := False;
    sds2.CommandText   := ' UPDATE VALE SET FATURADO = ' + QuotedStr(vTipo_Fat)
                        + ' WHERE ID = ' + IntToStr(ID);
    sds2.ExecSQL();
  finally
    FreeAndNil(sds);
    FreeAndNil(sds2);
  end;
end;

procedure TDMCadNotaFiscal.prc_Verificar_Consumo;
var
  vConsumo: Real;
  vAux: Real;
begin
  if cdsNotaFiscal_ItensMAOOBRA.AsString <> 'S' then
  begin
    if (mMaterialConsumo.FindKey([cdsNotaFiscal_ItensID_PRODUTO.AsInteger])) then
      mMaterialConsumo.Edit
    else
    begin
      mMaterialConsumo.Insert;
      mMaterialConsumoID_Material.AsInteger := cdsNotaFiscal_ItensID_PRODUTO.AsInteger;
      mMaterialConsumoNomeMaterial.AsString := cdsNotaFiscal_ItensNOME_PRODUTO.AsString;
    end;
    mMaterialConsumoQtdJaInformada.AsFloat := StrToFloat(FormatFloat('0.00000',mMaterialConsumoQtdJaInformada.AsFloat + cdsNotaFiscal_ItensQTD.AsFloat));
    mMaterialConsumo.Post;
  end
  else
  begin
    qProduto_Consumo.Close;
    qProduto_Consumo.ParamByName('ID').AsInteger := cdsNotaFiscal_ItensID_PRODUTO.AsInteger;
    qProduto_Consumo.Open;
    while not qProduto_Consumo.Eof do
    begin
      if (mMaterialConsumo.FindKey([qProduto_ConsumoID_MATERIAL.AsInteger])) then
        mMaterialConsumo.Edit
      else
      begin
        mMaterialConsumo.Insert;
        mMaterialConsumoID_Material.AsInteger := qProduto_ConsumoID_MATERIAL.AsInteger;
        mMaterialConsumoNomeMaterial.AsString := copy(qProduto_ConsumoNOMEMATERIAL.AsString,1,Length(qProduto_ConsumoNOMEMATERIAL.AsString));
      end;
      if qProduto_ConsumoTIPO_CONSUMO.AsString = 'T' then
      begin
        qProduto_Consumo_Tam.Close;
        qProduto_Consumo_Tam.ParamByName('ID').AsInteger     := qProduto_ConsumoID.AsInteger;
        qProduto_Consumo_Tam.ParamByName('ITEM').AsInteger   := qProduto_ConsumoITEM.AsInteger;
        qProduto_Consumo_Tam.ParamByName('TAMANHO').AsString := cdsNotaFiscal_ItensTAMANHO.AsString;
        qProduto_Consumo_Tam.Open;
        if qProduto_Consumo_Tam.IsEmpty then
          vConsumo := 0
        else
          vConsumo := qProduto_Consumo_TamQTD_CONSUMO.AsFloat;
      end
      else
        vConsumo := qProduto_ConsumoQTD_CONSUMO.AsFloat;
      mMaterialConsumoQtdProduto.AsFloat := mMaterialConsumoQtdProduto.AsFloat + cdsNotaFiscal_ItensQTD.AsFloat;
      vAux := StrToFloat(FormatFloat('0.00000',cdsNotaFiscal_ItensQTD.AsFloat * vConsumo));
      //07/08/2014
      //mMaterialConsumoQtdConsumo.AsFloat := StrToFloat(FormatFloat('0.00000',mMaterialConsumoQtdConsumo.AsFloat + vAux));
      mMaterialConsumoQtdConsumo.AsFloat := StrToFloat(FormatFloat('0.0000',mMaterialConsumoQtdConsumo.AsFloat + vAux));
      mMaterialConsumo.Post;
      qProduto_Consumo.Next;
    end;
  end;
end;

procedure TDMCadNotaFiscal.cdsDuplicataReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  if trim(e.Message) <> '' then
  begin
    prc_Gravar_Erro('cdsDuplicata','UDMCadNotaFiscal','Erro ao gravar a nota fiscal ' + cdsNotaFiscalNUMNOTA.AsString + ' ' + e.Message);
    MessageDlg(e.Message + #13 + #13 + '*** Contas a Receber não gravado!', mtError, [mbOk], 0);
  end;
end;

procedure TDMCadNotaFiscal.cdsDuplicata_HistReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  if trim(e.Message) <> '' then
  begin
    prc_Gravar_Erro('cdsDuplicata_Hist','UDMCadNotaFiscal','Erro ao gravar a nota fiscal ' + cdsNotaFiscalNUMNOTA.AsString + ' ' + e.Message);
    MessageDlg(e.Message + #13 + #13 + '*** Contas a Receber (Histórico) não gravado!', mtError, [mbOk], 0);
  end;
end;

procedure TDMCadNotaFiscal.prc_Abrir_Desoneracao(Cod_CST: String);
begin
  cdsDesoneracao.Close;
  sdsDesoneracao.ParamByName('COD_CST_ICMS').AsString := Cod_CST;
  cdsDesoneracao.Open;
end;

procedure TDMCadNotaFiscal.cdsNotaFiscal_Imp_AuxNewRecord(
  DataSet: TDataSet);
begin
  cdsNotaFiscal_Imp_AuxCNPJ_TERCEIRO.EditMask := '00.000.000/0000-00';
end;

procedure TDMCadNotaFiscal.prc_Abrir_NotaFiscal_ProdPrincipal(ID,
  Item: Integer);
begin
  cdsNotaFiscal_ProdPrincipal.Close;
  sdsNotaFiscal_ProdPrincipal.CommandText := ctNotaFiscal_ProdPrincipal;
  if Item > 0 then
  begin
    sdsNotaFiscal_ProdPrincipal.CommandText := sdsNotaFiscal_ProdPrincipal.CommandText + ' AND ITEM_ORIGINAL = :ITEM_ORIGINAL';
    sdsNotaFiscal_ProdPrincipal.ParamByName('ITEM_ORIGINAL').AsInteger := Item;
  end;
  sdsNotaFiscal_ProdPrincipal.ParamByName('ID').AsInteger := ID;
  cdsNotaFiscal_ProdPrincipal.Open;
end;

procedure TDMCadNotaFiscal.prc_Excluir_NotaFiscal_ProdPrincipal;
var
  sds: TSQLDataSet;
begin
  if cdsNotaFiscalID.AsInteger <= 0 then
    exit;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText   := 'DELETE FROM NOTAFISCAL_PRODPRINCIPAL WHERE ID = ' + IntToStr(cdsNotaFiscalID.AsInteger);
  sds.ExecSQL;

  FreeAndNil(sds);
end;

procedure TDMCadNotaFiscal.prc_Excluir_cdsNotaFiscal_ItensAux(Item: Integer);
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.GetMetadata   := False;
    sds.NoMetadata    := True;
    sds.CommandText   := 'DELETE FROM NOTAFISCAL_ITENSAUX ' +
                         'WHERE ID = ' + IntToStr(cdsNotaFiscalID.AsInteger);
    if Item > 0 then
      sds.CommandText := sds.CommandText + ' AND ITEM = ' + IntToStr(cdsNotaFiscal_ItensITEM.AsInteger);
    sds.ExecSQL;
  finally
    FreeAndNil(sds);
  end;
end;                                         

procedure TDMCadNotaFiscal.cdsNotaFiscal_TamNewRecord(DataSet: TDataSet);
begin
  cdsNotaFiscal_TamID_MOVESTOQUE.AsInteger := 0;
end;

procedure TDMCadNotaFiscal.cdsPedido_TamCalcFields(DataSet: TDataSet);
begin
  if cdsPedido_TamTIPO_REG.AsString = 'P' then
  begin
    if cdsParametrosCONTROLAR_PEDIDO_LIBERACAO.AsString = 'S' then
      cdsPedido_TamclQtd_Restante.AsFloat := StrToFloat(FormatFloat('0.000000',cdsPedido_TamQTD_LIBERADA.AsFloat))
    else
      cdsPedido_TamclQtd_Restante.AsFloat := StrToFloat(FormatFloat('0.000000',cdsPedido_TamQTD_RESTANTE.AsFloat));
    if cdsParametrosCONTROLAR_PEDIDO_LIBERACAO.AsString = 'S' then
      cdsPedido_TamclQtd_NaoLiberada.AsFloat := StrToFloat(FormatFloat('0.000000',cdsPedido_TamQTD_RESTANTE.AsFloat - cdsPedido_TamQTD_LIBERADA.AsFloat))
    else
      cdsPedido_TamclQtd_NaoLiberada.AsFloat := StrToFloat(FormatFloat('0.000000',0));
  end
  else
    cdsPedido_TamclQtd_Restante.AsFloat := StrToFloat(FormatFloat('0.000000',cdsPedido_TamQTD_RESTANTE.AsFloat));
end;

procedure TDMCadNotaFiscal.prc_Filtrar_Produto_Cliente(Somente_Filial: Boolean = False);
begin
  cdsProduto.Close;
  if (cdsParametrosUSA_PRODUTO_CLIENTE.AsString = 'S') and not(Somente_Filial) then
    sdsProduto.CommandText := ctProduto + ' AND ID_CLIENTE = ' + cdsNotaFiscalID_CLIENTE.AsString;
  if qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S' then
    sdsProduto.CommandText := ctProduto + ' AND FILIAL = ' + cdsNotaFiscalFILIAL.AsString;
  cdsProduto.Open;
end;

procedure TDMCadNotaFiscal.prc_Gravar_cdsHist_Senha;
var
  vItemAux: Integer;
  vCampoSenha: String;
  vAux: Integer;
begin    
  cdsHist_Senha.Close;
  sdsHist_Senha.CommandText := ctHist_Senha + ' WHERE ID = 0 ';
  cdsHist_Senha.Open;

  mSenha.First;
  while not mSenha.Eof do
  begin
    vAux := dmDatabase.ProximaSequencia('HIST_SENHA',0);
    cdsHist_Senha.Insert;
    cdsHist_SenhaID.AsInteger := vAux;
    cdsHist_SenhaID_DOC.AsInteger := cdsNotaFiscalID.AsInteger;
    cdsHist_SenhaITEM_DOC.AsInteger := mSenhaItem.AsInteger;
    cdsHist_SenhaNUM_DOC.AsInteger  := cdsNotaFiscalNUMNOTA.AsInteger;
    cdsHist_SenhaTIPO_ARQ.AsString := 'NOT';
    cdsHist_SenhaTIPO_DOC.AsString  := mSenhaTipo_Doc.AsString;
    cdsHist_SenhaTIPO_HIST.AsString := mSenhaTipo_Alt.AsString;
    cdsHist_SenhaSENHA.AsString     := mSenhaSenha.AsString;
    cdsHist_SenhaUSUARIO.AsString   := vUsuario;
    cdsHist_SenhaDATA.AsDateTime    := Date;
    cdsHist_SenhaHORA.AsDateTime    := Now;
    cdsHist_SenhaSENHA_PERTENCE_AO_USUARIO.AsString := mSenhaSenha_Pertence.AsString;
    cdsHist_Senha.Post;
    cdsHist_Senha.ApplyUpdates(0);
    mSenha.Delete;
  end;
end;

procedure TDMCadNotaFiscal.mPedidoAuxNewRecord(DataSet: TDataSet);
begin
  mPedidoAuxOBS_Nota.AsString := '';
  mPedidoAuxNum_OC.AsString   := '';
end;

procedure TDMCadNotaFiscal.Abrir_DuplicatasNota(ID: Integer);
begin
  cdsDuplicata.Close;
  sdsDuplicata.CommandText := 'SELECT * FROM DUPLICATA WHERE ID_NOTA = ' + IntToStr(ID);
  cdsDuplicata.Open;
end;

procedure TDMCadNotaFiscal.cdsDuplicataNewRecord(DataSet: TDataSet);
begin
  cdsDuplicataNGR.AsString      := 'N';
  cdsDuplicataAPROVADO.AsString := 'S';
  if (qParametros_FinUSA_NGR.AsString = 'S') and (cdsNotaFiscalSERIE.AsString = 'RNF') then
    cdsDuplicataNGR.AsString := 'S';
  if (qParametros_FinUSA_APROVA_DUP.AsString = 'S') and (cdsNotaFiscalTIPO_REG.AsString = 'NTE') then
    cdsDuplicataAPROVADO.AsString := 'N';
end;

procedure TDMCadNotaFiscal.prc_Atualiza_RecNF(ID: Integer);
var
  sds: TSQLDataSet;
  sds2: TSQLDataSet;
  vTipo_Fat: String;
begin
  sds  := TSQLDataSet.Create(nil);
  sds2 := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT N.ID, (SELECT COUNT(1) FROM notafiscal_itens I WHERE N.ID = I.ID AND I.rec_copiado IS NULL) TOT_NAO_FAT, '
                       + ' (SELECT COUNT(1) FROM notafiscal_itens I WHERE N.ID = I.ID) TOT_ITENS '
                       + ' FROM NOTAFISCAL N  WHERE N.ID = ' + IntToStr(ID);
    sds.Open;

    if sds.FieldByName('TOT_NAO_FAT').AsInteger <= 0 then
      vTipo_Fat := 'S'
    else
    if sds.FieldByName('TOT_NAO_FAT').AsInteger <> sds.FieldByName('TOT_ITENS').AsInteger then
      vTipo_Fat := 'P'
    else
      vTipo_Fat := 'N';

    sds2.SQLConnection := dmDatabase.scoDados;
    sds2.NoMetadata    := True;
    sds2.GetMetadata   := False;
    sds2.CommandText   := ' UPDATE NOTAFISCAL SET REC_COPIADO = ' + QuotedStr(vTipo_Fat)
                        + ' WHERE ID = ' + IntToStr(ID);
    sds2.ExecSQL();
  finally
    FreeAndNil(sds);
    FreeAndNil(sds2);
  end;
end;

end.



