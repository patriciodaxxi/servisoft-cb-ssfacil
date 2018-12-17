unit UDMCadDuplicata;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, dbXPress, UDMCadExtComissao, LogTypes, LogProvider, StdConvs,
  Dialogs, frxClass, frxDBSet, frxRich, frxExportMail, frxExportPDF, Variants, Forms;

type
  TDMCadDuplicata = class(TDataModule)
    sdsDuplicata: TSQLDataSet;
    dspDuplicata: TDataSetProvider;
    cdsDuplicata: TClientDataSet;
    dsDuplicata: TDataSource;
    dsDuplicata_Mestre: TDataSource;
    sdsDuplicata_Hist: TSQLDataSet;
    cdsDuplicata_Hist: TClientDataSet;
    dsDuplicata_Hist: TDataSource;
    sdsPessoa: TSQLDataSet;
    dspPessoa: TDataSetProvider;
    cdsPessoa: TClientDataSet;
    dsPessoa: TDataSource;
    sdsVendedor: TSQLDataSet;
    dspVendedor: TDataSetProvider;
    cdsVendedor: TClientDataSet;
    cdsVendedorCODIGO: TIntegerField;
    cdsVendedorNOME: TStringField;
    cdsVendedorPERC_COMISSAO: TFloatField;
    dsVendedor: TDataSource;
    cdsPessoaCODIGO: TIntegerField;
    cdsPessoaNOME: TStringField;
    cdsPessoaFANTASIA: TStringField;
    sdsTipoCobranca: TSQLDataSet;
    dspTipoCobranca: TDataSetProvider;
    cdsTipoCobranca: TClientDataSet;
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
    dsTipoCobranca: TDataSource;
    sdsContas: TSQLDataSet;
    dspContas: TDataSetProvider;
    cdsContas: TClientDataSet;
    cdsContasID: TIntegerField;
    cdsContasNOME: TStringField;
    dsContas: TDataSource;
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
    sdsDuplicataARQUIVO_GERADO: TStringField;
    sdsDuplicataTRANSFERENCIA_ICMS: TStringField;
    sdsDuplicataNOSSONUMERO: TStringField;
    sdsDuplicataDTFINANCEIRO: TDateField;
    sdsDuplicataNUMCHEQUE: TIntegerField;
    sdsDuplicataACEITE: TStringField;
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
    cdsDuplicataARQUIVO_GERADO: TStringField;
    cdsDuplicataTRANSFERENCIA_ICMS: TStringField;
    cdsDuplicataNOSSONUMERO: TStringField;
    cdsDuplicataDTFINANCEIRO: TDateField;
    cdsDuplicataNUMCHEQUE: TIntegerField;
    cdsDuplicataACEITE: TStringField;
    cdsDuplicatasdsDuplicata_Hist: TDataSetField;
    sdsDuplicata_HistID: TIntegerField;
    sdsDuplicata_HistITEM: TIntegerField;
    sdsDuplicata_HistTIPO_HISTORICO: TStringField;
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
    sdsDuplicata_HistDTHISTORICO: TDateField;
    sdsDuplicata_HistDTLANCAMENTO: TDateField;
    cdsDuplicata_HistID: TIntegerField;
    cdsDuplicata_HistITEM: TIntegerField;
    cdsDuplicata_HistTIPO_HISTORICO: TStringField;
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
    cdsDuplicata_HistDTHISTORICO: TDateField;
    cdsDuplicata_HistDTLANCAMENTO: TDateField;
    sdsDuplicata_Consulta: TSQLDataSet;
    dspDuplicata_Consulta: TDataSetProvider;
    cdsDuplicata_Consulta: TClientDataSet;
    dsDuplicata_Consulta: TDataSource;
    cdsDuplicata_ConsultaID: TIntegerField;
    cdsDuplicata_ConsultaTIPO_ES: TStringField;
    cdsDuplicata_ConsultaFILIAL: TIntegerField;
    cdsDuplicata_ConsultaID_NOTA: TIntegerField;
    cdsDuplicata_ConsultaPARCELA: TIntegerField;
    cdsDuplicata_ConsultaNUMDUPLICATA: TStringField;
    cdsDuplicata_ConsultaNUMNOTA: TIntegerField;
    cdsDuplicata_ConsultaSERIE: TStringField;
    cdsDuplicata_ConsultaDTVENCIMENTO: TDateField;
    cdsDuplicata_ConsultaVLR_PARCELA: TFloatField;
    cdsDuplicata_ConsultaVLR_RESTANTE: TFloatField;
    cdsDuplicata_ConsultaVLR_PAGO: TFloatField;
    cdsDuplicata_ConsultaVLR_DEVOLUCAO: TFloatField;
    cdsDuplicata_ConsultaVLR_DESPESAS: TFloatField;
    cdsDuplicata_ConsultaVLR_DESCONTO: TFloatField;
    cdsDuplicata_ConsultaVLR_JUROSPAGOS: TFloatField;
    cdsDuplicata_ConsultaVLR_COMISSAO: TFloatField;
    cdsDuplicata_ConsultaPERC_COMISSAO: TFloatField;
    cdsDuplicata_ConsultaDTULTPAGAMENTO: TDateField;
    cdsDuplicata_ConsultaID_PESSOA: TIntegerField;
    cdsDuplicata_ConsultaID_CONTA: TIntegerField;
    cdsDuplicata_ConsultaID_TIPOCOBRANCA: TIntegerField;
    cdsDuplicata_ConsultaID_VENDEDOR: TIntegerField;
    cdsDuplicata_ConsultaID_CONTA_BOLETO: TIntegerField;
    cdsDuplicata_ConsultaID_COMISSAO: TIntegerField;
    cdsDuplicata_ConsultaQTD_DIASATRASO: TIntegerField;
    cdsDuplicata_ConsultaDTRECEBIMENTO_TITULO: TDateField;
    cdsDuplicata_ConsultaDTEMISSAO: TDateField;
    cdsDuplicata_ConsultaPAGO_CARTORIO: TStringField;
    cdsDuplicata_ConsultaPROTESTADO: TStringField;
    cdsDuplicata_ConsultaTIPO_LANCAMENTO: TStringField;
    cdsDuplicata_ConsultaARQUIVO_GERADO: TStringField;
    cdsDuplicata_ConsultaTRANSFERENCIA_ICMS: TStringField;
    cdsDuplicata_ConsultaNOSSONUMERO: TStringField;
    cdsDuplicata_ConsultaDTFINANCEIRO: TDateField;
    cdsDuplicata_ConsultaNUMCHEQUE: TIntegerField;
    cdsDuplicata_ConsultaACEITE: TStringField;
    cdsDuplicata_ConsultaNOME_PESSOA: TStringField;
    cdsDuplicata_ConsultaNOME_VENDEDOR: TStringField;
    cdsDuplicata_ConsultaNOME_BANCO: TStringField;
    cdsDuplicata_ConsultaNOME_CONTA: TStringField;
    cdsDuplicata_ConsultaNOME_TIPOCOBRANCA: TStringField;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
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
    dsFilial: TDataSource;
    cdsDuplicata_ConsultaclTipo_Registro: TStringField;
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
    mImpDuplicata: TClientDataSet;
    mImpDuplicataID_Duplicata: TIntegerField;
    dsmImpDuplicata: TDataSource;
    cdsDuplicata_ConsultaENDERECO: TStringField;
    cdsDuplicata_ConsultaCOMPLEMENTO_END: TStringField;
    cdsDuplicata_ConsultaNUM_END: TStringField;
    cdsDuplicata_ConsultaBAIRRO: TStringField;
    cdsDuplicata_ConsultaCIDADE: TStringField;
    cdsDuplicata_ConsultaUF: TStringField;
    cdsDuplicata_ConsultaCEP: TStringField;
    cdsDuplicata_ConsultaCNPJ_CPF: TStringField;
    cdsDuplicata_ConsultaINSCR_EST: TStringField;
    cdsDuplicata_ConsultaENDERECO_PGTO: TStringField;
    cdsDuplicata_ConsultaCOMPLEMENTO_END_PGTO: TStringField;
    cdsDuplicata_ConsultaNUM_END_PGTO: TStringField;
    cdsDuplicata_ConsultaBAIRRO_PGTO: TStringField;
    cdsDuplicata_ConsultaCIDADE_PGTO: TStringField;
    cdsDuplicata_ConsultaUF_PGTO: TStringField;
    cdsDuplicata_ConsultaCEP_PGTO: TStringField;
    cdsDuplicata_ConsultaPESSOA: TStringField;
    sdsFinanceiro: TSQLDataSet;
    dspFinanceiro: TDataSetProvider;
    cdsFinanceiro: TClientDataSet;
    dsFinanceiro: TDataSource;
    sdsFinanceiroID: TIntegerField;
    sdsFinanceiroTIPO_ES: TStringField;
    sdsFinanceiroID_CONTA: TIntegerField;
    sdsFinanceiroDTMOVIMENTO: TDateField;
    sdsFinanceiroID_MOVDUPLICATA: TIntegerField;
    sdsFinanceiroITEM_MOVDUPLICATA: TIntegerField;
    sdsFinanceiroVLR_MOVIMENTO: TFloatField;
    sdsFinanceiroID_HISTORICO: TIntegerField;
    sdsFinanceiroHISTORICO_COMPL: TStringField;
    sdsFinanceiroID_PESSOA: TIntegerField;
    sdsFinanceiroFILIAL: TIntegerField;
    sdsFinanceiroUSUARIO: TStringField;
    sdsFinanceiroDTUSUARIO: TDateField;
    sdsFinanceiroHRUSUARIO: TTimeField;
    cdsFinanceiroID: TIntegerField;
    cdsFinanceiroTIPO_ES: TStringField;
    cdsFinanceiroID_CONTA: TIntegerField;
    cdsFinanceiroDTMOVIMENTO: TDateField;
    cdsFinanceiroID_MOVDUPLICATA: TIntegerField;
    cdsFinanceiroITEM_MOVDUPLICATA: TIntegerField;
    cdsFinanceiroVLR_MOVIMENTO: TFloatField;
    cdsFinanceiroID_HISTORICO: TIntegerField;
    cdsFinanceiroHISTORICO_COMPL: TStringField;
    cdsFinanceiroID_PESSOA: TIntegerField;
    cdsFinanceiroFILIAL: TIntegerField;
    cdsFinanceiroUSUARIO: TStringField;
    cdsFinanceiroDTUSUARIO: TDateField;
    cdsFinanceiroHRUSUARIO: TTimeField;
    sdsDuplicata_HistVLR_LANCAMENTO: TFloatField;
    cdsDuplicata_HistVLR_LANCAMENTO: TFloatField;
    sdsDuplicata_HistID_FORMA_PAGAMENTO: TIntegerField;
    cdsDuplicata_HistID_FORMA_PAGAMENTO: TIntegerField;
    sdsFinanceiroID_FORMA_PAGAMENTO: TIntegerField;
    cdsFinanceiroID_FORMA_PAGAMENTO: TIntegerField;
    cdsVendedorTIPO_COMISSAO: TStringField;
    sdsDuplicataID_COB_ELETRONICA: TIntegerField;
    sdsDuplicataBOLETO_IMP: TStringField;
    sdsDuplicataID_CARTEIRA: TIntegerField;
    sdsDuplicataID_BANCO: TIntegerField;
    cdsDuplicataID_COB_ELETRONICA: TIntegerField;
    cdsDuplicataBOLETO_IMP: TStringField;
    cdsDuplicataID_CARTEIRA: TIntegerField;
    cdsDuplicataID_BANCO: TIntegerField;
    cdsDuplicata_ConsultaID_COB_ELETRONICA: TIntegerField;
    cdsDuplicata_ConsultaBOLETO_IMP: TStringField;
    cdsDuplicata_ConsultaID_CARTEIRA: TIntegerField;
    cdsDuplicata_ConsultaID_BANCO: TIntegerField;
    sdsDuplicataIMP_BOLETO: TStringField;
    cdsDuplicataIMP_BOLETO: TStringField;
    sdsDuplicataNUM_REMESSA: TIntegerField;
    cdsDuplicataNUM_REMESSA: TIntegerField;
    sdsDuplicataID_NOTA_SERVICO: TIntegerField;
    sdsDuplicataDESCRICAO: TStringField;
    cdsDuplicataID_NOTA_SERVICO: TIntegerField;
    cdsDuplicataDESCRICAO: TStringField;
    cdsDuplicata_ConsultaIMP_BOLETO: TStringField;
    cdsDuplicata_ConsultaNUM_REMESSA: TIntegerField;
    cdsDuplicata_ConsultaID_NOTA_SERVICO: TIntegerField;
    cdsDuplicata_ConsultaDESCRICAO: TStringField;
    sdsDuplicataNUMRPS: TIntegerField;
    cdsDuplicataNUMRPS: TIntegerField;
    cdsDuplicata_ConsultaNUMRPS: TIntegerField;
    sdsCondPgto: TSQLDataSet;
    sdsCondPgtoID: TIntegerField;
    sdsCondPgtoNOME: TStringField;
    sdsCondPgtoTIPO: TStringField;
    dspCondPgto: TDataSetProvider;
    cdsCondPgto: TClientDataSet;
    cdsCondPgtoID: TIntegerField;
    cdsCondPgtoNOME: TStringField;
    cdsCondPgtoTIPO: TStringField;
    cdsCondPgtosdsCondPgto_Dia: TDataSetField;
    dsCondPgto: TDataSource;
    dsCondPgto_Mestre: TDataSource;
    sdsCondPgto_Dia: TSQLDataSet;
    sdsCondPgto_DiaID: TIntegerField;
    sdsCondPgto_DiaITEM: TIntegerField;
    sdsCondPgto_DiaQTDDIAS: TIntegerField;
    cdsCondPgto_Dia: TClientDataSet;
    cdsCondPgto_DiaID: TIntegerField;
    cdsCondPgto_DiaITEM: TIntegerField;
    cdsCondPgto_DiaQTDDIAS: TIntegerField;
    cdsPessoaID_VENDEDOR: TIntegerField;
    cdsPessoaPERC_COMISSAO: TFloatField;
    cdsPessoaID_CONDPGTO: TIntegerField;
    cdsPessoaID_CONTABOLETO: TIntegerField;
    cdsPessoaID_TIPOCOBRANCA: TIntegerField;
    cdsPessoaID_REGIME_TRIB: TIntegerField;
    cdsDuplicata_ConsultaCOD_BANCO: TStringField;
    qTotalAtraso: TSQLQuery;
    sdsPendente: TSQLDataSet;
    dspPendente: TDataSetProvider;
    cdsPendente: TClientDataSet;
    sdsPendenteVLR_RESTANTE: TFloatField;
    sdsPendenteTIPO_ES: TStringField;
    cdsPendenteVLR_RESTANTE: TFloatField;
    cdsPendenteTIPO_ES: TStringField;
    qTotalAtrasoTIPO_ES: TStringField;
    qTotalAtrasoFILIAL: TIntegerField;
    qTotalAtrasoVLR_RESTANTE: TFloatField;
    mCheque: TClientDataSet;
    dsmCheque: TDataSource;
    mChequeNum_Cheque: TIntegerField;
    mChequeID_Banco: TIntegerField;
    mChequeID_Conta: TIntegerField;
    mChequeVlr_Cheque: TFloatField;
    mChequeDtBomPara: TDateField;
    mChequeTitular: TStringField;
    mChequeFone_Titular: TStringField;
    sdsBanco: TSQLDataSet;
    dspBanco: TDataSetProvider;
    cdsBanco: TClientDataSet;
    dsBanco: TDataSource;
    cdsBancoID: TIntegerField;
    cdsBancoCODIGO: TStringField;
    cdsBancoNOME: TStringField;
    cdsBancoOPCAO_GERAR_NOSSNUMERO: TStringField;
    mChequeRecebido_De: TIntegerField;
    mChequeNome_Recebido: TStringField;
    mChequelkNomeBanco: TStringField;
    mChequeEmitido_Por: TStringField;
    cdsContasTIPO_CONTA: TStringField;
    sdsCheque: TSQLDataSet;
    sdsChequeID: TIntegerField;
    sdsChequeEMITIDO_POR: TStringField;
    sdsChequeRECEBIDO_DE: TIntegerField;
    sdsChequeTITULAR: TStringField;
    sdsChequeAGENCIA: TStringField;
    sdsChequeCONTA: TStringField;
    sdsChequeNUM_CHEQUE: TStringField;
    sdsChequeDTEMISSAO: TDateField;
    sdsChequeDTBOM_PARA: TDateField;
    sdsChequeVALOR: TFloatField;
    sdsChequeFONE_CONTATO: TStringField;
    sdsChequeEMITIDO_PARA: TIntegerField;
    sdsChequeFILIAL: TIntegerField;
    sdsChequeID_CONTA: TIntegerField;
    sdsChequeID_BANCO: TIntegerField;
    sdsChequeNOMINAL: TStringField;
    dspCheque: TDataSetProvider;
    cdsCheque: TClientDataSet;
    cdsChequeID: TIntegerField;
    cdsChequeEMITIDO_POR: TStringField;
    cdsChequeRECEBIDO_DE: TIntegerField;
    cdsChequeTITULAR: TStringField;
    cdsChequeAGENCIA: TStringField;
    cdsChequeCONTA: TStringField;
    cdsChequeNUM_CHEQUE: TStringField;
    cdsChequeDTEMISSAO: TDateField;
    cdsChequeDTBOM_PARA: TDateField;
    cdsChequeVALOR: TFloatField;
    cdsChequeFONE_CONTATO: TStringField;
    cdsChequeEMITIDO_PARA: TIntegerField;
    cdsChequeFILIAL: TIntegerField;
    cdsChequeID_CONTA: TIntegerField;
    cdsChequeID_BANCO: TIntegerField;
    cdsChequeNOMINAL: TStringField;
    cdsChequesdsCheque_Tit: TDataSetField;
    dsCheque: TDataSource;
    dsCheque_Mestre: TDataSource;
    sdsCheque_Tit: TSQLDataSet;
    sdsCheque_TitID: TIntegerField;
    sdsCheque_TitITEM: TIntegerField;
    sdsCheque_TitID_DUPLICATA: TIntegerField;
    sdsCheque_TitITEM_HIST: TIntegerField;
    cdsCheque_Tit: TClientDataSet;
    cdsCheque_TitID: TIntegerField;
    cdsCheque_TitITEM: TIntegerField;
    cdsCheque_TitID_DUPLICATA: TIntegerField;
    cdsCheque_TitITEM_HIST: TIntegerField;
    dsCheque_Tit: TDataSource;
    sdsChequeDTCOMPENSADO: TDateField;
    cdsChequeDTCOMPENSADO: TDateField;
    cdsContasID_BANCO: TIntegerField;
    cdsContasFILIAL: TIntegerField;
    sdsChequeUTILIZADO_PARA: TMemoField;
    cdsChequeUTILIZADO_PARA: TMemoField;
    mChequeID_Cheque: TIntegerField;
    sdsPagto: TSQLDataSet;
    dspPagto: TDataSetProvider;
    cdsPagto: TClientDataSet;
    dsPagto: TDataSource;
    cdsPagtoID: TIntegerField;
    cdsPagtoDTEMISSAO: TDateField;
    cdsPagtoDTVENCIMENTO: TDateField;
    cdsPagtoID_PESSOA: TIntegerField;
    cdsPagtoVLR_PARCELA: TFloatField;
    cdsPagtoNUMNOTA: TIntegerField;
    cdsPagtoNUMDUPLICATA: TStringField;
    cdsPagtoNUM_CONTRATO: TIntegerField;
    cdsPagtoSERIE: TStringField;
    cdsPagtoPARCELA: TIntegerField;
    cdsPagtoDTHISTORICO: TDateField;
    cdsPagtoDTLANCAMENTO: TDateField;
    cdsPagtoVLR_PAGAMENTO: TFloatField;
    cdsPagtoVLR_JUROSPAGOS: TFloatField;
    cdsPagtoVLR_DESCONTOS: TFloatField;
    cdsPagtoVLR_DESPESAS: TFloatField;
    cdsPagtoVLR_DEVOLUCAO: TFloatField;
    cdsPagtoNOME_PESSOA: TStringField;
    cdsPagtoNOME_VENDEDOR: TStringField;
    cdsPagtoNOME_CONTA: TStringField;
    cdsPagtoNOME_TIPOCOBRANCA: TStringField;
    cdsPagtoTIPO_HISTORICO: TStringField;
    cdsPagtoID_CONTA: TIntegerField;
    cdsPagtoCOD_BANCO: TStringField;
    cdsPagtoFILIAL: TIntegerField;
    cdsPagtoTRANSFERENCIA_ICMS: TStringField;
    cdsPagtoTIPO_ES: TStringField;
    sdsContaOrcamento: TSQLDataSet;
    dspContaOrcamento: TDataSetProvider;
    cdsContaOrcamento: TClientDataSet;
    cdsContaOrcamentoID: TIntegerField;
    cdsContaOrcamentoTIPO: TStringField;
    cdsContaOrcamentoCODIGO: TStringField;
    cdsContaOrcamentoDESCRICAO: TStringField;
    dsContaOrcamento: TDataSource;
    sdsDuplicataID_CONTA_ORCAMENTO: TIntegerField;
    cdsDuplicataID_CONTA_ORCAMENTO: TIntegerField;
    cdsDuplicata_ConsultaNOME_ORCAMENTO: TStringField;
    qParametrosUSA_CONTA_ORCAMENTO: TStringField;
    sdsFinanceiroID_CONTA_ORCAMENTO: TIntegerField;
    cdsFinanceiroID_CONTA_ORCAMENTO: TIntegerField;
    sdsChequeID_CONTA_ORCAMENTO: TIntegerField;
    cdsChequeID_CONTA_ORCAMENTO: TIntegerField;
    cdsPessoaCLIENTE_CONTA_ID: TIntegerField;
    cdsPessoaFORNECEDOR_CONTA_ID: TIntegerField;
    qPessoa: TSQLQuery;
    qPessoaCODIGO: TIntegerField;
    qPessoaNOME: TStringField;
    sdsDuplicataID_CUPOM: TIntegerField;
    cdsDuplicataID_CUPOM: TIntegerField;
    cdsContaOrcamentoNOME_AUX: TStringField;
    qParametrosPERC_JUROS_PADRAO: TFloatField;
    cdsDuplicata_ConsultaclVlr_Juros_Calculado: TFloatField;
    qFeriado: TSQLQuery;
    qFeriadoID: TIntegerField;
    qFeriadoDATA: TDateField;
    qFeriadoDESCRICAO: TStringField;
    qFeriadoFIXOS: TStringField;
    cdsDuplicata_ConsultaclDias_Atraso: TIntegerField;
    cdsDuplicata_ConsultaTIPO_MOV: TStringField;
    qTotalAtrasoTIPO_MOV: TStringField;
    sdsDuplicataTIPO_MOV: TStringField;
    cdsDuplicataTIPO_MOV: TStringField;
    cdsPagtoNOME_CONTA_ORCAMENTO: TStringField;
    sdsDuplicataVLR_TAXA_BANCARIA: TFloatField;
    cdsDuplicataVLR_TAXA_BANCARIA: TFloatField;
    sdsDuplicata_HistVLR_TAXA_BANCARIA: TFloatField;
    cdsDuplicata_HistVLR_TAXA_BANCARIA: TFloatField;
    qParametrosID_CONTA_ORC_JUROS_REC: TIntegerField;
    qParametrosID_CONTA_ORC_TAXA_BANCARIA_REC: TIntegerField;
    qParametrosID_CONTA_ORC_DESPESA_REC: TIntegerField;
    qParametrosID_CONTA_ORC_JUROS_PAG: TIntegerField;
    qParametrosID_CONTA_ORC_DESPESA_PAG: TIntegerField;
    qParametrosUSA_BOLETO_ACBR: TStringField;
    sdsDuplicataNUMDUPLICATA_SEQ: TIntegerField;
    cdsDuplicataNUMDUPLICATA_SEQ: TIntegerField;
    qProximaDup: TSQLQuery;
    qProximaDupNUMDUPLICATA_SEQ: TIntegerField;
    mGerarDup: TClientDataSet;
    mGerarDupDtVencimento: TDateField;
    mGerarDupVlrParcela: TFloatField;
    mGerarDupParcela: TIntegerField;
    dsmGerarDup: TDataSource;
    sdsDuplicataPERC_COMISSAO_PAGAR_NOTA: TFloatField;
    cdsDuplicataPERC_COMISSAO_PAGAR_NOTA: TFloatField;
    sdsDuplicataANO_REF: TIntegerField;
    sdsDuplicataMES_REF: TIntegerField;
    cdsDuplicataANO_REF: TIntegerField;
    cdsDuplicataMES_REF: TIntegerField;
    cdsVendedorPERC_COMISSAO_VEND: TFloatField;
    cdsDuplicata_ConsultaANO_REF: TIntegerField;
    cdsDuplicata_ConsultaMES_REF: TIntegerField;
    qParametrosMOSTRAR_TOTAL_ACUMULADO_DUP: TStringField;
    cdsDuplicata_ConsultaVLR_TOTALPAGO: TFloatField;
    sdsDuplicataTITULO_CARTORIO: TStringField;
    cdsDuplicataTITULO_CARTORIO: TStringField;
    cdsDuplicata_ConsultaTITULO_CARTORIO: TStringField;
    sdsDescontada: TSQLDataSet;
    dspDescontada: TDataSetProvider;
    cdsDescontada: TClientDataSet;
    dsDescontada: TDataSource;
    sdsDescontadaID: TIntegerField;
    sdsDescontadaDTDESCONTADA: TDateField;
    sdsDescontadaID_CONTA: TIntegerField;
    sdsDescontadaID_CONTA_DESC: TIntegerField;
    sdsDescontadaVLR_DESPESA_OPE: TFloatField;
    sdsDescontadaPERC_JUROS: TFloatField;
    sdsDescontadaVLR_JUROS: TFloatField;
    sdsDescontadaVLR_IOF: TFloatField;
    sdsDescontadaPERC_IOF: TFloatField;
    sdsDescontadaVLR_TOTAL_TIT: TFloatField;
    sdsDescontadaVLR_LIBERADO: TFloatField;
    sdsDescontadaQTD_TITULOS: TIntegerField;
    sdsDescontadaDTFINAL_VECTO: TDateField;
    sdsDescontadaDTPRIMEIRO_VECTO: TDateField;
    cdsDescontadaID: TIntegerField;
    cdsDescontadaDTDESCONTADA: TDateField;
    cdsDescontadaID_CONTA: TIntegerField;
    cdsDescontadaID_CONTA_DESC: TIntegerField;
    cdsDescontadaVLR_DESPESA_OPE: TFloatField;
    cdsDescontadaPERC_JUROS: TFloatField;
    cdsDescontadaVLR_JUROS: TFloatField;
    cdsDescontadaVLR_IOF: TFloatField;
    cdsDescontadaPERC_IOF: TFloatField;
    cdsDescontadaVLR_TOTAL_TIT: TFloatField;
    cdsDescontadaVLR_LIBERADO: TFloatField;
    cdsDescontadaQTD_TITULOS: TIntegerField;
    cdsDescontadaDTFINAL_VECTO: TDateField;
    cdsDescontadaDTPRIMEIRO_VECTO: TDateField;
    sdsDescontadaID_TIPO_COBRANCA: TIntegerField;
    cdsDescontadaID_TIPO_COBRANCA: TIntegerField;
    sdsDuplicataID_DESCONTADA: TIntegerField;
    cdsDuplicataID_DESCONTADA: TIntegerField;
    cdsDuplicata_ConsultaID_DESCONTADA: TIntegerField;
    mTitulos: TClientDataSet;
    mTitulosID: TIntegerField;
    mTitulosID_Cliente: TIntegerField;
    mTitulosNome_Cliente: TStringField;
    mTitulosVlr_Parcela: TFloatField;
    mTitulosDt_Vencimento: TDateField;
    dsmTitulos: TDataSource;
    mTitulosNum_Duplicata: TStringField;
    mTitulosParcela: TIntegerField;
    sdsDuplicataCONFIRMA_PGTO: TStringField;
    cdsDuplicataCONFIRMA_PGTO: TStringField;
    cdsDuplicata_ConsultaCONFIRMA_PGTO: TStringField;
    sdsDuplicata_HistID_DESCONTADA: TIntegerField;
    cdsDuplicata_HistID_DESCONTADA: TIntegerField;
    sdsDescontada_Consulta: TSQLDataSet;
    dspDescontada_Consulta: TDataSetProvider;
    cdsDescontada_Consulta: TClientDataSet;
    dsDescontada_Consulta: TDataSource;
    cdsDescontada_ConsultaID: TIntegerField;
    cdsDescontada_ConsultaDTDESCONTADA: TDateField;
    cdsDescontada_ConsultaID_CONTA: TIntegerField;
    cdsDescontada_ConsultaID_CONTA_DESC: TIntegerField;
    cdsDescontada_ConsultaVLR_DESPESA_OPE: TFloatField;
    cdsDescontada_ConsultaPERC_JUROS: TFloatField;
    cdsDescontada_ConsultaVLR_JUROS: TFloatField;
    cdsDescontada_ConsultaVLR_IOF: TFloatField;
    cdsDescontada_ConsultaPERC_IOF: TFloatField;
    cdsDescontada_ConsultaVLR_TOTAL_TIT: TFloatField;
    cdsDescontada_ConsultaVLR_LIBERADO: TFloatField;
    cdsDescontada_ConsultaQTD_TITULOS: TIntegerField;
    cdsDescontada_ConsultaDTFINAL_VECTO: TDateField;
    cdsDescontada_ConsultaDTPRIMEIRO_VECTO: TDateField;
    cdsDescontada_ConsultaID_TIPO_COBRANCA: TIntegerField;
    cdsDescontada_ConsultaNOME_CREDOR: TStringField;
    cdsDescontada_ConsultaNOME_CONTA_CREDITO: TStringField;
    cdsDescontada_ConsultaNOME_TIPOCOBRANCA: TStringField;
    sdsDescontadaFILIAL: TIntegerField;
    sdsDescontadaVLR_ANTERIOR: TFloatField;
    cdsDescontadaFILIAL: TIntegerField;
    cdsDescontadaVLR_ANTERIOR: TFloatField;
    cdsDescontada_ConsultaFILIAL: TIntegerField;
    cdsDescontada_ConsultaVLR_ANTERIOR: TFloatField;
    mTitulosFilial: TIntegerField;
    mExcluir_Dup: TClientDataSet;
    mExcluir_DupID_Duplicata: TIntegerField;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    frxRichObject1: TfrxRichObject;
    frxDBDataset2: TfrxDBDataset;
    sdsDescontada_Imp: TSQLDataSet;
    dspDescontada_Imp: TDataSetProvider;
    cdsDescontada_Imp: TClientDataSet;
    dsDescontada_Imp: TDataSource;
    cdsDescontada_ImpID: TIntegerField;
    cdsDescontada_ImpDTDESCONTADA: TDateField;
    cdsDescontada_ImpID_CONTA: TIntegerField;
    cdsDescontada_ImpID_CONTA_DESC: TIntegerField;
    cdsDescontada_ImpVLR_DESPESA_OPE: TFloatField;
    cdsDescontada_ImpPERC_JUROS: TFloatField;
    cdsDescontada_ImpVLR_JUROS: TFloatField;
    cdsDescontada_ImpVLR_IOF: TFloatField;
    cdsDescontada_ImpPERC_IOF: TFloatField;
    cdsDescontada_ImpVLR_TOTAL_TIT: TFloatField;
    cdsDescontada_ImpVLR_LIBERADO: TFloatField;
    cdsDescontada_ImpQTD_TITULOS: TIntegerField;
    cdsDescontada_ImpDTFINAL_VECTO: TDateField;
    cdsDescontada_ImpDTPRIMEIRO_VECTO: TDateField;
    cdsDescontada_ImpID_TIPO_COBRANCA: TIntegerField;
    cdsDescontada_ImpFILIAL: TIntegerField;
    cdsDescontada_ImpVLR_ANTERIOR: TFloatField;
    cdsDescontada_ImpNOME_CREDOR: TStringField;
    cdsDescontada_ImpNOME_CONTA_CREDITO: TStringField;
    cdsDescontada_ImpNOME_TIPOCOBRANCA: TStringField;
    sdsDescontadaNUM_DESCONTADA: TIntegerField;
    cdsDescontadaNUM_DESCONTADA: TIntegerField;
    cdsDescontada_ImpNUM_DESCONTADA: TIntegerField;
    cdsDescontada_ConsultaNUM_DESCONTADA: TIntegerField;
    cdsDescontada_ImpNOME_FILIAL: TStringField;
    cdsDescontada_ImpCNPJ_CPF: TStringField;
    cdsDescontada_ImpDDD1: TIntegerField;
    mTitulosCNPJ_Cliente: TStringField;
    cdsDescontada_ImpFONE: TStringField;
    frxDBDataset1: TfrxDBDataset;
    dsDescontada_Mestre: TDataSource;
    sdsDescontada_Valores: TSQLDataSet;
    sdsDescontada_ValoresID: TIntegerField;
    sdsDescontada_ValoresITEM: TIntegerField;
    sdsDescontada_ValoresID_VALORES: TIntegerField;
    sdsDescontada_ValoresNOME: TStringField;
    cdsDescontada_Valores: TClientDataSet;
    cdsDescontadasdsDescontada_Valores: TDataSetField;
    cdsDescontada_ValoresID: TIntegerField;
    cdsDescontada_ValoresITEM: TIntegerField;
    cdsDescontada_ValoresID_VALORES: TIntegerField;
    cdsDescontada_ValoresNOME: TStringField;
    dsDescontada_Valores: TDataSource;
    sdsCadastro_Valores: TSQLDataSet;
    dspCadastro_Valores: TDataSetProvider;
    cdsCadastro_Valores: TClientDataSet;
    dsCadastro_Valores: TDataSource;
    cdsCadastro_ValoresID: TIntegerField;
    cdsCadastro_ValoresNOME: TStringField;
    cdsCadastro_ValoresID_CONTA_ORCAMENTO: TIntegerField;
    cdsCadastro_ValoresORDEM: TIntegerField;
    sdsDescontada_ValoresID_CONTA_ORCAMENTO: TIntegerField;
    cdsDescontada_ValoresID_CONTA_ORCAMENTO: TIntegerField;
    qConta_Orcamento: TSQLQuery;
    qConta_OrcamentoID: TIntegerField;
    qConta_OrcamentoTIPO: TStringField;
    qConta_OrcamentoCODIGO: TStringField;
    qConta_OrcamentoDESCRICAO: TStringField;
    mCadastro: TClientDataSet;
    mCadastroID: TIntegerField;
    mCadastroItem: TIntegerField;
    mCadastroID_Conta_Orcamento: TIntegerField;
    mCadastroNome: TStringField;
    mCadastroNome_Conta_Orcamento: TStringField;
    mCadastroValor: TFloatField;
    dsmCadastro: TDataSource;
    mCadastroID_Valores: TIntegerField;
    sdsDescontada_Imp_Valores: TSQLDataSet;
    dspDescontada_Imp_Valores: TDataSetProvider;
    cdsDescontada_Imp_Valores: TClientDataSet;
    dsDescontada_Imp_Valores: TDataSource;
    cdsDescontada_Imp_ValoresID: TIntegerField;
    cdsDescontada_Imp_ValoresITEM: TIntegerField;
    cdsDescontada_Imp_ValoresID_VALORES: TIntegerField;
    cdsDescontada_Imp_ValoresNOME: TStringField;
    cdsDescontada_Imp_ValoresID_CONTA_ORCAMENTO: TIntegerField;
    sdsFinanceiroID_DESCONTADA: TIntegerField;
    cdsFinanceiroID_DESCONTADA: TIntegerField;
    qParametrosID_CONTA_ORC_DESCONTADA: TIntegerField;
    sdsFinanceiroITEM_DESCONTADA: TIntegerField;
    cdsFinanceiroITEM_DESCONTADA: TIntegerField;
    cdsDescontada_Imp_ValoresVALOR: TFloatField;
    sdsDescontada_ValoresVALOR: TFloatField;
    cdsDescontada_ValoresVALOR: TFloatField;
    qParametros_Fin: TSQLQuery;
    qParametros_FinID: TIntegerField;
    qParametros_FinCONTROLAR_DUP_USUARIO: TStringField;
    qParametros_Usuario: TSQLQuery;
    qParametros_UsuarioID: TIntegerField;
    qParametros_UsuarioUSUARIO: TStringField;
    qParametros_UsuarioTIPO_REG_PRODUTO_PADRAO: TStringField;
    qParametros_UsuarioTIPO_CONSULTA_PRODUTO_PADRAO: TStringField;
    qParametros_UsuarioMOSTRAR_CODIGO_PROD_ANT: TStringField;
    qParametros_UsuarioMOSTRAR_TOTAL_PEDIDO: TStringField;
    qParametros_UsuarioMOSTRAR_DUP_REC_PAG: TStringField;
    cdsDuplicata_ConsultaGERARBOLETO: TStringField;
    qParametros_Geral: TSQLQuery;
    qParametros_GeralID: TIntegerField;
    qParametros_GeralENDGRIDS: TStringField;
    qParametros_FinMOSTRAR_VLR_ROD_DUP: TStringField;
    sdsDuplicataPERC_BASE_COMISSAO: TFloatField;
    cdsDuplicataPERC_BASE_COMISSAO: TFloatField;
    cdsDuplicata_ConsultaPERC_BASE_COMISSAO: TFloatField;
    qParametros_Com: TSQLQuery;
    qParametros_ComID: TIntegerField;
    qParametros_ComCOMISSAO_DESCONTAR: TStringField;
    mLeItau: TClientDataSet;
    mLeItauID: TIntegerField;
    mLeItauNumDuplicata: TStringField;
    mLeItauNome_Cliente: TStringField;
    mLeItauSeuNumero: TStringField;
    mLeItauNossoNumero: TStringField;
    dsmLeItau: TDataSource;
    mLeItauEncontrou: TStringField;
    mLeItau2: TClientDataSet;
    dsmLeItau2: TDataSource;
    mLeItau2ID: TIntegerField;
    mLeItau2NumDuplicata: TStringField;
    sdsItau: TSQLDataSet;
    dspItau: TDataSetProvider;
    cdsItau: TClientDataSet;
    cdsItauID: TIntegerField;
    cdsItauTIPO_ES: TStringField;
    cdsItauFILIAL: TIntegerField;
    cdsItauID_NOTA: TIntegerField;
    cdsItauPARCELA: TIntegerField;
    cdsItauNUMDUPLICATA: TStringField;
    cdsItauNUMNOTA: TIntegerField;
    cdsItauSERIE: TStringField;
    cdsItauDTVENCIMENTO: TDateField;
    cdsItauVLR_PARCELA: TFloatField;
    cdsItauVLR_RESTANTE: TFloatField;
    cdsItauVLR_PAGO: TFloatField;
    cdsItauVLR_DEVOLUCAO: TFloatField;
    cdsItauVLR_DESPESAS: TFloatField;
    cdsItauVLR_DESCONTO: TFloatField;
    cdsItauVLR_JUROSPAGOS: TFloatField;
    cdsItauVLR_COMISSAO: TFloatField;
    cdsItauPERC_COMISSAO: TFloatField;
    cdsItauDTULTPAGAMENTO: TDateField;
    cdsItauID_PESSOA: TIntegerField;
    cdsItauID_CONTA: TIntegerField;
    cdsItauID_TIPOCOBRANCA: TIntegerField;
    cdsItauID_VENDEDOR: TIntegerField;
    cdsItauID_CONTA_BOLETO: TIntegerField;
    cdsItauID_COMISSAO: TIntegerField;
    cdsItauQTD_DIASATRASO: TIntegerField;
    cdsItauDTRECEBIMENTO_TITULO: TDateField;
    cdsItauDTEMISSAO: TDateField;
    cdsItauPAGO_CARTORIO: TStringField;
    cdsItauPROTESTADO: TStringField;
    cdsItauTIPO_LANCAMENTO: TStringField;
    cdsItauARQUIVO_GERADO: TStringField;
    cdsItauTRANSFERENCIA_ICMS: TStringField;
    cdsItauNOSSONUMERO: TStringField;
    cdsItauDTFINANCEIRO: TDateField;
    cdsItauNUMCHEQUE: TIntegerField;
    cdsItauACEITE: TStringField;
    cdsItauID_COB_ELETRONICA: TIntegerField;
    cdsItauBOLETO_IMP: TStringField;
    cdsItauID_CARTEIRA: TIntegerField;
    cdsItauID_BANCO: TIntegerField;
    cdsItauIMP_BOLETO: TStringField;
    cdsItauNUM_REMESSA: TIntegerField;
    cdsItauID_NOTA_SERVICO: TIntegerField;
    cdsItauDESCRICAO: TStringField;
    cdsItauNUMRPS: TIntegerField;
    cdsItauANO_REF: TIntegerField;
    cdsItauMES_REF: TIntegerField;
    cdsItauNUM_CONTRATO: TIntegerField;
    cdsItauID_CONTA_ORCAMENTO: TIntegerField;
    cdsItauID_CUPOM: TIntegerField;
    cdsItauVLR_TAXA_BANCARIA: TFloatField;
    cdsItauCOBRAR_TAXA: TStringField;
    cdsItauID_TERMINAL: TIntegerField;
    cdsItauID_FECHAMENTO: TIntegerField;
    cdsItauTIPO_MOV: TStringField;
    cdsItauNOSSONUMERO_SEQ: TFMTBCDField;
    cdsItauNOSSONUMERO_GERADO: TStringField;
    cdsItauNUMDUPLICATA_SEQ: TIntegerField;
    cdsItauID_RECIBO: TIntegerField;
    cdsItauID_PEDIDO: TIntegerField;
    cdsItauPERC_COMISSAO_PAGAR_NOTA: TFloatField;
    cdsItauUSUARIO: TStringField;
    cdsItauTITULO_CARTORIO: TStringField;
    cdsItauID_DESCONTADA: TIntegerField;
    cdsItauCONFIRMA_PGTO: TStringField;
    cdsItauCOD_ANT: TIntegerField;
    cdsItauPERC_BASE_COMISSAO: TFloatField;
    mLeItauValor: TStringField;
    mLeItauDtVencimento: TStringField;
    mLeItau2NossoNumero: TStringField;
    mLeItau2NossoNumeroItau: TStringField;
    mLeItau2Diferente: TStringField;
    mLeItauNumDuplicata2: TStringField;
    mLeItauParcela: TStringField;
    mLeItau2Parcela: TStringField;
    mLeItau2Obs: TStringField;
    qItauHist: TSQLQuery;
    qItauHistID: TIntegerField;
    qItauHistCONTADOR_BOL: TIntegerField;
    qItauHistCONTADOR_REM: TIntegerField;
    sdsDuplicataDESCRICAO2: TStringField;
    cdsDuplicataDESCRICAO2: TStringField;
    cdsDuplicata_ConsultaDESCRICAO2: TStringField;
    qParametros_FinSEPARADOR_NUM_DA_PARC: TStringField;
    frxDBDataset3: TfrxDBDataset;
    sdsDuplicataID_TERMINAL: TIntegerField;
    cdsDuplicataID_TERMINAL: TIntegerField;
    cdsDuplicata_ConsultaID_TERMINAL: TIntegerField;
    sdsFinanceiroID_TERMINAL: TIntegerField;
    cdsFinanceiroID_TERMINAL: TIntegerField;
    sdsDuplicataVLR_MULTA: TFloatField;
    cdsDuplicataVLR_MULTA: TFloatField;
    sdsDuplicata_HistVLR_MULTA: TFloatField;
    cdsDuplicata_HistVLR_MULTA: TFloatField;
    sdsDuplicataID_CONTABIL_OPE_LACTO: TIntegerField;
    sdsDuplicataID_CONTABIL_OPE_BAIXA: TIntegerField;
    cdsDuplicataID_CONTABIL_OPE_LACTO: TIntegerField;
    cdsDuplicataID_CONTABIL_OPE_BAIXA: TIntegerField;
    qParametros_GeralMOSTRAR_COD_CONTABIL: TStringField;
    sdsContabil_Ope: TSQLDataSet;
    dspContabil_Ope: TDataSetProvider;
    cdsContabil_Ope: TClientDataSet;
    cdsContabil_OpeID: TIntegerField;
    cdsContabil_OpeNOME: TStringField;
    dsContabil_Ope: TDataSource;
    qParametros_Cta_Orc: TSQLQuery;
    qParametros_Cta_OrcID: TIntegerField;
    qParametros_Cta_OrcID_CONTA_ORC_MULTA_PAG: TIntegerField;
    qParametros_Cta_OrcID_CONTA_ORC_MULTA_REC: TIntegerField;
    qParametros_FinMOSTRAR_VLR_MULTA_DUP: TStringField;
    cdsPagtoVLR_MULTA: TFloatField;
    qParametros_FinUSA_REGIME_CAIXA_DUP: TStringField;
    sdsDuplicataREGIME_CAIXA: TStringField;
    cdsDuplicataREGIME_CAIXA: TStringField;
    qParametrosID_CONTA_PADRAO: TIntegerField;
    qParametrosID_TIPO_COBRANCA_PADRAO: TIntegerField;
    sdsDuplicataPERDIDO: TStringField;
    cdsDuplicataPERDIDO: TStringField;
    qParametros_FinIMP_NOSSO_NUMERO: TStringField;
    cdsPagtoID_CONTA_BOLETO: TIntegerField;
    cdsPagtoNOME_CONTA_BOLETO: TStringField;
    qParametros_FinDUP_DIA_FIN_VECTO: TStringField;
    cdsPessoaENDERECO: TStringField;
    cdsPessoaNUM_END: TStringField;
    cdsPessoaCOMPLEMENTO_END: TStringField;
    cdsPessoaBAIRRO: TStringField;
    cdsPessoaCIDADE: TStringField;
    cdsPessoaUF: TStringField;
    cdsPessoaCEP: TStringField;
    cdsPessoaDDDFONE1: TIntegerField;
    cdsPessoaTELEFONE1: TStringField;
    cdsPessoaCNPJ_CPF: TStringField;
    cdsPessoaEMAIL_PGTO: TStringField;
    cdsPessoaINSCR_EST: TStringField;
    cdsPessoaNOME_CONTATO: TStringField;
    sdsDuplicataINSTRUCAO_PROTESTO: TStringField;
    cdsDuplicataINSTRUCAO_PROTESTO: TStringField;
    sdsCarteira: TSQLDataSet;
    sdsCarteiraID: TIntegerField;
    sdsCarteiraCODIGO: TStringField;
    sdsCarteiraCODIGO_IMP: TStringField;
    sdsCarteiraNOME: TStringField;
    sdsCarteiraGERAR_NOSSONUMERO: TStringField;
    sdsCarteiraGERAR_REMESSA: TStringField;
    sdsCarteiraID_BANCO: TIntegerField;
    sdsCarteiraCOD_BANCO: TStringField;
    dspCarteira: TDataSetProvider;
    cdsCarteira: TClientDataSet;
    dsCarteira: TDataSource;
    cdsCarteiraID: TIntegerField;
    cdsCarteiraCODIGO: TStringField;
    cdsCarteiraCODIGO_IMP: TStringField;
    cdsCarteiraNOME: TStringField;
    cdsCarteiraGERAR_NOSSONUMERO: TStringField;
    cdsCarteiraGERAR_REMESSA: TStringField;
    cdsCarteiraID_BANCO: TIntegerField;
    cdsCarteiraCOD_BANCO: TStringField;
    cdsPessoaTP_CLIENTE: TStringField;
    cdsPessoaTP_FORNECEDOR: TStringField;
    cdsPessoaTP_VENDEDOR: TStringField;
    cdsPessoaTP_TRANSPORTADORA: TStringField;
    cdsPessoaVENDEDOR_CONTA_ID: TIntegerField;
    cdsPessoaTRANSPORTADORA_CONTA_ID: TIntegerField;
    qParametros_FinEXIGIR_CONTA_ORC_DUP: TStringField;
    cdsDuplicata_HistclCheque: TStringField;
    cdsDuplicata_HistclFormaPgto: TStringField;
    qFormaPgto: TSQLQuery;
    qFormaPgtoID: TIntegerField;
    qFormaPgtoNOME: TStringField;
    qFormaPgtoCHEQUE: TStringField;
    sdsChequePend: TSQLDataSet;
    dspChequePend: TDataSetProvider;
    cdsChequePend: TClientDataSet;
    cdsChequePendID: TIntegerField;
    cdsChequePendEMITIDO_POR: TStringField;
    cdsChequePendRECEBIDO_DE: TIntegerField;
    cdsChequePendTITULAR: TStringField;
    cdsChequePendAGENCIA: TStringField;
    cdsChequePendCONTA: TStringField;
    cdsChequePendNUM_CHEQUE: TStringField;
    cdsChequePendDTEMISSAO: TDateField;
    cdsChequePendDTBOM_PARA: TDateField;
    cdsChequePendVALOR: TFloatField;
    cdsChequePendFONE_CONTATO: TStringField;
    cdsChequePendEMITIDO_PARA: TIntegerField;
    cdsChequePendFILIAL: TIntegerField;
    cdsChequePendID_CONTA: TIntegerField;
    cdsChequePendID_BANCO: TIntegerField;
    cdsChequePendNOMINAL: TStringField;
    cdsChequePendDTCOMPENSADO: TDateField;
    cdsChequePendUTILIZADO_PARA: TMemoField;
    cdsChequePendID_CONTA_ORCAMENTO: TIntegerField;
    cdsChequePendSTATUS: TStringField;
    cdsChequePendNOME_CLIENTE: TStringField;
    dsChequePend: TDataSource;
    cdsChequePendSELECIONADO: TStringField;
    sdsCheque_TitTIPO_MOV: TIntegerField;
    cdsCheque_TitTIPO_MOV: TIntegerField;
    sdsChequeSTATUS: TStringField;
    cdsChequeSTATUS: TStringField;
    cdsChequePendDESC_EMITENTE: TStringField;
    qChequeTit: TSQLQuery;
    qChequeTitID: TIntegerField;
    qChequeTitITEM: TIntegerField;
    qChequeTitID_DUPLICATA: TIntegerField;
    qChequeTitITEM_HIST: TIntegerField;
    qChequeTitTIPO_MOV: TIntegerField;
    sdsCheque_TitDEVOLVIDO: TStringField;
    cdsCheque_TitDEVOLVIDO: TStringField;
    sdsCheque_Hist: TSQLDataSet;
    cdsCheque_Hist: TClientDataSet;
    dsCheque_Hist: TDataSource;
    sdsCheque_HistID: TIntegerField;
    sdsCheque_HistITEM: TIntegerField;
    sdsCheque_HistDTMOVIMENTO: TDateField;
    sdsCheque_HistTIPO_HIST: TStringField;
    cdsChequesdsCheque_Hist: TDataSetField;
    cdsCheque_HistID: TIntegerField;
    cdsCheque_HistITEM: TIntegerField;
    cdsCheque_HistDTMOVIMENTO: TDateField;
    cdsCheque_HistTIPO_HIST: TStringField;
    sdsCheque_TitDATA: TDateField;
    cdsCheque_TitDATA: TDateField;
    mChequeAgencia: TStringField;
    mChequeCodCompensacao: TIntegerField;
    mChequeNumConta: TStringField;
    cdsContasNUMCONTA: TStringField;
    sdsChequeCODCOMPENSACAO: TIntegerField;
    cdsChequeCODCOMPENSACAO: TIntegerField;
    cdsContasAGENCIA: TStringField;
    sdsDuplicataNGR: TStringField;
    cdsDuplicataNGR: TStringField;
    qParametros_FinUSA_NGR: TStringField;
    qParametros_FinUSA_APROVA_DUP: TStringField;
    sdsDuplicataAPROVADO: TStringField;
    sdsDuplicataDTAPROVADO: TDateField;
    cdsDuplicataAPROVADO: TStringField;
    cdsDuplicataDTAPROVADO: TDateField;
    qParametros_UsuarioPERMITE_APROVAR_DUP: TStringField;
    cdsDuplicata_ConsultaNGR: TStringField;
    cdsDuplicata_ConsultaAPROVADO: TStringField;
    qParametros_FinMANTER_DUP_CANC: TStringField;
    sdsDuplicataCANCELADA: TStringField;
    cdsDuplicataCANCELADA: TStringField;
    sdsDuplicata_Cob: TSQLDataSet;
    cdsDuplicata_Cob: TClientDataSet;
    sdsDuplicata_CobID: TIntegerField;
    sdsDuplicata_CobITEM: TIntegerField;
    sdsDuplicata_CobID_OCORRENCIA: TIntegerField;
    sdsDuplicata_CobDATA: TDateField;
    sdsDuplicata_CobDT_VENCIMENTO: TDateField;
    sdsDuplicata_CobUSUARIO: TStringField;
    sdsDuplicata_CobDTUSUARIO: TDateField;
    sdsDuplicata_CobHRUSUARIO: TTimeField;
    sdsDuplicata_CobDTREMESSA: TDateField;
    cdsDuplicatasdsDuplicata_Cob: TDataSetField;
    cdsDuplicata_CobID: TIntegerField;
    cdsDuplicata_CobITEM: TIntegerField;
    cdsDuplicata_CobID_OCORRENCIA: TIntegerField;
    cdsDuplicata_CobDATA: TDateField;
    cdsDuplicata_CobDT_VENCIMENTO: TDateField;
    cdsDuplicata_CobUSUARIO: TStringField;
    cdsDuplicata_CobDTUSUARIO: TDateField;
    cdsDuplicata_CobHRUSUARIO: TTimeField;
    cdsDuplicata_CobDTREMESSA: TDateField;
    dsDuplicata_Cob: TDataSource;
    sdsOcorrencia: TSQLDataSet;
    dspOcorrencia: TDataSetProvider;
    cdsOcorrencia: TClientDataSet;
    cdsOcorrenciaID: TIntegerField;
    cdsOcorrenciaCODIGO: TStringField;
    cdsOcorrenciaNOME: TStringField;
    cdsOcorrenciaTIPO_REG: TStringField;
    cdsOcorrenciaID_BANCO: TIntegerField;
    dsOcorrencia: TDataSource;
    sdsDuplicata_CobID_DUPLICATA_HIST: TIntegerField;
    sdsDuplicata_CobID_CONTA: TIntegerField;
    cdsDuplicata_CobID_DUPLICATA_HIST: TIntegerField;
    cdsDuplicata_CobID_CONTA: TIntegerField;
    sdsDuplicataDTVENCIMENTO_INI: TDateField;
    cdsDuplicataDTVENCIMENTO_INI: TDateField;
    cdsOcorrenciaTIPO_OCO: TStringField;
    cdsDuplicata_ConsultaCANCELADA: TStringField;
    cdsDuplicata_ConsultaINF_SPC: TStringField;
    cdsContaOrcamentoSUPERIOR: TStringField;
    cdsPessoaFUNCIONARIO_CONTA_ID: TIntegerField;
    cdsPessoaTP_FUNCIONARIO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsDuplicata_ConsultaCalcFields(DataSet: TDataSet);
    procedure cdsDuplicataNewRecord(DataSet: TDataSet);
    procedure cdsDuplicata_HistNewRecord(DataSet: TDataSet);
    procedure dspDuplicataUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsDuplicataBeforePost(DataSet: TDataSet);
    procedure cdsChequeBeforePost(DataSet: TDataSet);
    procedure cdsFinanceiroReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure frxReport1BeforePrint(Sender: TfrxReportComponent);
    procedure cdsDuplicata_HistCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    fDMCadExtComissao: TDMCadExtComissao;

    procedure prc_Abrir_Financeiro;
    procedure prc_Abrir_Cheque(ID : Integer);
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgErro: String;
    ctCommand: String;
    ctFinanceiro: String;
    ctPessoa: String;
    ctDuplicata_Consulta: String;
    ctPagto: String;
    ctTotalAtraso: String;
    ctDescontada_Consulta: String;
    ctChequePend : String;
    vDtUltPagamento: TDateTime;//Esta data é usada para o estorno
    vID_ContaPgtoSel: Integer;
    vDtPgtoSel, vDataIni, vDataFim: TDateTime;
    vID_FormaPgto: Integer;
    vNum_Cheque: Integer;
    vDtCheque: TDateTime;
    vID_Banco_Cheque: Integer;
    vGerou_Automatico: String; //S=Gerou  N=Erro  C=Cancelou
    vTipo_RP: String;
    vObs_Original: String;
    vNumDup_Ini, vNumDup_Fin: Integer;
    vGerou_Descontada: Boolean;
    vID_Cheque: Integer;
    vTipo_Rel : String;

    vCReceber_Tot, vCReceber_Pago_Tot, vCReceber_Pend_Tot, vCReceber_Atraso_Tot: Real;
    vCPagar_Tot, vCPagar_Pago_Tot, vCPagar_Pend_Tot, vCPagar_Atraso_Tot: Real;
    vCheque_Tot, vCheque_Atraso_Tot: Real;
    vCReceber_Cartorio_Tot, vCReceber_Protesto_Tot: Real;
    vCPagar_Cartorio_Tot, vCPagar_Protesto_Tot: Real;

    procedure prc_Localizar(ID: Integer);
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
    procedure prc_Gravar_Dupicata_Hist(Tipo, Historico: String; Vlr_Pagamento, Vlr_Juros, Vlr_Desconto,
      Vlr_Despesa, Vlr_Taxa, Vlr_Multa: Real; ID_Forma_Pagamento: Integer = 0 ; ID_Descontada: Integer = 0 );
    procedure prc_Gravar_Financeiro(Valor: Real; Tipo: String; ID_Forma_Pagamento: Integer = 0;
      ComDesconto: String = '');//P=Pagamento  J=Juros  D=Despesas  M=Multa
    procedure prc_Estorno_Pag(Usar_Transaction: Boolean = True);
    procedure prc_Gravar_Cheque;
    procedure prc_Abrir_Pessoa(Tipo: String);

    function fnc_Erro_Registro(Automatica: Boolean = False): Boolean;
    function fnc_Gravar_ExtComissao: Integer;

    function fnc_Proxima_Duplicata: Integer;

    function fnc_Qtd_Dias(DtVencimento, DtAtual: TDatetime): Integer;
    function fnc_Calcular_Juros(Qtd_Dias: Integer ; Perc_Juros, Valor: Real): Real;

    procedure prc_Controle;
    procedure prc_Desfazer_Descontada;
    procedure prc_Abrir_Carteira(Id_banco:Integer);
    procedure prc_Gravar_ChequeHist(Devolvido : String);

    procedure prc_Inserir_Cob;
  end;

