unit UDMCadNotaServico;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, dbXPress, UDMCadExtComissao, UDMGravarFinanceiro, xmldom, Math,
  Xmlxform, RLFilters, RLPDFFilter, DateUtils, RLHTMLFilter, RLRichFilter, RLPreviewForm, LogTypes, dialogs, frxClass, frxDBSet;

type
  TDMCadNotaServico = class(TDataModule)
    sdsNotaServico: TSQLDataSet;
    dspNotaServico: TDataSetProvider;
    cdsNotaServico: TClientDataSet;
    dsNotaServico: TDataSource;
    dsNotaServico_Mestre: TDataSource;
    sdsNotaServico_Parc: TSQLDataSet;
    CDSNotaServico_Parc: TClientDataSet;
    dsNotaServico_Parc: TDataSource;
    sdsCliente: TSQLDataSet;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    dsCliente: TDataSource;
    sdsNotaServico_Consulta: TSQLDataSet;
    dspNotaServico_Consulta: TDataSetProvider;
    cdsNotaServico_Consulta: TClientDataSet;
    dsNotaServico_Consulta: TDataSource;
    qProximaRPS: TSQLQuery;
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
    cdsContasNOME: TStringField;
    qRegime_Trib: TSQLQuery;
    qRegime_TribID: TIntegerField;
    qRegime_TribCODIGO: TIntegerField;
    qRegime_TribNOME: TStringField;
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
    sdsCidade: TSQLDataSet;
    dspCidade: TDataSetProvider;
    cdsCidade: TClientDataSet;
    dsCidade: TDataSource;
    cdsCidadeID: TIntegerField;
    cdsCidadeNOME: TStringField;
    cdsCidadeUF: TStringField;
    cdsCidadeCODMUNICIPIO: TStringField;
    sdsDuplicata_HistVLR_LANCAMENTO: TFloatField;
    cdsDuplicata_HistVLR_LANCAMENTO: TFloatField;
    sdsDuplicata_HistID_FORMA_PAGAMENTO: TIntegerField;
    cdsDuplicata_HistID_FORMA_PAGAMENTO: TIntegerField;
    sdsDuplicataID_COB_ELETRONICA: TIntegerField;
    sdsDuplicataBOLETO_IMP: TStringField;
    sdsDuplicataID_CARTEIRA: TIntegerField;
    sdsDuplicataID_BANCO: TIntegerField;
    cdsDuplicataID_COB_ELETRONICA: TIntegerField;
    cdsDuplicataBOLETO_IMP: TStringField;
    cdsDuplicataID_CARTEIRA: TIntegerField;
    cdsDuplicataID_BANCO: TIntegerField;
    sdsNotaServicoID: TIntegerField;
    sdsNotaServicoNUMRPS: TIntegerField;
    sdsNotaServicoSERIE: TStringField;
    sdsNotaServicoTIPO_RPS: TStringField;
    sdsNotaServicoID_NATUREZA: TIntegerField;
    sdsNotaServicoSTATUS_RPS: TStringField;
    sdsNotaServicoNUMRPS_SUBSTITUIDO: TIntegerField;
    sdsNotaServicoSERIE_SUBSTITUIDO: TStringField;
    sdsNotaServicoTIPO_SUBSTITUIDO: TStringField;
    sdsNotaServicoVLR_SERVICOS: TFloatField;
    sdsNotaServicoVLR_DEDUCOES: TFloatField;
    sdsNotaServicoVLR_PIS: TFloatField;
    sdsNotaServicoVLR_COFINS: TFloatField;
    sdsNotaServicoVLR_INSS: TFloatField;
    sdsNotaServicoVLR_IR: TFloatField;
    sdsNotaServicoVLR_CSLL: TFloatField;
    sdsNotaServicoISS_RETIDO: TStringField;
    sdsNotaServicoVLR_ISS: TFloatField;
    sdsNotaServicoVLR_ISS_RETIDO: TFloatField;
    sdsNotaServicoVLR_OUTRAS_RETENCOES: TFloatField;
    sdsNotaServicoBASE_CALCULO: TFloatField;
    sdsNotaServicoPERC_ALIQUOTA: TFloatField;
    sdsNotaServicoVLR_LIQUIDO_NFSE: TFloatField;
    sdsNotaServicoVLR_DESCONTO_INC: TFloatField;
    sdsNotaServicoVLR_DESCONTO_COND: TFloatField;
    sdsNotaServicoID_SERVICO: TIntegerField;
    sdsNotaServicoDISCRIMINACAO: TMemoField;
    sdsNotaServicoFILIAL: TIntegerField;
    sdsNotaServicoID_INTERMEDIARIO_SERVICO: TIntegerField;
    sdsNotaServicoCODIGO_OBRA: TStringField;
    sdsNotaServicoART: TStringField;
    sdsNotaServicoCHAVE_ACESSO: TStringField;
    sdsNotaServicoPROTOCOLO: TStringField;
    sdsNotaServicoRECIBO: TStringField;
    sdsNotaServicoID_CONDPGTO: TIntegerField;
    cdsNotaServicoID: TIntegerField;
    cdsNotaServicoNUMRPS: TIntegerField;
    cdsNotaServicoSERIE: TStringField;
    cdsNotaServicoTIPO_RPS: TStringField;
    cdsNotaServicoID_NATUREZA: TIntegerField;
    cdsNotaServicoSTATUS_RPS: TStringField;
    cdsNotaServicoNUMRPS_SUBSTITUIDO: TIntegerField;
    cdsNotaServicoSERIE_SUBSTITUIDO: TStringField;
    cdsNotaServicoTIPO_SUBSTITUIDO: TStringField;
    cdsNotaServicoVLR_SERVICOS: TFloatField;
    cdsNotaServicoVLR_DEDUCOES: TFloatField;
    cdsNotaServicoVLR_PIS: TFloatField;
    cdsNotaServicoVLR_COFINS: TFloatField;
    cdsNotaServicoVLR_INSS: TFloatField;
    cdsNotaServicoVLR_IR: TFloatField;
    cdsNotaServicoVLR_CSLL: TFloatField;
    cdsNotaServicoISS_RETIDO: TStringField;
    cdsNotaServicoVLR_ISS: TFloatField;
    cdsNotaServicoVLR_ISS_RETIDO: TFloatField;
    cdsNotaServicoVLR_OUTRAS_RETENCOES: TFloatField;
    cdsNotaServicoBASE_CALCULO: TFloatField;
    cdsNotaServicoPERC_ALIQUOTA: TFloatField;
    cdsNotaServicoVLR_LIQUIDO_NFSE: TFloatField;
    cdsNotaServicoVLR_DESCONTO_INC: TFloatField;
    cdsNotaServicoVLR_DESCONTO_COND: TFloatField;
    cdsNotaServicoID_SERVICO: TIntegerField;
    cdsNotaServicoDISCRIMINACAO: TMemoField;
    cdsNotaServicoFILIAL: TIntegerField;
    cdsNotaServicoID_INTERMEDIARIO_SERVICO: TIntegerField;
    cdsNotaServicoCODIGO_OBRA: TStringField;
    cdsNotaServicoART: TStringField;
    cdsNotaServicoCHAVE_ACESSO: TStringField;
    cdsNotaServicoPROTOCOLO: TStringField;
    cdsNotaServicoRECIBO: TStringField;
    cdsNotaServicoID_CONDPGTO: TIntegerField;
    sdsNotaServico_ParcID: TIntegerField;
    sdsNotaServico_ParcITEM: TIntegerField;
    sdsNotaServico_ParcDTVENCIMENTO: TDateField;
    sdsNotaServico_ParcVLR_VENCIMENTO: TFloatField;
    sdsNotaServico_ParcID_TIPOCOBRANCA: TIntegerField;
    sdsNotaServico_ParcID_CONTA: TIntegerField;
    cdsNotaServicosdsNotaServico_Parc: TDataSetField;
    CDSNotaServico_ParcID: TIntegerField;
    CDSNotaServico_ParcITEM: TIntegerField;
    CDSNotaServico_ParcDTVENCIMENTO: TDateField;
    CDSNotaServico_ParcVLR_VENCIMENTO: TFloatField;
    CDSNotaServico_ParcID_TIPOCOBRANCA: TIntegerField;
    CDSNotaServico_ParcID_CONTA: TIntegerField;
    qProximaRPSNUMRPS: TIntegerField;
    cdsServicoID: TIntegerField;
    cdsServicoCODIGO: TStringField;
    cdsServicoNOME: TStringField;
    cdsServicoTIPO_AS: TStringField;
    sdsNatureza: TSQLDataSet;
    dspNatureza: TDataSetProvider;
    cdsNatureza: TClientDataSet;
    dsNatureza: TDataSource;
    cdsNaturezaID: TIntegerField;
    cdsNaturezaID_PROVEDOR: TIntegerField;
    cdsNaturezaCODIGO: TStringField;
    cdsNaturezaNOME: TStringField;
    sdsNotaServicoPERC_DESCONTO: TFloatField;
    cdsNotaServicoPERC_DESCONTO: TFloatField;
    sdsNotaServicoVLR_ENTRADA: TFloatField;
    sdsNotaServicoID_TIPO_COBRANCA: TIntegerField;
    cdsNotaServicoVLR_ENTRADA: TFloatField;
    cdsNotaServicoID_TIPO_COBRANCA: TIntegerField;
    sdsNotaServicoTIPO_PRAZO: TStringField;
    cdsNotaServicoTIPO_PRAZO: TStringField;
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
    sdsNotaServicoID_CLIENTE: TIntegerField;
    cdsNotaServicoID_CLIENTE: TIntegerField;
    sdsNotaServicoID_BANCO: TIntegerField;
    cdsNotaServicoID_BANCO: TIntegerField;
    sdsNotaServicoDTINICIO_DUPLICATA: TDateField;
    cdsNotaServicoDTINICIO_DUPLICATA: TDateField;
    sdsNotaServicoVLR_TOTAL: TFloatField;
    cdsNotaServicoVLR_TOTAL: TFloatField;
    sdsServico_Int: TSQLDataSet;
    dspServico_Int: TDataSetProvider;
    cdsServico_Int: TClientDataSet;
    dsServico_Int: TDataSource;
    cdsServico_IntID: TIntegerField;
    cdsServico_IntNOME: TStringField;
    cdsServico_IntVLR_UNITARIO: TFloatField;
    sdsNotaServicoHOMOLOGACAO: TStringField;
    cdsNotaServicoHOMOLOGACAO: TStringField;
    cdsNotaServico_ConsultaID: TIntegerField;
    cdsNotaServico_ConsultaNUMRPS: TIntegerField;
    cdsNotaServico_ConsultaSERIE: TStringField;
    cdsNotaServico_ConsultaTIPO_RPS: TStringField;
    cdsNotaServico_ConsultaNUMNOTA: TIntegerField;
    cdsNotaServico_ConsultaID_NATUREZA: TIntegerField;
    cdsNotaServico_ConsultaSTATUS_RPS: TStringField;
    cdsNotaServico_ConsultaNUMRPS_SUBSTITUIDO: TIntegerField;
    cdsNotaServico_ConsultaSERIE_SUBSTITUIDO: TStringField;
    cdsNotaServico_ConsultaTIPO_SUBSTITUIDO: TStringField;
    cdsNotaServico_ConsultaVLR_SERVICOS: TFloatField;
    cdsNotaServico_ConsultaVLR_DEDUCOES: TFloatField;
    cdsNotaServico_ConsultaVLR_PIS: TFloatField;
    cdsNotaServico_ConsultaVLR_COFINS: TFloatField;
    cdsNotaServico_ConsultaVLR_INSS: TFloatField;
    cdsNotaServico_ConsultaVLR_IR: TFloatField;
    cdsNotaServico_ConsultaVLR_CSLL: TFloatField;
    cdsNotaServico_ConsultaISS_RETIDO: TStringField;
    cdsNotaServico_ConsultaVLR_ISS: TFloatField;
    cdsNotaServico_ConsultaVLR_ISS_RETIDO: TFloatField;
    cdsNotaServico_ConsultaVLR_OUTRAS_RETENCOES: TFloatField;
    cdsNotaServico_ConsultaBASE_CALCULO: TFloatField;
    cdsNotaServico_ConsultaPERC_ALIQUOTA: TFloatField;
    cdsNotaServico_ConsultaVLR_LIQUIDO_NFSE: TFloatField;
    cdsNotaServico_ConsultaVLR_DESCONTO_INC: TFloatField;
    cdsNotaServico_ConsultaVLR_DESCONTO_COND: TFloatField;
    cdsNotaServico_ConsultaID_SERVICO: TIntegerField;
    cdsNotaServico_ConsultaDISCRIMINACAO: TMemoField;
    cdsNotaServico_ConsultaFILIAL: TIntegerField;
    cdsNotaServico_ConsultaID_INTERMEDIARIO_SERVICO: TIntegerField;
    cdsNotaServico_ConsultaCODIGO_OBRA: TStringField;
    cdsNotaServico_ConsultaART: TStringField;
    cdsNotaServico_ConsultaCHAVE_ACESSO: TStringField;
    cdsNotaServico_ConsultaPROTOCOLO: TStringField;
    cdsNotaServico_ConsultaRECIBO: TStringField;
    cdsNotaServico_ConsultaID_CONDPGTO: TIntegerField;
    cdsNotaServico_ConsultaID_CLIENTE: TIntegerField;
    cdsNotaServico_ConsultaPERC_DESCONTO: TFloatField;
    cdsNotaServico_ConsultaVLR_ENTRADA: TFloatField;
    cdsNotaServico_ConsultaID_BANCO: TIntegerField;
    cdsNotaServico_ConsultaID_TIPO_COBRANCA: TIntegerField;
    cdsNotaServico_ConsultaTIPO_PRAZO: TStringField;
    cdsNotaServico_ConsultaDTINICIO_DUPLICATA: TDateField;
    cdsNotaServico_ConsultaVLR_TOTAL: TFloatField;
    cdsNotaServico_ConsultaHOMOLOGACAO: TStringField;
    cdsNotaServico_ConsultaNOME_CLIENTE: TStringField;
    cdsFilialID_SERVICO_SINT: TIntegerField;
    cdsFilialID_SERVICO_PAD: TIntegerField;
    cdsFilialCOD_SERVICO_SINT: TStringField;
    cdsServicoNOME_SERVICO: TStringField;
    cdsNotaServico_Itens: TClientDataSet;
    dsNotaServico_Itens: TDataSource;
    sdsNotaServico_ItensID: TIntegerField;
    sdsNotaServico_ItensITEM: TIntegerField;
    sdsNotaServico_ItensVLR_TOTAL: TFloatField;
    sdsNotaServico_ItensVLR_DEDUCOES: TFloatField;
    sdsNotaServico_ItensVLR_PIS: TFloatField;
    sdsNotaServico_ItensVLR_COFINS: TFloatField;
    sdsNotaServico_ItensVLR_INSS: TFloatField;
    sdsNotaServico_ItensVLR_IR: TFloatField;
    sdsNotaServico_ItensVLR_CSLL: TFloatField;
    sdsNotaServico_ItensISS_RETIDO: TStringField;
    sdsNotaServico_ItensVLR_ISS: TFloatField;
    sdsNotaServico_ItensVLR_ISS_RETIDO: TFloatField;
    sdsNotaServico_ItensVLR_OUTRAS_RETENCOES: TFloatField;
    sdsNotaServico_ItensBASE_CALCULO: TFloatField;
    sdsNotaServico_ItensPERC_ALIQUOTA: TFloatField;
    sdsNotaServico_ItensVLR_LIQUIDO_NFSE: TFloatField;
    sdsNotaServico_ItensVLR_DESCONTO_INC: TFloatField;
    sdsNotaServico_ItensVLR_DESCONTO_COND: TFloatField;
    sdsNotaServico_ItensQTD: TFloatField;
    sdsNotaServico_ItensVLR_UNITARIO: TFloatField;
    sdsNotaServico_ItensGERAR_DUPLICATA: TStringField;
    sdsNotaServico_ItensVLR_DUPLICATA: TFloatField;
    sdsNotaServico_ItensID_SERVICO_INT: TIntegerField;
    sdsNotaServico_ItensNOME_SERVICO_INT: TStringField;
    cdsNotaServicosdsNotaServico_Itens: TDataSetField;
    cdsNotaServico_ItensID: TIntegerField;
    cdsNotaServico_ItensITEM: TIntegerField;
    cdsNotaServico_ItensVLR_TOTAL: TFloatField;
    cdsNotaServico_ItensVLR_DEDUCOES: TFloatField;
    cdsNotaServico_ItensVLR_PIS: TFloatField;
    cdsNotaServico_ItensVLR_COFINS: TFloatField;
    cdsNotaServico_ItensVLR_INSS: TFloatField;
    cdsNotaServico_ItensVLR_IR: TFloatField;
    cdsNotaServico_ItensVLR_CSLL: TFloatField;
    cdsNotaServico_ItensISS_RETIDO: TStringField;
    cdsNotaServico_ItensVLR_ISS: TFloatField;
    cdsNotaServico_ItensVLR_ISS_RETIDO: TFloatField;
    cdsNotaServico_ItensVLR_OUTRAS_RETENCOES: TFloatField;
    cdsNotaServico_ItensBASE_CALCULO: TFloatField;
    cdsNotaServico_ItensPERC_ALIQUOTA: TFloatField;
    cdsNotaServico_ItensVLR_LIQUIDO_NFSE: TFloatField;
    cdsNotaServico_ItensVLR_DESCONTO_INC: TFloatField;
    cdsNotaServico_ItensVLR_DESCONTO_COND: TFloatField;
    cdsNotaServico_ItensQTD: TFloatField;
    cdsNotaServico_ItensVLR_UNITARIO: TFloatField;
    cdsNotaServico_ItensGERAR_DUPLICATA: TStringField;
    cdsNotaServico_ItensVLR_DUPLICATA: TFloatField;
    cdsNotaServico_ItensID_SERVICO_INT: TIntegerField;
    cdsNotaServico_ItensNOME_SERVICO_INT: TStringField;
    sdsNotaServico_Imp: TSQLDataSet;
    dspNotaServico_Imp: TDataSetProvider;
    cdsNotaServico_Imp: TClientDataSet;
    dsNotaServico_Imp: TDataSource;
    cdsNotaServico_ImpID: TIntegerField;
    cdsNotaServico_ImpNUMRPS: TIntegerField;
    cdsNotaServico_ImpSERIE: TStringField;
    cdsNotaServico_ImpTIPO_RPS: TStringField;
    cdsNotaServico_ImpNUMNOTA: TIntegerField;
    cdsNotaServico_ImpID_NATUREZA: TIntegerField;
    cdsNotaServico_ImpSTATUS_RPS: TStringField;
    cdsNotaServico_ImpNUMRPS_SUBSTITUIDO: TIntegerField;
    cdsNotaServico_ImpSERIE_SUBSTITUIDO: TStringField;
    cdsNotaServico_ImpTIPO_SUBSTITUIDO: TStringField;
    cdsNotaServico_ImpVLR_SERVICOS: TFloatField;
    cdsNotaServico_ImpVLR_DEDUCOES: TFloatField;
    cdsNotaServico_ImpVLR_PIS: TFloatField;
    cdsNotaServico_ImpVLR_COFINS: TFloatField;
    cdsNotaServico_ImpVLR_INSS: TFloatField;
    cdsNotaServico_ImpVLR_IR: TFloatField;
    cdsNotaServico_ImpVLR_CSLL: TFloatField;
    cdsNotaServico_ImpISS_RETIDO: TStringField;
    cdsNotaServico_ImpVLR_ISS: TFloatField;
    cdsNotaServico_ImpVLR_ISS_RETIDO: TFloatField;
    cdsNotaServico_ImpVLR_OUTRAS_RETENCOES: TFloatField;
    cdsNotaServico_ImpBASE_CALCULO: TFloatField;
    cdsNotaServico_ImpPERC_ALIQUOTA: TFloatField;
    cdsNotaServico_ImpVLR_LIQUIDO_NFSE: TFloatField;
    cdsNotaServico_ImpVLR_DESCONTO_INC: TFloatField;
    cdsNotaServico_ImpVLR_DESCONTO_COND: TFloatField;
    cdsNotaServico_ImpID_SERVICO: TIntegerField;
    cdsNotaServico_ImpDISCRIMINACAO: TMemoField;
    cdsNotaServico_ImpFILIAL: TIntegerField;
    cdsNotaServico_ImpID_CLIENTE: TIntegerField;
    cdsNotaServico_ImpID_INTERMEDIARIO_SERVICO: TIntegerField;
    cdsNotaServico_ImpCODIGO_OBRA: TStringField;
    cdsNotaServico_ImpART: TStringField;
    cdsNotaServico_ImpCHAVE_ACESSO: TStringField;
    cdsNotaServico_ImpPROTOCOLO: TStringField;
    cdsNotaServico_ImpRECIBO: TStringField;
    cdsNotaServico_ImpID_CONDPGTO: TIntegerField;
    cdsNotaServico_ImpPERC_DESCONTO: TFloatField;
    cdsNotaServico_ImpVLR_ENTRADA: TFloatField;
    cdsNotaServico_ImpID_BANCO: TIntegerField;
    cdsNotaServico_ImpID_TIPO_COBRANCA: TIntegerField;
    cdsNotaServico_ImpTIPO_PRAZO: TStringField;
    cdsNotaServico_ImpDTINICIO_DUPLICATA: TDateField;
    cdsNotaServico_ImpVLR_TOTAL: TFloatField;
    cdsNotaServico_ImpHOMOLOGACAO: TStringField;
    cdsNotaServico_ImpNOME_CLIENTE: TStringField;
    cdsNotaServico_ImpCEP_CLI: TStringField;
    cdsNotaServico_ImpBAIRRO_CLI: TStringField;
    cdsNotaServico_ImpCIDADE_CLI: TStringField;
    cdsNotaServico_ImpUF_CLI: TStringField;
    cdsNotaServico_ImpCNPJ_CPF_CLI: TStringField;
    cdsNotaServico_ImpPESSOA_CLI: TStringField;
    cdsNotaServico_ImpCOD_SERVICO: TStringField;
    cdsNotaServico_ImpNOME_SERVICO: TStringField;
    cdsNotaServico_ImpCOD_NATUREZA: TStringField;
    cdsNotaServico_ImpNOME_NATUREZA: TStringField;
    cdsNotaServico_ImpNOME_FIL: TStringField;
    cdsNotaServico_ImpENDERECO_FIL: TStringField;
    cdsNotaServico_ImpCEP_FIL: TStringField;
    cdsNotaServico_ImpBAIRRO_FIL: TStringField;
    cdsNotaServico_ImpCIDADE_FIL: TStringField;
    cdsNotaServico_ImpUF_FIL: TStringField;
    cdsNotaServico_ImpCNPJ_CPF_FIL: TStringField;
    cdsNotaServico_ImpPESSOA_FIL: TStringField;
    cdsNotaServico_ImpCNAE: TStringField;
    cdsFilialPERC_IR: TFloatField;
    cdsFilialVLR_IR_MINIMO: TFloatField;
    cdsFilialPERC_ISS: TFloatField;
    cdsFilialCOD_REGIME_TIB_ESP: TIntegerField;
    cdsFilialCOD_TRIBUTACAO_MUNICIPIO: TStringField;
    sdsNotaServico_Imp_Itens: TSQLDataSet;
    dspNotaServico_Imp_Itens: TDataSetProvider;
    cdsNotaServico_Imp_Itens: TClientDataSet;
    dsNotaServico_Imp_Itens: TDataSource;
    cdsFilialCODMUNICIPIO: TStringField;
    cdsNotaServico_ImpINSC_MUNICIPAL_CLI: TStringField;
    cdsNotaServico_ImpENDERECO_CLI: TStringField;
    cdsNotaServico_ImpNUM_END_CLI: TStringField;
    cdsNotaServico_ImpCOMPLEMENTO_END: TStringField;
    cdsNotaServico_ImpCODMUNICIPIO_CLI: TStringField;
    cdsNotaServico_ImpDDD_CLI: TIntegerField;
    cdsNotaServico_ImpFONE_CLI: TStringField;
    cdsNotaServico_ImpEMAIL_CLI: TStringField;
    cdsFilialNUMLOTE: TIntegerField;
    cdsFilialTIPO_RETORNO: TStringField;
    cdsNotaServico_ConsultaNUMLOTE: TIntegerField;
    cdsNotaServico_ConsultaDTRECEBIMENTO_RET: TStringField;
    sdsNotaServicoNUMLOTE: TIntegerField;
    sdsNotaServicoDTRECEBIMENTO_RET: TStringField;
    cdsNotaServicoNUMLOTE: TIntegerField;
    cdsNotaServicoDTRECEBIMENTO_RET: TStringField;
    cdsNotaServico_ImpNUMLOTE: TIntegerField;
    cdsNotaServico_ImpDTRECEBIMENTO_RET: TStringField;
    xtrRetorno: TXMLTransformProvider;
    cdsRetorno_NH: TClientDataSet;
    cdsRetorno_NHNumero1: TStringField;
    cdsRetorno_NHCodigoVerificacao: TStringField;
    cdsRetorno_NHDataEmissao: TDateTimeField;
    cdsRetorno_NHNfseSubstituida: TIntegerField;
    cdsRetorno_NHOutrasInformacoes: TStringField;
    cdsRetorno_NHValorCredito: TFloatField;
    cdsRetorno_NHNumero2: TStringField;
    cdsRetorno_NHSerie: TStringField;
    cdsRetorno_NHTipo: TIntegerField;
    cdsRetorno_NHDataEmissaoRps: TDateTimeField;
    cdsRetorno_NHNaturezaOperacao: TStringField;
    cdsRetorno_NHRegimeEspecialTributacao: TStringField;
    cdsRetorno_NHOptanteSimplesNacional: TStringField;
    cdsRetorno_NHIncentivadorCultural: TStringField;
    cdsRetorno_NHCompetencia: TStringField;
    cdsRetorno_NHItemListaServico: TStringField;
    cdsRetorno_NHCodigoCnae: TStringField;
    cdsRetorno_NHCodigoTributacaoMunicipio: TStringField;
    cdsRetorno_NHDiscriminacao: TStringField;
    cdsRetorno_NHMunicipioPrestacaoServico: TStringField;
    cdsRetorno_NHValorServicos: TFloatField;
    cdsRetorno_NHValorDeducoes: TFloatField;
    cdsRetorno_NHValorPis: TFloatField;
    cdsRetorno_NHValorCofins: TFloatField;
    cdsRetorno_NHValorInss: TFloatField;
    cdsRetorno_NHValorIr: TFloatField;
    cdsRetorno_NHValorCsll: TFloatField;
    cdsRetorno_NHIssRetido: TIntegerField;
    cdsRetorno_NHValorIss: TFloatField;
    cdsRetorno_NHValorIssRetido: TFloatField;
    cdsRetorno_NHOutrasRetencoes: TFloatField;
    cdsRetorno_NHBaseCalculo: TFloatField;
    cdsRetorno_NHAliquota: TBCDField;
    cdsRetorno_NHValorLiquidoNfse: TFloatField;
    cdsRetorno_NHDescontoCondicionado: TFloatField;
    cdsRetorno_NHDescontoIncondicionado: TFloatField;
    cdsRetorno_NHCpfCnpj_Cnpj1: TStringField;
    cdsRetorno_NHCpfCnpj_Cpf1: TStringField;
    cdsRetorno_NHInscricaoMunicipal: TStringField;
    cdsRetorno_NHPrestadorServico_RazaoSocial: TStringField;
    cdsRetorno_NHNomeFantasia: TStringField;
    cdsRetorno_NHEndereco_Endereco1: TStringField;
    cdsRetorno_NHEndereco_Numero1: TStringField;
    cdsRetorno_NHEndereco_Complemento1: TStringField;
    cdsRetorno_NHEndereco_Bairro1: TStringField;
    cdsRetorno_NHEndereco_Cidade1: TStringField;
    cdsRetorno_NHEndereco_Estado1: TStringField;
    cdsRetorno_NHEndereco_Cep1: TStringField;
    cdsRetorno_NHCpfCnpj_Cnpj2: TStringField;
    cdsRetorno_NHCpfCnpj_Cpf2: TStringField;
    cdsRetorno_NHTomadorServico_RazaoSocial: TStringField;
    cdsRetorno_NHEndereco_Endereco2: TStringField;
    cdsRetorno_NHEndereco_Numero2: TStringField;
    cdsRetorno_NHEndereco_Complemento2: TStringField;
    cdsRetorno_NHEndereco_Bairro2: TStringField;
    cdsRetorno_NHEndereco_Cidade2: TStringField;
    cdsRetorno_NHEndereco_Estado2: TStringField;
    cdsRetorno_NHEndereco_Cep2: TStringField;
    cdsRetorno_NHTelefone: TStringField;
    cdsRetorno_NHEmail: TStringField;
    cdsRetorno_NHCodigoMunicipio: TStringField;
    cdsRetorno_NHUf: TStringField;
    sdsNotaServicoCOD_CANCELAMENTO: TIntegerField;
    sdsNotaServicoMOTIVO_CANCELAMENTO: TStringField;
    cdsNotaServicoCOD_CANCELAMENTO: TIntegerField;
    cdsNotaServicoMOTIVO_CANCELAMENTO: TStringField;
    qVerificaNotaID: TIntegerField;
    qVerificaNotaNUMNOTA: TIntegerField;
    qVerificaNotaNUMRPS: TIntegerField;
    qVerificaNotaSTATUS_RPS: TStringField;
    sdsDuplicataIMP_BOLETO: TStringField;
    sdsDuplicataNUM_REMESSA: TIntegerField;
    sdsDuplicataID_NOTA_SERVICO: TIntegerField;
    sdsDuplicataDESCRICAO: TStringField;
    cdsDuplicataIMP_BOLETO: TStringField;
    cdsDuplicataNUM_REMESSA: TIntegerField;
    cdsDuplicataID_NOTA_SERVICO: TIntegerField;
    cdsDuplicataDESCRICAO: TStringField;
    sdsNotaServicoID_CONTA: TIntegerField;
    cdsNotaServicoID_CONTA: TIntegerField;
    cdsFilialENDLOGO_NFSE: TStringField;
    cdsNotaServico_ImpCOD_CANCELAMENTO: TIntegerField;
    cdsNotaServico_ImpMOTIVO_CANCELAMENTO: TStringField;
    cdsNotaServico_ImpID_CONTA: TIntegerField;
    cdsNotaServico_ImpENDLOGO_NFSE: TStringField;
    sdsNotaServicoDT_EMISSAO_RET: TStringField;
    sdsNotaServicoCOD_AUTENCIDADE_RET: TStringField;
    cdsNotaServicoDT_EMISSAO_RET: TStringField;
    cdsNotaServicoCOD_AUTENCIDADE_RET: TStringField;
    cdsNotaServico_ConsultaCOD_CANCELAMENTO: TIntegerField;
    cdsNotaServico_ConsultaMOTIVO_CANCELAMENTO: TStringField;
    cdsNotaServico_ConsultaID_CONTA: TIntegerField;
    cdsNotaServico_ConsultaDT_EMISSAO_RET: TStringField;
    cdsNotaServico_ConsultaCOD_AUTENCIDADE_RET: TStringField;
    cdsFilialPERC_CSLL: TFloatField;
    cdsFilialMOSTRAR_ALIQUOTA_PD: TStringField;
    cdsFilialINF_COD_SERVICO: TStringField;
    cdsCidadeID_PROVEDOR: TIntegerField;
    cdsCidadeTIPO_NATUREZA: TStringField;
    sdsDuplicataNUMRPS: TIntegerField;
    cdsDuplicataNUMRPS: TIntegerField;
    cdsNotaServico_Imp_ItensID: TIntegerField;
    cdsNotaServico_Imp_ItensITEM: TIntegerField;
    cdsNotaServico_Imp_ItensVLR_DEDUCOES: TFloatField;
    cdsNotaServico_Imp_ItensVLR_PIS: TFloatField;
    cdsNotaServico_Imp_ItensVLR_COFINS: TFloatField;
    cdsNotaServico_Imp_ItensVLR_INSS: TFloatField;
    cdsNotaServico_Imp_ItensVLR_IR: TFloatField;
    cdsNotaServico_Imp_ItensVLR_CSLL: TFloatField;
    cdsNotaServico_Imp_ItensISS_RETIDO: TStringField;
    cdsNotaServico_Imp_ItensVLR_ISS: TFloatField;
    cdsNotaServico_Imp_ItensVLR_ISS_RETIDO: TFloatField;
    cdsNotaServico_Imp_ItensVLR_OUTRAS_RETENCOES: TFloatField;
    cdsNotaServico_Imp_ItensBASE_CALCULO: TFloatField;
    cdsNotaServico_Imp_ItensPERC_ALIQUOTA: TFloatField;
    cdsNotaServico_Imp_ItensVLR_LIQUIDO_NFSE: TFloatField;
    cdsNotaServico_Imp_ItensVLR_DESCONTO_INC: TFloatField;
    cdsNotaServico_Imp_ItensVLR_DESCONTO_COND: TFloatField;
    cdsNotaServico_Imp_ItensQTD: TFloatField;
    cdsNotaServico_Imp_ItensVLR_UNITARIO: TFloatField;
    cdsNotaServico_Imp_ItensGERAR_DUPLICATA: TStringField;
    cdsNotaServico_Imp_ItensVLR_DUPLICATA: TFloatField;
    cdsNotaServico_Imp_ItensID_SERVICO_INT: TIntegerField;
    cdsNotaServico_Imp_ItensNOME_SERVICO_INT: TStringField;
    cdsNotaServico_Imp_ItensVLR_TOTAL: TFloatField;
    cdsFilialCNAE_NFSE: TStringField;
    sdsNotaServicoCNAE_NFSE: TStringField;
    cdsNotaServicoCNAE_NFSE: TStringField;
    cdsServicoCNAE: TStringField;
    sdsNotaServicoXML: TMemoField;
    cdsNotaServicoXML: TMemoField;
    cdsNotaServico_ImpDT_EMISSAO_RET: TStringField;
    cdsNotaServico_ImpCOD_AUTENCIDADE_RET: TStringField;
    cdsNotaServico_ImpCNAE_NFSE: TStringField;
    cdsNotaServico_ImpXML: TMemoField;
    sdsNotaServicoRETEM_CSLL: TStringField;
    sdsNotaServicoRETEM_PISCOFINS: TStringField;
    sdsNotaServicoRETEM_INSS: TStringField;
    cdsNotaServicoRETEM_CSLL: TStringField;
    cdsNotaServicoRETEM_PISCOFINS: TStringField;
    cdsNotaServicoRETEM_INSS: TStringField;
    cdsNotaServico_ImpRETEM_CSLL: TStringField;
    cdsNotaServico_ImpRETEM_PISCOFINS: TStringField;
    cdsNotaServico_ImpRETEM_INSS: TStringField;
    cdsServicoPERC_ISS: TFloatField;
    qTipoProvedor: TSQLQuery;
    qTipoProvedorTIPO_RETORNO: TStringField;
    cdsFilialLINKNFSE: TStringField;
    qPessoa_Servico: TSQLQuery;
    qPessoa_ServicoPERC_ISS: TFloatField;
    cdsFilialFONE_PREFEITURA: TStringField;
    cdsFilialSITE_PREFEITURA: TStringField;
    cdsFilialEND_LOGO_PREFEITURA: TStringField;
    cdsNotaServico_ImpDDD_FIL: TIntegerField;
    cdsNotaServico_ImpFONE_FIL: TStringField;
    cdsNotaServico_ImpINSCMUNICIPAL_FIL: TStringField;
    cdsNotaServico_ImpCOD_TRIBUTACAO_MUNICIPIO: TStringField;
    sdsNotaServico_Imp_Parc: TSQLDataSet;
    dspNotaServico_Imp_Parc: TDataSetProvider;
    cdsNotaServico_Imp_Parc: TClientDataSet;
    dsNotaServico_Imp_Parc: TDataSource;
    cdsNotaServico_Imp_ParcID: TIntegerField;
    cdsNotaServico_Imp_ParcITEM: TIntegerField;
    cdsNotaServico_Imp_ParcDTVENCIMENTO: TDateField;
    cdsNotaServico_Imp_ParcVLR_VENCIMENTO: TFloatField;
    cdsNotaServico_Imp_ParcID_TIPOCOBRANCA: TIntegerField;
    cdsNotaServico_Imp_ParcID_CONTA: TIntegerField;
    cdsNotaServico_ConsultaDTEMISSAO: TSQLTimeStampField;
    cdsNotaServico_ConsultaCNAE_NFSE: TStringField;
    cdsNotaServico_ConsultaXML: TMemoField;
    cdsNotaServico_ConsultaRETEM_CSLL: TStringField;
    cdsNotaServico_ConsultaRETEM_PISCOFINS: TStringField;
    cdsNotaServico_ConsultaRETEM_INSS: TStringField;
    cdsNotaServico_ConsultaDTEMISSAO_CAD: TDateField;
    sdsNotaServicoDTEMISSAO: TSQLTimeStampField;
    sdsNotaServicoDTEMISSAO_CAD: TDateField;
    cdsNotaServicoDTEMISSAO: TSQLTimeStampField;
    cdsNotaServicoDTEMISSAO_CAD: TDateField;
    cdsNotaServico_ImpDTEMISSAO_CAD: TDateField;
    cdsNotaServico_ImpDTEMISSAO: TSQLTimeStampField;
    sdsNotaServico_Lote: TSQLDataSet;
    dspNotaServico_Lote: TDataSetProvider;
    cdsNotaServico_Lote: TClientDataSet;
    dsNotaServico_Lote: TDataSource;
    sdsNotaServico_LoteID: TIntegerField;
    sdsNotaServico_LoteFILIAL: TIntegerField;
    sdsNotaServico_LotePROTOCOLO: TStringField;
    sdsNotaServico_LoteNUMLOTE: TIntegerField;
    sdsNotaServico_LoteDATA: TDateField;
    cdsNotaServico_LoteID: TIntegerField;
    cdsNotaServico_LoteFILIAL: TIntegerField;
    cdsNotaServico_LotePROTOCOLO: TStringField;
    cdsNotaServico_LoteNUMLOTE: TIntegerField;
    cdsNotaServico_LoteDATA: TDateField;
    sdsNotaServico_LoteDTRECEBIMENTO: TStringField;
    cdsNotaServico_LoteDTRECEBIMENTO: TStringField;
    qVerifica_Lote: TSQLQuery;
    qVerifica_LoteNUMLOTE: TIntegerField;
    qVerifica_LoteCOD_AUTENCIDADE_RET: TStringField;
    qVerifica_LoteDT_EMISSAO_RET: TStringField;
    cdsNotaServico_ImpFANTASIA_FIL: TStringField;
    cdsNotaServico_ImpEMAIL_FIL: TStringField;
    cdsFilialPERC_INSS: TFloatField;
    cdsFilialID_ATIVIDADE_CID: TIntegerField;
    sdsNotaServicoID_ATIVIDADE_CID: TIntegerField;
    cdsNotaServicoID_ATIVIDADE_CID: TIntegerField;
    sdsNotaServicoPERC_INSS: TFloatField;
    sdsNotaServicoPERC_IR: TFloatField;
    cdsNotaServicoPERC_IR: TFloatField;
    cdsNotaServicoPERC_INSS: TFloatField;
    sdsAtividade_Cid: TSQLDataSet;
    dspAtividade_Cid: TDataSetProvider;
    cdsAtividade_Cid: TClientDataSet;
    cdsAtividade_CidID: TIntegerField;
    cdsAtividade_CidCODIGO: TStringField;
    cdsAtividade_CidNOME: TStringField;
    dsAtividade_Cid: TDataSource;
    cdsNotaServico_ImpID_ATIVIDADE_CID: TIntegerField;
    cdsNotaServico_ImpPERC_INSS: TFloatField;
    cdsNotaServico_ImpPERC_IR: TFloatField;
    cdsNotaServico_ImpCOD_ATIVIDADE_CID: TStringField;
    cdsNotaServico_ImpNOME_ATIVIDADE_CID: TStringField;
    cdsNotaServico_ImpORGAO_PUBLICO: TStringField;
    sdsNotaServicoVLR_DUPLICATA: TFloatField;
    cdsNotaServicoVLR_DUPLICATA: TFloatField;
    cdsNotaServico_ConsultaVLR_DUPLICATA: TFloatField;
    cdsNotaServico_ConsultaID_ATIVIDADE_CID: TIntegerField;
    cdsNotaServico_ConsultaPERC_INSS: TFloatField;
    cdsNotaServico_ConsultaPERC_IR: TFloatField;
    cdsNotaServico_ImpVLR_DUPLICATA: TFloatField;
    cdsServicoID_ATIVIDADE_CID: TIntegerField;
    sdsPessoa_Contato: TSQLDataSet;
    dspPessoa_Contato: TDataSetProvider;
    cdsPessoa_Contato: TClientDataSet;
    cdsPessoa_ContatoCODIGO: TIntegerField;
    cdsPessoa_ContatoITEM: TIntegerField;
    cdsPessoa_ContatoCONTATO: TStringField;
    cdsPessoa_ContatoEMAIL: TStringField;
    cdsPessoa_ContatoENVIAR_NFE: TStringField;
    cdsPessoa_ContatoFONE: TStringField;
    cdsPessoa_ContatoSETOR: TStringField;
    cdsFilialNFSE_HOMOLOGACAO: TStringField;
    cdsNotaServico_ImpCONDPGTO_NOME: TStringField;
    cdsNotaServico_ConsultaBASE_INSS: TFloatField;
    cdsNotaServico_ConsultaFANTASIA_FILIAL: TStringField;
    sdsNotaServicoBASE_INSS: TFloatField;
    cdsNotaServicoBASE_INSS: TFloatField;
    sdsPessoa_Servico_Int: TSQLDataSet;
    dspPessoa_Servico_Int: TDataSetProvider;
    cdsPessoa_Servico_Int: TClientDataSet;
    cdsPessoa_Servico_IntCODIGO: TIntegerField;
    cdsPessoa_Servico_IntITEM: TIntegerField;
    cdsPessoa_Servico_IntID_SERVICO_INT: TIntegerField;
    cdsPessoa_Servico_IntCALCULAR_INSS: TStringField;
    cdsPessoa_Servico_IntSOMAR_DIMINUIR: TStringField;
    sdsNotaServico_ItensSOMAR_DIMINUIR: TStringField;
    sdsNotaServico_ItensCALCULAR_INSS: TStringField;
    cdsNotaServico_ItensSOMAR_DIMINUIR: TStringField;
    cdsNotaServico_ItensCALCULAR_INSS: TStringField;
    cdsPessoa_Servico_IntVLR_SERVICO: TFloatField;
    cdsNotaServico_Imp_ItensSOMAR_DIMINUIR: TStringField;
    cdsNotaServico_Imp_ItensCALCULAR_INSS: TStringField;
    qProximaNota: TSQLQuery;
    qProximaNotaNUMNOTA: TIntegerField;
    sdsCondPgtoIMPRIMIR_NFSE: TStringField;
    cdsCondPgtoIMPRIMIR_NFSE: TStringField;
    qFat_Mensal_Cli: TSQLQuery;
    cdsFilialPERC_CSRF: TFloatField;
    cdsFilialVLR_FATURAMENTO_MES_CSRF: TFloatField;
    sdsNotaServicoPERC_CSRF: TFloatField;
    sdsNotaServicoVLR_CSRF: TFloatField;
    sdsNotaServicoBASE_CSRF: TFloatField;
    cdsNotaServicoPERC_CSRF: TFloatField;
    cdsNotaServicoVLR_CSRF: TFloatField;
    cdsNotaServicoBASE_CSRF: TFloatField;
    sdsNotaServicoDIMINUIR_RETENCAO: TStringField;
    cdsNotaServicoDIMINUIR_RETENCAO: TStringField;
    sdsNotaServicoID_MOVIMENTO: TIntegerField;
    cdsNotaServicoID_MOVIMENTO: TIntegerField;
    qServico: TSQLQuery;
    qServicoID: TIntegerField;
    qServicoCODIGO: TStringField;
    qServicoNOME: TStringField;
    mImpNota: TClientDataSet;
    mImpNotaID_Nota: TIntegerField;
    dsmImpNota: TDataSource;
    sdsNotaServicoEMAIL_ENVIADO: TStringField;
    cdsNotaServicoEMAIL_ENVIADO: TStringField;
    cdsNotaServico_ConsultaEMAIL_ENVIADO: TStringField;
    sdsNotaServicoPERC_TRIBUTO: TFloatField;
    sdsNotaServicoVLR_TRIBUTO: TFloatField;
    cdsNotaServicoPERC_TRIBUTO: TFloatField;
    cdsNotaServicoVLR_TRIBUTO: TFloatField;
    cdsFilialPERC_TRIB_SERV: TFloatField;
    cdsNotaServico_ConsultaPERC_TRIBUTO: TFloatField;
    cdsNotaServico_ConsultaVLR_TRIBUTO: TFloatField;
    cdsNotaServico_ImpPERC_TRIBUTO: TFloatField;
    cdsNotaServico_ImpVLR_TRIBUTO: TFloatField;
    qNotaServico_Lote: TSQLQuery;
    cdsFilialIMPRESSAO_MATRICIAL: TStringField;
    sdsNotaServicoPERC_REDUCAO_INSS: TFloatField;
    cdsNotaServicoPERC_REDUCAO_INSS: TFloatField;
    cdsNotaServico_ImpPERC_REDUCAO_INSS: TFloatField;
    sdsNotaServicoANO_REF: TIntegerField;
    sdsNotaServicoMES_REF: TIntegerField;
    sdsNotaServicoID_CONTRATO: TIntegerField;
    cdsNotaServicoANO_REF: TIntegerField;
    cdsNotaServicoMES_REF: TIntegerField;
    cdsNotaServicoID_CONTRATO: TIntegerField;
    sdsNotaServicoNUM_CONTRATO: TIntegerField;
    cdsNotaServicoNUM_CONTRATO: TIntegerField;
    cdsNotaServico_ImpANO_REF: TIntegerField;
    cdsNotaServico_ImpMES_REF: TIntegerField;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    sdsNotaServico_ItensCALCULAR_ISSQN: TStringField;
    sdsNotaServico_ItensCALCULAR_PISCOFINS: TStringField;
    sdsNotaServico_ItensCALCULAR_CSLL: TStringField;
    sdsNotaServico_ItensCALCULAR_IR: TStringField;
    cdsNotaServico_ItensCALCULAR_ISSQN: TStringField;
    cdsNotaServico_ItensCALCULAR_PISCOFINS: TStringField;
    cdsNotaServico_ItensCALCULAR_CSLL: TStringField;
    cdsNotaServico_ItensCALCULAR_IR: TStringField;
    sdsNotaServicoBASE_IR: TFloatField;
    cdsNotaServicoBASE_IR: TFloatField;
    cdsPessoa_Servico_IntCALCULAR_ISSQN: TStringField;
    cdsPessoa_Servico_IntCALCULAR_PISCOFINS: TStringField;
    cdsPessoa_Servico_IntCALCULAR_CSLL: TStringField;
    cdsPessoa_Servico_IntCALCULAR_IR: TStringField;
    sdsNotaServicoBASE_PISCOFINS: TFloatField;
    sdsNotaServicoBASE_CSLL: TFloatField;
    cdsNotaServicoBASE_PISCOFINS: TFloatField;
    cdsNotaServicoBASE_CSLL: TFloatField;
    cdsNaturezaTRIBUTACAO_DF: TStringField;
    qFat_Mensal_CliVLR_SERVICO: TFloatField;
    cdsNotaServico_ImpCOMPLEMENTO_END_FIL: TStringField;
    cdsNotaServico_ImpNOME_CNAE: TStringField;
    sdsDuplicataID_CONTA_ORCAMENTO: TIntegerField;
    cdsDuplicataID_CONTA_ORCAMENTO: TIntegerField;
    sdsNotaServicoID_CONTA_ORCAMENTO: TIntegerField;
    cdsNotaServicoID_CONTA_ORCAMENTO: TIntegerField;
    sdsContaOrcamento: TSQLDataSet;
    dspContaOrcamento: TDataSetProvider;
    cdsContaOrcamento: TClientDataSet;
    cdsContaOrcamentoID: TIntegerField;
    cdsContaOrcamentoTIPO: TStringField;
    cdsContaOrcamentoCODIGO: TStringField;
    cdsContaOrcamentoDESCRICAO: TStringField;
    dsContaOrcamento: TDataSource;
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
    sdsNotaServicoID_VENDEDOR: TIntegerField;
    sdsNotaServicoPERC_COMISSAO: TFloatField;
    cdsNotaServicoID_VENDEDOR: TIntegerField;
    cdsNotaServicoPERC_COMISSAO: TFloatField;
    sdsCondPgtoTIPO_CONDICAO: TStringField;
    sdsCondPgtoQTD_PARCELA: TIntegerField;
    sdsCondPgtoENTRADA: TStringField;
    cdsCondPgtoTIPO_CONDICAO: TStringField;
    cdsCondPgtoQTD_PARCELA: TIntegerField;
    cdsCondPgtoENTRADA: TStringField;
    sdsVendedorTIPO_COMISSAO: TStringField;
    cdsVendedorTIPO_COMISSAO: TStringField;
    CDSNotaServico_ParclkNome_TipoCobranca: TStringField;
    CDSNotaServico_ParclkNome_Conta: TStringField;
    cdsClienteEMAIL_PGTO: TStringField;
    cdsContaOrcamentoNOME_AUX: TStringField;
    cdsClienteCOBRAR_TAXA_BANCO: TStringField;
    cdsContasVLR_TAXA: TFloatField;
    cdsNotaServico_ImpCOD_NATUREZA_PROV: TStringField;
    cdsNaturezaRETER_ISSQN: TStringField;
    cdsNaturezaMOSTRAR_BASE_ISSQN: TStringField;
    cdsContasAGENCIA: TStringField;
    cdsContasNUMCONTA: TStringField;
    cdsContasDIG_CONTA: TStringField;
    cdsContasDIG_AGENCIA: TStringField;
    sdsNotaServico_Itens: TSQLDataSet;
    sdsNotaServico_ItensPERC_TRIBUTO: TFloatField;
    sdsNotaServico_ItensVLR_TRIBUTO: TFloatField;
    sdsNotaServico_ItensCODIGO_NBS: TStringField;
    cdsNotaServico_ItensPERC_TRIBUTO: TFloatField;
    cdsNotaServico_ItensVLR_TRIBUTO: TFloatField;
    cdsNotaServico_ItensCODIGO_NBS: TStringField;
    sdsTab_IBPT: TSQLDataSet;
    dspTab_IBPT: TDataSetProvider;
    cdsTab_IBPT: TClientDataSet;
    cdsTab_IBPTID: TIntegerField;
    cdsTab_IBPTCODIGO: TStringField;
    cdsTab_IBPTEX: TStringField;
    cdsTab_IBPTTABELA: TStringField;
    cdsTab_IBPTNOME: TStringField;
    cdsTab_IBPTPERC_NACIONAL: TFloatField;
    cdsTab_IBPTPERC_IMPORTACAO: TFloatField;
    dsTab_IBPT: TDataSource;
    cdsServicoCODIGO_NBS: TStringField;
    cdsServico_IntCODIGO_NBS: TStringField;
    qIBPT: TSQLQuery;
    qIBPTPERC_NACIONAL: TFloatField;
    qIBPTPERC_IMPORTACAO: TFloatField;
    qTipoProvedorRETENCAO_ISSQN: TStringField;
    qTipoProvedorID: TIntegerField;
    cdsNotaServico_ImpINSC_ESTADUAL_CLI: TStringField;
    sdsObs_Aux: TSQLDataSet;
    dspObs_Aux: TDataSetProvider;
    cdsObs_Aux: TClientDataSet;
    dsObs_Aux: TDataSource;
    cdsObs_AuxID: TIntegerField;
    cdsObs_AuxNOME: TStringField;
    cdsObs_AuxOBS: TStringField;
    cdsNotaServico_ConsultaDTVENCIMENTO: TDateField;
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
    cdsNotaServico_ImpNUM_END_FIL: TStringField;
    cdsNotaServico_ImpCODPAIS_CLI: TStringField;
    cdsNotaServico_ImpINSCR_EST_FIL: TStringField;
    cdsNotaServico_ImpNOME_PAIS_CLI: TStringField;
    cdsNotaServico_Imp_ItensPERC_TRIBUTO: TFloatField;
    cdsNotaServico_Imp_ItensVLR_TRIBUTO: TFloatField;
    sdsNotaServicoVLR_OUTRAS_DESPESAS: TFloatField;
    cdsNotaServicoVLR_OUTRAS_DESPESAS: TFloatField;
    cdsNotaServico_ImpVLR_OUTRAS_DESPESAS: TFloatField;
    cdsNotaServico_ImpPERC_PIS_FIL: TFloatField;
    cdsNotaServico_ImpPERC_COFINS_FIL: TFloatField;
    cdsNotaServico_ImpPERC_CSLL_FIL: TFloatField;
    cdsNotaServico_ImpCODMUNICIPIO_FIL: TStringField;
    sdsNotaServicoID_CIDADE_TRIB: TIntegerField;
    cdsNotaServicoID_CIDADE_TRIB: TIntegerField;
    cdsNotaServico_ImpUF_TRIB: TStringField;
    cdsNotaServico_ImpID_CIDADE_TRIB: TIntegerField;
    cdsNotaServico_ImpCIDADE_TRIB: TStringField;
    sdsNotaServico_ItensBASE_INSS: TFloatField;
    cdsNotaServico_ItensBASE_INSS: TFloatField;
    cdsNotaServico_ConsultaNOME_PROVEDOR: TStringField;
    sdsNotaServicoPERC_TRIBUTO_ESTADUAL: TFloatField;
    sdsNotaServicoPERC_TRIBUTO_MUNICIPAL: TFloatField;
    sdsNotaServicoVLR_TRIBUTO_ESTADUAL: TFloatField;
    sdsNotaServicoVLR_TRIBUTO_MUNICIPAL: TFloatField;
    sdsNotaServicoVLR_TRIBUTO_FEDERAL: TFloatField;
    sdsNotaServicoPERC_TRIBUTO_FEDERAL: TFloatField;
    cdsNotaServicoPERC_TRIBUTO_ESTADUAL: TFloatField;
    cdsNotaServicoPERC_TRIBUTO_MUNICIPAL: TFloatField;
    cdsNotaServicoVLR_TRIBUTO_ESTADUAL: TFloatField;
    cdsNotaServicoVLR_TRIBUTO_MUNICIPAL: TFloatField;
    cdsNotaServicoVLR_TRIBUTO_FEDERAL: TFloatField;
    cdsNotaServicoPERC_TRIBUTO_FEDERAL: TFloatField;
    sdsNotaServico_ItensPERC_TRIBUTO_FEDERAL: TFloatField;
    sdsNotaServico_ItensPERC_TRIBUTO_ESTADUAL: TFloatField;
    sdsNotaServico_ItensPERC_TRIBUTO_MUNICIPAL: TFloatField;
    sdsNotaServico_ItensVLR_TRIBUTO_FEDERAL: TFloatField;
    sdsNotaServico_ItensVLR_TRIBUTO_ESTADUAL: TFloatField;
    sdsNotaServico_ItensVLR_TRIBUTO_MUNICIPAL: TFloatField;
    cdsNotaServico_ItensPERC_TRIBUTO_FEDERAL: TFloatField;
    cdsNotaServico_ItensPERC_TRIBUTO_ESTADUAL: TFloatField;
    cdsNotaServico_ItensPERC_TRIBUTO_MUNICIPAL: TFloatField;
    cdsNotaServico_ItensVLR_TRIBUTO_FEDERAL: TFloatField;
    cdsNotaServico_ItensVLR_TRIBUTO_ESTADUAL: TFloatField;
    cdsNotaServico_ItensVLR_TRIBUTO_MUNICIPAL: TFloatField;
    sdsNotaServicoVERSAO_TRIBUTO: TStringField;
    sdsNotaServicoFONTE_TRIBUTO: TStringField;
    cdsNotaServicoVERSAO_TRIBUTO: TStringField;
    cdsNotaServicoFONTE_TRIBUTO: TStringField;
    cdsNotaServico_ImpPERC_TRIBUTO_ESTADUAL: TFloatField;
    cdsNotaServico_ImpPERC_TRIBUTO_MUNICIPAL: TFloatField;
    cdsNotaServico_ImpVLR_TRIBUTO_ESTADUAL: TFloatField;
    cdsNotaServico_ImpVLR_TRIBUTO_MUNICIPAL: TFloatField;
    cdsNotaServico_ImpVLR_TRIBUTO_FEDERAL: TFloatField;
    cdsNotaServico_ImpPERC_TRIBUTO_FEDERAL: TFloatField;
    cdsNotaServico_ImpVERSAO_TRIBUTO: TStringField;
    cdsNotaServico_ImpFONTE_TRIBUTO: TStringField;
    qIBPTPERC_ESTADUAL: TFloatField;
    qIBPTPERC_MUNICIPAL: TFloatField;
    qIBPTFONTE: TStringField;
    qIBPTVERSAO: TStringField;
    cdsAtividade_CidID_SERVICO_PADRAO: TIntegerField;
    cdsAtividade_CidPERC_ISSQN: TFloatField;
    cdsAtividade_CidDT_INICIO_VIGENCIA: TDateField;
    cdsAtividade_CidDT_FINAL_VIGENCIA: TDateField;
    cdsAtividade_CidCOD_SERVICO: TStringField;
    cdsFilialUSA_ATIVIDADE_CID_SERV: TStringField;
    cdsNotaServico_ImpSIMPLES_FILIAL: TStringField;
    cdsNotaServico_ImpINCENTIVO_CULTURAL: TStringField;
    cdsNotaServico_ImpCODREGIME_TRIBUTACAO: TIntegerField;
    sdsNotaServicoNUMNOTA: TIntegerField;
    cdsNotaServicoNUMNOTA: TIntegerField;
    cdsNotaServico_ImpNOME_REGIME_TRIBUTACAO: TStringField;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    dsmFilial: TDataSource;
    sdsFilialRelatorios: TSQLDataSet;
    cdsFilialRelatorios: TClientDataSet;
    dsFilialRelatorios: TDataSource;
    cdsFilialsdsFilialRelatorios: TDataSetField;
    cdsFilialRelatoriosID: TIntegerField;
    cdsFilialRelatoriosITEM: TIntegerField;
    cdsFilialRelatoriosTIPO: TSmallintField;
    cdsFilialRelatoriosCAMINHO: TStringField;
    cdsFilialRelatoriosPOSICAO: TSmallintField;
    cdsNotaServico_ImpEMAIL_FIL_CADASTRO: TStringField;
    cdsNotaServico_ImpCOD_MUNICIPIO_TRIB: TStringField;
    sdsNotaServico_ItensID_MOV_SERVICO_EXTRA: TIntegerField;
    cdsNotaServico_ItensID_MOV_SERVICO_EXTRA: TIntegerField;
    sdsNotaServicoANO_CONTRATO: TIntegerField;
    cdsNotaServicoANO_CONTRATO: TIntegerField;
    sdsNotaServico_ItensID_OS_SIMPLES: TIntegerField;
    sdsNotaServico_ItensITEM_OS_SIMPLES: TIntegerField;
    sdsNotaServico_ItensNUM_OS_SIMPLES: TIntegerField;
    cdsNotaServico_ItensID_OS_SIMPLES: TIntegerField;
    cdsNotaServico_ItensITEM_OS_SIMPLES: TIntegerField;
    cdsNotaServico_ItensNUM_OS_SIMPLES: TIntegerField;
    sdsOS_Simples: TSQLDataSet;
    dspOS_Simples: TDataSetProvider;
    cdsOS_Simples: TClientDataSet;
    dsOS_Simples: TDataSource;
    cdsOS_SimplesID: TIntegerField;
    cdsOS_SimplesID_CLIENTE: TIntegerField;
    cdsOS_SimplesSOLICITANTE_NOME: TStringField;
    cdsOS_SimplesITEM: TIntegerField;
    cdsOS_SimplesID_SERVICO: TIntegerField;
    cdsOS_SimplesDESCRICAO: TStringField;
    cdsOS_SimplesNOME_SERVICO: TStringField;
    cdsOS_SimplesNOME_SERVICO_COMP: TStringField;
    cdsOS_SimplesQTD: TFloatField;
    cdsOS_SimplesVLR_UNITARIO: TFloatField;
    cdsOS_SimplesVLR_TOTAL: TFloatField;
    cdsOS_SimplesCONCLUIDO: TStringField;
    cdsOS_SimplesDTCONCLUIDO: TDateField;
    cdsOS_SimplesNUM_OS: TIntegerField;
    mOSAux: TClientDataSet;
    mOSAuxID: TIntegerField;
    cdsFilialVLR_CSRF_MINIMO: TFloatField;
    sdsNotaServicoNOME_CLIENTE_CONS: TStringField;
    cdsNotaServicoNOME_CLIENTE_CONS: TStringField;
    cdsNotaServico_ImpNOME_CLIENTE_CONS: TStringField;
    cdsNotaServico_Imp_ItensNUM_OS_SIMPLES: TIntegerField;
    sdsDuplicataANO_REF: TIntegerField;
    sdsDuplicataMES_REF: TIntegerField;
    sdsDuplicataTITULO_CARTORIO: TStringField;
    cdsDuplicataANO_REF: TIntegerField;
    cdsDuplicataMES_REF: TIntegerField;
    cdsDuplicataTITULO_CARTORIO: TStringField;
    cdsNotaServico_ImpNOME_CONDPGTO: TStringField;
    cdsNotaServico_ImpNOME_TIPOCOBRANCA: TStringField;
    sdsDuplicataPERC_BASE_COMISSAO: TFloatField;
    cdsDuplicataPERC_BASE_COMISSAO: TFloatField;
    sdsNotaServico_Contrato: TSQLDataSet;
    cdsNotaServico_Contrato: TClientDataSet;
    dsNotaServico_Contrato: TDataSource;
    sdsNotaServico_ContratoID: TIntegerField;
    sdsNotaServico_ContratoID_CONTRATO: TIntegerField;
    sdsNotaServico_ContratoNUM_CONTRATO: TIntegerField;
    sdsNotaServico_ContratoANO_CONTRATO: TIntegerField;
    sdsNotaServico_ContratoANO_REF: TIntegerField;
    sdsNotaServico_ContratoMES_REF: TIntegerField;
    sdsNotaServico_ContratoSTATUS_RPS: TStringField;
    cdsNotaServico_ContratoID: TIntegerField;
    cdsNotaServico_ContratoID_CONTRATO: TIntegerField;
    cdsNotaServico_ContratoNUM_CONTRATO: TIntegerField;
    cdsNotaServico_ContratoANO_CONTRATO: TIntegerField;
    cdsNotaServico_ContratoANO_REF: TIntegerField;
    cdsNotaServico_ContratoMES_REF: TIntegerField;
    cdsNotaServico_ContratoSTATUS_RPS: TStringField;
    cdsNotaServicosdsNotaServico_Contrato: TDataSetField;
    qParametros_Ser: TSQLQuery;
    qParametros_SerID: TIntegerField;
    qParametros_SerAGRUPA_CONTRATO_NFSE: TStringField;
    cdsNotaServico_ConsultaCNPJ_CPF: TStringField;
    cdsNotaServico_ConsultaPESSOA: TStringField;
    cdsFilialLOCALSERVIDORNFE: TStringField;
    sdsNotaServico_ItensID_CONTRATO: TIntegerField;
    sdsNotaServico_ItensANO_CONTRATO: TIntegerField;
    sdsNotaServico_ItensNUM_CONTRATO: TIntegerField;
    cdsNotaServico_ItensID_CONTRATO: TIntegerField;
    cdsNotaServico_ItensANO_CONTRATO: TIntegerField;
    cdsNotaServico_ItensNUM_CONTRATO: TIntegerField;
    sdsNotaServico_Imp_Contrato: TSQLDataSet;
    dspNotaServico_Imp_Contrato: TDataSetProvider;
    cdsNotaServico_Imp_Contrato: TClientDataSet;
    dsNotaServico_Imp_Contrato: TDataSource;
    cdsNotaServico_Imp_ContratoID: TIntegerField;
    cdsNotaServico_Imp_ContratoID_CONTRATO: TIntegerField;
    cdsNotaServico_Imp_ContratoNUM_CONTRATO: TIntegerField;
    cdsNotaServico_Imp_ContratoANO_CONTRATO: TIntegerField;
    cdsNotaServico_Imp_ContratoANO_REF: TIntegerField;
    cdsNotaServico_Imp_ContratoMES_REF: TIntegerField;
    cdsNotaServico_Imp_ContratoSTATUS_RPS: TStringField;
    qParametros_SerIMP_CONTRATO_NFSE: TStringField;
    cdsNotaServico_ImpNUM_CONTRATO: TIntegerField;
    cdsNotaServico_ImpANO_CONTRATO: TIntegerField;
    sdsDuplicataID_TERMINAL: TIntegerField;
    cdsDuplicataID_TERMINAL: TIntegerField;
    sdsDuplicataVLR_MULTA: TFloatField;
    cdsDuplicataVLR_MULTA: TFloatField;
    sdsDuplicata_HistVLR_MULTA: TFloatField;
    cdsDuplicata_HistVLR_MULTA: TFloatField;
    sdsNotaServicoIBPT_CHAVE: TStringField;
    cdsNotaServicoIBPT_CHAVE: TStringField;
    qIBPTCHAVE: TStringField;
    sdsNotaServicoDTCANCELAMENTO: TDateField;
    cdsNotaServicoDTCANCELAMENTO: TDateField;
    cdsNotaServico_ConsultaDTCANCELAMENTO: TDateField;
    cdsFilialINCENTIVO_FISCAL: TStringField;
    dsPedido: TDataSource;
    cdsPedido: TClientDataSet;
    dspPedido: TDataSetProvider;
    sdsPedido: TSQLDataSet;
    qParametros_Ped: TSQLQuery;
    qParametros_PedCONTROLAR_FILIAL_NA_COPIA_NOTA: TStringField;
    cdsPedidoID: TIntegerField;
    cdsPedidoPEDIDO_CLIENTE: TStringField;
    cdsPedidoID_CLIENTE: TIntegerField;
    cdsPedidoDTEMISSAO: TDateField;
    cdsPedidoID_PRODUTO: TIntegerField;
    cdsPedidoID_CFOP: TIntegerField;
    cdsPedidoNUM_PEDIDO: TIntegerField;
    cdsPedidoVLR_UNITARIO: TFloatField;
    cdsPedidoQTD: TFloatField;
    cdsPedidoQTD_FATURADO: TFloatField;
    cdsPedidoQTD_RESTANTE: TFloatField;
    cdsPedidoQTD_AFATURAR: TFloatField;
    cdsPedidoID_NCM_PED: TIntegerField;
    cdsPedidoREFERENCIA: TStringField;
    cdsPedidoITEM_CLIENTE: TIntegerField;
    cdsPedidoNOMECLIENTE: TStringField;
    cdsPedidoREFERENCIA_PRO: TStringField;
    cdsPedidoNOMEPRODUTO: TStringField;
    cdsPedidoCNPJ_CPF: TStringField;
    cdsPedidoDTENTREGA: TDateField;
    cdsPedidoITEM: TIntegerField;
    cdsPedidoVLR_DESCONTO: TFloatField;
    cdsPedidoID_NCM: TIntegerField;
    cdsPedidoUNIDADE: TStringField;
    cdsPedidoPERC_IPI: TFloatField;
    cdsPedidoOBS_COMPLEMENTAR: TStringField;
    cdsPedidoNUMOS: TStringField;
    cdsPedidoTIPO_FRETE: TStringField;
    cdsPedidoID_CONDPGTO: TIntegerField;
    cdsPedidoIMP_OC_NOTA: TStringField;
    cdsPedidoID_VARIACAO: TIntegerField;
    cdsPedidoQTD_LIBERADA: TFloatField;
    cdsPedidoQTD_PRODUZIDA: TFloatField;
    cdsPedidoTIPO_REG: TStringField;
    cdsPedidoTAMANHO: TStringField;
    cdsPedidoID_TRANSPORTADORA: TIntegerField;
    cdsPedidoNUM_DOC: TIntegerField;
    cdsPedidoNUM_TALAO: TStringField;
    cdsPedidoVLR_DESCONTORATEIO: TFloatField;
    cdsPedidoID_COR: TFMTBCDField;
    cdsPedidoID_MOVESTOQUE: TIntegerField;
    cdsPedidoQTD_LANCAR_ESTOQUE: TFloatField;
    cdsPedidoNOME_GRUPO: TStringField;
    cdsPedidoNOME_CONSUMIDOR: TStringField;
    cdsPedidoVLR_ADIANTAMENTO: TFloatField;
    cdsPedidoPERC_COMISSAO_ITEM: TFloatField;
    cdsPedidoPERC_COMISSAO: TFloatField;
    cdsPedidoNUM_LOTE_CONTROLE: TStringField;
    cdsPedidoID_TIPO_COBRANCA: TIntegerField;
    cdsPedidoID_CONTA: TIntegerField;
    cdsPedidoCOPIAR_SELECIONADO: TStringField;
    cdsPedidoID_VENDEDOR: TIntegerField;
    cdsPedidoVLR_ENTRADA: TFloatField;
    cdsPedidoGERA_ENTRADA_NO_PEDIDO: TStringField;
    cdsPedidoITEM_ORIGINAL: TIntegerField;
    cdsPedidoVLR_FRETE: TFloatField;
    cdsPedidoOBS_NOTA: TStringField;
    cdsPedidoID_SERVICO_INT: TIntegerField;
    cdsPedidoTIPO_SERVICO: TStringField;
    cdsPedidoNOME_SERVICO_INT: TStringField;
    sdsNotaServico_ItensID_PEDIDO: TIntegerField;
    cdsNotaServico_ItensID_PEDIDO: TIntegerField;
    sdsNotaServico_ItensITEM_PEDIDO: TIntegerField;
    cdsNotaServico_ItensITEM_PEDIDO: TIntegerField;
    sdsNotaServico_ItensPEDIDO_CLIENTE: TStringField;
    cdsNotaServico_ItensPEDIDO_CLIENTE: TStringField;
    qParametros_PedUSA_OPERACAO_SERV: TStringField;
    mPedidoAux: TClientDataSet;
    mPedidoAuxID_Pedido: TIntegerField;
    mPedidoAuxOBS_Nota: TStringField;
    sdsPrc_Atualiza_Status_Ped: TSQLDataSet;
    cdsPedidoNOME_PRODUTO_PED: TStringField;
    sdsNotaServico_ItensNUM_OS_PED: TStringField;
    cdsNotaServico_ItensNUM_OS_PED: TStringField;
    cdsNotaServico_Imp_ItensNUM_OS_PED: TStringField;
    sdsOS_Serv: TSQLDataSet;
    dspOS_Serv: TDataSetProvider;
    cdsOS_Serv: TClientDataSet;
    dsOS_Serv: TDataSource;
    cdsOS_ServID: TIntegerField;
    cdsOS_ServNUM_OS: TIntegerField;
    cdsOS_ServID_SERVICO: TIntegerField;
    cdsOS_ServNOME: TStringField;
    cdsOS_ServTEMPO_TOTAL: TFloatField;
    cdsOS_ServVLR_TOTAL: TFloatField;
    cdsOS_ServITEM: TIntegerField;
    sdsNotaServico_ItensTIPO: TStringField;
    cdsNotaServico_ItensTIPO: TStringField;
    mOSAuxTipo: TStringField;
    qParametros_SerCID_PRESTACAO_SERV: TStringField;
    cdsFilialPERC_ISS_SIMPLES: TFloatField;
    qParametros_SerUSA_NATUREZA_CID_NFSE: TStringField;
    cdsNaturezaUSA_CIDADE_CLI: TStringField;
    cdsClienteVLR_LIMITE_CREDITO: TFloatField;
    qParametros_Usuario: TSQLQuery;
    qParametros_UsuarioID: TIntegerField;
    qParametros_UsuarioUSUARIO: TStringField;
    qParametros_UsuarioSENHA_PEDIDO: TStringField;
    qParametros_UsuarioSENHA_CREDITO: TStringField;
    qParametros_UsuarioALT_PRECO_PED: TStringField;
    qParametros_UsuarioCONFIRMA_ENVIO_NFE: TStringField;
    qParametros_Geral: TSQLQuery;
    qParametros_GeralGRAVAR_HIST_SENHA: TStringField;
    mSenha: TClientDataSet;
    mSenhaSenha: TStringField;
    mSenhaItem: TIntegerField;
    mSenhaTipo_Alt: TStringField;
    mSenhaTipo_Doc: TStringField;
    mSenhaSenha_Pertence: TStringField;
    cdsNotaServico_Imp_ItensCALCULAR_ISSQN: TStringField;
    cdsNotaServico_Imp_ItensCALCULAR_PISCOFINS: TStringField;
    cdsNotaServico_Imp_ItensCALCULAR_CSLL: TStringField;
    cdsNotaServico_Imp_ItensCALCULAR_IR: TStringField;
    cdsCidadeCANCELAMENTO_NFSE: TStringField;
    cdsFilialCANCELAMENTO_NFSE: TStringField;
    sdsDuplicataNGR: TStringField;
    sdsDuplicataAPROVADO: TStringField;
    cdsDuplicataNGR: TStringField;
    cdsDuplicataAPROVADO: TStringField;
    qParametros_Fin: TSQLQuery;
    qParametros_FinUSA_PERC_CONDPGTO: TStringField;
    sdsCondPgtoPERC_ENTRADA: TFloatField;
    cdsCondPgtoPERC_ENTRADA: TFloatField;
    sdsCondPgto_DiaPERC_PARCELA: TFloatField;
    cdsCondPgto_DiaPERC_PARCELA: TFloatField;
    cdsClienteMDIA1: TIntegerField;
    cdsClienteMDIA2: TIntegerField;
    qParametros_FinQTD_DIAS_MPAG: TIntegerField;
    qVerDup: TSQLQuery;
    qVerDupCONTADOR: TIntegerField;
    sdsNotaServicoTIPO_ES: TStringField;
    cdsNotaServicoTIPO_ES: TStringField;
    sdsNotaServicoTIPO_DOC: TStringField;
    sdsNotaServicoDTENTRADA: TDateField;
    cdsNotaServicoTIPO_DOC: TStringField;
    cdsNotaServicoDTENTRADA: TDateField;
    cdsNotaServico_ConsultaDTENTRADA: TDateField;
    sdsNotaServicoVLR_ICMS: TFloatField;
    cdsNotaServicoVLR_ICMS: TFloatField;
    sdsNotaServico_ItensVLR_ICMS: TFloatField;
    cdsNotaServico_ItensVLR_ICMS: TFloatField;
    cdsParametrosIMPRESSAO_MATRICIAL: TStringField;
    cdsParametrosUSA_VENDEDOR: TStringField;
    cdsParametrosID_CLIENTE_CONSUMIDOR: TIntegerField;
    cdsParametrosNFSE_RETEN_PIS: TStringField;
    cdsParametrosDECISAO: TStringField;
    cdsParametrosCONTROLAR_MENSAL_CSRF: TStringField;
    cdsParametrosLEI_TRANSPARENCIA_SERVICO: TStringField;
    cdsParametrosTIPO_LEI_TRANSPARENCIA: TStringField;
    cdsParametrosUSA_ANO_CONTRATO: TStringField;
    cdsParametrosUSA_RECIBO_NFSE: TStringField;
    cdsParametrosIMP_MESANO_REF_NOITEM_NFSE: TStringField;
    cdsParametrosOBS_SIMPLES: TStringField;
    cdsParametrosIMP_TIPO_TRIBUTOS_SERVICO: TStringField;
    cdsParametrosIMP_PERC_TRIB_SERVICO: TStringField;
    cdsParametrosUSA_COPIA_OS_NFSE: TStringField;
    cdsParametrosID_CONTA_PADRAO: TIntegerField;
    cdsParametrosID_TIPO_COBRANCA_PADRAO: TIntegerField;
    cdsParametrosALERTA_VLR_ATRASO: TStringField;
    cdsParametrosUSA_LIMITE_CREDITO: TStringField;
    cdsParametrosSENHA_CREDITO: TStringField;
    cdsParametrosID_CONTA_ORC_SERVICO: TIntegerField;
    cdsParametrosUSA_CONTA_ORCAMENTO: TStringField;
    cdsParametrosUSA_BOLETO_ACBR: TStringField;
    cdsParametrosUSA_ENVIO_EMAIL_CATEGORIA: TStringField;
    cdsParametrosENDXMLNFSE: TStringField;
    cdsParametrosENDPDFNFSE: TStringField;
    cdsParametrosIMPRESSORA_CAMINHO: TStringField;
    cdsParametrosCONTROLAR_ISSQN_RET: TStringField;
    cdsParametrosLOCALSERVIDORNFE: TStringField;
    sdsNotaServicoPERC_PIS: TFloatField;
    sdsNotaServicoPERC_COFINS: TFloatField;
    sdsNotaServicoVLR_PIS_CALC: TFloatField;
    sdsNotaServicoVLR_COFINS_CALC: TFloatField;
    cdsNotaServicoPERC_PIS: TFloatField;
    cdsNotaServicoPERC_COFINS: TFloatField;
    cdsNotaServicoVLR_PIS_CALC: TFloatField;
    cdsNotaServicoVLR_COFINS_CALC: TFloatField;
    sdsNotaServico_ItensVLR_PIS_CALC: TFloatField;
    sdsNotaServico_ItensVLR_COFINS_CALC: TFloatField;
    cdsNotaServico_ItensVLR_PIS_CALC: TFloatField;
    cdsNotaServico_ItensVLR_COFINS_CALC: TFloatField;
    qParametros_SerUSA_CALC_PISCOFINS: TStringField;
    cdsNotaServico_ImpCOD_SERVICO_EQUIV: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsNotaServicoNewRecord(DataSet: TDataSet);
    procedure cdsNotaServicoBeforePost(DataSet: TDataSet);
    procedure dspNotaServicoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsNotaServico_ItensNewRecord(DataSet: TDataSet);
    procedure cdsNotaServico_ItensBeforePost(DataSet: TDataSet);
    procedure cdsDuplicataBeforePost(DataSet: TDataSet);
    procedure cdsDuplicataReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsDuplicata_HistReconcileError(
      DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure cdsDuplicataNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure prc_Gravar_NotaServico_Parc(Parcela: Integer; Data: TDateTime; Valor: Real; Dia1, Dia2 : Integer);
    procedure prc_Gravar_Financeiro(Tipo: String);
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMSGNotaServico: String;
    vMsgErroParc: String;
    vCod_Cancelamento: Integer;
    vVlrTotal_NFSe: Real;
    vVlrLiquido_NFse: Real;
    vPerc_Trib_Maior: Real;
    vPerc_Trib_2: Boolean;
    vVlr_Retencao_Federal: Real;
    vObs_Contrato: String;

    ctCommand, ctConsulta, ctServico, ctNotaServico_Lote, ctqIBPT: String;
    ctNotaServico_Imp, ctNotaServico_Imp_It, ctOS_Simples, ctOS_Serv: String;
    ctPedido: String;
    ctCliente : String;

    ctAtividade_Cid: String;
    vMotivoCancelamento: String;
    vSomar_Diminuir_Ant: String;
    vCalcular_INSS_Ant: String;
    vCalcular_ISSQN_Ant: String;
    vCalcular_PisCofins_Ant: String;
    vCalcular_CSLL_Ant: String;
    vCalcular_IR_Ant: String;
    vDtCancelamento: TDateTime;

    procedure prc_Localizar(ID: Integer);
    procedure prc_Inserir(Tipo_Reg: String = 'NTS');
    procedure prc_Gravar(Tipo: String = 'ALT');
    procedure prc_Excluir;
    procedure prc_Excluir_Item;
    function fnc_Possui_Erro: Boolean;
    function fnc_Possui_Avisos: Boolean;

    procedure prc_Inserir_Itens;

    procedure prc_Abrir_cdsCliente(Tipo_Reg: String);
    procedure Abrir_cdsDuplicata(ID: Integer);

    function fnc_Gerar_NotaServico_Parc: Boolean;

    procedure Gravar_Duplicata(Tipo, TransfICMS: String; Parcela: Integer; Valor: Real; Data: TDateTime; Prazo: String = '');
                                                 //Tipo  P= Contas a Pagar   R= Contas a Receber
                                                 //Prazo = ENT=Entrada  AVI=Avista
    procedure Gravar_Dupicata_Hist(Tipo: String);
    procedure prc_Gravar_Comissao(Prazo: String = '');

    procedure prc_Excluir_Duplicata;
    procedure prc_Excluir_Financeiro;
    procedure prc_Excluir_Movimento;
    procedure Excluir_ExtComissao;

    procedure prc_Le_Itens(Tipo: String); //Z=Zerar  G=Gerar Duplicata

    procedure prc_Abrir_Natureza;
    procedure prc_Abrir_Servico;

    function fnc_Buscar_NumLote(Filial: Integer): Integer;
    procedure prc_Gravar_Cancelamento(NomeArquivo : String = '');
    procedure prc_Calcular_Item(Vlr_Desconto: Real = 0);
    function fnc_Buscar_Pessoa_Servico(ID_Cliente, ID_Servico: Integer): Real;
    procedure prc_Abrir_NotaServico_Lote(NumLote: Integer);
    function fnc_Montar_Obs_Retencao: String;
    procedure prc_Calcular_Impostos;
    procedure prc_Calcular_Imposto_Itens(Vlr_Desconto: Real = 0);
    procedure prc_Recalcular;
    procedure prc_Limpar_Totais;
    function fnc_Vlr_Fat_Mensal_Cli(Filial, ID_Cliente, Ano, Mes, NumRps: Integer): Real;
    function fnc_Recibo_Gerado: Boolean;
    procedure prc_Busca_IBPT(Codigo_NBS, Tipo: String); //Tipo = I Itens   G = Geral
    procedure prc_Abrir_Atividade(ID_Servico: Integer);
    procedure prc_Monta_Obs_Contrato;
  end;

var
  DMCadNotaServico: TDMCadNotaServico;

implementation

uses DmdDatabase, uUtilPadrao, SendMailOptions, LogProvider;

{$R *.dfm}

{ TDMCadCFOP}

function TDMCadNotaServico.fnc_Buscar_NumLote(Filial: Integer): Integer;
var
  sds: TSQLDataSet;
  vNumAux: Integer;
begin
  Result := 0;
  if Filial <= 0 then
    exit;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  try
    sds.CommandText := 'SELECT MAX(NUMLOTE) NUMLOTE FROM FILIAL ' +
                       ' WHERE ID = ' + IntToStr(Filial);
    sds.Open;
    vNumAux := sds.FieldByName('NUMLOTE').AsInteger + 1;

    sds.Close;
    sds.CommandText := 'UPDATE FILIAL SET NUMLOTE = ' + IntToStr(vNumAux) +
                       ' WHERE ID = ' + IntToStr(Filial);
    sds.ExecSQL;

    Result := vNumAux;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TDMCadNotaServico.prc_Excluir_Duplicata;
var
  sds: TSQLDataSet;
begin
  if  cdsNotaServicoID.AsInteger <= 0 then
    exit;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  try
    sds.CommandText := 'DELETE FROM DUPLICATA  ' +
                       'WHERE ID_NOTA_SERVICO = ' + IntToStr(cdsNotaServicoID.AsInteger);
    sds.ExecSQL;

  finally
    FreeAndNil(sds);
  end;
end;

procedure TDMCadNotaServico.prc_Inserir(Tipo_Reg: String);
var
  vAux: Integer;
begin
  if not cdsNotaServico.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('NOTASERVICO',0);

  cdsNotaServico.Insert;
  cdsNotaServicoID.AsInteger             := vAux;
  cdsNotaServicoFILIAL.AsInteger         := vFilial;
  cdsNotaServicoDTEMISSAO.AsDateTime     := now;
  cdsNotaServicoDTEMISSAO_CAD.AsDateTime := Date;
  cdsNotaServicoTIPO_RPS.AsString        := '1';
  cdsNotaServicoID_NATUREZA.AsInteger    := cdsFilialID_NATUREZA.AsInteger;
  //23/06/2017  Foi incluido o campo do perc_iss_simples
  if (cdsFilialSIMPLES.AsString = 'S') and (StrToFloat(FormatFloat('0.00000',cdsFilialPERC_ISS_SIMPLES.AsFloat)) > 0) then
    cdsNotaServicoPERC_ALIQUOTA.AsFloat := StrToFloat(FormatFloat('0.00000',cdsFilialPERC_ISS_SIMPLES.AsFloat))
  else
    cdsNotaServicoPERC_ALIQUOTA.AsFloat := cdsFilialPERC_ISS.AsFloat;
  cdsNotaServicoCNAE_NFSE.AsString       := cdsFilialCNAE_NFSE.AsString;
  cdsNotaServicoISS_RETIDO.AsString      := '2';
  cdsNotaServicoRETEM_CSLL.AsString      := 'N';
  cdsNotaServicoRETEM_INSS.AsString      := 'N';
  cdsNotaServicoRETEM_PISCOFINS.AsString := 'N';
end;

procedure TDMCadNotaServico.prc_Excluir;
var
  ID: TTransactionDesc;
  sds: TSQLDataSet;
begin
  if not(cdsNotaServico.Active) or (cdsNotaServico.IsEmpty) then
    exit;

  mOSAux.EmptyDataSet;
  mPedidoAux.EmptyDataSet;
  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := ' UPDATE TABELALOC SET FLAG = 1 ' +
                       ' WHERE TABELA = ' + QuotedStr('NOTASERVICO');
    sds.ExecSQL();

    prc_Excluir_Duplicata;
    prc_Excluir_Financeiro;
    prc_Excluir_Movimento;


    cdsNotaServico_Itens.First;
    while not cdsNotaServico_Itens.Eof do
    begin
      if (cdsNotaServico_ItensID_OS_SIMPLES.AsInteger > 0) and not(mOSAux.FindKey([cdsNotaServico_ItensID_OS_SIMPLES.AsInteger])) then
      begin
        mOSAux.Insert;
        mOSAuxID.AsInteger := cdsNotaServico_ItensID_OS_SIMPLES.AsInteger;
        mOSAux.Post;
      end
      else  //  28/04/2017
      if (cdsNotaServico_ItensID_PEDIDO.AsInteger > 0) and not(mPedidoAux.FindKey([cdsNotaServico_ItensID_PEDIDO.AsInteger])) then
      begin
        mPedidoAux.Insert;
        mPedidoAuxID_Pedido.AsInteger := cdsNotaServico_ItensID_PEDIDO.AsInteger;
        mPedidoAux.Post;
      end;
      cdsNotaServico_Itens.Delete;
    end;

    cdsNotaServico_Parc.First;
    while not CDSNotaServico_Parc.Eof do
      cdsNotaServico_Parc.Delete;
    cdsNotaServico_Contrato.First;
    while not cdsNotaServico_Contrato.Eof do
      cdsNotaServico_Contrato.Delete;

    cdsNotaServico.Delete;
    cdsNotaServico.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
  FreeAndNil(sds);
end;

procedure TDMCadNotaServico.prc_Gravar(Tipo: String);
var
  sds: TSQLDataSet;
  ID: TTransactionDesc;
  vSerie: String;
  vNumRPS: Integer;
begin
  if ((cdsNotaServicoNUMRPS.AsInteger < 1) and (cdsNotaServicoNUMNOTA.AsInteger <= 0)) or
     ((cdsFilialNOME_PROVEDOR.AsString = 'CAMPO BOM') and (cdsNotaServicoNUMNOTA.AsInteger <= 0))
     and (cdsNotaServicoTIPO_ES.AsString = 'E') then
  begin
    sds := TSQLDataSet.Create(nil);
    ID.TransactionID  := 1;
    ID.IsolationLevel := xilREADCOMMITTED;
    dmDatabase.scoDados.StartTransaction(ID);

    try
      sds.SQLConnection := dmDatabase.scoDados;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;
      sds.CommandText := ' UPDATE TABELALOC SET FLAG = 1 '
                       + ' WHERE TABELA = ' + QuotedStr('NOTASERVICO');
      sds.ExecSQL();

      vSerie := cdsFilialSERIE_NFSE.AsString;
      //if cdsParametrosIMPRESSAO_MATRICIAL.AsString = 'S' then
      if ((cdsParametrosIMPRESSAO_MATRICIAL.AsString = 'S') AND (cdsFilialIMPRESSAO_MATRICIAL.AsString <> '0')) or
        (cdsFilialNOME_PROVEDOR.AsString = 'CAMPO BOM') then
      begin
        if cdsNotaServicoNUMNOTA.AsInteger <= 0 then
        begin
          qProximaNota.Close;
          qProximaNota.ParamByName('FILIAL').AsInteger := cdsNotaServicoFILIAL.AsInteger;
          qProximaNota.ParamByName('SERIE').AsString   := vSerie;
          qProximaNota.Open;
          vNumRPS :=  qProximaNotaNUMNOTA.AsInteger + 1;
          cdsNotaServicoNUMNOTA.AsInteger := vNumRPS;
          cdsNotaServicoSERIE.AsString    := vSerie;
        end;
      end
      else
      begin
        qProximaRPS.Close;
        qProximaRPS.ParamByName('FILIAL').AsInteger := cdsNotaServicoFILIAL.AsInteger;
        qProximaRPS.ParamByName('SERIE').AsString   := vSerie;
        qProximaRPS.Open;
        vNumRPS :=  qProximaRPSNUMRPS.AsInteger + 1;
        cdsNotaServicoNUMRPS.AsInteger := vNumRPS;
        cdsNotaServicoSERIE.AsString   := vSerie;
      end;
      if cdsFilialNOME_PROVEDOR.AsString = 'PORTO ALEGRE' then
        cdsNotaServicoNUMLOTE.AsInteger := cdsNotaServicoNUMRPS.AsInteger;

      cdsNotaServico.Post;
      cdsNotaServico.ApplyUpdates(0);

      dmDatabase.scoDados.Commit(ID);
    except
      dmDatabase.scoDados.Rollback(ID);
      raise;
    end;
    FreeAndNil(sds);
  end
  else
  begin
    cdsNotaServico.Post;
    cdsNotaServico.ApplyUpdates(0);
  end;
end;

procedure TDMCadNotaServico.prc_Localizar(ID: Integer); //-1 é para inclusão
begin
  cdsNotaServico.Close;
  sdsNotaServico.CommandText := ctCommand;
  if ID <> 0 then
    sdsNotaServico.CommandText := sdsNotaServico.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsNotaServico.Open;
end;

procedure TDMCadNotaServico.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand          := sdsNotaServico.CommandText;
  ctConsulta         := sdsNotaServico_Consulta.CommandText;
  ctServico          := sdsServico.CommandText;
  ctNotaServico_Imp  := sdsNotaServico_Imp.CommandText;
  ctNotaServico_Imp_It := sdsNotaServico_Imp_Itens.CommandText;
  ctNotaServico_Lote := sdsNotaServico_Lote.CommandText;
  ctqIBPT            := qIBPT.SQL.Text;
  ctAtividade_Cid    := sdsAtividade_Cid.CommandText;
  ctOS_Simples       := sdsOS_Simples.CommandText;
  ctPedido           := sdsPedido.CommandText;
  ctOS_Serv          := sdsOS_Serv.CommandText;
  ctCliente          := sdsCliente.CommandText;

  //acdsCliente.Open;
  cdsFilial.Open;
  cdsTipoCobranca.Open;
  cdsCondPgto.Open;
  cdsContas.Open;
  cdsServico.Open;
  cdsParametros.Open;
  cdsNatureza.Open;
  cdsServico_Int.Open;
  cdsCidade.Open;
  if cdsFilialUSA_ATIVIDADE_CID_SERV.AsString <> 'S' then
    cdsAtividade_Cid.Open;
  cdsContaOrcamento.Open;
  cdsTab_IBPT.Open;
  cdsObs_Aux.Open;
  qParametros_Ser.Open;
  if cdsParametrosUSA_VENDEDOR.AsString = 'S' then
    cdsVendedor.Open;
  qParametros_Ped.Close;
  qParametros_Ped.Open;
  qParametros_Geral.Open;
  qParametros_Fin.Open;

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
  qParametros_Usuario.Close;
  qParametros_Usuario.ParamByName('USUARIO').AsString := vUsuario;
  qParametros_Usuario.Open;
end;

procedure TDMCadNotaServico.prc_Excluir_Item;
begin
  cdsNotaServicoVLR_SERVICOS.AsFloat         := StrToFloat(FormatFloat('0.00',cdsNotaServicoVLR_SERVICOS.AsFloat - cdsNotaServico_ItensVLR_TOTAL.AsFloat));
  cdsNotaServicoVLR_DEDUCOES.AsFloat         := StrToFloat(FormatFloat('0.00',cdsNotaServicoVLR_DEDUCOES.AsFloat - cdsNotaServico_ItensVLR_DEDUCOES.AsFloat));
  cdsNotaServicoVLR_PIS.AsFloat              := StrToFloat(FormatFloat('0.00',cdsNotaServicoVLR_PIS.AsFloat - cdsNotaServico_ItensVLR_PIS.AsFloat));
  cdsNotaServicoVLR_COFINS.AsFloat           := StrToFloat(FormatFloat('0.00',cdsNotaServicoVLR_COFINS.AsFloat - cdsNotaServico_ItensVLR_COFINS.AsFloat));

  //20/08/2018
  cdsNotaServicoVLR_PIS_CALC.AsFloat         := StrToFloat(FormatFloat('0.00',cdsNotaServicoVLR_PIS_CALC.AsFloat - cdsNotaServico_ItensVLR_PIS_CALC.AsFloat));
  cdsNotaServicoVLR_COFINS_CALC.AsFloat      := StrToFloat(FormatFloat('0.00',cdsNotaServicoVLR_COFINS_CALC.AsFloat - cdsNotaServico_ItensVLR_COFINS_CALC.AsFloat));
  //**************

  cdsNotaServicoVLR_INSS.AsFloat             := StrToFloat(FormatFloat('0.00',cdsNotaServicoVLR_INSS.AsFloat - cdsNotaServico_ItensVLR_INSS.AsFloat));
  cdsNotaServicoVLR_IR.AsFloat               := StrToFloat(FormatFloat('0.00',cdsNotaServicoVLR_IR.AsFloat - cdsNotaServico_ItensVLR_IR.AsFloat));
  cdsNotaServicoVLR_CSLL.AsFloat             := StrToFloat(FormatFloat('0.00',cdsNotaServicoVLR_CSLL.AsFloat - cdsNotaServico_ItensVLR_CSLL.AsFloat));
  cdsNotaServicoVLR_ISS.AsFloat              := StrToFloat(FormatFloat('0.00',cdsNotaServicoVLR_ISS.AsFloat - cdsNotaServico_ItensVLR_ISS.AsFloat));
  cdsNotaServicoVLR_ISS_RETIDO.AsFloat       := StrToFloat(FormatFloat('0.00',cdsNotaServicoVLR_ISS_RETIDO.AsFloat - cdsNotaServico_ItensVLR_ISS_RETIDO.AsFloat));
  cdsNotaServicoVLR_OUTRAS_RETENCOES.AsFloat := StrToFloat(FormatFloat('0.00',cdsNotaServicoVLR_OUTRAS_RETENCOES.AsFloat - cdsNotaServico_ItensVLR_OUTRAS_RETENCOES.AsFloat));
  cdsNotaServicoBASE_CALCULO.AsFloat         := StrToFloat(FormatFloat('0.00',cdsNotaServicoBASE_CALCULO.AsFloat - cdsNotaServico_ItensBASE_CALCULO.AsFloat));
  cdsNotaServicoVLR_LIQUIDO_NFSE.AsFloat     := StrToFloat(FormatFloat('0.00',cdsNotaServicoVLR_LIQUIDO_NFSE.AsFloat - cdsNotaServico_ItensVLR_LIQUIDO_NFSE.AsFloat));
  cdsNotaServicoVLR_DESCONTO_INC.AsFloat     := StrToFloat(FormatFloat('0.00',cdsNotaServicoVLR_DESCONTO_INC.AsFloat - cdsNotaServico_ItensVLR_DESCONTO_INC.AsFloat));
  cdsNotaServicoVLR_DESCONTO_COND.AsFloat    := StrToFloat(FormatFloat('0.00',cdsNotaServicoVLR_DESCONTO_COND.AsFloat - cdsNotaServico_ItensVLR_DESCONTO_COND.AsFloat));
  cdsNotaServicoVLR_TOTAL.AsFloat            := StrToFloat(FormatFloat('0.00',cdsNotaServicoVLR_TOTAL.AsFloat - cdsNotaServico_ItensVLR_TOTAL.AsFloat));
  cdsNotaServicoVLR_DUPLICATA.AsFloat        := StrToFloat(FormatFloat('0.00',cdsNotaServicoVLR_DUPLICATA.AsFloat - cdsNotaServico_ItensVLR_DUPLICATA.AsFloat));
  cdsNotaServico_Itens.Delete;
end;

procedure TDMCadNotaServico.prc_Inserir_Itens;
var
  vItemAux: Integer;
begin
  cdsNotaServico_Itens.Last;
  vItemAux := cdsNotaServico_ItensITEM.AsInteger;

  cdsNotaServico_Itens.Insert;
  cdsNotaServico_ItensID.AsInteger   := cdsNotaServicoID.AsInteger;
  cdsNotaServico_ItensITEM.AsInteger := vItemAux + 1;
  cdsNotaServico_ItensQTD.AsInteger  := 1;
end;

procedure TDMCadNotaServico.cdsNotaServicoNewRecord(DataSet: TDataSet);
begin
  cdsNotaServicoNUMNOTA.AsInteger            := 0;
  cdsNotaServicoTIPO_RPS.AsString            := '1';
  cdsNotaServicoFILIAL.AsInteger             := 0;
  cdsNotaServicoCHAVE_ACESSO.AsString        := '';
  cdsNotaServicoPROTOCOLO.AsString           := '';
  cdsNotaServicoHOMOLOGACAO.AsString         := 'N';
  cdsNotaServicoISS_RETIDO.AsString          := '2';
  cdsNotaServicoSTATUS_RPS.AsString          := '1';
  cdsNotaServicoVLR_SERVICOS.AsFloat         := 0;
  cdsNotaServicoVLR_DEDUCOES.AsFloat         := 0;
  cdsNotaServicoVLR_PIS.AsFloat              := 0;
  cdsNotaServicoVLR_COFINS.AsFloat           := 0;
  cdsNotaServicoVLR_INSS.AsFloat             := 0;
  cdsNotaServicoVLR_IR.AsFloat               := 0;
  cdsNotaServicoVLR_CSLL.AsFloat             := 0;
  cdsNotaServicoVLR_ISS.AsFloat              := 0;
  cdsNotaServicoVLR_ISS_RETIDO.AsFloat       := 0;
  cdsNotaServicoVLR_OUTRAS_RETENCOES.AsFloat := 0;
  cdsNotaServicoBASE_CALCULO.AsFloat         := 0;
  cdsNotaServicoPERC_ALIQUOTA.AsFloat        := 0;
  cdsNotaServicoVLR_LIQUIDO_NFSE.AsFloat     := 0;
  cdsNotaServicoVLR_DESCONTO_COND.AsFloat    := 0;
  cdsNotaServicoVLR_DESCONTO_INc.AsFloat     := 0;
  cdsNotaServicoVLR_DUPLICATA.AsFloat        := 0;
  cdsNotaServicoVLR_ENTRADA.AsFloat          := 0;
  cdsNotaServicoVLR_TOTAL.AsFloat            := 0;
  cdsNotaServicoPERC_DESCONTO.AsFloat        := 0;
  cdsNotaServicoBASE_INSS.AsFloat            := 0;
  cdsNotaServicoDIMINUIR_RETENCAO.AsString   := 'S';
  cdsNotaServicoID_MOVIMENTO.AsInteger       := 0;
  cdsNotaServicoEMAIL_ENVIADO.AsString       := 'N';
  cdsNotaServicoPERC_TRIBUTO.AsFloat         := 0;
  cdsNotaServicoPERC_TRIBUTO_ESTADUAL.AsFloat := 0;
  cdsNotaServicoPERC_TRIBUTO_FEDERAL.AsFloat := 0;
  cdsNotaServicoPERC_TRIBUTO_MUNICIPAL.AsFloat := 0;
  cdsNotaServicoVLR_TRIBUTO.AsFloat          := 0;
  cdsNotaServicoVLR_TRIBUTO_ESTADUAL.AsFloat := 0;
  cdsNotaServicoVLR_TRIBUTO_FEDERAL.AsFloat  := 0;
  cdsNotaServicoVLR_TRIBUTO_MUNICIPAL.AsFloat := 0;
  cdsNotaServicoCOD_AUTENCIDADE_RET.AsString := '';
  cdsNotaServicoPERC_REDUCAO_INSS.AsFloat    := 0;
  cdsNotaServicoBASE_IR.AsFloat              := 0;
  cdsNotaServicoTIPO_ES.AsString             := 'S';
  cdsNotaServicoTIPO_DOC.AsString            := 'NSE';
  cdsNotaServicoVLR_PIS_CALC.AsFloat         := 0;
  cdsNotaServicoVLR_COFINS.AsFloat           := 0;
end;

function TDMCadNotaServico.fnc_Possui_Erro: Boolean;
var
  vVlrAux: Real;
  vTexto: String;
begin
  Result := True;
  vMSGNotaServico := '';
  if trim(cdsNotaServicoTIPO_DOC.AsString) = '' then
    vMSGNotaServico := vMSGNotaServico + #13 + '*** Tipo do Documento não informado!';
  if cdsNotaServico_Itens.IsEmpty then
    vMSGNotaServico := vMSGNotaServico + #13 + '*** Não foi lançado nenhum item!';
  if (cdsNotaServicoID_NATUREZA.AsInteger < 0) and (cdsFilialNOME_PROVEDOR.AsString <> 'CAMPO BOM')  then
    vMSGNotaServico := vMSGNotaServico + #13 + '*** Natureza não informada!';
  if (cdsNotaServicoID_CLIENTE.AsInteger < 1) then
    vMSGNotaServico := vMSGNotaServico + #13 + '*** Cliente não informado!';
  if cdsNotaServicoDTEMISSAO.AsDateTime < 10 then
    vMSGNotaServico := vMSGNotaServico + #13 + '*** Data de Emissão não informada!';
  if trim(cdsFilialSERIENORMAL.AsString) = '' then
    vMSGNotaServico := vMSGNotaServico + #13 + '*** Série não foi informada no cadastro da Filial/Empresa!';
  if StrToFloat(FormatFloat('0.00',cdsNotaServicoVLR_TOTAL.AsFloat)) <= 0 then
    vMSGNotaServico := vMSGNotaServico + #13 + '*** Nota com valor total zerado!';
  if (cdsNotaServicoNUMRPS_SUBSTITUIDO.AsInteger > 0) then
  begin
    qVerificaNota.Close;
    qVerificaNota.ParamByName('FILIAL').AsInteger := cdsNotaServicoFILIAL.AsInteger;
    qVerificaNota.ParamByName('NUMRPS').AsInteger := cdsNotaServicoNUMRPS_SUBSTITUIDO.AsInteger;
    qVerificaNota.Open;
    if qVerificaNota.IsEmpty then
      vMSGNotaServico := vMSGNotaServico + #13 + '*** Nº RPS não encontrado!'
    else
    if qVerificaNotaSTATUS_RPS.AsString <> '2' then
      vMSGNotaServico := vMSGNotaServico + #13 + '*** Nº RPS de substituição não cancelado!';
  end;
  cdsNatureza.Locate('ID',cdsNotaServicoID_NATUREZA.AsInteger,[loCaseInsensitive]);
  if cdsClienteCODIGO.AsInteger <> cdsNotaServicoID_CLIENTE.AsInteger then
    cdsCliente.Locate('CODIGO',cdsNotaServicoID_CLIENTE.AsInteger,[loCaseInsensitive]);
  if cdsFilialID.AsInteger <> cdsNotaServicoFILIAL.AsInteger then
    cdsFilial.Locate('ID',cdsNotaServicoFILIAL.AsInteger,[loCaseInsensitive]);
  //if (cdsNaturezaTRIBUTACAO_DF.AsString = 'D') and (cdsClienteID_CIDADE.AsInteger <> cdsFilialID_CIDADE.AsInteger) then
  //  vMSGNotaServico := vMSGNotaServico + #13 + '*** Natureza diverge do município (Cliente fora do munícipio) !';
  if (cdsNaturezaTRIBUTACAO_DF.AsString = 'F') and (cdsClienteID_CIDADE.AsInteger = cdsFilialID_CIDADE.AsInteger) and (cdsFilialNOME_PROVEDOR.AsString <> 'CAMPO BOM') then
    vMSGNotaServico := vMSGNotaServico + #13 + '*** Natureza diverge do município (Cliente do mesmo município) !';
  vTexto := Monta_Numero(cdsClienteCNPJ_CPF.AsString,14);
  if (cdsNotaServicoID_CLIENTE.AsInteger <> cdsParametrosID_CLIENTE_CONSUMIDOR.AsInteger) and (copy(vTexto,1,11) = '00000000000') or (trim(vTexto) = '') then
    vMSGNotaServico := vMSGNotaServico + #13 + '*** Cliente sem CNPJ/CPF!';
  if (cdsNotaServicoISS_RETIDO.AsString = '1') and (StrToFloat(FormatFloat('0.00',cdsNotaServicoVLR_ISS_RETIDO.AsFloat)) <= 0) then
    vMSGNotaServico := vMSGNotaServico + #13 + '*** Nota esta marcada como ISS Retido, mas o valor da retenção está zerada!';
  if (cdsNotaServicoISS_RETIDO.AsString = '2') and (StrToFloat(FormatFloat('0.00',cdsNotaServicoVLR_ISS_RETIDO.AsFloat)) > 0) then
    vMSGNotaServico := vMSGNotaServico + #13 + '*** Nota está marcada sem Retenção, mas existe valor de retenção!';
  //vVlrAux := StrToFloat(FormatFloat('0.00',cdsNotaServicoVLR_ENTRADA.AsFloat));
  vVlrAux := StrToFloat(FormatFloat('0.00',0));
  cdsNotaServico_Parc.First;
  while not cdsNotaServico_Parc.Eof do
  begin
    vVlrAux := StrToFloat(FormatFloat('0.00',vVlrAux + cdsNotaServico_ParcVLR_VENCIMENTO.AsFloat));
    cdsNotaServico_Parc.Next;
  end;
  if (cdsNotaServicoTIPO_PRAZO.AsString = 'V') and (StrToFloat(FormatFloat('0.00',cdsNotaServicoVLR_DUPLICATA.AsFloat)) <= 0) then
    vMSGNotaServico := vMSGNotaServico + #13 + '*** Prazo informado a vista, mas o valor da duplicata é zerado!';
  if (cdsNotaServicoTIPO_PRAZO.AsString = 'P') and (StrToFloat(FormatFloat('0.00',cdsNotaServicoVLR_DUPLICATA.AsFloat)) <= 0) then
    vMSGNotaServico := vMSGNotaServico + #13 + '*** Prazo informado a prazo, mas o valor da duplicata é zerado!';
  if ((cdsNotaServicoTIPO_PRAZO.AsString <> 'V') and (cdsNotaServicoTIPO_PRAZO.AsString <> 'A')) and  (StrToFloat(FormatFloat('0.00',cdsNotaServicoVLR_DUPLICATA.AsFloat)) <> StrToFloat(FormatFloat('0.00',vVlrAux))) then
    vMSGNotaServico := vMSGNotaServico + #13 + '*** Valor das parcelas diferente do valor da duplicata!';
  if (cdsNotaServicoTIPO_PRAZO.AsString = 'V') and (cdsNotaServicoID_CONTA.AsInteger <= 0) then
    vMSGNotaServico := vMSGNotaServico + #13 + '*** Nota é A Vista, precisa informar a conta/banco para lançamento no financeiro!';
  if cdsNotaServico_ItensID_SERVICO_INT.AsInteger <= 0 then
    vMSGNotaServico := vMSGNotaServico + #13 + '*** Serviço não foi informado!';

  if vMSGNotaServico <> '' then
    exit;
  Result := False;
end;

procedure TDMCadNotaServico.cdsNotaServicoBeforePost(DataSet: TDataSet);
begin
  if cdsNotaServicoID_BANCO.AsInteger <= 0 then
    cdsNotaServicoID_BANCO.Clear;
  if cdsNotaServicoID_CONDPGTO.AsInteger <= 0 then
    cdsNotaServicoID_CONDPGTO.Clear;
  if cdsNotaServicoID_CONTA_ORCAMENTO.AsInteger <= 0 then
    cdsNotaServicoID_CONTA_ORCAMENTO.Clear;
  if cdsNotaServicoID_CONTA.AsInteger <= 0 then
    cdsNotaServicoID_CONTA.Clear;
end;

procedure TDMCadNotaServico.prc_Abrir_cdsCliente(Tipo_Reg: String);
begin
  cdsCliente.Close;
  sdsCliente.CommandText := ctCliente;
  if Tipo_Reg = 'E' then
    sdsCliente.CommandText := sdsCliente.CommandText + ' AND TP_FORNECEDOR = ' + QuotedStr('S')
  else
    sdsCliente.CommandText := sdsCliente.CommandText + ' AND TP_CLIENTE = ' + QuotedStr('S');
  cdsCliente.Open;
end;

procedure TDMCadNotaServico.Gravar_Duplicata(Tipo, TransfICMS: String; Parcela: Integer; Valor: Real; Data: TDateTime; Prazo: String = '');
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
  if cdsNotaServicoTIPO_ES.AsString = 'E' then
    cdsDuplicataTIPO_ES.AsString := 'S'
  else
    cdsDuplicataTIPO_ES.AsString := 'E';
  cdsDuplicataFILIAL.AsInteger            := cdsNotaServicoFILIAL.AsInteger;
  cdsDuplicataID_NOTA_SERVICO.AsInteger   := cdsNotaServicoID.AsInteger;
  cdsDuplicataPARCELA.AsInteger           := Parcela;
  cdsDuplicataNUMDUPLICATA.AsString       := cdsNotaServicoNUMNOTA.AsString;
  cdsDuplicataNUMNOTA.AsInteger           := cdsNotaServicoNUMNOTA.AsInteger;
  cdsDuplicataSERIE.AsString              := cdsNotaServicoSERIE.AsString;
  cdsDuplicataDTVENCIMENTO.AsDateTime     := Data;
  cdsDuplicataVLR_PARCELA.AsFloat         := StrToFloat(FormatFloat('0.00',Valor));
  cdsDuplicataVLR_RESTANTE.AsFloat        := StrToFloat(FormatFloat('0.00',Valor));
  cdsDuplicataVLR_PAGO.AsFloat            := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicataVLR_DEVOLUCAO.AsFloat       := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicataVLR_DESPESAS.AsFloat        := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicataVLR_DESCONTO.AsFloat        := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicataVLR_JUROSPAGOS.AsFloat      := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicataVLR_MULTA.AsFloat           := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicataVLR_COMISSAO.AsFloat        := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicataPERC_COMISSAO.AsFloat       := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicataPERC_BASE_COMISSAO.AsFloat  := StrToFloat(FormatFloat('0.00',100));
  if (cdsNotaServicoID_VENDEDOR.AsInteger > 0) and (StrToFloat(FormatFloat('0.00',cdsNotaServicoPERC_COMISSAO.AsFloat)) > 0) then
  begin
    cdsDuplicataID_VENDEDOR.AsInteger := cdsNotaServicoID_VENDEDOR.AsInteger;
    cdsDuplicataPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',cdsNotaServicoPERC_COMISSAO.AsFloat));
  end;
  cdsDuplicataDTULTPAGAMENTO.Clear;
  cdsDuplicataID_PESSOA.AsInteger         := cdsNotaServicoID_CLIENTE.AsInteger;
  if (Prazo = 'ENT') or (Prazo = 'AVI') then
  begin
    if cdsNotaServicoID_CONTA.AsInteger > 0 then
      cdsDuplicataID_CONTA.AsInteger  := cdsNotaServicoID_CONTA.AsInteger;
    if cdsNotaServicoID_TIPO_COBRANCA.AsInteger > 0 then
      cdsDuplicataID_TIPOCOBRANCA.AsInteger := cdsNotaServicoID_TIPO_COBRANCA.AsInteger;
    if cdsNotaServicoID_CONTA.AsInteger > 0 then
      cdsDuplicataID_CONTA_BOLETO.AsInteger := cdsNotaServicoID_CONTA.AsInteger;
    cdsDuplicataDTULTPAGAMENTO.AsDateTime := Date;
    cdsDuplicataVLR_RESTANTE.AsFloat      := StrToFloat(FormatFloat('0.00',0));
    cdsDuplicataVLR_PAGO.AsFloat          := StrToFloat(FormatFloat('0.00',Valor));
  end
  else
  begin
    if cdsNotaServico_ParcID_CONTA.AsInteger > 0 then
      cdsDuplicataID_CONTA.AsInteger := cdsNotaServico_ParcID_CONTA.AsInteger
    else
    if cdsNotaServicoID_CONTA.AsInteger > 0 then
      cdsDuplicataID_CONTA.AsInteger := cdsNotaServicoID_CONTA.AsInteger;
    if cdsNotaServico_ParcID_TIPOCOBRANCA.AsInteger > 0 then
      cdsDuplicataID_TIPOCOBRANCA.AsInteger := cdsNotaServico_ParcID_TIPOCOBRANCA.AsInteger
    else
    if cdsNotaServicoID_TIPO_COBRANCA.AsInteger > 0 then
      cdsDuplicataID_TIPOCOBRANCA.AsInteger := cdsNotaServicoID_TIPO_COBRANCA.AsInteger;
    if cdsDuplicataID_CONTA.AsInteger > 0 then
      cdsDuplicataID_CONTA_BOLETO.AsInteger := cdsDuplicataID_CONTA.AsInteger;
  end;
  cdsDuplicataID_COMISSAO.AsInteger    := 0;
  cdsDuplicataQTD_DIASATRASO.AsInteger := 0;
  cdsDuplicataDTRECEBIMENTO_TITULO.Clear;
  if cdsNotaServicoDTEMISSAO_CAD.AsDateTime > 10 then
    cdsDuplicataDTEMISSAO.AsDateTime := cdsNotaServicoDTEMISSAO_CAD.AsDateTime
  else
    cdsDuplicataDTEMISSAO.AsDateTime := cdsNotaServicoDTEMISSAO.AsDateTime;
  cdsDuplicataPAGO_CARTORIO.AsString   := 'N';
  cdsDuplicataPROTESTADO.AsString      := 'N';
  if cdsNotaServicoTIPO_ES.AsString = 'E' then
  begin
    if cdsNotaServicoTIPO_DOC.AsString = 'NSE' then
      cdsDuplicataTIPO_LANCAMENTO.AsString := 'DNS'
    else
      cdsDuplicataTIPO_LANCAMENTO.AsString := 'DCT';
  end
  else
    cdsDuplicataTIPO_LANCAMENTO.AsString := 'NSE';
  cdsDuplicataARQUIVO_GERADO.AsString  := 'N';
  cdsDuplicataTRANSFERENCIA_ICMS.AsString := TransfICMS;
  cdsDuplicataNOSSONUMERO.AsString     := '';
  cdsDuplicataDTFINANCEIRO.Clear;
  cdsDuplicataNUMCHEQUE.AsInteger      := 0;
  cdsDuplicataACEITE.AsString          := '';
  cdsDuplicataNUMRPS.AsInteger         := cdsNotaServicoNUMRPS.AsInteger;
  if cdsNotaServicoID_CONTA_ORCAMENTO.AsInteger > 0 then
    cdsDuplicataID_CONTA_ORCAMENTO.AsInteger := cdsNotaServicoID_CONTA_ORCAMENTO.AsInteger
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
  if cdsNotaServicoMES_REF.AsInteger > 0 then
  begin
    cdsDuplicataANO_REF.AsInteger := cdsNotaServicoANO_REF.AsInteger;
    cdsDuplicataMES_REF.AsInteger := cdsNotaServicoMES_REF.AsInteger;
  end
  else
  begin
    cdsDuplicataANO_REF.AsInteger := YearOf(cdsNotaServicoDTEMISSAO.AsDateTime);
    cdsDuplicataMES_REF.AsInteger := MonthOf(cdsNotaServicoDTEMISSAO.AsDateTime);
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

procedure TDMCadNotaServico.Abrir_cdsDuplicata(ID: Integer);
begin
  cdsDuplicata.Close;
  sdsDuplicata.CommandText := 'SELECT * FROM DUPLICATA WHERE ID = ' + IntToStr(ID);
  cdsDuplicata.Open;
end;

procedure TDMCadNotaServico.Gravar_Dupicata_Hist(Tipo: String);
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
    if cdsNotaServicoTIPO_ES.AsString = 'E' then
      cdsDuplicata_HistCOMPLEMENTO.AsString         := 'PAGAMENTO DO TÍTULO ' + cdsNotaServicoTIPO_DOC.AsString
    else
      cdsDuplicata_HistCOMPLEMENTO.AsString         := 'PAGAMENTO DO TÍTULO NFSE';
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
    if cdsNotaServicoTIPO_PRAZO.AsString = 'V' then
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

function TDMCadNotaServico.fnc_Gerar_NotaServico_Parc: Boolean;
var
  vParcAux: Integer;
  vDataAux: TDateTime;
  vDataOri: TDateTime;
  vValorParc, vValorOri: Real;
  i: Integer;
  vQtdParc: Integer;
begin
  Result       := False;
  cdsNotaServico_Parc.First;
  while not cdsNotaServico_Parc.Eof do
    cdsNotaServico_Parc.Delete;
  
  vMsgErroParc := '';
  if cdsNotaServicoTIPO_PRAZO.AsString <> 'P' then
  begin
    cdsNotaServicoVLR_ENTRADA.AsFloat := StrToFloat(FormatFloat('0.00',0));
    Result := True;
    exit;
  end;
  if StrToFloat(FormatFloat('0.00',cdsNotaServicoVLR_DUPLICATA.AsFloat)) <= 0 then
    vMsgErroParc := vMsgErroParc + #13 + '*** Valor de duplicatas zerado!';
  if cdsNotaServicoID_CONDPGTO.AsInteger < 1 then
    vMsgErroParc := vMsgErroParc + #13 + '*** Condição de pagamento não informada!';
  cdsCondPgto.Locate('ID',cdsNotaServicoID_CONDPGTO.AsInteger,[loCaseInsensitive]);
  if (cdsCondPgto_Dia.RecordCount <= 0) and (cdsCondPgtoTIPO_CONDICAO.AsString <> 'F') then
    vMsgErroParc := vMsgErroParc + #13 + '*** Não existem dias informados no cadastro de condição de pagamento!';
  if (cdsCondPgtoQTD_PARCELA.AsInteger <= 0) and (cdsCondPgtoTIPO_CONDICAO.AsString = 'F') then
    vMsgErroParc := vMsgErroParc + #13 + '*** Não existe qtd. de parcelas no cadastro da condição de pagamento!';
  if vMsgErroParc <> '' then
    Exit;
  if cdsClienteCODIGO.AsInteger <> cdsNotaServicoID_CLIENTE.AsInteger then
    cdsCliente.Locate('CODIGO',cdsNotaServicoID_CLIENTE.AsInteger,([Locaseinsensitive]));
  if cdsNotaServicoDTEMISSAO_CAD.AsDateTime > 10 then
    cdsNotaServicoDTINICIO_DUPLICATA.AsDateTime := cdsNotaServicoDTEMISSAO_CAD.AsDateTime
  else
    cdsNotaServicoDTINICIO_DUPLICATA.AsDateTime := cdsNotaServicoDTEMISSAO.AsDateTime;
  vDataOri := cdsNotaServicoDTINICIO_DUPLICATA.AsDateTime;
  if cdsCondPgtoTIPO_CONDICAO.AsString = 'F' then
    vQtdParc := cdsCondPgtoQTD_PARCELA.AsInteger
  else
    vQtdParc   := cdsCondPgto_Dia.RecordCount;
  if (cdsCondPgtoENTRADA.AsString = 'N') then
    cdsNotaServicoVLR_ENTRADA.AsFloat := 0;
  if (cdsCondPgtoENTRADA.AsString = 'S') and (StrToFloat(FormatFloat('0.00',cdsNotaServicoVLR_ENTRADA.AsFloat)) <= 0) then
  begin
    i := vQtdParc + 1;
    if (qParametros_FinUSA_PERC_CONDPGTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',cdsCondPgtoPERC_ENTRADA.AsFloat)) > 0) then
      vValorParc := StrToFloat(FormatFloat('0.00',(cdsNotaServicoVLR_DUPLICATA.AsFloat * cdsCondPgtoPERC_ENTRADA.AsFloat) / 100))
    else
      vValorParc := StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_DUPLICATA.AsFloat / i));
    cdsNotaServicoVLR_ENTRADA.AsFloat := StrToCurr(FormatCurr('0.00',vValorParc));
  end;
  if StrToFloat(FormatFloat('0.00',cdsNotaServicoVLR_ENTRADA.AsFloat)) > 0 then
  begin
    vValorParc := StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_DUPLICATA.AsFloat - cdsNotaServicoVLR_ENTRADA.AsFloat));
    prc_Gravar_NotaServico_Parc(0,vDataOri,cdsNotaServicoVLR_ENTRADA.AsFloat,cdsClienteMDIA1.AsInteger,cdsClienteMDIA2.AsInteger);
  end
  else
    vValorParc := StrToFloat(FormatFloat('0.00',cdsNotaServicoVLR_DUPLICATA.AsFloat));
  vValorOri  := StrToFloat(FormatFloat('0.00',vValorParc));
  vValorParc := StrToCurr(FormatCurr('0.00',vValorParc / vQtdParc));

  {if cdsNotaServicoDTINICIO_DUPLICATA.AsDateTime < 10 then
  begin
    if cdsNotaServicoDTEMISSAO_CAD.AsDateTime > 10 then
      cdsNotaServicoDTINICIO_DUPLICATA.AsDateTime := cdsNotaServicoDTEMISSAO_CAD.AsDateTime
    else
      cdsNotaServicoDTINICIO_DUPLICATA.AsDateTime := cdsNotaServicoDTEMISSAO.AsDateTime;
  end;}
  //*** Foi tirado no dia 14/01/2013 aqui
  //if cdsNotaServicoVLR_ENTRADA.AsFloat > 0 then
  //  prc_Gravar_NotaServico_Parc(0,cdsNotaServicoDTINICIO_DUPLICATA.AsDateTime,cdsNotaServicoVLR_ENTRADA.AsFloat);
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
      prc_Gravar_NotaServico_Parc(i,vDataAux,vValorParc,cdsClienteMDIA1.AsInteger,cdsClienteMDIA2.AsInteger);
      vValorOri := StrToCurr(FormatCurr('0.00',vValorOri - vValorParc));
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
        vValorParc := StrToFloat(FormatFloat('0.00',vValorOri))
      else
      if (qParametros_FinUSA_PERC_CONDPGTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',cdsCondPgto_DiaPERC_PARCELA.AsFloat)) > 0) then
        vValorParc := StrToFloat(FormatFloat('0.00',((cdsNotaServicoVLR_DUPLICATA.AsFloat - cdsNotaServicoVLR_ENTRADA.AsFloat) * cdsCondPgto_DiaPERC_PARCELA.AsFloat) / 100));
      vDataAux := vDataOri + cdsCondPgto_DiaQTDDIAS.AsInteger;
      prc_Gravar_NotaServico_Parc(i,vDataAux,vValorParc,cdsClienteMDIA1.AsInteger,cdsClienteMDIA2.AsInteger);
      vValorOri := StrToCurr(FormatCurr('0.00',vValorOri - vValorParc));
      cdsCondPgto_Dia.Next;
    end;
  end;
  Result := True;
end;

procedure TDMCadNotaServico.prc_Gravar_NotaServico_Parc(Parcela: Integer; Data: TDateTime; Valor: Real; Dia1, Dia2 : Integer);
begin
  cdsNotaServico_Parc.Insert;
  cdsNotaServico_ParcID.AsInteger              := cdsNotaServicoID.AsInteger;
  cdsNotaServico_ParcITEM.AsInteger            := Parcela;
  cdsNotaServico_ParcDTVENCIMENTO.AsDateTime   := Data;
  //03/06/2018
  if ((Dia1 > 0) or (Dia2 > 0)) then
    cdsNotaServico_ParcDTVENCIMENTO.AsDateTime := fnc_Ajusta_DtVencimento(DayOfWeek(Data),Dia1,Dia2,qParametros_FinQTD_DIAS_MPAG.AsInteger,Data);
  //************

  cdsNotaServico_ParcVLR_VENCIMENTO.AsFloat    := Valor;
  if cdsNotaServicoID_TIPO_COBRANCA.AsInteger > 0 then
    cdsNotaServico_ParcID_TIPOCOBRANCA.AsInteger := cdsNotaServicoID_TIPO_COBRANCA.AsInteger
  else
    cdsNotaServico_ParcID_TIPOCOBRANCA.Clear;
  if cdsNotaServicoID_CONTA.AsInteger > 0 then
    cdsNotaServico_ParcID_CONTA.AsInteger := cdsNotaServicoID_CONTA.AsInteger
  else
    cdsNotaServico_ParcID_CONTA.Clear;
  cdsNotaServico_Parc.Post;
end;

procedure TDMCadNotaServico.dspNotaServicoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadNotaServico.prc_Excluir_Financeiro;
var
  sds: TSQLDataSet;
begin
  if cdsNotaServicoID.AsInteger <= 0 then
    exit;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;

  try
    sds.CommandText   := 'DELETE FROM FINANCEIRO  '
                       + ' WHERE ID_NOTA_SERVICO = ' + IntToStr(cdsNotaServicoID.AsInteger);
    sds.ExecSQL;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TDMCadNotaServico.prc_Gravar_Financeiro(Tipo: String);//ENT=Entrada   AVI= Avista
var
  fDMGravarFinanceiro: TDMGravarFinanceiro;
begin
  fDMGravarFinanceiro := TDMGravarFinanceiro.Create(Self);

  cdsCliente.Locate('CODIGO',cdsDuplicataID_PESSOA.AsInteger,([Locaseinsensitive]));

  fDMGravarFinanceiro.vTipo_ES := 'E';
  if Tipo = 'ENT' then
    fDMGravarFinanceiro.vHistorico_Compl := 'Recto.Entrada ref. NFSe nº ' + cdsDuplicataNUMDUPLICATA.AsString + ' de ' +  cdsClienteNOME.AsString
  else
  if Tipo = 'AVI' then
    fDMGravarFinanceiro.vHistorico_Compl := 'Recto.A Vista ref. NFSe nº ' + cdsDuplicataNUMDUPLICATA.AsString +
                                            ' de ' + cdsClienteNOME.AsString;

  fDMGravarFinanceiro.vID_Conta           := cdsDuplicataID_CONTA.AsInteger;
  fDMGravarFinanceiro.vID_ModDuplicata    := cdsDuplicataID.AsInteger;
  fDMGravarFinanceiro.vItem_MovDuplicata  := cdsDuplicata_HistITEM.AsInteger;
  fDMGravarFinanceiro.vID_Historico       := 0;
  fDMGravarFinanceiro.vID_Pessoa          := cdsDuplicataID_PESSOA.AsInteger;
  fDMGravarFinanceiro.vID_Forma_Pagamento := cdsDuplicataID_TIPOCOBRANCA.AsInteger;
  fDMGravarFinanceiro.vID_ExtComissao     := 0;
  fDMGravarFinanceiro.vDtMovimento        := cdsDuplicata_HistDTLANCAMENTO.AsDateTime;
  fDMGravarFinanceiro.vVlr_Movimento      := StrToCurr(FormatCurr('0.00',cdsDuplicata_HistVLR_PAGAMENTO.AsFloat));
  fDMGravarFinanceiro.vID_Conta_Orcamento := cdsDuplicataID_CONTA_ORCAMENTO.AsInteger;
  fDMGravarFinanceiro.vID_Nota_Servico    := cdsDuplicataID_NOTA_SERVICO.AsInteger;

  fDMGravarFinanceiro.prc_Gravar;

  FreeAndNil(fDMGravarFinanceiro);
end;

procedure TDMCadNotaServico.prc_Le_Itens(Tipo: String);
begin
  cdsNotaServicoVLR_DUPLICATA.AsFloat := 0;
  cdsNotaServico_Itens.First;
  while not cdsNotaServico_Itens.Eof do
  begin
    cdsNotaServico_Itens.Edit;
    if Tipo = 'Z' Then
      cdsNotaServico_ItensGERAR_DUPLICATA.AsString := 'N'
    else
      cdsNotaServico_ItensGERAR_DUPLICATA.AsString := 'S';
    if cdsNotaServico_ItensGERAR_DUPLICATA.AsString = 'S' then
      cdsNotaServico_ItensVLR_DUPLICATA.AsFloat    := StrToCurr(FormatCurr('0.00',cdsNotaServico_ItensVLR_TOTAL.AsFloat))
    else
      cdsNotaServico_ItensVLR_DUPLICATA.AsFloat    := StrToCurr(FormatCurr('0.00',0));
    cdsNotaServicoVLR_DUPLICATA.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_DUPLICATA.AsFloat + cdsNotaServico_ItensVLR_DUPLICATA.AsFloat));
    cdsNotaServico_Itens.Post;
    cdsNotaServico_Itens.Next;
  end;
