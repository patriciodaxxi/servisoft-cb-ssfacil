unit UDMCadRecibo;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, dbXPress, UDMCadExtComissao, UDMGravarFinanceiro, xmldom,
  Math, Xmlxform, RLFilters, RLPDFFilter, DateUtils, LogTypes, dialogs, frxClass, frxDBSet, frxExportPDF, frxExportMail,
  frxRich, ValorPor;

type
  TDMCadRecibo = class(TDataModule)
    sdsRecibo_Parc: TSQLDataSet;
    cdsRecibo_Parc: TClientDataSet;
    dsRecibo_Parc: TDataSource;
    sdsCliente: TSQLDataSet;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    dsCliente: TDataSource;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
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
    sdsServico: TSQLDataSet;
    dspServico: TDataSetProvider;
    cdsServico: TClientDataSet;
    dsServico: TDataSource;
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
    cdsClienteCODIGO: TIntegerField;
    cdsClienteNOME: TStringField;
    cdsClienteFANTASIA: TStringField;
    sdsNFe_Email: TSQLDataSet;
    dspNFe_Email: TDataSetProvider;
    cdsNFe_Email: TClientDataSet;
    dsNFe_Email: TDataSource;
    cdsNFe_EmailID: TIntegerField;
    cdsNFe_EmailNOME: TStringField;
    cdsNFe_EmailEMAIL: TStringField;
    cdsParametrosOBS_SIMPLES: TStringField;
    cdsParametrosIMP_OBSSIMPLES: TStringField;
    cdsContasNOME: TStringField;
    qRegime_Trib: TSQLQuery;
    qRegime_TribID: TIntegerField;
    qRegime_TribCODIGO: TIntegerField;
    qRegime_TribNOME: TStringField;
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
    cdsParametrosUSA_VENDEDOR: TStringField;
    cdsParametrosUSA_CONSUMO: TStringField;
    sdsCidade: TSQLDataSet;
    dspCidade: TDataSetProvider;
    cdsCidade: TClientDataSet;
    dsCidade: TDataSource;
    cdsCidadeID: TIntegerField;
    cdsCidadeNOME: TStringField;
    cdsCidadeUF: TStringField;
    cdsCidadeCODMUNICIPIO: TStringField;
    cdsParametrosID_OPERACAO_BENEF_RET: TIntegerField;
    cdsParametrosID_OPERACAO_MAOOBRA: TIntegerField;
    sdsDuplicata_HistVLR_LANCAMENTO: TFloatField;
    cdsDuplicata_HistVLR_LANCAMENTO: TFloatField;
    cdsParametrosID_OPERACAO_TRIANGULAR: TIntegerField;
    cdsParametrosUSA_COD_BARRAS: TStringField;
    sdsDuplicata_HistID_FORMA_PAGAMENTO: TIntegerField;
    cdsDuplicata_HistID_FORMA_PAGAMENTO: TIntegerField;
    cdsParametrosUSA_ID_PRODUTO: TStringField;
    cdsParametrosEMPRESA_VEICULO: TStringField;
    cdsParametrosID_CONTA_PADRAO: TIntegerField;
    cdsParametrosID_TIPO_COBRANCA_PADRAO: TIntegerField;
    cdsParametrosPERMITE_QTDMAIOR_PEDIDO: TStringField;
    sdsDuplicataID_COB_ELETRONICA: TIntegerField;
    sdsDuplicataBOLETO_IMP: TStringField;
    sdsDuplicataID_CARTEIRA: TIntegerField;
    sdsDuplicataID_BANCO: TIntegerField;
    cdsDuplicataID_COB_ELETRONICA: TIntegerField;
    cdsDuplicataBOLETO_IMP: TStringField;
    cdsDuplicataID_CARTEIRA: TIntegerField;
    cdsDuplicataID_BANCO: TIntegerField;
    cdsServicoID: TIntegerField;
    cdsServicoCODIGO: TStringField;
    cdsServicoNOME: TStringField;
    cdsServicoTIPO_AS: TStringField;
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
    cdsFilialPRINCIPAL: TStringField;
    cdsFilialLIBERADO_ATE: TStringField;
    cdsFilialULTIMO_ACESSO: TStringField;
    cdsFilialUSARICMSSIMPLES: TStringField;
    cdsFilialSERIENORMAL: TStringField;
    cdsFilialID_REGIME_TRIB_NFSE: TIntegerField;
    cdsFilialINCENTIVO_CULTURAL: TStringField;
    cdsFilialSERIE_NFSE: TStringField;
    cdsFilialID_NATUREZA: TIntegerField;
    cdsFilialCOD_NATUREZA: TStringField;
    cdsFilialTIPO_NATUREZA: TStringField;
    cdsFilialNOME_PROVEDOR: TStringField;
    sdsServico_Int: TSQLDataSet;
    dspServico_Int: TDataSetProvider;
    cdsServico_Int: TClientDataSet;
    dsServico_Int: TDataSource;
    cdsServico_IntID: TIntegerField;
    cdsServico_IntNOME: TStringField;
    cdsServico_IntVLR_UNITARIO: TFloatField;
    cdsFilialID_SERVICO_SINT: TIntegerField;
    cdsFilialID_SERVICO_PAD: TIntegerField;
    cdsFilialCOD_SERVICO_SINT: TStringField;
    cdsServicoNOME_SERVICO: TStringField;
    cdsParametrosENDXMLNFSE: TStringField;
    cdsParametrosENDPDFNFSE: TStringField;
    cdsFilialPERC_IR: TFloatField;
    cdsFilialVLR_IR_MINIMO: TFloatField;
    cdsFilialPERC_ISS: TFloatField;
    cdsFilialCOD_REGIME_TIB_ESP: TIntegerField;
    cdsFilialCOD_TRIBUTACAO_MUNICIPIO: TStringField;
    cdsFilialCODMUNICIPIO: TStringField;
    cdsFilialNUMLOTE: TIntegerField;
    cdsFilialTIPO_RETORNO: TStringField;
    sdsDuplicataIMP_BOLETO: TStringField;
    sdsDuplicataNUM_REMESSA: TIntegerField;
    sdsDuplicataID_NOTA_SERVICO: TIntegerField;
    sdsDuplicataDESCRICAO: TStringField;
    cdsDuplicataIMP_BOLETO: TStringField;
    cdsDuplicataNUM_REMESSA: TIntegerField;
    cdsDuplicataID_NOTA_SERVICO: TIntegerField;
    cdsDuplicataDESCRICAO: TStringField;
    cdsFilialENDLOGO_NFSE: TStringField;
    cdsFilialPERC_CSLL: TFloatField;
    cdsFilialMOSTRAR_ALIQUOTA_PD: TStringField;
    cdsFilialINF_COD_SERVICO: TStringField;
    cdsCidadeID_PROVEDOR: TIntegerField;
    cdsCidadeTIPO_NATUREZA: TStringField;
    sdsDuplicataNUMRPS: TIntegerField;
    cdsDuplicataNUMRPS: TIntegerField;
    cdsFilialCNAE_NFSE: TStringField;
    cdsServicoCNAE: TStringField;
    cdsServicoPERC_ISS: TFloatField;
    cdsFilialLINKNFSE: TStringField;
    qPessoa_Servico: TSQLQuery;
    qPessoa_ServicoPERC_ISS: TFloatField;
    cdsFilialFONE_PREFEITURA: TStringField;
    cdsFilialSITE_PREFEITURA: TStringField;
    cdsFilialEND_LOGO_PREFEITURA: TStringField;
    cdsFilialPERC_INSS: TFloatField;
    cdsFilialID_ATIVIDADE_CID: TIntegerField;
    cdsServicoID_ATIVIDADE_CID: TIntegerField;
    cdsParametrosIMPRESSAO_MATRICIAL: TStringField;
    cdsFilialNFSE_HOMOLOGACAO: TStringField;
    cdsParametrosEMPRESA_RH: TStringField;
    sdsPessoa_Servico_Int: TSQLDataSet;
    dspPessoa_Servico_Int: TDataSetProvider;
    cdsPessoa_Servico_Int: TClientDataSet;
    cdsPessoa_Servico_IntCODIGO: TIntegerField;
    cdsPessoa_Servico_IntITEM: TIntegerField;
    cdsPessoa_Servico_IntID_SERVICO_INT: TIntegerField;
    cdsPessoa_Servico_IntCALCULAR_INSS: TStringField;
    cdsPessoa_Servico_IntSOMAR_DIMINUIR: TStringField;
    cdsPessoa_Servico_IntVLR_SERVICO: TFloatField;
    qProximaNota: TSQLQuery;
    qProximaNotaNUMNOTA: TIntegerField;
    cdsParametrosIMPRESSORA_CAMINHO: TStringField;
    sdsCondPgtoIMPRIMIR_NFSE: TStringField;
    cdsCondPgtoIMPRIMIR_NFSE: TStringField;
    cdsFilialPERC_CSRF: TFloatField;
    cdsFilialVLR_FATURAMENTO_MES_CSRF: TFloatField;
    qServico: TSQLQuery;
    qServicoID: TIntegerField;
    qServicoCODIGO: TStringField;
    qServicoNOME: TStringField;
    mImpNota: TClientDataSet;
    mImpNotaID_Nota: TIntegerField;
    dsmImpNota: TDataSource;
    cdsFilialPERC_TRIB_SERV: TFloatField;
    cdsFilialIMPRESSAO_MATRICIAL: TStringField;
    cdsPessoa_Servico_IntCALCULAR_ISSQN: TStringField;
    cdsPessoa_Servico_IntCALCULAR_PISCOFINS: TStringField;
    cdsPessoa_Servico_IntCALCULAR_CSLL: TStringField;
    cdsPessoa_Servico_IntCALCULAR_IR: TStringField;
    sdsDuplicataID_CONTA_ORCAMENTO: TIntegerField;
    cdsDuplicataID_CONTA_ORCAMENTO: TIntegerField;
    cdsParametrosID_CONTA_ORC_SERVICO: TIntegerField;
    sdsContaOrcamento: TSQLDataSet;
    dspContaOrcamento: TDataSetProvider;
    cdsContaOrcamento: TClientDataSet;
    cdsContaOrcamentoID: TIntegerField;
    cdsContaOrcamentoTIPO: TStringField;
    cdsContaOrcamentoCODIGO: TStringField;
    cdsContaOrcamentoDESCRICAO: TStringField;
    dsContaOrcamento: TDataSource;
    cdsParametrosUSA_CONTA_ORCAMENTO: TStringField;
    cdsClientePESSOA: TStringField;
    cdsClienteCNPJ_CPF: TStringField;
    cdsClienteID_CIDADE: TIntegerField;
    cdsClienteUF: TStringField;
    cdsClienteID_VENDEDOR: TIntegerField;
    cdsClienteID_CONDPGTO: TIntegerField;
    cdsClienteID_CONTABOLETO: TIntegerField;
    cdsClienteID_TIPOCOBRANCA: TIntegerField;
    cdsClienteID_REGIME_TRIB: TIntegerField;
    cdsClientePERC_COMISSAO: TFloatField;
    cdsClienteTP_CLIENTE: TStringField;
    cdsClienteRETEM_ISS: TStringField;
    cdsClienteRETEM_CSLL: TStringField;
    cdsClienteRETEM_PISCOFINS: TStringField;
    cdsClienteRETEM_INSS: TStringField;
    cdsClienteORGAO_PUBLICO: TStringField;
    cdsClienteID_NATUREZA: TIntegerField;
    cdsClienteDIMINUIR_RETENCAO: TStringField;
    cdsClientePERC_REDUCAO_INSS: TFloatField;
    cdsClienteID_SERVICO: TIntegerField;
    cdsClienteID_SERVICO_INT: TIntegerField;
    cdsClienteVLR_SERVICO: TFloatField;
    cdsClienteCLIENTE_CONTA_ID: TIntegerField;
    cdsClienteEMAIL_NFE: TStringField;
    cdsClienteEMAIL_NFE2: TStringField;
    sdsVendedor: TSQLDataSet;
    dspVendedor: TDataSetProvider;
    cdsVendedor: TClientDataSet;
    dsVendedor: TDataSource;
    sdsVendedorCODIGO: TIntegerField;
    sdsVendedorNOME: TStringField;
    sdsVendedorPERC_COMISSAO_VEND: TFloatField;
    cdsVendedorCODIGO: TIntegerField;
    cdsVendedorNOME: TStringField;
    cdsVendedorPERC_COMISSAO_VEND: TFloatField;
    sdsCondPgtoTIPO_CONDICAO: TStringField;
    sdsCondPgtoQTD_PARCELA: TIntegerField;
    sdsCondPgtoENTRADA: TStringField;
    cdsCondPgtoTIPO_CONDICAO: TStringField;
    cdsCondPgtoQTD_PARCELA: TIntegerField;
    cdsCondPgtoENTRADA: TStringField;
    sdsVendedorTIPO_COMISSAO: TStringField;
    cdsVendedorTIPO_COMISSAO: TStringField;
    cdsClienteEMAIL_PGTO: TStringField;
    cdsContaOrcamentoNOME_AUX: TStringField;
    cdsParametrosIMP_MESANO_REF_NOITEM_NFSE: TStringField;
    cdsClienteCOBRAR_TAXA_BANCO: TStringField;
    cdsContasVLR_TAXA: TFloatField;
    cdsContasAGENCIA: TStringField;
    cdsContasNUMCONTA: TStringField;
    cdsContasDIG_CONTA: TStringField;
    cdsContasDIG_AGENCIA: TStringField;
    cdsServicoCODIGO_NBS: TStringField;
    cdsServico_IntCODIGO_NBS: TStringField;
    cdsParametrosLEI_TRANSPARENCIA_TEXTO_ITEM: TStringField;
    cdsParametrosLEI_TRANSPARENCIA_PERC_ADIC: TStringField;
    cdsParametrosTIPO_LEI_TRANSPARENCIA: TStringField;
    cdsParametrosLEI_TRANSPARENCIA_SERVICO: TStringField;
    sdsObs_Aux: TSQLDataSet;
    dspObs_Aux: TDataSetProvider;
    cdsObs_Aux: TClientDataSet;
    dsObs_Aux: TDataSource;
    cdsObs_AuxID: TIntegerField;
    cdsObs_AuxNOME: TStringField;
    cdsObs_AuxOBS: TStringField;
    cdsParametrosUSA_BOLETO_ACBR: TStringField;
    cdsParametrosUSA_ENVIO_EMAIL_CATEGORIA: TStringField;
    qFilial_Email: TSQLQuery;
    qFilial_EmailID_FILIAL: TIntegerField;
    qFilial_EmailID_CONFIG_EMAIL: TIntegerField;
    qFilial_EmailNOME_CONFIG: TStringField;
    qFilial_EmailREMETENTE_NOME: TStringField;
    qFilial_EmailREMETENTE_EMAIL: TStringField;
    qFilial_EmailSMTP_CLIENTE: TStringField;
    qFilial_EmailSMTP_PORTA: TIntegerField;
    qFilial_EmailSMTP_REQUER_SSL: TStringField;
    qFilial_EmailSMTP_USUARIO: TStringField;
    qFilial_EmailSMTP_SENHA: TStringField;
    qFilial_EmailSOLICITAR_CONFIRMACAO: TStringField;
    qFilial_EmailBASE: TSmallintField;
    qFilial_EmailCNPJ_CPF_FILIAL: TStringField;
    sdsDuplicataTIPO_MOV: TStringField;
    cdsDuplicataTIPO_MOV: TStringField;
    qProximo_Num: TSQLQuery;
    qProximo_NumNUM_RECIBO: TIntegerField;
    sdsRecibo: TSQLDataSet;
    sdsReciboID: TIntegerField;
    sdsReciboID_CLIENTE: TIntegerField;
    sdsReciboDTEMISSAO: TDateField;
    sdsReciboVLR_TOTAL: TFloatField;
    sdsReciboID_CONTRATO: TIntegerField;
    sdsReciboNUM_CONTRATO: TIntegerField;
    sdsReciboANO_REF: TIntegerField;
    sdsReciboMES_REF: TIntegerField;
    sdsReciboOBS: TStringField;
    sdsReciboNUM_RECIBO: TIntegerField;
    sdsReciboFILIAL: TIntegerField;
    dspRecibo: TDataSetProvider;
    cdsRecibo: TClientDataSet;
    cdsReciboID: TIntegerField;
    cdsReciboID_CLIENTE: TIntegerField;
    cdsReciboDTEMISSAO: TDateField;
    cdsReciboVLR_TOTAL: TFloatField;
    cdsReciboID_CONTRATO: TIntegerField;
    cdsReciboNUM_CONTRATO: TIntegerField;
    cdsReciboANO_REF: TIntegerField;
    cdsReciboMES_REF: TIntegerField;
    cdsReciboOBS: TStringField;
    cdsReciboNUM_RECIBO: TIntegerField;
    cdsReciboFILIAL: TIntegerField;
    cdsRecibosdsRecibo_Itens: TDataSetField;
    dsRecibo: TDataSource;
    sdsRecibo_Itens: TSQLDataSet;
    sdsRecibo_ItensID: TIntegerField;
    sdsRecibo_ItensITEM: TIntegerField;
    sdsRecibo_ItensID_SERVICO_INT: TIntegerField;
    sdsRecibo_ItensQTD: TFloatField;
    sdsRecibo_ItensVLR_UNITARIO: TFloatField;
    sdsRecibo_ItensVLR_TOTAL: TFloatField;
    cdsRecibo_Itens: TClientDataSet;
    cdsRecibo_ItensID: TIntegerField;
    cdsRecibo_ItensITEM: TIntegerField;
    cdsRecibo_ItensID_SERVICO_INT: TIntegerField;
    cdsRecibo_ItensQTD: TFloatField;
    cdsRecibo_ItensVLR_UNITARIO: TFloatField;
    cdsRecibo_ItensVLR_TOTAL: TFloatField;
    dsRecibo_Itens: TDataSource;
    dsRecibo_Mestre: TDataSource;
    sdsRecibo_ParcID: TIntegerField;
    sdsRecibo_ParcITEM: TIntegerField;
    sdsRecibo_ParcDTVENCIMENTO: TDateField;
    sdsRecibo_ParcVLR_VENCIMENTO: TFloatField;
    sdsRecibo_ParcID_TIPOCOBRANCA: TIntegerField;
    sdsRecibo_ParcID_CONTA: TIntegerField;
    cdsRecibosdsRecibo_Parc: TDataSetField;
    cdsRecibo_ParcID: TIntegerField;
    cdsRecibo_ParcITEM: TIntegerField;
    cdsRecibo_ParcDTVENCIMENTO: TDateField;
    cdsRecibo_ParcVLR_VENCIMENTO: TFloatField;
    cdsRecibo_ParcID_TIPOCOBRANCA: TIntegerField;
    cdsRecibo_ParcID_CONTA: TIntegerField;
    sdsRecibo_Consulta: TSQLDataSet;
    dspRecibo_Consulta: TDataSetProvider;
    cdsRecibo_Consulta: TClientDataSet;
    cdsRecibo_ConsultaID: TIntegerField;
    cdsRecibo_ConsultaID_CLIENTE: TIntegerField;
    cdsRecibo_ConsultaDTEMISSAO: TDateField;
    cdsRecibo_ConsultaVLR_TOTAL: TFloatField;
    cdsRecibo_ConsultaID_CONTRATO: TIntegerField;
    cdsRecibo_ConsultaNUM_CONTRATO: TIntegerField;
    cdsRecibo_ConsultaANO_REF: TIntegerField;
    cdsRecibo_ConsultaMES_REF: TIntegerField;
    cdsRecibo_ConsultaOBS: TStringField;
    cdsRecibo_ConsultaNUM_RECIBO: TIntegerField;
    cdsRecibo_ConsultaFILIAL: TIntegerField;
    cdsRecibo_ConsultaNOME_CLIENTE: TStringField;
    dsRecibo_Consulta: TDataSource;
    sdsReciboImp: TSQLDataSet;
    dspReciboImp: TDataSetProvider;
    cdsReciboImp: TClientDataSet;
    cdsReciboImpID: TIntegerField;
    cdsReciboImpID_CLIENTE: TIntegerField;
    cdsReciboImpDTEMISSAO: TDateField;
    cdsReciboImpVLR_TOTAL: TFloatField;
    cdsReciboImpID_CONTRATO: TIntegerField;
    cdsReciboImpNUM_CONTRATO: TIntegerField;
    cdsReciboImpANO_REF: TIntegerField;
    cdsReciboImpMES_REF: TIntegerField;
    cdsReciboImpOBS: TStringField;
    cdsReciboImpNUM_RECIBO: TIntegerField;
    cdsReciboImpFILIAL: TIntegerField;
    cdsReciboImpNOME_CLIENTE: TStringField;
    cdsReciboImpENDERECO: TStringField;
    cdsReciboImpUF: TStringField;
    cdsReciboImpNUM_END: TStringField;
    cdsReciboImpCEP: TStringField;
    cdsReciboImpBAIRRO: TStringField;
    cdsReciboImpID_CIDADE: TIntegerField;
    cdsReciboImpNOME_CIDADE: TStringField;
    cdsReciboImpINSCR_EST: TStringField;
    cdsReciboImpPESSOA: TStringField;
    dsReciboImp: TDataSource;
    sdsReciboImp_Itens: TSQLDataSet;
    cdsReciboImp_Itens: TClientDataSet;
    cdsReciboImp_ItensID: TIntegerField;
    cdsReciboImp_ItensITEM: TIntegerField;
    cdsReciboImp_ItensID_SERVICO_INT: TIntegerField;
    cdsReciboImp_ItensQTD: TFloatField;
    cdsReciboImp_ItensVLR_UNITARIO: TFloatField;
    cdsReciboImp_ItensVLR_TOTAL: TFloatField;
    dsReciboImp_Itens: TDataSource;
    sdsReciboID_CONTA_ORCAMENTO: TIntegerField;
    sdsReciboID_VENDEDOR: TIntegerField;
    sdsReciboPERC_COMISSAO: TFloatField;
    sdsReciboID_CONTA: TIntegerField;
    sdsReciboID_CONDPGTO: TIntegerField;
    sdsReciboVLR_ENTRADA: TFloatField;
    sdsReciboTIPO_PRAZO: TStringField;
    cdsReciboID_CONTA_ORCAMENTO: TIntegerField;
    cdsReciboID_VENDEDOR: TIntegerField;
    cdsReciboPERC_COMISSAO: TFloatField;
    cdsReciboID_CONTA: TIntegerField;
    cdsReciboID_CONDPGTO: TIntegerField;
    cdsReciboVLR_ENTRADA: TFloatField;
    cdsReciboTIPO_PRAZO: TStringField;
    sdsReciboID_TIPO_COBRANCA: TIntegerField;
    cdsReciboID_TIPO_COBRANCA: TIntegerField;
    cdsRecibo_ParclkNome_TipoCobranca: TStringField;
    cdsRecibo_ParclkNome_Conta: TStringField;
    sdsRecibo_ItensNOME_SERVICO_INT: TStringField;
    cdsRecibo_ItensNOME_SERVICO_INT: TStringField;
    sdsDuplicataID_RECIBO: TIntegerField;
    cdsDuplicataID_RECIBO: TIntegerField;
    sdsReciboID_MOVIMENTO: TIntegerField;
    cdsReciboID_MOVIMENTO: TIntegerField;
    sdsReciboVLR_DUPLICATA: TFloatField;
    cdsReciboVLR_DUPLICATA: TFloatField;
    sdsRecibo_ItensGERAR_DUPLICATA: TStringField;
    cdsRecibo_ItensGERAR_DUPLICATA: TStringField;
    cdsReciboImp_ItensNOME_SERVICO_INT: TStringField;
    cdsReciboImp_ItensGERAR_DUPLICATA: TStringField;
    dspReciboImp_Itens: TDataSetProvider;
    cdsReciboImpCNPJ_CPF: TStringField;
    sdsRecibo_ItensID_MOV_SERVICO_EXTRA: TIntegerField;
    cdsRecibo_ItensID_MOV_SERVICO_EXTRA: TIntegerField;
    sdsReciboANO_CONTRATO: TIntegerField;
    cdsReciboANO_CONTRATO: TIntegerField;
    cdsParametrosUSA_ANO_CONTRATO: TStringField;
    frxDBDataset1: TfrxDBDataset;
    sdsMov_Servico: TSQLDataSet;
    dspMov_Servico: TDataSetProvider;
    cdsMov_Servico: TClientDataSet;
    cdsMov_ServicoID: TIntegerField;
    cdsMov_ServicoID_SERVICO: TIntegerField;
    cdsMov_ServicoID_SERVICO_INT: TIntegerField;
    cdsMov_ServicoCOMPLEMENTO: TStringField;
    cdsMov_ServicoDTEMISSAO: TDateField;
    cdsMov_ServicoQTD: TFloatField;
    cdsMov_ServicoVLR_UNITARIO: TFloatField;
    cdsMov_ServicoVLR_TOTAL: TFloatField;
    cdsMov_ServicoID_CLIENTE: TIntegerField;
    cdsMov_ServicoFILIAL: TIntegerField;
    cdsMov_ServicoID_NOTA: TIntegerField;
    cdsMov_ServicoID_RECIBO: TIntegerField;
    cdsMov_ServicoENCERRADO: TStringField;
    cdsMov_ServicoNOME_SERVICO: TStringField;
    cdsMov_ServicoNOME_SERVICO_INT: TStringField;
    cdsMov_ServicoNOME_CLIENTE: TStringField;
    cdsMov_ServicoNOME_FILIAL: TStringField;
    cdsMov_ServicoFANTASIA_FILIAL: TStringField;
    cdsMov_ServicoSERVICO_COMPLEMENTO: TStringField;
    dsMov_Servico: TDataSource;
    frxRichObject1: TfrxRichObject;
    frxMailExport1: TfrxMailExport;
    frxPDFExport1: TfrxPDFExport;
    frxReport1: TfrxReport;
    dsFilialRelatorios: TDataSource;
    cdsFilialRelatorios: TClientDataSet;
    cdsFilialRelatoriosID: TIntegerField;
    cdsFilialRelatoriosITEM: TIntegerField;
    cdsFilialRelatoriosTIPO: TSmallintField;
    cdsFilialRelatoriosCAMINHO: TStringField;
    sdsFilialRelatorios: TSQLDataSet;
    sdsFilialRelatoriosID: TIntegerField;
    sdsFilialRelatoriosITEM: TIntegerField;
    sdsFilialRelatoriosTIPO: TSmallintField;
    sdsFilialRelatoriosCAMINHO: TStringField;
    dsmFilial: TDataSource;
    cdsFilialsdsFilialRelatorios: TDataSetField;
    frxDBDataset2: TfrxDBDataset;
    cdsFilialEMAIL: TStringField;
    frxDBDataset3: TfrxDBDataset;
    cdsReciboImpclVlrExtenso: TStringField;
    frxDBDataset4: TfrxDBDataset;
    sdsReciboImp_Parc: TSQLDataSet;
    cdsReciboImp_Parc: TClientDataSet;
    dsReciboImp_Parc: TDataSource;
    dspReciboImp_Parc: TDataSetProvider;
    cdsReciboImp_ParcID: TIntegerField;
    cdsReciboImp_ParcITEM: TIntegerField;
    cdsReciboImp_ParcDTVENCIMENTO: TDateField;
    cdsReciboImp_ParcVLR_VENCIMENTO: TFloatField;
    cdsReciboImp_ParcID_TIPOCOBRANCA: TIntegerField;
    cdsReciboImp_ParcID_CONTA: TIntegerField;
    frxDBDataset5: TfrxDBDataset;
    dsParametros: TDataSource;
    sdsDuplicataANO_REF: TIntegerField;
    sdsDuplicataMES_REF: TIntegerField;
    sdsDuplicataTITULO_CARTORIO: TStringField;
    cdsDuplicataANO_REF: TIntegerField;
    cdsDuplicataMES_REF: TIntegerField;
    cdsDuplicataTITULO_CARTORIO: TStringField;
    sdsRecibo_ItensID_MOVIMENTO: TIntegerField;
    cdsRecibo_ItensID_MOVIMENTO: TIntegerField;
    qServico_Int: TSQLQuery;
    qServico_IntID: TIntegerField;
    qServico_IntNOME: TStringField;
    qServico_IntVLR_UNITARIO: TFloatField;
    qServico_IntID_VENDEDOR: TIntegerField;
    qServico_IntPERC_COMISSAO: TFloatField;
    qServico_IntCODIGO_NBS: TStringField;
    qServico_IntID_SERVICO_PADRAO: TIntegerField;
    sdsDuplicataPERC_BASE_COMISSAO: TFloatField;
    cdsDuplicataPERC_BASE_COMISSAO: TFloatField;
    sdsRecibo_Contrato: TSQLDataSet;
    sdsRecibo_ContratoID: TIntegerField;
    sdsRecibo_ContratoID_CONTRATO: TIntegerField;
    sdsRecibo_ContratoNUM_CONTRATO: TIntegerField;
    sdsRecibo_ContratoANO_CONTRATO: TIntegerField;
    sdsRecibo_ContratoANO_REF: TIntegerField;
    sdsRecibo_ContratoMES_REF: TIntegerField;
    cdsRecibosdsRecibo_Contrato: TDataSetField;
    cdsRecibo_Contrato: TClientDataSet;
    cdsRecibo_ContratoID: TIntegerField;
    cdsRecibo_ContratoID_CONTRATO: TIntegerField;
    cdsRecibo_ContratoNUM_CONTRATO: TIntegerField;
    cdsRecibo_ContratoANO_CONTRATO: TIntegerField;
    cdsRecibo_ContratoANO_REF: TIntegerField;
    cdsRecibo_ContratoMES_REF: TIntegerField;
    dsRecibo_Contrato: TDataSource;
    qParametros_Ser: TSQLQuery;
    qParametros_SerID: TIntegerField;
    qParametros_SerAGRUPA_CONTRATO_NFSE: TStringField;
    sdsRecibo_ItensID_CONTRATO: TIntegerField;
    sdsRecibo_ItensANO_CONTRATO: TIntegerField;
    sdsRecibo_ItensNUM_CONTRATO: TIntegerField;
    cdsRecibo_ItensID_CONTRATO: TIntegerField;
    cdsRecibo_ItensANO_CONTRATO: TIntegerField;
    cdsRecibo_ItensNUM_CONTRATO: TIntegerField;
    cdsReciboImp_ItensID_CONTRATO: TIntegerField;
    cdsReciboImp_ItensANO_CONTRATO: TIntegerField;
    cdsReciboImp_ItensNUM_CONTRATO: TIntegerField;
    sdsReciboVLR_DESCONTO: TFloatField;
    sdsReciboPERC_DESCONTO: TFloatField;
    cdsReciboVLR_DESCONTO: TFloatField;
    cdsReciboPERC_DESCONTO: TFloatField;
    sdsDuplicataID_TERMINAL: TIntegerField;
    cdsDuplicataID_TERMINAL: TIntegerField;
    sdsDuplicataVLR_MULTA: TFloatField;
    cdsDuplicataVLR_MULTA: TFloatField;
    sdsDuplicata_HistVLR_MULTA: TFloatField;
    cdsDuplicata_HistVLR_MULTA: TFloatField;
    frxDBDataset6: TfrxDBDataset;
    ValorPorExtenso1: TValorPorExtenso;
    sdsDuplicataNGR: TStringField;
    sdsDuplicataAPROVADO: TStringField;
    cdsDuplicataNGR: TStringField;
    cdsDuplicataAPROVADO: TStringField;
    qParametros_Fin: TSQLQuery;
    qParametros_FinUSA_NGR: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsDuplicataBeforePost(DataSet: TDataSet);
    procedure cdsDuplicataReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsDuplicata_HistReconcileError(
      DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure cdsReciboBeforePost(DataSet: TDataSet);
    procedure dspReciboUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsRecibo_ItensNewRecord(DataSet: TDataSet);
    procedure cdsReciboImpCalcFields(DataSet: TDataSet);
    procedure cdsReciboNewRecord(DataSet: TDataSet);
    procedure cdsDuplicataNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    vContadorOutros: Integer;
    procedure prc_Gravar_Recibo_Parc(Parcela: Integer; Data: TDateTime; Valor: Real);
    procedure prc_Gravar_Financeiro(Tipo: String);
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMSGRecibo: String;
    vMsgErroParc: String;
    vVlrTotal_NFSe: Real;

    ctCommand, ctConsulta, ctServico, ctRecibo_Imp, ctMov_Servico, ctRecibo_Imp_Itens, ctRecibo_Imp_Parc: String;
                                                                                       
    procedure prc_Localizar(ID: Integer);
    procedure prc_Inserir(Tipo_Reg: String = 'NTS');
    procedure prc_Gravar;
    procedure prc_Excluir;
    procedure prc_Excluir_Item;
    function fnc_Possui_Erro: Boolean;

    procedure prc_Inserir_Itens;

    procedure prc_Abrir_cdsCliente(Tipo_Reg: String);
    procedure Abrir_cdsDuplicata(ID: Integer);

    function fnc_Gerar_Recibo_Parc: Boolean;

    procedure Gravar_Duplicata(Tipo, TransfICMS: String; Parcela: Integer; Valor: Real; Data: TDateTime; Prazo: String = '');
                                                 //Tipo  P= Contas a Pagar   R= Contas a Receber
                                                 //Prazo = ENT=Entrada  AVI=Avista
    procedure Gravar_Dupicata_Hist(Tipo: String);
    procedure prc_Gravar_Comissao(Prazo: String = '');

    procedure prc_Excluir_Duplicata;
    procedure prc_Excluir_Financeiro;
    procedure prc_Excluir_Movimento;
    procedure Excluir_ExtComissao;
    function fnc_Duplicata_Paga: Boolean;

    procedure prc_Le_Itens(Tipo: String); //Z=Zerar  G=Gerar Duplicata

    procedure prc_Abrir_Servico;

    function fnc_Buscar_NumLote(Filial: Integer): Integer;

    procedure prc_Calcular_Item;

    function fnc_Buscar_Pessoa_Servico(ID_Cliente, ID_Servico: Integer): Real;

    procedure prc_Recalcular;
    procedure prc_Limpar_Totais;
  end;

var
  DMCadRecibo: TDMCadRecibo;

implementation

uses DmdDatabase, uUtilPadrao, SendMailOptions, LogProvider, VarUtils;

{$R *.dfm}

{ TDMCadCFOP}

function TDMCadRecibo.fnc_Buscar_NumLote(Filial: Integer): Integer;
var
  sds: TSQLDataSet;
  vNumAux: Integer;
begin
  if Filial <= 0 then
    exit;

  Result := 0;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  try
    sds.CommandText := 'SELECT MAX(NUMLOTE) NUMLOTE FROM FILIAL ' +
                       'WHERE ID = ' + IntToStr(Filial);
    sds.Open;
    vNumAux := sds.FieldByName('NUMLOTE').AsInteger + 1;

    sds.Close;
    sds.CommandText := 'UPDATE FILIAL SET NUMLOTE = ' + IntToStr(vNumAux) +
                       'WHERE ID = ' + IntToStr(Filial);
    sds.ExecSQL;

    Result := vNumAux;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TDMCadRecibo.prc_Excluir_Duplicata;
var
  sds: TSQLDataSet;
begin
  if  cdsReciboID.AsInteger <= 0 then
    exit;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  try
    sds.CommandText := 'DELETE FROM DUPLICATA ' +
                       'WHERE ID_RECIBO = ' + IntToStr(cdsReciboID.AsInteger);
    sds.ExecSQL;

  finally
    FreeAndNil(sds);
  end;
end;

procedure TDMCadRecibo.prc_Inserir(Tipo_Reg: String);
var
  vAux: Integer;
  sds: TSQLDataSet;
begin
  if not cdsRecibo.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('RECIBO',0);

  cdsRecibo.Insert;
  cdsReciboID.AsInteger         := vAux;
  cdsReciboFILIAL.AsInteger     := vFilial;
  cdsReciboDTEMISSAO.AsDateTime := Date;
end;

procedure TDMCadRecibo.prc_Excluir;
var
  ID: TTransactionDesc;
  sds: TSQLDataSet;
begin
  if not(cdsRecibo.Active) or (cdsRecibo.IsEmpty) then
    exit;

  //mPedidoAux.EmptyDataSet;
  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'UPDATE TABELALOC SET FLAG = 1 ' +
                         'WHERE TABELA = ' + QuotedStr('RECIBO');
    sds.ExecSQL();

    prc_Excluir_Duplicata;
    prc_Excluir_Financeiro;
    prc_Excluir_Movimento;

    cdsRecibo_Itens.First;
    while not cdsRecibo_Itens.Eof do
      cdsRecibo_Itens.Delete;
    cdsRecibo_Parc.First;
    while not cdsRecibo_Parc.Eof do
      cdsRecibo_Parc.Delete;
    cdsRecibo_Contrato.First;
    while not cdsRecibo_Contrato.Eof do
      cdsRecibo_Contrato.Delete;

    cdsRecibo.Delete;
    cdsRecibo.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
  FreeAndNil(sds);
end;

procedure TDMCadRecibo.prc_Gravar;
begin
  cdsRecibo.Post;
  cdsRecibo.ApplyUpdates(0);
end;

procedure TDMCadRecibo.prc_Localizar(ID: Integer); //-1 é para inclusão
begin
  cdsRecibo.Close;
  sdsRecibo.CommandText := ctCommand;
  if ID <> 0 then
    sdsRecibo.CommandText := sdsRecibo.CommandText +
                             ' WHERE ID = ' + IntToStr(ID);
  cdsRecibo.Open;
end;

procedure TDMCadRecibo.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand          := sdsRecibo.CommandText;
  ctConsulta         := sdsRecibo_Consulta.CommandText;
  ctServico          := sdsServico.CommandText;
  ctRecibo_Imp       := sdsReciboImp.CommandText;
  ctRecibo_Imp_Itens := sdsReciboImp_Itens.CommandText;
  ctRecibo_Imp_Parc  := sdsReciboImp_Parc.CommandText;
  ctMov_Servico      := sdsMov_Servico.CommandText;

  cdsCliente.Open;
  cdsFilial.Open;
  cdsTipoCobranca.Open;
  cdsCondPgto.Open;
  cdsContas.Open;
  cdsServico.Open;
  cdsParametros.Open;
  cdsServico_Int.Open;
  cdsCidade.Open;
  cdsContaOrcamento.Open;
  cdsObs_Aux.Open;
  qParametros_Ser.Close;
  qParametros_Ser.Open;
  qParametros_Fin.Close;
  qParametros_Fin.Open;

  if cdsParametrosUSA_VENDEDOR.AsString = 'S' then
    cdsVendedor.Open;
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

procedure TDMCadRecibo.prc_Excluir_Item;
begin
  cdsReciboVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',cdsReciboVLR_TOTAL.AsFloat - cdsRecibo_ItensVLR_TOTAL.AsFloat));
  cdsRecibo_Itens.Delete;
end;

procedure TDMCadRecibo.prc_Inserir_Itens;
var
  vItemAux: Integer;
  vID_CFOPAux, vID_OperacaoAux: Integer;
  vFinalidadeAux: String;
begin
  cdsRecibo_Itens.Last;
  vItemAux := cdsRecibo_ItensITEM.AsInteger;

  cdsRecibo_Itens.Insert;
  cdsRecibo_ItensID.AsInteger   := cdsReciboID.AsInteger;
  cdsRecibo_ItensITEM.AsInteger := vItemAux + 1;
  cdsRecibo_ItensQTD.AsInteger  := 1;
end;

function TDMCadRecibo.fnc_Possui_Erro: Boolean;
var
  vVlrAux: Real;
  vTexto: String;
begin
  Result := True;
  vMSGRecibo := '';
  if cdsRecibo_Itens.IsEmpty then
    vMSGRecibo := vMSGRecibo + #13 + '*** Não foi lançado nenhum item!';
  if (cdsReciboID_CLIENTE.AsInteger < 1) then
    vMSGRecibo := vMSGRecibo + #13 + '*** Cliente não informado!';
  if cdsReciboDTEMISSAO.AsDateTime < 10 then
    vMSGRecibo := vMSGRecibo + #13 + '*** Data de Emissão não informada!';
  if cdsClienteCODIGO.AsInteger <> cdsReciboID_CLIENTE.AsInteger then
    cdsCliente.Locate('CODIGO',cdsReciboID_CLIENTE.AsInteger,[loCaseInsensitive]);
  if cdsFilialID.AsInteger <> cdsReciboFILIAL.AsInteger then
    cdsFilial.Locate('ID',cdsReciboFILIAL.AsInteger,[loCaseInsensitive]);
  vVlrAux := StrToFloat(FormatFloat('0.00',0));
  cdsRecibo_Parc.First;
  while not cdsRecibo_Parc.Eof do
  begin
    vVlrAux := StrToFloat(FormatFloat('0.00',vVlrAux + cdsRecibo_ParcVLR_VENCIMENTO.AsFloat));
    cdsRecibo_Parc.Next;
  end;
  if (cdsReciboTIPO_PRAZO.AsString = 'V') and (StrToFloat(FormatFloat('0.00',cdsReciboVLR_DUPLICATA.AsFloat)) <= 0) then
    vMSGRecibo := vMSGRecibo + #13 + '*** Prazo informado a vista, mas o valor da duplicata é zerado!';
  if (cdsReciboTIPO_PRAZO.AsString = 'P') and (StrToFloat(FormatFloat('0.00',cdsReciboVLR_DUPLICATA.AsFloat)) <= 0) then
    vMSGRecibo := vMSGRecibo + #13 + '*** Prazo informado a prazo, mas o valor da duplicata é zerado!';
  if ((cdsReciboTIPO_PRAZO.AsString <> 'V') and (cdsReciboTIPO_PRAZO.AsString <> 'A')) and  (StrToFloat(FormatFloat('0.00',cdsReciboVLR_DUPLICATA.AsFloat)) <> StrToFloat(FormatFloat('0.00',vVlrAux))) then
    vMSGRecibo := vMSGRecibo + #13 + '*** Valor das parcelas diferente do valor da duplicata!';
  if (cdsReciboTIPO_PRAZO.AsString = 'V') and (cdsReciboID_CONTA.AsInteger <= 0) then
    vMSGRecibo := vMSGRecibo + #13 + '*** Nota é A Vista, precisa informar a conta/banco para lançamento no financeiro!';
  if vMSGRecibo <> '' then
    exit;
  Result := False;
end;

procedure TDMCadRecibo.prc_Abrir_cdsCliente(Tipo_Reg: String);
begin
  cdsCliente.Close;
  sdsCliente.CommandText := ' SELECT * FROM PESSOA  WHERE INATIVO = ' + QuotedStr('N');
  sdsCliente.CommandText := sdsCliente.CommandText + ' AND TP_CLIENTE = ' + QuotedStr('S');
  cdsCliente.Open;
end;

procedure TDMCadRecibo.Gravar_Duplicata(Tipo, TransfICMS: String; Parcela: Integer; Valor: Real; Data: TDateTime; Prazo: String = '');
                                                 //Tipo  P= Contas a Pagar   R= Contas a Receber
                                                 //Prazo = ENT=Entrada  AVI=Avista
var
  vAux: Integer;
begin
  if not cdsDuplicata.Active then
    Abrir_cdsDuplicata(0);

  vAux := dmDatabase.ProximaSequencia('DUPLICATA',0);

  if Parcela = 0 then
    Prazo := 'ENT';

  cdsDuplicata.Insert;
  cdsDuplicataID.AsInteger := vAux;
  cdsDuplicataTIPO_ES.AsString := 'E';
  cdsDuplicataFILIAL.AsInteger          := cdsReciboFILIAL.AsInteger;
  cdsDuplicataID_NOTA_SERVICO.AsInteger := 0;
  cdsDuplicataID_RECIBO.AsInteger       := cdsReciboID.AsInteger;
  cdsDuplicataPARCELA.AsInteger         := Parcela;
  cdsDuplicataNUMDUPLICATA.AsString     := 'RCB.' + cdsReciboNUM_RECIBO.AsString;
  cdsDuplicataNUMNOTA.AsInteger         := 0;
  cdsDuplicataSERIE.AsString            := 'REC';
  cdsDuplicataDTVENCIMENTO.AsDateTime   := Data;
  cdsDuplicataVLR_PARCELA.AsFloat       := StrToFloat(FormatFloat('0.00',Valor));
  cdsDuplicataVLR_RESTANTE.AsFloat      := StrToFloat(FormatFloat('0.00',Valor));
  cdsDuplicataVLR_PAGO.AsFloat          := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicataVLR_DEVOLUCAO.AsFloat     := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicataVLR_DESPESAS.AsFloat      := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicataVLR_DESCONTO.AsFloat      := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicataVLR_JUROSPAGOS.AsFloat    := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicataVLR_MULTA.AsFloat         := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicataVLR_COMISSAO.AsFloat      := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicataPERC_COMISSAO.AsFloat     := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicataPERC_BASE_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',100));
  if (cdsReciboID_VENDEDOR.AsInteger > 0) and (StrToFloat(FormatFloat('0.00',cdsReciboPERC_COMISSAO.AsFloat)) > 0) then
  begin
    cdsDuplicataID_VENDEDOR.AsInteger := cdsReciboID_VENDEDOR.AsInteger;
    cdsDuplicataPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',cdsReciboPERC_COMISSAO.AsFloat));
  end;
  cdsDuplicataDTULTPAGAMENTO.Clear;
  cdsDuplicataID_PESSOA.AsInteger := cdsReciboID_CLIENTE.AsInteger;
  if (Prazo = 'ENT') or (Prazo = 'AVI') then
  begin
    if cdsReciboID_CONTA.AsInteger > 0 then
      cdsDuplicataID_CONTA.AsInteger      := cdsReciboID_CONTA.AsInteger;
    if cdsReciboID_TIPO_COBRANCA.AsInteger > 0 then
      cdsDuplicataID_TIPOCOBRANCA.AsInteger := cdsReciboID_TIPO_COBRANCA.AsInteger;
    if cdsReciboID_CONTA.AsInteger > 0 then
      cdsDuplicataID_CONTA_BOLETO.AsInteger := cdsReciboID_CONTA.AsInteger;
    cdsDuplicataDTULTPAGAMENTO.AsDateTime := Date;
    cdsDuplicataVLR_RESTANTE.AsFloat      := StrToFloat(FormatFloat('0.00',0));
    cdsDuplicataVLR_PAGO.AsFloat          := StrToFloat(FormatFloat('0.00',Valor));
  end
  else
  begin
    if cdsRecibo_ParcID_CONTA.AsInteger > 0 then
      cdsDuplicataID_CONTA.AsInteger := cdsRecibo_ParcID_CONTA.AsInteger
    else
    if cdsReciboID_CONTA.AsInteger > 0 then
      cdsDuplicataID_CONTA.AsInteger := cdsReciboID_CONTA.AsInteger;
    if cdsRecibo_ParcID_TIPOCOBRANCA.AsInteger > 0 then
      cdsDuplicataID_TIPOCOBRANCA.AsInteger := cdsRecibo_ParcID_TIPOCOBRANCA.AsInteger
    else
    if cdsReciboID_TIPO_COBRANCA.AsInteger > 0 then
      cdsDuplicataID_TIPOCOBRANCA.AsInteger := cdsReciboID_TIPO_COBRANCA.AsInteger;
    if cdsDuplicataID_CONTA.AsInteger > 0 then
      cdsDuplicataID_CONTA_BOLETO.AsInteger := cdsDuplicataID_CONTA.AsInteger;
  end;
  cdsDuplicataID_COMISSAO.AsInteger       := 0;
  cdsDuplicataQTD_DIASATRASO.AsInteger    := 0;
  cdsDuplicataDTRECEBIMENTO_TITULO.Clear;
  cdsDuplicataDTEMISSAO.AsDateTime        := cdsReciboDTEMISSAO.AsDateTime;
  cdsDuplicataPAGO_CARTORIO.AsString      := 'N';
  cdsDuplicataPROTESTADO.AsString         := 'N';
  cdsDuplicataTIPO_LANCAMENTO.AsString    := 'REC';
  cdsDuplicataARQUIVO_GERADO.AsString     := 'N';
  cdsDuplicataTRANSFERENCIA_ICMS.AsString := TransfICMS;
  cdsDuplicataNOSSONUMERO.AsString        := '';
  cdsDuplicataDTFINANCEIRO.Clear;
  cdsDuplicataNUMCHEQUE.AsInteger         := 0;
  cdsDuplicataACEITE.AsString             := '';
  cdsDuplicataNUMRPS.AsInteger            := 0;
  if cdsReciboID_CONTA_ORCAMENTO.AsInteger > 0 then
    cdsDuplicataID_CONTA_ORCAMENTO.AsInteger := cdsReciboID_CONTA_ORCAMENTO.AsInteger
  else
    cdsDuplicataID_CONTA_ORCAMENTO.Clear;
  if cdsDuplicataID_CONTA.AsInteger <= 0 then
    cdsDuplicataID_CONTA.Clear
  else
  if cdsContasID.AsInteger <> cdsDuplicataID_CONTA.AsInteger then
  begin
    if not cdsContas.Locate('ID',cdsDuplicataID_CONTA.AsInteger,[loCaseInsensitive]) then
    begin
      cdsDuplicataID_CONTA.Clear;
      cdsDuplicataID_CONTA_BOLETO.Clear;
    end;
  end;
  cdsDuplicataTIPO_MOV.AsString := 'N';
  cdsDuplicataTITULO_CARTORIO.AsString := 'N';
  if cdsReciboMES_REF.AsInteger > 0 then
  begin
    cdsDuplicataANO_REF.AsInteger := cdsReciboANO_REF.AsInteger;
    cdsDuplicataMES_REF.AsInteger := cdsReciboMES_REF.AsInteger;
  end
  else
  begin
    cdsDuplicataANO_REF.AsInteger := YearOf(cdsReciboDTEMISSAO.AsDateTime);
    cdsDuplicataMES_REF.AsInteger := MonthOf(cdsReciboDTEMISSAO.AsDateTime);
  end;
  //12/07/2016
  if vTerminal <= 0 then
    cdsDuplicataID_TERMINAL.Clear
  else
    cdsDuplicataID_TERMINAL.AsInteger := vTerminal;
  cdsDuplicata.Post;

  Gravar_Dupicata_Hist('ENT');
  if (Prazo = 'ENT') or (Prazo = 'AVI') then
    Gravar_Dupicata_Hist('PAG');

  cdsDuplicata.ApplyUpdates(0);
end;

procedure TDMCadRecibo.Abrir_cdsDuplicata(ID: Integer);
begin
  cdsDuplicata.Close;
  sdsDuplicata.CommandText := 'SELECT * FROM DUPLICATA WHERE ID = ' + IntToStr(ID);

  cdsDuplicata.Open;
end;

procedure TDMCadRecibo.Gravar_Dupicata_Hist(Tipo: String);
var
  vItemAux: Integer;
begin
  cdsDuplicata_Hist.Last;
  vItemAux := cdsDuplicata_HistITEM.AsInteger;
  vItemAux := vItemAux + 1;  
                          
  cdsDuplicata_Hist.Insert;
  cdsDuplicata_HistID.AsInteger               := cdsDuplicataID.AsInteger;
  cdsDuplicata_HistITEM.AsInteger             := vItemAux;
  cdsDuplicata_HistTIPO_HISTORICO.AsString    := 'ENT';
  cdsDuplicata_HistID_HISTORICO.AsInteger     := 0;
  cdsDuplicata_HistVLR_LANCAMENTO.AsFloat     := cdsDuplicataVLR_PARCELA.AsFloat;
  cdsDuplicata_HistVLR_JUROSPAGOS.AsFloat     := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicata_HistVLR_MULTA.AsFloat          := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicata_HistVLR_DESCONTOS.AsFloat      := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicata_HistVLR_DESPESAS.AsFloat       := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicata_HistVLR_DEVOLUCAO.AsFloat      := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicata_HistVLR_JUROSCALCULADO.AsFloat := StrToFloat(FormatFloat('0.00',0));
  if Tipo = 'ENT' then
  begin
    cdsDuplicata_HistCOMPLEMENTO.AsString  := 'ENTRADA DO TÍTULO';
    cdsDuplicata_HistVLR_PAGAMENTO.AsFloat := StrToFloat(FormatFloat('0.00',0));
  end
  else
  if Tipo = 'PAG' then
  begin
    cdsDuplicata_HistTIPO_HISTORICO.AsString      := 'PAG';
    cdsDuplicata_HistCOMPLEMENTO.AsString         := 'PAGAMENTO DO TÍTULO';
    cdsDuplicata_HistVLR_PAGAMENTO.AsFloat        := StrToFloat(FormatFloat('0.00',cdsDuplicataVLR_PARCELA.AsFloat));
    cdsDuplicata_HistID_FORMA_PAGAMENTO.AsInteger := cdsDuplicataID_TIPOCOBRANCA.AsInteger;
  end;
  cdsDuplicata_HistDTHISTORICO.AsDateTime  := Date;
  cdsDuplicata_HistDTLANCAMENTO.AsDateTime := cdsDuplicataDTEMISSAO.AsDateTime;
  cdsDuplicata_HistNUMCHEQUE.AsInteger     := 0;
  cdsDuplicata_HistDTPREVISAO_CHEQUE.Clear;
  if cdsDuplicataID_CONTA.AsInteger > 0 then
    cdsDuplicata_HistID_CONTA.AsInteger := cdsDuplicataID_CONTA.AsInteger;
  cdsDuplicata_HistID_COMISSAO.AsInteger   := 0;
  cdsDuplicata_HistTIPO_ES.AsString        := cdsDuplicataTIPO_ES.AsString;
  cdsDuplicata_Hist.Post;

  if Tipo = 'PAG' then
  begin
    if cdsReciboTIPO_PRAZO.AsString = 'V' then
    begin
      prc_Gravar_Comissao('AVI');
      prc_Gravar_Financeiro('AVI');
    end
    else
    begin
      prc_Gravar_Comissao('ENT');
      prc_Gravar_Financeiro('ENT');
    end;
  end;
end;

function TDMCadRecibo.fnc_Gerar_Recibo_Parc: Boolean;
var
  vParcAux: Integer;
  vDataAux: TDateTime;
  vDataOri: TDateTime;
  vValorParc, vValorOri: Real;
  i: Integer;
  vQtdParc: Integer;
begin
  Result := False;
  cdsRecibo_Parc.First;
  while not cdsRecibo_Parc.Eof do
    cdsRecibo_Parc.Delete;

  vMsgErroParc := '';
  if cdsReciboTIPO_PRAZO.AsString <> 'P' then
  begin
    cdsReciboVLR_ENTRADA.AsFloat := StrToFloat(FormatFloat('0.00',0));
    Result := True;
    exit;
  end;
  if StrToFloat(FormatFloat('0.00',cdsReciboVLR_DUPLICATA.AsFloat)) <= 0 then
    vMsgErroParc := vMsgErroParc + #13 + '*** Valor de duplicatas zerado!';
  if cdsReciboID_CONDPGTO.AsInteger < 1 then
    vMsgErroParc := vMsgErroParc + #13 + '*** Condição de pagamento não informada!';
  cdsCondPgto.Locate('ID',cdsReciboID_CONDPGTO.AsInteger,[loCaseInsensitive]);
  if (cdsCondPgto_Dia.RecordCount <= 0) and (cdsCondPgtoTIPO_CONDICAO.AsString <> 'F') then
    vMsgErroParc := vMsgErroParc + #13 + '*** Não existem dias informados no cadastro de condição de pagamento!';
  if (cdsCondPgtoQTD_PARCELA.AsInteger <= 0) and (cdsCondPgtoTIPO_CONDICAO.AsString = 'F') then
    vMsgErroParc := vMsgErroParc + #13 + '*** Não existe qtd. de parcelas no cadastro da condição de pagamento!';
  if vMsgErroParc <> '' then
    Exit;

  vDataOri := cdsReciboDTEMISSAO.AsDateTime;
  if cdsCondPgtoTIPO_CONDICAO.AsString = 'F' then
    vQtdParc := cdsCondPgtoQTD_PARCELA.AsInteger
  else
    vQtdParc   := cdsCondPgto_Dia.RecordCount;
  if (cdsCondPgtoENTRADA.AsString = 'N') then
    cdsReciboVLR_ENTRADA.AsFloat := 0;
  if (cdsCondPgtoENTRADA.AsString = 'S') and (StrToFloat(FormatFloat('0.00',cdsReciboVLR_ENTRADA.AsFloat)) <= 0) then
  begin
    i := vQtdParc + 1;
    vValorParc := StrToFloat(FormatFloat('0.00',cdsReciboVLR_DUPLICATA.AsFloat / i));
    cdsReciboVLR_ENTRADA.AsFloat := StrToFloat(FormatFloat('0.00',vValorParc));
  end;
  if StrToFloat(FormatFloat('0.00',cdsReciboVLR_ENTRADA.AsFloat)) > 0 then
  begin
    vValorParc := StrToFloat(FormatFloat('0.00',cdsReciboVLR_DUPLICATA.AsFloat - cdsReciboVLR_ENTRADA.AsFloat));
    prc_Gravar_Recibo_Parc(0,vDataOri,cdsReciboVLR_ENTRADA.AsFloat);
  end
  else
    vValorParc := StrToFloat(FormatFloat('0.00',cdsReciboVLR_DUPLICATA.AsFloat));
  vValorOri  := StrToFloat(FormatFloat('0.00',vValorParc));
  vValorParc := StrToFloat(FormatFloat('0.00',vValorParc / vQtdParc));

  {if cdsReciboDTINICIO_DUPLICATA.AsDateTime < 10 then
  begin
    if cdsReciboDTEMISSAO_CAD.AsDateTime > 10 then
      cdsReciboDTINICIO_DUPLICATA.AsDateTime := cdsReciboDTEMISSAO_CAD.AsDateTime
    else
      cdsReciboDTINICIO_DUPLICATA.AsDateTime := cdsReciboDTEMISSAO.AsDateTime;
  end;}
  //*** Foi tirado no dia 14/01/2013 aqui
  //if cdsReciboVLR_ENTRADA.AsFloat > 0 then
  //  prc_Gravar_Recibo_Parc(0,cdsReciboDTINICIO_DUPLICATA.AsDateTime,cdsReciboVLR_ENTRADA.AsFloat);
  //*********************************
  if cdsCondPgtoTIPO_CONDICAO.AsString = 'F' then
  begin
    i := 0;
    vQtdParc := cdsCondPgtoQTD_PARCELA.AsInteger;
    vDataAux := vDataOri;
    while vQtdParc > 0 do
    begin
      i := i + 1;
      if vQtdParc = 1 then
        vValorParc := StrToFloat(FormatFloat('0.00',vValorOri));
      vDataAux := IncMonth(vDataAux);
      prc_Gravar_Recibo_Parc(i,vDataAux,vValorParc);
      vValorOri := StrToFloat(FormatFloat('0.00',vValorOri - vValorParc));
      vQtdParc := vQtdParc - 1;
    end;
  end
  else
  begin
    i := 0;
    cdsCondPgto_Dia.First;
    while not cdsCondPgto_Dia.Eof do
    begin
      i := i + 1;
      if i = vQtdParc then
        vValorParc := StrToFloat(FormatFloat('0.00',vValorOri));
      vDataAux := vDataOri + cdsCondPgto_DiaQTDDIAS.AsInteger;
      prc_Gravar_Recibo_Parc(i,vDataAux,vValorParc);
      vValorOri := StrToFloat(FormatFloat('0.00',vValorOri - vValorParc));
      cdsCondPgto_Dia.Next;
    end;
  end;
  Result := True;

  Result := True;
end;

procedure TDMCadRecibo.prc_Gravar_Recibo_Parc(Parcela: Integer;
  Data: TDateTime; Valor: Real);
begin
  cdsRecibo_Parc.Insert;
  cdsRecibo_ParcID.AsInteger            := cdsReciboID.AsInteger;
  cdsRecibo_ParcITEM.AsInteger          := Parcela;
  cdsRecibo_ParcDTVENCIMENTO.AsDateTime := Data;
  cdsRecibo_ParcVLR_VENCIMENTO.AsFloat  := Valor;
  if cdsReciboID_TIPO_COBRANCA.AsInteger > 0 then
    cdsRecibo_ParcID_TIPOCOBRANCA.AsInteger := cdsReciboID_TIPO_COBRANCA.AsInteger
  else
    cdsRecibo_ParcID_TIPOCOBRANCA.Clear;
  if cdsReciboID_CONTA.AsInteger > 0 then
    cdsRecibo_ParcID_CONTA.AsInteger := cdsReciboID_CONTA.AsInteger
  else
    cdsRecibo_ParcID_CONTA.Clear;
  cdsRecibo_Parc.Post;
end;

procedure TDMCadRecibo.prc_Excluir_Financeiro;
var
  sds: TSQLDataSet;
begin
  if cdsReciboID.AsInteger <= 0 then
    exit;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;

  try
    sds.CommandText := 'DELETE FROM FINANCEIRO ' +
                       'WHERE ID_RECIBO = ' + IntToStr(cdsReciboID.AsInteger);
    sds.ExecSQL;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TDMCadRecibo.prc_Gravar_Financeiro(Tipo: String);//ENT=Entrada   AVI= Avista
var
  fDMGravarFinanceiro: TDMGravarFinanceiro;
begin
  fDMGravarFinanceiro := TDMGravarFinanceiro.Create(Self);

  cdsCliente.Locate('CODIGO',cdsDuplicataID_PESSOA.AsInteger,([Locaseinsensitive]));

  fDMGravarFinanceiro.vTipo_ES := 'E';
  if Tipo = 'ENT' then
    fDMGravarFinanceiro.vHistorico_Compl := 'Recto.Entrada Recibo nº ' + cdsDuplicataNUMDUPLICATA.AsString + ' de ' +  cdsClienteNOME.AsString
  else
  if Tipo = 'AVI' then
    fDMGravarFinanceiro.vHistorico_Compl := 'Recto.A Vista Recibo nº ' + cdsDuplicataNUMDUPLICATA.AsString + ' de ' + cdsClienteNOME.AsString;

  fDMGravarFinanceiro.vID_Conta           := cdsDuplicataID_CONTA.AsInteger;
  fDMGravarFinanceiro.vID_ModDuplicata    := cdsDuplicataID.AsInteger;
  fDMGravarFinanceiro.vItem_MovDuplicata  := cdsDuplicata_HistITEM.AsInteger;
  fDMGravarFinanceiro.vID_Historico       := 0;
  fDMGravarFinanceiro.vID_Pessoa          := cdsDuplicataID_PESSOA.AsInteger;
  fDMGravarFinanceiro.vID_Forma_Pagamento := cdsDuplicataID_TIPOCOBRANCA.AsInteger;
  fDMGravarFinanceiro.vID_ExtComissao     := 0;
  fDMGravarFinanceiro.vDtMovimento        := cdsDuplicata_HistDTLANCAMENTO.AsDateTime;
  fDMGravarFinanceiro.vVlr_Movimento      := StrToFloat(FormatFloat('0.00',cdsDuplicata_HistVLR_PAGAMENTO.AsFloat));
  fDMGravarFinanceiro.vID_Conta_Orcamento := cdsDuplicataID_CONTA_ORCAMENTO.AsInteger;

  fDMGravarFinanceiro.prc_Gravar;

  FreeAndNil(fDMGravarFinanceiro);
end;

procedure TDMCadRecibo.prc_Le_Itens(Tipo: String);
begin
  cdsReciboVLR_DUPLICATA.AsFloat := 0;
  cdsRecibo_Itens.First;
  while not cdsRecibo_Itens.Eof do
  begin
    cdsRecibo_Itens.Edit;
    {if Tipo = 'Z' Then
      cdsRecibo_ItensGERAR_DUPLICATA.AsString := 'N'
    else}
    cdsRecibo_ItensGERAR_DUPLICATA.AsString := 'S';
    //if cdsRecibo_ItensGERAR_DUPLICATA.AsString = 'S' then
    //  cdsRecibo_ItensVLR_DUPLICATA.AsFloat    := StrtoFloat(FormatFloat('0.00',cdsRecibo_ItensVLR_TOTAL.AsFloat))
    //else
    //  cdsRecibo_ItensVLR_DUPLICATA.AsFloat    := StrtoFloat(FormatFloat('0.00',0));
    //cdsReciboVLR_DUPLICATA.AsFloat := StrtoFloat(FormatFloat('0.00',cdsReciboVLR_DUPLICATA.AsFloat + cdsRecibo_ItensVLR_DUPLICATA.AsFloat));
    cdsReciboVLR_DUPLICATA.AsFloat := StrtoFloat(FormatFloat('0.00',cdsReciboVLR_DUPLICATA.AsFloat + cdsRecibo_ItensVLR_TOTAL.AsFloat));
    cdsRecibo_Itens.Post;
    cdsRecibo_Itens.Next;
  end;
end;

procedure TDMCadRecibo.prc_Abrir_Servico;
begin
  cdsServico.Close;
  sdsServico.CommandText := ctServico;
  if cdsFilialID_SERVICO_SINT.AsInteger > 0 then
    sdsServico.CommandText := sdsServico.CommandText + ' WHERE CODIGO LIKE ' + QuotedStr(cdsFilialCOD_SERVICO_SINT.AsString+'.%');
  cdsServico.Open;
end;

procedure TDMCadRecibo.prc_Calcular_Item;
begin
  cdsReciboVLR_TOTAL.AsFloat     := StrToFloat(FormatFloat('0.00',cdsReciboVLR_TOTAL.AsFloat + cdsRecibo_ItensVLR_TOTAL.AsFloat));
  cdsReciboVLR_DUPLICATA.AsFloat := StrToFloat(FormatFloat('0.00',cdsReciboVLR_TOTAL.AsFloat));
end;

function TDMCadRecibo.fnc_Buscar_Pessoa_Servico(ID_Cliente,
  ID_Servico: Integer): Real;
begin
  qPessoa_Servico.Close;
  qPessoa_Servico.ParamByName('CODIGO').AsInteger     := ID_Cliente;
  qPessoa_Servico.ParamByName('ID_SERVICO').AsInteger := ID_Servico;
  qPessoa_Servico.Open;
  Result := qPessoa_ServicoPERC_ISS.AsFloat;
end;

procedure TDMCadRecibo.prc_Recalcular;
var
  vAux : Real;
begin
  prc_Limpar_Totais;
  cdsRecibo_Itens.First;
  while not cdsRecibo_Itens.Eof do
  begin
    prc_Calcular_Item;
    cdsRecibo_Itens.Next;
  end;
  if StrToFloat(FormatFloat('0.00',cdsReciboPERC_DESCONTO.AsFloat)) > 0 then
  begin
    vAux := StrToFloat(FormatFloat('0.00',(cdsReciboVLR_TOTAL.AsFloat * cdsReciboPERC_DESCONTO.AsFloat) / 100));
    cdsReciboVLR_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
  end;
  if StrToFloat(FormatFloat('0.00',cdsReciboVLR_DESCONTO.AsFloat)) > 0 then
  begin
    cdsReciboVLR_TOTAL.AsFloat     := StrToFloat(FormatFloat('0.00',cdsReciboVLR_TOTAL.AsFloat - cdsReciboVLR_DESCONTO.AsFloat));
    cdsReciboVLR_DUPLICATA.AsFloat := StrToFloat(FormatFloat('0.00',cdsReciboVLR_DUPLICATA.AsFloat - cdsReciboVLR_DESCONTO.AsFloat));
  end;
end;

procedure TDMCadRecibo.prc_Limpar_Totais;
begin
  cdsReciboVLR_DUPLICATA.AsFloat := 0;
  cdsReciboVLR_ENTRADA.AsFloat   := 0;
  cdsReciboVLR_TOTAL.AsFloat     := 0;
  if StrToFloat(FormatFloat('0.00',cdsReciboPERC_DESCONTO.AsFloat)) > 0 then
    cdsReciboVLR_DESCONTO.AsFloat := 0;
end;

procedure TDMCadRecibo.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadRecibo.prc_Excluir_Movimento;
var
  sds: TSQLDataSet;
begin
  if cdsReciboID.AsInteger <= 0 then
    exit;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;

  try
    sds.CommandText := 'DELETE FROM MOVIMENTO ' +
                       'WHERE ID_RECIBO = ' + IntToStr(cdsReciboID.AsInteger);
    sds.ExecSQL;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TDMCadRecibo.cdsDuplicataBeforePost(DataSet: TDataSet);
begin
  if cdsDuplicataID_CONTA_ORCAMENTO.AsInteger <= 0 then
    cdsDuplicataID_CONTA_ORCAMENTO.Clear;
end;

procedure TDMCadRecibo.Excluir_ExtComissao;
var
  sds: TSQLDataSet;
begin
  if cdsReciboID.AsInteger <= 0 then
    exit;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText   := 'DELETE FROM EXTCOMISSAO WHERE ID_RECIBO = ' + IntToStr(cdsReciboID.AsInteger);
  sds.ExecSQL;

  FreeAndNil(sds);
end;

procedure TDMCadRecibo.prc_Gravar_Comissao(Prazo: String);
var
  fDMCadExtComissao: TDMCadExtComissao;
  vAux: Integer;
  vVlrBase: Real;
  vID_Duplicata: Integer;
  vItem_Hist: Integer;
  vID_NotaAux: Integer;
  vParcela: Integer;
  vNumRPSAux: Integer;
begin
  if (StrToFloat(FormatFloat('0.00',cdsReciboPERC_COMISSAO.AsFloat)) <= 0) and (StrToFloat(FormatFloat('0.00',cdsReciboVLR_TOTAL.AsFloat)) > 0) then
    exit;
  if (cdsReciboID_VENDEDOR.AsInteger <= 0) or (cdsReciboID_VENDEDOR.IsNull) then
    exit;
  if not cdsVendedor.Locate('CODIGO',cdsReciboID_VENDEDOR.AsInteger,[loCaseInsensitive]) then
    exit;
  if ((cdsVendedorTIPO_COMISSAO.AsString <> 'N') and (Prazo = '')) then
    exit;
  if ((cdsVendedorTIPO_COMISSAO.AsString = 'N') and (Prazo <> '')) then
    exit;
  if cdsVendedorTIPO_COMISSAO.AsString = 'N' then
  begin
    vID_NotaAux   := cdsReciboID.AsInteger;
    vID_Duplicata := 0;
    vParcela      := 0;
    vItem_Hist    := 0;
    vVlrBase      := cdsReciboVLR_TOTAL.AsFloat;
  end
  else
  if (cdsVendedorTIPO_COMISSAO.AsString = 'D') then
  begin
    vID_NotaAux   := 0;
    vID_Duplicata := cdsDuplicataID.AsInteger;
    vParcela      := cdsDuplicataPARCELA.AsInteger;
    vItem_Hist    := cdsDuplicata_HistITEM.AsInteger;
    vVlrBase      := cdsDuplicataVLR_PARCELA.AsFloat;
  end;

  fDMCadExtComissao := TDMCadExtComissao.Create(Self);

  try
    vAux := fDMCadExtComissao.fnc_Mover_Comissao('ENT','REC','',0,cdsReciboDTEMISSAO.AsDateTime,
                                                   cdsReciboFILIAL.AsInteger,cdsReciboID_VENDEDOR.AsInteger,
                                                   0,0,vItem_Hist,cdsReciboNUM_RECIBO.AsInteger,
                                                   cdsReciboID_CLIENTE.AsInteger,vParcela,0,
                                                   0,0,
                                                   StrToFloat(FormatFloat('0.00',vVlrBase)),0,
                                                   StrToFloat(FormatFloat('0.00',cdsReciboPERC_COMISSAO.AsFloat)),vID_NotaAux,0);
  except                                           
    raise;
  end;

  FreeAndNil(fDMCadExtComissao);
end;

procedure TDMCadRecibo.cdsDuplicataReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  if trim(e.Message) <> '' then
    MessageDlg(e.Message + #13 + #13 + '*** Contas a Receber não gravado!', mtError, [mbOk], 0);
end;

procedure TDMCadRecibo.cdsDuplicata_HistReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  if trim(e.Message) <> '' then
    MessageDlg(e.Message + #13 + #13 + '*** Contas a Receber (Histórico) não gravado!', mtError, [mbOk], 0);
end;

procedure TDMCadRecibo.cdsReciboBeforePost(DataSet: TDataSet);
begin
  if cdsReciboID_CONDPGTO.AsInteger <= 0 then
    cdsReciboID_CONDPGTO.Clear;
  if cdsReciboID_CONTA_ORCAMENTO.AsInteger <= 0 then
    cdsReciboID_CONTA_ORCAMENTO.Clear;
  if cdsReciboID_CONTA.AsInteger <= 0 then
    cdsReciboID_CONTA.Clear;
  if cdsReciboANO_CONTRATO.AsInteger <= 0 then
    cdsReciboANO_CONTRATO.AsInteger := 9999;
end;

procedure TDMCadRecibo.dspReciboUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadRecibo.cdsRecibo_ItensNewRecord(DataSet: TDataSet);
begin
  cdsRecibo_ItensGERAR_DUPLICATA.AsString := 'S';
  cdsRecibo_ItensID_MOVIMENTO.AsInteger   := 0;
end;

function TDMCadRecibo.fnc_Duplicata_Paga: Boolean;
var
  sds: TSQLDataSet;
begin
  if cdsReciboID.AsInteger <= 0 then
    exit;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT ID, VLR_PAGO, NOSSONUMERO FROM DUPLICATA ' +
                         'WHERE ID_RECIBO = ' + IntToStr(cdsReciboID.AsInteger);
    sds.Open;
    if StrToFloat(FormatFloat('0.00',sds.FieldByName('VLR_PAGO').AsFloat)) > 0 then
      Result := True
    else
    if not(sds.FieldByName('NOSSONUMERO').IsNull) and  (trim(sds.FieldByName('NOSSONUMERO').AsString) <> '') then
      Result := True
    else
      Result := False;
    sds.Close;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TDMCadRecibo.cdsReciboImpCalcFields(DataSet: TDataSet);
begin
  if cdsReciboImpVLR_TOTAL.AsCurrency > 0 then
  begin
    ValorPorExtenso1.Valor := cdsReciboImpVLR_TOTAL.AsCurrency;
    cdsReciboImpclVlrExtenso.AsString := ValorPorExtenso1.Texto;
  end;
end;

procedure TDMCadRecibo.cdsReciboNewRecord(DataSet: TDataSet);
begin
  cdsReciboVLR_DESCONTO.AsFloat  := 0;
  cdsReciboPERC_DESCONTO.AsFloat := 0;
end;

procedure TDMCadRecibo.cdsDuplicataNewRecord(DataSet: TDataSet);
begin
  if qParametros_FinUSA_NGR.AsString = 'S' then
    cdsDuplicataNGR.AsString := 'S'
  else
    cdsDuplicataNGR.AsString := 'N';
  cdsDuplicataAPROVADO.AsString := 'S';
end;

end.

