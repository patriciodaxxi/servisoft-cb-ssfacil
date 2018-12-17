unit UDMCadPedido;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, DBXpress, Variants, RLPreviewForm, LogTypes, Dialogs, Math,
  frxExportMail, frxClass, frxExportPDF, frxDBSet, frxRich, UDMEstoque, Forms;

type
  TDMCadPedido = class(TDataModule)
    sdsPedido: TSQLDataSet;
    dspPedido: TDataSetProvider;
    cdsPedido: TClientDataSet;
    dsPedido: TDataSource;
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
    sdsPedido_Consulta: TSQLDataSet;
    dspPedido_Consulta: TDataSetProvider;
    cdsPedido_Consulta: TClientDataSet;
    dsPedido_Consulta: TDataSource;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    sdsUF: TSQLDataSet;
    dspUF: TDataSetProvider;
    cdsUF: TClientDataSet;
    dsUF: TDataSource;
    cdsUFUF: TStringField;
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
    cdsFilialUSARICMSSIMPLES: TStringField;
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
    sdsParametros: TSQLDataSet;
    dspParametros: TDataSetProvider;
    cdsParametros: TClientDataSet;
    cdsParametrosID: TIntegerField;
    cdsParametrosEMAILRESPONSAVELSISTEMA: TStringField;
    cdsParametrosTIPOLOGONFE: TStringField;
    cdsParametrosAPLICARDESCONTONOICMS: TStringField;
    cdsParametrosAPLICARDESCONTONOIPI: TStringField;
    cdsParametrosSOMARNOPROD_FRETE: TStringField;
    cdsParametrosSOMARNOPROD_OUTRASDESP: TStringField;
    cdsParametrosSOMARNOPROD_SEGURO: TStringField;
    cdsParametrosAJUSTELOGONFEAUTOMATICO: TStringField;
    cdsParametrosINFNUMNOTAMANUAL: TStringField;
    cdsParametrosOPCAO_DTENTREGAPEDIDO: TStringField;
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
    cdsTab_CSTICMSCOD_CST: TStringField;
    cdsVendedorPERC_COMISSAO: TFloatField;
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
    cdsContasNOME: TStringField;
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
    qVerificaNota: TSQLQuery;
    qVerificaNotaSERIE: TStringField;
    qVerificaNotaNUMNOTA: TIntegerField;
    qVerificaNotaID_CLIENTE: TIntegerField;
    qVerificaNotaID: TIntegerField;
    qCFOP_Variacao: TSQLQuery;
    qCFOP_VariacaoID: TIntegerField;
    qCFOP_VariacaoITEM: TIntegerField;
    qCFOP_VariacaoID_CSTICMS: TIntegerField;
    qCFOP_VariacaoID_CSTIPI: TIntegerField;
    dsPedido_Mestre: TDataSource;
    sdsPedido_Itens: TSQLDataSet;
    cdsPedido_Itens: TClientDataSet;
    dsPedido_Itens: TDataSource;
    sdsPedido_Desconto: TSQLDataSet;
    cdsPedido_Desconto: TClientDataSet;
    dsPedido_Desconto: TDataSource;
    sdsPedido_DescontoID: TIntegerField;
    sdsPedido_DescontoITEM: TIntegerField;
    sdsPedido_DescontoPERC_DESCONTO: TFloatField;
    sdsPedido_DescontoVLR_DESCONTO: TIntegerField;
    cdsPedido_DescontoID: TIntegerField;
    cdsPedido_DescontoITEM: TIntegerField;
    cdsPedido_DescontoPERC_DESCONTO: TFloatField;
    cdsPedido_DescontoVLR_DESCONTO: TIntegerField;
    sdsPedidoID: TIntegerField;
    sdsPedidoFILIAL: TIntegerField;
    sdsPedidoDTEMISSAO: TDateField;
    sdsPedidoPEDIDO_CLIENTE: TStringField;
    sdsPedidoID_CLIENTE: TIntegerField;
    sdsPedidoID_TRANSPORTADORA: TIntegerField;
    sdsPedidoID_REDESPACHO: TIntegerField;
    sdsPedidoID_CONDPGTO: TIntegerField;
    sdsPedidoID_VENDEDOR: TIntegerField;
    sdsPedidoID_CFOP: TIntegerField;
    sdsPedidoTIPO_FRETE: TStringField;
    sdsPedidoPERC_COMISSAO: TFloatField;
    sdsPedidoQTD: TFloatField;
    sdsPedidoQTD_RESTANTE: TFloatField;
    sdsPedidoQTD_CANCELADO: TFloatField;
    sdsPedidoQTD_FATURADO: TFloatField;
    sdsPedidoVLR_TOTAL: TFloatField;
    sdsPedidoVLR_DESCONTO: TFloatField;
    sdsPedidoCANCELADO: TStringField;
    sdsPedidoDOLAR: TStringField;
    sdsPedidoDTENTREGA: TDateField;
    sdsPedidoPERC_DESCONTO: TFloatField;
    sdsPedidoOBS: TMemoField;
    sdsPedidoVLR_FRETE: TFloatField;
    sdsPedidoBASE_ICMS: TFloatField;
    sdsPedidoVLR_ICMS: TFloatField;
    sdsPedidoBASE_ICMSTRANSF: TFloatField;
    sdsPedidoPERC_TRANSF: TFloatField;
    sdsPedidoVLR_TRANSF: TFloatField;
    sdsPedidoVLR_IPI: TFloatField;
    sdsPedidoBASE_ICMSSIMPLES: TFloatField;
    sdsPedidoVLR_ICMSSIMPLES: TFloatField;
    sdsPedidoPERC_ICMSSIMPLES: TFloatField;
    sdsPedidoBASE_ICMSSUBST: TFloatField;
    sdsPedidoVLR_ICMSSUBST: TFloatField;
    sdsPedidoID_CONFIG_CFOP: TIntegerField;
    sdsPedidoTIPO_DESCONTO: TStringField;
    cdsPedidosdsPedido_Desconto: TDataSetField;
    sdsPedidoLOCALENTREGA: TStringField;
    sdsPedidoVLR_ITENS: TFloatField;
    cdsPedidoID: TIntegerField;
    cdsPedidoFILIAL: TIntegerField;
    cdsPedidoDTEMISSAO: TDateField;
    cdsPedidoPEDIDO_CLIENTE: TStringField;
    cdsPedidoID_CLIENTE: TIntegerField;
    cdsPedidoID_TRANSPORTADORA: TIntegerField;
    cdsPedidoID_REDESPACHO: TIntegerField;
    cdsPedidoID_CONDPGTO: TIntegerField;
    cdsPedidoID_VENDEDOR: TIntegerField;
    cdsPedidoID_CFOP: TIntegerField;
    cdsPedidoTIPO_FRETE: TStringField;
    cdsPedidoPERC_COMISSAO: TFloatField;
    cdsPedidoQTD: TFloatField;
    cdsPedidoQTD_RESTANTE: TFloatField;
    cdsPedidoQTD_CANCELADO: TFloatField;
    cdsPedidoQTD_FATURADO: TFloatField;
    cdsPedidoVLR_TOTAL: TFloatField;
    cdsPedidoVLR_DESCONTO: TFloatField;
    cdsPedidoCANCELADO: TStringField;
    cdsPedidoDOLAR: TStringField;
    cdsPedidoDTENTREGA: TDateField;
    cdsPedidoPERC_DESCONTO: TFloatField;
    cdsPedidoOBS: TMemoField;
    cdsPedidoVLR_FRETE: TFloatField;
    cdsPedidoBASE_ICMS: TFloatField;
    cdsPedidoVLR_ICMS: TFloatField;
    cdsPedidoBASE_ICMSTRANSF: TFloatField;
    cdsPedidoPERC_TRANSF: TFloatField;
    cdsPedidoVLR_TRANSF: TFloatField;
    cdsPedidoVLR_IPI: TFloatField;
    cdsPedidoBASE_ICMSSIMPLES: TFloatField;
    cdsPedidoVLR_ICMSSIMPLES: TFloatField;
    cdsPedidoPERC_ICMSSIMPLES: TFloatField;
    cdsPedidoBASE_ICMSSUBST: TFloatField;
    cdsPedidoVLR_ICMSSUBST: TFloatField;
    cdsPedidoID_CONFIG_CFOP: TIntegerField;
    cdsPedidoTIPO_DESCONTO: TStringField;
    cdsPedidoLOCALENTREGA: TStringField;
    cdsPedidoVLR_ITENS: TFloatField;
    sdsPedidoPESOBRUTO: TFloatField;
    sdsPedidoPESOLIQUIDO: TFloatField;
    cdsPedidoPESOBRUTO: TFloatField;
    cdsPedidoPESOLIQUIDO: TFloatField;
    sdsPedidoCALCULARICMSSOBREIPI: TStringField;
    cdsPedidoCALCULARICMSSOBREIPI: TStringField;
    sdsPedidoID_REGIMETRIB: TIntegerField;
    cdsPedidoID_REGIMETRIB: TIntegerField;
    sdsPedidoSIMPLES_FILIAL: TStringField;
    cdsPedidoSIMPLES_FILIAL: TStringField;
    sdsPedidoDESCRICAO_DESC: TStringField;
    cdsPedidoDESCRICAO_DESC: TStringField;
    sdsPedido_ItensCODCFOP: TStringField;
    sdsPedido_ItensCOD_CST: TStringField;
    sdsPedido_ItensCOD_IPI: TStringField;
    cdsPedido_ItensCODCFOP: TStringField;
    cdsPedido_ItensCOD_CST: TStringField;
    cdsPedido_ItensCOD_IPI: TStringField;
    cdsPedido_ConsultaID: TIntegerField;
    cdsPedido_ConsultaFILIAL: TIntegerField;
    cdsPedido_ConsultaDTEMISSAO: TDateField;
    cdsPedido_ConsultaPEDIDO_CLIENTE: TStringField;
    cdsPedido_ConsultaID_CLIENTE: TIntegerField;
    cdsPedido_ConsultaID_VENDEDOR: TIntegerField;
    cdsPedido_ConsultaID_CFOP: TIntegerField;
    cdsPedido_ConsultaPERC_COMISSAO: TFloatField;
    cdsPedido_ConsultaQTD: TFloatField;
    cdsPedido_ConsultaVLR_TOTAL: TFloatField;
    cdsPedido_ConsultaVLR_ITENS: TFloatField;
    cdsPedido_ConsultaCANCELADO: TStringField;
    cdsPedido_ConsultaDTENTREGA: TDateField;
    sdsPedido_ItensID: TIntegerField;
    sdsPedido_ItensITEM: TIntegerField;
    sdsPedido_ItensID_PRODUTO: TIntegerField;
    sdsPedido_ItensTAMANHO: TStringField;
    sdsPedido_ItensQTD: TFloatField;
    sdsPedido_ItensQTD_FATURADO: TFloatField;
    sdsPedido_ItensQTD_RESTANTE: TFloatField;
    sdsPedido_ItensQTD_CANCELADO: TFloatField;
    sdsPedido_ItensVLR_DESCONTO: TFloatField;
    sdsPedido_ItensCANCELADO: TStringField;
    sdsPedido_ItensDTENTREGA: TDateField;
    sdsPedido_ItensFATURADO: TStringField;
    sdsPedido_ItensDTFATURADO: TDateField;
    sdsPedido_ItensCOD_PRODUTO_CLIENTE: TStringField;
    sdsPedido_ItensTIPO: TStringField;
    sdsPedido_ItensUNIDADE: TStringField;
    sdsPedido_ItensNUMOS: TStringField;
    sdsPedido_ItensPERC_DESCONTO: TFloatField;
    sdsPedido_ItensVLR_FRETE: TFloatField;
    sdsPedido_ItensBASE_ICMS: TFloatField;
    sdsPedido_ItensVLR_ICMS: TFloatField;
    sdsPedido_ItensBASE_ICMSTRANSF: TFloatField;
    sdsPedido_ItensPERC_TRANSF: TFloatField;
    sdsPedido_ItensVLR_TRANSF: TFloatField;
    sdsPedido_ItensVLR_IPI: TFloatField;
    sdsPedido_ItensBASE_ICMSSIMPLES: TFloatField;
    sdsPedido_ItensVLR_ICMSSIMPLES: TFloatField;
    sdsPedido_ItensPERC_ICMSSIMPLES: TFloatField;
    sdsPedido_ItensBASE_ICMSSUBST: TFloatField;
    sdsPedido_ItensVLR_ICMSSUBST: TFloatField;
    sdsPedido_ItensVLR_DESCONTORATEIO: TFloatField;
    sdsPedido_ItensID_CFOP: TIntegerField;
    sdsPedido_ItensID_CSTIPI: TIntegerField;
    sdsPedido_ItensID_CSTICMS: TIntegerField;
    sdsPedido_ItensPERC_ICMS: TFloatField;
    sdsPedido_ItensPERC_IPI: TFloatField;
    sdsPedido_ItensREFERENCIA: TStringField;
    sdsPedido_ItensNOMEPRODUTO: TStringField;
    sdsPedido_ItensOBS_COMPLEMENTAR: TStringField;
    sdsPedido_ItensCALCULARICMSSOBREIPI: TStringField;
    sdsPedido_ItensVLR_UNITARIO: TFloatField;
    sdsPedido_ItensID_CONFIG_CFOP: TIntegerField;
    cdsPedido_ItensID: TIntegerField;
    cdsPedido_ItensITEM: TIntegerField;
    cdsPedido_ItensID_PRODUTO: TIntegerField;
    cdsPedido_ItensTAMANHO: TStringField;
    cdsPedido_ItensQTD: TFloatField;
    cdsPedido_ItensQTD_FATURADO: TFloatField;
    cdsPedido_ItensQTD_RESTANTE: TFloatField;
    cdsPedido_ItensQTD_CANCELADO: TFloatField;
    cdsPedido_ItensVLR_DESCONTO: TFloatField;
    cdsPedido_ItensCANCELADO: TStringField;
    cdsPedido_ItensDTENTREGA: TDateField;
    cdsPedido_ItensFATURADO: TStringField;
    cdsPedido_ItensDTFATURADO: TDateField;
    cdsPedido_ItensCOD_PRODUTO_CLIENTE: TStringField;
    cdsPedido_ItensTIPO: TStringField;
    cdsPedido_ItensUNIDADE: TStringField;
    cdsPedido_ItensNUMOS: TStringField;
    cdsPedido_ItensPERC_DESCONTO: TFloatField;
    cdsPedido_ItensVLR_FRETE: TFloatField;
    cdsPedido_ItensBASE_ICMS: TFloatField;
    cdsPedido_ItensVLR_ICMS: TFloatField;
    cdsPedido_ItensBASE_ICMSTRANSF: TFloatField;
    cdsPedido_ItensPERC_TRANSF: TFloatField;
    cdsPedido_ItensVLR_TRANSF: TFloatField;
    cdsPedido_ItensVLR_IPI: TFloatField;
    cdsPedido_ItensBASE_ICMSSIMPLES: TFloatField;
    cdsPedido_ItensVLR_ICMSSIMPLES: TFloatField;
    cdsPedido_ItensPERC_ICMSSIMPLES: TFloatField;
    cdsPedido_ItensBASE_ICMSSUBST: TFloatField;
    cdsPedido_ItensVLR_ICMSSUBST: TFloatField;
    cdsPedido_ItensVLR_DESCONTORATEIO: TFloatField;
    cdsPedido_ItensID_CFOP: TIntegerField;
    cdsPedido_ItensID_CSTIPI: TIntegerField;
    cdsPedido_ItensID_CSTICMS: TIntegerField;
    cdsPedido_ItensPERC_ICMS: TFloatField;
    cdsPedido_ItensPERC_IPI: TFloatField;
    cdsPedido_ItensREFERENCIA: TStringField;
    cdsPedido_ItensNOMEPRODUTO: TStringField;
    cdsPedido_ItensOBS_COMPLEMENTAR: TStringField;
    cdsPedido_ItensCALCULARICMSSOBREIPI: TStringField;
    cdsPedido_ItensVLR_UNITARIO: TFloatField;
    cdsPedido_ItensID_CONFIG_CFOP: TIntegerField;
    cdsPedidosdsPedido_Itens: TDataSetField;
    sdsPedido_ItensVLR_TOTAL: TFloatField;
    cdsPedido_ItensVLR_TOTAL: TFloatField;
    sdsPedidoImp: TSQLDataSet;
    dspPedidoImp: TDataSetProvider;
    cdsPedidoImp: TClientDataSet;
    dsPedidoImp: TDataSource;
    cdsPedidoImpID: TIntegerField;
    cdsPedidoImpFILIAL: TIntegerField;
    cdsPedidoImpDTEMISSAO: TDateField;
    cdsPedidoImpPEDIDO_CLIENTE: TStringField;
    cdsPedidoImpID_CLIENTE: TIntegerField;
    cdsPedidoImpID_TRANSPORTADORA: TIntegerField;
    cdsPedidoImpID_REDESPACHO: TIntegerField;
    cdsPedidoImpID_CONDPGTO: TIntegerField;
    cdsPedidoImpID_VENDEDOR: TIntegerField;
    cdsPedidoImpID_CFOP: TIntegerField;
    cdsPedidoImpTIPO_FRETE: TStringField;
    cdsPedidoImpPERC_COMISSAO: TFloatField;
    cdsPedidoImpQTD: TFloatField;
    cdsPedidoImpQTD_RESTANTE: TFloatField;
    cdsPedidoImpQTD_CANCELADO: TFloatField;
    cdsPedidoImpQTD_FATURADO: TFloatField;
    cdsPedidoImpVLR_TOTAL: TFloatField;
    cdsPedidoImpVLR_ITENS: TFloatField;
    cdsPedidoImpVLR_DESCONTO: TFloatField;
    cdsPedidoImpCANCELADO: TStringField;
    cdsPedidoImpDOLAR: TStringField;
    cdsPedidoImpDTENTREGA: TDateField;
    cdsPedidoImpPERC_DESCONTO: TFloatField;
    cdsPedidoImpOBS: TMemoField;
    cdsPedidoImpVLR_FRETE: TFloatField;
    cdsPedidoImpBASE_ICMS: TFloatField;
    cdsPedidoImpVLR_ICMS: TFloatField;
    cdsPedidoImpBASE_ICMSTRANSF: TFloatField;
    cdsPedidoImpPERC_TRANSF: TFloatField;
    cdsPedidoImpVLR_TRANSF: TFloatField;
    cdsPedidoImpVLR_IPI: TFloatField;
    cdsPedidoImpBASE_ICMSSIMPLES: TFloatField;
    cdsPedidoImpVLR_ICMSSIMPLES: TFloatField;
    cdsPedidoImpPERC_ICMSSIMPLES: TFloatField;
    cdsPedidoImpBASE_ICMSSUBST: TFloatField;
    cdsPedidoImpVLR_ICMSSUBST: TFloatField;
    cdsPedidoImpID_CONFIG_CFOP: TIntegerField;
    cdsPedidoImpTIPO_DESCONTO: TStringField;
    cdsPedidoImpLOCALENTREGA: TStringField;
    cdsPedidoImpPESOBRUTO: TFloatField;
    cdsPedidoImpPESOLIQUIDO: TFloatField;
    cdsPedidoImpCALCULARICMSSOBREIPI: TStringField;
    cdsPedidoImpID_REGIMETRIB: TIntegerField;
    cdsPedidoImpSIMPLES_FILIAL: TStringField;
    cdsPedidoImpDESCRICAO_DESC: TStringField;
    cdsPedidoImpNOME_CLI: TStringField;
    cdsPedidoImpEND_CLIENTE: TStringField;
    cdsPedidoImpNUM_END_CLIENTE: TStringField;
    cdsPedidoImpBAIRRO_CLIENTE: TStringField;
    cdsPedidoImpCIDADE_CLIENTE: TStringField;
    cdsPedidoImpUF: TStringField;
    cdsPedidoImpDDD_CLIENTE: TIntegerField;
    cdsPedidoImpFONE_CLIENTE: TStringField;
    cdsPedidoImpDDD_FAX_CLIENTE: TIntegerField;
    cdsPedidoImpFAX_CLIENTE: TStringField;
    cdsPedidoImpCNPJ_CPF_CLIENTE: TStringField;
    cdsPedidoImpINSCR_EST_CLIENTE: TStringField;
    cdsPedidoImpCEP_CLIENTE: TStringField;
    cdsPedidoImpEMAIL_NFE_CLIENTE: TStringField;
    cdsPedidoImpNOMECLIENT: TStringField;
    cdsPedidoImpENDERECO_ENT: TStringField;
    cdsPedidoImpNUM_END_ENT: TStringField;
    cdsPedidoImpBAIRRO_ENT: TStringField;
    cdsPedidoImpCIDADE_ENT: TStringField;
    cdsPedidoImpUF_ENT: TStringField;
    cdsPedidoImpDDD_ENT: TIntegerField;
    cdsPedidoImpFONE_ENT: TStringField;
    cdsPedidoImpCNPJ_CPF_ENT: TStringField;
    cdsPedidoImpINSC_EST_ENT: TStringField;
    cdsPedidoImpCEP_ENT: TStringField;
    cdsPedidoImpNOME_FILIAL: TStringField;
    cdsPedidoImpEND_FILIAL: TStringField;
    cdsPedidoImpBAIRRO_FILIAL: TStringField;
    cdsPedidoImpCIDADE_FILIAL: TStringField;
    cdsPedidoImpDDD_FILIAL: TIntegerField;
    cdsPedidoImpFONE_FILIAL: TStringField;
    cdsPedidoImpCEP_FILIAL: TStringField;
    cdsPedidoImpUF_FILIAL: TStringField;
    cdsPedidoImpCNPJ_CPF_FILIAL: TStringField;
    cdsPedidoImpINSCR_EST_FILIAL: TStringField;
    cdsPedidoImpNOME_TRA: TStringField;
    cdsPedidoImpEND_TRA: TStringField;
    cdsPedidoImpNUM_END_TRA: TStringField;
    cdsPedidoImpBAIRRO_TRA: TStringField;
    cdsPedidoImpCIDADE_TRA: TStringField;
    cdsPedidoImpUF_TRA: TStringField;
    cdsPedidoImpDDD_TRA: TIntegerField;
    cdsPedidoImpFONE_TRA: TStringField;
    cdsPedidoImpDDD_FAX_TRA: TIntegerField;
    cdsPedidoImpFAX_TRA: TStringField;
    cdsPedidoImpCNPJ_CPF_TRA: TStringField;
    cdsPedidoImpINSCR_EST_TRA: TStringField;
    cdsPedidoImpCEP_TRA: TStringField;
    sdsPedidoImp_Itens: TSQLDataSet;
    cdsPedidoImp_Itens: TClientDataSet;
    dsPedidoImp_Itens: TDataSource;
    dspPedidoImp_Itens: TDataSetProvider;
    cdsPedidoImpNOME_RED: TStringField;
    cdsPedidoImpNOME_CONDPGTO: TStringField;
    cdsPedidoImpNUM_END_FILIAL: TStringField;
    cdsPedidoImpENDLOGO: TStringField;
    sdsPedido_ItensQTD_AFATURAR: TFloatField;
    cdsPedido_ItensQTD_AFATURAR: TFloatField;
    cdsParametrosVERSAO_BANCO: TIntegerField;
    cdsParametrosATUALIZAR_PRECO: TStringField;
    cdsParametrosUSA_VENDEDOR: TStringField;
    cdsParametrosUSA_CONSUMO: TStringField;
    sdsPedidoIMP_OC_NOTA: TStringField;
    cdsPedidoIMP_OC_NOTA: TStringField;
    sdsPedidoNOME_CLIENTE: TStringField;
    sdsPedidoTIPO_REG: TStringField;
    sdsPedidoVALIDADE: TStringField;
    sdsPedidoNUM_ORCAMENTO: TIntegerField;
    sdsPedidoNUM_PEDIDO: TIntegerField;
    cdsPedidoNOME_CLIENTE: TStringField;
    cdsPedidoTIPO_REG: TStringField;
    cdsPedidoVALIDADE: TStringField;
    cdsPedidoNUM_ORCAMENTO: TIntegerField;
    cdsPedidoNUM_PEDIDO: TIntegerField;
    cdsPedido_ConsultaNOME_CLIENTE: TStringField;
    cdsPedido_ConsultaTIPO_REG: TStringField;
    cdsPedido_ConsultaVALIDADE: TStringField;
    cdsPedido_ConsultaNUM_ORCAMENTO: TIntegerField;
    cdsPedido_ConsultaNUM_PEDIDO: TIntegerField;
    cdsPedido_ConsultaNOMECLIENTE_CAD: TStringField;
    cdsPedidoImpIMP_OC_NOTA: TStringField;
    cdsPedidoImpNOME_CLIENTE: TStringField;
    cdsPedidoImpTIPO_REG: TStringField;
    cdsPedidoImpVALIDADE: TStringField;
    cdsPedidoImpNUM_ORCAMENTO: TIntegerField;
    cdsPedidoImpNUM_PEDIDO: TIntegerField;
    cdsPedido_ConsultaFANTASIA: TStringField;
    sdsPedidoID_OPERACAO_NOTA: TIntegerField;
    cdsPedidoID_OPERACAO_NOTA: TIntegerField;
    sdsOperacao_Nota: TSQLDataSet;
    dspOperacao_Nota: TDataSetProvider;
    cdsOperacao_Nota: TClientDataSet;
    cdsOperacao_NotaID: TIntegerField;
    cdsOperacao_NotaNOME: TStringField;
    cdsOperacao_NotaPEDIR_FINALIDADE: TStringField;
    dsOperacao_Nota: TDataSource;
    sdsPedidoFINALIDADE: TStringField;
    cdsPedidoFINALIDADE: TStringField;
    sdsCFOP: TSQLDataSet;
    dspCFOP: TDataSetProvider;
    cdsCFOP: TClientDataSet;
    cdsCFOPID: TIntegerField;
    cdsCFOPCODCFOP: TStringField;
    cdsCFOPNOME: TStringField;
    cdsCFOPENTRADASAIDA: TStringField;
    cdsCFOPGERAR_IPI: TStringField;
    cdsCFOPGERAR_ICMS: TStringField;
    cdsCFOPGERAR_DUPLICATA: TStringField;
    cdsCFOPSOMAR_VLRTOTALPRODUTO: TStringField;
    cdsCFOPNOME_INTERNO: TStringField;
    cdsCFOPID_CSTICMS: TIntegerField;
    cdsCFOPID_CSTIPI: TIntegerField;
    cdsCFOPCOPIARNOTATRIANGULAR: TStringField;
    cdsCFOPID_PIS: TIntegerField;
    cdsCFOPID_COFINS: TIntegerField;
    cdsCFOPTIPO_PIS: TStringField;
    cdsCFOPTIPO_COFINS: TStringField;
    cdsCFOPGERAR_ICMS_SIMPLES: TStringField;
    cdsCFOPTIPO_EMPRESA: TStringField;
    cdsCFOPSUBSTITUICAO_TRIB: TStringField;
    cdsCFOPMVA: TStringField;
    cdsCFOPPERC_COFINS: TFloatField;
    cdsCFOPPERC_PIS: TFloatField;
    cdsCFOPsdsCFOP_Variacao: TDataSetField;
    cdsCFOPMAOOBRA: TStringField;
    dsCFOP: TDataSource;
    sdsCFOP_Variacao: TSQLDataSet;
    cdsCFOP_Variacao: TClientDataSet;
    cdsCFOP_VariacaoID: TIntegerField;
    cdsCFOP_VariacaoITEM: TIntegerField;
    cdsCFOP_VariacaoID_CSTICMS: TIntegerField;
    cdsCFOP_VariacaoID_CSTIPI: TIntegerField;
    cdsCFOP_VariacaoID_PIS: TIntegerField;
    cdsCFOP_VariacaoID_COFINS: TIntegerField;
    cdsCFOP_VariacaoID_OPERACAO_NOTA: TIntegerField;
    cdsCFOP_VariacaoNOME: TStringField;
    dsCFOP_Variacao: TDataSource;
    dsCFOP_Mestre: TDataSource;
    sdsPedido_ItensID_VARIACAO: TIntegerField;
    cdsPedido_ItensID_VARIACAO: TIntegerField;
    cdsProdutoPERC_REDUCAOICMS: TFloatField;
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
    cdsPedidoImpNOME_VENDEDOR: TStringField;
    sdsPedido_ItensOBS: TMemoField;
    sdsPedido_ItensPERC_TRIBICMS: TFloatField;
    cdsPedido_ItensOBS: TMemoField;
    cdsPedido_ItensPERC_TRIBICMS: TFloatField;
    sdsPedido_ItensID_ATELIER: TIntegerField;
    sdsPedido_ItensVLR_UNITARIO_ATELIER: TFloatField;
    sdsPedido_ItensVLR_TOTAL_ATELIER: TFloatField;
    sdsPedido_ItensDT_ENVIO_ATELIER: TDateField;
    sdsPedido_ItensDT_RETORNO_ATELIER: TDateField;
    cdsPedido_ItensID_ATELIER: TIntegerField;
    cdsPedido_ItensVLR_UNITARIO_ATELIER: TFloatField;
    cdsPedido_ItensVLR_TOTAL_ATELIER: TFloatField;
    cdsPedido_ItensDT_ENVIO_ATELIER: TDateField;
    cdsPedido_ItensDT_RETORNO_ATELIER: TDateField;
    sdsAtelier: TSQLDataSet;
    dspAtelier: TDataSetProvider;
    cdsAtelier: TClientDataSet;
    dsAtelier: TDataSource;
    cdsAtelierCODIGO: TIntegerField;
    cdsAtelierNOME: TStringField;
    cdsParametrosCONFECCAO: TStringField;
    sdsPedidoVLR_ADIANTAMENTO: TFloatField;
    cdsPedidoVLR_ADIANTAMENTO: TFloatField;
    cdsPedidoImpVLR_ADIANTAMENTO: TFloatField;
    cdsParametrosUSA_COD_BARRAS: TStringField;
    cdsProdutoCOD_BARRA: TStringField;
    cdsVendedorPERC_COMISSAO_VEND: TFloatField;
    cdsParametrosUSA_ID_PRODUTO: TStringField;
    cdsParametrosUSA_TAB_PRECO: TStringField;
    qVerifica_OC: TSQLQuery;
    qVerifica_OCPEDIDO_CLIENTE: TStringField;
    qVerifica_OCID_CLIENTE: TIntegerField;
    qVerifica_OCID: TIntegerField;
    qVerifica_OCNUM_PEDIDO: TIntegerField;
    cdsParametrosPERMITE_MESMA_OC: TStringField;
    sdsPrc_Atualiza_Status_Ped: TSQLDataSet;
    sdsPedidoFATURADO: TStringField;
    cdsPedidoFATURADO: TStringField;
    cdsPedido_ConsultaFATURADO: TStringField;
    sdsPedidoID_SOLICITANTE: TIntegerField;
    cdsPedidoID_SOLICITANTE: TIntegerField;
    sdsFuncionario: TSQLDataSet;
    dspFuncionario: TDataSetProvider;
    cdsFuncionario: TClientDataSet;
    dsFuncionario: TDataSource;
    cdsFuncionarioCODIGO: TIntegerField;
    cdsFuncionarioNOME: TStringField;
    sdsObs_Aux: TSQLDataSet;
    dspObs_Aux: TDataSetProvider;
    cdsObs_Aux: TClientDataSet;
    cdsObs_AuxID: TIntegerField;
    cdsObs_AuxNOME: TStringField;
    cdsObs_AuxOBS: TStringField;
    dsObs_Aux: TDataSource;
    cdsPedidoImpEMAIL_COMPRAS: TStringField;
    cdsPedidoImpCONTATO_COMPRAS: TStringField;
    cdsParametrosID_CFOP_REQ: TIntegerField;
    cdsParametrosID_CFOP_REQ2: TIntegerField;
    sdsPedido_Cli: TSQLDataSet;
    dsPedido_Item_Mestre: TDataSource;
    sdsPedido_CliID: TIntegerField;
    sdsPedido_CliITEM: TIntegerField;
    sdsPedido_CliQTD: TFloatField;
    cdsPedido_Cli: TClientDataSet;
    dsPedido_Cli: TDataSource;
    sdsProjeto: TSQLDataSet;
    dspProjeto: TDataSetProvider;
    cdsProjeto: TClientDataSet;
    dsProjeto: TDataSource;
    sdsPedidoID_PROJETO: TIntegerField;
    cdsPedidoID_PROJETO: TIntegerField;
    cdsParametrosUSA_PROJETO_OC: TStringField;
    sdsPedidoImp_Cli: TSQLDataSet;
    cdsPedidoImp_Cli: TClientDataSet;
    dsPedidoImp_Cli: TDataSource;
    dsPedidoImp_Itens_Mestre: TDataSource;
    sdsPedidoImp_CliID: TIntegerField;
    sdsPedidoImp_CliITEM: TIntegerField;
    sdsPedidoImp_CliQTD: TFloatField;
    cdsPedidoImp_CliID: TIntegerField;
    cdsPedidoImp_CliITEM: TIntegerField;
    cdsPedidoImp_CliQTD: TFloatField;
    mOrcamento_Itens: TClientDataSet;
    dsmOrcamento_Itens: TDataSource;
    mOrcamento_ItensID_Produto: TIntegerField;
    mOrcamento_ItensNome_Produto: TStringField;
    mOrcamento_ItensQtd: TFloatField;
    mOrcamento_ItensVlr_Unitario: TFloatField;
    mOrcamento_ItensVlr_Total: TFloatField;
    mOrcamento_ItensAprovar: TBooleanField;
    mOrcamento_ItensReprovar: TBooleanField;
    sdsOrcamento: TSQLDataSet;
    dspOrcamento: TDataSetProvider;
    cdsOrcamento: TClientDataSet;
    dsOrcamento: TDataSource;
    cdsOrcamentoID: TIntegerField;
    cdsOrcamentoFILIAL: TIntegerField;
    cdsOrcamentoDTEMISSAO: TDateField;
    cdsOrcamentoPEDIDO_CLIENTE: TStringField;
    cdsOrcamentoID_CLIENTE: TIntegerField;
    cdsOrcamentoID_TRANSPORTADORA: TIntegerField;
    cdsOrcamentoID_REDESPACHO: TIntegerField;
    cdsOrcamentoID_CONDPGTO: TIntegerField;
    cdsOrcamentoID_VENDEDOR: TIntegerField;
    cdsOrcamentoID_CFOP: TIntegerField;
    cdsOrcamentoTIPO_FRETE: TStringField;
    cdsOrcamentoPERC_COMISSAO: TFloatField;
    cdsOrcamentoQTD: TFloatField;
    cdsOrcamentoQTD_RESTANTE: TFloatField;
    cdsOrcamentoQTD_CANCELADO: TFloatField;
    cdsOrcamentoQTD_FATURADO: TFloatField;
    cdsOrcamentoVLR_TOTAL: TFloatField;
    cdsOrcamentoVLR_ITENS: TFloatField;
    cdsOrcamentoVLR_DESCONTO: TFloatField;
    cdsOrcamentoCANCELADO: TStringField;
    cdsOrcamentoDOLAR: TStringField;
    cdsOrcamentoDTENTREGA: TDateField;
    cdsOrcamentoPERC_DESCONTO: TFloatField;
    cdsOrcamentoOBS: TMemoField;
    cdsOrcamentoVLR_FRETE: TFloatField;
    cdsOrcamentoBASE_ICMS: TFloatField;
    cdsOrcamentoVLR_ICMS: TFloatField;
    cdsOrcamentoBASE_ICMSTRANSF: TFloatField;
    cdsOrcamentoPERC_TRANSF: TFloatField;
    cdsOrcamentoVLR_TRANSF: TFloatField;
    cdsOrcamentoVLR_IPI: TFloatField;
    cdsOrcamentoBASE_ICMSSIMPLES: TFloatField;
    cdsOrcamentoVLR_ICMSSIMPLES: TFloatField;
    cdsOrcamentoPERC_ICMSSIMPLES: TFloatField;
    cdsOrcamentoBASE_ICMSSUBST: TFloatField;
    cdsOrcamentoVLR_ICMSSUBST: TFloatField;
    cdsOrcamentoID_CONFIG_CFOP: TIntegerField;
    cdsOrcamentoTIPO_DESCONTO: TStringField;
    cdsOrcamentoLOCALENTREGA: TStringField;
    cdsOrcamentoPESOBRUTO: TFloatField;
    cdsOrcamentoPESOLIQUIDO: TFloatField;
    cdsOrcamentoCALCULARICMSSOBREIPI: TStringField;
    cdsOrcamentoID_REGIMETRIB: TIntegerField;
    cdsOrcamentoSIMPLES_FILIAL: TStringField;
    cdsOrcamentoDESCRICAO_DESC: TStringField;
    cdsOrcamentoIMP_OC_NOTA: TStringField;
    cdsOrcamentoNOME_CLIENTE: TStringField;
    cdsOrcamentoTIPO_REG: TStringField;
    cdsOrcamentoVALIDADE: TStringField;
    cdsOrcamentoNUM_ORCAMENTO: TIntegerField;
    cdsOrcamentoNUM_PEDIDO: TIntegerField;
    cdsOrcamentoID_OPERACAO_NOTA: TIntegerField;
    cdsOrcamentoFINALIDADE: TStringField;
    cdsOrcamentoVLR_ADIANTAMENTO: TFloatField;
    cdsOrcamentoFATURADO: TStringField;
    cdsOrcamentoID_SOLICITANTE: TIntegerField;
    cdsOrcamentoID_PROJETO: TIntegerField;
    cdsOrcamentoAPROVADO_ORC: TStringField;
    sdsOrcamento_Itens: TSQLDataSet;
    dspOrcamento_Itens: TDataSetProvider;
    cdsOrcamento_Itens: TClientDataSet;
    dsOrcamento_Itens: TDataSource;
    cdsOrcamento_ItensID: TIntegerField;
    cdsOrcamento_ItensITEM: TIntegerField;
    cdsOrcamento_ItensID_PRODUTO: TIntegerField;
    cdsOrcamento_ItensTAMANHO: TStringField;
    cdsOrcamento_ItensQTD: TFloatField;
    cdsOrcamento_ItensQTD_FATURADO: TFloatField;
    cdsOrcamento_ItensQTD_RESTANTE: TFloatField;
    cdsOrcamento_ItensQTD_CANCELADO: TFloatField;
    cdsOrcamento_ItensVLR_DESCONTO: TFloatField;
    cdsOrcamento_ItensCANCELADO: TStringField;
    cdsOrcamento_ItensDTENTREGA: TDateField;
    cdsOrcamento_ItensFATURADO: TStringField;
    cdsOrcamento_ItensDTFATURADO: TDateField;
    cdsOrcamento_ItensCOD_PRODUTO_CLIENTE: TStringField;
    cdsOrcamento_ItensTIPO: TStringField;
    cdsOrcamento_ItensUNIDADE: TStringField;
    cdsOrcamento_ItensNUMOS: TStringField;
    cdsOrcamento_ItensPERC_DESCONTO: TFloatField;
    cdsOrcamento_ItensVLR_FRETE: TFloatField;
    cdsOrcamento_ItensBASE_ICMS: TFloatField;
    cdsOrcamento_ItensVLR_ICMS: TFloatField;
    cdsOrcamento_ItensBASE_ICMSTRANSF: TFloatField;
    cdsOrcamento_ItensPERC_TRANSF: TFloatField;
    cdsOrcamento_ItensVLR_TRANSF: TFloatField;
    cdsOrcamento_ItensVLR_IPI: TFloatField;
    cdsOrcamento_ItensBASE_ICMSSIMPLES: TFloatField;
    cdsOrcamento_ItensVLR_ICMSSIMPLES: TFloatField;
    cdsOrcamento_ItensPERC_ICMSSIMPLES: TFloatField;
    cdsOrcamento_ItensBASE_ICMSSUBST: TFloatField;
    cdsOrcamento_ItensVLR_ICMSSUBST: TFloatField;
    cdsOrcamento_ItensVLR_DESCONTORATEIO: TFloatField;
    cdsOrcamento_ItensID_CFOP: TIntegerField;
    cdsOrcamento_ItensID_CSTIPI: TIntegerField;
    cdsOrcamento_ItensID_CSTICMS: TIntegerField;
    cdsOrcamento_ItensPERC_ICMS: TFloatField;
    cdsOrcamento_ItensPERC_IPI: TFloatField;
    cdsOrcamento_ItensREFERENCIA: TStringField;
    cdsOrcamento_ItensNOMEPRODUTO: TStringField;
    cdsOrcamento_ItensOBS_COMPLEMENTAR: TStringField;
    cdsOrcamento_ItensCALCULARICMSSOBREIPI: TStringField;
    cdsOrcamento_ItensVLR_UNITARIO: TFloatField;
    cdsOrcamento_ItensID_CONFIG_CFOP: TIntegerField;
    cdsOrcamento_ItensVLR_TOTAL: TFloatField;
    cdsOrcamento_ItensQTD_AFATURAR: TFloatField;
    cdsOrcamento_ItensID_VARIACAO: TIntegerField;
    cdsOrcamento_ItensOBS: TMemoField;
    cdsOrcamento_ItensPERC_TRIBICMS: TFloatField;
    cdsOrcamento_ItensID_ATELIER: TIntegerField;
    cdsOrcamento_ItensVLR_UNITARIO_ATELIER: TFloatField;
    cdsOrcamento_ItensVLR_TOTAL_ATELIER: TFloatField;
    cdsOrcamento_ItensDT_ENVIO_ATELIER: TDateField;
    cdsOrcamento_ItensDT_RETORNO_ATELIER: TDateField;
    cdsOrcamento_ItensVLR_PAGTO_ATELIER: TFloatField;
    cdsOrcamento_ItensDT_PAGTO_ATELIER: TDateField;
    cdsOrcamento_ItensAPROVADO_ORC: TStringField;
    cdsOrcamento_ItensMOTIVO_NAO_APROV: TMemoField;
    cdsOrcamento_ItensDTAPROVADO_NAO: TDateField;
    qProximoItem: TSQLQuery;
    qProximoItemITEM: TIntegerField;
    mOrcamento_ItensDtEntrega: TDateField;
    sdsPedido_ItensVLR_PAGTO_ATELIER: TFloatField;
    sdsPedido_ItensDT_PAGTO_ATELIER: TDateField;
    sdsPedido_ItensAPROVADO_ORC: TStringField;
    sdsPedido_ItensMOTIVO_NAO_APROV: TMemoField;
    sdsPedido_ItensDTAPROVADO_NAO: TDateField;
    sdsPedido_ItensID_ORCAMENTO: TIntegerField;
    sdsPedido_ItensITEM_ORCAMENTO: TIntegerField;
    cdsPedido_ItensVLR_PAGTO_ATELIER: TFloatField;
    cdsPedido_ItensDT_PAGTO_ATELIER: TDateField;
    cdsPedido_ItensAPROVADO_ORC: TStringField;
    cdsPedido_ItensMOTIVO_NAO_APROV: TMemoField;
    cdsPedido_ItensDTAPROVADO_NAO: TDateField;
    cdsPedido_ItensID_ORCAMENTO: TIntegerField;
    cdsPedido_ItensITEM_ORCAMENTO: TIntegerField;
    cdsOrcamento_ItensID_ORCAMENTO: TIntegerField;
    cdsOrcamento_ItensITEM_ORCAMENTO: TIntegerField;
    mOrcamento_ItensCopiado: TStringField;
    qSituacao_Orc: TSQLQuery;
    cdsPedido_ConsultaAPROVADO_ORC: TStringField;
    qSituacao_OrcNAO_APROVADO: TIntegerField;
    qSituacao_OrcAPROVADO: TIntegerField;
    qSituacao_OrcPENDENTE: TIntegerField;
    sdsPedido_CliID_CENTROCUSTO: TIntegerField;
    sdsPedido_CliNOME_CENTROCUSTO: TStringField;
    cdsPedido_ItenssdsPedido_Cli: TDataSetField;
    cdsPedido_CliID: TIntegerField;
    cdsPedido_CliITEM: TIntegerField;
    cdsPedido_CliQTD: TFloatField;
    cdsPedido_CliID_CENTROCUSTO: TIntegerField;
    cdsPedido_CliNOME_CENTROCUSTO: TStringField;
    sdsPedidoImp_CliID_CENTROCUSTO: TIntegerField;
    sdsPedidoImp_CliNOME_CENTROCUSTO: TStringField;
    cdsPedidoImp_CliID_CENTROCUSTO: TIntegerField;
    cdsPedidoImp_CliNOME_CENTROCUSTO: TStringField;
    cdsProjetoID: TIntegerField;
    cdsProjetoNOME: TStringField;
    cdsProjetoCODIGO: TStringField;
    sdsPedido_ItensQTD_LIBERADA: TFloatField;
    sdsPedido_ItensQTD_PRODUZIDA: TFloatField;
    cdsPedido_ItensQTD_LIBERADA: TFloatField;
    cdsPedido_ItensQTD_PRODUZIDA: TFloatField;
    cdsParametrosUSA_GRADE: TStringField;
    cdsParametrosTIPO_GRADE_REG: TStringField;
    cdsProdutoUSA_GRADE: TStringField;
    cdsProdutoID_GRADE: TIntegerField;
    sdsPedidoImp_Tam: TSQLDataSet;
    cdsPedidoImp_Tam: TClientDataSet;
    dsPedidoImp_Tam: TDataSource;
    dspPedidoImp_Tam: TDataSetProvider;
    cdsPedidoImp_TamID: TIntegerField;
    cdsPedidoImp_TamITEM: TIntegerField;
    cdsPedidoImp_TamTAMANHO: TStringField;
    cdsPedidoImp_TamQTD: TFMTBCDField;
    cdsPedidoImp_TamQTD_FATURADO: TFMTBCDField;
    cdsPedidoImp_TamQTD_RESTANTE: TFMTBCDField;
    cdsPedidoImp_TamQTD_CANCELADO: TFMTBCDField;
    sdsPedido_Material: TSQLDataSet;
    sdsPedido_MaterialID: TIntegerField;
    sdsPedido_MaterialITEM: TIntegerField;
    sdsPedido_MaterialITEM_MAT: TIntegerField;
    sdsPedido_MaterialID_PRODUTO: TIntegerField;
    sdsPedido_MaterialQTD_CONSUMO: TFloatField;
    sdsPedido_MaterialVLR_UNITARIO: TFloatField;
    sdsPedido_MaterialUNIDADE: TStringField;
    cdsPedido_ItenssdsPedido_Material: TDataSetField;
    cdsPedido_Material: TClientDataSet;
    cdsPedido_MaterialID: TIntegerField;
    cdsPedido_MaterialITEM: TIntegerField;
    cdsPedido_MaterialITEM_MAT: TIntegerField;
    cdsPedido_MaterialID_PRODUTO: TIntegerField;
    cdsPedido_MaterialQTD_CONSUMO: TFloatField;
    cdsPedido_MaterialVLR_UNITARIO: TFloatField;
    cdsPedido_MaterialUNIDADE: TStringField;
    dsPedido_Material: TDataSource;
    sdsPedido_MaterialNOME_PRODUTO: TStringField;
    sdsPedido_MaterialREFERENCIA: TStringField;
    cdsPedido_MaterialNOME_PRODUTO: TStringField;
    cdsPedido_MaterialREFERENCIA: TStringField;
    sdsMaterial: TSQLDataSet;
    dspMaterial: TDataSetProvider;
    cdsMaterial: TClientDataSet;
    dsMaterial: TDataSource;
    cdsMaterialID: TIntegerField;
    cdsMaterialNOME: TStringField;
    cdsMaterialPRECO_CUSTO: TFloatField;
    cdsMaterialPRECO_VENDA: TFloatField;
    cdsMaterialREFERENCIA: TStringField;
    sdsPedido_MaterialVLR_TOTAL: TFloatField;
    cdsPedido_MaterialVLR_TOTAL: TFloatField;
    cdsMaterialUNIDADE: TStringField;
    cdsParametrosINFORMA_MAT_PEDIDO: TStringField;
    mItensImp: TClientDataSet;
    mItensImpID_Produto: TIntegerField;
    mItensImpNome_Produto: TStringField;
    mItensImpQtd: TFloatField;
    mItensImpVlr_Unitario: TFloatField;
    mItensImpVlr_Total: TFloatField;
    mItensImpUnidade: TStringField;
    mItensImpNumOS: TStringField;
    mItensImpDtEntrega: TDateField;
    mItensImpVlr_Ipi: TFloatField;
    mItensImpReferencia: TStringField;
    dsmItensImp: TDataSource;
    mItensImp_Tam: TClientDataSet;
    mItensImp_TamItem: TIntegerField;
    mItensImp_TamTamanho: TStringField;
    mItensImp_TamQtd: TFloatField;
    dsmItensImp_Tam: TDataSource;
    mItensImpItem: TIntegerField;
    mItensImp_Mat: TClientDataSet;
    dsmItensImp_Mat: TDataSource;
    mItensImp_MatItem: TIntegerField;
    mItensImp_MatID_Material: TIntegerField;
    mItensImp_MatNome_Material: TStringField;
    mItensImp_MatQtd_Consumo: TFloatField;
    mItensImp_MatVlr_Unitario: TFloatField;
    mItensImp_MatVlr_Total: TFloatField;
    sdsPedidoImp_Mat: TSQLDataSet;
    cdsPedidoImp_Mat: TClientDataSet;
    dsPedidoImp_Mat: TDataSource;
    dspPedidoImp_Mat: TDataSetProvider;
    cdsPedidoImp_MatID: TIntegerField;
    cdsPedidoImp_MatITEM: TIntegerField;
    cdsPedidoImp_MatITEM_MAT: TIntegerField;
    cdsPedidoImp_MatID_PRODUTO: TIntegerField;
    cdsPedidoImp_MatQTD_CONSUMO: TFloatField;
    cdsPedidoImp_MatVLR_UNITARIO: TFloatField;
    cdsPedidoImp_MatUNIDADE: TStringField;
    cdsPedidoImp_MatVLR_TOTAL: TFloatField;
    cdsPedidoImp_MatNOME_MATERIAL: TStringField;
    cdsPedidoImp_MatREFERENCIA: TStringField;
    mItensImpOBS: TMemoField;
    cdsParametrosMOSTRAR_NOME_ETIQUETA: TStringField;
    mEtiqueta_Nav: TClientDataSet;
    mEtiqueta_NavNome_Empresa: TStringField;
    mEtiqueta_NavFone: TStringField;
    mEtiqueta_NavNome_Etiqueta: TStringField;
    mEtiqueta_NavTamanho: TStringField;
    dsmEtiqueta_Nav: TDataSource;
    sdsOrcamento_Mat: TSQLDataSet;
    dspOrcamento_Mat: TDataSetProvider;
    cdsOrcamento_Mat: TClientDataSet;
    dsOrcamento_Mat: TDataSource;
    cdsOrcamento_MatID: TIntegerField;
    cdsOrcamento_MatITEM: TIntegerField;
    cdsOrcamento_MatITEM_MAT: TIntegerField;
    cdsOrcamento_MatID_PRODUTO: TIntegerField;
    cdsOrcamento_MatQTD_CONSUMO: TFloatField;
    cdsOrcamento_MatVLR_UNITARIO: TFloatField;
    cdsOrcamento_MatUNIDADE: TStringField;
    cdsOrcamento_MatVLR_TOTAL: TFloatField;
    cdsOrcamento_MatNOME_PRODUTO: TStringField;
    cdsOrcamento_MatREFERENCIA: TStringField;
    mOrcamento_ItensID_CFOP: TIntegerField;
    cdsProdutoPERC_REDUCAOICMSSUBST: TFloatField;
    cdsFilialPERC_LISTA_CAMEX: TFloatField;
    cdsParametrosMOSTRAR_MATERIAL_PED: TStringField;
    sdsPedido_MaterialQTD_PECA: TFloatField;
    cdsPedido_MaterialQTD_PECA: TFloatField;
    sdsPedido_MaterialQTD_CONSUMO_TOTAL: TFloatField;
    cdsPedido_MaterialQTD_CONSUMO_TOTAL: TFloatField;
    sdsPedido_MaterialNOME_ETIQUETA: TStringField;
    cdsPedido_MaterialNOME_ETIQUETA: TStringField;
    cdsMaterialIMPRIMIR_ETIQUETA_NAV: TStringField;
    sdsPedido_Etiqueta: TSQLDataSet;
    cdsPedido_Etiqueta: TClientDataSet;
    dsPedido_Etiqueta: TDataSource;
    sdsPedido_EtiquetaID: TIntegerField;
    sdsPedido_EtiquetaITEM: TIntegerField;
    sdsPedido_EtiquetaTAMANHO: TStringField;
    cdsPedido_EtiquetaID: TIntegerField;
    cdsPedido_EtiquetaITEM: TIntegerField;
    cdsPedido_EtiquetaTAMANHO: TStringField;
    cdsParametrosMOSTRAR_CFOP_PEDIDO: TStringField;
    cdsPedidoImp_MatQTD_PECA: TFloatField;
    cdsPedidoImp_MatQTD_CONSUMO_TOTAL: TFloatField;
    cdsPedidoImp_MatNOME_ETIQUETA: TStringField;
    cdsPedidoImp_MatIMPRIMIR_ETIQUETA_NAV: TStringField;
    mItensImp_MatQtd_Peca: TFloatField;
    mItensImp_MatQtd_Consumo_Total: TFloatField;
    sdsPedidoImp_Etiqueta: TSQLDataSet;
    cdsPedidoImp_Etiqueta: TClientDataSet;
    dspPedidoImp_Etiqueta: TDataSetProvider;
    cdsPedidoImp_EtiquetaID: TIntegerField;
    cdsPedidoImp_EtiquetaITEM: TIntegerField;
    cdsPedidoImp_EtiquetaTAMANHO: TStringField;
    cdsParametrosDIGITACAO_PED_ITENS: TStringField;
    cdsOrcamento_MatQTD_PECA: TFloatField;
    cdsOrcamento_MatQTD_CONSUMO_TOTAL: TFloatField;
    cdsOrcamento_MatNOME_ETIQUETA: TStringField;
    sdsOrcamento_Etiqueta: TSQLDataSet;
    dspOrcamento_Etiqueta: TDataSetProvider;
    cdsOrcamento_Etiqueta: TClientDataSet;
    dsOrcamento_Etiqueta: TDataSource;
    cdsOrcamento_EtiquetaID: TIntegerField;
    cdsOrcamento_EtiquetaITEM: TIntegerField;
    cdsOrcamento_EtiquetaTAMANHO: TStringField;
    sdsPedido_ItensGERAR_LOTE: TStringField;
    cdsPedido_ItensGERAR_LOTE: TStringField;
    cdsParametrosID_CLIENTE_ESTOQUE: TIntegerField;
    cdsParametrosUSA_LOTE: TStringField;
    sdsPedido_EtiquetaITEM_MAT: TIntegerField;
    dsPedido_Material_Mestre: TDataSource;
    cdsPedido_MaterialsdsPedido_Etiqueta: TDataSetField;
    cdsPedido_EtiquetaITEM_MAT: TIntegerField;
    cdsParametrosUSA_AMOSTRA_GRATIS: TStringField;
    cdsParametrosNOTA_ENTRADA_MOSTRAR_PROD: TStringField;
    cdsParametrosTIPO_REL_PEDIDO: TStringField;
    cdsParametrosUSA_CARIMBO: TStringField;
    sdsPedido_ItensCARIMBO: TStringField;
    cdsPedido_ItensCARIMBO: TStringField;
    sdsPedidoID_CLIENTE_TRIANGULAR: TIntegerField;
    cdsPedidoID_CLIENTE_TRIANGULAR: TIntegerField;
    cdsParametrosEMPRESA_INJETADO: TStringField;
    cdsTab_NCMNOME: TStringField;
    cdsTab_NCMPERC_RED_STRIB: TFloatField;
    cdsTab_NCMGERAR_ST: TStringField;
    sdsPedido_ItensDTPRODUCAO: TDateField;
    cdsPedido_ItensDTPRODUCAO: TDateField;
    cdsParametrosEMPRESA_CARTONAGEM: TStringField;
    cdsParametrosUSA_DTPRODUCAO: TStringField;
    sdsPedido_ItensID_NCM: TIntegerField;
    cdsPedido_ItensID_NCM: TIntegerField;
    sdsPedido_ItensNCM: TStringField;
    cdsPedido_ItensNCM: TStringField;
    qRegra_CFOP: TSQLQuery;
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
    cdsParametrosEMPRESA_NAVALHA: TStringField;
    sdsPedidoNUM_DOC: TIntegerField;
    cdsPedidoNUM_DOC: TIntegerField;
    cdsPedido_ConsultaNUM_DOC: TIntegerField;
    cdsParametrosIMP_PRECO_PED: TStringField;
    mTamanho_Mat: TClientDataSet;
    dsmTamanho_Mat: TDataSource;
    mTamanho_MatTamanho: TStringField;
    sdsPedido_ItensNUM_TALAO: TStringField;
    cdsPedido_ItensNUM_TALAO: TStringField;
    qProduto_Forn: TSQLQuery;
    qProduto_FornCOD_MATERIAL_FORN: TStringField;
    qProduto_FornNOME_MATERIAL_FORN: TStringField;
    qProduto_FornCOD_BARRA: TStringField;
    qProduto_FornPRECO_CUSTO: TFloatField;
    cdsParametrosUSA_PRECO_FORN: TStringField;
    mRotulos: TClientDataSet;
    mRotulosID: TIntegerField;
    mRotulosQtd: TIntegerField;
    dsmRotulos: TDataSource;
    mRotulos_Prod: TClientDataSet;
    mRotulos_ProdID: TIntegerField;
    mRotulos_ProdID_Produto: TIntegerField;
    mRotulos_ProdReferencia: TStringField;
    mRotulos_ProdNome_Produto: TStringField;
    mRotulos_ProdQtd: TIntegerField;
    mRotulosNome_Cliente: TStringField;
    mRotulosEndereco: TStringField;
    mRotulosNum_Endereco: TStringField;
    mRotulosBairro: TStringField;
    mRotulosCep: TStringField;
    mRotulosComplemento_End: TStringField;
    mRotulosCidade: TStringField;
    mRotulosUF: TStringField;
    dsmRotulos_Prod: TDataSource;
    mRotulos_Tam: TClientDataSet;
    mRotulos_TamID: TIntegerField;
    mRotulos_TamID_Produto: TIntegerField;
    mRotulos_TamTamanho: TStringField;
    mRotulos_TamQtd: TIntegerField;
    dsmRotulos_Tam: TDataSource;
    mEtiqueta_NavReferencia: TStringField;
    mEtiqueta_NavNome_Produto: TStringField;
    cdsParametrosEND_IMPRESSORA_DOS: TStringField;
    sdsPedidoFRETE_SOMAR: TStringField;
    cdsPedidoFRETE_SOMAR: TStringField;
    sdsCliente: TSQLDataSet;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    cdsClienteCODIGO: TIntegerField;
    cdsClienteNOME: TStringField;
    cdsClienteFANTASIA: TStringField;
    dsCliente: TDataSource;
    cdsClienteID_REGIME_TRIB: TIntegerField;
    cdsClienteCIDADE: TStringField;
    cdsClienteUF: TStringField;
    cdsClienteID_CIDADE: TIntegerField;
    cdsClienteID_PAIS: TIntegerField;
    cdsClientePESSOA: TStringField;
    cdsClienteTIPO_ICMS: TStringField;
    cdsClienteID_TAB_PRECO: TIntegerField;
    cdsClienteID_VENDEDOR: TIntegerField;
    cdsClientePERC_COMISSAO: TFloatField;
    cdsClienteID_CONDPGTO: TIntegerField;
    cdsClienteID_TRANSPORTADORA: TIntegerField;
    cdsClienteID_REDESPACHO: TIntegerField;
    qPessoa: TSQLQuery;
    qPessoaCODIGO: TIntegerField;
    qPessoaNOME: TStringField;
    qPessoaFANTASIA: TStringField;
    qPessoaENDERECO: TStringField;
    qPessoaCOMPLEMENTO_END: TStringField;
    qPessoaNUM_END: TStringField;
    qPessoaBAIRRO: TStringField;
    qPessoaID_CIDADE: TIntegerField;
    qPessoaCIDADE: TStringField;
    qPessoaUF: TStringField;
    qPessoaCEP: TStringField;
    qPessoaDDDFONE1: TIntegerField;
    qPessoaTELEFONE1: TStringField;
    qPessoaDDDFONE2: TIntegerField;
    qPessoaTELEFONE2: TStringField;
    qPessoaDDDFAX: TIntegerField;
    qPessoaFAX: TStringField;
    qPessoaPESSOA: TStringField;
    qPessoaCNPJ_CPF: TStringField;
    qPessoaINSCR_EST: TStringField;
    qPessoaENDERECO_ENT: TStringField;
    qPessoaCOMPLEMENTO_END_ENT: TStringField;
    qPessoaNUM_END_ENT: TStringField;
    qPessoaBAIRRO_ENT: TStringField;
    qPessoaID_CIDADE_ENT: TIntegerField;
    qPessoaCIDADE_ENT: TStringField;
    qPessoaCEP_ENT: TStringField;
    qPessoaUF_ENT: TStringField;
    qPessoaPESSOA_ENT: TStringField;
    qPessoaCNPJ_CPF_ENT: TStringField;
    qPessoaINSC_EST_ENT: TStringField;
    qPessoaENDERECO_PGTO: TStringField;
    qPessoaCOMPLEMENTO_END_PGTO: TStringField;
    qPessoaNUM_END_PGTO: TStringField;
    qPessoaBAIRRO_PGTO: TStringField;
    qPessoaID_CIDADE_PGTO: TIntegerField;
    qPessoaCIDADE_PGTO: TStringField;
    qPessoaCEP_PGTO: TStringField;
    qPessoaUF_PGTO: TStringField;
    qPessoaUSUARIO: TStringField;
    qPessoaDTCADASTRO: TDateField;
    qPessoaHRCADASTRO: TTimeField;
    qPessoaOBS: TMemoField;
    qPessoaCAIXAPOSTAL: TStringField;
    qPessoaRG: TStringField;
    qPessoaID_VENDEDOR: TIntegerField;
    qPessoaID_CONDPGTO: TIntegerField;
    qPessoaID_CONTABOLETO: TIntegerField;
    qPessoaID_TRANSPORTADORA: TIntegerField;
    qPessoaID_TIPOCOBRANCA: TIntegerField;
    qPessoaID_REDESPACHO: TIntegerField;
    qPessoaID_PAIS: TIntegerField;
    qPessoaID_REGIME_TRIB: TIntegerField;
    qPessoaPERC_COMISSAO: TFloatField;
    qPessoaDDD_ENT: TIntegerField;
    qPessoaFONE_ENT: TStringField;
    qPessoaDDD_PGTO: TIntegerField;
    qPessoaFONE_PGTO: TStringField;
    qPessoaINATIVO: TStringField;
    qPessoaHOMEPAGE: TStringField;
    qPessoaTIPO_FRETE: TStringField;
    qPessoaNOME_ENTREGA: TStringField;
    qPessoaEMAIL_NFE: TStringField;
    qPessoaEMAIL_PGTO: TStringField;
    qPessoaEMAIL_NFE2: TStringField;
    qPessoaPESSOA_PGTO: TStringField;
    qPessoaCNPJ_CPG_PGTO: TStringField;
    qPessoaINSC_EST_PGTO: TStringField;
    qPessoaUF_PLACA: TStringField;
    qPessoaPLACA: TStringField;
    qPessoaTP_CLIENTE: TStringField;
    qPessoaTP_FORNECEDOR: TStringField;
    qPessoaTP_TRANSPORTADORA: TStringField;
    qPessoaTP_VENDEDOR: TStringField;
    qPessoaTIPO_ICMS: TStringField;
    qPessoaID_TAB_PRECO: TIntegerField;
    qPessoaTP_ATELIER: TStringField;
    qPessoaTIPO_COMISSAO: TStringField;
    qPessoaPERC_COMISSAO_VEND: TFloatField;
    qPessoaNOME_CONTATO: TStringField;
    qPessoaINSC_MUNICIPAL: TStringField;
    qPessoaDT_CONTRATO_INI: TDateField;
    qPessoaDT_CONTRATO_FIN: TDateField;
    qPessoaID_SERVICO: TIntegerField;
    qPessoaID_SERVICO_INT: TIntegerField;
    qPessoaVLR_SERVICO: TFloatField;
    qPessoaCLIENTE_CONTA_ID: TIntegerField;
    qPessoaFORNECEDOR_CONTA_ID: TIntegerField;
    qPessoaVENDEDOR_CONTA_ID: TIntegerField;
    qPessoaTRANSPORTADORA_CONTA_ID: TIntegerField;
    qPessoaATELIER_CONTA_ID: TIntegerField;
    qPessoaRETEM_ISS: TStringField;
    qPessoaRETEM_CSLL: TStringField;
    qPessoaRETEM_PISCOFINS: TStringField;
    qPessoaRETEM_INSS: TStringField;
    qPessoaEMAIL_COMPRAS: TStringField;
    qPessoaCONTATO_COMPRAS: TStringField;
    qPessoaORGAO_PUBLICO: TStringField;
    qPessoaID_NATUREZA: TIntegerField;
    qPessoaDIMINUIR_RETENCAO: TStringField;
    qPessoaPERC_REDUCAO_INSS: TFloatField;
    qPessoaUSA_TRANSFICMS: TStringField;
    qPessoaCLIENTE_ESTOQUE: TStringField;
    qPessoaUSA_TAMANHO_AGRUPADO_NFE: TStringField;
    qPessoaCOD_ANT: TIntegerField;
    cdsClienteCNPJ_CPF: TStringField;
    sdsPedidoROMANEIO: TStringField;
    cdsPedidoROMANEIO: TStringField;
    cdsParametrosIMP_PESO_PED: TStringField;
    cdsClienteENDERECO_ENT: TStringField;
    cdsPedidoImpFONE1_FILIAL: TStringField;
    cdsPedidoImpNOME_INTERNO_FIL: TStringField;
    sdsPedido_ItensTIPO_ORCAMENTO: TStringField;
    cdsPedido_ItensTIPO_ORCAMENTO: TStringField;
    cdsParametrosEMPRESA_SUCATA: TStringField;
    sdsPedido_Item_Tipo: TSQLDataSet;
    cdsPedido_Item_Tipo: TClientDataSet;
    dsPedido_Item_Tipo: TDataSource;
    sdsPedido_Item_TipoID: TIntegerField;
    sdsPedido_Item_TipoITEM: TIntegerField;
    sdsPedido_Item_TipoCOMPRIMENTO: TFloatField;
    sdsPedido_Item_TipoLARGURA: TFloatField;
    sdsPedido_Item_TipoALTURA: TFloatField;
    sdsPedido_Item_TipoVLR_KG: TFloatField;
    sdsPedido_Item_TipoQTD: TFloatField;
    sdsPedido_Item_TipoVLR_UNITARIO: TFloatField;
    sdsPedido_Item_TipoVLR_TOTAL: TFloatField;
    sdsPedido_Item_TipoDIAMETRO: TFloatField;
    sdsPedido_Item_TipoDIAMETRO_EXT: TFloatField;
    sdsPedido_Item_TipoDIAMETRO_INT: TFloatField;
    sdsPedido_Item_TipoPAREDE: TFloatField;
    sdsPedido_Item_TipoPESO: TFloatField;
    sdsPedido_Item_TipoCOMPLEMENTO_NOME: TStringField;
    cdsPedido_ItenssdsPedido_Item_Tipo: TDataSetField;
    cdsPedido_Item_TipoID: TIntegerField;
    cdsPedido_Item_TipoITEM: TIntegerField;
    cdsPedido_Item_TipoCOMPRIMENTO: TFloatField;
    cdsPedido_Item_TipoLARGURA: TFloatField;
    cdsPedido_Item_TipoALTURA: TFloatField;
    cdsPedido_Item_TipoVLR_KG: TFloatField;
    cdsPedido_Item_TipoQTD: TFloatField;
    cdsPedido_Item_TipoVLR_UNITARIO: TFloatField;
    cdsPedido_Item_TipoVLR_TOTAL: TFloatField;
    cdsPedido_Item_TipoDIAMETRO: TFloatField;
    cdsPedido_Item_TipoDIAMETRO_EXT: TFloatField;
    cdsPedido_Item_TipoDIAMETRO_INT: TFloatField;
    cdsPedido_Item_TipoPAREDE: TFloatField;
    cdsPedido_Item_TipoPESO: TFloatField;
    cdsPedido_Item_TipoCOMPLEMENTO_NOME: TStringField;
    sdsPedido_Item_TipoTIPO_ORCAMENTO: TStringField;
    cdsPedido_Item_TipoTIPO_ORCAMENTO: TStringField;
    sdsPedido_Item_TipoDESCRICAO_TIPO: TStringField;
    cdsPedido_Item_TipoDESCRICAO_TIPO: TStringField;
    sdsOrcamento_Item_Tipo: TSQLDataSet;
    dspOrcamento_Item_Tipo: TDataSetProvider;
    cdsOrcamento_Item_Tipo: TClientDataSet;
    dsOrcamento_Item_Tipo: TDataSource;
    cdsOrcamento_Item_TipoID: TIntegerField;
    cdsOrcamento_Item_TipoITEM: TIntegerField;
    cdsOrcamento_Item_TipoCOMPRIMENTO: TFloatField;
    cdsOrcamento_Item_TipoLARGURA: TFloatField;
    cdsOrcamento_Item_TipoALTURA: TFloatField;
    cdsOrcamento_Item_TipoVLR_KG: TFloatField;
    cdsOrcamento_Item_TipoQTD: TFloatField;
    cdsOrcamento_Item_TipoVLR_UNITARIO: TFloatField;
    cdsOrcamento_Item_TipoVLR_TOTAL: TFloatField;
    cdsOrcamento_Item_TipoDIAMETRO: TFloatField;
    cdsOrcamento_Item_TipoDIAMETRO_EXT: TFloatField;
    cdsOrcamento_Item_TipoDIAMETRO_INT: TFloatField;
    cdsOrcamento_Item_TipoPAREDE: TFloatField;
    cdsOrcamento_Item_TipoPESO: TFloatField;
    cdsOrcamento_Item_TipoCOMPLEMENTO_NOME: TStringField;
    cdsOrcamento_Item_TipoTIPO_ORCAMENTO: TStringField;
    cdsOrcamento_Item_TipoDESCRICAO_TIPO: TStringField;
    cdsPedido_ConsultaUF: TStringField;
    mAuxExcel: TClientDataSet;
    mAuxExcelCod_Produto: TIntegerField;
    mAuxExcelNome_Produto: TStringField;
    mAuxExcelEmbalagem: TFloatField;
    mAuxExcelQtd: TFloatField;
    mAuxExcelVlr_Unitario: TFloatField;
    sdsPedidoTIPO_VENDA: TStringField;
    cdsPedidoTIPO_VENDA: TStringField;
    cdsParametrosUSA_PEDIDO_CONTROLE_MOBRA: TStringField;
    mAuxExcelReferencia: TStringField;
    sdsPedido_ItensEND_FOTO: TStringField;
    sdsPedido_ItensITEM_CLIENTE: TIntegerField;
    cdsPedido_ItensEND_FOTO: TStringField;
    cdsPedido_ItensITEM_CLIENTE: TIntegerField;
    cdsOrcamento_ItensEND_FOTO: TStringField;
    sdsPedidoAPROVADO_ORC: TStringField;
    cdsPedidoAPROVADO_ORC: TStringField;
    cdsClienteEMAIL_COMPRAS: TStringField;
    cdsClienteVLR_LIMITE_CREDITO: TFloatField;
    sdsCFOP_VariacaoID: TIntegerField;
    sdsCFOP_VariacaoITEM: TIntegerField;
    sdsCFOP_VariacaoID_CSTICMS: TIntegerField;
    sdsCFOP_VariacaoID_CSTIPI: TIntegerField;
    sdsCFOP_VariacaoID_PIS: TIntegerField;
    sdsCFOP_VariacaoID_COFINS: TIntegerField;
    sdsCFOP_VariacaoID_OPERACAO_NOTA: TIntegerField;
    sdsCFOP_VariacaoNOME: TStringField;
    cdsProdutoTIPO_VENDA: TStringField;
    cdsProdutoPERC_IMPORTACAO: TFloatField;
    cdsProdutoDT_ALTPRECO: TDateField;
    cdsProdutoUSA_PERC_IMP_INTERESTADUAL: TStringField;
    cdsProdutoPERC_PIS: TFloatField;
    cdsProdutoPERC_COFINS: TFloatField;
    cdsProdutoPERC_ICMS_IMP: TFloatField;
    cdsProdutoPERC_IPI_IMP: TFloatField;
    sdsPedido_ItensQTD_PECA: TIntegerField;
    cdsPedido_ItensQTD_PECA: TIntegerField;
    mOrcamento_ItensQtd_Peca: TIntegerField;
    cdsOrcamento_ItensQTD_PECA: TIntegerField;
    mRotulos_SGrade: TClientDataSet;
    dsmRotulos_SGrade: TDataSource;
    mRotulos_SGradeID: TIntegerField;
    mRotulos_SGradeID_Produto: TIntegerField;
    mRotulos_SGradeNome: TStringField;
    mRotulos_SGradeReferencia: TStringField;
    mRotulos_SGradeNome_Cliente: TStringField;
    mRotulos_SGradeEndereco: TStringField;
    mRotulos_SGradeNum_End: TStringField;
    mRotulos_SGradeCidade: TStringField;
    mRotulos_SGradeUF: TStringField;
    mRotulos_SGradeComplemento_End: TStringField;
    mRotulos_SGradeQtd: TFloatField;
    mEtiqueta_NavNome_Cliente: TStringField;
    mEtiqueta_NavQtd: TIntegerField;
    mEtiqueta_NavPedido_Cliente: TStringField;
    cdsParametrosIMP_MEIA_FOLHA_PED: TStringField;
    cdsTab_NCMUSAR_MVA_UF_DESTINO: TStringField;
    qNCM_UF: TSQLQuery;
    qNCM_UFID: TIntegerField;
    qNCM_UFITEM: TIntegerField;
    qNCM_UFUF: TStringField;
    qNCM_UFMVAINTERNO: TFloatField;
    qNCM_UFNCM: TStringField;
    qNCM_UFPERC_RED_STRIB: TFloatField;
    qNCM_UFPERC_RED_MVA: TFloatField;
    qNCM_UFPERC_RED_MVA_GERAL: TFloatField;
    qNCM_UFTIPO_EMPRESA: TStringField;
    qNCM_UFTIPO_PRODUTO: TStringField;
    qNCM_UFAJUSTAR_MVA: TStringField;
    qNCM_UFPERC_ICMS_INTERNO: TFloatField;
    qNCM_UFID_OBS_LEI: TIntegerField;
    qProduto_UF: TSQLQuery;
    qProduto_UFID: TIntegerField;
    qProduto_UFUF: TStringField;
    qProduto_UFPERC_ICMS: TFloatField;
    qProduto_UFPERC_ICMS_INTERNO: TFloatField;
    qProduto_UFPERC_REDUCAO_ST: TFloatField;
    cdsParametrosARREDONDAR_5: TStringField;
    cdsPedidoImpVLR_ITENS2: TFloatField;
    sdsPedidoNOME_CONSUMIDOR: TStringField;
    cdsPedidoNOME_CONSUMIDOR: TStringField;
    cdsParametrosID_CLIENTE_CONSUMIDOR: TIntegerField;
    cdsPedido_ConsultaNOME_CONSUMIDOR: TStringField;
    cdsOrcamentoNOME_CONSUMIDOR: TStringField;
    cdsPedidoImpNOME_CONSUMIDOR: TStringField;
    cdsParametrosSENHA_PEDIDO: TStringField;
    cdsParametrosTIPO_REL_OC: TStringField;
    sdsPedido_ItensGRAVACAO_COM_ERRO: TStringField;
    cdsPedido_ItensGRAVACAO_COM_ERRO: TStringField;
    cdsOrcamento_ItensID_NCM: TIntegerField;
    mOrcamento_ItensID_NCM: TIntegerField;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    frxDBDataset3: TfrxDBDataset;
    cdsPedidoImpclTIPO_FRETE: TStringField;
    frxRichObject1: TfrxRichObject;
    sdsPedidoServico: TSQLDataSet;
    cdsPedidoServico: TClientDataSet;
    dsPedidoServico: TDataSource;
    sdsPedidoServicoID: TIntegerField;
    sdsPedidoServicoITEM: TIntegerField;
    sdsPedidoServicoID_SERVICO_INT: TIntegerField;
    sdsPedidoServicoNOME_SERVICO_INT: TStringField;
    sdsPedidoServicoQTD: TIntegerField;
    sdsPedidoServicoVLR_UNITARIO: TFloatField;
    sdsPedidoServicoVLR_TOTAL: TFloatField;
    sdsPedidoServicoCOMPLEMENTO_SERVICO: TStringField;
    sdsPedidoServicoUNIDADE: TStringField;
    sdsPedidoServicoAPROVADO_ORC: TStringField;
    cdsPedidoServicoID: TIntegerField;
    cdsPedidoServicoITEM: TIntegerField;
    cdsPedidoServicoID_SERVICO_INT: TIntegerField;
    cdsPedidoServicoNOME_SERVICO_INT: TStringField;
    cdsPedidoServicoQTD: TIntegerField;
    cdsPedidoServicoVLR_UNITARIO: TFloatField;
    cdsPedidoServicoVLR_TOTAL: TFloatField;
    cdsPedidoServicoCOMPLEMENTO_SERVICO: TStringField;
    cdsPedidoServicoUNIDADE: TStringField;
    cdsPedidoServicoAPROVADO_ORC: TStringField;
    sdsServico_Int: TSQLDataSet;
    dspServico_Int: TDataSetProvider;
    cdsServico_Int: TClientDataSet;
    cdsServico_IntID: TIntegerField;
    cdsServico_IntNOME: TStringField;
    cdsServico_IntVLR_UNITARIO: TFloatField;
    dsServico_Int: TDataSource;
    cdsPedidosdsPedidoServico: TDataSetField;
    sdsPedidoID_FUNCIONARIO: TIntegerField;
    sdsPedidoNOME_PRODUTO_PROPOSTA: TStringField;
    cdsPedidoID_FUNCIONARIO: TIntegerField;
    cdsPedidoNOME_PRODUTO_PROPOSTA: TStringField;
    cdsPedidoImpNOME_PRODUTO_PROPOSTA: TStringField;
    cdsPedidoImpNOME_FUNCIONARIO: TStringField;
    cdsPedidoImpEMAIL_FUNCIONARIO: TStringField;
    qRegra_VariacaoNOME: TStringField;
    qRegra_VariacaoPESSOA_CLIENTE: TStringField;
    qRegra_VariacaoLEI: TMemoField;
    qRegra_VariacaoPERC_TRIBUTO: TFloatField;
    qRegra_VariacaoPERC_PIS: TFloatField;
    qRegra_VariacaoPERC_COFINS: TFloatField;
    qRegra_VariacaoTIPO_PIS: TStringField;
    qRegra_VariacaoTIPO_COFINS: TStringField;
    qRegra_VariacaoID_OBS_LEI: TIntegerField;
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
    dsmFilial: TDataSource;
    sdsFilialRelatorios: TSQLDataSet;
    sdsFilialRelatoriosID: TIntegerField;
    sdsFilialRelatoriosITEM: TIntegerField;
    sdsFilialRelatoriosTIPO: TSmallintField;
    sdsFilialRelatoriosCAMINHO: TStringField;
    cdsFilialRelatorios: TClientDataSet;
    cdsFilialRelatoriosID: TIntegerField;
    cdsFilialRelatoriosITEM: TIntegerField;
    cdsFilialRelatoriosTIPO: TSmallintField;
    cdsFilialRelatoriosCAMINHO: TStringField;
    dsFilialRelatorios: TDataSource;
    cdsFilialsdsFilialRelatorios: TDataSetField;
    sdsPedidoServicoImp: TSQLDataSet;
    dspPedidoServicoImp: TDataSetProvider;
    cdsPedidoServicoImp: TClientDataSet;
    dsPedidoServicoImp: TDataSource;
    cdsPedidoServicoImpID: TIntegerField;
    cdsPedidoServicoImpITEM: TIntegerField;
    cdsPedidoServicoImpID_SERVICO_INT: TIntegerField;
    cdsPedidoServicoImpNOME_SERVICO_INT: TStringField;
    cdsPedidoServicoImpQTD: TIntegerField;
    cdsPedidoServicoImpVLR_UNITARIO: TFloatField;
    cdsPedidoServicoImpVLR_TOTAL: TFloatField;
    cdsPedidoServicoImpCOMPLEMENTO_SERVICO: TStringField;
    cdsPedidoServicoImpUNIDADE: TStringField;
    cdsPedidoServicoImpAPROVADO_ORC: TStringField;
    frxDBDataset4: TfrxDBDataset;
    cdsPedidoImpID_OPERACAO_NOTA: TIntegerField;
    cdsPedidoImpFINALIDADE: TStringField;
    cdsPedidoImpFATURADO: TStringField;
    cdsPedidoImpID_SOLICITANTE: TIntegerField;
    cdsPedidoImpID_PROJETO: TIntegerField;
    cdsPedidoImpAPROVADO_ORC: TStringField;
    cdsPedidoImpAMOSTRA_GRATIS: TStringField;
    cdsPedidoImpID_CLIENTE_TRIANGULAR: TIntegerField;
    cdsPedidoImpNUM_DOC: TIntegerField;
    cdsPedidoImpFRETE_SOMAR: TStringField;
    cdsPedidoImpROMANEIO: TStringField;
    cdsPedidoImpTIPO_VENDA: TStringField;
    cdsPedidoImpID_FUNCIONARIO: TIntegerField;
    cdsPedidoImpNOME_TRANSPORTADORA: TStringField;
    sdsPedidoVLR_SERVICO: TFloatField;
    cdsPedidoVLR_SERVICO: TFloatField;
    cdsPedidoImpVLR_SERVICO: TFloatField;
    cdsParametrosCONTROLAR_NOTIFICACAO: TStringField;
    sdsPedidoID_CONTA_ORCAMENTO: TIntegerField;
    cdsPedidoID_CONTA_ORCAMENTO: TIntegerField;
    sdsContaOrcamento: TSQLDataSet;
    sdsContaOrcamentoID: TIntegerField;
    sdsContaOrcamentoTIPO: TStringField;
    sdsContaOrcamentoCODIGO: TStringField;
    sdsContaOrcamentoDESCRICAO: TStringField;
    sdsContaOrcamentoNOME_AUX: TStringField;
    dspContaOrcamento: TDataSetProvider;
    cdsContaOrcamento: TClientDataSet;
    cdsContaOrcamentoID: TIntegerField;
    cdsContaOrcamentoTIPO: TStringField;
    cdsContaOrcamentoCODIGO: TStringField;
    cdsContaOrcamentoDESCRICAO: TStringField;
    cdsContaOrcamentoNOME_AUX: TStringField;
    dsContaOrcamento: TDataSource;
    cdsParametrosUSA_CONTA_ORCAMENTO: TStringField;
    sdsPedido_ItensQTD_FUT: TFloatField;
    cdsPedido_ItensQTD_FUT: TFloatField;
    sdsAcabamento: TSQLDataSet;
    dspAcabamento: TDataSetProvider;
    cdsAcabamento: TClientDataSet;
    dsAcabamento: TDataSource;
    sdsPedido_Item_TipoID_ACABAMENTO: TIntegerField;
    sdsPedido_Item_TipoID_REDONDO_MOD: TIntegerField;
    sdsPedido_Item_TipoID_CMOEDA: TIntegerField;
    sdsPedido_Item_TipoID_FUROS: TIntegerField;
    sdsPedido_Item_TipoID_FURACAO: TIntegerField;
    cdsPedido_Item_TipoID_ACABAMENTO: TIntegerField;
    cdsPedido_Item_TipoID_REDONDO_MOD: TIntegerField;
    cdsPedido_Item_TipoID_CMOEDA: TIntegerField;
    cdsPedido_Item_TipoID_FUROS: TIntegerField;
    cdsPedido_Item_TipoID_FURACAO: TIntegerField;
    sdsPedido_Item_TipoID_PERFIL: TIntegerField;
    sdsPedido_Item_TipoID_VIDRO: TIntegerField;
    cdsPedido_Item_TipoID_PERFIL: TIntegerField;
    cdsPedido_Item_TipoID_VIDRO: TIntegerField;
    cdsParametrosEMPRESA_AMBIENTES: TStringField;
    qGrupo: TSQLQuery;
    qGrupoID: TIntegerField;
    qGrupoNOME: TStringField;
    qGrupoTIPO_PROD: TStringField;
    cdsProdutoID_GRUPO: TIntegerField;
    sdsRedondoMod: TSQLDataSet;
    dspRedondoMod: TDataSetProvider;
    cdsRedondoMod: TClientDataSet;
    dsRedondoMod: TDataSource;
    dspCMoeda: TDataSetProvider;
    cdsCMoeda: TClientDataSet;
    dsCMoeda: TDataSource;
    sdsCMoeda: TSQLDataSet;
    sdsFuros: TSQLDataSet;
    dspFuros: TDataSetProvider;
    cdsFuros: TClientDataSet;
    dsFuros: TDataSource;
    sdsFuracao: TSQLDataSet;
    dspFuracao: TDataSetProvider;
    cdsFuracao: TClientDataSet;
    dsFuracao: TDataSource;
    cdsAcabamentoID: TIntegerField;
    cdsAcabamentoNOME: TStringField;
    cdsAcabamentoTIPO_REG: TStringField;
    cdsAcabamentoVLR_UNITARIO: TFloatField;
    cdsRedondoModID: TIntegerField;
    cdsRedondoModNOME: TStringField;
    cdsRedondoModTIPO_REG: TStringField;
    cdsRedondoModVLR_UNITARIO: TFloatField;
    cdsCMoedaID: TIntegerField;
    cdsCMoedaNOME: TStringField;
    cdsCMoedaTIPO_REG: TStringField;
    cdsCMoedaVLR_UNITARIO: TFloatField;
    cdsFurosID: TIntegerField;
    cdsFurosNOME: TStringField;
    cdsFurosTIPO_REG: TStringField;
    cdsFurosVLR_UNITARIO: TFloatField;
    cdsFuracaoID: TIntegerField;
    cdsFuracaoNOME: TStringField;
    cdsFuracaoTIPO_REG: TStringField;
    cdsFuracaoVLR_UNITARIO: TFloatField;
    sdsPerfil: TSQLDataSet;
    dspPerfil: TDataSetProvider;
    cdsPerfil: TClientDataSet;
    dsPerfil: TDataSource;
    sdsVidro: TSQLDataSet;
    dspVidro: TDataSetProvider;
    cdsVidro: TClientDataSet;
    dsVidro: TDataSource;
    cdsPerfilID: TIntegerField;
    cdsPerfilNOME: TStringField;
    cdsPerfilPRECO_CUSTO: TFloatField;
    cdsPerfilPRECO_VENDA: TFloatField;
    cdsPerfilID_GRUPO: TIntegerField;
    cdsPerfilTIPO_PROD: TStringField;
    cdsVidroID: TIntegerField;
    cdsVidroNOME: TStringField;
    cdsVidroPRECO_CUSTO: TFloatField;
    cdsVidroPRECO_VENDA: TFloatField;
    cdsVidroID_GRUPO: TIntegerField;
    cdsVidroTIPO_PROD: TStringField;
    cdsPedido_Item_TipoclNome_Acabamento: TStringField;
    cdsPedido_Item_TipoclNome_Redondo_Mod: TStringField;
    cdsPedido_Item_TipoclNome_CMoeda: TStringField;
    cdsPedido_Item_TipoclNome_Furos: TStringField;
    cdsPedido_Item_TipoclNome_Furacao: TStringField;
    cdsPedido_Item_TipoclNome_Perfil: TStringField;
    cdsPedido_Item_TipoclNome_Vidro: TStringField;
    cdsPerfilCALCULAR_2_LADOS: TStringField;
    sdsPedidoPERC_MARGEM: TFloatField;
    cdsPedidoPERC_MARGEM: TFloatField;
    sdsPedido_Ace: TSQLDataSet;
    cdsPedido_Ace: TClientDataSet;
    dsPedido_Ace: TDataSource;
    sdsPedido_AceID: TIntegerField;
    sdsPedido_AceITEM: TIntegerField;
    sdsPedido_AceID_PRODUTO: TIntegerField;
    sdsPedido_AceVLR_UNITARIO: TFloatField;
    sdsPedido_AceVLR_TOTAL: TFloatField;
    cdsPedidosdsPedido_Ace: TDataSetField;
    cdsPedido_AceID: TIntegerField;
    cdsPedido_AceITEM: TIntegerField;
    cdsPedido_AceID_PRODUTO: TIntegerField;
    cdsPedido_AceVLR_UNITARIO: TFloatField;
    cdsPedido_AceVLR_TOTAL: TFloatField;
    sdsPedido_Rol: TSQLDataSet;
    cdsPedido_Rol: TClientDataSet;
    dsPedido_Rol: TDataSource;
    sdsPedido_RolID: TIntegerField;
    sdsPedido_RolITEM: TIntegerField;
    sdsPedido_RolID_PRODUTO: TIntegerField;
    sdsPedido_RolVLR_UNITARIO: TFloatField;
    sdsPedido_RolVLR_TOTAL: TFloatField;
    cdsPedidosdsPedido_Rol: TDataSetField;
    cdsPedido_RolID: TIntegerField;
    cdsPedido_RolITEM: TIntegerField;
    cdsPedido_RolID_PRODUTO: TIntegerField;
    cdsPedido_RolVLR_UNITARIO: TFloatField;
    cdsPedido_RolVLR_TOTAL: TFloatField;
    sdsAcessorios: TSQLDataSet;
    dspAcessorios: TDataSetProvider;
    cdsAcessorios: TClientDataSet;
    dsAcessorios: TDataSource;
    qProduto: TSQLQuery;
    qProdutoID: TIntegerField;
    qProdutoNOME: TStringField;
    cdsAcessoriosID: TIntegerField;
    cdsAcessoriosNOME: TStringField;
    cdsAcessoriosPRECO_CUSTO: TFloatField;
    cdsAcessoriosPRECO_VENDA: TFloatField;
    cdsAcessoriosID_GRUPO: TIntegerField;
    cdsAcessoriosTIPO_PROD: TStringField;
    sdsPedido_AceCOMPRIMENTO_VOLUME: TFloatField;
    cdsPedido_AceCOMPRIMENTO_VOLUME: TFloatField;
    sdsPedido_RolCOMPRIMENTO_VOLUME: TFloatField;
    cdsPedido_RolCOMPRIMENTO_VOLUME: TFloatField;
    sdsPedidoVLR_TOTAL_TRILHOS: TFloatField;
    sdsPedidoVLR_TOTAL_ROLDANAS: TFloatField;
    cdsPedidoVLR_TOTAL_TRILHOS: TFloatField;
    cdsPedidoVLR_TOTAL_ROLDANAS: TFloatField;
    cdsPedidoImpVENDEDOR_DDD: TIntegerField;
    cdsPedidoImpVENDEDOR_FONE: TStringField;
    sdsPedidoImp_Tipo: TSQLDataSet;
    cdsPedidoImp_Tipo: TClientDataSet;
    dsPedidoImp_Tipo: TDataSource;
    dspPedidoImp_Tipo: TDataSetProvider;
    sdsPedidoImp_Ace: TSQLDataSet;
    cdsPedidoImp_Ace: TClientDataSet;
    dsPedidoImp_Ace: TDataSource;
    dspPedidoImp_Ace: TDataSetProvider;
    cdsPedidoImp_TipoID: TIntegerField;
    cdsPedidoImp_TipoITEM: TIntegerField;
    cdsPedidoImp_TipoCOMPRIMENTO: TFloatField;
    cdsPedidoImp_TipoLARGURA: TFloatField;
    cdsPedidoImp_TipoALTURA: TFloatField;
    cdsPedidoImp_TipoVLR_KG: TFloatField;
    cdsPedidoImp_TipoQTD: TFloatField;
    cdsPedidoImp_TipoVLR_UNITARIO: TFloatField;
    cdsPedidoImp_TipoVLR_TOTAL: TFloatField;
    cdsPedidoImp_TipoDIAMETRO: TFloatField;
    cdsPedidoImp_TipoDIAMETRO_EXT: TFloatField;
    cdsPedidoImp_TipoDIAMETRO_INT: TFloatField;
    cdsPedidoImp_TipoPAREDE: TFloatField;
    cdsPedidoImp_TipoPESO: TFloatField;
    cdsPedidoImp_TipoCOMPLEMENTO_NOME: TStringField;
    cdsPedidoImp_TipoTIPO_ORCAMENTO: TStringField;
    cdsPedidoImp_TipoDESCRICAO_TIPO: TStringField;
    cdsPedidoImp_TipoID_ACABAMENTO: TIntegerField;
    cdsPedidoImp_TipoID_REDONDO_MOD: TIntegerField;
    cdsPedidoImp_TipoID_CMOEDA: TIntegerField;
    cdsPedidoImp_TipoID_FUROS: TIntegerField;
    cdsPedidoImp_TipoID_FURACAO: TIntegerField;
    cdsPedidoImp_TipoID_PERFIL: TIntegerField;
    cdsPedidoImp_TipoID_VIDRO: TIntegerField;
    cdsPedidoImp_TipoNOME_ACABAMENTO: TStringField;
    cdsPedidoImp_TipoNOME_REDONDO_MOD: TStringField;
    cdsPedidoImp_TipoNOME_CMOEDA: TStringField;
    cdsPedidoImp_TipoNOME_FUROS: TStringField;
    cdsPedidoImp_TipoNOME_FURACAO: TStringField;
    cdsPedidoImp_TipoNOME_PERFIL: TStringField;
    cdsPedidoImp_TipoNOME_VIDRO: TStringField;
    cdsPedidoImp_AceID: TIntegerField;
    cdsPedidoImp_AceITEM: TIntegerField;
    cdsPedidoImp_AceID_PRODUTO: TIntegerField;
    cdsPedidoImp_AceCOMPRIMENTO_VOLUME: TFloatField;
    cdsPedidoImp_AceVLR_UNITARIO: TFloatField;
    cdsPedidoImp_AceVLR_TOTAL: TFloatField;
    cdsPedidoImp_AceNOME_PRODUTO: TStringField;
    sdsPedidoImp_Rol: TSQLDataSet;
    cdsPedidoImp_Rol: TClientDataSet;
    dsPedidoImp_Rol: TDataSource;
    dspPedidoImp_Rol: TDataSetProvider;
    frxDBDataset5: TfrxDBDataset;
    frxDBDataset6: TfrxDBDataset;
    frxDBDataset7: TfrxDBDataset;
    cdsPedidoImpVLR_TOTAL_TRILHOS: TFloatField;
    cdsPedidoImpVLR_TOTAL_ROLDANAS: TFloatField;
    sdsPedido_Item_TipoQTD_FUROS: TIntegerField;
    cdsPedido_Item_TipoQTD_FUROS: TIntegerField;
    cdsAcabamentoTIPO_PRECO: TStringField;
    cdsAcabamentoTIPO_VP: TStringField;
    cdsRedondoModTIPO_PRECO: TStringField;
    cdsRedondoModTIPO_VP: TStringField;
    cdsCMoedaTIPO_PRECO: TStringField;
    cdsCMoedaTIPO_VP: TStringField;
    cdsFurosTIPO_PRECO: TStringField;
    cdsFurosTIPO_VP: TStringField;
    cdsFuracaoTIPO_PRECO: TStringField;
    cdsFuracaoTIPO_VP: TStringField;
    qProduto_Matriz: TSQLQuery;
    qProduto_MatrizVLR_UNITARIO: TFloatField;
    cdsVidroPERC_VIDRO: TFloatField;
    cdsClienteCARIMBO: TStringField;
    cdsPedidoImp_TipoQTD_FUROS: TIntegerField;
    sdsCombinacao: TSQLDataSet;
    dspCombinacao: TDataSetProvider;
    cdsCombinacao: TClientDataSet;
    dsCombinacao: TDataSource;
    cdsParametrosINFORMAR_COR_MATERIAL: TStringField;
    cdsParametrosINFORMAR_COR_PROD: TStringField;
    sdsPedido_ItensID_COR: TFMTBCDField;
    cdsPedido_ItensID_COR: TFMTBCDField;
    cdsOrcamento_ItensID_COR: TFMTBCDField;
    cdsParametrosCONTROLAR_DUP_PEDIDO: TStringField;
    sdsPedido_Parc: TSQLDataSet;
    cdsPedido_Parc: TClientDataSet;
    dsPedido_Parc: TDataSource;
    sdsPedido_ParcID: TIntegerField;
    sdsPedido_ParcITEM: TIntegerField;
    sdsPedido_ParcDTVENCIMENTO: TDateField;
    sdsPedido_ParcID_TIPOCOBRANCA: TIntegerField;
    sdsPedido_ParcID_CONTA: TIntegerField;
    cdsPedidosdsPedido_Parc: TDataSetField;
    cdsPedido_ParcID: TIntegerField;
    cdsPedido_ParcITEM: TIntegerField;
    cdsPedido_ParcDTVENCIMENTO: TDateField;
    cdsPedido_ParcID_TIPOCOBRANCA: TIntegerField;
    cdsPedido_ParcID_CONTA: TIntegerField;
    sdsPedidoID_TIPO_COBRANCA: TIntegerField;
    sdsPedidoID_CONTA: TIntegerField;
    sdsPedidoVLR_ENTRADA: TFloatField;
    sdsPedidoDTINICIO_DUPLICATA: TDateField;
    cdsPedidoID_TIPO_COBRANCA: TIntegerField;
    cdsPedidoID_CONTA: TIntegerField;
    cdsPedidoVLR_ENTRADA: TFloatField;
    cdsPedidoDTINICIO_DUPLICATA: TDateField;
    cdsPedido_ParclkNome_TipoCobranca: TStringField;
    cdsPedido_ParclkNome_Conta: TStringField;
    cdsCondPgto_Dia: TClientDataSet;
    cdsCondPgto_DiaID: TIntegerField;
    cdsCondPgto_DiaITEM: TIntegerField;
    cdsCondPgto_DiaQTDDIAS: TIntegerField;
    sdsCondPgto_Dia: TSQLDataSet;
    sdsCondPgto_DiaID: TIntegerField;
    sdsCondPgto_DiaITEM: TIntegerField;
    sdsCondPgto_DiaQTDDIAS: TIntegerField;
    dsCondPgto_Mestre: TDataSource;
    sdsCondPgto: TSQLDataSet;
    sdsCondPgtoID: TIntegerField;
    sdsCondPgtoNOME: TStringField;
    sdsCondPgtoTIPO: TStringField;
    sdsCondPgtoENTRADA: TStringField;
    sdsCondPgtoTIPO_CONDICAO: TStringField;
    sdsCondPgtoQTD_PARCELA: TIntegerField;
    dspCondPgto: TDataSetProvider;
    cdsCondPgto: TClientDataSet;
    cdsCondPgtoID: TIntegerField;
    cdsCondPgtoNOME: TStringField;
    cdsCondPgtoTIPO: TStringField;
    cdsCondPgtoENTRADA: TStringField;
    cdsCondPgtoTIPO_CONDICAO: TStringField;
    cdsCondPgtoQTD_PARCELA: TIntegerField;
    cdsCondPgtosdsCondPgto_Dia: TDataSetField;
    dsCondPgto: TDataSource;
    cdsParametrosID_CONTA_PADRAO: TIntegerField;
    cdsParametrosID_TIPO_COBRANCA_PADRAO: TIntegerField;
    sdsPedido_ParcVLR_VENCIMENTO: TFloatField;
    cdsPedido_ParcVLR_VENCIMENTO: TFloatField;
    sdsDuplicata: TSQLDataSet;
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
    sdsDuplicataARQUIVO_GERADO: TStringField;
    sdsDuplicataID_COB_ELETRONICA: TIntegerField;
    sdsDuplicataBOLETO_IMP: TStringField;
    sdsDuplicataID_CARTEIRA: TIntegerField;
    sdsDuplicataID_BANCO: TIntegerField;
    sdsDuplicataID_CONTA_ORCAMENTO: TIntegerField;
    sdsDuplicataTIPO_MOV: TStringField;
    dspDuplicata: TDataSetProvider;
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
    cdsDuplicataARQUIVO_GERADO: TStringField;
    cdsDuplicatasdsDuplicata_Hist: TDataSetField;
    cdsDuplicataID_COB_ELETRONICA: TIntegerField;
    cdsDuplicataBOLETO_IMP: TStringField;
    cdsDuplicataID_CARTEIRA: TIntegerField;
    cdsDuplicataID_BANCO: TIntegerField;
    cdsDuplicataID_CONTA_ORCAMENTO: TIntegerField;
    cdsDuplicataTIPO_MOV: TStringField;
    dsDuplicata_Mestre: TDataSource;
    sdsDuplicata_Hist: TSQLDataSet;
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
    sdsDuplicata_HistTIPO_HISTORICO: TStringField;
    sdsDuplicata_HistDTHISTORICO: TDateField;
    sdsDuplicata_HistDTLANCAMENTO: TDateField;
    sdsDuplicata_HistVLR_LANCAMENTO: TFloatField;
    sdsDuplicata_HistID_FORMA_PAGAMENTO: TIntegerField;
    cdsDuplicata_Hist: TClientDataSet;
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
    cdsDuplicata_HistTIPO_HISTORICO: TStringField;
    cdsDuplicata_HistDTHISTORICO: TDateField;
    cdsDuplicata_HistDTLANCAMENTO: TDateField;
    cdsDuplicata_HistVLR_LANCAMENTO: TFloatField;
    cdsDuplicata_HistID_FORMA_PAGAMENTO: TIntegerField;
    sdsDuplicataID_PEDIDO: TIntegerField;
    cdsDuplicataID_PEDIDO: TIntegerField;
    mOrcamento_ItensTipo_Orcamento: TStringField;
    cdsOrcamento_ItensTIPO_ORCAMENTO: TStringField;
    cdsOrcamento_Item_TipoID_ACABAMENTO: TIntegerField;
    cdsOrcamento_Item_TipoID_REDONDO_MOD: TIntegerField;
    cdsOrcamento_Item_TipoID_CMOEDA: TIntegerField;
    cdsOrcamento_Item_TipoID_FUROS: TIntegerField;
    cdsOrcamento_Item_TipoID_FURACAO: TIntegerField;
    cdsOrcamento_Item_TipoID_PERFIL: TIntegerField;
    cdsOrcamento_Item_TipoID_VIDRO: TIntegerField;
    cdsOrcamento_Item_TipoQTD_FUROS: TIntegerField;
    sdsOrcamento_Ace: TSQLDataSet;
    dspOrcamento_Ace: TDataSetProvider;
    cdsOrcamento_Ace: TClientDataSet;
    dsOrcamento_Ace: TDataSource;
    cdsOrcamento_AceID: TIntegerField;
    cdsOrcamento_AceITEM: TIntegerField;
    cdsOrcamento_AceID_PRODUTO: TIntegerField;
    cdsOrcamento_AceCOMPRIMENTO_VOLUME: TFloatField;
    cdsOrcamento_AceVLR_UNITARIO: TFloatField;
    cdsOrcamento_AceVLR_TOTAL: TFloatField;
    mOrcamento_ItensID_Orcamento: TIntegerField;
    mOrcamento_ItensItem: TIntegerField;
    sdsOrcamento_Rol: TSQLDataSet;
    dspOrcamento_Rol: TDataSetProvider;
    cdsOrcamento_Rol: TClientDataSet;
    dsOrcamento_Rol: TDataSource;
    cdsOrcamento_RolID: TIntegerField;
    cdsOrcamento_RolITEM: TIntegerField;
    cdsOrcamento_RolID_PRODUTO: TIntegerField;
    cdsOrcamento_RolCOMPRIMENTO_VOLUME: TFloatField;
    cdsOrcamento_RolVLR_UNITARIO: TFloatField;
    cdsOrcamento_RolVLR_TOTAL: TFloatField;
    frxDBDataset8: TfrxDBDataset;
    cdsPedidoImpENDERECO_PGTO: TStringField;
    cdsPedidoImpCIDADE_PGTO: TStringField;
    cdsPedidoImpUF_PGTO: TStringField;
    cdsPedidoImpBAIRRO_PGTO: TStringField;
    cdsPedidoImpCEP_PGTO: TStringField;
    cdsPedidoImpNUM_END_PGTO: TStringField;
    mEmbalagem: TClientDataSet;
    dsmEmbalegem: TDataSource;
    mEmbalagemID_Material: TIntegerField;
    mEmbalagemNome_Material: TStringField;
    mEmbalagemQtd_Capacidade: TIntegerField;
    mEmbalagemQtd_Consumo: TIntegerField;
    qPedido_Emb: TSQLQuery;
    qPedido_EmbID_EMBALAGEM: TIntegerField;
    qPedido_EmbQTD_CAPACIDADE: TFloatField;
    qPedido_EmbQTD_PEDIDO: TFloatField;
    mEmbalagemQtd_Produto: TFloatField;
    cdsParametrosMOSTRAR_EMBALAGEM: TStringField;
    frxDBDataset9: TfrxDBDataset;
    mCarimbo: TClientDataSet;
    mCarimboCarimbo: TStringField;
    dsmCarimbo: TDataSource;
    frxDBDataset10: TfrxDBDataset;
    sdsPedidoImp_Carimbo: TSQLDataSet;
    dspPedidoImp_Carimbo: TDataSetProvider;
    cdsPedidoImp_Carimbo: TClientDataSet;
    cdsPedidoImp_CarimboCARIMBO: TStringField;
    mCarimboReferencia: TWideStringField;
    cdsParametrosTIPO_ESTOQUE: TStringField;
    sdsPedido_ItensID_MOVESTOQUE: TIntegerField;
    sdsPedido_ItensGERAR_ESTOQUE: TStringField;
    cdsPedido_ItensID_MOVESTOQUE: TIntegerField;
    cdsPedido_ItensGERAR_ESTOQUE: TStringField;
    frxmEtiqueta_Nav: TfrxDBDataset;
    qFilial_Rel: TSQLQuery;
    qFilial_RelID: TIntegerField;
    qFilial_RelITEM: TIntegerField;
    qFilial_RelTIPO: TSmallintField;
    qFilial_RelCAMINHO: TStringField;
    qFilial_RelPOSICAO: TSmallintField;
    mEtiqueta_NavFantasia_Cli: TStringField;
    cdsPedidoImpFANTASIA_CLI: TStringField;
    mRotulos_ProdID_Combinacao: TIntegerField;
    mRotulos_ProdNome_Combiancao: TStringField;
    mRotulos_TamID_Combinacao: TIntegerField;
    mItensImpID_Combinacao: TIntegerField;
    mItensImpNome_Combinacao: TStringField;
    cdsParametrosGERAR_ROTULO_EMB: TStringField;
    frxDBDataset12: TfrxDBDataset;
    frxDBDataset13: TfrxDBDataset;
    frxDBDataset14: TfrxDBDataset;
    mRotulosNome_Filial: TStringField;
    mRotulosNome_Filial_Interno: TStringField;
    mRotulosEndereco_Filial: TStringField;
    mRotulosNum_Filial: TStringField;
    mRotulosBairro_Filial: TStringField;
    mRotulosCidade_Filial: TStringField;
    mRotulosUF_Filial: TStringField;
    mItensImpFilial: TIntegerField;
    mRotulosPedido_Cliente: TStringField;
    mRotulosNum_Pedido: TIntegerField;
    mRotulosID_Transportadora: TIntegerField;
    mRotulosNome_Transportadora: TStringField;
    mRotulosNum_Volume: TIntegerField;
    mRotulosTotal_Volume: TIntegerField;
    cdsPedido_ConsultaNOME_TRANSPORTADORA: TStringField;
    cdsPedido_ConsultaID_TRANSPORTADORA: TIntegerField;
    mRotulos_ProdTam1: TStringField;
    mRotulos_ProdQtd_Tam1: TIntegerField;
    mRotulos_ProdTam2: TStringField;
    mRotulos_ProdTam3: TStringField;
    mRotulos_ProdTam4: TStringField;
    mRotulos_ProdTam5: TStringField;
    mRotulos_ProdTam6: TStringField;
    mRotulos_ProdTam7: TStringField;
    mRotulos_ProdTam8: TStringField;
    mRotulos_ProdTam9: TStringField;
    mRotulos_ProdQtd_Tam2: TIntegerField;
    mRotulos_ProdQtd_Tam3: TIntegerField;
    mRotulos_ProdQtd_Tam4: TIntegerField;
    mRotulos_ProdQtd_Tam5: TIntegerField;
    mRotulos_ProdQtd_Tam6: TIntegerField;
    mRotulos_ProdQtd_Tam7: TIntegerField;
    mRotulos_ProdQtd_Tam8: TIntegerField;
    mRotulos_ProdQtd_Tam9: TIntegerField;
    cdsProdutoUSA_PRECO_COR: TStringField;
    sdsPedido_ItensTIPO_REG: TStringField;
    cdsPedido_ItensTIPO_REG: TStringField;
    sdsPedidoID_MAPA: TIntegerField;
    cdsPedidoID_MAPA: TIntegerField;
    cdsPedidoImpID_MAPA: TIntegerField;
    cdsPedidoImpNUM_MAPA: TIntegerField;
    cdsPedidoImpNOME_MAPA: TStringField;
    cdsParametrosCONTROLAR_ESTOQUE_SAIDA: TStringField;
    cdsParametrosSENHA_LIBERA_ESTOQUE: TStringField;
    cdsParametrosOPCAO_ESCOLHER_PRECO_COR: TStringField;
    cdsParametrosALERTA_VALE: TStringField;
    cdsParametrosALERTA_VLR_ATRASO: TStringField;
    cdsParametrosUSA_LIMITE_CREDITO: TStringField;
    cdsParametrosSENHA_CREDITO: TStringField;
    sdsPedido_ItensITEM_ORIGINAL: TIntegerField;
    cdsPedido_ItensITEM_ORIGINAL: TIntegerField;
    mItensImpItem_Original: TIntegerField;
    mItensImpFoto_End: TStringField;
    cdsParametrosOPCAO_REL_PED_AGRUPADO: TStringField;
    frxDBDataset15: TfrxDBDataset;
    frxDBDataset16: TfrxDBDataset;
    sdsFilialRelatoriosPOSICAO: TSmallintField;
    cdsFilialRelatoriosPOSICAO: TSmallintField;
    sdsPedido_ItensPERC_DIFERIMENTO: TFloatField;
    cdsPedido_ItensPERC_DIFERIMENTO: TFloatField;
    sdsPedido_ItensVLR_ICMSDIFERIDO: TFloatField;
    cdsPedido_ItensVLR_ICMSDIFERIDO: TFloatField;
    sdsPedido_Itens2: TSQLDataSet;
    sdsPedido_Itens2ID: TIntegerField;
    sdsPedido_Itens2ITEM: TIntegerField;
    sdsPedido_Itens2ID_PRODUTO: TIntegerField;
    sdsPedido_Itens2ID_COR: TFMTBCDField;
    sdsPedido_Itens2TAMANHO: TStringField;
    sdsPedido_Itens2QTD: TFloatField;
    sdsPedido_Itens2QTD_FATURADO: TFloatField;
    sdsPedido_Itens2QTD_RESTANTE: TFloatField;
    sdsPedido_Itens2QTD_CANCELADO: TFloatField;
    sdsPedido_Itens2VLR_DESCONTO: TFloatField;
    sdsPedido_Itens2CANCELADO: TStringField;
    sdsPedido_Itens2DTENTREGA: TDateField;
    sdsPedido_Itens2FATURADO: TStringField;
    sdsPedido_Itens2DTFATURADO: TDateField;
    sdsPedido_Itens2COD_PRODUTO_CLIENTE: TStringField;
    sdsPedido_Itens2TIPO: TStringField;
    sdsPedido_Itens2UNIDADE: TStringField;
    sdsPedido_Itens2NUMOS: TStringField;
    sdsPedido_Itens2PERC_DESCONTO: TFloatField;
    sdsPedido_Itens2VLR_FRETE: TFloatField;
    sdsPedido_Itens2BASE_ICMS: TFloatField;
    sdsPedido_Itens2VLR_ICMS: TFloatField;
    sdsPedido_Itens2BASE_ICMSTRANSF: TFloatField;
    sdsPedido_Itens2PERC_TRANSF: TFloatField;
    sdsPedido_Itens2VLR_TRANSF: TFloatField;
    sdsPedido_Itens2VLR_IPI: TFloatField;
    sdsPedido_Itens2BASE_ICMSSIMPLES: TFloatField;
    sdsPedido_Itens2VLR_ICMSSIMPLES: TFloatField;
    sdsPedido_Itens2PERC_ICMSSIMPLES: TFloatField;
    sdsPedido_Itens2BASE_ICMSSUBST: TFloatField;
    sdsPedido_Itens2VLR_ICMSSUBST: TFloatField;
    sdsPedido_Itens2VLR_DESCONTORATEIO: TFloatField;
    sdsPedido_Itens2ID_CFOP: TIntegerField;
    sdsPedido_Itens2ID_CSTIPI: TIntegerField;
    sdsPedido_Itens2ID_CSTICMS: TIntegerField;
    sdsPedido_Itens2PERC_ICMS: TFloatField;
    sdsPedido_Itens2PERC_IPI: TFloatField;
    sdsPedido_Itens2REFERENCIA: TStringField;
    sdsPedido_Itens2NOMEPRODUTO: TStringField;
    sdsPedido_Itens2OBS_COMPLEMENTAR: TStringField;
    sdsPedido_Itens2CALCULARICMSSOBREIPI: TStringField;
    sdsPedido_Itens2VLR_UNITARIO: TFloatField;
    sdsPedido_Itens2ID_CONFIG_CFOP: TIntegerField;
    sdsPedido_Itens2VLR_TOTAL: TFloatField;
    sdsPedido_Itens2QTD_AFATURAR: TFloatField;
    sdsPedido_Itens2ID_VARIACAO: TIntegerField;
    sdsPedido_Itens2OBS: TMemoField;
    sdsPedido_Itens2PERC_TRIBICMS: TFloatField;
    sdsPedido_Itens2ID_ATELIER: TIntegerField;
    sdsPedido_Itens2VLR_UNITARIO_ATELIER: TFloatField;
    sdsPedido_Itens2VLR_TOTAL_ATELIER: TFloatField;
    sdsPedido_Itens2DT_ENVIO_ATELIER: TDateField;
    sdsPedido_Itens2DT_RETORNO_ATELIER: TDateField;
    sdsPedido_Itens2VLR_PAGTO_ATELIER: TFloatField;
    sdsPedido_Itens2DT_PAGTO_ATELIER: TDateField;
    sdsPedido_Itens2APROVADO_ORC: TStringField;
    sdsPedido_Itens2MOTIVO_NAO_APROV: TMemoField;
    sdsPedido_Itens2DTAPROVADO_NAO: TDateField;
    sdsPedido_Itens2ID_ORCAMENTO: TIntegerField;
    sdsPedido_Itens2ITEM_ORCAMENTO: TIntegerField;
    sdsPedido_Itens2QTD_LIBERADA: TFloatField;
    sdsPedido_Itens2QTD_PRODUZIDA: TFloatField;
    sdsPedido_Itens2NUM_LOTE: TIntegerField;
    sdsPedido_Itens2NUM_TALAO: TStringField;
    sdsPedido_Itens2GERAR_LOTE: TStringField;
    sdsPedido_Itens2CARIMBO: TStringField;
    sdsPedido_Itens2DTPRODUCAO: TDateField;
    sdsPedido_Itens2ID_NCM: TIntegerField;
    sdsPedido_Itens2TIPO_ORCAMENTO: TStringField;
    sdsPedido_Itens2END_FOTO: TStringField;
    sdsPedido_Itens2ITEM_CLIENTE: TIntegerField;
    sdsPedido_Itens2QTD_PECA: TIntegerField;
    sdsPedido_Itens2GRAVACAO_COM_ERRO: TStringField;
    sdsPedido_Itens2QTD_FUT: TFloatField;
    sdsPedido_Itens2ITEM_COMBINACAO: TIntegerField;
    sdsPedido_Itens2TIPO_REG: TStringField;
    sdsPedido_Itens2ID_MOVESTOQUE: TIntegerField;
    sdsPedido_Itens2GERAR_ESTOQUE: TStringField;
    sdsPedido_Itens2ITEM_ORIGINAL: TIntegerField;
    sdsPedido_Itens2PERC_DIFERIMENTO: TFloatField;
    sdsPedido_Itens2VLR_ICMSDIFERIDO: TFloatField;
    cdsParametrosUSA_COPIA_PEDIDO_ITEM: TStringField;
    cdsParametrosUSA_COPIA_PEDIDO: TStringField;
    cdsCombinacaoID_PRODUTO: TIntegerField;
    cdsCombinacaoNOME: TStringField;
    cdsCombinacaoPRECO_CUSTO: TFloatField;
    cdsCombinacaoID_COR_COMBINACAO: TIntegerField;
    sdsPedido_ItensNOME_COR_COMBINACAO: TStringField;
    cdsPedido_ItensNOME_COR_COMBINACAO: TStringField;
    cdsPedidoImp_ItensID: TIntegerField;
    cdsPedidoImp_ItensITEM: TIntegerField;
    cdsPedidoImp_ItensID_PRODUTO: TIntegerField;
    cdsPedidoImp_ItensID_COR: TFMTBCDField;
    cdsPedidoImp_ItensTAMANHO: TStringField;
    cdsPedidoImp_ItensQTD: TFloatField;
    cdsPedidoImp_ItensQTD_FATURADO: TFloatField;
    cdsPedidoImp_ItensQTD_RESTANTE: TFloatField;
    cdsPedidoImp_ItensQTD_CANCELADO: TFloatField;
    cdsPedidoImp_ItensVLR_DESCONTO: TFloatField;
    cdsPedidoImp_ItensCANCELADO: TStringField;
    cdsPedidoImp_ItensDTENTREGA: TDateField;
    cdsPedidoImp_ItensFATURADO: TStringField;
    cdsPedidoImp_ItensDTFATURADO: TDateField;
    cdsPedidoImp_ItensCOD_PRODUTO_CLIENTE: TStringField;
    cdsPedidoImp_ItensTIPO: TStringField;
    cdsPedidoImp_ItensUNIDADE: TStringField;
    cdsPedidoImp_ItensNUMOS: TStringField;
    cdsPedidoImp_ItensPERC_DESCONTO: TFloatField;
    cdsPedidoImp_ItensVLR_FRETE: TFloatField;
    cdsPedidoImp_ItensBASE_ICMS: TFloatField;
    cdsPedidoImp_ItensVLR_ICMS: TFloatField;
    cdsPedidoImp_ItensBASE_ICMSTRANSF: TFloatField;
    cdsPedidoImp_ItensPERC_TRANSF: TFloatField;
    cdsPedidoImp_ItensVLR_TRANSF: TFloatField;
    cdsPedidoImp_ItensVLR_IPI: TFloatField;
    cdsPedidoImp_ItensBASE_ICMSSIMPLES: TFloatField;
    cdsPedidoImp_ItensVLR_ICMSSIMPLES: TFloatField;
    cdsPedidoImp_ItensPERC_ICMSSIMPLES: TFloatField;
    cdsPedidoImp_ItensBASE_ICMSSUBST: TFloatField;
    cdsPedidoImp_ItensVLR_ICMSSUBST: TFloatField;
    cdsPedidoImp_ItensVLR_DESCONTORATEIO: TFloatField;
    cdsPedidoImp_ItensID_CFOP: TIntegerField;
    cdsPedidoImp_ItensID_CSTIPI: TIntegerField;
    cdsPedidoImp_ItensID_CSTICMS: TIntegerField;
    cdsPedidoImp_ItensPERC_ICMS: TFloatField;
    cdsPedidoImp_ItensPERC_IPI: TFloatField;
    cdsPedidoImp_ItensREFERENCIA: TStringField;
    cdsPedidoImp_ItensNOMEPRODUTO: TStringField;
    cdsPedidoImp_ItensOBS_COMPLEMENTAR: TStringField;
    cdsPedidoImp_ItensCALCULARICMSSOBREIPI: TStringField;
    cdsPedidoImp_ItensVLR_UNITARIO: TFloatField;
    cdsPedidoImp_ItensID_CONFIG_CFOP: TIntegerField;
    cdsPedidoImp_ItensVLR_TOTAL: TFloatField;
    cdsPedidoImp_ItensQTD_AFATURAR: TFloatField;
    cdsPedidoImp_ItensID_VARIACAO: TIntegerField;
    cdsPedidoImp_ItensOBS: TMemoField;
    cdsPedidoImp_ItensPERC_TRIBICMS: TFloatField;
    cdsPedidoImp_ItensID_ATELIER: TIntegerField;
    cdsPedidoImp_ItensVLR_UNITARIO_ATELIER: TFloatField;
    cdsPedidoImp_ItensVLR_TOTAL_ATELIER: TFloatField;
    cdsPedidoImp_ItensDT_ENVIO_ATELIER: TDateField;
    cdsPedidoImp_ItensDT_RETORNO_ATELIER: TDateField;
    cdsPedidoImp_ItensVLR_PAGTO_ATELIER: TFloatField;
    cdsPedidoImp_ItensDT_PAGTO_ATELIER: TDateField;
    cdsPedidoImp_ItensAPROVADO_ORC: TStringField;
    cdsPedidoImp_ItensMOTIVO_NAO_APROV: TMemoField;
    cdsPedidoImp_ItensDTAPROVADO_NAO: TDateField;
    cdsPedidoImp_ItensID_ORCAMENTO: TIntegerField;
    cdsPedidoImp_ItensITEM_ORCAMENTO: TIntegerField;
    cdsPedidoImp_ItensQTD_LIBERADA: TFloatField;
    cdsPedidoImp_ItensQTD_PRODUZIDA: TFloatField;
    cdsPedidoImp_ItensNUM_LOTE: TIntegerField;
    cdsPedidoImp_ItensNUM_TALAO: TStringField;
    cdsPedidoImp_ItensGERAR_LOTE: TStringField;
    cdsPedidoImp_ItensCARIMBO: TStringField;
    cdsPedidoImp_ItensDTPRODUCAO: TDateField;
    cdsPedidoImp_ItensID_NCM: TIntegerField;
    cdsPedidoImp_ItensTIPO_ORCAMENTO: TStringField;
    cdsPedidoImp_ItensEND_FOTO: TStringField;
    cdsPedidoImp_ItensITEM_CLIENTE: TIntegerField;
    cdsPedidoImp_ItensQTD_PECA: TIntegerField;
    cdsPedidoImp_ItensGRAVACAO_COM_ERRO: TStringField;
    cdsPedidoImp_ItensQTD_FUT: TFloatField;
    cdsPedidoImp_ItensITEM_COMBINACAO: TIntegerField;
    cdsPedidoImp_ItensTIPO_REG: TStringField;
    cdsPedidoImp_ItensID_MOVESTOQUE: TIntegerField;
    cdsPedidoImp_ItensGERAR_ESTOQUE: TStringField;
    cdsPedidoImp_ItensITEM_ORIGINAL: TIntegerField;
    cdsPedidoImp_ItensPERC_DIFERIMENTO: TFloatField;
    cdsPedidoImp_ItensVLR_ICMSDIFERIDO: TFloatField;
    cdsPedidoImp_ItensLOCALIZACAO: TStringField;
    cdsPedidoImp_ItensNOME_MARCA: TStringField;
    cdsPedidoImp_ItensCOMPRIMENTO: TFloatField;
    cdsPedidoImp_ItensLARGURA: TFloatField;
    cdsPedidoImp_ItensALTURA: TFloatField;
    cdsPedidoImp_ItensVLR_KG: TFloatField;
    cdsPedidoImp_ItensQTD_TIPO: TFloatField;
    cdsPedidoImp_ItensVLR_UNITARIO_TIPO: TFloatField;
    cdsPedidoImp_ItensVLR_TOTAL_TIPO: TFloatField;
    cdsPedidoImp_ItensDIAMETRO: TFloatField;
    cdsPedidoImp_ItensDIAMETRO_EXT: TFloatField;
    cdsPedidoImp_ItensDIAMETRO_INT: TFloatField;
    cdsPedidoImp_ItensPAREDE: TFloatField;
    cdsPedidoImp_ItensPESO: TFloatField;
    cdsPedidoImp_ItensCOMPLEMENTO_NOME: TStringField;
    cdsPedidoImp_ItensTIPO_ORCAMENTO_1: TStringField;
    cdsPedidoImp_ItensDESCRICAO_TIPO: TStringField;
    cdsPedidoImp_ItensNCM: TStringField;
    cdsPedidoImp_ItensQTD_FUROS: TIntegerField;
    cdsPedidoImp_ItensNOME_COR_COMBINACAO: TStringField;
    cdsPedidoImp_ItenssdsPedidoImp_Cli: TDataSetField;
    mItensImp_TamQtd_Rotulo: TIntegerField;
    cdsPedidoImp_ItensFOTO: TStringField;
    mItensImpCarimbo: TStringField;
    mItensImpCarimboAux: TStringField;
    sdsPrc_Atualiza_DtCompra: TSQLDataSet;
    sdsPedido_ItensCOMPRIMENTO_VOLUME: TFloatField;
    cdsPedido_ItensCOMPRIMENTO_VOLUME: TFloatField;
    sdsPedido_ItensTIPO_ACESSORIO: TStringField;
    cdsPedido_ItensTIPO_ACESSORIO: TStringField;
    sdsPedido_AceTIPO_ACESSORIO: TStringField;
    sdsPedido_AceQTD: TFloatField;
    sdsPedido_AceQTD_FATURADO: TFloatField;
    sdsPedido_AceQTD_RESTANTE: TFloatField;
    sdsPedido_RolTIPO_ACESSORIO: TStringField;
    sdsPedido_RolQTD: TFloatField;
    sdsPedido_RolQTD_FATURADO: TFloatField;
    sdsPedido_RolQTD_RESTANTE: TFloatField;
    cdsPedido_RolTIPO_ACESSORIO: TStringField;
    cdsPedido_RolQTD_FATURADO: TFloatField;
    cdsPedido_RolQTD_RESTANTE: TFloatField;
    cdsPedido_RolQTD: TFloatField;
    cdsPedido_AceTIPO_ACESSORIO: TStringField;
    cdsPedido_AceQTD: TFloatField;
    cdsPedido_AceQTD_FATURADO: TFloatField;
    cdsPedido_AceQTD_RESTANTE: TFloatField;
    cdsOrcamento_AceTIPO_ACESSORIO: TStringField;
    cdsOrcamento_AceQTD: TFloatField;
    cdsOrcamento_AceQTD_FATURADO: TFloatField;
    cdsOrcamento_AceQTD_RESTANTE: TFloatField;
    cdsOrcamento_RolQTD: TFloatField;
    cdsOrcamento_RolQTD_FATURADO: TFloatField;
    cdsOrcamento_RolQTD_RESTANTE: TFloatField;
    cdsOrcamento_RolTIPO_ACESSORIO: TStringField;
    cdsOrcamento_ItensTIPO_ACESSORIO: TStringField;
    cdsOrcamento_ItensCOMPRIMENTO_VOLUME: TFloatField;
    cdsPedidoImp_RolID: TIntegerField;
    cdsPedidoImp_RolITEM: TIntegerField;
    cdsPedidoImp_RolID_PRODUTO: TIntegerField;
    cdsPedidoImp_RolQTD: TFloatField;
    cdsPedidoImp_RolQTD_FATURADO: TFloatField;
    cdsPedidoImp_RolQTD_RESTANTE: TFloatField;
    cdsPedidoImp_RolTIPO_ACESSORIO: TStringField;
    cdsPedidoImp_RolCOMPRIMENTO_VOLUME: TFloatField;
    cdsPedidoImp_RolNOME_PRODUTO: TStringField;
    cdsPedidoImp_AceQTD: TFloatField;
    cdsPedidoImp_AceQTD_FATURADO: TFloatField;
    cdsPedidoImp_AceQTD_RESTANTE: TFloatField;
    cdsPedidoImp_RolVLR_UNITARIO: TFloatField;
    cdsPedidoImp_RolVLR_TOTAL: TFloatField;
    cdsAcessoriosREFERENCIA: TStringField;
    cdsPedidoImp_AceCANCELADO: TStringField;
    cdsPedidoImp_AceUNIDADE: TStringField;
    cdsPedidoImp_AceREFERENCIA: TStringField;
    cdsPedidoImp_AceNOMEPRODUTO: TStringField;
    cdsPedidoImp_AceTIPO_ACESSORIO: TStringField;
    sdsPedido_AceCANCELADO: TStringField;
    sdsPedido_AceREFERENCIA: TStringField;
    sdsPedido_AceNOMEPRODUTO: TStringField;
    sdsPedido_AceTIPO: TStringField;
    sdsPedido_AceTIPO_ORCAMENTO: TStringField;
    sdsPedido_AceTIPO_REG: TStringField;
    cdsPedido_AceCANCELADO: TStringField;
    cdsPedido_AceREFERENCIA: TStringField;
    cdsPedido_AceNOMEPRODUTO: TStringField;
    cdsPedido_AceTIPO: TStringField;
    cdsPedido_AceTIPO_ORCAMENTO: TStringField;
    cdsPedido_AceTIPO_REG: TStringField;
    sdsPedido_RolCANCELADO: TStringField;
    sdsPedido_RolDTENTREGA: TDateField;
    sdsPedido_RolTIPO: TStringField;
    sdsPedido_RolUNIDADE: TStringField;
    sdsPedido_RolREFERENCIA: TStringField;
    sdsPedido_RolNOMEPRODUTO: TStringField;
    cdsPedido_RolCANCELADO: TStringField;
    cdsPedido_RolDTENTREGA: TDateField;
    cdsPedido_RolTIPO: TStringField;
    cdsPedido_RolUNIDADE: TStringField;
    cdsPedido_RolREFERENCIA: TStringField;
    cdsPedido_RolNOMEPRODUTO: TStringField;
    sdsPedido_AceUNIDADE: TStringField;
    cdsPedido_AceUNIDADE: TStringField;
    cdsAcessoriosUNIDADE: TStringField;
    cdsAcessoriosID_NCM: TIntegerField;
    cdsOrcamento_AceUNIDADE: TStringField;
    cdsOrcamento_AceID_NCM: TIntegerField;
    cdsOrcamento_RolUNIDADE: TStringField;
    cdsOrcamento_RolID_NCM: TIntegerField;
    sdsPedido_AceID_NCM: TIntegerField;
    cdsPedido_AceID_NCM: TIntegerField;
    sdsPedido_RolID_NCM: TIntegerField;
    cdsPedido_RolID_NCM: TIntegerField;
    sdsPedido_AceAPROVADO_ORC: TStringField;
    sdsPedido_RolAPROVADO_ORC: TStringField;
    cdsPedido_AceAPROVADO_ORC: TStringField;
    cdsPedido_RolAPROVADO_ORC: TStringField;
    mOrcamento_ItensNome_Grupo: TStringField;
    qProdutoID_GRUPO: TIntegerField;
    cdsOrcamento_AceNOMEPRODUTO: TStringField;
    cdsOrcamento_AceREFERENCIA: TStringField;
    cdsOrcamento_RolREFERENCIA: TStringField;
    cdsOrcamento_RolNOMEPRODUTO: TStringField;
    sdsDuplicataTITULO_CARTORIO: TStringField;
    cdsDuplicataTITULO_CARTORIO: TStringField;
    mRotulos_ProdCarimbo: TStringField;
    mRotulos_ProdCarimboAux: TStringField;
    mRotulos_TamCarimbo: TStringField;
    mRotulos_TamCarimboAux: TStringField;
    sdsPedido_ItensQTD_LANCAR_ESTOQUE: TFloatField;
    cdsPedido_ItensQTD_LANCAR_ESTOQUE: TFloatField;
    sdsPedido_Item_TipoVLR_DOBRA: TFloatField;
    cdsPedido_Item_TipoVLR_DOBRA: TFloatField;
    cdsOrcamento_ItensQTD_LANCAR_ESTOQUE: TFloatField;
    cdsParametrosREPETIR_ULTIMO_ITEM_PED: TStringField;
    sdsPedidoID_LOCAL_ESTOQUE: TIntegerField;
    cdsPedidoID_LOCAL_ESTOQUE: TIntegerField;
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
    cdsParametrosUSA_LOCAL_ESTOQUE: TStringField;
    sdsPedidoAPROVADO_PED: TStringField;
    cdsPedidoAPROVADO_PED: TStringField;
    cdsParametrosUSA_APROVACAO_PED: TStringField;
    cdsPedido_ConsultaAPROVADO_PED: TStringField;
    cdsParametrosUSA_APROVACAO_OC_FORN: TStringField;
    cdsPedidoImpAPROVADO_PED: TStringField;
    qPessoa_FiscalDESC_SUFRAMA_PIS_COFINS: TStringField;
    qPessoa_FiscalDESC_SUFRAMA_ICMS: TStringField;
    qPessoa_FiscalDESC_SUFRAMA_IPI: TStringField;
    qPessoa_FiscalOBS_LEI_SUFRAMA: TStringField;
    qPessoa_FiscalOBS_LEI_DADOS_ADICIONAIS: TStringField;
    qPessoa_FiscalID_CST_ICMS_SUFRAMA: TIntegerField;
    qPessoa_FiscalID_CST_PIS_COFINS_SUFRAMA: TIntegerField;
    qPessoa_FiscalID_CST_IPI_SUFRAMA: TIntegerField;
    cdsCFOPUSA_REGRA_ORGAO_PUBLICO: TStringField;
    cdsParametrosUSA_PERC_ORGAO_PUBLICO: TStringField;
    cdsParametrosUSA_PERC_ORGAO_PUBLICO_IMP: TStringField;
    cdsClienteORGAO_PUBLICO: TStringField;
    cdsParametrosUSA_ADIANTAMENTO_PEDIDO: TStringField;
    sdsPedido_ItensPERC_COMISSAO: TFloatField;
    cdsPedido_ItensPERC_COMISSAO: TFloatField;
    cdsParametrosTIPO_COMISSAO_PROD: TStringField;
    cdsProdutoPERC_COMISSAO: TFloatField;
    cdsParametrosID_CONTA_PADRAO_ADI: TIntegerField;
    cdsParametrosID_TIPO_COBRANCA_PADRAO_ADI: TIntegerField;
    qProduto_UFPERC_REDUCAO_ICMS: TFloatField;
    qParametros_Usuario: TSQLQuery;
    qParametros_UsuarioID: TIntegerField;
    qParametros_UsuarioUSUARIO: TStringField;
    qParametros_UsuarioTIPO_REG_PRODUTO_PADRAO: TStringField;
    qParametros_UsuarioTIPO_CONSULTA_PRODUTO_PADRAO: TStringField;
    qParametros_UsuarioMOSTRAR_CODIGO_PROD_ANT: TStringField;
    qParametros_UsuarioMOSTRAR_TOTAL_PEDIDO: TStringField;
    cdsPedido_ConsultaDTAPROVADO: TDateField;
    sdsPedidoOBS_NOTA: TStringField;
    cdsPedidoOBS_NOTA: TStringField;
    cdsParametrosUSA_OBS_PEDIDO_NOTA: TStringField;
    sdsPedido_ItensDTEXPEDICAO: TDateField;
    sdsPedido_ItensDTFATURA: TDateField;
    cdsPedido_ItensDTEXPEDICAO: TDateField;
    cdsPedido_ItensDTFATURA: TDateField;
    qParametros_Ped: TSQLQuery;
    qParametros_PedID: TIntegerField;
    qParametros_PedFATURAR_PED_INTEGRAL: TStringField;
    qParametros_PedUSA_DTEXPEDICAO: TStringField;
    cdsParametrosIMP_NFE_REF_PROD: TStringField;
    qParametros_PedIMP_REF_COD_PEDIDO: TStringField;
    sdsMetas_Acum: TSQLDataSet;
    sdsMetas_AcumID_VENDEDOR: TIntegerField;
    sdsMetas_AcumANO: TIntegerField;
    sdsMetas_AcumMES: TIntegerField;
    sdsMetas_AcumVALOR: TFloatField;
    dspMetas_Acum: TDataSetProvider;
    cdsMetas_Acum: TClientDataSet;
    cdsMetas_AcumID_VENDEDOR: TIntegerField;
    cdsMetas_AcumANO: TIntegerField;
    cdsMetas_AcumMES: TIntegerField;
    cdsMetas_AcumVALOR: TFloatField;
    cdsPedido_ConsultaVLR_IPI: TFloatField;
    cdsClienteVLR_LIMITE_COMPRA: TFloatField;
    qParametros_Fin: TSQLQuery;
    qParametros_FinID: TIntegerField;
    qParametros_FinCONTROLAR_DUP_USUARIO: TStringField;
    qParametros_FinUSA_METAS_VENDEDOR: TStringField;
    qParametros_FinUSA_LIMITE_COMPRAS: TStringField;
    sdsMetas_AcumANO_MES: TStringField;
    cdsMetas_AcumANO_MES: TStringField;
    sdsDuplicataPERC_BASE_COMISSAO: TFloatField;
    cdsDuplicataPERC_BASE_COMISSAO: TFloatField;
    qParametros_NFe: TSQLQuery;
    qParametros_NFeID: TIntegerField;
    qParametros_NFeSOMAR_IPI_NO_ICMS: TStringField;
    sdsPedido_ItensPERC_ICMS_FCP: TFloatField;
    sdsPedido_ItensPERC_ICMS_UF_DEST: TFloatField;
    sdsPedido_ItensPERC_ICMS_PARTILHA: TFloatField;
    sdsPedido_ItensVLR_ICMS_FCP: TFloatField;
    sdsPedido_ItensVLR_ICMS_UF_DEST: TFloatField;
    sdsPedido_ItensVLR_ICMS_UF_REMET: TFloatField;
    sdsPedido_ItensPERC_ICMS_INTER: TFloatField;
    cdsPedido_ItensPERC_ICMS_FCP: TFloatField;
    cdsPedido_ItensPERC_ICMS_UF_DEST: TFloatField;
    cdsPedido_ItensPERC_ICMS_PARTILHA: TFloatField;
    cdsPedido_ItensVLR_ICMS_FCP: TFloatField;
    cdsPedido_ItensVLR_ICMS_UF_DEST: TFloatField;
    cdsPedido_ItensVLR_ICMS_UF_REMET: TFloatField;
    cdsPedido_ItensPERC_ICMS_INTER: TFloatField;
    qIcmsPartilha: TSQLQuery;
    qIcmsPartilhaANO: TIntegerField;
    qIcmsPartilhaPERC_DESTINO: TFloatField;
    cdsClienteTIPO_CONSUMIDOR: TSmallintField;
    cdsClienteTIPO_CONTRIBUINTE: TSmallintField;
    cdsUFPERC_CP: TFloatField;
    sdsPedidoVLR_ICMS_FCP: TFloatField;
    sdsPedidoVLR_ICMS_UF_DEST: TFloatField;
    sdsPedidoVLR_ICMS_UF_REMET: TFloatField;
    cdsPedidoVLR_ICMS_FCP: TFloatField;
    cdsPedidoVLR_ICMS_UF_DEST: TFloatField;
    cdsPedidoVLR_ICMS_UF_REMET: TFloatField;
    cdsPedidoImpVLR_ICMS_FCP: TFloatField;
    cdsPedidoImpVLR_ICMS_UF_DEST: TFloatField;
    cdsPedidoImpVLR_ICMS_UF_REMET: TFloatField;
    cdsFilialCALCULAR_DIFAL: TStringField;
    qParametros_PedUSA_NUM_PEDIDO_POR_FILIAL: TStringField;
    cdsFilialNUM_PEDIDO_ULT: TIntegerField;
    cdsFilialNUM_ORCAMENTO_ULT: TIntegerField;
    cdsFilialNUM_OC_ULT: TIntegerField;
    cdsContasGERAR_BOLETO: TStringField;
    cdsContasGERAR_DEPOSITO: TStringField;
    cdsPedido_ParclkDeposito: TStringField;
    cdsPedido_ParclkGerarBoleto: TStringField;
    qParametros_FinCONTROLAR_BANCO_REM_DEP: TStringField;
    qParametros_PedID_CONDPGTO_PRIMEIRO_PED: TIntegerField;
    sdsPedidoNOTIFICACAO: TIntegerField;
    cdsPedidoNOTIFICACAO: TIntegerField;
    sdsPedidoIMPRESSO: TStringField;
    cdsPedidoIMPRESSO: TStringField;
    qCarimbo: TSQLQuery;
    qCarimboCARIMBO: TStringField;
    qCarimboCARIMBO_CLI: TStringField;
    qCarimboCARIMBO_PRO_CLI: TStringField;
    mItensImpNome_Material: TStringField;
    qConsumo: TSQLQuery;
    qConsumoID: TIntegerField;
    qConsumoREFERENCIA: TStringField;
    qConsumoNOME_PRODUTO: TStringField;
    qConsumoID_COR_COMBINACAO: TIntegerField;
    qConsumoNOME_COMBINACAO: TStringField;
    qConsumoID_MATERIAL: TIntegerField;
    qConsumoQTD_CONSUMO: TFloatField;
    qConsumoTIPO_CONSUMO: TStringField;
    qConsumoITEM_CONSUMO: TIntegerField;
    qConsumoNOME_MATERIAL: TStringField;
    qConsumoTRANSFER: TStringField;
    qConsumoID_GRADE_MAT: TIntegerField;
    qConsumoID_FORNECEDOR: TIntegerField;
    qConsumoID_COR_MAT: TIntegerField;
    qConsumoNOME_COR: TStringField;
    mItensImp_TamTam_Matriz: TStringField;
    cdsPedidoImp_ItensTAM_MATRIZ: TStringField;
    mItensImpImp_Continua: TStringField;
    mRotulos2: TClientDataSet;
    mRotulos2Nome_Filial: TStringField;
    mRotulos2DtEntrega: TDateField;
    mRotulos2Nome_Cliente: TStringField;
    mRotulos2Pedido_Cliente: TStringField;
    mRotulos2Num_OS: TStringField;
    mRotulos2Referencia: TStringField;
    mRotulos2Nome_Cor: TStringField;
    mRotulos2Material: TStringField;
    mRotulos2Tamanho: TStringField;
    mRotulos2Tam_Matriz: TStringField;
    mRotulos2Qtd: TIntegerField;
    mRotulos2Num_Rotulo: TIntegerField;
    mRotulos2Qtd_Rotulo: TIntegerField;
    mRotulos2Carimbo: TStringField;
    mRotulos2CarimboAux: TStringField;
    dsmRotulos2: TDataSource;
    frxDBDataset17: TfrxDBDataset;
    mAuxImp: TClientDataSet;
    dsmAuxImp: TDataSource;
    mAuxImpTotalItens: TIntegerField;
    mAuxImpID_Pedido: TIntegerField;
    frxDBDataset18: TfrxDBDataset;
    mItensImpImp_Cabecalho: TStringField;
    mAuxImpItemAux: TIntegerField;
    mItensImpItem_Imp: TIntegerField;
    sdsConsumo: TSQLDataSet;
    dspConsumo: TDataSetProvider;
    cdsConsumo: TClientDataSet;
    cdsConsumoID: TIntegerField;
    cdsConsumoREFERENCIA: TStringField;
    cdsConsumoNOME_PRODUTO: TStringField;
    cdsConsumoID_COR_COMBINACAO: TIntegerField;
    cdsConsumoNOME_COMBINACAO: TStringField;
    cdsConsumoID_MATERIAL: TIntegerField;
    cdsConsumoQTD_CONSUMO: TFloatField;
    cdsConsumoTIPO_CONSUMO: TStringField;
    cdsConsumoITEM_CONSUMO: TIntegerField;
    cdsConsumoNOME_MATERIAL: TStringField;
    cdsConsumoTRANSFER: TStringField;
    cdsConsumoID_GRADE_MAT: TIntegerField;
    cdsConsumoID_COR_MAT: TIntegerField;
    cdsConsumoNOME_COR: TStringField;
    cdsConsumoID_FORNECEDOR: TIntegerField;
    qConsumo_Tam: TSQLQuery;
    qConsumo_TamQTD_CONSUMO: TFloatField;
    dsmConsumo_Mat: TDataSource;
    mConsumo_Mat: TClientDataSet;
    mConsumo_MatID_Material: TIntegerField;
    mConsumo_MatID_Cor: TIntegerField;
    mConsumo_MatNome_Material: TStringField;
    mConsumo_MatNome_Cor: TStringField;
    mConsumo_MatQtd_Consumo: TFloatField;
    mConsumo_MatTamanho: TStringField;
    frxDBDataset19: TfrxDBDataset;
    mAuxImpNum_Pedido: TIntegerField;
    qParametros_NFeSOMAR_IPI_NO_ICM_TC: TStringField;
    cdsFilialENDLOGO_ROTULO: TStringField;
    mRotulos2EndLogo_Rotulo: TStringField;
    mAuxImpEndLogo_Rotulo: TStringField;
    mItensImpNome_Material2: TStringField;
    mItensImpCor_Mat1: TStringField;
    mItensImpCor_Mat2: TStringField;
    mItensImpNome_Material1: TStringField;
    sdsPedidoTIPO_STATUS: TStringField;
    cdsPedidoTIPO_STATUS: TStringField;
    sdsPedido_Cancelado: TSQLDataSet;
    sdsPedido_CanceladoID: TIntegerField;
    sdsPedido_CanceladoITEM: TIntegerField;
    sdsPedido_CanceladoITEM_CANC: TIntegerField;
    sdsPedido_CanceladoDATA: TDateField;
    sdsPedido_CanceladoMOTIVO: TStringField;
    sdsPedido_CanceladoQTD: TFloatField;
    sdsPedido_CanceladoUSUARIO: TStringField;
    sdsPedido_CanceladoDTUSUARIO: TDateField;
    sdsPedido_CanceladoHRUSUARIO: TTimeField;
    sdsPedido_CanceladoID_MOVESTOQUE: TIntegerField;
    dspPedido_Cancelado: TDataSetProvider;
    cdsPedido_Cancelado: TClientDataSet;
    cdsPedido_CanceladoID: TIntegerField;
    cdsPedido_CanceladoITEM: TIntegerField;
    cdsPedido_CanceladoITEM_CANC: TIntegerField;
    cdsPedido_CanceladoDATA: TDateField;
    cdsPedido_CanceladoMOTIVO: TStringField;
    cdsPedido_CanceladoQTD: TFloatField;
    cdsPedido_CanceladoUSUARIO: TStringField;
    cdsPedido_CanceladoDTUSUARIO: TDateField;
    cdsPedido_CanceladoHRUSUARIO: TTimeField;
    cdsPedido_CanceladoID_MOVESTOQUE: TIntegerField;
    dsPedido_Cancelado: TDataSource;
    qParametros_PedUSA_PROCESSO: TStringField;
    mItensImp_Rot: TClientDataSet;
    dsmItensImp_Rot: TDataSource;
    mItensImp_RotItem: TIntegerField;
    mItensImp_RotQtd1: TIntegerField;
    mItensImp_RotQtd2: TIntegerField;
    mItensImp_RotQtd3: TIntegerField;
    mItensImp_RotQtd4: TIntegerField;
    mItensImp_RotQtd5: TIntegerField;
    mItensImp_RotQtd6: TIntegerField;
    mItensImp_RotQtd7: TIntegerField;
    mItensImp_RotQtd8: TIntegerField;
    mItensImp_RotQtd9: TIntegerField;
    mItensImp_RotQtd10: TIntegerField;
    mItensImp_RotQtd11: TIntegerField;
    mItensImp_RotQtd12: TIntegerField;
    mItensImp_RotQtd13: TIntegerField;
    mItensImp_RotQtd14: TIntegerField;
    mItensImp_RotQtd15: TIntegerField;
    mItensImp_RotQtd16: TIntegerField;
    mItensImp_RotQtd17: TIntegerField;
    mItensImp_RotQtdTotal: TIntegerField;
    mItensImp_RotItem_Rot: TIntegerField;
    frxDBDataset20: TfrxDBDataset;
    sdsPedidoID_ATELIER: TIntegerField;
    cdsPedidoID_ATELIER: TIntegerField;
    sdsPedidoOBS_ROTULO: TStringField;
    cdsPedidoOBS_ROTULO: TStringField;
    cdsPedidoImpNOME_ATELIER: TStringField;
    cdsPedidoImpID_ATELIER: TIntegerField;
    cdsPedidoImpOBS_ROTULO: TStringField;
    mRotulos2Obs_Rotulo: TStringField;
    cdsPedido_ConsultaOBS_ROTULO: TStringField;
    sdsPedidoROTULO_IMP: TStringField;
    cdsPedidoROTULO_IMP: TStringField;
    qParametros_PedCONTROLAR_ROT_IMPRESSO: TStringField;
    mAuxImpRotulo_Imp: TStringField;
    cdsPedido_ConsultaROTULO_IMP: TStringField;
    cdsPedidoImpROTULO_IMP: TStringField;
    cdsPedido_ConsultaDESCRICAO_STATUS: TStringField;
    sdsPedidoUSUARIO: TStringField;
    sdsPedidoDTUSUARIO: TDateField;
    sdsPedidoHRUSUARIO: TTimeField;
    cdsPedidoUSUARIO: TStringField;
    cdsPedidoDTUSUARIO: TDateField;
    cdsPedidoHRUSUARIO: TTimeField;
    cdsPedidoImpUSUARIO: TStringField;
    cdsPedido_ConsultaUSUARIO: TStringField;
    mRotulos2Item_Original: TIntegerField;
    mItensImp_RotQtd_Folha: TIntegerField;
    mItensImpNome_Produto2: TStringField;
    mItensImp_RotNum_Folha: TIntegerField;
    qParametros_OC: TSQLQuery;
    qParametros_OCID: TIntegerField;
    qParametros_OCOBS_OC: TMemoField;
    qParametros_PedEXIGIR_NUM_PED_CLIENTE: TStringField;
    sdsPedidoGERA_ENTRADA_NO_PEDIDO: TStringField;
    cdsPedidoGERA_ENTRADA_NO_PEDIDO: TStringField;
    cdsPedidoImp_ItensPICTOGRAMA: TStringField;
    mRotulos_ProdPictograma: TStringField;
    cdsProdutoPICTOGRAMA: TStringField;
    cdsPedidoImp_ItensVLR_TOTAL_PARCIAL: TFloatField;
    cdsPedidoImp_ItensVLR_DESCONTO_PARCIAL: TFloatField;
    cdsPedidoImp_ItensVLR_FRETE_PARCIAL: TFloatField;
    cdsPedidoImp_ItensVLR_ICMS_PARCIAL: TFloatField;
    cdsPedidoImp_ItensVLR_TRANSF_PARCIAL: TFloatField;
    cdsPedidoImp_ItensVLR_IPI_PARCIAL: TFloatField;
    cdsPedidoImp_ItensVLR_ICMSSIMPLES_PARCIAL: TFloatField;
    cdsPedidoImp_ItensVLR_ICMSSUBST_PARCIAL: TFloatField;
    cdsPedidoImp_ItensVLR_DESCONTO_RATEIO_PARCIAL: TFloatField;
    cdsPedidoImp_ItensVLR_ICMSDIFERIDO_PARCIAL: TFloatField;
    cdsPedidoImp_ItensVLR_ICMS_FCP_PARCIAL: TFloatField;
    cdsPedidoImp_ItensVLR_ICMS_UF_DEST_PARCIAL: TFloatField;
    cdsPedidoImp_ItensVLR_ICMS_UF_REMET_PARCIAL: TFloatField;
    cdsPedidoImp_ItensVLR_DESCONTORATEIO_PARCIAL: TFloatField;
    cdsPedidoImp_ItensBASE_ICMSSUBST_PARCIAL: TFloatField;
    cdsPedidoImp_ItensVLR_ICMS_FCP: TFloatField;
    cdsPedidoImp_ItensVLR_ICMS_UF_DEST: TFloatField;
    cdsPedidoImp_ItensVLR_ICMS_UF_REMET: TFloatField;
    qParametros_PedCONTROLAR_VLR_ENTRADA: TStringField;
    qParametros_PedMOSTRAR_TERCEIRO: TStringField;
    sdsPrc_Atualiza_DtEntrega: TSQLDataSet;
    cdsParametrosUSA_PRODUTO_CLIENTE: TStringField;
    qParametros_Prod: TSQLQuery;
    qParametros_ProdUSA_PRODUTO_FILIAL: TStringField;
    qParametros_Geral: TSQLQuery;
    qParametros_GeralUSAR_PESSOA_FILIAL: TStringField;
    cdsPedidoImp_ItensNOME_ATELIER: TStringField;
    mItensImpID_Atelier: TIntegerField;
    mItensImpNome_Atelier: TStringField;
    mItensImpNaoImprimir: TStringField;
    sdsPedidoVLR_DUPLICATA: TFloatField;
    cdsPedidoVLR_DUPLICATA: TFloatField;
    sdsPedido_ItensVLR_DUPLICATA: TFloatField;
    sdsPedido_ItensGERAR_DUPLICATA: TStringField;
    cdsPedido_ItensVLR_DUPLICATA: TFloatField;
    cdsPedido_ItensGERAR_DUPLICATA: TStringField;
    qParametros_OCUSAR_GERAR_COBRANCA: TStringField;
    cdsPedidoImpVLR_DUPLICATA: TFloatField;
    cdsPedidoImp_ItensVLR_DUPLICATA: TFloatField;
    cdsPedidoImp_ItensGERAR_DUPLICATA: TStringField;
    cdsPedidoImp_ItensVLR_DUPLICATA_PARCIAL: TFloatField;
    cdsPedido_ConsultaVLR_DUPLICATA: TFloatField;
    mEtiqueta_NavDtEmissao: TDateField;
    sdsDuplicataID_TERMINAL: TIntegerField;
    cdsDuplicataID_TERMINAL: TIntegerField;
    qParametros_PedIMP_IPI_DEPOIS_VLR: TStringField;
    cdsPedidoImp_ItensIMP_ROTULO_PROD: TStringField;
    mItensImpImp_Rotulo: TStringField;
    qParametros_UsuarioSENHA_PEDIDO: TStringField;
    qParametros_UsuarioSENHA_CREDITO: TStringField;
    sdsDuplicataVLR_MULTA: TFloatField;
    cdsDuplicataVLR_MULTA: TFloatField;
    sdsDuplicata_HistVLR_MULTA: TFloatField;
    cdsDuplicata_HistVLR_MULTA: TFloatField;
    qParametros_GeralGRAVAR_HIST_SENHA: TStringField;
    mSenha: TClientDataSet;
    mSenhaSenha: TStringField;
    mSenhaItem: TIntegerField;
    mSenhaTipo_Alt: TStringField;
    mSenhaTipo_Doc: TStringField;
    mSenhaSenha_Pertence: TStringField;
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
    sdsPedido_ItensVLR_DESCONTO_CALC: TFloatField;
    cdsPedido_ItensVLR_DESCONTO_CALC: TFloatField;
    cdsPedidoImp_ItensVLR_TOTAL_CALC: TFloatField;
    cdsPedidoImp_ItensVLR_DESCONTO_CALC: TFloatField;
    sdsChapa: TSQLDataSet;
    dspChapa: TDataSetProvider;
    cdsChapa: TClientDataSet;
    dsChapa: TDataSource;
    cdsChapaID: TIntegerField;
    cdsChapaNOME: TStringField;
    cdsChapaTIPO_REG: TStringField;
    cdsChapaVLR_UNITARIO: TFloatField;
    sdsPedido_Item_TipoID_CHAPA: TIntegerField;
    cdsPedido_Item_TipoID_CHAPA: TIntegerField;
    sdsPedido_Item_Qtd: TSQLDataSet;
    sdsPedido_Item_QtdID: TIntegerField;
    sdsPedido_Item_QtdITEM: TIntegerField;
    sdsPedido_Item_QtdQTD: TFloatField;
    sdsPedido_Item_QtdMOTIVO: TStringField;
    sdsPedido_Item_QtdDTUSUARIO: TDateField;
    sdsPedido_Item_QtdUSUARIO: TStringField;
    dspPedido_Item_Qtd: TDataSetProvider;
    cdsPedido_Item_Qtd: TClientDataSet;
    dsPedido_Item_Qtd: TDataSource;
    cdsPedido_Item_QtdID: TIntegerField;
    cdsPedido_Item_QtdITEM: TIntegerField;
    cdsPedido_Item_QtdQTD: TFloatField;
    cdsPedido_Item_QtdMOTIVO: TStringField;
    cdsPedido_Item_QtdDTUSUARIO: TDateField;
    cdsPedido_Item_QtdUSUARIO: TStringField;
    qParametros_PedCONS_PREENCHER_DTINI: TStringField;
    qParametros_NFeSOMAR_FRETE_ICMS_NAC: TStringField;
    qParametros_NFeSOMAR_FRETE_NO_ICMS_TC: TStringField;
    sdsPedidoQTD_LIBERADA: TFloatField;
    sdsPedidoQTD_CONFERIDO: TFloatField;
    cdsPedidoQTD_LIBERADA: TFloatField;
    cdsPedidoQTD_CONFERIDO: TFloatField;
    qParametros_PedUSA_CONFERENCIA: TStringField;
    qParametros_PedOPCAO_CONSULTA: TStringField;
    cdsPedido_ConsultaQTD_LIBERADA: TFloatField;
    cdsPedido_ConsultaQTD_CONFERIDO: TFloatField;
    mOrcamento_ItensVlr_Desconto: TFloatField;
    mOrcamento_ItensPerc_Desconto: TFloatField;
    cdsPedidoImpNOME_CLI_CONS: TStringField;
    qParametros_ProdUSA_DESC_MAXIMO: TStringField;
    cdsProdutoPERC_DESC_MAX: TFloatField;
    sdsPedidoVLR_DESCONTO_ITEM: TFloatField;
    cdsPedidoVLR_DESCONTO_ITEM: TFloatField;
    sdsPedidoAPLICAR_DESC_POR: TStringField;
    cdsPedidoAPLICAR_DESC_POR: TStringField;
    qParametros_PedUSA_DESC_VAREJO: TStringField;
    qParametros_PedUSA_OS_REMESSA: TStringField;
    qParametros_PedDESABILITAR_OC_PED: TStringField;
    cdsProdutoID_CFOP_NFCE: TIntegerField;
    cdsFilialID_CFOP_NFCE_PADRAO: TIntegerField;
    qParametros_GeralEMPRESA_VAREJO: TStringField;
    mOrcamento_ItensPerc_Comissao: TFloatField;
    cdsOrcamento_ItensPERC_COMISSAO: TFloatField;
    qParametros_PedMOSTRAR_ALT_DT_ENTREGA: TStringField;
    qParametros_FinSENHA_LIBERAR_DESC: TStringField;
    qParametros_UsuarioMOSTRAR_PED_USUARIO: TStringField;
    qParametros_FinCONTROLE_DIG_PRECO: TStringField;
    qParametros_UsuarioALT_PRECO_PED: TStringField;
    cdsFilialUSA_NFCE: TStringField;
    sdsPedidoTIPO_ATENDIMENTO: TSmallintField;
    cdsPedidoTIPO_ATENDIMENTO: TSmallintField;
    sdsPedido_Cupom: TSQLDataSet;
    cdsPedido_Cupom: TClientDataSet;
    sdsPedido_CupomID: TIntegerField;
    sdsPedido_CupomENDERECO: TStringField;
    sdsPedido_CupomNUM_END: TStringField;
    sdsPedido_CupomBAIRRO: TStringField;
    sdsPedido_CupomID_CIDADE: TIntegerField;
    sdsPedido_CupomDDD: TStringField;
    sdsPedido_CupomFONE: TStringField;
    sdsPedido_CupomCEP: TStringField;
    sdsPedido_CupomEMAIL: TStringField;
    sdsPedido_CupomPLACA: TStringField;
    sdsPedido_CupomUFPLACA: TStringField;
    sdsPedido_CupomTIPO_FRETE: TStringField;
    cdsPedidosdsPedido_Cupom: TDataSetField;
    cdsPedido_CupomID: TIntegerField;
    cdsPedido_CupomENDERECO: TStringField;
    cdsPedido_CupomNUM_END: TStringField;
    cdsPedido_CupomBAIRRO: TStringField;
    cdsPedido_CupomID_CIDADE: TIntegerField;
    cdsPedido_CupomDDD: TStringField;
    cdsPedido_CupomFONE: TStringField;
    cdsPedido_CupomCEP: TStringField;
    cdsPedido_CupomEMAIL: TStringField;
    cdsPedido_CupomPLACA: TStringField;
    cdsPedido_CupomUFPLACA: TStringField;
    cdsPedido_CupomTIPO_FRETE: TStringField;
    dsPedido_Cupom: TDataSource;
    sdsPedido_CupomCOMPLEMENTO: TStringField;
    cdsPedido_CupomCOMPLEMENTO: TStringField;
    sdsCidade: TSQLDataSet;
    dspCidade: TDataSetProvider;
    cdsCidade: TClientDataSet;
    dsCidade: TDataSource;
    cdsCidadeID: TIntegerField;
    cdsCidadeNOME: TStringField;
    cdsCidadeUF: TStringField;
    cdsCidadeCODMUNICIPIO: TStringField;
    cdsCidadeID_PROVEDOR: TIntegerField;
    cdsCidadeLINKNFSE: TStringField;
    cdsCidadeFONE_PREFEITURA: TStringField;
    cdsCidadeSITE_PREFEITURA: TStringField;
    cdsCidadeEND_LOGO_PREFEITURA: TStringField;
    qParametros_PedUSAR_VEND_USUARIO: TStringField;
    cdsClienteUSUARIO_LOG: TStringField;
    qUsuario: TSQLQuery;
    qUsuarioCODIGO: TIntegerField;
    qParametros_PedINF_CONSUMIDOR_AUT: TStringField;
    sdsPedidoNUM_ORDPROD: TIntegerField;
    cdsPedidoNUM_ORDPROD: TIntegerField;
    cdsPedido_ConsultaNUM_ORDPROD: TIntegerField;
    qParametros_PedCONFERENCIA_SIMPLES: TStringField;
    cdsPedido_ConsultaCONFERIDO: TStringField;
    sdsPedido_ItensDTCONFERENCIA: TDateField;
    sdsPedido_ItensHRCONFERENCIA: TTimeField;
    sdsPedido_ItensUSUARIO_CONF: TStringField;
    cdsPedido_ItensDTCONFERENCIA: TDateField;
    cdsPedido_ItensHRCONFERENCIA: TTimeField;
    cdsPedido_ItensUSUARIO_CONF: TStringField;
    sdsPedidoPERC_ICMS_FRETE: TFloatField;
    cdsPedidoPERC_ICMS_FRETE: TFloatField;
    sdsPedido_ItensVLR_ICMSFRETE: TFloatField;
    cdsPedido_ItensVLR_ICMSFRETE: TFloatField;
    sdsPedido_ItensQTD_SOBRA_OC: TFloatField;
    cdsPedido_ItensQTD_SOBRA_OC: TFloatField;
    qParametros_ProdID_PRODUTO_GENERICO: TIntegerField;
    sdsPedidoImp_Serv: TSQLDataSet;
    dspPedidoImp_Serv: TDataSetProvider;
    cdsPedidoImp_Serv: TClientDataSet;
    dsPedidoImp_Serv: TDataSource;
    cdsPedidoImp_ServID: TIntegerField;
    cdsPedidoImp_ServITEM: TIntegerField;
    cdsPedidoImp_ServID_SERVICO_INT: TIntegerField;
    cdsPedidoImp_ServNOME_SERVICO_INT: TStringField;
    cdsPedidoImp_ServQTD: TIntegerField;
    cdsPedidoImp_ServVLR_UNITARIO: TFloatField;
    cdsPedidoImp_ServVLR_TOTAL: TFloatField;
    cdsPedidoImp_ServCOMPLEMENTO_SERVICO: TStringField;
    cdsPedidoImp_ServUNIDADE: TStringField;
    cdsPedidoImp_ServAPROVADO_ORC: TStringField;
    qParametros_GeralEND_ASSINATURA: TStringField;
    cdsClienteINSC_SUFRAMA: TStringField;
    cdsProdutoSPED_TIPO_ITEM: TStringField;
    cdsProdutoID_CSTICMS_BRED: TIntegerField;
    cdsParametrosUSA_SPED: TStringField;
    cdsPedido_ConsultaNOME_VENDEDOR: TStringField;
    sdsPedido_ItensTIPO_SERVICO: TStringField;
    cdsPedido_ItensTIPO_SERVICO: TStringField;
    cdsOperacao_NotaTIPO_NOTA: TStringField;
    sdsPedido_ItensID_SERVICO_INT: TIntegerField;
    sdsPedido_ItensNOME_SERVICO_INT: TStringField;
    cdsPedido_ItensID_SERVICO_INT: TIntegerField;
    cdsPedido_ItensNOME_SERVICO_INT: TStringField;
    qParametros_PedUSA_OPERACAO_SERV: TStringField;
    sdsPedidoNUM_OS: TIntegerField;
    cdsPedidoNUM_OS: TIntegerField;
    qParametros_PedINF_LUCRATIVIDADE: TStringField;
    sdsPedido_ItensPRECO_CUSTO: TFloatField;
    sdsPedido_ItensPERC_MARGEM: TFloatField;
    sdsPedido_ItensPERC_MARGEM2: TFloatField;
    cdsPedido_ItensPRECO_CUSTO: TFloatField;
    cdsPedido_ItensPERC_MARGEM: TFloatField;
    cdsPedido_ItensPERC_MARGEM2: TFloatField;
    cdsProdutoPERC_MARGEMLUCRO: TFloatField;
    sdsPedido_ItensID_OS_SERV: TIntegerField;
    sdsPedido_ItensNUM_OS_SERV: TIntegerField;
    cdsPedido_ItensID_OS_SERV: TIntegerField;
    cdsPedido_ItensNUM_OS_SERV: TIntegerField;
    cdsPedidoImp_ItensNUM_OS_SERV: TIntegerField;
    cdsPedidoImp_ItensNOME_SERVICO_INT: TStringField;
    cdsPedidoImpNOME_OPERACAO: TStringField;
    cdsPedido_ConsultaNOME_OPERACAO: TStringField;
    sdsPedido_ItensID_SERVICO: TIntegerField;
    cdsPedido_ItensID_SERVICO: TIntegerField;
    sdsServico: TSQLDataSet;
    dspServico: TDataSetProvider;
    cdsServico: TClientDataSet;
    cdsServicoID: TIntegerField;
    cdsServicoCODIGO: TStringField;
    cdsServicoNOME: TStringField;
    cdsServicoTIPO_AS: TStringField;
    cdsServicoNOME_SERVICO: TStringField;
    cdsServicoCNAE: TStringField;
    cdsServicoPERC_ISS: TFloatField;
    cdsServicoID_ATIVIDADE_CID: TIntegerField;
    cdsServicoCODIGO_NBS: TStringField;
    dsServico: TDataSource;
    cdsFilialID_SERVICO_SINT: TIntegerField;
    cdsFilialID_SERVICO_PAD: TIntegerField;
    cdsFilialCOD_SERVICO_SINT: TStringField;
    cdsPedidoImpTIPO_NOTA: TStringField;
    qParametros_ProdPRODUTO_PRECO_COR: TStringField;
    cdsCombinacaoPRECO_VENDA: TFloatField;
    qParametros_PedUSA_NUM_TALAO: TStringField;
    qParametros_PedUSA_COD_CLIENTE: TStringField;
    qProduto_Cli: TSQLQuery;
    qProduto_CliID: TIntegerField;
    qProduto_CliCOD_MATERIAL_FORN: TStringField;
    qProduto_CliID_FORNECEDOR: TIntegerField;
    cdsPedido_ConsultaGEROU_PRODUCAO: TStringField;
    qParametros_Lote: TSQLQuery;
    qParametros_LoteLOTE_TEXTIL: TStringField;
    qParametros_Est: TSQLQuery;
    qParametros_EstID: TIntegerField;
    qParametros_EstUSA_RESERVA: TStringField;
    dsPedidoImp_Acu: TDataSource;
    cdsPedidoImp_Acu: TClientDataSet;
    dspPedidoImp_Acu: TDataSetProvider;
    sdsPedidoImp_Acu: TSQLDataSet;
    cdsPedidoImp_AcuID_PRODUTO: TIntegerField;
    cdsPedidoImp_AcuID_COR: TFMTBCDField;
    cdsPedidoImp_AcuREFERENCIA: TStringField;
    cdsPedidoImp_AcuQTD_RESTANTE: TFloatField;
    cdsPedidoImp_AcuQTD: TFloatField;
    qPessoa_FiscalID_CST_ICMS_SUFRAMA_ST: TIntegerField;
    sdsPedidoEMAIL_COMPRAS: TStringField;
    cdsPedidoEMAIL_COMPRAS: TStringField;
    qParametros_PedUSA_EMAIL_NO_PED: TStringField;
    cdsOrcamentoEMAIL_COMPRAS: TStringField;
    sdsPedidoDTRECEBIMENTO: TDateField;
    cdsPedidoDTRECEBIMENTO: TDateField;
    qParametros_PedMOSTRAR_DT_REC: TStringField;
    cdsPedido_ConsultaDTRECEBIMENTO: TDateField;
    cdsPedidoImpDTRECEBIMENTO: TDateField;
    sdsPedido_ItensNUM_NOTA_ENT: TIntegerField;
    sdsPedido_ItensSERIE_NOTA_ENT: TStringField;
    cdsPedido_ItensNUM_NOTA_ENT: TIntegerField;
    cdsPedido_ItensSERIE_NOTA_ENT: TStringField;
    cdsPedidoImp_ItensNUM_NOTA_ENT: TIntegerField;
    cdsPedidoImp_ItensSERIE_NOTA_ENT: TStringField;
    qParametros_PedUSAR_COPIA_OS: TStringField;
    mEtiqueta_NavProd_Cliente: TStringField;
    mEtiqueta_NavNumOS: TStringField;
    sdsPedidoDDD: TIntegerField;
    sdsPedidoFONE: TStringField;
    cdsPedidoDDD: TIntegerField;
    cdsPedidoFONE: TStringField;
    qParametros_PedENVIA_SMS: TStringField;
    cdsClienteDDDCELULAR: TIntegerField;
    cdsClienteCELULAR: TStringField;
    sdsPedido_ItensENCERADO: TStringField;
    cdsPedido_ItensENCERADO: TStringField;
    qParametros_PedUSA_UNIDADE_VENDA: TStringField;
    sdsPedido_ItensCONV_UNIDADE: TFloatField;
    sdsPedido_ItensUNIDADE_PROD: TStringField;
    cdsPedido_ItensCONV_UNIDADE: TFloatField;
    cdsPedido_ItensUNIDADE_PROD: TStringField;
    cdsPedidoImp_ItensCONV_UNIDADE: TFloatField;
    cdsPedidoImp_ItensUNIDADE_PROD: TStringField;
    cdsPedidoImp_ItensENCERADO: TStringField;
    mEtiqueta_NavEncerado: TStringField;
    qParametros_ProdUSA_TAM_INDIVIDUAL: TStringField;
    cdsProdutoTAMANHO: TStringField;
    mEtiqueta_NavItem_Ped: TIntegerField;
    qParametros_OCUSA_NOMEPROD_FORN_OC: TStringField;
    cdsPedidoImpHRUSUARIO: TTimeField;
    cdsPedidoImpID_FUNCIONARIO_1: TIntegerField;
    mEtiqueta_NavUnidade: TStringField;
    cdsClienteID_GRUPO: TIntegerField;
    qGrupoPessoa: TSQLQuery;
    qGrupoPessoaNOME: TStringField;
    qParametros_PedMOSTRAR_FONE: TStringField;
    qParametros_PedMOSTRAR_GRUPO_PESSOA: TStringField;
    sdsGrupo_Pessoa: TSQLDataSet;
    dspGrupo_Pessoa: TDataSetProvider;
    cdsGrupo_Pessoa: TClientDataSet;
    dsGrupo_Pessoa: TDataSource;
    cdsGrupo_PessoaID: TIntegerField;
    cdsGrupo_PessoaNOME: TStringField;
    sdsPedidoID_GRUPO_PESSOA: TIntegerField;
    cdsPedidoID_GRUPO_PESSOA: TIntegerField;
    cdsPedidoImpNOME_GRUPO_PESSOA: TStringField;
    cdsPedido_ConsultaCONT_TALAO: TIntegerField;
    cdsPedido_ConsultaCONT_TALAO2: TIntegerField;
    qParametros_UsuarioALT_IT_PED_COM_OP: TStringField;
    qParametros_PedUSA_OBS_ETIQUETA: TStringField;
    sdsPedido_ItensOBS_ETIQUETA: TStringField;
    cdsPedido_ItensOBS_ETIQUETA: TStringField;
    cdsProdutoQTD_EMBALAGEM: TFloatField;
    cdsParametrosID_OPERACAO_VENDA: TIntegerField;
    sdsPedido_ItensQTD_CAIXA: TIntegerField;
    cdsPedido_ItensQTD_CAIXA: TIntegerField;
    sdsPedido_ItensNUM_LOTE_CONTROLE: TStringField;
    cdsPedido_ItensNUM_LOTE_CONTROLE: TStringField;
    qParametros_ProdUSA_LOTE_PROD: TStringField;
    qProduto_Lote: TSQLQuery;
    qProduto_LoteNUM_LOTE_CONTROLE: TStringField;
    qProduto_LotePRECO_CUSTO: TFloatField;
    qProduto_LotePRECO_VENDA: TFloatField;
    qProduto_LoteQTD: TFMTBCDField;
    cdsPedidoImp_ItensQTD_CAIXA: TIntegerField;
    cdsPedidoImp_ItensNUM_LOTE_CONTROLE: TStringField;
    mImpPed: TClientDataSet;
    dsmImpPed: TDataSource;
    mImpPedID_Pedido: TIntegerField;
    mImpPedNum_Pedido: TIntegerField;
    mImpPedNome_Via: TStringField;
    mImpPedImp_Preco: TStringField;
    frxImpPed: TfrxDBDataset;
    mRotulos_ProdItem_Original: TIntegerField;
    mRotulosID_Pedido: TIntegerField;
    qEtiqImp: TSQLQuery;
    qEtiqImpCONTADOR: TIntegerField;
    cdsPedidoImpPESSOA: TStringField;
    cdsProdutoQTD_PECA_EMB: TIntegerField;
    qParametros_PedPEDIDO_LOJA: TStringField;
    cdsPedidoImp_ItensPESO_VAREJO: TFloatField;
    cdsOrcamentoDDD: TIntegerField;
    cdsOrcamentoFONE: TStringField;
    qParametros_GeralUSA_TRIANGULAR: TStringField;
    cdsPedido_ItensclVlr_Total_Custo: TFloatField;
    cdsPedido_ItensclVlr_Diferenca: TFloatField;
    qParametros_PedUSA_FINANCEIRO_CONF: TStringField;
    qParametros_UsuarioALT_FINANCEIRO_CONF: TStringField;
    sdsPedidoFINANCEIRO_CONF: TStringField;
    cdsPedidoFINANCEIRO_CONF: TStringField;
    qParametros_UsuarioCONFERE_FINANC: TStringField;
    sdsPedido_ItensCOD_COR_CLIENTE: TStringField;
    sdsPedido_ItensNOME_COR_CLIENTE: TStringField;
    sdsPedido_ItensTAMANHO_CLIENTE: TStringField;
    cdsPedido_ItensCOD_COR_CLIENTE: TStringField;
    cdsPedido_ItensNOME_COR_CLIENTE: TStringField;
    cdsPedido_ItensTAMANHO_CLIENTE: TStringField;
    cdsPedidoImpIMP_COR_CLIENTE: TStringField;
    cdsPedidoImp_ItensCOD_COR_CLIENTE: TStringField;
    cdsPedidoImp_ItensNOME_COR_CLIENTE: TStringField;
    cdsPedidoImp_ItensTAMANHO_CLIENTE: TStringField;
    cdsClienteIMP_COR_CLIENTE: TStringField;
    qProdForn2: TSQLQuery;
    qProdForn2TAMANHO_CLIENTE: TStringField;
    qProdForn2COD_COR_FORN: TStringField;
    qProdForn2NOME_COR_FORN: TStringField;
    qProdForn2COD_MATERIAL_FORN: TStringField;
    qParametros_UsuarioALT_PROD_CLIENTE: TStringField;
    cdsPedido_ConsultaSELECIONADO: TStringField;
    qParametros_PedUSA_RETIRADA: TStringField;
    cdsPedidoImpDDD_PEDIDO: TStringField;
    cdsPedidoImpFONE_PEDIDO: TStringField;
    cdsPedido_ConsultaVALOR_CUSTO: TFloatField;
    qParametros: TSQLQuery;
    qParametrosOPCAO_DTENTREGAPEDIDO: TStringField;
    cdsClienteMOSTRAR_AVISO: TStringField;
    cdsClienteOBS_AVISO: TStringField;
    cdsPedidoImpOBS_AVISO: TStringField;
    cdsPedidoImpMOSTRAR_AVISO: TStringField;
    qProdutoPRECO_CUSTO: TFloatField;
    qParametros_ProdMOSTRA_PROD_TPRECO: TStringField;
    qParametros_PedUSA_OPERACAO_AUT: TStringField;
    cdsFilialFINALIDADE_PADRAO: TStringField;
    cdsProdutoREF2: TStringField;
    qParametros_ProdUSA_REF2: TStringField;
    sdsPedidoVLR_MAO_OBRA: TFloatField;
    cdsPedidoVLR_MAO_OBRA: TFloatField;
    cdsPedidoImpVLR_MAO_OBRA: TFloatField;
    qParametros_NFeIMP_OC: TStringField;
    frxDuplicata: TfrxDBDataset;
    cdsPedido_ConsultaIMPRESSO: TStringField;
    cdsPedidoImpCNPJ_CPF_ATELIER: TStringField;
    cdsPedidoImpPESSOA_ATELIER: TStringField;
    sdsPedido_ItensFOTO: TStringField;
    cdsPedido_ItensFOTO: TStringField;
    qParametros_PedUSA_ITEM_RED: TStringField;
    cdsPedidoImp_ItensFOTO_1: TStringField;
    qParametros_PedPERMITE_ALT_NOMEPROD: TStringField;
    qParametros_PedACEITA_SEM_PRECO: TStringField;
    sdsPedido_Item_TipoID_MATERIAL: TIntegerField;
    cdsPedido_Item_TipoID_MATERIAL: TIntegerField;
    cdsPedidoImp_ItensID_MATERIAL: TIntegerField;
    mOrcamento_ItensFoto: TStringField;
    cdsOrcamento_ItensFOTO: TStringField;
    sdsPedido_Item_TipoTIPO_MAT: TStringField;
    cdsPedido_Item_TipoTIPO_MAT: TStringField;
    cdsOrcamento_Item_TipoID_MATERIAL: TIntegerField;
    cdsOrcamento_Item_TipoTIPO_MAT: TStringField;
    sdsPedido_Item_TipoESPESSURA: TFloatField;
    cdsPedido_Item_TipoESPESSURA: TFloatField;
    sdsTipo_Material: TSQLDataSet;
    dspTipo_Material: TDataSetProvider;
    cdsTipo_Material: TClientDataSet;
    dsTipo_Material: TDataSource;
    sdsPedido_Item_TipoDENSIDADE: TFloatField;
    cdsPedido_Item_TipoDENSIDADE: TFloatField;
    qProdutoNOME_GRUPO: TStringField;
    sdsPedido_Item_TipoID_TIPO_MATERIAL: TIntegerField;
    cdsPedido_Item_TipoID_TIPO_MATERIAL: TIntegerField;
    cdsTipo_MaterialID: TIntegerField;
    cdsTipo_MaterialNOME: TStringField;
    cdsTipo_MaterialDENSIDADE: TFloatField;
    cdsTipo_MaterialVALOR: TFloatField;
    cdsTipo_MaterialUNIDADE: TStringField;
    cdsPedidoImp_ItensID_TIPO_MATERIAL: TIntegerField;
    cdsPedidoImp_ItensNOME_TIPO_MATERIAL: TStringField;
    cdsPedidoImp_ItensESPESSURA: TFloatField;
    cdsPedidoImp_ItensDENSIDADE: TFloatField;
    qPessoa_TipoMat: TSQLQuery;
    qPessoa_TipoMatCODIGO: TIntegerField;
    qPessoa_TipoMatITEM: TIntegerField;
    qPessoa_TipoMatID_TIPO_MATERIAL: TIntegerField;
    qPessoa_TipoMatESPESSURA: TFloatField;
    qParametros_PedIMP_ORDEM_ITEM_PED: TStringField;
    sdsPedido_ItensVLR_MATERIAL: TFloatField;
    cdsPedido_ItensVLR_MATERIAL: TFloatField;
    qParametros_GeralUSA_TIPO_MATERIAL: TStringField;
    qParametros_ProdPERC_CALCULO_PED: TFloatField;
    sdsPedido_ItensTEMPO: TFloatField;
    sdsPedido_ItensDTBAIXA: TDateField;
    cdsPedido_ItensTEMPO: TFloatField;
    cdsPedido_ItensDTBAIXA: TDateField;
    qParametros_PedOBRIGA_USO_DTENTREGA: TStringField;
    sdsDuplicataNGR: TStringField;
    sdsDuplicataAPROVADO: TStringField;
    cdsDuplicataNGR: TStringField;
    cdsDuplicataAPROVADO: TStringField;
    cdsPedidoImpEMAIL_COMPRAS_FORN: TStringField;
    qParametros_ProdGRAVAR_PRIMEIRO_MAT: TStringField;
    cdsCombinacaoOBSMATERIAL: TStringField;
    sdsPedido_Item_TipoFATOR_CALCULO: TFloatField;
    cdsPedido_Item_TipoFATOR_CALCULO: TFloatField;
    cdsPedidoImpNOME_CLIENTE2: TStringField;
    sdsPedido_ItensTEMPO_REAL: TFloatField;
    cdsPedido_ItensTEMPO_REAL: TFloatField;
    sdsPedido_ItensVLR_UNITARIO_REAL: TFloatField;
    sdsPedido_ItensFATOR_CALCULO_REAL: TFloatField;
    cdsPedido_ItensVLR_UNITARIO_REAL: TFloatField;
    cdsPedido_ItensFATOR_CALCULO_REAL: TFloatField;
    qTipoMat: TSQLQuery;
    qTipoMatID: TIntegerField;
    qTipoMatNOME: TStringField;
    qTipoMatDENSIDADE: TFloatField;
    qTipoMatVALOR: TFloatField;
    qTipoMatUNIDADE: TStringField;
    cdsPedido_Item_TipoclNomeTipo_Mat: TStringField;
    cdsProdutoFATOR_CALCULO: TFloatField;
    sdsPedido_Item_TipoVLR_MAQUINA: TFloatField;
    cdsPedido_Item_TipoVLR_MAQUINA: TFloatField;
    sdsPedidoDTVALIDADE: TDateField;
    cdsPedidoDTVALIDADE: TDateField;
    qParametros_PedUSA_DTVALIDADE: TStringField;
    cdsPedidoImpNOME_CONTATO: TStringField;
    qParametros_PedOBS_PEDIDO: TMemoField;
    sdsTab_Preco: TSQLDataSet;
    dspTab_Preco: TDataSetProvider;
    cdsTab_Preco: TClientDataSet;
    cdsTab_PrecoID: TIntegerField;
    cdsTab_PrecoNOME: TStringField;
    cdsTab_PrecoDTCADASTRO: TDateField;
    cdsTab_PrecoOBS: TMemoField;
    cdsTab_PrecoDTINICIAL: TDateField;
    cdsTab_PrecoDTFINAL: TDateField;
    cdsTab_PrecoTABPROMOCIONAL: TStringField;
    dsTab_Preco: TDataSource;
    qParametros_PedUSA_TAB_PRECO: TStringField;
    sdsPedidoNGR: TStringField;
    cdsPedidoNGR: TStringField;
    qParametros_FinUSA_NGR: TStringField;
    sdsPedidoID_TAB_PRECO: TIntegerField;
    cdsPedidoID_TAB_PRECO: TIntegerField;
    qParametros_PedUSA_NUM_PEDIDO_POR_VEND: TStringField;
    sdsPedidoNUM_PEDIDO_VEND: TIntegerField;
    cdsPedidoNUM_PEDIDO_VEND: TIntegerField;
    sdsConsumo_Comb: TSQLDataSet;
    dspConsumo_Comb: TDataSetProvider;
    cdsConsumo_Comb: TClientDataSet;
    dsConsumo_Comb: TDataSource;
    cdsConsumo_CombID_MATERIAL: TIntegerField;
    cdsConsumo_CombID_COR_MAT: TFMTBCDField;
    cdsConsumo_CombMATERIAL: TStringField;
    cdsConsumo_CombNOME_COR: TStringField;
    cdsConsumo_CombQTD_CONSUMO: TFloatField;
    frxConsumo_Comb: TfrxDBDataset;
    qParametros_PedIMP_MATERIAL: TStringField;
    cdsConsumo_CombID_PRODUTO: TIntegerField;
    cdsConsumo_CombID_COR: TFMTBCDField;
    cdsConsumo_CombREFERENCIA: TStringField;
    cdsConsumo_CombNOME_COMBINACAO: TStringField;
    cdsConsumo_CombREF_COMB: TStringField;
    sdsprc_Atualiza_OS_Fat: TSQLDataSet;
    qPedOS: TSQLQuery;
    qPedOSID_OS_SERV: TIntegerField;
    cdsTab_NCMPERC_IPI: TFloatField;
    cdsTab_NCMID_CSTIPI: TIntegerField;
    sdsPedido_ItensTIPO_OS: TStringField;
    cdsPedido_ItensTIPO_OS: TStringField;
    cdsPedidoImpDESC_TIPO_FRETE: TStringField;
    cdsPedidoImp_ItensTIPO_OS: TStringField;
    cdsPedidoImp_ItensDESC_TIPO_OS: TStringField;
    qFilial_Relatorio_Menu: TSQLQuery;
    qFilial_Relatorio_MenuID: TIntegerField;
    qFilial_Relatorio_MenuITEM: TIntegerField;
    qFilial_Relatorio_MenuTIPO: TSmallintField;
    qFilial_Relatorio_MenuCAMINHO: TStringField;
    qFilial_Relatorio_MenuPOSICAO: TSmallintField;
    qFilial_Relatorio_MenuDESCRICAO: TStringField;
    cdsPedidoImpCOMPL_END_CLIENTE: TStringField;
    cdsOrcamento_Item_TipoVLR_DOBRA: TFloatField;
    qParametros_UsuarioPERMITE_CANC_PED_OP: TStringField;
    sdsPedido_Item_TipoALTURA_CORTE: TFloatField;
    sdsPedido_Item_TipoLARGURA_CORTE: TFloatField;
    cdsPedido_Item_TipoALTURA_CORTE: TFloatField;
    cdsPedido_Item_TipoLARGURA_CORTE: TFloatField;
    cdsPedidoImp_ItensALTURA_CORTE: TFloatField;
    cdsPedidoImp_ItensLARGURA_CORTE: TFloatField;
    cdsPedidoImp_ItensCOD_BARRAS: TStringField;
    qParametros_Ser: TSQLQuery;
    qParametros_SerLIB_QTD_PEDIDO: TStringField;
    cdsObs_AuxOBS_PEDIDO: TMemoField;
    cdsPedidoImpEMAIL_FIL: TStringField;
    cdsPedidoImpDDDFAX_FIL: TIntegerField;
    cdsPedidoImpFAX_FIL: TStringField;
    mAuxExcelID_CFOP: TIntegerField;
    mAuxExcelCODCFOP: TStringField;
    mAuxExcelID_NCM: TIntegerField;
    mAuxExcelNCM: TStringField;
    cdsPedido_ConsultaFINANCEIRO_CONF: TStringField;
    qNCM_UFPERC_RED_BASE_ST: TFloatField;
    qParametros_EstVERIFICA_ESTOQUE_ENT_PEDIDO: TStringField;
    sdsPedidoAMOSTRA: TStringField;
    cdsPedidoAMOSTRA: TStringField;
    cdsPedido_ConsultaAMOSTRA: TStringField;
    qParametros_PedUSA_AMOSTRA: TStringField;
    qNCM_UFPERC_RED_BASE_ST_SIMPLES: TFloatField;
    qNCM_UFPERC_RED_MVA_CLI_GERAL: TFloatField;
    qNCM_UFPERC_RED_MVA_CLI_SIMPLES: TFloatField;
    sdsPedido_ItensDIFERENCA_ICMS: TStringField;
    cdsPedido_ItensDIFERENCA_ICMS: TStringField;
    sdsPedido_ItensCAIXINHA: TStringField;
    cdsPedido_ItensCAIXINHA: TStringField;
    qParametros_PedUSA_CAIXINHA: TStringField;
    qCarimboCAIXINHA: TStringField;
    qCarimboCAIXINHA_CLI: TStringField;
    qCarimboCAIXINHA_PRO_CLI: TStringField;
    qParametros_LoteUSA_LOTE_PED_SPROC: TStringField;
    qParametros_NFeSOMAR_FRETE_IPI: TStringField;
    sdsPedidoBASE_IPI: TFloatField;
    cdsPedidoBASE_IPI: TFloatField;
    sdsPedido_ItensBASE_IPI: TFloatField;
    cdsPedido_ItensBASE_IPI: TFloatField;
    qPessoa_FiscalID_CST_ICMS: TIntegerField;
    qNCM_CST: TSQLQuery;
    qNCM_CSTID: TIntegerField;
    qNCM_CSTITEM: TIntegerField;
    qNCM_CSTUF: TStringField;
    qNCM_CSTID_CST_ICMS: TIntegerField;
    qNCM_CSTPERC_FCP: TFloatField;
    qNCM_CSTCOD_CST: TStringField;
    qParametros_NFeCALCULAR_DIFAL: TStringField;
    cdsTab_NCMID_CST_ICMS: TIntegerField;
    cdsTab_CSTICMSPERC_DIFERIMENTO: TFloatField;
    cdsProdutoID_CSTICMS: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsPedidoNewRecord(DataSet: TDataSet);
    procedure cdsPedidoBeforePost(DataSet: TDataSet);
    procedure cdsPedido_ItensNewRecord(DataSet: TDataSet);
    procedure dspPedidoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsPedido_ItensBeforePost(DataSet: TDataSet);
    procedure mOrcamento_ItensBeforePost(DataSet: TDataSet);
    procedure mOrcamento_ItensNewRecord(DataSet: TDataSet);
    procedure mItensImpNewRecord(DataSet: TDataSet);
    procedure mItensImp_TamNewRecord(DataSet: TDataSet);
    procedure cdsPedido_Item_TipoBeforePost(DataSet: TDataSet);
    procedure pedidoImpCalcFields(DataSet: TDataSet);
    procedure frxReport1Preview(Sender: TObject);
    procedure cdsPedido_Item_TipoCalcFields(DataSet: TDataSet);
    procedure cdsPedidoImp_ItensAfterScroll(DataSet: TDataSet);
    procedure mCarimboNewRecord(DataSet: TDataSet);
    procedure frxReport1BeforePrint(Sender: TfrxReportComponent);
    procedure frxDBDataset1First(Sender: TObject);
    procedure frxDBDataset1Next(Sender: TObject);
    procedure cdsPedido_Item_TipoNewRecord(DataSet: TDataSet);
    procedure cdsPedido_Item_QtdNewRecord(DataSet: TDataSet);
    procedure cdsPedido_DescontoBeforeInsert(DataSet: TDataSet);
    procedure cdsPedido_DescontoAfterPost(DataSet: TDataSet);
    procedure cdsPedido_DescontoAfterInsert(DataSet: TDataSet);
    procedure frxImpPedFirst(Sender: TObject);
    procedure frxImpPedNext(Sender: TObject);
    procedure cdsPedido_ItensCalcFields(DataSet: TDataSet);
    procedure cdsDuplicataNewRecord(DataSet: TDataSet);
    procedure cdsPedidoImp_ItensCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    vItem_Desc: Integer;

    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

    procedure prc_Imp_Desconto;

  public
    { Public declarations }
    vMSGErro: String;
    vMsgErroParc: String;
    ctCommand, ctConsulta, ctProduto, ctDuplicata: String;
    ctServico: String;
    ctCliente, ctCFOP: String;
    ctqProximoPedido: String;
    vAliqIcms: Real;
    vSiglaUF: String;
    vID_CFOP, vID_Variacao: Integer;
    vUsarRegraEmpresa: Boolean;
    vItem_Rotulo: Integer;
    vID_Cliente: Integer;
    vID_Vendedor: Integer;
    vPerc_Comissao_Rateio: Real;
    vTipo_Rel_Ped: String; //P=Produção  R=Romaneio Expedição
    vID_Cond_Pagto_Ant: Integer;
    vGravou_OK_Ajuste: Boolean;
    vImpPreco: Boolean;
    vImp_cabecalho : Boolean;
    vID_Operacao : Integer;
    vFinalidade : String;

    vVlr_Unitario_Copia: Real;
    vID_Cor_Copia: Integer;
    vOSRemessa_Copia, vCarimbo_Copia: String;

    vNum_Rel_Fast: Integer;

    //Variáveis JW  19/08/2015
    vLargura, vAltura, vComprimento, vDiametro, vDiametro_Ext, vDiametro_Int, vParede: Real;
    //*************
    vImpPedTerceiro: Boolean;

    //********* ADD
    vFator_Calculo : Real;
    vTempo_Prod_Calc : Real;
    vVlr_Unitario_Calc : Real;
    vQtd_Calc : Real;
    vConfirma_Calc : Boolean;
    vVlr_Maquina_Calc : Real;
    //*********

    procedure prc_Localizar(ID: Integer);
    procedure prc_Inserir;

    procedure prc_Inserir_Itens;

    procedure prc_Abrir_cdsCliente(Tipo: String = 'C');
    procedure prc_Abrir_cdsCFOP(Tipo_Reg: String);
    procedure prc_Abrir_qProduto(ID:Integer);
    procedure Abrir_Duplicatas(ID: Integer);

    procedure prc_Situacao_Orc(ID_Orcamento: Integer);
    procedure prc_Abrir_Produto;
    procedure prc_Abrir_ProdutoLoja(ID : Integer ; Cod_Barra, Referencia : String);
    function fnc_Existe_Fat(ID: Integer): Integer;
    function fnc_Existe_DupPaga(ID: Integer): Integer;
    procedure prc_Abrir_CSTICMS(Tipo: String);
    function fnc_Buscar_Regra_CFOP(ID_CFOP: Integer): Integer;
    function fnc_verificar_CFOP(ID: Integer): Boolean;

    procedure prc_Inserir_Servicos;
    procedure prc_Inserir_Trilhos;
    procedure prc_Inserir_Roldanas;

    procedure prc_Abrir_Acessorios(Tipo: String);
    procedure Abrir_cdsDuplicata(ID: Integer);
    procedure prc_Gravar_mCarimbo(Carimbo,Referencia,Combinacao: String);
    procedure prc_Filtrar_Produto_Cliente(Somente_Filial: Boolean = False);
    procedure prc_Abrir_Servico;

    procedure prc_Gravar_Email_Pessoa(CODIGO: Integer; Email: String);
    procedure prc_Gravar_Telefone(CODIGO: Integer ; DDD: Integer; Fone: string);
  end;