end;

procedure TDMCadNotaServico.prc_Abrir_Natureza;
begin
  cdsNatureza.Close;
  if cdsFilialID_CIDADE.AsInteger <= 0 then
    exit;
  if (cdsFilialID_CIDADE.AsInteger > 0) then
    cdsCidade.Locate('ID',cdsFilialID_CIDADE.AsInteger,[loCaseInsensitive]);
  sdsNatureza.CommandText := 'SELECT * FROM NFSE_NATUREZA ';
  if cdsFilialTIPO_NATUREZA.AsString = 'P' then
    sdsNatureza.CommandText := sdsNatureza.CommandText + ' WHERE ID_PROVEDOR = ' + cdsCidadeID_PROVEDOR.AsString
  else
    sdsNatureza.CommandText := sdsNatureza.CommandText + ' WHERE ID_PROVEDOR IS Null';
  cdsNatureza.Open;
end;

procedure TDMCadNotaServico.prc_Abrir_Servico;
begin
  cdsServico.Close;
  sdsServico.CommandText := ctServico;
  if cdsFilialID_SERVICO_SINT.AsInteger > 0 then
    sdsServico.CommandText := sdsServico.CommandText + ' WHERE CODIGO LIKE ' + QuotedStr(cdsFilialCOD_SERVICO_SINT.AsString+'.%');
  cdsServico.Open;