var
  DMCadDuplicata: TDMCadDuplicata;

implementation

//uses DmdDatabase, StdConvs, LogProvider, SysInit;
uses DmdDatabase, uUtilPadrao, DateUtils;

{$R *.dfm}

{ TDMCadDuplicata}

procedure TDMCadDuplicata.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsDuplicata.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('DUPLICATA',0);

  cdsDuplicata.Insert;
  cdsDuplicataID.AsInteger                := vAux;
  //cdsDuplicataTIPO_ES.AsString            := 'E';
  cdsDuplicataDTEMISSAO.AsDateTime        := Date;
  cdsDuplicataPROTESTADO.AsString         := 'N';
  cdsDuplicataPAGO_CARTORIO.AsString      := 'N';
  cdsDuplicataTRANSFERENCIA_ICMS.AsString := 'N';
  cdsDuplicataARQUIVO_GERADO.AsString     := 'N';
  cdsDuplicataIMP_BOLETO.AsString         := 'N';
  cdsDuplicataBOLETO_IMP.AsString         := 'N';
  cdsDuplicataINSTRUCAO_PROTESTO.AsString := 'N';
  cdsDuplicataVLR_PAGO.AsFloat            := 0;
    //12/07/2016
  if vTerminal <= 0 then
    cdsDuplicataID_TERMINAL.Clear
  else
    cdsDuplicataID_TERMINAL.AsInteger := vTerminal;
