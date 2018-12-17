unit UDMConsFaturamento;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, frxRich, frxExportMail, frxClass, frxExportPDF, frxDBSet,
  frxExportDOCX, frxExportXLS;

type
  TDMConsFaturamento = class(TDataModule)
    sdsNotaFiscal_Cli: TSQLDataSet;
    dspNotaFiscal_Cli: TDataSetProvider;
    dsNotaFiscal_Cli: TDataSource;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    sdsProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    cdsProdutoID: TIntegerField;
    cdsProdutoREFERENCIA: TStringField;
    cdsProdutoNOME: TStringField;
    dsProduto: TDataSource;
    cdsProdutoTIPO_REG: TStringField;
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
    qFaturamento: TSQLQuery;
    sdsNotaFiscal_CliProd: TSQLDataSet;
    dspNotaFiscal_CliProd: TDataSetProvider;
    cdsNotaFiscal_CliProd: TClientDataSet;
    dsNotaFiscal_CliProd: TDataSource;
    sdsNotaFiscal_Prod: TSQLDataSet;
    dspNotaFiscal_Prod: TDataSetProvider;
    cdsNotaFiscal_Prod: TClientDataSet;
    dsNotaFiscal_Prod: TDataSource;
    cdsNotaFiscal_ProdID_PRODUTO: TIntegerField;
    cdsNotaFiscal_ProdREFERENCIA: TStringField;
    cdsNotaFiscal_ProdclPerc_SobreFat: TFloatField;
    sdsNotaFiscal_DT: TSQLDataSet;
    dspNotaFiscal_DT: TDataSetProvider;
    cdsNotaFiscal_DT: TClientDataSet;
    dsNotaFiscal_DT: TDataSource;
    cdsNotaFiscal_DTDTEMISSAO: TDateField;
    cdsNotaFiscal_DTclPerc_SobreFat: TFloatField;
    sdsProduto_Det: TSQLDataSet;
    dspProduto_Det: TDataSetProvider;
    cdsProduto_Det: TClientDataSet;
    dsProduto_Det: TDataSource;
    cdsProduto_DetID_PRODUTO: TIntegerField;
    cdsProduto_DetREFERENCIA: TStringField;
    cdsProduto_DetQTD: TFloatField;
    cdsProduto_DetUNIDADE: TStringField;
    cdsProduto_DetVLR_UNITARIO: TFloatField;
    cdsProduto_DetVLR_TOTAL: TFloatField;
    cdsProduto_DetFILIAL: TIntegerField;
    cdsProduto_DetNOME_CLIENTE: TStringField;
    cdsProduto_DetDTEMISSAO: TDateField;
    cdsProduto_DetVLR_DESCONTO: TFloatField;
    cdsProduto_DetSERIE: TStringField;
    cdsNotaFiscal_ProdQTD: TFloatField;
    cdsNotaFiscal_DTQTD: TFloatField;
    qFaturamentoVLR_LIQUIDO_NFSE: TFloatField;
    qFaturamentoVLR_VENDAS: TFloatField;
    cdsNotaFiscal_ProdNOME_PRODUTO_SERV: TStringField;
    cdsNotaFiscal_ProdVLR_LIQUIDO_NFSE: TFloatField;
    cdsNotaFiscal_ProdVLR_VENDAS: TFloatField;
    cdsNotaFiscal_DTVLR_LIQUIDO_NFSE: TFloatField;
    cdsNotaFiscal_DTVLR_VENDAS: TFloatField;
    cdsProduto_DetNOME_PRODUTO_SERV: TStringField;
    cdsProduto_DetNUM_NOTA: TIntegerField;
    cdsProduto_DetNUM_RPS: TIntegerField;
    cdsProduto_DetDTENTRADASAIDA: TDateField;
    cdsProduto_DetTIPO_MOV: TStringField;
    cdsProduto_DetTIPO_ES: TStringField;
    cdsProduto_DetTIPO_REG: TStringField;
    cdsNotaFiscal_ProdTIPO_MOV: TStringField;
    cdsNotaFiscal_ProdTIPO_REG: TStringField;
    cdsNotaFiscal_ProdTIPO_ES: TStringField;
    sdsNotaFiscal: TSQLDataSet;
    dspNotaFiscal: TDataSetProvider;
    cdsNotaFiscal: TClientDataSet;
    dsNotaFiscal: TDataSource;
    qFaturamentoVLR_DUPLICATA_ST: TFloatField;
    qFaturamentoVLR_ICMSSUBST: TFloatField;
    cdsNotaFiscal_ProdVLR_ICMSSUBST: TFloatField;
    cdsNotaFiscal_DTVLR_ICMSSUBST: TFloatField;
    cdsProduto_DetVLR_ICMSSUBST: TFloatField;
    sdsNotaFiscal_UF: TSQLDataSet;
    dspNotaFiscal_UF: TDataSetProvider;
    cdsNotaFiscal_UF: TClientDataSet;
    dsNotaFiscal_UF: TDataSource;
    cdsNotaFiscal_UFUF: TStringField;
    cdsNotaFiscal_UFQTD: TFloatField;
    cdsNotaFiscal_UFVLR_LIQUIDO_NFSE: TFloatField;
    cdsNotaFiscal_UFVLR_VENDAS: TFloatField;
    cdsNotaFiscal_UFVLR_ICMSSUBST: TFloatField;
    cdsNotaFiscal_UFclPerc_SobreFat: TFloatField;
    sdsCupomFiscal: TSQLDataSet;
    dspCupomFiscal: TDataSetProvider;
    cdsCupomFiscal: TClientDataSet;
    dsCupomFiscal: TDataSource;
    cdsCupomFiscalFILIAL: TIntegerField;
    cdsCupomFiscalDTEMISSAO: TDateField;
    cdsCupomFiscalNUMCUPOM: TIntegerField;
    cdsCupomFiscalID_CLIENTE: TIntegerField;
    cdsCupomFiscalNOME_CLIENTE: TStringField;
    cdsCupomFiscalVLR_TOTAL: TFloatField;
    cdsCupomFiscalNOME_VENDEDOR: TStringField;
    qParametrosUSA_CUPOM_FISCAL: TStringField;
    sdsNotaFiscal_VendProd: TSQLDataSet;
    dspNotaFiscal_VendProd: TDataSetProvider;
    cdsNotaFiscal_VendProd: TClientDataSet;
    dsNotaFiscal_VendProd: TDataSource;
    cdsNotaFiscal_VendProdTIPO_MOV: TStringField;
    cdsNotaFiscal_VendProdID_PRODUTO: TIntegerField;
    cdsNotaFiscal_VendProdREFERENCIA: TStringField;
    cdsNotaFiscal_VendProdNOME_COMBINACAO: TStringField;
    cdsNotaFiscal_VendProdID_COR: TIntegerField;
    cdsNotaFiscal_VendProdID_VENDEDOR: TIntegerField;
    cdsNotaFiscal_VendProdNOME_VENDEDOR: TStringField;
    cdsNotaFiscal_VendProdNOME_ORIGINAL: TStringField;
    cdsNotaFiscal_VendProdVLR_DUPLICATA: TFloatField;
    cdsNotaFiscal_VendProdQTD: TFloatField;
    cdsNotaFiscal_VendProdVLR_LIQUIDO_NFSE: TFloatField;
    cdsNotaFiscal_VendProdVLR_VENDAS: TFloatField;
    cdsNotaFiscal_VendProdVLR_ICMSSUBST: TFloatField;
    cdsNotaFiscal_VendProdclPerc_SobreFat: TFloatField;
    sdsNotaFiscal_VendCli: TSQLDataSet;
    dspNotaFiscal_VendCli: TDataSetProvider;
    cdsNotaFiscal_VendCli: TClientDataSet;
    dsNotaFiscal_VendCli: TDataSource;
    cdsNotaFiscal_VendCliTIPO_MOV: TStringField;
    cdsNotaFiscal_VendCliID_PESSOA: TIntegerField;
    cdsNotaFiscal_VendCliNOME_CLIFORN: TStringField;
    cdsNotaFiscal_VendCliID_VENDEDOR: TIntegerField;
    cdsNotaFiscal_VendCliNOME_VENDEDOR: TStringField;
    cdsNotaFiscal_VendCliVLR_DUPLICATA: TFloatField;
    cdsNotaFiscal_VendCliQTD: TFloatField;
    cdsNotaFiscal_VendCliVLR_LIQUIDO_NFSE: TFloatField;
    cdsNotaFiscal_VendCliVLR_VENDAS: TFloatField;
    cdsNotaFiscal_VendCliVLR_ICMSSUBST: TFloatField;
    cdsNotaFiscal_VendCliclPerc_SobreFat: TFloatField;
    sdsNotaFiscal_Vend: TSQLDataSet;
    dspNotaFiscal_Vend: TDataSetProvider;
    cdsNotaFiscal_Vend: TClientDataSet;
    dsNotaFiscal_Vend: TDataSource;
    cdsNotaFiscal_VendTIPO_MOV: TStringField;
    cdsNotaFiscal_VendID_VENDEDOR: TIntegerField;
    cdsNotaFiscal_VendNOME_VENDEDOR: TStringField;
    cdsNotaFiscal_VendVLR_DUPLICATA: TFloatField;
    cdsNotaFiscal_VendQTD: TFloatField;
    cdsNotaFiscal_VendVLR_LIQUIDO_NFSE: TFloatField;
    cdsNotaFiscal_VendVLR_VENDAS: TFloatField;
    cdsNotaFiscal_VendVLR_ICMSSUBST: TFloatField;
    cdsNotaFiscal_VendclPerc_SobreFat: TFloatField;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    frxRichObject1: TfrxRichObject;
    qParametrosUSA_SERVICO: TStringField;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    cdsNotaFiscal_VendProdNOME_PRODUTO_SERV: TStringField;
    sdsNotaFiscal_Cli_UF: TSQLDataSet;
    dspNotaFiscal_Cli_UF: TDataSetProvider;
    cdsNotaFiscal_Cli_UF: TClientDataSet;
    dsNotaFiscal_Cli_UF: TDataSource;
    cdsNotaFiscal_Cli_UFID_PESSOA: TIntegerField;
    cdsNotaFiscal_Cli_UFCANCELADO: TStringField;
    cdsNotaFiscal_Cli_UFNOME_CLIENTE: TStringField;
    cdsNotaFiscal_Cli_UFFANTASIA: TStringField;
    cdsNotaFiscal_Cli_UFUF: TStringField;
    cdsNotaFiscal_Cli_UFQTD: TFloatField;
    cdsNotaFiscal_Cli_UFVLR_LIQUIDO_NFSE: TFloatField;
    cdsNotaFiscal_Cli_UFVLR_VENDAS: TFloatField;
    cdsNotaFiscal_Cli_UFVLR_ICMSSUBST: TFloatField;
    cdsNotaFiscal_Cli_UFclPerc_SobreFat: TFloatField;
    frxDBDataset4: TfrxDBDataset;
    sdsNotaFiscal_Cli_Cid: TSQLDataSet;
    dspNotaFiscal_Cli_Cid: TDataSetProvider;
    cdsNotaFiscal_Cli_Cid: TClientDataSet;
    dsNotaFiscal_Cli_Cid: TDataSource;
    cdsNotaFiscal_Cli_CidID_PESSOA: TIntegerField;
    cdsNotaFiscal_Cli_CidCANCELADO: TStringField;
    cdsNotaFiscal_Cli_CidNOME_CLIENTE: TStringField;
    cdsNotaFiscal_Cli_CidFANTASIA: TStringField;
    cdsNotaFiscal_Cli_CidUF: TStringField;
    cdsNotaFiscal_Cli_CidCIDADE: TStringField;
    cdsNotaFiscal_Cli_CidQTD: TFloatField;
    cdsNotaFiscal_Cli_CidVLR_LIQUIDO_NFSE: TFloatField;
    cdsNotaFiscal_Cli_CidVLR_VENDAS: TFloatField;
    cdsNotaFiscal_Cli_CidVLR_ICMSSUBST: TFloatField;
    cdsNotaFiscal_Cli_CidclPerc_SobreFat: TFloatField;
    frxDBDataset5: TfrxDBDataset;
    cdsFilialNOME_INTERNO: TStringField;
    sdsProduto_UF: TSQLDataSet;
    dspProduto_UF: TDataSetProvider;
    cdsProduto_UF: TClientDataSet;
    dsProduto_UF: TDataSource;
    cdsProduto_UFID_PRODUTO: TIntegerField;
    cdsProduto_UFREFERENCIA: TStringField;
    cdsProduto_UFNOME_PRODUTO_SERV: TStringField;
    cdsProduto_UFNOME_GRUPO: TStringField;
    cdsProduto_UFCOD_GRUPO: TStringField;
    cdsProduto_UFCOD_GRUPO_PRI: TIntegerField;
    cdsProduto_UFTIPO_MOV: TStringField;
    cdsProduto_UFTIPO_REG: TStringField;
    cdsProduto_UFTIPO_ES: TStringField;
    cdsProduto_UFQTD: TFloatField;
    cdsProduto_UFVLR_LIQUIDO_NFSE: TFloatField;
    cdsProduto_UFVLR_VENDAS: TFloatField;
    cdsProduto_UFVLR_ICMSSUBST: TFloatField;
    cdsProduto_UFUF: TStringField;
    cdsProduto_UFclPerc_SobreFat: TFloatField;
    frxProduto_UF: TfrxDBDataset;
    mGrupoAux: TClientDataSet;
    dsmGrupoAux: TDataSource;
    mGrupoAuxCodGrupo: TStringField;
    mGrupoAuxNome_Grupo: TStringField;
    mGrupoAuxVlr_Duplicata: TFloatField;
    mGrupoAuxVlr_Liquido_NFSe: TFloatField;
    mGrupoAuxVlr_Vendas: TFloatField;
    mGrupoAuxVlr_ICMSSubst: TFloatField;
    mGrupoAuxQtd: TFloatField;
    frxGrupoAux: TfrxDBDataset;
    sdsGrupo_UF: TSQLDataSet;
    dspGrupo_UF: TDataSetProvider;
    cdsGrupo_UF: TClientDataSet;
    dsGrupo_UF: TDataSource;
    cdsGrupo_UFNOME_GRUPO: TStringField;
    cdsGrupo_UFCOD_GRUPO: TStringField;
    cdsGrupo_UFCOD_GRUPO_PRI: TIntegerField;
    cdsGrupo_UFUF: TStringField;
    cdsGrupo_UFTIPO_MOV: TStringField;
    cdsGrupo_UFTIPO_REG: TStringField;
    cdsGrupo_UFTIPO_ES: TStringField;
    cdsGrupo_UFQTD: TFloatField;
    cdsGrupo_UFVLR_LIQUIDO_NFSE: TFloatField;
    cdsGrupo_UFVLR_VENDAS: TFloatField;
    cdsGrupo_UFVLR_ICMSSUBST: TFloatField;
    cdsGrupo_UFclPerc_SobreFat: TFloatField;
    frxGrupo_UF: TfrxDBDataset;
    qFaturamentoVLR_FRETE: TFloatField;
    qFaturamentoVLR_IPI: TFloatField;
    qDevolucoes: TSQLQuery;
    qDevolucoesVLR_NOTA: TFloatField;
    frxXLSExport1: TfrxXLSExport;
    frxDOCXExport1: TfrxDOCXExport;
    sdsVendCliProd: TSQLDataSet;
    dspVendCliProd: TDataSetProvider;
    cdsVendCliProd: TClientDataSet;
    dsVendCliProd: TDataSource;
    cdsVendCliProdTIPO_MOV: TStringField;
    cdsVendCliProdID_PRODUTO: TIntegerField;
    cdsVendCliProdREFERENCIA: TStringField;
    cdsVendCliProdNOME_COMBINACAO: TStringField;
    cdsVendCliProdID_COR: TIntegerField;
    cdsVendCliProdNOME_CLIFORN: TStringField;
    cdsVendCliProdNOME_PRODUTO_SERV: TStringField;
    cdsVendCliProdID_VENDEDOR: TIntegerField;
    cdsVendCliProdNOME_VENDEDOR: TStringField;
    cdsVendCliProdNOME_ORIGINAL: TStringField;
    cdsVendCliProdVLR_DUPLICATA: TFloatField;
    cdsVendCliProdQTD: TFloatField;
    cdsVendCliProdVLR_LIQUIDO_NFSE: TFloatField;
    cdsVendCliProdVLR_VENDAS: TFloatField;
    cdsVendCliProdVLR_ICMSSUBST: TFloatField;
    cdsVendCliProdUF_CLI: TStringField;
    qParametros_NFe: TSQLQuery;
    qParametros_NFeMOSTRAR_VLR_FRETE_CONS: TStringField;
    qParametros_NFeMOSTRAR_VLR_DEVOL_CONS: TStringField;
    cdsVendCliProdCOD_GRUPO: TStringField;
    cdsVendCliProdNUM_NOTA: TIntegerField;
    cdsVendCliProdDTEMISSAO: TDateField;
    cdsVendCliProdVLR_IPI: TFloatField;
    cdsNotaFiscal_ProdVLR_TOTAL: TFloatField;
    cdsNotaFiscal_DTVLR_TOTAL: TFloatField;
    cdsNotaFiscal_UFVLR_TOTAL: TFloatField;
    cdsNotaFiscal_Cli_UFVLR_TOTAL: TFloatField;
    cdsNotaFiscal_Cli_CidVLR_TOTAL: TFloatField;
    cdsProduto_UFVLR_TOTAL: TFloatField;
    cdsGrupo_UFVLR_TOTAL: TFloatField;
    cdsNotaFiscal_CliProdID_PESSOA: TIntegerField;
    cdsNotaFiscal_CliProdCANCELADO: TStringField;
    cdsNotaFiscal_CliProdNOME_CLIENTE: TStringField;
    cdsNotaFiscal_CliProdFANTASIA: TStringField;
    cdsNotaFiscal_CliProdTIPO_MOV: TStringField;
    cdsNotaFiscal_CliProdID_PRODUTO: TIntegerField;
    cdsNotaFiscal_CliProdREFERENCIA: TStringField;
    cdsNotaFiscal_CliProdNOME_PRODUTO_SERV: TStringField;
    cdsNotaFiscal_CliProdVLR_TOTAL: TFloatField;
    cdsNotaFiscal_CliProdQTD: TFloatField;
    cdsNotaFiscal_CliProdVLR_LIQUIDO_NFSE: TFloatField;
    cdsNotaFiscal_CliProdVLR_VENDAS: TFloatField;
    cdsNotaFiscal_CliProdVLR_ICMSSUBST: TFloatField;
    cdsNotaFiscal_CliProdclPerc_SobreFat: TFloatField;
    cdsNotaFiscal_Cli: TClientDataSet;
    sdsNotaFiscal_CliID_PESSOA: TIntegerField;
    sdsNotaFiscal_CliCANCELADO: TStringField;
    sdsNotaFiscal_CliNOME_CLIENTE: TStringField;
    sdsNotaFiscal_CliFANTASIA: TStringField;
    sdsNotaFiscal_CliVLR_TOTAL: TFloatField;
    sdsNotaFiscal_CliQTD: TFloatField;
    sdsNotaFiscal_CliVLR_LIQUIDO_NFSE: TFloatField;
    sdsNotaFiscal_CliVLR_VENDAS: TFloatField;
    sdsNotaFiscal_CliVLR_ICMSSUBST: TFloatField;
    cdsNotaFiscal_CliID_PESSOA: TIntegerField;
    cdsNotaFiscal_CliCANCELADO: TStringField;
    cdsNotaFiscal_CliNOME_CLIENTE: TStringField;
    cdsNotaFiscal_CliFANTASIA: TStringField;
    cdsNotaFiscal_CliVLR_TOTAL: TFloatField;
    cdsNotaFiscal_CliQTD: TFloatField;
    cdsNotaFiscal_CliVLR_LIQUIDO_NFSE: TFloatField;
    cdsNotaFiscal_CliVLR_VENDAS: TFloatField;
    cdsNotaFiscal_CliVLR_ICMSSUBST: TFloatField;
    cdsNotaFiscal_CliclPerc_SobreFat: TFloatField;
    cdsNotaFiscalFILIAL: TIntegerField;
    cdsNotaFiscalDTEMISSAO: TDateField;
    cdsNotaFiscalNUMNOTA: TIntegerField;
    cdsNotaFiscalSERIE: TStringField;
    cdsNotaFiscalID_CLIENTE: TIntegerField;
    cdsNotaFiscalNOME_CLIENTE: TStringField;
    cdsNotaFiscalBASE_ICMS: TFloatField;
    cdsNotaFiscalVLR_ICMS: TFloatField;
    cdsNotaFiscalVLR_DUPLICATA: TFloatField;
    cdsNotaFiscalVLR_NOTA: TFloatField;
    cdsNotaFiscalVLR_ITENS: TFloatField;
    cdsNotaFiscalVLR_IPI: TFloatField;
    cdsNotaFiscalDTSAIDAENTRADA: TDateField;
    cdsNotaFiscalVLR_ICMSSUBST: TFloatField;
    cdsNotaFiscalNOME_VENDEDOR: TStringField;
    cdsNotaFiscalVLR_FATURAMENTO: TFloatField;
    qFaturamentoVLR_TOTAL: TFloatField;
    sdsReciboNF: TSQLDataSet;
    dspReciboNF: TDataSetProvider;
    cdsReciboNF: TClientDataSet;
    dsReciboNF: TDataSource;
    cdsReciboNFFILIAL: TIntegerField;
    cdsReciboNFDTEMISSAO: TDateField;
    cdsReciboNFNUMNOTA: TIntegerField;
    cdsReciboNFSERIE: TStringField;
    cdsReciboNFID_CLIENTE: TIntegerField;
    cdsReciboNFNOME_CLIENTE: TStringField;
    cdsReciboNFVLR_NOTA: TFloatField;
    cdsReciboNFVLR_ITENS: TFloatField;
    cdsReciboNFDTSAIDAENTRADA: TDateField;
    cdsReciboNFNOME_VENDEDOR: TStringField;
    cdsReciboNFVLR_FATURAMENTO: TFloatField;
    sdsFornecedor: TSQLDataSet;
    dspFornecedor: TDataSetProvider;
    cdsFornecedor: TClientDataSet;
    dsFornecedor: TDataSource;
    cdsFornecedorCODIGO: TIntegerField;
    cdsFornecedorNOME: TStringField;
    cdsFornecedorFANTASIA: TStringField;
    cdsProduto_DetID_COR: TIntegerField;
    cdsProduto_DetNOME_COR: TStringField;
    sdsNotaFiscal_Cli_Cid_Det: TSQLDataSet;
    dspNotaFiscal_Cli_Cid_Det: TDataSetProvider;
    cdsNotaFiscal_Cli_Cid_Det: TClientDataSet;
    dsNotaFiscal_Cli_Cid_Det: TDataSource;
    cdsNotaFiscal_Cli_Cid_DetID_PESSOA: TIntegerField;
    cdsNotaFiscal_Cli_Cid_DetCANCELADO: TStringField;
    cdsNotaFiscal_Cli_Cid_DetNOME_CLIENTE: TStringField;
    cdsNotaFiscal_Cli_Cid_DetFANTASIA: TStringField;
    cdsNotaFiscal_Cli_Cid_DetUF: TStringField;
    cdsNotaFiscal_Cli_Cid_DetCIDADE: TStringField;
    cdsNotaFiscal_Cli_Cid_DetDTEMISSAO: TDateField;
    cdsNotaFiscal_Cli_Cid_DetVLR_TOTAL: TFloatField;
    cdsNotaFiscal_Cli_Cid_DetQTD: TFloatField;
    cdsNotaFiscal_Cli_Cid_DetVLR_LIQUIDO_NFSE: TFloatField;
    cdsNotaFiscal_Cli_Cid_DetVALOR_ICMS: TFloatField;
    cdsNotaFiscal_Cli_Cid_DetVLR_VENDAS: TFloatField;
    cdsNotaFiscal_Cli_Cid_DetVLR_ICMSSUBST: TFloatField;
    cdsNotaFiscal_Cli_Cid_DetBASE_ICMS: TFloatField;
    cdsNotaFiscal_Cli_Cid_DetBASE_ICMSST: TFloatField;
    cdsNotaFiscal_Cli_Cid_DetclPerc_SobreFat: TFloatField;
    frxNotaFiscal_Cli_Cid_Det: TfrxDBDataset;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsNotaFiscal_CliCalcFields(DataSet: TDataSet);
    procedure dspNotaFiscal_CliUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsNotaFiscal_CliProdCalcFields(DataSet: TDataSet);
    procedure cdsNotaFiscal_ProdCalcFields(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure cdsNotaFiscalCalcFields(DataSet: TDataSet);
    procedure cdsNotaFiscal_DTCalcFields(DataSet: TDataSet);
    procedure cdsNotaFiscal_UFCalcFields(DataSet: TDataSet);
    procedure cdsNotaFiscal_VendProdCalcFields(DataSet: TDataSet);
    procedure cdsNotaFiscal_VendCliCalcFields(DataSet: TDataSet);
    procedure cdsNotaFiscal_VendCalcFields(DataSet: TDataSet);
    procedure cdsNotaFiscal_Cli_UFCalcFields(DataSet: TDataSet);
    procedure cdsNotaFiscal_Cli_CidCalcFields(DataSet: TDataSet);
    procedure cdsProduto_UFCalcFields(DataSet: TDataSet);
    procedure cdsGrupo_UFCalcFields(DataSet: TDataSet);
    procedure cdsNotaFiscal_Cli_Cid_DetCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    function fnc_Calcula_Perc_SobreFat(Valor: Real): Real;
  public
    { Public declarations }
    ctNotaFiscal: String;
    ctFaturamento: String;
    ctNotaFiscal_VendProd, ctNotaFiscal_VendCli, ctNotaFiscal_Vend: String;
    vVlrFaturamento, vVlrFrete, vVlrIpi, vVlrDevol, vVlrLiq: Real;
    vDescOpcao_Rel: String;
    vTipo_Reg: String;
    vTipo_Nota: String;                                       
  end;

var
  DMConsFaturamento: TDMConsFaturamento;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMConsFaturamento.DataModuleCreate(Sender: TObject);
begin
  ctFaturamento := qFaturamento.SQL.Text;
  ctNotaFiscal  := sdsNotaFiscal.CommandText;
  ctNotaFiscal_VendProd := sdsNotaFiscal_VendProd.CommandText;
  ctNotaFiscal_VendCli  := sdsNotaFiscal_VendCli.CommandText;
  ctNotaFiscal_Vend     := sdsNotaFiscal_Vend.CommandText;

  cdsFilial.Close;
  cdsCliente.Close;
  cdsProduto.Close;
  qParametros.Close;

  cdsFilial.Open;
  cdsCliente.Open;
  cdsProduto.Open;
  qParametros.Open;
  qParametros_NFe.Open;
end;

procedure TDMConsFaturamento.cdsNotaFiscal_CliCalcFields(
  DataSet: TDataSet);
var
  vAux: Real;
begin
  if (vVlrFaturamento > 0) and (cdsNotaFiscal_CliVLR_TOTAL.AsFloat > 0) then
  begin
    vAux := StrToFloat(FormatFloat('0.000',(cdsNotaFiscal_CliVLR_TOTAL.AsFloat / vVlrFaturamento) * 100));
    cdsNotaFiscal_CliclPerc_SobreFat.AsFloat := StrToFloat(FormatFloat('0.000',vAux));
  end;
end;

procedure TDMConsFaturamento.dspNotaFiscal_CliUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

function TDMConsFaturamento.fnc_Calcula_Perc_SobreFat(Valor: Real): Real;
var
  vAux: Real;
begin
  Result := 0;

  if (vVlrFaturamento > 0) and (StrToFloat(FormatFloat('0.00',Valor)) > 0) then
  begin
    vAux   := StrToFloat(FormatFloat('0.000',(Valor / vVlrFaturamento) * 100));
    Result := StrToFloat(FormatFloat('0.000',vAux));
  end;
end;

procedure TDMConsFaturamento.cdsNotaFiscal_CliProdCalcFields(
  DataSet: TDataSet);
begin
  cdsNotaFiscal_CliProdclPerc_SobreFat.AsFloat := fnc_Calcula_Perc_SobreFat(cdsNotaFiscal_CliProdVLR_TOTAL.AsFloat);
end;

procedure TDMConsFaturamento.cdsNotaFiscal_ProdCalcFields(
  DataSet: TDataSet);
begin
  cdsNotaFiscal_ProdclPerc_SobreFat.AsFloat := fnc_Calcula_Perc_SobreFat(cdsNotaFiscal_ProdVLR_TOTAL.AsFloat);
end;

procedure TDMConsFaturamento.DataModuleDestroy(Sender: TObject);
begin
  cdsFilial.Close;
  cdsCliente.Close;
  cdsProduto.Close;
  qParametros.Close;
end;

procedure TDMConsFaturamento.cdsNotaFiscalCalcFields(DataSet: TDataSet);
begin
  cdsNotaFiscal_DTclPerc_SobreFat.AsFloat := fnc_Calcula_Perc_SobreFat(cdsNotaFiscal_DTVLR_TOTAL.AsFloat);
end;

procedure TDMConsFaturamento.cdsNotaFiscal_DTCalcFields(DataSet: TDataSet);
begin
  cdsNotaFiscal_DTclPerc_SobreFat.AsFloat := fnc_Calcula_Perc_SobreFat(cdsNotaFiscal_DTVLR_TOTAL.AsFloat);
end;

procedure TDMConsFaturamento.cdsNotaFiscal_UFCalcFields(DataSet: TDataSet);
begin
  cdsNotaFiscal_UFclPerc_SobreFat.AsFloat := fnc_Calcula_Perc_SobreFat(cdsNotaFiscal_UFVLR_TOTAL.AsFloat);
end;

procedure TDMConsFaturamento.cdsNotaFiscal_VendProdCalcFields(
  DataSet: TDataSet);
begin
  cdsNotaFiscal_VendProdclPerc_SobreFat.AsFloat := fnc_Calcula_Perc_SobreFat(cdsNotaFiscal_VendProdVLR_DUPLICATA.AsFloat);
end;

procedure TDMConsFaturamento.cdsNotaFiscal_VendCliCalcFields(
  DataSet: TDataSet);
begin
  cdsNotaFiscal_VendCliclPerc_SobreFat.AsFloat := fnc_Calcula_Perc_SobreFat(cdsNotaFiscal_VendCliVLR_DUPLICATA.AsFloat);
end;

procedure TDMConsFaturamento.cdsNotaFiscal_VendCalcFields(
  DataSet: TDataSet);
begin
  cdsNotaFiscal_VendclPerc_SobreFat.AsFloat := fnc_Calcula_Perc_SobreFat(cdsNotaFiscal_VendVLR_DUPLICATA.AsFloat);
end;

procedure TDMConsFaturamento.cdsNotaFiscal_Cli_UFCalcFields(
  DataSet: TDataSet);
var
  vAux: Real;
begin
  if (vVlrFaturamento > 0) and (cdsNotaFiscal_Cli_UFVLR_TOTAL.AsFloat > 0) then
  begin
    vAux := StrToFloat(FormatFloat('0.000',(cdsNotaFiscal_Cli_UFVLR_TOTAL.AsFloat / vVlrFaturamento) * 100));
    cdsNotaFiscal_Cli_UFclPerc_SobreFat.AsFloat := StrToFloat(FormatFloat('0.000',vAux));
  end;
end;

procedure TDMConsFaturamento.cdsNotaFiscal_Cli_CidCalcFields(
  DataSet: TDataSet);
var
  vAux: Real;
begin
  if (vVlrFaturamento > 0) and (cdsNotaFiscal_Cli_CidVLR_TOTAL.AsFloat > 0) then
  begin
    vAux := StrToFloat(FormatFloat('0.000',(cdsNotaFiscal_Cli_CidVLR_TOTAL.AsFloat / vVlrFaturamento) * 100));
    cdsNotaFiscal_Cli_CidclPerc_SobreFat.AsFloat := StrToFloat(FormatFloat('0.000',vAux));
  end;
end;

procedure TDMConsFaturamento.cdsProduto_UFCalcFields(DataSet: TDataSet);
begin
  cdsProduto_UFclPerc_SobreFat.AsFloat := fnc_Calcula_Perc_SobreFat(cdsProduto_UFVLR_TOTAL.AsFloat);
end;

procedure TDMConsFaturamento.cdsGrupo_UFCalcFields(DataSet: TDataSet);
begin
  cdsGrupo_UFclPerc_SobreFat.AsFloat := fnc_Calcula_Perc_SobreFat(cdsGrupo_UFVLR_TOTAL.AsFloat);
end;

procedure TDMConsFaturamento.cdsNotaFiscal_Cli_Cid_DetCalcFields(
  DataSet: TDataSet);
var
  vAux : Real;
begin
  if (vVlrFaturamento > 0) and (cdsNotaFiscal_Cli_Cid_DetVLR_TOTAL.AsFloat > 0) then
  begin
    vAux := StrToFloat(FormatFloat('0.000',(cdsNotaFiscal_Cli_Cid_DetVLR_TOTAL.AsFloat / vVlrFaturamento) * 100));
    cdsNotaFiscal_Cli_Cid_DetclPerc_SobreFat.AsFloat := StrToFloat(FormatFloat('0.000',vAux));
  end;

end;

end.