end;

procedure TDMCadNotaServico.cdsNotaServico_ItensNewRecord(
  DataSet: TDataSet);
begin
  cdsNotaServico_ItensGERAR_DUPLICATA.AsString := 'S';
  cdsNotaServico_ItensCALCULAR_INSS.AsString   := 'S';
  cdsNotaServico_ItensSOMAR_DIMINUIR.AsString  := 'S';
  cdsNotaServico_ItensCALCULAR_CSLL.AsString   := 'S';
  cdsNotaServico_ItensCALCULAR_IR.AsString     := 'S';
  cdsNotaServico_ItensCALCULAR_ISSQN.AsString  := 'S';
  //20/08/2018
  if qParametros_SerUSA_CALC_PISCOFINS.AsString = 'S' then
    cdsNotaServico_ItensCALCULAR_PISCOFINS.AsString := 'S'
  else
  begin
    if cdsParametrosNFSE_RETEN_PIS.AsString = 'N' then
      cdsNotaServico_ItensCALCULAR_PISCOFINS.AsString := 'N'
    else
      cdsNotaServico_ItensCALCULAR_PISCOFINS.AsString := 'S';
  end;
end;

procedure TDMCadNotaServico.prc_Gravar_Cancelamento(NomeArquivo : String = '');
var
  vIDAux : Integer;