end;

procedure TDMCadDuplicata.prc_Excluir;
begin
  if not(cdsDuplicata.Active) or (cdsDuplicata.IsEmpty) then
    exit;
  cdsDuplicata.Delete;
  cdsDuplicata.ApplyUpdates(0);
end;

procedure TDMCadDuplicata.prc_Gravar;
begin
  if (cdsDuplicataTIPO_ES.AsString = 'S') or (cdsDuplicataID_VENDEDOR.AsInteger <= 0) then
    cdsDuplicataID_VENDEDOR.Clear;
  if cdsDuplicataID_BANCO.AsInteger <= 0 then
    cdsDuplicataID_BANCO.Clear;
  if cdsDuplicataID_TIPOCOBRANCA.AsInteger <= 0 then
    cdsDuplicataID_TIPOCOBRANCA.Clear;
  if cdsDuplicataID_CONTA.AsInteger <= 0 then
    cdsDuplicataID_CONTA.Clear;
  if cdsDuplicataID_CONTA_BOLETO.AsInteger <= 0 then
    cdsDuplicataID_CONTA_BOLETO.Clear;
  if cdsDuplicataID_CONTA_ORCAMENTO.AsInteger <= 0 then
    cdsDuplicataID_CONTA_ORCAMENTO.Clear;
  vMsgErro := '';
  if (fnc_Erro_Registro) or (trim(vMsgErro) <> '') then
    Exit;
  cdsDuplicata.Post;
  prc_Gravar_Dupicata_Hist('ENT','ENTRADA DO TITULOS',cdsDuplicataVLR_PARCELA.AsFloat,0,0,0,0,0);

  cdsDuplicata.ApplyUpdates(0);