var
  DMCadPedido: TDMCadPedido;

implementation

uses DmdDatabase, uUtilPadrao, LogProvider, uCalculo_Pedido, UDMAprovacao_Ped, StrUtils,
  uGrava_Pedido;

{$R *.dfm}

{ TDMCadCFOP}

procedure TDMCadPedido.prc_Inserir;
var
  vAux: Integer;
  vNumAux: Integer;
begin
  if not cdsPedido.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('PEDIDO',0);

  mSenha.EmptyDataSet;

  cdsPedido.Insert;
  cdsPedidoID.AsInteger         := vAux;
  cdsPedidoFILIAL.AsInteger     := vFilial;
  cdsPedidoDTEMISSAO.AsDateTime := Date;
end;

procedure TDMCadPedido.prc_Localizar(ID: Integer); //-1 é para inclusão
begin
  cdsPedido.Close;
  sdsPedido.CommandText := ctCommand;
  if ID <> 0 then
  begin
    sdsPedido.CommandText := sdsPedido.CommandText + ' WHERE ID = :ID ';
    sdsPedido.ParamByName('ID').AsInteger := ID;
  end;
  cdsPedido.Open;
end;

procedure TDMCadPedido.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand    := sdsPedido.CommandText;
  ctConsulta   := sdsPedido_Consulta.CommandText;
  ctProduto    := sdsProduto.CommandText;
  ctCliente    := sdsCliente.CommandText;
  ctCFOP       := sdsCFOP.CommandText;
  ctServico    := sdsServico.CommandText;
  ctDuplicata  := sdsDuplicata.CommandText;
  vID_Variacao := 0;
  cdsParametros.Close;
  cdsFilial.Close;
  cdsFilial.Open;
  cdsParametros.Open;
  qParametros_Ped.Open;
  qParametros_Fin.Open;
  qParametros.Close;
  qParametros.Open;

  qParametros_NFe.Open;
  qParametros_Prod.Open;
  qParametros_Geral.Open;
  qParametros_Lote.Open;
  qParametros_Est.Open;
  qParametros_Ser.Open;

  //cdsCliente.Open;
  if cdsParametrosUSA_CONTA_ORCAMENTO.AsString = 'S' then
    cdsContaOrcamento.Open;

  if qParametros_PedMOSTRAR_GRUPO_PESSOA.AsString = 'S' then
    cdsGrupo_Pessoa.Open;

  if qParametros_PedUSA_TAB_PRECO.AsString = 'S' then
    cdsTab_Preco.Open;

  if vRotulo then
    cdsCliente.Open
  else
  if not vRotulo then
  begin
    cdsVendedor.Open;
    cdsTransportadora.Open;
    cdsUF.Open;
    cdsTipoCobranca.Open;
    cdsCondPgto.Open;
    cdsContas.Open;
    cdsUnidade.Open;
    cdsTab_CSTIPI.Open;
    cdsTab_NCM.Open;
    cdsOrigem_Prod.Open;
    cdsOperacao_Nota.Open;
    cdsFuncionario.Open;
    cdsObs_Aux.Open;
    cdsLocal_Estoque.Open;

    if (cdsParametrosCONFECCAO.AsString = 'S') or (cdsParametrosEMPRESA_INJETADO.AsString = 'S') then
      cdsAtelier.Open;

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
  end;

  prc_Abrir_Produto;

  if cdsParametrosEMPRESA_AMBIENTES.AsString = 'S' then
  begin
    cdsAcabamento.Open;
    cdsRedondoMod.Open;
    cdsCMoeda.Open;
    cdsFuros.Open;
    cdsFuracao.Open;
    cdsPerfil.Open;
    cdsVidro.Open;
  end
  else
  if cdsParametrosEMPRESA_SUCATA.AsString = 'S' then
    cdsChapa.Open;
  qParametros_Usuario.Close;
  qParametros_Usuario.ParamByName('USUARIO').AsString := vUsuario;
  qParametros_Usuario.Open;
  if qParametros_PedUSA_OPERACAO_SERV.AsString = 'S' then
    cdsServico_Int.Open;