begin
  vIDAux := cdsNotaServicoID.AsInteger;
  cdsNotaServico.Edit;
  cdsNotaServicoCOD_CANCELAMENTO.AsInteger   := vCod_Cancelamento;
  cdsNotaServicoMOTIVO_CANCELAMENTO.AsString := vMotivoCancelamento;
  cdsNotaServicoSTATUS_RPS.AsString          := '2';
  if vDtCancelamento > 10 then
    cdsNotaServicoDTCANCELAMENTO.AsDateTime := vDtCancelamento;
  if trim(NomeArquivo) <> '' then
    cdsNotaServicoXML.LoadFromFile(NomeArquivo);
  cdsNotaServico.Post;
  cdsNotaServico.ApplyUpdates(0);

  cdsNotaServico.Locate('ID',vIDAux,[loCaseInsensitive]);

  mOSAux.EmptyDataSet;
  cdsNotaServico_Itens.First;
  while not cdsNotaServico_Itens.Eof do
  begin
    if (cdsNotaServico_ItensID_OS_SIMPLES.AsInteger > 0) and not(mOSAux.FindKey([cdsNotaServico_ItensID_OS_SIMPLES.AsInteger])) then
    begin
      mOSAux.Insert;
      mOSAuxID.AsInteger := cdsNotaServico_ItensID_OS_SIMPLES.AsInteger;
      mOSAux.Post;
    end;
    if (cdsNotaServico_ItensID_OS_SIMPLES.AsInteger > 0) then
    begin
      cdsNotaServico_Itens.Edit;
      cdsNotaServico_ItensID_OS_SIMPLES.AsInteger   := 0;
      cdsNotaServico_ItensITEM_OS_SIMPLES.AsInteger := 0;
      cdsNotaServico_Itens.Post;
      cdsNotaServico_Itens.ApplyUpdates(0);
    end;
    cdsNotaServico_Itens.Next;
  end;
  prc_Excluir_Duplicata;
  prc_Excluir_Financeiro;
  Excluir_ExtComissao;