end;

procedure TDMCadDuplicata.prc_Localizar(ID: Integer); //-1 é para inclusão
begin
  cdsDuplicata.Close;
  sdsDuplicata.CommandText := ctCommand;
  if ID <> 0 then
    sdsDuplicata.CommandText := sdsDuplicata.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsDuplicata.Open;
  cdsDuplicata_Hist.Close;
  cdsDuplicata_Hist.Open;
  cdsDuplicata_Hist.Last;
end;

procedure TDMCadDuplicata.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand             := sdsDuplicata.CommandText;
  ctDuplicata_Consulta  := sdsDuplicata_Consulta.CommandText;
  ctFinanceiro          := sdsFinanceiro.CommandText;
  ctTotalAtraso         := qTotalAtraso.SQL.Text;
  ctPagto               := sdsPagto.CommandText;
  ctPessoa              := sdsPessoa.CommandText;
  ctDescontada_Consulta := sdsDescontada_Consulta.CommandText;
  ctChequePend          := sdsChequePend.CommandText;
  prc_Abrir_Pessoa('');
  cdsVendedor.Open;
  cdsTipoCobranca.Open;
  cdsContas.Open;
  cdsFilial.Open;
  cdsCarteira.Open;
  cdsBanco.Open;
  cdsContaOrcamento.Open;
  cdsCadastro_Valores.Open;
  qParametros.Close;
  qParametros.Open;
  qParametros_Fin.Close;
  qParametros_Fin.Open;
  qParametros_Usuario.Close;
  qParametros_Usuario.ParamByName('USUARIO').AsString := vUsuario;
  qParametros_Usuario.Open;
  qParametros_Geral.Close;
  qParametros_Geral.Open;
  qParametros_Com.Close;
  qParametros_Com.Open;
  qParametros_Cta_Orc.Close;
  qParametros_Cta_Orc.Open;
  if qParametros_GeralMOSTRAR_COD_CONTABIL.AsString = 'S' then
    cdsContabil_Ope.Open;
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