end;

procedure TDMCadPedido.prc_Inserir_Itens;
var
  vItemAux: Integer;
  vID_CFOPAux, vID_Config_CFOPAux: Integer;
  vID_VariacaoAux: Integer;
  vGerar_Lote: String;
  vCarimbo: String;
  vID_Terceiro_Aux: Integer;
begin
  cdsPedido_Itens.Last;
  vItemAux := cdsPedido_ItensITEM.AsInteger;
  if cdsPedido.RecordCount > 0 then
    vGerar_Lote := cdsPedido_ItensGERAR_LOTE.AsString
  else
    vGerar_Lote := 'S';
  if qParametros_PedMOSTRAR_TERCEIRO.AsString = 'I' then
    vID_Terceiro_Aux := cdsPedido_ItensID_ATELIER.AsInteger
  else
  if qParametros_PedMOSTRAR_TERCEIRO.AsString = 'P' then
    vID_Terceiro_Aux := cdsPedidoID_ATELIER.AsInteger;

  if cdsParametrosEMPRESA_SUCATA.AsString = 'S' then
  begin
    cdsPedido_Item_Tipo.Last;
    vLargura      := cdsPedido_Item_TipoLARGURA.AsFloat;
    vAltura       := cdsPedido_Item_TipoALTURA.AsFloat;
    vComprimento  := cdsPedido_Item_TipoCOMPRIMENTO.AsFloat;
    vDiametro     := cdsPedido_Item_TipoDIAMETRO.AsFloat;
    vDiametro_Ext := cdsPedido_Item_TipoDIAMETRO_EXT.AsFloat;
    vDiametro_Int := cdsPedido_Item_TipoDIAMETRO_INT.AsFloat;
    vParede       := cdsPedido_Item_TipoPAREDE.AsFloat;
  end
  else
  begin
    vLargura      := 0;
    vAltura       := 0;
    vComprimento  := 0;
    vDiametro     := 0;
    vDiametro_Ext := 0;
    vDiametro_Int := 0;
    vParede       := 0;
  end;
  if cdsPedido_Itens.RecordCount >= 1 then
  begin
    vID_CFOPAux := cdsPedido_ItensID_CFOP.AsInteger;
    vID_Config_CFOPAux := cdsPedido_ItensID_CONFIG_CFOP.AsInteger;
    vID_VariacaoAux    := cdsPedido_ItensID_VARIACAO.AsInteger;
  end
  else
  begin
    vID_CFOPAux := cdsPedidoID_CFOP.AsInteger;
    vID_Config_CFOPAux := cdsPedidoID_CONFIG_CFOP.AsInteger;
  end;
  vCarimbo := cdsPedido_ItensCARIMBO.AsString;
  cdsPedido_Itens.Insert;
  cdsPedido_ItensID.AsInteger             := cdsPedidoID.AsInteger;
  cdsPedido_ItensITEM.AsInteger           := vItemAux + 1;
  cdsPedido_ItensID_CFOP.AsInteger        := vID_CFOPAux;
  cdsPedido_ItensID_CONFIG_CFOP.AsInteger := vID_Config_CFOPAux;
  cdsPedido_ItensID_VARIACAO.AsInteger    := vID_VariacaoAux;
  if vGerar_Lote <> 'N' then
    cdsPedido_ItensGERAR_LOTE.AsString := 'S'
  else
    cdsPedido_ItensGERAR_LOTE.AsString := vGerar_Lote;
  cdsPedido_ItensCARIMBO.AsString       := vCarimbo;
  cdsPedido_ItensITEM_CLIENTE.AsInteger := cdsPedido_ItensITEM.AsInteger;
  if vID_Terceiro_Aux > 0 then
    cdsPedido_ItensID_ATELIER.AsInteger := vID_Terceiro_Aux;
  cdsPedido_ItensTIPO_OS.AsString := 'OU';