end;

procedure TDMCadNotaServico.prc_Calcular_Item(Vlr_Desconto: Real = 0);
var
  vAux: Real;
  vTotalAux: Real;
  vAux2: Real;
begin
  if not (cdsNotaServico_Itens.State in [dsEdit,dsInsert]) then
    cdsNotaServico_Itens.Edit;
  //Valor Total
  vaux := StrToCurr(FormatCurr('0.00',cdsNotaServico_ItensVLR_TOTAL.AsFloat));
  if cdsNotaServico_ItensSOMAR_DIMINUIR.AsString = 'D' then
    vAux := StrToCurr(FormatCurr('0.00',vAux * -1));

  //aqui***********************************
  //itens (serve para Campo Bom) 25/11/2014
  if cdsFilialNOME_PROVEDOR.AsString = 'CAMPO BOM' then
    prc_Calcular_Imposto_Itens(Vlr_Desconto);
  //******

  cdsNotaServicoVLR_TOTAL.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_TOTAL.AsFloat + vAux));
  if cdsNotaServicoID_NATUREZA.AsInteger <> cdsNaturezaID.AsInteger then
    cdsNatureza.Locate('ID',cdsNotaServicoID_NATUREZA.AsInteger,[loCaseInsensitive]);
  //Base INSS
  if (cdsNotaServico_ItensCALCULAR_INSS.AsString <> 'N') and (cdsNotaServico_ItensCALCULAR_INSS.AsString <> 'n')  then
    cdsNotaServicoBASE_INSS.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_INSS.AsFloat + vAux));
  //Base ISSQN
  //03/03/2014 aqui
  //if (cdsNotaServico_ItensCALCULAR_ISSQN.AsString <> 'N') and (cdsNotaServico_ItensCALCULAR_ISSQN.AsString <> 'n') then
  //29/09/2015
  cdsNotaServico_ItensVLR_DEDUCOES.AsFloat := StrToCurr(FormatCurr('0.00',0));
  //27/09/2015
  if ((cdsNotaServico_ItensCALCULAR_ISSQN.AsString <> 'N') and (cdsNotaServico_ItensCALCULAR_ISSQN.AsString <> 'n')) or
     ((cdsNaturezaMOSTRAR_BASE_ISSQN.AsString = 'S') or (cdsNaturezaMOSTRAR_BASE_ISSQN.AsString = 'B')) then
  //if ((cdsNotaServico_ItensCALCULAR_ISSQN.AsString <> 'N') and (cdsNotaServico_ItensCALCULAR_ISSQN.AsString <> 'n')) then
  begin
    cdsNotaServicoBASE_CALCULO.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_CALCULO.AsFloat + vAux));
    cdsNotaServico_ItensBASE_CALCULO.AsFloat := StrToCurr(FormatCurr('0.00',vAux));
  end
  else
  begin
    cdsNotaServico_ItensBASE_CALCULO.AsFloat := StrToCurr(FormatCurr('0.00',0));
    //29/09/2015
    if (cdsParametrosDECISAO.AsString = 'S') and (cdsNotaServicoISS_RETIDO.AsString = '1') then
      cdsNotaServico_ItensVLR_DEDUCOES.AsFloat := StrToCurr(FormatCurr('0.00',vAux));
  end;

  if (cdsFilialNOME_PROVEDOR.AsString = 'CAMPO BOM') and (StrToCurr(FormatCurr('0.0000',cdsNotaServicoPERC_ALIQUOTA.AsFloat)) <= 0) then
  begin
    cdsNotaServicoBASE_CALCULO.AsFloat       := StrToCurr(FormatCurr('0.00',0));
    cdsNotaServico_ItensBASE_CALCULO.AsFloat := StrToCurr(FormatCurr('0.00',0));
  end;

  //Base CSLL
  if (cdsNotaServico_ItensCALCULAR_CSLL.AsString <> 'N') and (cdsNotaServico_ItensCALCULAR_CSLL.AsString <> 'n') and (cdsNotaServicoRETEM_CSLL.AsString = 'S') then
    cdsNotaServicoBASE_CSLL.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_CSLL.AsFloat + vAux));

  //Base PIS/COFINS
  if (cdsNotaServico_ItensCALCULAR_PISCOFINS.AsString <> 'N') and (cdsNotaServico_ItensCALCULAR_PISCOFINS.AsString <> 'n') then
  begin
    //20/08/2018
    if qParametros_SerUSA_CALC_PISCOFINS.AsString = 'S' then
      cdsNotaServicoBASE_PISCOFINS.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_PISCOFINS.AsFloat + vAux))
    else
    if (cdsNotaServicoRETEM_PISCOFINS.AsString = 'S') then
      cdsNotaServicoBASE_PISCOFINS.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_PISCOFINS.AsFloat + vAux));
  end;

  //Base IR
  if (cdsNotaServico_ItensCALCULAR_IR.AsString <> 'N') and (cdsNotaServico_ItensCALCULAR_IR.AsString <> 'n') and
     (StrToCurr(FormatCurr('0.00',cdsNotaServicoPERC_IR.AsFloat)) > 0) then
    cdsNotaServicoBASE_IR.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_IR.AsFloat + vAux));

  //Valor Duplicata
  cdsNotaServicoVLR_DUPLICATA.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_TOTAL.AsFloat));

  //Valor Serviço
  cdsNotaServicoVLR_SERVICOS.AsFloat  := StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_TOTAL.AsFloat));

  //Valor Dedução 29/09/2015
  cdsNotaServicoVLR_DEDUCOES.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_DEDUCOES.AsFloat + cdsNotaServico_ItensVLR_DEDUCOES.AsFloat));

  //Valor Tributo
  cdsNotaServicoVLR_TRIBUTO.AsFloat           := StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_TRIBUTO.AsFloat + cdsNotaServico_ItensVLR_TRIBUTO.AsFloat));
  cdsNotaServicoVLR_TRIBUTO_ESTADUAL.AsFloat  := StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_TRIBUTO_ESTADUAL.AsFloat + cdsNotaServico_ItensVLR_TRIBUTO_ESTADUAL.AsFloat));
  cdsNotaServicoVLR_TRIBUTO_FEDERAL.AsFloat   := StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_TRIBUTO_FEDERAL.AsFloat + cdsNotaServico_ItensVLR_TRIBUTO_FEDERAL.AsFloat));
  cdsNotaServicoVLR_TRIBUTO_MUNICIPAL.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_TRIBUTO_MUNICIPAL.AsFloat + cdsNotaServico_ItensVLR_TRIBUTO_MUNICIPAL.AsFloat));