procedure TDMCadDuplicata.cdsDuplicata_ConsultaCalcFields(DataSet: TDataSet);
var
  vQtd_Dias: Integer;
  vVlr_Juros_Aux: Real;
begin
  if cdsDuplicata_ConsultaTIPO_LANCAMENTO.AsString = 'CHE' then
  begin
    cdsDuplicata_ConsultaclTipo_Registro.AsString := 'Cheque a Pag';
  end
  else
  if cdsDuplicata_ConsultaTIPO_ES.AsString = 'E' then
  begin
    cdsDuplicata_ConsultaclTipo_Registro.AsString := 'A Receber';
    if (cdsDuplicata_ConsultaDTVENCIMENTO.AsDateTime < Date) and (StrToFloat(FormatFloat('0.00',cdsDuplicata_ConsultaVLR_RESTANTE.AsFloat)) > 0) then
    begin
      vQtd_Dias := fnc_Qtd_Dias(cdsDuplicata_ConsultaDTVENCIMENTO.AsDateTime,Date);
      if vQtd_Dias > 0 then
        vVlr_Juros_Aux := StrToFloat(FormatFloat('0.00',fnc_Calcular_Juros(vQtd_Dias,qParametrosPERC_JUROS_PADRAO.AsFloat,cdsDuplicata_ConsultaVLR_RESTANTE.AsFloat)))
      else
        vVlr_Juros_Aux := StrToFloat(FormatFloat('0.00',0));
      cdsDuplicata_ConsultaclVlr_Juros_Calculado.AsFloat := vVlr_Juros_Aux;
      cdsDuplicata_ConsultaclDias_Atraso.AsInteger       := vQtd_Dias;
    end
    else
    begin
      cdsDuplicata_ConsultaclDias_Atraso.AsInteger := cdsDuplicata_ConsultaQTD_DIASATRASO.AsInteger;
      cdsDuplicata_ConsultaclVlr_Juros_Calculado.AsFloat := StrToFloat(FormatFloat('0.00',cdsDuplicata_ConsultaVLR_JUROSPAGOS.AsFloat));
    end;
  end
  else
  begin
    cdsDuplicata_ConsultaclTipo_Registro.AsString      := 'A Pagar';
    cdsDuplicata_ConsultaclDias_Atraso.AsInteger       := cdsDuplicata_ConsultaQTD_DIASATRASO.AsInteger;
    cdsDuplicata_ConsultaclVlr_Juros_Calculado.AsFloat := StrToFloat(FormatFloat('0.00',cdsDuplicata_ConsultaVLR_JUROSPAGOS.AsFloat));
  end;
end;

procedure TDMCadDuplicata.prc_Gravar_Dupicata_Hist(Tipo, Historico: String; Vlr_Pagamento, Vlr_Juros, Vlr_Desconto,
  Vlr_Despesa, Vlr_Taxa, Vlr_Multa: Real; ID_Forma_Pagamento: Integer = 0 ; ID_Descontada: Integer = 0);
var
  vItemAux: Integer;
  vID_ExtComissao: Integer;
  vExiste_Hist: Boolean;
begin
  cdsDuplicata_Hist.Last;
  vItemAux := cdsDuplicata_HistITEM.AsInteger;
  vItemAux := vItemAux + 1;

  vExiste_Hist := False;
  if Tipo = 'ENT' then
  begin
    if cdsDuplicata_Hist.Locate('TIPO_HISTORICO',Tipo,([Locaseinsensitive])) then
      vExiste_Hist := True;
  end;

  if vExiste_Hist then
    cdsDuplicata_Hist.Edit
  else
  begin
    cdsDuplicata_Hist.Insert;
    cdsDuplicata_HistID.AsInteger            := cdsDuplicataID.AsInteger;
    cdsDuplicata_HistITEM.AsInteger          := vItemAux;
    cdsDuplicata_HistTIPO_HISTORICO.AsString := Tipo;
    cdsDuplicata_HistID_HISTORICO.AsInteger  := 0;
    cdsDuplicata_HistID_COMISSAO.AsInteger   := 0;
  end;
  cdsDuplicata_HistDTLANCAMENTO.AsDateTime := cdsDuplicataDTEMISSAO.AsDateTime;
  cdsDuplicata_HistDTHISTORICO.AsDateTime  := Date;
  cdsDuplicata_HistTIPO_ES.AsString        := cdsDuplicataTIPO_ES.AsString;
  cdsDuplicata_HistCOMPLEMENTO.AsString    := Historico;
  cdsDuplicata_HistID_DESCONTADA.AsInteger := ID_Descontada;
  if Tipo = 'ENT' then
  begin
    if trim(Historico) = '' then
      cdsDuplicata_HistCOMPLEMENTO.AsString := 'ENTRADA DO TITULO';
    cdsDuplicata_HistVLR_LANCAMENTO.AsFloat := Vlr_Pagamento;
  end
  else
  if Tipo = 'PAG' then
  begin
    if trim(Historico) = '' then
    begin
      if (cdsDuplicataTIPO_ES.AsString = 'E') and (mCheque.RecordCount > 0) then
        cdsDuplicata_HistCOMPLEMENTO.AsString := 'PAGAMENTO DE TITULO COM ' + IntToStr(mCheque.RecordCount) + ' CHEQUES'
      else
        cdsDuplicata_HistCOMPLEMENTO.AsString := 'PAGAMENTO DE TITULO';
    end;
    if copy(Historico,1,3) = 'LCA' then
      cdsDuplicata_HistCOMPLEMENTO.AsString := cdsDuplicata_HistCOMPLEMENTO.AsString + ' EM CARTÓRIO';
    if StrToFloat(FormatFloat('0.00',Vlr_Desconto)) > 0 then
      cdsDuplicata_HistCOMPLEMENTO.AsString    := cdsDuplicata_HistCOMPLEMENTO.AsString + ' - COM DESCONTO';
    cdsDuplicata_HistVLR_PAGAMENTO.AsFloat     := StrToFloat(FormatFloat('0.00',Vlr_Pagamento));
    cdsDuplicata_HistVLR_JUROSPAGOS.AsFloat    := StrToFloat(FormatFloat('0.00',Vlr_Juros));
    cdsDuplicata_HistVLR_DESCONTOS.AsFloat     := StrToFloat(FormatFloat('0.00',Vlr_Desconto));
    cdsDuplicata_HistVLR_DESPESAS.AsFloat      := StrToFloat(FormatFloat('0.00',Vlr_Despesa));
    cdsDuplicata_HistDTLANCAMENTO.AsDateTime   := cdsDuplicataDTULTPAGAMENTO.AsDateTime;
    cdsDuplicata_HistVLR_TAXA_BANCARIA.AsFloat := StrToFloat(FormatFloat('0.00',Vlr_Taxa));
    cdsDuplicata_HistVLR_MULTA.AsFloat         := StrToFloat(FormatFloat('0.00',Vlr_Multa));
  end;
  if cdsDuplicataID_CONTA.AsInteger > 0 then
    cdsDuplicata_HistID_CONTA.AsInteger := cdsDuplicataID_CONTA.AsInteger;
  cdsDuplicata_HistID_FORMA_PAGAMENTO.AsInteger := ID_Forma_Pagamento;
  if (Tipo = 'PAG')and (cdsDuplicataTIPO_ES.AsString = 'S') and not(mCheque.IsEmpty) then
  begin
    cdsDuplicata_HistNUMCHEQUE.AsInteger          := mChequeNum_Cheque.AsInteger;
    cdsDuplicata_HistDTPREVISAO_CHEQUE.AsDateTime := mChequeDtBomPara.AsDateTime;
  end;
  cdsDuplicata_Hist.Post;

  //Gravar comissão, foi incluido dia 07/01/2013
  if Tipo <> 'PAG' then
    exit;

  vID_ExtComissao := fnc_Gravar_ExtComissao;
  cdsDuplicata_Hist.Edit;
  cdsDuplicata_HistID_COMISSAO.AsInteger := vID_ExtComissao;
  cdsDuplicata_Hist.Post;

  //Foi tirado esse IF no dia 04/01/2018 para gravar os cheques recebidos de clientes
  //if cdsDuplicataTIPO_ES.AsString = 'S' then
    prc_Gravar_Cheque;

  {if vID_ExtComissao > 0 then
  begin
    cdsDuplicata_Hist.Edit;
    cdsDuplicata_HistID_COMISSAO.AsInteger := vID_ExtComissao;
    cdsDuplicata_Hist.Post;
  end;}
  //***************************