end;

procedure TDMCadPedido.cdsPedidoNewRecord(DataSet: TDataSet);
begin
  cdsPedidoLOCALENTREGA.AsString   := 'N';
  cdsPedidoFILIAL.AsInteger        := 0;
  cdsPedidoVLR_IPI.AsFloat         := 0;
  cdsPedidoVLR_DESCONTO.AsFloat    := 0;
  cdsPedidoVLR_FRETE.AsFloat       := 0;
  cdsPedidoVLR_ICMS.AsFloat        := 0;
  cdsPedidoVLR_ICMSSIMPLES.AsFloat := 0;
  cdsPedidoVLR_ICMSSUBST.AsFloat   := 0;
  cdsPedidoVLR_ITENS.AsFloat       := 0;
  cdsPedidoVLR_SERVICO.AsFloat     := 0;
  cdsPedidoVLR_TOTAL.AsFloat       := 0;
  cdsPedidoVLR_TRANSF.AsFloat      := 0;
  cdsPedidoCALCULARICMSSOBREIPI.AsString := 'N';
  cdsPedidoQTD.AsFloat             := 0;
  cdsPedidoQTD_RESTANTE.AsFloat    := 0;
  cdsPedidoQTD_CANCELADO.AsFloat   := 0;
  cdsPedidoQTD_FATURADO.AsFloat    := 0;
  cdsPedidoTIPO_FRETE.AsString     := '';
  cdsPedidoIMP_OC_NOTA.AsString    := 'S';
  if qParametros_NFeIMP_OC.AsString = 'D' then
    cdsPedidoIMP_OC_NOTA.AsString   := 'N';
  cdsPedidoVLR_ADIANTAMENTO.AsFloat := 0;
  cdsPedidoCANCELADO.AsString      := 'N';
  cdsPedidoDOLAR.AsString          := 'N';
  cdsPedidoAPROVADO_ORC.AsString   := 'P';
  cdsPedidoFRETE_SOMAR.AsString    := 'S';
  if cdsParametrosUSA_APROVACAO_PED.AsString = 'S' then
    cdsPedidoAPROVADO_PED.AsString := 'P'
  else
    cdsPedidoAPROVADO_PED.AsString := 'A';
  cdsPedidoVLR_ICMS_FCP.AsFloat      := 0;
  cdsPedidoVLR_ICMS_UF_DEST.AsFloat  := 0;
  cdsPedidoVLR_ICMS_UF_REMET.AsFloat := 0;
  cdsPedidoNOTIFICACAO.AsInteger     := 0;
  cdsPedidoIMPRESSO.AsString         := 'N';
  cdsPedidoTIPO_STATUS.AsString      := 'C';
  cdsPedidoUSUARIO.AsString          := vUsuario;
  cdsPedidoDTUSUARIO.AsDateTime      := Date;
  cdsPedidoHRUSUARIO.AsDateTime      := Now;
  cdsPedidoGERA_ENTRADA_NO_PEDIDO.AsString := 'N';
  cdsPedidoVLR_DUPLICATA.AsFloat     := 0;
  cdsPedidoQTD_CONFERIDO.AsFloat     := 0;
  cdsPedidoQTD_LIBERADA.AsFloat      := 0;
  cdsPedidoVLR_DESCONTO_ITEM.AsFloat := 0;
  cdsPedidoNGR.AsString              := 'N';