end;

function TDMCadNotaServico.fnc_Buscar_Pessoa_Servico(ID_Cliente,
  ID_Servico: Integer): Real;
begin
  qPessoa_Servico.Close;
  qPessoa_Servico.ParamByName('CODIGO').AsInteger     := ID_Cliente;
  qPessoa_Servico.ParamByName('ID_SERVICO').AsInteger := ID_Servico;
  qPessoa_Servico.Open;
  Result := qPessoa_ServicoPERC_ISS.AsFloat;
end;

procedure TDMCadNotaServico.prc_Abrir_NotaServico_Lote(NumLote: Integer);
begin
  cdsNotaServico_Lote.Close;
  sdsNotaServico_Lote.CommandText := ctNotaServico_Lote;
  if NumLote < 0 then
    sdsNotaServico_Lote.CommandText := sdsNotaServico_Lote.CommandText + ' WHERE ID =  0 '
  else
  if NumLote > 0 then
    sdsNotaServico_Lote.CommandText := sdsNotaServico_Lote.CommandText + ' WHERE NUMLOTE = ' + IntToStr(NumLote);
  cdsNotaServico_Lote.Open;
end;

function TDMCadNotaServico.fnc_Montar_Obs_Retencao: String;
var
  vTexto1: String;
  vVlrIRAux: Real;
begin
  Result  := '';
  vTexto1 := '';
  vVlr_Retencao_Federal := 0;
  //aqui 15/10
  if (cdsFilialNOME_PROVEDOR.AsString = 'ISS.NET') then
  begin
    if (cdsNotaServico_ImpRETEM_INSS.AsString = 'S') or (cdsNotaServico_ImpRETEM_PISCOFINS.AsString = 'S') or
       (cdsNotaServico_ImpRETEM_CSLL.AsString = 'S') or (cdsNotaServico_ImpVLR_IR.AsFloat > 0)  then
    begin
      vVlrIRAux := 0;
      if cdsNotaServico_ImpRETEM_CSLL.AsString = 'S' then
        vVlrIRAux := vVlrIRAux + cdsFilialPERC_CSLL.AsFloat;
      if cdsNotaServico_ImpRETEM_PISCOFINS.AsString = 'S' then
        vVlrIRAux := vVlrIRAux + cdsFilialPERC_PIS.AsFloat + cdsFilialPERC_COFINS.AsFloat;
      if cdsNotaServico_ImpVLR_IR.AsFloat > 0 then
        vVlrIRAux := vVlrIRAux + cdsNotaServico_ImpPERC_IR.AsFloat;
      if cdsNotaServico_ImpRETEM_INSS.AsString = 'S' then
      begin
        vTexto1 := vTexto1 + FormatFloat('0.00',cdsNotaServico_ImpPERC_INSS.AsFloat) + '% INSS';
      end;
      if StrToCurr(FormatCurr('0.00',vVlrIRAux)) > 0  then
      begin
        if trim(vTexto1) <> '' then
          vTexto1 := vTexto1 + '/ ';
        vTexto1 := vTexto1 + FormatFloat('0.00',vVlrIRAux) + '% IRF (';
        if cdsNotaServico_ImpRETEM_PISCOFINS.AsString = 'S' then
          vTexto1 := vTexto1 + FormatFloat('0.00',cdsFilialPERC_COFINS.AsFloat) + '% COFINS/ '
                   + FormatFloat('0.00',cdsFilialPERC_PIS.AsFloat) + '% PIS';
        if cdsNotaServico_ImpRETEM_CSLL.AsString = 'S' then
        begin
          if cdsNotaServico_ImpRETEM_PISCOFINS.AsString = 'S' then
            vTexto1 := vTexto1 + '/ ';
          vTexto1 := vTexto1 + FormatFloat('0.00',cdsFilialPERC_CSLL.AsFloat) + '% CSLL';
        end;
        if StrToCurr(FormatCurr('0.00',cdsNotaServico_ImpVLR_IR.AsFloat)) > 0 then
        begin
          if (cdsNotaServico_ImpRETEM_PISCOFINS.AsString = 'S') or (cdsNotaServico_ImpRETEM_CSLL.AsString = 'S') then
            vTexto1 := vTexto1 + '/ ';
          vTexto1 := vTexto1 + FormatFloat('0.00',cdsNotaServico_ImpPERC_IR.AsFloat) + '% IRRF';
        end;
        vTexto1 := vTexto1 + ')';
      end;
      vTexto1 := '(Retenção: ' + vTexto1 + ')';
    end;
  end
  else
  if cdsFilialNOME_PROVEDOR.AsString = 'PORTO ALEGRE' then
  begin
    if StrToCurr(FormatCurr('0.00',cdsNotaServico_ImpVLR_INSS.AsFloat)) > 0 then
       vTexto1 := 'INSS: R$ ' + FormatFloat('0.00',cdsNotaServico_ImpVLR_INSS.AsFloat);
    if StrToCurr(FormatCurr('0.00',cdsNotaServico_ImpVLR_IR.AsFloat)) > 0 then
    begin
       if trim(vTexto1) <> '' then
         vTexto1 := vTexto1 + ' ; ';
       vTexto1 := vTexto1 + 'IRRF: R$ ' + FormatFloat('0.00',cdsNotaServico_ImpVLR_IR.AsFloat);
    end;
    if StrToCurr(FormatCurr('0.00',cdsNotaServico_ImpVLR_PIS.AsFloat)) > 0 then
    begin
       if trim(vTexto1) <> '' then
         vTexto1 := vTexto1 + ' ; ';
       vTexto1 := vTexto1 + 'PIS: R$ ' + FormatFloat('0.00',cdsNotaServico_ImpVLR_PIS.AsFloat);
    end;
    if StrToCurr(FormatCurr('0.00',cdsNotaServico_ImpVLR_COFINS.AsFloat)) > 0 then
    begin
       if trim(vTexto1) <> '' then
         vTexto1 := vTexto1 + ' ; ';
       vTexto1 := vTexto1 + 'COFINS: R$ ' + FormatFloat('0.00',cdsNotaServico_ImpVLR_COFINS.AsFloat);
    end;
    if StrToCurr(FormatCurr('0.00',cdsNotaServico_ImpVLR_CSLL.AsFloat)) > 0 then
    begin
       if trim(vTexto1) <> '' then
         vTexto1 := vTexto1 + ' ; ';
       vTexto1 := vTexto1 + 'CSLL: R$ ' + FormatFloat('0.00',cdsNotaServico_ImpVLR_CSLL.AsFloat);
    end;
    if StrToCurr(FormatCurr('0.00',cdsNotaServico_ImpVLR_OUTRAS_RETENCOES.AsFloat)) > 0 then
    begin
       if trim(vTexto1) <> '' then
         vTexto1 := vTexto1 + ' ; ';
       vTexto1 := vTexto1 + 'Outras Retenções: R$ ' + FormatFloat('0.00',cdsNotaServico_ImpVLR_OUTRAS_RETENCOES.AsFloat);
    end;
    vVlr_Retencao_Federal := cdsNotaServico_ImpVLR_INSS.AsFloat + cdsNotaServico_ImpVLR_IR.AsFloat
                           + cdsNotaServico_ImpVLR_COFINS.AsFloat + cdsNotaServico_ImpVLR_PIS.AsFloat
                           + cdsNotaServico_ImpVLR_CSLL.AsFloat + cdsNotaServico_ImpVLR_OUTRAS_RETENCOES.AsFloat;
  end
  else
  begin
    vTexto1 := 'PIS: R$ ' + FormatFloat('###,###,##0.00',cdsNotaServico_ImpVLR_PIS.AsFloat) + '; COFINS: R$ ' +
               FormatFloat('###,###,##0.00',cdsNotaServico_ImpVLR_COFINS.AsFloat) +
               '; CSLL: R$ ' + FormatFloat('###,###,##0.00',cdsNotaServico_ImpVLR_CSLL.AsFloat) + '; IRRF: R$ ' +
               FormatFloat('###,###,##0.00',cdsNotaServico_ImpVLR_IR.AsFloat) +
               '; INSS: R$ ' + FormatFloat('###,###,##0.00',cdsNotaServico_ImpVLR_INSS.AsFloat) +
               '; Outras Retenções: R$ ' + FormatFloat('###,###,##0.00',cdsNotaServico_ImpVLR_OUTRAS_RETENCOES.AsFloat);
  end;
  if trim(vTexto1) <> '' then
    Result := vTexto1;
end;

procedure TDMCadNotaServico.prc_Calcular_Impostos;
var
  vAux, vAux2: Real;
  vBaseCSRF: Real;
  vVlrCSRF: Real;
  vFlag: String;
  vPercAux: Real;
begin
  if not(qTipoProvedor.Active) or (cdsFilialID_CIDADE.AsInteger <> qTipoProvedorID.AsInteger) then
  begin
    qTipoProvedor.Close;
    qTipoProvedor.ParamByName('ID_CIDADE').AsInteger := cdsFilialID_CIDADE.AsInteger;
    qTipoProvedor.Open;
  end;

  if cdsClienteCODIGO.AsInteger <> cdsNotaServicoID_CLIENTE.AsInteger then
    cdsCliente.Locate('CODIGO',cdsNotaServicoID_CLIENTE.AsInteger,[loCaseInsensitive]);
  if cdsFilialID.AsInteger <> cdsNotaServicoFILIAL.AsInteger then
    cdsFilial.Locate('ID',cdsNotaServicoFILIAL.AsInteger,[loCaseInsensitive]);

  //Base Cálculo ISS
  //11/08/2013
  //cdsNotaServicoBASE_CALCULO.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_TOTAL.AsFloat - cdsNotaServicoVLR_DEDUCOES.AsFloat - cdsNotaServicoVLR_DESCONTO_INC.AsFloat));
  if cdsParametrosDECISAO.AsString = 'S' then
   cdsNotaServicoBASE_CALCULO.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_CALCULO.AsFloat - cdsNotaServicoVLR_DESCONTO_INC.AsFloat))
  else
   cdsNotaServicoBASE_CALCULO.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_CALCULO.AsFloat -
                                                                 cdsNotaServicoVLR_DEDUCOES.AsFloat -
                                                                 cdsNotaServicoVLR_DESCONTO_INC.AsFloat));