end;

procedure TDMCadDuplicata.cdsDuplicataNewRecord(DataSet: TDataSet);
begin
  cdsDuplicataVLR_COMISSAO.AsFloat     := 0;
  cdsDuplicataVLR_DESCONTO.AsFloat     := 0;
  cdsDuplicataVLR_DESPESAS.AsFloat     := 0;
  cdsDuplicataVLR_DEVOLUCAO.AsFloat    := 0;
  cdsDuplicataVLR_JUROSPAGOS.AsFloat   := 0;
  cdsDuplicataVLR_MULTA.AsFloat        := 0;
  cdsDuplicataVLR_PAGO.AsFloat         := 0;
  cdsDuplicataVLR_PARCELA.AsFloat      := 0;
  cdsDuplicataVLR_RESTANTE.AsFloat     := 0;
  cdsDuplicataNUMNOTA.AsInteger        := 0;
  cdsDuplicataSERIE.AsString           := '';
  cdsDuplicataID_NOTA.AsInteger        := 0;
  cdsDuplicataIMP_BOLETO.AsString      := 'N';
  cdsDuplicataTIPO_MOV.AsString        := 'D';
  cdsDuplicataTITULO_CARTORIO.AsString := 'N';
  cdsDuplicataCONFIRMA_PGTO.AsString   := 'N';
  cdsDuplicataREGIME_CAIXA.AsString    := 'N';
  cdsDuplicataNGR.AsString             := 'N';
  cdsDuplicataAPROVADO.AsString        := 'N';
  cdsDuplicataCANCELADA.AsString       := 'N';
end;

procedure TDMCadDuplicata.prc_Gravar_Financeiro(Valor: Real; Tipo: String; ID_Forma_Pagamento:
  Integer = 0; ComDesconto: String = '');//P=Pagamento  J=Juros  D=Despesas T=Taxa Bancaria
var
  vAux: Integer;
  vTextoTipo: String;
begin
  if not cdsFinanceiro.Active then
    prc_Abrir_Financeiro;

  if Tipo = 'T' then
    vTextoTipo := ''
  else
  if cdsDuplicataTIPO_ES.AsString = 'E' then
    vTextoTipo := 'Recto.'
  else
    vTextoTipo := 'Pagto.';

  vAux := dmDatabase.ProximaSequencia('FINANCEIRO',0);

  cdsFinanceiro.Insert;
  cdsFinanceiroID.AsInteger := vAux;
  if Tipo = 'T' then
    cdsFinanceiroTIPO_ES.AsString := 'S'
  else
    cdsFinanceiroTIPO_ES.AsString := cdsDuplicataTIPO_ES.AsString;
  cdsFinanceiroID_CONTA.AsInteger           := cdsDuplicataID_CONTA.AsInteger;
  cdsFinanceiroDTMOVIMENTO.AsDateTime       := cdsDuplicataDTULTPAGAMENTO.AsDateTime;
  cdsFinanceiroID_MOVDUPLICATA.AsInteger    := cdsDuplicataID.AsInteger;
  cdsFinanceiroITEM_MOVDUPLICATA.AsInteger  := cdsDuplicata_HistITEM.AsInteger;
  cdsFinanceiroVLR_MOVIMENTO.AsFloat        := Valor;
  cdsFinanceiroID_FORMA_PAGAMENTO.AsInteger := ID_Forma_Pagamento;

  qPessoa.Close;
  qPessoa.ParamByName('CODIGO').AsInteger := cdsDuplicataID_PESSOA.AsInteger;
  qPessoa.Open;
  if Tipo = 'T'  then
    cdsFinanceiroHISTORICO_COMPL.AsString := vTextoTipo + 'Taxa Bancária ref. Doc nº ' + cdsDuplicataNUMDUPLICATA.AsString +
                                             ' Parc.:' + cdsDuplicataPARCELA.AsString + ' de ' + qPessoaNOME.AsString
  else
  if Tipo = 'D'  then
    cdsFinanceiroHISTORICO_COMPL.AsString := vTextoTipo + ' de Despesa ref. Doc nº ' + cdsDuplicataNUMDUPLICATA.AsString +
                                             ' Parc.:' + cdsDuplicataPARCELA.AsString + ' de ' + qPessoaNOME.AsString
  else
  if Tipo = 'J' then
    cdsFinanceiroHISTORICO_COMPL.AsString := vTextoTipo + ' de Juros ref. Doc nº ' + cdsDuplicataNUMDUPLICATA.AsString +
                                             ' Parc.:' + cdsDuplicataPARCELA.AsString + ' de ' + qPessoaNOME.AsString
  else
  if Tipo = 'M' then
    cdsFinanceiroHISTORICO_COMPL.AsString := vTextoTipo + ' de Multa ref. Doc nº ' + cdsDuplicataNUMDUPLICATA.AsString +
                                             ' Parc.:' + cdsDuplicataPARCELA.AsString + ' de ' + qPessoaNOME.AsString
  else
  begin
   cdsFinanceiroHISTORICO_COMPL.AsString := vTextoTipo + ' ref. Doc nº ' + cdsDuplicataNUMDUPLICATA.AsString +
                                            ' Parc.:' + cdsDuplicataPARCELA.AsString + ' de ' + qPessoaNOME.AsString;
   if ComDesconto = 'S' then
     cdsFinanceiroHISTORICO_COMPL.AsString := cdsFinanceiroHISTORICO_COMPL.AsString + ' - com desconto';
  end;
  cdsFinanceiroHISTORICO_COMPL.AsString := UpperCase(cdsFinanceiroHISTORICO_COMPL.AsString);
  cdsFinanceiroID_PESSOA.AsInteger := cdsDuplicataID_PESSOA.AsInteger;
  cdsFinanceiroFILIAL.AsInteger := cdsDuplicataFILIAL.AsInteger;
  cdsFinanceiroDTUSUARIO.AsDateTime := Date;
  cdsFinanceiroHRUSUARIO.AsDateTime := Now;
  cdsFinanceiroUSUARIO.AsString     := vUsuario;
  if (Tipo = 'T') and (qParametrosID_CONTA_ORC_TAXA_BANCARIA_REC.AsInteger > 0) and (cdsDuplicataTIPO_ES.AsString = 'E') then
    cdsFinanceiroID_CONTA_ORCAMENTO.AsInteger := qParametrosID_CONTA_ORC_TAXA_BANCARIA_REC.AsInteger
  else
  if (Tipo = 'D') and (qParametrosID_CONTA_ORC_DESPESA_REC.AsInteger > 0) and (cdsDuplicataTIPO_ES.AsString = 'E') then
    cdsFinanceiroID_CONTA_ORCAMENTO.AsInteger := qParametrosID_CONTA_ORC_DESPESA_REC.AsInteger
  else
  if (Tipo = 'D') and (qParametrosID_CONTA_ORC_DESPESA_PAG.AsInteger > 0) and (cdsDuplicataTIPO_ES.AsString = 'S') then
    cdsFinanceiroID_CONTA_ORCAMENTO.AsInteger := qParametrosID_CONTA_ORC_DESPESA_PAG.AsInteger
  else
  if (Tipo = 'J') and (qParametrosID_CONTA_ORC_JUROS_REC.AsInteger > 0) and (cdsDuplicataTIPO_ES.AsString = 'E') then
    cdsFinanceiroID_CONTA_ORCAMENTO.AsInteger := qParametrosID_CONTA_ORC_JUROS_REC.AsInteger
  else
  if (Tipo = 'J') and (qParametrosID_CONTA_ORC_JUROS_PAG.AsInteger > 0) and (cdsDuplicataTIPO_ES.AsString = 'S') then
    cdsFinanceiroID_CONTA_ORCAMENTO.AsInteger := qParametrosID_CONTA_ORC_JUROS_PAG.AsInteger
  else
  if (Tipo = 'M') and (qParametros_Cta_OrcID_CONTA_ORC_MULTA_REC.AsInteger > 0) and (cdsDuplicataTIPO_ES.AsString = 'E') then
    cdsFinanceiroID_CONTA_ORCAMENTO.AsInteger := qParametros_Cta_OrcID_CONTA_ORC_MULTA_REC.AsInteger
  else
  if (Tipo = 'M') and (qParametros_Cta_OrcID_CONTA_ORC_MULTA_PAG.AsInteger > 0) and (cdsDuplicataTIPO_ES.AsString = 'S') then
    cdsFinanceiroID_CONTA_ORCAMENTO.AsInteger := qParametros_Cta_OrcID_CONTA_ORC_MULTA_PAG.AsInteger
  else
  if cdsDuplicataID_CONTA_ORCAMENTO.AsInteger > 0 then
    cdsFinanceiroID_CONTA_ORCAMENTO.AsInteger := cdsDuplicataID_CONTA_ORCAMENTO.AsInteger
  else
    cdsFinanceiroID_CONTA_ORCAMENTO.Clear;
  //12/07/2016
  //cdsFinanceiroID_TERMINAL.AsInteger := cdsDuplicataID_TERMINAL.AsInteger;
  //02/02/2017  para respeitar o terminal que esta fazendo o pagamento
  if vTerminal <= 0 then
    cdsFinanceiroID_TERMINAL.Clear
  else
    cdsFinanceiroID_TERMINAL.AsInteger := vTerminal;
  cdsFinanceiro.Post;
  cdsFinanceiro.ApplyUpdates(0);
end;

procedure TDMCadDuplicata.prc_Abrir_Financeiro;
begin
  cdsFinanceiro.Close;
  sdsFinanceiro.CommandText := ctFinanceiro + ' WHERE 0 = 1 ';
  cdsFinanceiro.Open;
end;

procedure TDMCadDuplicata.cdsDuplicata_HistNewRecord(DataSet: TDataSet);
begin
  cdsDuplicata_HistVLR_PAGAMENTO.AsFloat      := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicata_HistVLR_JUROSPAGOS.AsFloat     := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicata_HistVLR_MULTA.AsFloat          := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicata_HistVLR_DESCONTOS.AsFloat      := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicata_HistVLR_DESPESAS.AsFloat       := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicata_HistVLR_DEVOLUCAO.AsFloat      := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicata_HistVLR_JUROSCALCULADO.AsFloat := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicata_HistID_COMISSAO.AsInteger      := 0;
  cdsDuplicata_HistNUMCHEQUE.AsInteger        := 0;
  cdsDuplicata_HistVLR_LANCAMENTO.AsFloat     := 0;
  cdsDuplicata_HistDTPREVISAO_CHEQUE.Clear;
end;

procedure TDMCadDuplicata.prc_Estorno_Pag(Usar_Transaction: Boolean = True);
var
  ID: TTransactionDesc;
  vItemAux: Integer;
  vOpcaoAux : String;
  vFlag : Boolean;
begin
  vItemAux := cdsDuplicata_HistITEM.AsInteger;
  if Usar_Transaction then
  begin
    ID.TransactionID  := 2;
    ID.IsolationLevel := xilREADCOMMITTED;
    dmDatabase.scoDados.StartTransaction(ID);
  end;

  try
    cdsDuplicata.Edit;
    cdsDuplicataVLR_PAGO.AsFloat          := StrToFloat(FormatFloat('0.00',cdsDuplicataVLR_PAGO.AsFloat - cdsDuplicata_HistVLR_PAGAMENTO.AsFloat));
    cdsDuplicataVLR_JUROSPAGOS.AsFloat    := StrToFloat(FormatFloat('0.00',cdsDuplicataVLR_JUROSPAGOS.AsFloat - cdsDuplicata_HistVLR_JUROSPAGOS.AsFloat));
    cdsDuplicataVLR_MULTA.AsFloat         := StrToFloat(FormatFloat('0.00',cdsDuplicataVLR_MULTA.AsFloat - cdsDuplicata_HistVLR_MULTA.AsFloat));
    cdsDuplicataVLR_DESCONTO.AsFloat      := StrToFloat(FormatFloat('0.00',cdsDuplicataVLR_DESCONTO.AsFloat - cdsDuplicata_HistVLR_DESCONTOS.AsFloat));
    cdsDuplicataVLR_DESPESAS.AsFloat      := StrToFloat(FormatFloat('0.00',cdsDuplicataVLR_DESPESAS.AsFloat - cdsDuplicata_HistVLR_DESPESAS.AsFloat));
    cdsDuplicataVLR_TAXA_BANCARIA.AsFloat := StrToFloat(FormatFloat('0.00',cdsDuplicataVLR_TAXA_BANCARIA.AsFloat - cdsDuplicata_HistVLR_TAXA_BANCARIA.AsFloat));
    cdsDuplicataVLR_DEVOLUCAO.AsFloat     := StrToFloat(FormatFloat('0.00',cdsDuplicataVLR_DEVOLUCAO.AsFloat - cdsDuplicata_HistVLR_DEVOLUCAO.AsFloat));
    cdsDuplicataVLR_RESTANTE.AsFloat      := StrToFloat(FormatFloat('0.00',cdsDuplicataVLR_RESTANTE.AsFloat +
                                          cdsDuplicata_HistVLR_PAGAMENTO.AsFloat + cdsDuplicata_HistVLR_DESCONTOS.AsFloat + cdsDuplicata_HistVLR_DEVOLUCAO.AsFloat));
    cdsDuplicataPAGO_CARTORIO.AsString := 'N';
    cdsDuplicataCONFIRMA_PGTO.AsString := 'N';
    if vDtUltPagamento < 10 then
      cdsDuplicataDTULTPAGAMENTO.Clear
    else
      cdsDuplicataDTULTPAGAMENTO.AsDateTime := vDtUltPagamento;
    cdsDuplicata.Post;
    if cdsDuplicata_HistITEM.AsInteger <> vItemAux then
      cdsDuplicata_Hist.Locate('ITEM',vItemAux,[loCaseInsensitive]);
    cdsDuplicata_Hist.Delete;

    if cdsDuplicataTIPO_ES.AsString = 'S' then
    begin
      qChequeTit.Close;
      qChequeTit.ParamByName('ID_DUPLICATA').AsInteger := cdsDuplicataID.AsInteger;
      qChequeTit.ParamByName('ITEM_HIST').AsInteger    := vItemAux;
      qChequeTit.Open;
      if not qChequeTit.IsEmpty then
      begin
        vFlag := False;
        while not vFlag do
        begin
          vOpcaoAux := InputBox('','Informar "E" para excluir o Mov. dos Cheques e "D" para marcar como devolvido', '');
          vOpcaoAux := trim(UpperCase(vOpcaoAux));
          if (vOpcaoAux = 'E') or (vOpcaoAux = 'D') then
            vFlag := True; 
        end;
        while qChequeTit.Eof do
        begin
          prc_Abrir_Cheque(qChequeTitID.AsInteger);
          if cdsCheque_Tit.Locate('ID;ITEM',VarArrayOf([qChequeTitID.AsInteger,qChequeTitITEM.AsInteger]),[locaseinsensitive]) then
          begin
            if vOpcaoAux = 'E' then
            begin
              cdsCheque_Tit.Delete;
              cdsCheque.Edit;
              cdsChequeSTATUS.AsString := '0';
              cdsCheque.Post;
            end
            else
            begin
              cdsCheque_Tit.Edit;
              cdsCheque_TitDEVOLVIDO.AsString := 'S';
              cdsCheque_Tit.Post;
              cdsCheque.Edit;
              cdsChequeSTATUS.AsString := '0';
              cdsCheque.Post;
              prc_Gravar_ChequeHist('S');
            end;
            cdsCheque.ApplyUpdates(0);
          end;
          qChequeTit.Next;
        end;
      end;
    end;

    cdsDuplicata.ApplyUpdates(0);

    if Usar_Transaction then
      dmDatabase.scoDados.Commit(ID);
  except
    begin
      if Usar_Transaction then
        dmDatabase.scoDados.Rollback(ID);
      raise;
    end;
  end;