end;

procedure TDMCadPedido.cdsPedidoBeforePost(DataSet: TDataSet);
begin
  if cdsPedidoID_CONDPGTO.AsInteger <= 0 then
    cdsPedidoID_CONDPGTO.Clear;
  if cdsPedidoID_REDESPACHO.AsInteger <= 0 then
    cdsPedidoID_REDESPACHO.Clear;
  if cdsPedidoID_REGIMETRIB.AsInteger <= 0 then
    cdsPedidoID_REGIMETRIB.Clear;
  if cdsPedidoID_TRANSPORTADORA.AsInteger <= 0 then
    cdsPedidoID_TRANSPORTADORA.Clear;
  if cdsPedidoID_VENDEDOR.AsInteger <= 0 then
    cdsPedidoID_VENDEDOR.Clear;
end;

procedure TDMCadPedido.prc_Abrir_cdsCliente(Tipo: String);
begin
  cdsCliente.Close;
  sdsCliente.CommandText := ctCliente + ' WHERE INATIVO = ' + QuotedStr('N');
  if Tipo = 'F' then
    sdsCliente.CommandText := sdsCliente.CommandText + ' AND TP_FORNECEDOR = ' + QuotedStr('S')
  else
    sdsCliente.CommandText := sdsCliente.CommandText + ' AND TP_CLIENTE = ' + QuotedStr('S');
  cdsCliente.Open;