//aqui
  if StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_CSLL.AsFloat)) > 0 then
  begin
    if cdsParametrosDECISAO.AsString = 'S' then
      cdsNotaServicoBASE_CSLL.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_CSLL.AsFloat - cdsNotaServicoVLR_DESCONTO_INC.AsFloat))
    else
      cdsNotaServicoBASE_CSLL.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_CSLL.AsFloat - cdsNotaServicoVLR_DEDUCOES.AsFloat -
                                                                cdsNotaServicoVLR_DESCONTO_INC.AsFloat));
  end;

  if StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_INSS.AsFloat)) > 0 then
  begin
    if cdsParametrosDECISAO.AsString = 'S' then
      cdsNotaServicoBASE_INSS.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_INSS.AsFloat - cdsNotaServicoVLR_DESCONTO_INC.AsFloat))
    else
      cdsNotaServicoBASE_INSS.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_INSS.AsFloat -  cdsNotaServicoVLR_DEDUCOES.AsFloat -
                                                  cdsNotaServicoVLR_DESCONTO_INC.AsFloat));
  end;

  if StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_IR.AsFloat)) > 0 then
  begin
    if cdsParametrosDECISAO.AsString = 'S' then
      cdsNotaServicoBASE_IR.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_IR.AsFloat - cdsNotaServicoVLR_DESCONTO_INC.AsFloat))
    else
      cdsNotaServicoBASE_IR.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_IR.AsFloat - cdsNotaServicoVLR_DEDUCOES.AsFloat -
                                                cdsNotaServicoVLR_DESCONTO_INC.AsFloat));
  end;

  if StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_PISCOFINS.AsFloat)) > 0 then
  begin
    if cdsParametrosDECISAO.AsString = 'S' then
      cdsNotaServicoBASE_PISCOFINS.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_PISCOFINS.AsFloat - cdsNotaServicoVLR_DESCONTO_INC.AsFloat))
    else
      cdsNotaServicoBASE_PISCOFINS.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_PISCOFINS.AsFloat - cdsNotaServicoVLR_DEDUCOES.AsFloat -
                                                         cdsNotaServicoVLR_DESCONTO_INC.AsFloat));
 end;

  //CSRF
  vBaseCSRF := 0;
  vVlrCSRF  := 0;
  if (StrToCurr(FormatCurr('0.00',cdsFilialVLR_FATURAMENTO_MES_CSRF.AsFloat)) > 0) or (StrToCurr(FormatCurr('0.00',cdsFilialVLR_CSRF_MINIMO.AsFloat)) > 0) then
  begin
    vAux := 0;
    //IF incluido no dia 01/07/2015
    if cdsParametrosCONTROLAR_MENSAL_CSRF.AsString = 'S' then
    begin
      if cdsNotaServicoID_CLIENTE.AsInteger > 0 then
        vAux := fnc_Vlr_Fat_Mensal_Cli(cdsNotaServicoFILIAL.AsInteger,cdsNotaServicoID_CLIENTE.AsInteger,
                YearOf(cdsNotaServicoDTEMISSAO_CAD.AsDateTime),MonthOf(cdsNotaServicoDTEMISSAO_CAD.AsDateTime),cdsNotaServicoNUMRPS.AsInteger);
      if StrToCurr(FormatCurr('0.00',vAux)) >= StrToCurr(FormatCurr('0.00',cdsFilialVLR_FATURAMENTO_MES_CSRF.AsFloat)) then
        //vAux := StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_TOTAL.AsFloat))
        vAux := StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_PISCOFINS.AsFloat))
      else
      begin
        //vAux := StrToCurr(FormatCurr('0.00',vAux + cdsNotaServicoVLR_TOTAL.AsFloat));
        vAux := StrToCurr(FormatCurr('0.00',vAux + cdsNotaServicoBASE_PISCOFINS.AsFloat));
        if StrToCurr(FormatCurr('0.00',vAux)) < StrToCurr(FormatCurr('0.00',cdsFilialVLR_FATURAMENTO_MES_CSRF.AsFloat)) then
          vAux := StrToCurr(FormatCurr('0.00',0));
      end;
    end
    else
      vAux := StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_PISCOFINS.AsFloat));
    //vBaseCSRF := StrToCurr(FormatCurr('0.00',vAux));
    //cdsNotaServicoBASE_PISCOFINS.AsFloat := StrToCurr(FormatCurr('0.00',vBaseCSRF));
    //cdsNotaServicoBASE_CSLL.AsFloat      := StrToCurr(FormatCurr('0.00',vBaseCSRF));
    vBaseCSRF := StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_PISCOFINS.AsFloat));
    if StrToCurr(FormatCurr('0.00',cdsFilialVLR_CSRF_MINIMO.AsFloat)) > 0 then
    begin
      vAux2 := StrToCurr(FormatCurr('0.00',(vAux * cdsFilialPERC_CSRF.AsFloat) / 100));
      if StrToCurr(FormatCurr('0.00',vAux2)) < StrToCurr(FormatCurr('0.00',cdsFilialVLR_CSRF_MINIMO.AsFloat)) then
        vAux := 0;
    end;

    //20/08/2018   Foi incluído o IF
    if trim(qParametros_SerUSA_CALC_PISCOFINS.AsString) <> 'S' then
      cdsNotaServicoBASE_PISCOFINS.AsFloat := StrToCurr(FormatCurr('0.00',vAux));
    //**************
    cdsNotaServicoBASE_CSLL.AsFloat      := StrToCurr(FormatCurr('0.00',vAux));
    cdsNotaServicoBASE_CSRF.AsFloat      := StrToCurr(FormatCurr('0.00',vBaseCSRF));

    //20/08/2018
    if trim(qParametros_SerUSA_CALC_PISCOFINS.AsString) <> 'S' then
    begin
      if StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_PISCOFINS.AsFloat)) > 0 then
      begin
        cdsNotaServicoRETEM_CSLL.AsString      := 'S';
        cdsNotaServicoRETEM_PISCOFINS.AsString := 'S';
      end
      else
      begin
        cdsNotaServicoRETEM_CSLL.AsString      := 'N';
        cdsNotaServicoRETEM_PISCOFINS.AsString := 'N';
      end;
    end;
  end;

  //PIS
  cdsNotaServicoVLR_PIS.AsFloat := StrToCurr(FormatCurr('0.00',0));
  //if (cdsNotaServicoRETEM_PISCOFINS.AsString = 'S') and (StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_TOTAL.AsFloat)) > 0) and (StrToCurr(FormatCurr('0.00',cdsFilialPERC_PIS.AsFloat)) > 0) then
  if (cdsNotaServicoRETEM_PISCOFINS.AsString = 'S') and (StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_PISCOFINS.AsFloat)) > 0) and (StrToCurr(FormatCurr('0.00',cdsFilialPERC_PIS.AsFloat)) > 0) then
     cdsNotaServicoVLR_PIS.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_PISCOFINS.AsFloat  * cdsFilialPERC_PIS.AsFloat / 100))
  else
  //20/08/2018
  if qParametros_SerUSA_CALC_PISCOFINS.AsString = 'S' then
    if (StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_PISCOFINS.AsFloat)) > 0) and (StrToCurr(FormatCurr('0.00',cdsNotaServicoPERC_PIS.AsFloat)) > 0) then
       cdsNotaServicoVLR_PIS_CALC.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_PISCOFINS.AsFloat * cdsNotaServicoPERC_PIS.AsFloat / 100));
  //*************

  //Cofins
  cdsNotaServicoVLR_COFINS.AsFloat := StrToCurr(FormatCurr('0.00',0));
  //if (cdsNotaServicoRETEM_PISCOFINS.AsString = 'S') and (StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_TOTAL.AsFloat)) > 0) and (StrToCurr(FormatCurr('0.00',cdsFilialPERC_COFINS.AsFloat)) > 0) then
  if (cdsNotaServicoRETEM_PISCOFINS.AsString = 'S') and (StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_PISCOFINS.AsFloat)) > 0) and (StrToCurr(FormatCurr('0.00',cdsFilialPERC_COFINS.AsFloat)) > 0) then
     cdsNotaServicoVLR_COFINS.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_PISCOFINS.AsFloat  * cdsFilialPERC_COFINS.AsFloat / 100))
  else
  //20/08/2018
  if qParametros_SerUSA_CALC_PISCOFINS.AsString = 'S' then
    if (StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_PISCOFINS.AsFloat)) > 0) and (StrToCurr(FormatCurr('0.00',cdsNotaServicoPERC_COFINS.AsFloat)) > 0) then
       cdsNotaServicoVLR_COFINS_CALC.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_PISCOFINS.AsFloat  * cdsNotaServicoPERC_COFINS.AsFloat / 100));
  //****************

  //INSS
  //if StrToCurr(FormatCurr('0.0000',cdsClientePERC_REDUCAO_INSS.AsFloat)) > 0 then
  if StrToCurr(FormatCurr('0.0000',cdsNotaServicoPERC_REDUCAO_INSS.AsFloat)) > 0 then
  begin
    vAux := StrToCurr(FormatCurr('0.0000',cdsNotaServicoBASE_INSS.AsFloat * cdsNotaServicoPERC_REDUCAO_INSS.AsFloat / 100));
    vAux := StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_INSS.AsFloat - vAux));
    cdsNotaServicoBASE_INSS.AsFloat := StrToCurr(FormatCurr('0.00',vAux));
  end;
  cdsNotaServicoVLR_INSS.AsFloat := StrToCurr(FormatCurr('0.00',0));
  if (cdsNotaServicoRETEM_INSS.AsString = 'S') and (StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_INSS.AsFloat)) > 0) and (StrToCurr(FormatCurr('0.00',cdsNotaServicoPERC_INSS.AsFloat)) > 0) then
    cdsNotaServicoVLR_INSS.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_INSS.AsFloat  * cdsNotaServicoPERC_INSS.AsFloat / 100));

  //IR
  vAux := 0;
  cdsNotaServicoVLR_IR.AsFloat := StrToCurr(FormatCurr('0.00',0));
  //if (StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_TOTAL.AsFloat)) > 0) and (StrToCurr(FormatCurr('0.00',cdsNotaServicoPERC_IR.AsFloat)) > 0) then
  if (StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_IR.AsFloat)) > 0) and (StrToCurr(FormatCurr('0.00',cdsNotaServicoPERC_IR.AsFloat)) > 0) then
    vAux := StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_IR.AsFloat  * cdsNotaServicoPERC_IR.AsFloat / 100));
  if (cdsClienteORGAO_PUBLICO.AsString <> 'S') and (StrToCurr(FormatCurr('0.00',vAux)) <= StrToCurr(FormatCurr('0.00',cdsFilialVLR_IR_MINIMO.AsFloat))) then
    vAux := StrToCurr(FormatCurr('0.00',0));
  cdsNotaServicoVLR_IR.AsFloat := StrToCurr(FormatCurr('0.00',vAux));

  //CSLL
  cdsNotaServicoVLR_CSLL.AsFloat := StrToCurr(FormatCurr('0.00',0));
  //if (cdsNotaServicoRETEM_CSLL.AsString = 'S') and (StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_TOTAL.AsFloat)) > 0) and (StrToCurr(FormatCurr('0.00',cdsFilialPERC_CSLL.AsFloat)) > 0) then
  if (cdsNotaServicoRETEM_CSLL.AsString = 'S') and (StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_CSLL.AsFloat)) > 0) and (StrToCurr(FormatCurr('0.00',cdsFilialPERC_CSLL.AsFloat)) > 0) then
    cdsNotaServicoVLR_CSLL.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_CSLL.AsFloat  * cdsFilialPERC_CSLL.AsFloat / 100));

  //ISS
  //03/03/2014 aqui
  vaux     := 0;
  cdsNotaServicoVLR_ISS.AsFloat        := StrToCurr(FormatCurr('0.00',0));
  cdsNotaServicoVLR_ISS_RETIDO.AsFloat := StrToCurr(FormatCurr('0.00',0));
  if (StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_CALCULO.AsFloat)) > 0) and (StrToCurr(FormatCurr('0.00',cdsNotaServicoPERC_ALIQUOTA.AsFloat)) > 0) then
  begin
    vFlag := 'N';
    cdsNotaServico_Itens.First;
    while not cdsNotaServico_Itens.Eof do
    begin
      if cdsNotaServico_ItensCALCULAR_ISSQN.AsString = 'S' then
        vFlag := 'S';
      cdsNotaServico_Itens.Next;
    end;
    if vFlag = 'S' then
    begin
      //if (cdsFilialNOME_PROVEDOR.AsString = 'ISS.NET') then
        vAux :=  RoundTo(StrToCurr(FormatCurr('0.000',cdsNotaServicoBASE_CALCULO.AsFloat * cdsNotaServicoPERC_ALIQUOTA.AsFloat / 100)),-2);
      //else
      //  vAux :=  RoundTo(StrToCurr(FormatCurr('0.000',cdsNotaServicoBASE_CALCULO.AsFloat * cdsNotaServicoPERC_ALIQUOTA.AsFloat / 100)),-2);
      if cdsNotaServicoISS_RETIDO.AsString = '2' then
        cdsNotaServicoVLR_ISS.AsFloat := StrToCurr(FormatCurr('0.00',vAux))
      else
      if cdsNotaServicoISS_RETIDO.AsString = '1' then
      begin
        //16/07/2014
        cdsNotaServicoVLR_ISS_RETIDO.AsFloat := StrToCurr(FormatCurr('0.00',vAux));
        if qTipoProvedorRETENCAO_ISSQN.AsString = 'S' then
          cdsNotaServicoVLR_ISS.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_ISS_RETIDO.AsFloat));
      end;
    end;
  end;

  //01/07/2015
  cdsNotaServicoVLR_CSRF.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_PIS.AsFloat + cdsNotaServicoVLR_COFINS.AsFloat + cdsNotaServicoVLR_CSLL.AsFloat));
  //**************

  //CSRF
  {vBaseCSRF := 0;
  vVlrCSRF  := 0;
  if StrToCurr(FormatCurr('0.00',cdsNotaServicoPERC_CSRF.AsFloat)) > 0 then
  begin
    vAux := 0;
    if cdsNotaServicoID_CLIENTE.AsInteger > 0 then
      vAux := fnc_Vlr_Fat_Mensal_Cli(cdsNotaServicoFILIAL.AsInteger,cdsNotaServicoID_CLIENTE.AsInteger,
              YearOf(cdsNotaServicoDTEMISSAO_CAD.AsDateTime),MonthOf(cdsNotaServicoDTEMISSAO_CAD.AsDateTime));
    if StrToCurr(FormatCurr('0.00',vAux)) >= StrToCurr(FormatCurr('0.00',cdsFilialVLR_FATURAMENTO_MES_CSRF.AsFloat)) then
      vAux := StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_TOTAL.AsFloat))
    else
    begin
      vAux := StrToCurr(FormatCurr('0.00',vAux + cdsNotaServicoVLR_TOTAL.AsFloat));
      if StrToCurr(FormatCurr('0.00',vAux)) > StrToCurr(FormatCurr('0.00',cdsFilialVLR_FATURAMENTO_MES_CSRF.AsFloat)) then
        vAux := StrToCurr(FormatCurr('0.00',vAux - cdsFilialVLR_FATURAMENTO_MES_CSRF.AsFloat))
      else
        vAux := StrToCurr(FormatCurr('0.00',0));
    end;
    vBaseCSRF := StrToCurr(FormatCurr('0.00',vAux));
    if StrToCurr(FormatCurr('0.00',vBaseCSRF)) > 0 then
      vVlrCSRF := StrToCurr(FormatCurr('0.00',vBaseCSRF * cdsNotaServicoPERC_CSRF.AsFloat / 100));
  end;
  cdsNotaServicoBASE_CSRF.AsFloat := StrToCurr(FormatCurr('0.00',vBaseCSRF));
  cdsNotaServicoVLR_CSRF.AsFloat  := StrToCurr(FormatCurr('0.00',vVlrCSRF));}

  //Incluido dia 12/08/2013 conforme Carlos conversou com a Jaque
  {if StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_CSRF.AsFloat)) > 0 then
  begin
    cdsNotaServicoBASE_CSLL.AsFloat := StrToCurr(FormatCurr('0.00',0));
    cdsNotaServicoVLR_CSLL.AsFloat  := StrToCurr(FormatCurr('0.00',0));
  end;}

  //Lei 12.741/12
  if (StrToCurr(FormatCurr('0.00',cdsNotaServicoPERC_TRIBUTO.AsFloat)) > 0) and (StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_TOTAL.AsFloat)) > 0) and
     (copy(cdsParametrosLEI_TRANSPARENCIA_SERVICO.AsString,1,1) = 'P') then
    cdsNotaServicoVLR_TRIBUTO.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_TOTAL.AsFloat * cdsNotaServicoPERC_TRIBUTO.AsFloat / 100));

  //if (cdsParametrosTIPO_LEI_TRANSPARENCIA.AsString = 'I') and (copy(cdsParametrosLEI_TRANSPARENCIA_SERVICO.AsString,1,1) = 'I') then
  if (cdsNotaServicoVLR_TOTAL.AsFloat > 0) and
     ((cdsNotaServico_ItensSOMAR_DIMINUIR.AsString = 'S') or (cdsNotaServico_ItensSOMAR_DIMINUIR.AsString = 's') or
     (cdsNotaServico_ItensSOMAR_DIMINUIR.AsString = '+')) then
  begin
    //if vPerc_Trib_2 then
      vPercAux := StrToCurr(FormatCurr('0.00',((cdsNotaServicoVLR_TRIBUTO.AsFloat / cdsNotaServicoVLR_TOTAL.AsFloat) * 100)));
    //else
    //  vPercAux := vPerc_Trib_Maior;
    //if (cdsParametrosLEI_TRANSPARENCIA_PERC_ADIC.AsString = '1')  then
    //  vPercAux := vPerc_Trib_Maior;
    cdsNotaServicoPERC_TRIBUTO.AsFloat := StrToCurr(FormatCurr('0.00',vPercAux));
  end;

  //Líquido
  cdsNotaServicoVLR_LIQUIDO_NFSE.AsFloat := cdsNotaServicoVLR_TOTAL.AsFloat;
  if cdsNotaServicoDIMINUIR_RETENCAO.AsString = 'S' then
  begin
    if cdsNotaServicoRETEM_PISCOFINS.AsString = 'S' then
      cdsNotaServicoVLR_LIQUIDO_NFSE.AsFloat := cdsNotaServicoVLR_LIQUIDO_NFSE.AsFloat - cdsNotaServicoVLR_PIS.AsFloat - cdsNotaServicoVLR_COFINS.AsFloat;
    if cdsNotaServicoRETEM_INSS.AsString = 'S' then
      cdsNotaServicoVLR_LIQUIDO_NFSE.AsFloat := cdsNotaServicoVLR_LIQUIDO_NFSE.AsFloat - cdsNotaServicoVLR_INSS.AsFloat;
    if StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_IR.AsFloat)) > 0 then
      cdsNotaServicoVLR_LIQUIDO_NFSE.AsFloat := cdsNotaServicoVLR_LIQUIDO_NFSE.AsFloat - cdsNotaServicoVLR_IR.AsFloat;
    if cdsNotaServicoRETEM_CSLL.AsString = 'S' then
      cdsNotaServicoVLR_LIQUIDO_NFSE.AsFloat := cdsNotaServicoVLR_LIQUIDO_NFSE.AsFloat - cdsNotaServicoVLR_CSLL.AsFloat;
    if cdsNotaServicoISS_RETIDO.AsString = '1' then
      cdsNotaServicoVLR_LIQUIDO_NFSE.AsFloat := cdsNotaServicoVLR_LIQUIDO_NFSE.AsFloat - cdsNotaServicoVLR_ISS_RETIDO.AsFloat;
    //if StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_CSRF.AsFloat)) > 0 then
    //  cdsNotaServicoVLR_LIQUIDO_NFSE.AsFloat := cdsNotaServicoVLR_LIQUIDO_NFSE.AsFloat - cdsNotaServicoVLR_CSRF.AsFloat;
    if StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_LIQUIDO_NFSE.AsFloat)) <= 0 then
      cdsNotaServicoVLR_LIQUIDO_NFSE.AsFloat := StrToCurr(FormatCurr('0.00',0));
  end;
  cdsNotaServicoVLR_DUPLICATA.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_LIQUIDO_NFSE.AsFloat));
end;

procedure TDMCadNotaServico.prc_Recalcular;
var
  vRetem_PISCofins: String;
  vAuxDesconto: Real;
  vAux: Real;
begin
  if trim(qParametros_SerUSA_CALC_PISCOFINS.AsString) <> 'S' then
    vRetem_PISCofins := 'N';
  prc_Limpar_Totais;
  //20/08/2018
  if trim(qParametros_SerUSA_CALC_PISCOFINS.AsString) <> 'S' then
  begin
    cdsNotaServico_Itens.First;
    while not cdsNotaServico_Itens.Eof do
    begin
      if (cdsNotaServico_ItensCALCULAR_PISCOFINS.AsString <> 'n') and (cdsNotaServico_ItensCALCULAR_PISCOFINS.AsString <> 'N') then
        vRetem_PISCofins := 'S';
      cdsNotaServico_Itens.Next;
    end;
    if cdsNotaServico.State in [dsEdit,dsInsert] then
      cdsNotaServicoRETEM_PISCOFINS.AsString := vRetem_PISCofins;
  end;
  //**************
  vAuxDesconto := StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_DESCONTO_INC.AsFloat));
  cdsNotaServico_Itens.First;
  while not cdsNotaServico_Itens.Eof do
  begin
    if (cdsNotaServico_ItensCALCULAR_PISCOFINS.AsString <> 'n') and (cdsNotaServico_ItensCALCULAR_PISCOFINS.AsString <> 'N') then
      vRetem_PISCofins := 'S';
    {if (StrToCurr(FormatCurr('0.00',cdsNotaServico_ItensPERC_TRIBUTO.AsFloat)) > 0) and (copy(cdsParametrosLEI_TRANSPARENCIA_SERVICO.AsString,1,1) = 'I') and
       (cdsNotaServico_ItensSOMAR_DIMINUIR.AsString = 'S') then
    begin
      cdsNotaServico_Itens.Edit;
      cdsNotaServico_ItensVLR_TRIBUTO.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServico_ItensVLR_TOTAL.AsFloat * cdsNotaServico_ItensPERC_TRIBUTO.AsFloat / 100));
      cdsNotaServico_Itens.Post;
    end;}
    cdsNotaServico_Itens.Edit;
    if (copy(cdsParametrosLEI_TRANSPARENCIA_SERVICO.AsString,1,1) <> 'I') and (cdsNotaServico_ItensSOMAR_DIMINUIR.AsString = 'S') then
    begin
      cdsNotaServico_ItensPERC_TRIBUTO_ESTADUAL.AsFloat  := StrToCurr(FormatCurr('0.00',cdsNotaServicoPERC_TRIBUTO_ESTADUAL.AsFloat));
      cdsNotaServico_ItensPERC_TRIBUTO_FEDERAL.AsFloat   := StrToCurr(FormatCurr('0.00',cdsNotaServicoPERC_TRIBUTO_FEDERAL.AsFloat));
      cdsNotaServico_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServicoPERC_TRIBUTO_MUNICIPAL.AsFloat));
    end;

    if (cdsNotaServico_ItensSOMAR_DIMINUIR.AsString = 'S') then
    begin
      if StrToCurr(FormatCurr('0.00',cdsNotaServico_ItensPERC_TRIBUTO_ESTADUAL.AsFloat)) > 0 then
        cdsNotaServico_ItensVLR_TRIBUTO_ESTADUAL.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServico_ItensVLR_TOTAL.AsFloat * cdsNotaServico_ItensPERC_TRIBUTO_ESTADUAL.AsFloat / 100))
      else
        cdsNotaServico_ItensVLR_TRIBUTO_ESTADUAL.AsFloat := StrToCurr(FormatCurr('0.00',0));
      if StrToCurr(FormatCurr('0.00',cdsNotaServico_ItensPERC_TRIBUTO_FEDERAL.AsFloat)) > 0 then
        cdsNotaServico_ItensVLR_TRIBUTO_FEDERAL.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServico_ItensVLR_TOTAL.AsFloat * cdsNotaServico_ItensPERC_TRIBUTO_FEDERAL.AsFloat / 100))
      else
        cdsNotaServico_ItensVLR_TRIBUTO_FEDERAL.AsFloat := StrToCurr(FormatCurr('0.00',0));
      if StrToCurr(FormatCurr('0.00',cdsNotaServico_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat)) > 0 then
        cdsNotaServico_ItensVLR_TRIBUTO_MUNICIPAL.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServico_ItensVLR_TOTAL.AsFloat * cdsNotaServico_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat / 100))
      else
        cdsNotaServico_ItensVLR_TRIBUTO_MUNICIPAL.AsFloat := StrToCurr(FormatCurr('0.00',0));
      cdsNotaServico_ItensVLR_TRIBUTO.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServico_ItensVLR_TRIBUTO_ESTADUAL.AsFloat + cdsNotaServico_ItensVLR_TRIBUTO_FEDERAL.AsFloat
                                               + cdsNotaServico_ItensVLR_TRIBUTO_MUNICIPAL.AsFloat));
      if StrToCurr(FormatCurr('0.00',cdsNotaServico_ItensVLR_TRIBUTO.AsFloat)) > 0 then
        cdsNotaServico_ItensPERC_TRIBUTO.AsFloat := StrToCurr(FormatCurr('0.00',(cdsNotaServico_ItensVLR_TRIBUTO.AsFloat / cdsNotaServico_ItensVLR_TOTAL.AsFloat) * 100))
      else
        cdsNotaServico_ItensPERC_TRIBUTO.AsFloat := StrToCurr(FormatCurr('0.00',0));
      cdsNotaServico_Itens.Post;
    end;

    vAux := 0;
    if (cdsFilialNOME_PROVEDOR.AsString = 'CAMPO BOM') and (StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_DESCONTO_INC.AsFloat)) > 0) then
    begin
      vAux := StrToCurr(FormatCurr('0.00',cdsNotaServico_ItensVLR_TOTAL.AsFloat * cdsNotaServicoVLR_DESCONTO_INC.AsFloat / cdsNotaServicoVLR_TOTAL.AsFloat));
    end;
    prc_Calcular_Item(vAux);
    cdsNotaServico_Itens.Next;
  end;
end;

procedure TDMCadNotaServico.prc_Limpar_Totais;
begin
  cdsNotaServicoVLR_COFINS.AsFloat       := 0;
  cdsNotaServicoVLR_CSLL.AsFloat         := 0;
  cdsNotaServicoVLR_DUPLICATA.AsFloat    := 0;
  cdsNotaServicoVLR_ENTRADA.AsFloat      := 0;
  cdsNotaServicoVLR_INSS.AsFloat         := 0;
  cdsNotaServicoVLR_IR.AsFloat           := 0;
  cdsNotaServicoVLR_ISS.AsFloat          := 0;
  cdsNotaServicoVLR_ISS_RETIDO.AsFloat   := 0;
  cdsNotaServicoVLR_LIQUIDO_NFSE.AsFloat := 0;
  cdsNotaServicoVLR_PIS.AsFloat          := 0;
  cdsNotaServicoVLR_SERVICOS.AsFloat     := 0;
  cdsNotaServicoVLR_TOTAL.AsFloat        := 0;
  cdsNotaServicoBASE_CALCULO.AsFloat     := 0;
  cdsNotaServicoBASE_INSS.AsFloat        := 0;
  cdsNotaServicoBASE_CSRF.AsFloat        := 0;
  cdsNotaServicoBASE_IR.AsFloat          := 0;
  cdsNotaServicoBASE_PISCOFINS.AsFloat   := 0;
  cdsNotaServicoBASE_CSLL.AsFloat        := 0;
  cdsNotaServicoVLR_CSRF.AsFloat         := 0;
  cdsNotaServicoVLR_TRIBUTO.AsFloat      := 0;
  cdsNotaServicoVLR_TRIBUTO_ESTADUAL.AsFloat  := 0;
  cdsNotaServicoVLR_TRIBUTO_FEDERAL.AsFloat   := 0;
  cdsNotaServicoVLR_TRIBUTO_MUNICIPAL.AsFloat := 0;
  cdsNotaServicoVLR_DEDUCOES.AsFloat          := 0;
  cdsNotaServicoVLR_PIS_CALC.AsFloat          := 0;
  cdsNotaServicoVLR_COFINS_CALC.AsFloat       := 0;
end;

procedure TDMCadNotaServico.cdsNotaServico_ItensBeforePost(
  DataSet: TDataSet);
begin
  if (cdsNotaServico_ItensSOMAR_DIMINUIR.AsString = 'D') or (cdsNotaServico_ItensSOMAR_DIMINUIR.AsString = 'd') or (cdsNotaServico_ItensSOMAR_DIMINUIR.AsString = '-') then
    cdsNotaServico_ItensSOMAR_DIMINUIR.AsString := 'D'
  else
    cdsNotaServico_ItensSOMAR_DIMINUIR.AsString := 'S';
  if (cdsNotaServico_ItensCALCULAR_INSS.AsString = 'N') or (cdsNotaServico_ItensCALCULAR_INSS.AsString = 'n') or (cdsNotaServico_ItensCALCULAR_INSS.AsString = '-') then
    cdsNotaServico_ItensCALCULAR_INSS.AsString := 'N'
  else
    cdsNotaServico_ItensCALCULAR_INSS.AsString := 'S';
  if (cdsNotaServico_ItensCALCULAR_ISSQN.AsString = 'N') or (cdsNotaServico_ItensCALCULAR_ISSQN.AsString = 'n') or (cdsNotaServico_ItensCALCULAR_ISSQN.AsString = '-') then
    cdsNotaServico_ItensCALCULAR_ISSQN.AsString := 'N'
  else
    cdsNotaServico_ItensCALCULAR_ISSQN.AsString := 'S';
  if (cdsNotaServico_ItensCALCULAR_CSLL.AsString = 'N') or (cdsNotaServico_ItensCALCULAR_CSLL.AsString = 'n') or (cdsNotaServico_ItensCALCULAR_CSLL.AsString = '-') then
    cdsNotaServico_ItensCALCULAR_CSLL.AsString := 'N'
  else
    cdsNotaServico_ItensCALCULAR_CSLL.AsString := 'S';
  if (cdsNotaServico_ItensCALCULAR_IR.AsString = 'N') or (cdsNotaServico_ItensCALCULAR_IR.AsString = 'n') or (cdsNotaServico_ItensCALCULAR_IR.AsString = '-') then
    cdsNotaServico_ItensCALCULAR_IR.AsString := 'N'
  else
    cdsNotaServico_ItensCALCULAR_IR.AsString := 'S';
  if (cdsNotaServico_ItensCALCULAR_PISCOFINS.AsString = 'N') or (cdsNotaServico_ItensCALCULAR_PISCOFINS.AsString = 'n') or (cdsNotaServico_ItensCALCULAR_PISCOFINS.AsString = '-') then
    cdsNotaServico_ItensCALCULAR_PISCOFINS.AsString := 'N'
  else
    cdsNotaServico_ItensCALCULAR_PISCOFINS.AsString := 'S';