end;

procedure TDMCadDuplicata.dspDuplicataUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

function TDMCadDuplicata.fnc_Gravar_ExtComissao: Integer;
var
  vBaseAux: real;
  vDtComissao: TDateTime;
begin
  Result := 0;

  if (StrToFloat(FormatFloat('0.00',cdsDuplicataPERC_COMISSAO.AsFloat)) <= 0) or
     ((cdsDuplicataID_VENDEDOR.AsInteger <= 0) or (cdsDuplicataID_VENDEDOR.IsNull))  then
    exit;

  if not cdsVendedor.Locate('CODIGO',cdsDuplicataID_VENDEDOR.AsInteger,[loCaseInsensitive]) then
    exit;

  if (cdsVendedorTIPO_COMISSAO.AsString <> 'D') and (cdsVendedorTIPO_COMISSAO.AsString <> 'P') then
    exit;

  fDMCadExtComissao := TDMCadExtComissao.Create(Self);

  try
    if (StrToFloat(FormatFloat('0.00',cdsDuplicataPERC_COMISSAO_PAGAR_NOTA.AsFloat)) > 0) then
      vBaseAux := StrToFloat(FormatFloat('0.00',cdsDuplicata_HistVLR_PAGAMENTO.AsFloat * cdsDuplicataPERC_COMISSAO_PAGAR_NOTA.AsFloat / 100))
    else
      vBaseAux := StrToFloat(FormatFloat('0.00',cdsDuplicata_HistVLR_PAGAMENTO.AsFloat));
    if qParametros_ComCOMISSAO_DESCONTAR.AsString = 'S' then
    begin
      if (StrToFloat(FormatFloat('0.00',cdsDuplicataPERC_BASE_COMISSAO.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00',cdsDuplicataPERC_BASE_COMISSAO.AsFloat)) < 100) then
        vBaseAux := StrToFloat(FormatFloat('0.00',vBaseAux * cdsDuplicataPERC_BASE_COMISSAO.AsFloat / 100));
    end;
    //02/09/2015 devido a cobrança descontada
    if cdsDuplicataID_DESCONTADA.AsInteger > 0 then
      vDtComissao := cdsDuplicataDTVENCIMENTO.AsDateTime
    else
      vDtComissao := cdsDuplicata_HistDTLANCAMENTO.AsDateTime;

    //Result := fDMCadExtComissao.fnc_Mover_Comissao('ENT',cdsDuplicataSERIE.AsString,'',0,cdsDuplicata_HistDTLANCAMENTO.AsDateTime,
    Result := fDMCadExtComissao.fnc_Mover_Comissao('ENT',cdsDuplicataSERIE.AsString,'',0,vDtComissao,
                                                   cdsDuplicataFILIAL.AsInteger,cdsDuplicataID_VENDEDOR.AsInteger,
                                                   0,cdsDuplicataID.AsInteger,cdsDuplicata_HistITEM.AsInteger,cdsDuplicataNUMNOTA.AsInteger,
                                                   cdsDuplicataID_PESSOA.AsInteger,cdsDuplicataPARCELA.AsInteger,cdsDuplicataID_NOTA_SERVICO.AsInteger,
                                                   cdsDuplicataNUMRPS.AsInteger,cdsDuplicataID_Cupom.AsInteger,
                                                   StrToFloat(FormatFloat('0.00',vBaseAux)),0,
                                                   StrToFloat(FormatFloat('0.000',cdsDuplicataPERC_COMISSAO.AsFloat)),0,cdsDuplicataID_DESCONTADA.AsInteger);
  except
    Result := 0;
    raise;
  end;

  FreeAndNil(fDMCadExtComissao);
end;

function TDMCadDuplicata.fnc_Erro_Registro(Automatica: Boolean = False ): Boolean;
begin
  Result   := True;
  vMsgErro := '';
  if cdsDuplicataID_PESSOA.AsInteger < 1 then
  begin
    if cdsDuplicataTIPO_ES.AsString = 'E' then
      vMsgErro := vMsgErro + #13 + '*** Cliente não informado!'
    else
      vMsgErro := vMsgErro + #13 + '*** Fornecedor não informado!';
  end;
  if trim(cdsDuplicataNUMDUPLICATA.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Nº da Duplicata não informado!';
  if cdsDuplicataVLR_PARCELA.AsFloat <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Valor não informado!';
  if cdsDuplicataDTEMISSAO.AsDateTime < 10 then
    vMsgErro := vMsgErro + #13 + '*** Data de emissão não informada!';
  if not(Automatica) and (cdsDuplicataDTVENCIMENTO.AsDateTime < 10) then
    vMsgErro := vMsgErro + #13 + '*** Data de vencimento não informada!';
  if (cdsDuplicataID_CONTA_ORCAMENTO.AsInteger > 0) and (cdsContaOrcamento.Locate('ID',cdsDuplicataID_CONTA_ORCAMENTO.AsInteger,([Locaseinsensitive]))) and (cdsContaOrcamentoTIPO.AsString <> 'A') then
    vMsgErro := vMsgErro + #13 + '*** Conta Previsão/Orçamento não é analítica!';
  if (cdsDuplicataMES_REF.AsInteger > 0) and (cdsDuplicataMES_REF.AsInteger > 12) then
    vMsgErro := vMsgErro + #13 + '*** Mês de competência inválido!';
  if (cdsDuplicataMES_REF.AsInteger > 0) and (cdsDuplicataANO_REF.AsInteger < 2000) then
    vMsgErro := vMsgErro + #13 + '*** Ano de competência inválido!';
  if trim(cdsDuplicataTIPO_ES.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Tipo Receber/Pagar não informado!';
  if trim(cdsDuplicataTIPO_MOV.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Tipo Doc. não informado!';
  if trim(vMsgErro) <> '' then
    exit;
  Result := False;
end;

procedure TDMCadDuplicata.cdsDuplicataBeforePost(DataSet: TDataSet);
begin
  if cdsDuplicataID_VENDEDOR.AsInteger <= 0 then
    cdsDuplicataID_VENDEDOR.Clear;
  if cdsDuplicataID_CONTA.AsInteger <= 0 then
    cdsDuplicataID_CONTA.Clear;
  if cdsDuplicataID_CONTA_BOLETO.AsInteger <= 0 then
    cdsDuplicataID_CONTA_BOLETO.Clear;
  if cdsDuplicataID_TIPOCOBRANCA.AsInteger <= 0 then
    cdsDuplicataID_TIPOCOBRANCA.Clear;
  if cdsDuplicataID_CONTA_ORCAMENTO.AsInteger <= 0 then
    cdsDuplicataID_CONTA_ORCAMENTO.Clear;
end;

procedure TDMCadDuplicata.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadDuplicata.prc_Gravar_Cheque;
var
  vAux: Integer;
  vInserir : Boolean;
begin
  mCheque.First;
  while not mCheque.Eof do
  begin
    vInserir := True;
    //if (vID_Cheque > 0) and (cdsDuplicataTIPO_ES.AsString = 'S') then
    //  vInserir := False;
    //if vID_Cheque <= 0 then
    if (cdsDuplicataTIPO_ES.AsString = 'S') and (mChequeEmitido_Por.AsString = '1') and (mChequeID_Cheque.AsInteger > 0) then
    begin
      prc_Abrir_Cheque(mChequeID_Cheque.AsInteger);
      if cdsChequeID.AsInteger > 0 then
        vInserir := False;
    end;
    
    if (cdsDuplicataTIPO_ES.AsString = 'S') and (mChequeEmitido_Por.AsString <> '1') then
    begin
      prc_Abrir_Cheque(mChequeID_Cheque.AsInteger);
      cdsCheque.Edit;
      cdsChequeSTATUS.AsString := '6';
    end
    else
    if vInserir then
    begin
      prc_Abrir_Cheque(0);
      vAux := dmDatabase.ProximaSequencia('CHEQUE',0);
      vID_Cheque := vAux;
      cdsCheque.Insert;
      cdsChequeID.AsInteger            := vAux;
      cdsChequeNUM_CHEQUE.AsString     := mChequeNum_Cheque.AsString;
      if trim(mChequeEmitido_Por.AsString) = '' then
        cdsChequeEMITIDO_POR.AsString    := '1'
      else
        cdsChequeEMITIDO_POR.AsString    := mChequeEmitido_Por.AsString;
      cdsChequeTITULAR.AsString        := mChequeTitular.AsString;
      cdsChequeDTEMISSAO.AsDateTime    := cdsDuplicataDTULTPAGAMENTO.AsDateTime;
      if cdsDuplicataTIPO_ES.AsString = 'E' then
        cdsChequeRECEBIDO_DE.AsInteger := cdsDuplicataID_PESSOA.AsInteger;
      cdsChequeDTBOM_PARA.AsDateTime   := mChequeDtBomPara.AsDateTime;
      cdsChequeFONE_CONTATO.AsString   := mChequeFone_Titular.AsString;
      cdsChequeFILIAL.AsInteger        := cdsDuplicataFILIAL.AsInteger;
      if cdsDuplicataTIPO_ES.AsString = 'E' then
      begin
        if mChequeID_Conta.AsInteger > 0 then
          cdsChequeID_CONTA.AsInteger := mChequeID_Conta.AsInteger;
        cdsChequeID_BANCO.AsInteger := mChequeID_Banco.AsInteger;
        cdsChequeNOMINAL.AsString        := '';
        cdsChequeUTILIZADO_PARA.AsString := 'PAGAMENTO DE TITULOS';
        cdsChequeSTATUS.AsString         := '0';
        cdsChequeAGENCIA.AsString         := mChequeAgencia.AsString;
        cdsChequeCONTA.AsString           := mChequeNumConta.AsString;
        cdsChequeCODCOMPENSACAO.AsInteger := mChequeCodCompensacao.AsInteger;
      end
      else
      begin
        cdsChequeID_CONTA.AsInteger      := cdsDuplicataID_CONTA.AsInteger;
        if cdsDuplicataID_BANCO.AsInteger > 0 then
          cdsChequeID_BANCO.AsInteger := cdsDuplicataID_BANCO.AsInteger;
        cdsChequeNOMINAL.AsString        := 'FORNECEDORES';
        cdsChequeUTILIZADO_PARA.AsString := 'PAGAMENTO DE FORNECEDORES';
        cdsChequeSTATUS.AsString         := '6';
        if cdsContasID.AsInteger <> cdsDuplicataID_CONTA.AsInteger then
          cdsContas.Locate('ID',cdsChequeID_CONTA.AsInteger,([Locaseinsensitive]));
        if cdsContasID.AsInteger = cdsChequeID_CONTA.AsInteger then
        begin
          cdsChequeAGENCIA.AsString := cdsContasAGENCIA.AsString;
          cdsChequeCONTA.AsString   := cdsContasNUMCONTA.AsString;
        end;
      end;
      cdsChequeTITULAR.AsString        := mChequeTitular.AsString;
      cdsChequeDTCOMPENSADO.Clear;

      //cdsChequeVALOR.AsFloat         := StrToFloat(FormatFloat('0.00',mChequeVlr_Cheque.AsFloat));
      if cdsDuplicataTIPO_ES.AsString = 'E' then
        cdsChequeVALOR.AsFloat := mChequeVlr_Cheque.AsFloat
      else
        cdsChequeVALOR.AsFloat := StrToFloat(FormatFloat('0.00',cdsChequeVALOR.AsFloat + cdsDuplicata_HistVLR_PAGAMENTO.AsFloat
                                                                + cdsDuplicata_HistVLR_DESPESAS.AsFloat + cdsDuplicata_HistVLR_JUROSPAGOS.AsFloat
                                                                + cdsDuplicata_HistVLR_MULTA.AsFloat));
      if cdsDuplicataID_CONTA_ORCAMENTO.AsInteger > 0 then
        cdsChequeID_CONTA_ORCAMENTO.AsInteger := cdsDuplicataID_CONTA_ORCAMENTO.AsInteger;

      mCheque.Edit;
      mChequeID_Cheque.AsInteger := vID_Cheque;
      mCheque.Post;
    end
    else
    begin
      cdsCheque.Edit;
      cdsChequeVALOR.AsFloat := StrToFloat(FormatFloat('0.00',cdsChequeVALOR.AsFloat + cdsDuplicata_HistVLR_PAGAMENTO.AsFloat
                                                              + cdsDuplicata_HistVLR_DESPESAS.AsFloat + cdsDuplicata_HistVLR_JUROSPAGOS.AsFloat
                                                              + cdsDuplicata_HistVLR_MULTA.AsFloat));
    end;

    cdsCheque.Post;

    cdsCheque_Tit.Last;
    vAux := cdsCheque_TitITEM.AsInteger;
    cdsCheque_Tit.Insert;
    cdsCheque_TitID.AsInteger   := cdsChequeID.AsInteger;
    cdsCheque_TitITEM.AsInteger := vAux + 1;
    cdsCheque_TitID_DUPLICATA.AsInteger := cdsDuplicata_HistID.AsInteger;
    cdsCheque_TitITEM_HIST.AsInteger    := cdsDuplicata_HistITEM.AsInteger;
    cdsCheque_TitDATA.AsDateTime        := cdsDuplicata_HistDTLANCAMENTO.AsDateTime;
    if cdsDuplicataTIPO_ES.AsString = 'E' then
      cdsCheque_TitTIPO_MOV.AsInteger := 1
    else
      cdsCheque_TitTIPO_MOV.AsInteger := 6;
    cdsCheque_Tit.Post;
    cdsCheque.ApplyUpdates(0);

    mCheque.Next;
  end;

end;

procedure TDMCadDuplicata.prc_Abrir_Cheque(ID : Integer);
begin
  cdsCheque.Close;
  if ID > 0 then
    sdsCheque.ParamByName('ID').AsInteger := ID
  else
    sdsCheque.ParamByName('ID').AsInteger := 0;
  cdsCheque.Open;
  cdsCheque_Tit.Close;
  cdsCheque_Tit.Open;
end;

procedure TDMCadDuplicata.cdsChequeBeforePost(DataSet: TDataSet);
begin
  if cdsChequeID_CONTA_ORCAMENTO.AsInteger > 0 then
    cdsChequeID_CONTA_ORCAMENTO.Clear;
end;

procedure TDMCadDuplicata.prc_Abrir_Pessoa(Tipo: String);
begin
  cdsPessoa.Close;
  sdsPessoa.CommandText := ctPessoa;
  if (Tipo = 'R') or (Tipo = 'E') then
    sdsPessoa.CommandText := sdsPessoa.CommandText + ' AND (TP_CLIENTE = ' + QuotedStr('S') + ')'
  else
  if (Tipo = 'P') or (Tipo = 'S') then
    sdsPessoa.CommandText := sdsPessoa.CommandText + ' AND ((TP_FORNECEDOR = ' + QuotedStr('S') + ')' + ' OR (TP_VENDEDOR = '
                           + QuotedStr('S') + ')' + ' OR (TP_FUNCIONARIO = ' + QuotedStr('S') + ')'
                                                  + ' OR (TP_TRANSPORTADORA = ' + QuotedStr('S') + '))'
  else
    sdsPessoa.CommandText := sdsPessoa.CommandText + ' AND ((TP_CLIENTE = ' + QuotedStr('S') + ')' + ' OR (TP_FORNECEDOR = '
                           + QuotedStr('S') + ')' + ' OR (TP_VENDEDOR = ' + QuotedStr('S') + ')' + ' OR (TP_FUNCIONARIO = ' + QuotedStr('S') + ')'
                                                  + ' OR (TP_TRANSPORTADORA = ' + QuotedStr('S') + '))';
  cdsPessoa.Open;
end;

function TDMCadDuplicata.fnc_Qtd_Dias(DtVencimento,
  DtAtual: TDatetime): Integer;
var
  vFlag: Boolean;
  vFeriado: Boolean;
  vQtdAux: Integer;
  vQtdOriginal: Integer;
begin
  vQtdAux := 0;
  if DtAtual > DtVencimento then
  begin
    vFlag    := False;
    vFeriado := False;
    vQtdAux := DaysBetween(DtVencimento,DtAtual);
    vQtdOriginal := vQtdAux;
    if vQtdAux <= 5 then
    begin
      vQtdAux := 0;
      while not vFlag do
      begin
        vQtdAux := vQtdAux + 1;
        DtAtual := DtAtual - 1;
        if (DayOfWeek(DtAtual) = 1) or (DayOfWeek(DtAtual) = 7) then
          vFeriado := True
        else
        begin
          qFeriado.Close;
          qFeriado.ParamByName('DATA').AsDate := DtAtual;
          qFeriado.Open;
          if not qFeriado.IsEmpty then
            vFeriado := True
          else
            vFeriado := False;
        end;
        if (DtAtual = DtVencimento) and (vFeriado) then
          vQtdAux := 0;
        if (DtAtual = DtVencimento) or not(vFeriado) then
        begin
          vFlag   := True;
          vQtdAux := vQtdOriginal;
        end;
      end;
    end;
  end;
  Result := vQtdAux;
end;

function TDMCadDuplicata.fnc_Calcular_Juros(Qtd_Dias: Integer ; Perc_Juros, Valor: Real): Real;
var
  vAux: Real;
begin
  Result := StrtoFloat(FormatFloat('0.00',0));
  if (StrToFloat(FormatFloat('0.00',Valor)) > 0) and (StrToFloat(FormatFloat('0.00',Perc_Juros)) > 0) then
  begin
    vAux   := StrtoFloat(FormatFloat('0.00000',((Valor * Perc_Juros) / 100) / 30));
    vAux   := StrtoFloat(FormatFloat('0.00',vAux * Qtd_Dias));
    Result := StrtoFloat(FormatFloat('0.00',vAux));
  end;
end;

procedure TDMCadDuplicata.cdsFinanceiroReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  if trim(e.Message) <> '' then
    MessageDlg(e.Message + #13 + #13 + '*** Tabela Financeiro não gravada!', mtError, [mbOk], 0);
end;

function TDMCadDuplicata.fnc_Proxima_Duplicata: Integer;
var
  vAux: Integer;
begin
  qProximaDup.Close;
  qProximaDup.ParamByName('TIPO_ES').AsString := cdsDuplicataTIPO_ES.AsString;
  qProximaDup.Open;
  vAux := qProximaDupNUMDUPLICATA_SEQ.AsInteger;
  vAux := vAux + 1;
  if cdsDuplicataTIPO_ES.AsString = 'E' then
    cdsDuplicataNUMDUPLICATA.AsString := 'R.' + FormatFloat('000000',vAux)
  else
    cdsDuplicataNUMDUPLICATA.AsString := 'P.' + FormatFloat('000000',vAux);
  Result := vAux;
end;

procedure TDMCadDuplicata.prc_Controle;
var
  vTipo_ES: String;
  vFilialAux: Integer;
  vNumDuplicata: String;
  vNumNota: Integer;
  vSerie: String;
  vDtEmissao: TDateTime;
  vPerc_Comissao: Real;
  vID_Vendedor, vID_Cliente: Integer;
  vID_Conta, vID_Conta_Boleto: Integer;
  vID_TipoCobranca: Integer;
  vID_ContaOrcamento: Integer;
  vTipo_Mov: String;
  vParcelaAux_Fin: Integer;
  vRegime_Caixa: String;
begin
  vTipo_ES           := cdsDuplicataTIPO_ES.AsString;
  vTipo_Mov          := cdsDuplicataTIPO_MOV.AsString;
  vFilialAux         := cdsDuplicataFILIAL.AsInteger;
  vDtEmissao         := cdsDuplicataDTEMISSAO.AsDateTime;
  vNumDuplicata      := cdsDuplicataNUMDUPLICATA.AsString;
  vNumNota           := cdsDuplicataNUMNOTA.AsInteger;
  vSerie             := cdsDuplicataSERIE.AsString;
  vPerc_Comissao     := cdsDuplicataPERC_COMISSAO.AsFloat;
  vID_Vendedor       := cdsDuplicataID_VENDEDOR.AsInteger;
  vID_Cliente        := cdsDuplicataID_PESSOA.AsInteger;
  vID_Conta          := cdsDuplicataID_CONTA.AsInteger;
  vID_Conta_Boleto   := cdsDuplicataID_CONTA_BOLETO.AsInteger;
  vID_TipoCobranca   := cdsDuplicataID_TIPOCOBRANCA.AsInteger;
  vID_ContaOrcamento := cdsDuplicataID_CONTA_ORCAMENTO.AsInteger;
  vRegime_Caixa      := cdsDuplicataREGIME_CAIXA.AsString;
  mGerarDup.Last;
  vParcelaAux_Fin    := mGerarDupParcela.AsInteger;
  vNumDup_Ini        := cdsDuplicataID.AsInteger;
  vNumDup_Fin        := 0;
  mGerarDup.First;
  mGerarDup.Delete;
  while not mGerarDup.Eof do
  begin
    prc_Inserir;

    cdsDuplicataTIPO_ES.AsString  := vTipo_ES;
    cdsDuplicataFILIAL.AsInteger  := vFilialAux;
    cdsDuplicataPARCELA.AsInteger := mGerarDupParcela.AsInteger;
    cdsDuplicataNUMDUPLICATA.AsString := vNumDuplicata;
    cdsDuplicataNUMNOTA.AsInteger     := vNumNota;
    cdsDuplicataSERIE.AsString        := vSerie;
    cdsDuplicataDTVENCIMENTO.AsDateTime := mGerarDupDtVencimento.AsDateTime;
    cdsDuplicataVLR_PARCELA.AsFloat     := StrToFloat(FormatFloat('0.00',mGerarDupVlrParcela.AsFloat));
    cdsDuplicataVLR_RESTANTE.AsFloat    := StrToFloat(FormatFloat('0.00',mGerarDupVlrParcela.AsFloat));
    cdsDuplicataPERC_COMISSAO.AsFloat   := StrToFloat(FormatFloat('0.00',vPerc_Comissao));
    cdsDuplicataID_PESSOA.AsInteger     := vID_Cliente;
    cdsDuplicataREGIME_CAIXA.AsString   := vRegime_Caixa;
    if vID_Conta > 0 then
      cdsDuplicataID_CONTA.AsInteger := vID_Conta;
    if vID_TipoCobranca > 0 then
      cdsDuplicataID_TIPOCOBRANCA.AsInteger := vID_TipoCobranca;
    if vID_Vendedor > 0 then
      cdsDuplicataID_VENDEDOR.AsInteger := vID_Vendedor;
    if vID_Conta_Boleto > 0 then
      cdsDuplicataID_CONTA_BOLETO.AsInteger := vID_Conta_Boleto;
    cdsDuplicataDTEMISSAO.AsDateTime := vDtEmissao;
    cdsDuplicataTIPO_LANCAMENTO.AsString := 'MAN';
    cdsDuplicataDESCRICAO.AsString       := vObs_Original + ' (' + mGerarDupParcela.AsString + '/' + IntToStr(vParcelaAux_Fin) + ')';
    if vID_ContaOrcamento > 0 then
      cdsDuplicataID_CONTA_ORCAMENTO.AsInteger := vID_ContaOrcamento
    else
      cdsDuplicataID_CONTA_ORCAMENTO.Clear;
    cdsDuplicataTIPO_MOV.AsString         := vTipo_Mov;
    cdsDuplicataVLR_TAXA_BANCARIA.AsFloat := StrToFloat(FormatFloat('0.00',0));
    prc_Gravar;
    vNumDup_Fin := cdsDuplicataID.AsInteger;
    mGerarDup.Next;
  end;
end;

procedure TDMCadDuplicata.prc_Desfazer_Descontada;
begin
  if not cdsDuplicata_Hist.Locate('ID_DESCONTADA',cdsDuplicataID_DESCONTADA.AsInteger,([Locaseinsensitive])) then
    exit;
end;

procedure TDMCadDuplicata.prc_Abrir_Carteira(Id_banco: Integer);
begin
  cdsCarteira.Close;
  sdsCarteira.ParamByName('ID_BANCO').AsInteger := Id_banco;
  cdsCarteira.Open; 
end;

procedure TDMCadDuplicata.frxReport1BeforePrint(Sender: TfrxReportComponent);
var
  vArq : String;
begin
  //DE é descontada, e não vai imprimir a linha abaixo, foi colocado o IF no dia 08/03/2018
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Extrato_Cliente_Fornecedor.fr3';
  if frxReport1.Report.FileName = vArq then
    Exit;

  if vTipo_Rel <> 'DE' then
    TfrxMemoView(frxReport1.FindComponent('lblPeriodo')).Text := 'Vencimento de ' + FormatDateTime('DD/MM/YYYY',vDataIni) +
                                                                 ' até ' + FormatDateTime('DD/MM/YYYY',vDataFim);
end;

procedure TDMCadDuplicata.cdsDuplicata_HistCalcFields(DataSet: TDataSet);
begin
  if cdsDuplicata_HistID_FORMA_PAGAMENTO.AsInteger > 0 then
  begin
    qFormaPgto.Close;
    qFormaPgto.ParamByName('ID').AsInteger := cdsDuplicata_HistID_FORMA_PAGAMENTO.AsInteger;
    qFormaPgto.Open;
    cdsDuplicata_HistclCheque.AsString    := qFormaPgtoCHEQUE.AsString;
    cdsDuplicata_HistclFormaPgto.AsString := qFormaPgtoNOME.AsString;
    qFormaPgto.Close;
  end
  else
  begin
    cdsDuplicata_HistclCheque.AsString    := 'N';
    cdsDuplicata_HistclFormaPgto.AsString := '';
  end;
end;

procedure TDMCadDuplicata.prc_Gravar_ChequeHist(Devolvido: String);
var
  vItemAux : Integer;
begin
  cdsCheque_Hist.Last;
  vItemAux := cdsCheque_HistITEM.AsInteger;

  cdsCheque_Hist.Insert;
  cdsCheque_HistID.AsInteger           := cdsChequeID.AsInteger;
  cdsCheque_HistITEM.AsInteger         := vItemAux + 1;
  cdsCheque_HistDTMOVIMENTO.AsDateTime := Date;
  cdsCheque_HistTIPO_HIST.AsString     := '2';
  cdsCheque_Hist.Post;
end;

procedure TDMCadDuplicata.prc_Inserir_Cob;
var
  vItem : Integer;
begin
  cdsDuplicata_Cob.Last;
  vItem := cdsDuplicata_CobITEM.AsInteger;

  cdsDuplicata_Cob.Insert;
  cdsDuplicata_CobID.AsInteger         := cdsDuplicataID.AsInteger;
  cdsDuplicata_CobITEM.AsInteger       := vItem + 1;
  cdsDuplicata_CobDATA.AsDateTime      := Date;
  cdsDuplicata_CobUSUARIO.AsString     := vUsuario;
  cdsDuplicata_CobDTUSUARIO.AsDateTime := Date;
  cdsDuplicata_CobHRUSUARIO.AsDateTime := Now;
end;

end.