end;

procedure TDMCadPedido.prc_Abrir_cdsCFOP(Tipo_Reg: String);
begin
  cdsCFOP.Close;
  sdsCFOP.CommandText := ctCFOP + ' WHERE T.INATIVO = ' + QuotedStr('N')
                       +  ' AND ENTRADASAIDA = ' + QuotedStr(Tipo_Reg);
  cdsCFOP.Open;
end;

procedure TDMCadPedido.cdsPedido_ItensNewRecord(DataSet: TDataSet);
begin
  cdsPedido_ItensCALCULARICMSSOBREIPI.AsString := 'N';
  cdsPedido_ItensQTD_AFATURAR.AsFloat          := 0;
  cdsPedido_ItensQTD_CANCELADO.AsInteger       := 0;
  cdsPedido_ItensQTD_FATURADO.AsInteger        := 0;
  cdsPedido_ItensQTD_RESTANTE.AsInteger        := 0;
  cdsPedido_ItensVLR_DESCONTO.AsFloat          := 0;
  cdsPedido_ItensVLR_DESCONTORATEIO.AsFloat    := 0;
  cdsPedido_ItensVLR_FRETE.AsFloat             := 0;
  cdsPedido_ItensVLR_ICMS.AsFloat              := 0;
  cdsPedido_ItensVLR_TOTAL.AsFloat             := 0;
  cdsPedido_ItensVLR_UNITARIO.AsFloat          := 0;
  cdsPedido_ItensVLR_TRANSF.AsFloat            := 0;
  cdsPedido_ItensVLR_IPI.AsFloat               := 0;
  cdsPedido_ItensAPROVADO_ORC.AsString         := 'P';
  cdsPedido_ItensQTD_LIBERADA.AsFloat          := 0;
  cdsPedido_ItensQTD_PRODUZIDA.AsFloat         := 0;
  cdsPedido_ItensCANCELADO.AsString            := 'N';
  cdsPedido_ItensCARIMBO.AsString              := '';
  cdsPedido_ItensCAIXINHA.AsString             := '';
  cdsPedido_ItensGRAVACAO_COM_ERRO.AsString    := '';
  cdsPedido_ItensID_VARIACAO.AsInteger         := 0;
  cdsPedido_ItensQTD_FUT.AsInteger             := 0;
  cdsPedido_ItensGERAR_ESTOQUE.AsString        := 'N';
  cdsPedido_ItensTIPO_ACESSORIO.AsString       := 'N';
  cdsPedido_ItensQTD_LANCAR_ESTOQUE.AsInteger  := 0;
  cdsPedido_ItensPERC_ICMS_FCP.AsFloat         := 0;
  cdsPedido_ItensPERC_ICMS_UF_DEST.AsFloat     := 0;
  cdsPedido_ItensPERC_ICMS_PARTILHA.AsFloat    := 0;
  cdsPedido_ItensVLR_ICMS_FCP.AsFloat          := 0;
  cdsPedido_ItensVLR_ICMS_UF_DEST.AsFloat      := 0;
  cdsPedido_ItensVLR_ICMS_UF_REMET.AsFloat     := 0;
  cdsPedido_ItensPERC_ICMS_INTER.AsFloat       := 0;
  cdsPedido_ItensVLR_DUPLICATA.AsFloat         := 0;
  cdsPedido_ItensGERAR_DUPLICATA.AsString      := 'S';
  cdsPedido_ItensQTD_SOBRA_OC.AsFloat          := 0;
  cdsPedido_ItensENCERADO.AsString             := 'N';
  cdsPedido_ItensDIFERENCA_ICMS.AsString       := 'N';