end;

function TDMCadNotaServico.fnc_Vlr_Fat_Mensal_Cli(Filial, ID_Cliente,Ano, Mes, NumRps: Integer): Real;
var
  vCNPJ_CPF: String;
  vNumRps: Integer;
begin
  Result := 0;
  if cdsClienteCODIGO.AsInteger <> ID_Cliente then
    cdsCliente.Locate('CODIGO',ID_Cliente,[loCaseInsensitive]);
  if cdsClientePESSOA.AsString = 'J' then
    vCNPJ_CPF := copy(cdsClienteCNPJ_CPF.AsString,1,10)
  else
    vCNPJ_CPF := cdsClienteCNPJ_CPF.AsString;
  qFat_Mensal_Cli.Close;
  qFat_Mensal_Cli.ParamByName('FILIAL').AsInteger  := Filial;
  vCNPJ_CPF := vCNPJ_CPF + '%';
  qFat_Mensal_Cli.ParamByName('CNPJ_CPF').AsString := vCNPJ_CPF;
  qFat_Mensal_Cli.ParamByName('ANO').AsInteger     := Ano;
  qFat_Mensal_Cli.ParamByName('MES').AsInteger     := Mes;
  if NumRps <= 0 then
    NumRps := 9999999;
  qFat_Mensal_Cli.ParamByName('NUMRPS').AsInteger  := NumRps;
  qFat_Mensal_Cli.Open;

  Result := qFat_Mensal_CliVLR_SERVICO.AsFloat;
end;

procedure TDMCadNotaServico.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadNotaServico.prc_Excluir_Movimento;
var
  sds: TSQLDataSet;
begin
  if cdsNotaServicoID.AsInteger <= 0 then
    exit;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;

  try
    sds.CommandText := 'DELETE FROM MOVIMENTO WHERE ID_NOTASERVICO = ' + IntToStr(cdsNotaServicoID.AsInteger);
    sds.ExecSQL;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TDMCadNotaServico.cdsDuplicataBeforePost(DataSet: TDataSet);
begin
  if cdsDuplicataID_CONTA_ORCAMENTO.AsInteger <= 0 then
    cdsDuplicataID_CONTA_ORCAMENTO.Clear;
end;

procedure TDMCadNotaServico.Excluir_ExtComissao;
var
  sds: TSQLDataSet;
begin
  if cdsNotaServicoID.AsInteger <= 0 then
    exit;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText   := 'DELETE FROM EXTCOMISSAO WHERE ID_NOTA_SERVICO = ' + IntToStr(cdsNotaServicoID.AsInteger);
  sds.ExecSQL;

  FreeAndNil(sds);
end;

procedure TDMCadNotaServico.prc_Gravar_Comissao(Prazo: String);
var
  fDMCadExtComissao: TDMCadExtComissao;
  vAux: Integer;
  vVlrBase: Real;
  vID_Duplicata: Integer;
  vItem_Hist: Integer;
  vID_NotaAux: Integer;
  vParcela: Integer;
begin
  if (StrToCurr(FormatCurr('0.00',cdsNotaServicoPERC_COMISSAO.AsFloat)) <= 0) and (StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_DUPLICATA.AsFloat)) > 0) then
    exit;
  if (cdsNotaServicoID_VENDEDOR.AsInteger <= 0) or (cdsNotaServicoID_VENDEDOR.IsNull) then
    exit;
  if not cdsVendedor.Locate('CODIGO',cdsNotaServicoID_VENDEDOR.AsInteger,[loCaseInsensitive]) then
    exit;
  if ((cdsVendedorTIPO_COMISSAO.AsString <> 'N') and (Prazo = '')) then
    exit;
  if ((cdsVendedorTIPO_COMISSAO.AsString = 'N') and (Prazo <> '')) then
    exit;
  vID_NotaAux   := 0;
  vParcela      := 0;
  vID_Duplicata := 0;
  vVlrBase      := 0;
  vItem_Hist    := 0;
  if cdsVendedorTIPO_COMISSAO.AsString = 'N' then
  begin
    vID_NotaAux := cdsNotaServicoID.AsInteger;
    vItem_Hist  := 0;
    vVlrBase    := cdsNotaServicoVLR_DUPLICATA.AsFloat;
  end
  else
  if (cdsVendedorTIPO_COMISSAO.AsString = 'D') then
  begin
    vID_Duplicata := cdsDuplicataID.AsInteger;
    vParcela      := cdsDuplicataPARCELA.AsInteger;
    vItem_Hist    := cdsDuplicata_HistITEM.AsInteger;
    vVlrBase      := cdsDuplicataVLR_PARCELA.AsFloat;
  end;

  fDMCadExtComissao := TDMCadExtComissao.Create(Self);

  try
    vAux := fDMCadExtComissao.fnc_Mover_Comissao('ENT',cdsNotaServicoSERIE.AsString,'',0,cdsNotaServicoDTEMISSAO_CAD.AsDateTime,
                                                   cdsNotaServicoFILIAL.AsInteger,cdsNotaServicoID_VENDEDOR.AsInteger,
                                                   0,vID_Duplicata,vItem_Hist,cdsNotaServicoNUMNOTA.AsInteger,
                                                   cdsNotaServicoID_CLIENTE.AsInteger,vParcela,vID_NotaAux,
                                                   cdsNotaServicoID.AsInteger,0,
                                                   StrToCurr(FormatCurr('0.00',vVlrBase)),0,
                                                   StrToCurr(FormatCurr('0.00',cdsNotaServicoPERC_COMISSAO.AsFloat)),0,0);
  except
    raise;

  end;

  FreeAndNil(fDMCadExtComissao);
end;

{function TDMCadNotaServico.fnc_Busca_IBPT(Codigo_NBS: String): Real;
begin
  Result := 0;
  qIBPT.Close;
  qIBPT.ParamByName('CODIGO').AsString := Codigo_NBS;
  qIBPT.Open;
  if not qIBPT.IsEmpty then
    Result := qIBPTPERC_NACIONAL.AsFloat;
  qIBPT.Close;
end;}

function TDMCadNotaServico.fnc_Possui_Avisos: Boolean;
begin
  vMSGNotaServico := '';
  if cdsNotaServicoID_NATUREZA.AsInteger <> cdsNaturezaID.AsInteger then
    cdsNatureza.Locate('ID',cdsNotaServicoID_NATUREZA.AsInteger,[loCaseInsensitive]);
  //25/09/2015 foi incluido para NH também
  if (cdsNaturezaID_PROVEDOR.AsInteger <> 16) and (cdsNaturezaID_PROVEDOR.AsInteger <> 10)  then //Provedor Thema e ISS.NET São Leopoldo e Novo Hamburgo
  begin
    Result := False;
    exit;
  end;
  Result := True;
  if cdsNaturezaMOSTRAR_BASE_ISSQN.AsString = 'S' then
  begin
    if (StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_CALCULO.AsFloat)) < 0) or (StrToCurr(FormatCurr('0.00',cdsNotaServicoPERC_ALIQUOTA.AsFloat)) < 0) then
      vMSGNotaServico := vMSGNotaServico + #13 + '*** Esta natureza requer Valor na Base de Cálculo do ISSQN e % do ISSQN!';
    if (StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_ISS.AsFloat)) > 0) or (StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_ISS_RETIDO.AsFloat)) > 0) then
      vMSGNotaServico := vMSGNotaServico + #13 + '*** Esta natureza não pode ter valor de ISSQN (somente base e % do ISSQN)!';
  end
  else
  if cdsNaturezaMOSTRAR_BASE_ISSQN.AsString = 'B' then
  begin
    if (StrToCurr(FormatCurr('0.00',cdsNotaServicoBASE_CALCULO.AsFloat)) < 0) then 
      vMSGNotaServico := vMSGNotaServico + #13 + '*** Esta natureza requer Valor na Base de Cálculo do ISSQN!';
    if (StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_ISS.AsFloat)) > 0) or (StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_ISS_RETIDO.AsFloat)) > 0) then
      vMSGNotaServico := vMSGNotaServico + #13 + '*** Esta natureza não pode ter valor de ISSQN (somente bas)!';
  end;
  if (cdsNaturezaRETER_ISSQN.AsString = 'S') and ((StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_ISS_RETIDO.AsFloat)) <= 0) or
    (cdsNotaServicoISS_RETIDO.AsString = '2')) then
    vMSGNotaServico := vMSGNotaServico + #13 + '*** Esta natureza está marcada como Retém ISSQN, ' + #13
                     + ', mas o campo <ISS RETIDO> não esta marcado ou o campo <VLR.ISS RETIDO> esta zerado!';
  if (cdsNaturezaRETER_ISSQN.AsString <> 'S') and ((StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_ISS_RETIDO.AsFloat)) > 0) or
    (cdsNotaServicoISS_RETIDO.AsString = '1')) then
    vMSGNotaServico := vMSGNotaServico + #13 + '*** Esta natureza está marcada como não Retém ISSQN, ' + #13
                     + ', mas o campo <ISS RETIDO> está marcado ou o campo <VLR.ISS RETIDO> está com valor!';
  if trim(vMSGNotaServico) <> '' then
    exit;
  Result := False;
end;

procedure TDMCadNotaServico.cdsDuplicataReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  if trim(e.Message) <> '' then
    MessageDlg(e.Message + #13 + #13 + '*** Contas a Receber não gravado!', mtError, [mbOk], 0);
end;

procedure TDMCadNotaServico.cdsDuplicata_HistReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  if trim(e.Message) <> '' then
    MessageDlg(e.Message + #13 + #13 + '*** Contas a Receber (Histórico) não gravado!', mtError, [mbOk], 0);
end;

function TDMCadNotaServico.fnc_Recibo_Gerado: Boolean;
var
  sds: TSQLDataSet;
begin
  Result := False;
  if cdsNotaServicoNUM_CONTRATO.AsInteger <= 0 then
    exit;

  try
    sds := TSQLDataSet.Create(nil);
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;

    sds.Close;
    sds.CommandText   := 'SELECT NUM_RECIBO FROM RECIBO '
                       + ' WHERE NUM_CONTRATO = ' + cdsNotaServicoNUM_CONTRATO.AsString
                       + ' AND ANO_CONTRATO = ' + cdsNotaServicoANO_CONTRATO.AsString
                       + ' AND ANO_REF = ' + cdsNotaServicoANO_REF.AsString
                       + ' AND MES_REF = ' + cdsNotaServicoMES_REF.AsString;
    sds.Open;
    if not(sds.IsEmpty) or (sds.FieldByName('NUM_RECIBO').AsInteger > 0) then
      Result := True;
    sds.Close;
  finally
    sds.Close;
    FreeAndNil(sds);
  end;

end;

procedure TDMCadNotaServico.prc_Calcular_Imposto_Itens(Vlr_Desconto: Real = 0);
var
  vTotalAux: Real;
  vAux2: Real;
begin
  if not(cdsNotaServico_Itens.State in [dsEdit,dsInsert]) then
    cdsNotaServico_Itens.Edit;
  cdsNotaServico_ItensVLR_DESCONTO_INC.AsFloat := StrToCurr(FormatCurr('0.00',Vlr_Desconto));
  vTotalAux := StrToCurr(FormatCurr('0.00',cdsNotaServico_ItensVLR_TOTAL.AsFloat - cdsNotaServico_ItensVLR_DESCONTO_INC.AsFloat));
  if ((cdsNotaServico_ItensCALCULAR_ISSQN.AsString <> 'N') and (cdsNotaServico_ItensCALCULAR_ISSQN.AsString <> 'n')) and
     (StrToCurr(FormatCurr('0.0000',cdsNotaServicoPERC_ALIQUOTA.AsFloat)) > 0)  then
    cdsNotaServico_ItensBASE_CALCULO.AsFloat := StrToCurr(FormatCurr('0.00',vTotalAux))
  else
    cdsNotaServico_ItensBASE_CALCULO.AsFloat := StrToCurr(FormatCurr('0.00',0));

  //PIS
  //20/08/2018
  cdsNotaServico_ItensVLR_PIS.AsFloat := StrToCurr(FormatCurr('0.00',0));
  if (cdsNotaServico_ItensCALCULAR_PISCOFINS.AsString <> 'N') and (cdsNotaServico_ItensCALCULAR_PISCOFINS.AsString <> 'n') then
  begin
    if cdsNotaServicoRETEM_PISCOFINS.AsString = 'S' then
      cdsNotaServico_ItensVLR_PIS.AsFloat := StrToCurr(FormatCurr('0.00', vTotalAux * cdsFilialPERC_PIS.AsFloat / 100))
    else
    if qParametros_SerUSA_CALC_PISCOFINS.AsString = 'S' then
      cdsNotaServico_ItensVLR_PIS_CALC.AsFloat := StrToCurr(FormatCurr('0.00', vTotalAux * cdsNotaServicoPERC_PIS.AsFloat / 100));
  end;

  //Cofins
  cdsNotaServico_ItensVLR_COFINS.AsFloat := StrToCurr(FormatCurr('0.00',0));
  //if (cdsNotaServicoRETEM_PISCOFINS.AsString = 'S') and (StrToCurr(FormatCurr('0.00',cdsNotaServicoVLR_TOTAL.AsFloat)) > 0) and (StrToCurr(FormatCurr('0.00',cdsFilialPERC_COFINS.AsFloat)) > 0) then
  //20/08/2018
  if (cdsNotaServico_ItensCALCULAR_PISCOFINS.AsString <> 'N') and (cdsNotaServico_ItensCALCULAR_PISCOFINS.AsString <> 'n') then
  begin
    if cdsNotaServicoRETEM_PISCOFINS.AsString = 'S' then
      cdsNotaServico_ItensVLR_COFINS.AsFloat := StrToCurr(FormatCurr('0.00',vTotalAux * cdsFilialPERC_COFINS.AsFloat / 100))
    else
    if qParametros_SerUSA_CALC_PISCOFINS.AsString = 'S' then
      cdsNotaServico_ItensVLR_COFINS_CALC.AsFloat := StrToCurr(FormatCurr('0.00',vTotalAux * cdsNotaServicoPERC_COFINS.AsFloat / 100));
  end;

  //INSS
  //if StrToCurr(FormatCurr('0.0000',cdsClientePERC_REDUCAO_INSS.AsFloat)) > 0 then
  if StrToCurr(FormatCurr('0.0000',cdsNotaServicoPERC_REDUCAO_INSS.AsFloat)) > 0 then
  begin
    vAux2 := StrToCurr(FormatCurr('0.0000',vTotalAux * cdsNotaServicoPERC_REDUCAO_INSS.AsFloat / 100));
    vAux2 := StrToCurr(FormatCurr('0.00',vTotalAux - vAux2));
    cdsNotaServico_ItensBASE_INSS.AsFloat := StrToCurr(FormatCurr('0.00',vAux2));
  end
  else
    cdsNotaServico_ItensBASE_INSS.AsFloat := StrToCurr(FormatCurr('0.00',vTotalAux));
  cdsNotaServico_ItensVLR_INSS.AsFloat := StrToCurr(FormatCurr('0.00',0));
  if (cdsNotaServico_ItensCALCULAR_INSS.AsString <> 'N') and (cdsNotaServico_ItensCALCULAR_INSS.AsString <> 'n') and
     (cdsNotaServicoRETEM_INSS.AsString = 'S') and (StrToCurr(FormatCurr('0.00',cdsNotaServicoPERC_INSS.AsFloat)) > 0)  then
    cdsNotaServico_ItensVLR_INSS.AsFloat := StrToCurr(FormatCurr('0.00',cdsNotaServico_ItensBASE_INSS.AsFloat * cdsNotaServicoPERC_INSS.AsFloat / 100))
  else
    cdsNotaServico_ItensBASE_INSS.AsFloat := StrToCurr(FormatCurr('0.00',0));

  //IR
  cdsNotaServico_ItensVLR_IR.AsFloat := StrToCurr(FormatCurr('0.00',0));
  if (StrToCurr(FormatCurr('0.00',cdsNotaServicoPERC_IR.AsFloat)) > 0) then
  begin
    vAux2 := StrToCurr(FormatCurr('0.00',vTotalAux * cdsNotaServicoPERC_IR.AsFloat / 100));
    if (cdsClienteORGAO_PUBLICO.AsString <> 'S') and (StrToCurr(FormatCurr('0.00',vAux2)) <= StrToCurr(FormatCurr('0.00',cdsFilialVLR_IR_MINIMO.AsFloat))) then
      vAux2 := StrToCurr(FormatCurr('0.00',0));
    cdsNotaServico_ItensVLR_IR.AsFloat := StrToCurr(FormatCurr('0.00',vAux2));
  end;  

  //CSLL
  cdsNotaServico_ItensVLR_CSLL.AsFloat := StrToCurr(FormatCurr('0.00',0));
  if (cdsNotaServico_ItensCALCULAR_CSLL.AsString <> 'N') and (cdsNotaServico_ItensCALCULAR_CSLL.AsString <> 'n') and (cdsNotaServicoRETEM_CSLL.AsString = 'S') then
    cdsNotaServico_ItensVLR_CSLL.AsFloat := StrToCurr(FormatCurr('0.00',vTotalAux * cdsFilialPERC_CSLL.AsFloat / 100));

  //ISS
  cdsNotaServico_ItensVLR_ISS.AsFloat        := StrToCurr(FormatCurr('0.00',0));
  cdsNotaServico_ItensVLR_ISS_RETIDO.AsFloat := StrToCurr(FormatCurr('0.00',0));
  if (StrToCurr(FormatCurr('0.00',cdsNotaServico_ItensBASE_CALCULO.AsFloat)) > 0) and (StrToCurr(FormatCurr('0.00',cdsNotaServicoPERC_ALIQUOTA.AsFloat)) > 0) then
  begin
    vAux2 := StrToCurr(FormatCurr('0.00',cdsNotaServico_ItensBASE_CALCULO.AsFloat * cdsNotaServicoPERC_ALIQUOTA.AsFloat / 100));
    if cdsNotaServicoISS_RETIDO.AsString = '2' then
      cdsNotaServico_ItensVLR_ISS.AsFloat := StrToCurr(FormatCurr('0.00',vAux2))
    else
    if cdsNotaServicoISS_RETIDO.AsString = '1' then
      cdsNotaServico_ItensVLR_ISS_RETIDO.AsFloat := StrToCurr(FormatCurr('0.00',vAux2));
  end;

  //Líquido
  cdsNotaServico_ItensVLR_LIQUIDO_NFSE.AsFloat := StrToCurr(FormatCurr('0.00',vTotalAux));
  if cdsNotaServicoDIMINUIR_RETENCAO.AsString = 'S' then
  begin
    if cdsNotaServicoRETEM_PISCOFINS.AsString = 'S' then
      cdsNotaServico_ItensVLR_LIQUIDO_NFSE.AsFloat := cdsNotaServico_ItensVLR_LIQUIDO_NFSE.AsFloat - cdsNotaServico_ItensVLR_PIS.AsFloat - cdsNotaServico_ItensVLR_COFINS.AsFloat;
    if cdsNotaServicoRETEM_INSS.AsString = 'S' then
      cdsNotaServico_ItensVLR_LIQUIDO_NFSE.AsFloat := cdsNotaServico_ItensVLR_LIQUIDO_NFSE.AsFloat - cdsNotaServico_ItensVLR_INSS.AsFloat;
    if StrToCurr(FormatCurr('0.00',cdsNotaServico_ItensVLR_IR.AsFloat)) > 0 then
      cdsNotaServico_ItensVLR_LIQUIDO_NFSE.AsFloat := cdsNotaServico_ItensVLR_LIQUIDO_NFSE.AsFloat - cdsNotaServico_ItensVLR_IR.AsFloat;
    if cdsNotaServicoRETEM_CSLL.AsString = 'S' then
      cdsNotaServico_ItensVLR_LIQUIDO_NFSE.AsFloat := cdsNotaServico_ItensVLR_LIQUIDO_NFSE.AsFloat - cdsNotaServico_ItensVLR_CSLL.AsFloat;
    if cdsNotaServicoISS_RETIDO.AsString = '1' then
      cdsNotaServico_ItensVLR_LIQUIDO_NFSE.AsFloat := cdsNotaServico_ItensVLR_LIQUIDO_NFSE.AsFloat - cdsNotaServico_ItensVLR_ISS_RETIDO.AsFloat;
    if StrToCurr(FormatCurr('0.00',cdsNotaServico_ItensVLR_LIQUIDO_NFSE.AsFloat)) <= 0 then
      cdsNotaServico_ItensVLR_LIQUIDO_NFSE.AsFloat := StrToCurr(FormatCurr('0.00',0));
  end;
  //**************aqui
end;

procedure TDMCadNotaServico.prc_Busca_IBPT(Codigo_NBS, Tipo: String);
begin
  if (cdsParametrosTIPO_LEI_TRANSPARENCIA.AsString <> 'I') and (cdsParametrosTIPO_LEI_TRANSPARENCIA.AsString <> 'P') then
  begin
    if Tipo = 'G' then
    begin
      cdsNotaServicoPERC_TRIBUTO_ESTADUAL.AsFloat  := 0;
      cdsNotaServicoPERC_TRIBUTO_FEDERAL.AsFloat   := 0;
      cdsNotaServicoPERC_TRIBUTO_MUNICIPAL.AsFloat := 0;
    end
    else
    if Tipo = 'I' then
    begin
      cdsNotaServico_ItensPERC_TRIBUTO_ESTADUAL.AsFloat  := 0;
      cdsNotaServico_ItensPERC_TRIBUTO_FEDERAL.AsFloat   := 0;
      cdsNotaServico_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat := 0;
    end;
    if cdsNotaServico.State in [dsEdit,dsInsert] then
    begin
      cdsNotaServicoFONTE_TRIBUTO.AsString  := '';
      cdsNotaServicoVERSAO_TRIBUTO.AsString := '';
      cdsNotaServicoIBPT_CHAVE.AsString     := '';
    end;
    exit;
  end;
  qIBPT.Close;
  if (cdsParametrosTIPO_LEI_TRANSPARENCIA.AsString = 'P') then
    qIBPT.ParamByName('CODIGO').AsString := 'SERVICO'
  else
    qIBPT.ParamByName('CODIGO').AsString := Codigo_NBS;
  qIBPT.Open;
  if qIBPT.IsEmpty then
    exit;
  if Tipo = 'G' then
  begin
    cdsNotaServicoPERC_TRIBUTO_ESTADUAL.AsFloat  := qIBPTPERC_ESTADUAL.AsFloat;
    cdsNotaServicoPERC_TRIBUTO_FEDERAL.AsFloat   := qIBPTPERC_NACIONAL.AsFloat;
    cdsNotaServicoPERC_TRIBUTO_MUNICIPAL.AsFloat := qIBPTPERC_MUNICIPAL.AsFloat;
  end
  else
  begin
    cdsNotaServico_ItensPERC_TRIBUTO_ESTADUAL.AsFloat  := qIBPTPERC_ESTADUAL.AsFloat;
    cdsNotaServico_ItensPERC_TRIBUTO_FEDERAL.AsFloat   := qIBPTPERC_NACIONAL.AsFloat;
    cdsNotaServico_ItensPERC_TRIBUTO_MUNICIPAL.AsFloat := qIBPTPERC_MUNICIPAL.AsFloat;
  end;
  cdsNotaServicoFONTE_TRIBUTO.AsString  := qIBPTFONTE.AsString;
  cdsNotaServicoVERSAO_TRIBUTO.AsString := qIBPTVERSAO.AsString;
  cdsNotaServicoIBPT_CHAVE.AsString     := qIBPTCHAVE.AsString;
end;

procedure TDMCadNotaServico.prc_Abrir_Atividade(ID_Servico: Integer);
begin
  cdsAtividade_Cid.Close;
  if ID_Servico > 0 then
    sdsAtividade_Cid.CommandText := ctAtividade_Cid + ' WHERE ID_SERVICO_PADRAO = ' + IntToStr(ID_Servico);
  cdsAtividade_Cid.Open;
end;

procedure TDMCadNotaServico.prc_Monta_Obs_Contrato;
begin
  vObs_Contrato := '';
  if qParametros_SerAGRUPA_CONTRATO_NFSE.AsString = 'S' then
  begin
    cdsNotaServico_Imp_Contrato.Close;
    sdsNotaServico_Imp_Contrato.ParamByName('ID').AsInteger := cdsNotaServico_ImpID.AsInteger;
    cdsNotaServico_Imp_Contrato.Open;
    cdsNotaServico_Imp_Contrato.First;
    while not cdsNotaServico_Imp_Contrato.Eof do
    begin
      if vObs_Contrato <> '' then
        vObs_Contrato := vObs_Contrato + ', ';
      vObs_Contrato := vObs_Contrato + cdsNotaServico_Imp_ContratoNUM_CONTRATO.AsString;
      if cdsParametrosUSA_ANO_CONTRATO.AsString = 'S' then
        vObs_Contrato := vObs_Contrato + '/' + cdsNotaServico_Imp_ContratoANO_CONTRATO.AsString;
      cdsNotaServico_Imp_Contrato.Next;
    end;
  end
  else
  if cdsNotaServico_ImpNUM_CONTRATO.AsInteger > 0 then
  begin
    vObs_Contrato := cdsNotaServico_ImpNUM_CONTRATO.AsString;
    if cdsParametrosUSA_ANO_CONTRATO.AsString = 'S' then
      vObs_Contrato := vObs_Contrato + '/' + cdsNotaServico_ImpANO_CONTRATO.AsString;
  end;
  if trim(vObs_Contrato) <> '' then
    vObs_Contrato := '(Contratos: ' + vObs_Contrato + ')';
end;

procedure TDMCadNotaServico.cdsDuplicataNewRecord(DataSet: TDataSet);
begin
  cdsDuplicataNGR.AsString      := 'N';
  cdsDuplicataAPROVADO.AsString := 'S';
end;

end.