end;

procedure TDMCadPedido.dspPedidoUpdateError(Sender: TObject; DataSet: TCustomClientDataSet;
  E: EUpdateError; UpdateKind: TUpdateKind; var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadPedido.cdsPedido_ItensBeforePost(DataSet: TDataSet);
begin
  if cdsPedido_ItensDT_ENVIO_ATELIER.AsDateTime < 10 then
    cdsPedido_ItensDT_ENVIO_ATELIER.Clear;
  if cdsPedido_ItensDT_RETORNO_ATELIER.AsDateTime < 10 then
    cdsPedido_ItensDT_RETORNO_ATELIER.Clear;
  if cdsPedido_ItensID_NCM.AsInteger <= 0 then
    cdsPedido_ItensID_NCM.Clear;
  if cdsPedido_ItensITEM_CLIENTE.AsInteger <= 0 then
    cdsPedido_ItensITEM_CLIENTE.AsInteger := cdsPedido_ItensITEM.AsInteger;
  if cdsPedido_ItensITEM_ORIGINAL.AsInteger <= 0 then
    cdsPedido_ItensITEM_ORIGINAL.AsInteger := cdsPedido_ItensITEM.AsInteger;
  //26/05/2016
  cdsPedido_ItensQTD_AFATURAR.AsFloat := cdsPedido_ItensQTD_RESTANTE.AsFloat;
end;

function TDMCadPedido.fnc_Existe_Fat(ID: Integer): Integer;
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT COUNT(QTD_FATURADO) EXISTE_FAT FROM PEDIDO_ITEM WHERE QTD_FATURADO > 0 AND ID = ' + IntToStr(ID);
    sds.Open;
    Result := sds.FieldByName('EXISTE_FAT').AsInteger;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TDMCadPedido.mOrcamento_ItensBeforePost(DataSet: TDataSet);
var
  vAprovar_Old, vReprovar_Old: Boolean;
begin
  vAprovar_Old  := mOrcamento_ItensAprovar.OldValue;
  vReprovar_Old := mOrcamento_ItensReprovar.OldValue;
  if (mOrcamento_ItensAprovar.AsBoolean) and (mOrcamento_ItensReprovar.AsBoolean) then
  begin
    mOrcamento_ItensAprovar.AsBoolean  := vAprovar_Old;
    mOrcamento_ItensReprovar.AsBoolean := vReprovar_Old;
  end;
end;

procedure TDMCadPedido.mOrcamento_ItensNewRecord(DataSet: TDataSet);
begin
  mOrcamento_ItensCopiado.AsString := 'N';
end;

procedure TDMCadPedido.prc_Situacao_Orc(ID_Orcamento: Integer);
var
  vSituacao: String;
  sds: TSQLDataSet;
begin
  qSituacao_Orc.Close;
  qSituacao_Orc.ParamByName('ID').AsInteger := ID_Orcamento;
  qSituacao_Orc.Open;

  if (qSituacao_OrcAPROVADO.AsInteger > 0) AND (qSituacao_OrcPENDENTE.AsInteger > 0) then
    vSituacao := 'R'
  else
  if (qSituacao_OrcNAO_APROVADO.AsInteger > 0) AND (qSituacao_OrcPENDENTE.AsInteger > 0) then
    vSituacao := 'P'
  else
  if (qSituacao_OrcAPROVADO.AsInteger > 0) AND (qSituacao_OrcPENDENTE.AsInteger <= 0) then
    vSituacao := 'A'
  else
  if (qSituacao_OrcNAO_APROVADO.AsInteger > 0) AND (qSituacao_OrcPENDENTE.AsInteger <= 0) then
    vSituacao := 'N';

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText   := 'UPDATE PEDIDO SET APROVADO_ORC = ' + QuotedStr(vSituacao) +
                       ' WHERE ID = ' + IntToStr(ID_Orcamento);
  sds.ExecSQL;
end;

procedure TDMCadPedido.mItensImpNewRecord(DataSet: TDataSet);
begin
  mItensImpVlr_Ipi.AsFloat        := 0;
  mItensImpVlr_Total.AsFloat      := 0;
  mItensImpVlr_Unitario.AsFloat   := 0;
  mItensImpQtd.AsFloat            := 0;
  mItensImpImp_Continua.AsString  := 'N';
  mItensImpImp_Cabecalho.AsString := 'N';
  mItensImpNaoImprimir.AsString   := 'N';
end;

procedure TDMCadPedido.mItensImp_TamNewRecord(DataSet: TDataSet);
begin
  mItensImp_TamQtd.AsFloat         := 0;
  mItensImp_TamTam_Matriz.AsString := '';
end;

procedure TDMCadPedido.prc_Abrir_Produto;
begin
  cdsProduto.Close;
  sdsProduto.CommandText := ctProduto;
  sdsProduto.CommandText := sdsProduto.CommandText + ' WHERE INATIVO = ' + QuotedStr('N');
  if vTipo_Pedido = 'P' then
  begin
    if cdsParametrosMOSTRAR_MATERIAL_PED.AsString = 'B' then
      sdsProduto.CommandText := sdsProduto.CommandText + ' AND ((TIPO_REG = ' + QuotedStr('P') + ') OR (TIPO_REG = ' + QuotedStr('S') + '))'
    else
    if cdsParametrosMOSTRAR_MATERIAL_PED.AsString <> 'S' then
      sdsProduto.CommandText := sdsProduto.CommandText + ' AND TIPO_REG = ' + QuotedStr('P');
  end
  else
  if vTipo_Pedido = 'C' then
  begin
    if cdsParametrosNOTA_ENTRADA_MOSTRAR_PROD.AsString = 'P' then
      sdsProduto.CommandText := sdsProduto.CommandText + ' AND TIPO_REG = ' + QuotedStr('P')
    else
    if cdsParametrosNOTA_ENTRADA_MOSTRAR_PROD.AsString = 'M' then
      sdsProduto.CommandText := sdsProduto.CommandText + ' AND TIPO_REG = ' + QuotedStr('M')
  end;
  cdsProduto.Open;
end;

procedure TDMCadPedido.prc_Abrir_ProdutoLoja(ID : Integer ; Cod_Barra, Referencia : String);
begin
  cdsProduto.Close;
  sdsProduto.CommandText := ctProduto;
  if ID > 0 then
    sdsProduto.CommandText := sdsProduto.CommandText + ' WHERE ID = ' + IntToStr(ID)
  else
  if trim(Cod_Barra) <> '' then
    sdsProduto.CommandText := sdsProduto.CommandText + ' WHERE COD_BARRA = ' + QuotedStr(Cod_Barra)
  else
  if trim(Referencia) <> '' then
    sdsProduto.CommandText := sdsProduto.CommandText + ' WHERE REFERENCIA = ' + QuotedStr(Referencia);
  cdsProduto.Open;
end;

procedure TDMCadPedido.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

function TDMCadPedido.fnc_Buscar_Regra_CFOP(ID_CFOP: Integer): Integer;
var
  vTipo_Empresa: String;
  vTipo_Cliente: String;
  vUF_ClienteAux: String;
begin
  vTipo_Cliente := 'G';
  if cdsFilialID.AsInteger <> cdsPedidoFILIAL.AsInteger then
    cdsFilial.Locate('ID',cdsPedidoFILIAL.AsInteger,[loCaseInsensitive]);
  if cdsClienteID_REGIME_TRIB.AsInteger > 0 then
  begin
    qRegime_Trib.Close;
    qRegime_Trib.ParamByName('ID').AsInteger := cdsClienteID_REGIME_TRIB.AsInteger;
    qRegime_Trib.Open;
    if qRegime_TribCODIGO.AsInteger < 3 then
      vTipo_Cliente := 'S';
  end;
  if cdsFilialSIMPLES.AsString = 'S' then
    vTipo_Empresa := 'S'
  else
    vTipo_Empresa := 'G';
  qRegra_CFOP.Close;
  qRegra_CFOP.ParamByName('ID').AsInteger              := ID_CFOP;
  qRegra_CFOP.ParamByName('TIPO_EMPRESA').AsString     := vTipo_Empresa;
  qRegra_CFOP.ParamByName('TIPO_CLIENTE').AsString     := vTipo_Cliente;
  qRegra_CFOP.ParamByName('PESSOA_CLIENTE').AsString   := cdsClientePESSOA.AsString;
  qRegra_CFOP.ParamByName('TIPO_CONSUMIDOR').AsInteger := cdsClienteTIPO_CONSUMIDOR.AsInteger;
  qRegra_CFOP.Open;
  if not qRegra_CFOP.IsEmpty then
    Result := qRegra_CFOPITEM.AsInteger
  else
    Result := 0;
end;

procedure TDMCadPedido.prc_Abrir_CSTICMS(Tipo: String);
begin
  cdsTab_CSTICMS.Close;
  sdsTab_CSTICMS.CommandText := 'SELECT * FROM TAB_CSTICMS ';
  if (trim(Tipo) <> '') and (Tipo <> '2') then
    sdsTab_CSTICMS.CommandText := sdsTab_CSTICMS.CommandText + ' WHERE TIPO = ' + QuotedStr(Tipo);
  cdsTab_CSTICMS.Open;
end;

function TDMCadPedido.fnc_verificar_CFOP(ID: Integer): Boolean;
var
  vCodigo: String;
  vMsgErroAux: String;
begin
  Result := False;
  if (id > 0) then
  begin
    if cdsCFOPID.AsInteger <> ID then
      cdsCFOP.Locate('ID',ID,[loCaseInsensitive]);
    vCodigo := cdsCFOPCODCFOP.AsString;
  end
  else
    vCodigo := '';
  vMsgErroAux := '';
  if vCodigo <> '' then
  begin
    if ((Copy(vCodigo,1,1) <> '5') and (Copy(vCodigo,1,1) <> '6') and (Copy(vCodigo,1,1) <> '7')) then
      vMsgErroAux := vMsgErroAux + #13 + 'Natureza é de saída!'
    else
    if cdsPedidoID_CLIENTE.AsInteger > 0 then
    begin
      if (vSiglaUF <> cdsFilialUF.AsString) and ((Copy(vCodigo,1,1) = '1') or (Copy(vCodigo,1,1) = '5')) then
        vMsgErroAux := vMsgErroAux + #13 + 'Natureza inválida para o estado!'
      else
      if (vSiglaUF = cdsFilialUF.AsString) and ((Copy(vCodigo,1,1) <> '5') and (Copy(vCodigo,1,1) <> '1')) then
        vMsgErroAux := vMsgErroAux + #13 + 'Natureza inválida para o estado!';
    end;
  end;
  if trim(vMsgErroAux) <> '' then
  begin
    MessageDlg(vMsgErroAux, mtError, [mbOk], 0);
    Exit;
  end;
  Result := True;
end;

procedure TDMCadPedido.cdsPedido_Item_TipoBeforePost(DataSet: TDataSet);
begin
  if cdsPedido_Item_TipoTIPO_ORCAMENTO.AsString = 'C' then
    cdsPedido_Item_TipoDESCRICAO_TIPO.AsString := 'CHAPA'
  else
  if cdsPedido_Item_TipoTIPO_ORCAMENTO.AsString = 'R' then
    cdsPedido_Item_TipoDESCRICAO_TIPO.AsString := 'REDONDO'
  else
  if cdsPedido_Item_TipoTIPO_ORCAMENTO.AsString = 'T' then
    cdsPedido_Item_TipoDESCRICAO_TIPO.AsString := 'TUBO'
  else
  if cdsPedido_Item_TipoTIPO_ORCAMENTO.AsString = 'P' then
    cdsPedido_Item_TipoDESCRICAO_TIPO.AsString := 'PORTA'
  else
  if cdsPedido_Item_TipoTIPO_ORCAMENTO.AsString = 'V' then
    cdsPedido_Item_TipoDESCRICAO_TIPO.AsString := 'VIDRO';
end;

procedure TDMCadPedido.pedidoImpCalcFields(DataSet: TDataSet);
begin
  if cdsPedidoImpTIPO_FRETE.AsString <> '' then
    case cdsPedidoImpTIPO_FRETE.AsInteger of
      1: cdsPedidoImpclTIPO_FRETE.AsString := 'Emitente';
      2: cdsPedidoImpclTIPO_FRETE.AsString := 'Destinatário';
      3: cdsPedidoImpclTIPO_FRETE.AsString := 'Terceiros';
      4: cdsPedidoImpclTIPO_FRETE.AsString := 'Sem Frete';
    end;
end;

procedure TDMCadPedido.prc_Inserir_Servicos;
var
  vItemAux: Integer;
begin
  cdsPedidoServico.Last;
  vItemAux := cdsPedidoServicoITEM.AsInteger;

  cdsPedidoServico.Insert;
  cdsPedidoServicoID.AsInteger   := cdsPedidoID.AsInteger;
  cdsPedidoServicoITEM.AsInteger := vItemAux + 1;
end;

procedure TDMCadPedido.frxReport1Preview(Sender: TObject);
begin
  if (FileExists(cdsPedidoImpENDLOGO.AsString)) and (vTipo_Rel_Ped <> 'P') and (vTipo_Rel_Ped <> 'R') and (cdsParametrosUSA_GRADE.AsString = 'S')  then
  begin
    if frxReport1.FindComponent('Picture1')<> nil then
      TfrxPictureView(frxReport1.FindComponent('Picture1')).Picture.LoadFromFile(cdsPedidoImpENDLOGO.AsString);
    if frxReport1.FindComponent('Picture2')<> nil then
      TfrxPictureView(frxReport1.FindComponent('Picture2')).Picture.LoadFromFile(cdsPedidoImpENDLOGO.AsString);
  end;

  if FileExists(cdsPedidoImpENDLOGO.AsString) then
  begin
    if frxReport1.FindComponent('Picture1')<> nil then
      TfrxPictureView(frxReport1.FindComponent('Picture1')).Picture.LoadFromFile(cdsPedidoImpENDLOGO.AsString);
  end;

end;

procedure TDMCadPedido.cdsPedido_Item_TipoCalcFields(DataSet: TDataSet);
begin
  if cdsParametrosEMPRESA_AMBIENTES.AsString = 'S' then
  begin
    if cdsPedido_Item_TipoID_ACABAMENTO.AsInteger > 0 then
    begin
      if cdsAcabamento.Locate('ID',cdsPedido_Item_TipoID_ACABAMENTO.AsInteger,([Locaseinsensitive])) then
        cdsPedido_Item_TipoclNome_Acabamento.AsString := cdsAcabamentoNOME.AsString;
    end;
    if cdsPedido_Item_TipoID_REDONDO_MOD.AsInteger > 0 then
    begin
      if cdsRedondoMod.Locate('ID',cdsPedido_Item_TipoID_REDONDO_MOD.AsInteger,([Locaseinsensitive])) then
        cdsPedido_Item_TipoclNome_Redondo_Mod.AsString := cdsRedondoModNOME.AsString;
    end;
    if cdsPedido_Item_TipoID_CMOEDA.AsInteger > 0 then
    begin
      if cdsCMoeda.Locate('ID',cdsPedido_Item_TipoID_CMOEDA.AsInteger,([Locaseinsensitive])) then
        cdsPedido_Item_TipoclNome_CMoeda.AsString := cdsCMoedaNOME.AsString;
    end;
    if cdsPedido_Item_TipoID_FUROS.AsInteger > 0 then
    begin
      if cdsFuros.Locate('ID',cdsPedido_Item_TipoID_FUROS.AsInteger,([Locaseinsensitive])) then
        cdsPedido_Item_TipoclNome_Furos.AsString := cdsFurosNOME.AsString;
    end;
    if cdsPedido_Item_TipoID_FURACAO.AsInteger > 0 then
    begin
      if cdsFuracao.Locate('ID',cdsPedido_Item_TipoID_FURACAO.AsInteger,([Locaseinsensitive])) then
        cdsPedido_Item_TipoclNome_Furacao.AsString := cdsFuracaoNOME.AsString;
    end;
    if cdsPedido_Item_TipoID_PERFIL.AsInteger > 0 then
    begin
      if cdsPerfil.Locate('ID',cdsPedido_Item_TipoID_PERFIL.AsInteger,([Locaseinsensitive])) then
        cdsPedido_Item_TipoclNome_Perfil.AsString := cdsPerfilNOME.AsString;
    end;
    if cdsPedido_Item_TipoID_VIDRO.AsInteger > 0 then
    begin
      if cdsVidro.Locate('ID',cdsPedido_Item_TipoID_VIDRO.AsInteger,([Locaseinsensitive])) then
        cdsPedido_Item_TipoclNome_Vidro.AsString := cdsVidroNOME.AsString;
    end;
  end;
  if qParametros_GeralUSA_TIPO_MATERIAL.AsString = 'S' then
  begin
    qTipoMat.Close;
    qTipoMat.ParamByName('ID').AsInteger := cdsPedido_Item_TipoID_TIPO_MATERIAL.AsInteger;
    qTipoMat.Open;
    cdsPedido_Item_TipoclNomeTipo_Mat.AsString := qTipoMatNOME.AsString;
    qTipoMat.Close;
  end;
end;

procedure TDMCadPedido.prc_Abrir_Acessorios(Tipo: String);
begin
  cdsAcessorios.Close;
  sdsAcessorios.ParamByName('TIPO_PROD').AsString := Tipo;
  cdsAcessorios.Open;
end;

procedure TDMCadPedido.prc_Inserir_Trilhos;
var
  vItemAux: Integer;
begin
  cdsPedido_Ace.Last;
  vItemAux := cdsPedido_AceITEM.AsInteger;
  if vItemAux <= 0 then
    vItemAux := 500;
  cdsPedido_Ace.Insert;
  cdsPedido_AceID.AsInteger   := cdsPedidoID.AsInteger;
  cdsPedido_AceTipo_Acessorio.AsString := 'T';
  cdsPedido_AceITEM.AsInteger := vItemAux + 1;
end;

procedure TDMCadPedido.prc_Inserir_Roldanas;
var
  vItemAux: Integer;
begin
  cdsPedido_Rol.Last;
  vItemAux := cdsPedido_RolITEM.AsInteger;
  if vItemAux <= 0 then
    vItemAux := 800;
  cdsPedido_Rol.Insert;
  cdsPedido_RolID.AsInteger   := cdsPedidoID.AsInteger;
  cdsPedido_RolTIPO_ACESSORIO.AsString := 'R';
  cdsPedido_RolITEM.AsInteger := vItemAux + 1;
end;

procedure TDMCadPedido.cdsPedidoImp_ItensAfterScroll(DataSet: TDataSet);
begin
  if cdsParametrosEMPRESA_AMBIENTES.AsString = 'S' then
  begin
    cdsPedidoImp_Tipo.Close;
    sdsPedidoImp_Tipo.ParamByName('ID').AsInteger   := cdsPedidoImp_ItensID.AsInteger;
    sdsPedidoImp_Tipo.ParamByName('ITEM').AsInteger := cdsPedidoImp_ItensITEM.AsInteger;
    cdsPedidoImp_Tipo.Open;
  end;
  if cdsParametrosUSA_GRADE.AsString = 'S' then
  begin
    cdsPedidoImp_Tam.Close;
    sdsPedidoImp_Tam.ParamByName('ID').AsInteger   := cdsPedidoImp_ItensID.AsInteger;
    sdsPedidoImp_Tam.ParamByName('ITEM').AsInteger := cdsPedidoImp_ItensITEM.AsInteger;
    cdsPedidoImp_Tam.Open;
  end;
end;

procedure TDMCadPedido.Abrir_cdsDuplicata(ID: Integer);
begin
  cdsDuplicata.Close;
  sdsDuplicata.ParamByName('ID').AsInteger := ID;
  cdsDuplicata.Open;
  cdsDuplicata_Hist.Close;
  cdsDuplicata_Hist.Open;
end;

function TDMCadPedido.fnc_Existe_DupPaga(ID: Integer): Integer;
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT COUNT(VLR_PAGO) EXISTE_DUP FROM DUPLICATA WHERE VLR_PAGO > 0 AND ID_PEDIDO = ' + IntToStr(ID);
    sds.Open;
    Result := sds.FieldByName('EXISTE_DUP').AsInteger;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TDMCadPedido.mCarimboNewRecord(DataSet: TDataSet);
begin
  mCarimboReferencia.AsString := '';
end;

procedure TDMCadPedido.prc_Gravar_mCarimbo(Carimbo,Referencia,Combinacao: String);
begin
  if trim(Carimbo) = '' then
    Carimbo := 'SEM CARIMBO';

  if mCarimbo.Locate('Carimbo',Carimbo,[loCaseInsensitive]) then
    mCarimbo.Edit
  else
  begin
    mCarimbo.Insert;
    mCarimboCarimbo.AsString := Carimbo;
  end;
  if trim(Combinacao) <> '' then
    mCarimboReferencia.AsString := mCarimboReferencia.AsString + '(' + Referencia + '/' + Combinacao + ') '
  else
    mCarimboReferencia.AsString := mCarimboReferencia.AsString + '(' + Referencia + ') ';
  mCarimbo.Post;
end;

procedure TDMCadPedido.frxReport1BeforePrint(Sender: TfrxReportComponent);
var
  i: Integer;
  vArq: String;
  vArqC: String;
  vCol: Integer;
  vCompl: String;
  vCompl2: String;
  vImpTotal: Boolean;
begin
  vArq  := 'Pedido_Bobina.fr3';
  vArqC := Copy(frxReport1.Report.FileName,Length(frxReport1.Report.FileName)-16,17);
  if vArqC = vArq then
  begin
    TfrxMemoView(frxReport1.FindComponent('Memo17')).Visible := vImpPreco;
    TfrxMemoView(frxReport1.FindComponent('Memo20')).Visible := vImpPreco;
    TfrxMemoView(frxReport1.FindComponent('Memo21')).Visible := vImpPreco;
    Exit;
  end;

  vCompl  := '';
  vCompl2 := '2_';

  if vTipo_Rel_Ped = 'PICTO' then
    Exit;
  if vNum_Rel_Fast = 3 then
  begin
    TfrxPictureView(frxReport1.FindComponent('Foto_Prod')).Picture := nil;
    if FileExists(mItensImpFoto_End.AsString) then
    begin
      TfrxPictureView(frxReport1.FindComponent('Foto_Prod')).Picture.LoadFromFile(mItensImpFoto_End.AsString);
      ShowMessage(mItensImpFoto_End.AsString + ' Acima');
    end;
  end;

  if (vNum_Rel_Fast > 1) or (vTipo_Rel_Ped = 'P') or (vTipo_Rel_Ped = 'R') and (cdsParametrosUSA_GRADE.AsString = 'S') then
  begin
    i := 1;
    vCol := 9;
    if (vTipo_Rel_Ped = 'P') then
      vCol := 17
    else
    if (vTipo_Rel_Ped = 'R') then
    begin
      vCol   := 17;
      if mItensImpImp_Continua.AsString = 'N' then
      begin
        vCol    := 14;
        vCompl  := '_B';
        vCompl2 := '1_';
      end;
    end;
    for i := 1 to vCol do
    begin
      if cdsParametrosUSA_GRADE.AsString = 'S' then
      begin
        TfrxMemoView(frxReport1.FindComponent('Tam'+vCompl+IntToStr(i))).Visible       := False;
        if (vTipo_Rel_Ped = 'P') or (vTipo_Rel_Ped = 'R') then
        begin
          TfrxMemoView(frxReport1.FindComponent('Tam_Mat'+vCompl+IntToStr(i))).Visible       := False;
          TfrxMemoView(frxReport1.FindComponent('Shape_Tam'+vCompl+IntToStr(i))).Visible     := False;
          TfrxMemoView(frxReport1.FindComponent('Shape_Tam_Mat'+vCompl+IntToStr(i))).Visible := False;
          TfrxMemoView(frxReport1.FindComponent('Shape_Qtd'+vCompl+IntToStr(i))).Visible     := False;

          if (vTipo_Rel_Ped = 'R') then
          begin
            TfrxMemoView(frxReport1.FindComponent('Shape_S'+vCompl2+IntToStr(i))).Visible := False;
            TfrxMemoView(frxReport1.FindComponent('Qtd_S'+vCompl2+IntToStr(i))).Visible   := False;
          end;
        end;
        TfrxMemoView(frxReport1.FindComponent('Qtd'+vCompl+IntToStr(i))).Visible       := False;
      end;
    end;

    if vNum_Rel_Fast = 3 then
    begin
      TfrxPictureView(frxReport1.FindComponent('Foto_Prod')).Picture := nil;
      if FileExists(mItensImpFoto_End.AsString) then
      begin
        TfrxPictureView(frxReport1.FindComponent('Foto_Prod')).Picture.LoadFromFile(mItensImpFoto_End.AsString);
        ShowMessage(mItensImpFoto_End.AsString + ' Abaixo');
    end;
    end;

    i := 0;
    mItensImp_Tam.First;
    while not mItensImp_Tam.Eof do
    begin
      i := i + 1;
      if i > vCol then
        vMSGErro := vMSGErro + #13 + 'Tamanho excedeu a quantidade limite do Item ' + mItensImpItem.AsString
      else
      begin
        if mItensImp_TamQtd.AsInteger > 0 then
        begin
          TfrxMemoView(frxReport1.FindComponent('Tam'+vCompl+IntToStr(i))).Visible := True;
          TfrxMemoView(frxReport1.FindComponent('Tam'+vCompl+IntToStr(i))).Text    := mItensImp_TamTamanho.AsString;
          if (vTipo_Rel_Ped = 'P') or (vTipo_Rel_Ped = 'R') then
          begin
            TfrxMemoView(frxReport1.FindComponent('Tam_Mat'+vCompl+IntToStr(i))).Visible       := True;
            TfrxMemoView(frxReport1.FindComponent('Tam_Mat'+vCompl+IntToStr(i))).Text          := mItensImp_TamTam_Matriz.AsString;
            TfrxMemoView(frxReport1.FindComponent('Shape_Tam'+vCompl+IntToStr(i))).Visible     := True;
            TfrxMemoView(frxReport1.FindComponent('Shape_Tam_Mat'+vCompl+IntToStr(i))).Visible := True;
            TfrxMemoView(frxReport1.FindComponent('Shape_Qtd'+vCompl+IntToStr(i))).Visible     := True;
            if (vTipo_Rel_Ped = 'R') then
            begin
              TfrxMemoView(frxReport1.FindComponent('Shape_S'+vCompl2+IntToStr(i))).Visible := True;
              TfrxMemoView(frxReport1.FindComponent('Qtd_S'+vCompl2+IntToStr(i))).Visible   := True;
            end;
          end;
          TfrxMemoView(frxReport1.FindComponent('Qtd'+vCompl+IntToStr(i))).Visible := True;
          TfrxMemoView(frxReport1.FindComponent('Qtd'+vCompl+IntToStr(i))).Text    := mItensImp_TamQtd.AsString;
        end;
      end;
      mItensImp_Tam.Next;
    end;
    vImpTotal := False;
    if ((vImpPedTerceiro = False) or ((vImpPedTerceiro) and (mItensImp_Tam.RecordCount > 0))) then
      vImpTotal := True;

    if ((vTipo_Rel_Ped = 'P') or (vTipo_Rel_Ped = 'R')) and (vImpTotal) and (cdsParametrosUSA_GRADE.AsString = 'S') then
    begin
      i := i + 1;
      TfrxMemoView(frxReport1.FindComponent('Tam'+vCompl+IntToStr(i))).Visible := True;
      TfrxMemoView(frxReport1.FindComponent('Tam'+vCompl+IntToStr(i))).Text    := 'Total';
      TfrxMemoView(frxReport1.FindComponent('Tam_Mat'+vCompl+IntToStr(i))).Visible := True;
      TfrxMemoView(frxReport1.FindComponent('Tam_Mat'+vCompl+IntToStr(i))).Text    := '';
      TfrxMemoView(frxReport1.FindComponent('Qtd'+vCompl+IntToStr(i))).Visible := True;
      TfrxMemoView(frxReport1.FindComponent('Qtd'+vCompl+IntToStr(i))).Text    := mItensImpQtd.AsString;
      TfrxMemoView(frxReport1.FindComponent('Shape_Tam'+vCompl+IntToStr(i))).Visible     := True;
      TfrxMemoView(frxReport1.FindComponent('Shape_Tam_Mat'+vCompl+IntToStr(i))).Visible := True;
      TfrxMemoView(frxReport1.FindComponent('Shape_Qtd'+vCompl+IntToStr(i))).Visible     := True;

      if vTipo_Rel_Ped = 'R' then
      begin
        TfrxMemoView(frxReport1.FindComponent('Shape_S'+vCompl2+IntToStr(i))).Visible := True;
        TfrxMemoView(frxReport1.FindComponent('Qtd_S'+vCompl2+IntToStr(i))).Visible   := True;

      end;
    end;
    if (vTipo_Rel_Ped = 'R') and (mItensImpImp_Continua.AsString = 'N') then
    begin
      i := i + 1;
      TfrxMemoView(frxReport1.FindComponent('Tam'+vCompl+IntToStr(i))).Visible := True;
      TfrxMemoView(frxReport1.FindComponent('Tam'+vCompl+IntToStr(i))).Text    := 'D/Nota';
      TfrxMemoView(frxReport1.FindComponent('Tam_Mat'+vCompl+IntToStr(i))).Visible := False;
      TfrxMemoView(frxReport1.FindComponent('Tam_Mat'+vCompl+IntToStr(i))).Text    := '';
      TfrxMemoView(frxReport1.FindComponent('Qtd'+vCompl+IntToStr(i))).Visible     := False;
      TfrxMemoView(frxReport1.FindComponent('Shape_Tam'+vCompl+IntToStr(i))).Visible     := True;
      TfrxMemoView(frxReport1.FindComponent('Shape_Tam_Mat'+vCompl+IntToStr(i))).Visible := True;
      TfrxMemoView(frxReport1.FindComponent('Shape_Qtd'+vCompl+IntToStr(i))).Visible     := True;
      TfrxMemoView(frxReport1.FindComponent('Shape_S'+vCompl2+IntToStr(i))).Visible := True;
      TfrxMemoView(frxReport1.FindComponent('Qtd_S'+vCompl2+IntToStr(i))).Visible   := True;
    end;
  end;
end;

procedure TDMCadPedido.frxDBDataset1First(Sender: TObject);
begin
  prc_Imp_Desconto;
end;

procedure TDMCadPedido.prc_Imp_Desconto;
var
  sds: TSQLDataSet;
  vTexto: String;
begin
  if ((cdsPedidoImpCNPJ_CPF_FILIAL.AsString = '16.650.710/0001-05') OR //COLORBE
     (cdsPedidoImpCNPJ_CPF_FILIAL.AsString = '24.743.075/0001-20')) AND  //GERCLA
     (vTipo_Rel_Ped <> 'P') and (vTipo_Rel_Ped <> 'R') then
  begin
    TfrxMemoView(frxReport1.FindComponent('PercDesconto')).Text := '';
    if StrToFloat(FormatFloat('0.0000',cdsPedidoImpVLR_DESCONTO.AsFloat)) > 0 then
    begin
      if StrToFloat(FormatFloat('0.0000',cdsPedidoImpPERC_DESCONTO.AsFloat)) > 0 then
        TfrxMemoView(frxReport1.FindComponent('PercDesconto')).Text := FormatFloat('0.00##',cdsPedidoImpPERC_DESCONTO.AsFloat) + '%'
      else
      begin
        vTexto := '';
        sds := TSQLDataSet.Create(nil);
        try
          sds.SQLConnection := dmDatabase.scoDados;
          sds.NoMetadata    := True;
          sds.GetMetadata   := False;
          sds.CommandText := ' SELECT * FROM PEDIDO_DESCONTO WHERE ID = ' + cdsPedidoImpID.AsString;
          sds.Open;
          while not sds.Eof do
          begin
            if vTexto = '' then
              vTexto := FormatFloat('0.####',sds.FieldByName('PERC_DESCONTO').AsFloat)
            else
              vTexto := vTexto + ' + ' + FormatFloat('0.####',sds.FieldByName('PERC_DESCONTO').AsFloat);
            sds.Next;
          end;
          sds.Close;
          if trim(vTexto) <> '' then
            vTexto := vTexto + ' %';
          TfrxMemoView(frxReport1.FindComponent('PercDesconto')).Text := vTexto;
        finally
          FreeAndNil(sds);
        end;
      end;
    end;
  end;
end;

procedure TDMCadPedido.frxDBDataset1Next(Sender: TObject);
begin
  prc_Imp_Desconto;
end;

procedure TDMCadPedido.cdsPedido_Item_TipoNewRecord(DataSet: TDataSet);
begin
  cdsPedido_Item_TipoVLR_DOBRA.AsFloat := 0;
end;

procedure TDMCadPedido.prc_Filtrar_Produto_Cliente(Somente_Filial: Boolean = False);
var
  i: Integer;
  vTexto1: WideString;
  vComando : String;
begin
  if qParametros_ProdMOSTRA_PROD_TPRECO.AsString = 'S' then
  begin
    if cdsClienteCODIGO.AsInteger <> cdsPedidoID_CLIENTE.AsInteger then
      cdsCliente.Locate('CODIGO',cdsPedidoID_CLIENTE.AsInteger,([Locaseinsensitive]));
    if cdsClienteID_TAB_PRECO.AsInteger <= 0 then
      exit;
  end;
  vTexto1 := UpperCase(ctProduto);
  cdsProduto.Close;
  sdsProduto.CommandText := vTexto1;
  if qParametros_ProdMOSTRA_PROD_TPRECO.AsString = 'S' then
  begin
    vComando := ' LEFT JOIN tab_preco_itens I ON P.ID = I.ID_PRODUTO '
              + ' WHERE I.ID = ' + IntToStr(cdsClienteID_TAB_PRECO.AsInteger);
    sdsProduto.CommandText := sdsProduto.CommandText + vComando;
  end
  else
  begin
    if Posex('WHERE',vTexto1) <= 0 then
      vTexto1 := ' WHERE 0 = 0 '
    else
      vTexto1 := ' ';
    sdsProduto.CommandText := sdsProduto.CommandText + vTexto1;
    if (cdsParametrosUSA_PRODUTO_CLIENTE.AsString = 'S') and not(Somente_Filial) then
      sdsProduto.CommandText := sdsProduto.CommandText + ' AND ID_CLIENTE = ' + cdsPedidoID_CLIENTE.AsString;
    if qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S' then
      sdsProduto.CommandText := sdsProduto.CommandText + ' AND FILIAL = ' + cdsPedidoFILIAL.AsString;
  end;
  cdsProduto.Open;
end;

procedure TDMCadPedido.cdsPedido_Item_QtdNewRecord(DataSet: TDataSet);
begin
  cdsPedido_Item_QtdDTUSUARIO.AsDateTime := Date;
  cdsPedido_Item_QtdUSUARIO.AsString     := vUsuario;
end;

procedure TDMCadPedido.cdsPedido_DescontoBeforeInsert(DataSet: TDataSet);
begin
  cdsPedido_Desconto.Last;
  vItem_Desc := cdsPedido_DescontoITEM.AsInteger;
end;

procedure TDMCadPedido.cdsPedido_DescontoAfterPost(DataSet: TDataSet);
begin
  if StrToFloat(FormatFloat('0.00',cdsPedido_DescontoPERC_DESCONTO.AsFloat)) <= 0 then
    cdsPedido_Desconto.Delete;
end;

procedure TDMCadPedido.cdsPedido_DescontoAfterInsert(DataSet: TDataSet);
begin
  cdsPedido_DescontoITEM.AsInteger := vItem_Desc + 1;
  cdsPedido_DescontoID.AsInteger   := cdsPedidoID.AsInteger;
end;

procedure TDMCadPedido.prc_Abrir_Servico;
begin
  cdsServico.Close;
  sdsServico.CommandText := ctServico;
  if cdsFilialID_SERVICO_SINT.AsInteger > 0 then
    sdsServico.CommandText := sdsServico.CommandText + ' WHERE CODIGO LIKE ' + QuotedStr(cdsFilialCOD_SERVICO_SINT.AsString+'.%');
  cdsServico.Open;
end;

procedure TDMCadPedido.prc_Gravar_Email_Pessoa(CODIGO: Integer; Email: String);
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText   := 'UPDATE PESSOA SET EMAIL_COMPRAS = ' + QuotedStr(Email) +
                       ' WHERE CODIGO = ' + IntToStr(CODIGO);
  sds.ExecSQL;
end;

procedure TDMCadPedido.prc_Gravar_Telefone(CODIGO, DDD: Integer;
  Fone: string);
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata := True;
  sds.GetMetadata := False;
  sds.CommandText := 'UPDATE PESSOA SET DDDCELULAR = ' + IntToStr(DDD) + ', CELULAR = ' + QuotedStr(Fone) +
                     ' WHERE CODIGO = ' + IntToStr(CODIGO);
  sds.ExecSQL;                     
end;

procedure TDMCadPedido.frxImpPedFirst(Sender: TObject);
begin
  frxDBDataset1.First;
  frxDBDataset3.First;
end;

procedure TDMCadPedido.frxImpPedNext(Sender: TObject);
begin
  frxDBDataset1.First;
  frxDBDataset3.First;
end;

procedure TDMCadPedido.cdsPedido_ItensCalcFields(DataSet: TDataSet);
begin
  if qParametros_PedINF_LUCRATIVIDADE.AsString = 'S' then
  begin
    cdsPedido_ItensclVlr_Total_Custo.AsFloat := StrToFloat(FormatFloat('0.00',cdsPedido_ItensPRECO_CUSTO.AsFloat * cdsPedido_ItensQTD.AsFloat));
    cdsPedido_ItensclVlr_Diferenca.AsFloat   := StrToFloat(FormatFloat('0.00',cdsPedido_ItensVLR_TOTAL.AsFloat - cdsPedido_ItensclVlr_Total_Custo.AsFloat));
  end;
end;

procedure TDMCadPedido.prc_Abrir_qProduto(ID: Integer);
begin
  qProduto.Close;
  qProduto.ParamByName('ID').AsInteger := ID;
  qProduto.Open;
end;

procedure TDMCadPedido.Abrir_Duplicatas(ID: Integer);
begin
  cdsDuplicata.Close;
  sdsDuplicata.CommandText := 'SELECT * FROM DUPLICATA WHERE ID_PEDIDO = ' + IntToStr(ID);
  cdsDuplicata.Open;
end;

procedure TDMCadPedido.cdsDuplicataNewRecord(DataSet: TDataSet);
begin
  cdsDuplicataNGR.AsString      := 'N';
  cdsDuplicataAPROVADO.AsString := 'S';
end;

procedure TDMCadPedido.cdsPedidoImp_ItensCalcFields(DataSet: TDataSet);
begin
  cdsPedidoImp_ItensCOD_BARRAS.AsString := '2 - ' + FormatFloat('000000',cdsPedidoImpNUM_PEDIDO.AsInteger) + ' / ' + FormatFloat('000',cdsPedidoImp_ItensITEM.AsInteger);
end;

end.

