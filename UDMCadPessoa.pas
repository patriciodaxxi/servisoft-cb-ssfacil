unit UDMCadPessoa;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, xmldom, Xmlxform, DBXpress, LogTypes, frxClass, frxDBSet, frxRich,
  frxExportMail, frxExportPDF, frxExportXLS;

type
  TDMCadPessoa = class(TDataModule)
    sdsPessoa: TSQLDataSet;
    dspPessoa: TDataSetProvider;
    cdsPessoa: TClientDataSet;
    dsPessoa: TDataSource;
    cdsPessoaCODIGO: TIntegerField;        
    cdsPessoaNOME: TStringField;
    cdsPessoaFANTASIA: TStringField;
    cdsPessoaENDERECO: TStringField;
    cdsPessoaCOMPLEMENTO_END: TStringField;
    cdsPessoaNUM_END: TStringField;
    cdsPessoaBAIRRO: TStringField;
    cdsPessoaID_CIDADE: TIntegerField;
    cdsPessoaCIDADE: TStringField;
    cdsPessoaUF: TStringField;
    cdsPessoaCEP: TStringField;
    cdsPessoaDDDFONE1: TIntegerField;
    cdsPessoaTELEFONE1: TStringField;
    cdsPessoaDDDFONE2: TIntegerField;
    cdsPessoaTELEFONE2: TStringField;
    cdsPessoaDDDFAX: TIntegerField;
    cdsPessoaFAX: TStringField;
    cdsPessoaPESSOA: TStringField;
    cdsPessoaCNPJ_CPF: TStringField;
    cdsPessoaINSCR_EST: TStringField;
    cdsPessoaENDERECO_ENT: TStringField;
    cdsPessoaCOMPLEMENTO_END_ENT: TStringField;
    cdsPessoaNUM_END_ENT: TStringField;
    cdsPessoaBAIRRO_ENT: TStringField;
    cdsPessoaID_CIDADE_ENT: TIntegerField;
    cdsPessoaCIDADE_ENT: TStringField;
    cdsPessoaCEP_ENT: TStringField;
    cdsPessoaUF_ENT: TStringField;
    cdsPessoaPESSOA_ENT: TStringField;
    cdsPessoaCNPJ_CPF_ENT: TStringField;
    cdsPessoaINSC_EST_ENT: TStringField;
    cdsPessoaENDERECO_PGTO: TStringField;
    cdsPessoaCOMPLEMENTO_END_PGTO: TStringField;
    cdsPessoaNUM_END_PGTO: TStringField;
    cdsPessoaBAIRRO_PGTO: TStringField;
    cdsPessoaID_CIDADE_PGTO: TIntegerField;
    cdsPessoaCIDADE_PGTO: TStringField;
    cdsPessoaCEP_PGTO: TStringField;
    cdsPessoaUF_PGTO: TStringField;
    cdsPessoaUSUARIO: TStringField;
    cdsPessoaDTCADASTRO: TDateField;
    cdsPessoaHRCADASTRO: TTimeField;
    cdsPessoaID_VENDEDOR: TIntegerField;
    cdsPessoaOBS: TMemoField;
    cdsPessoaCAIXAPOSTAL: TStringField;
    cdsPessoaRG: TStringField;
    cdsPessoaID_CONDPGTO: TIntegerField;
    cdsPessoaID_CONTABOLETO: TIntegerField;
    cdsPessoaID_TRANSPORTADORA: TIntegerField;
    cdsPessoaID_TIPOCOBRANCA: TIntegerField;
    cdsPessoaPERC_COMISSAO: TFloatField;
    cdsPessoaID_REDESPACHO: TIntegerField;
    cdsPessoaDDD_ENT: TIntegerField;
    cdsPessoaFONE_ENT: TStringField;
    cdsPessoaDDD_PGTO: TIntegerField;
    cdsPessoaFONE_PGTO: TStringField;
    cdsPessoaINATIVO: TStringField;
    cdsPessoaHOMEPAGE: TStringField;
    cdsPessoaNOME_ENTREGA: TStringField;
    cdsPessoaEMAIL_NFE: TStringField;
    cdsPessoaID_PAIS: TIntegerField;
    cdsPessoaEMAIL_PGTO: TStringField;
    cdsPessoaEMAIL_NFE2: TStringField;
    cdsPessoaPESSOA_PGTO: TStringField;
    cdsPessoaCNPJ_CPG_PGTO: TStringField;
    cdsPessoaINSC_EST_PGTO: TStringField;
    cdsPessoaUF_PLACA: TStringField;
    cdsPessoaPLACA: TStringField;
    cdsPessoaTP_CLIENTE: TStringField;
    cdsPessoaTP_FORNECEDOR: TStringField;
    cdsPessoaTP_TRANSPORTADORA: TStringField;
    cdsPessoaTP_VENDEDOR: TStringField;
    sdsPessoaCODIGO: TIntegerField;
    sdsPessoaNOME: TStringField;
    sdsPessoaFANTASIA: TStringField;
    sdsPessoaENDERECO: TStringField;
    sdsPessoaCOMPLEMENTO_END: TStringField;
    sdsPessoaNUM_END: TStringField;
    sdsPessoaBAIRRO: TStringField;
    sdsPessoaID_CIDADE: TIntegerField;
    sdsPessoaCIDADE: TStringField;
    sdsPessoaUF: TStringField;
    sdsPessoaCEP: TStringField;
    sdsPessoaDDDFONE1: TIntegerField;
    sdsPessoaTELEFONE1: TStringField;
    sdsPessoaDDDFONE2: TIntegerField;
    sdsPessoaTELEFONE2: TStringField;
    sdsPessoaDDDFAX: TIntegerField;
    sdsPessoaFAX: TStringField;
    sdsPessoaPESSOA: TStringField;
    sdsPessoaCNPJ_CPF: TStringField;
    sdsPessoaINSCR_EST: TStringField;
    sdsPessoaENDERECO_ENT: TStringField;
    sdsPessoaCOMPLEMENTO_END_ENT: TStringField;
    sdsPessoaNUM_END_ENT: TStringField;
    sdsPessoaBAIRRO_ENT: TStringField;
    sdsPessoaID_CIDADE_ENT: TIntegerField;
    sdsPessoaCIDADE_ENT: TStringField;
    sdsPessoaCEP_ENT: TStringField;
    sdsPessoaUF_ENT: TStringField;
    sdsPessoaPESSOA_ENT: TStringField;
    sdsPessoaCNPJ_CPF_ENT: TStringField;
    sdsPessoaINSC_EST_ENT: TStringField;
    sdsPessoaENDERECO_PGTO: TStringField;
    sdsPessoaCOMPLEMENTO_END_PGTO: TStringField;
    sdsPessoaNUM_END_PGTO: TStringField;
    sdsPessoaBAIRRO_PGTO: TStringField;
    sdsPessoaID_CIDADE_PGTO: TIntegerField;
    sdsPessoaCIDADE_PGTO: TStringField;
    sdsPessoaCEP_PGTO: TStringField;
    sdsPessoaUF_PGTO: TStringField;
    sdsPessoaUSUARIO: TStringField;
    sdsPessoaDTCADASTRO: TDateField;
    sdsPessoaHRCADASTRO: TTimeField;
    sdsPessoaID_VENDEDOR: TIntegerField;
    sdsPessoaOBS: TMemoField;
    sdsPessoaCAIXAPOSTAL: TStringField;
    sdsPessoaRG: TStringField;
    sdsPessoaID_CONDPGTO: TIntegerField;
    sdsPessoaID_CONTABOLETO: TIntegerField;
    sdsPessoaID_TRANSPORTADORA: TIntegerField;
    sdsPessoaID_TIPOCOBRANCA: TIntegerField;
    sdsPessoaPERC_COMISSAO: TFloatField;
    sdsPessoaID_REDESPACHO: TIntegerField;
    sdsPessoaDDD_ENT: TIntegerField;
    sdsPessoaFONE_ENT: TStringField;
    sdsPessoaDDD_PGTO: TIntegerField;
    sdsPessoaFONE_PGTO: TStringField;
    sdsPessoaINATIVO: TStringField;
    sdsPessoaHOMEPAGE: TStringField;
    sdsPessoaNOME_ENTREGA: TStringField;
    sdsPessoaEMAIL_NFE: TStringField;
    sdsPessoaID_PAIS: TIntegerField;
    sdsPessoaEMAIL_PGTO: TStringField;
    sdsPessoaEMAIL_NFE2: TStringField;
    sdsPessoaPESSOA_PGTO: TStringField;
    sdsPessoaCNPJ_CPG_PGTO: TStringField;
    sdsPessoaINSC_EST_PGTO: TStringField;
    sdsPessoaUF_PLACA: TStringField;
    sdsPessoaPLACA: TStringField;
    sdsPessoaTP_CLIENTE: TStringField;
    sdsPessoaTP_FORNECEDOR: TStringField;
    sdsPessoaTP_TRANSPORTADORA: TStringField;
    sdsPessoaTP_VENDEDOR: TStringField;
    sdsUF: TSQLDataSet;
    dspUF: TDataSetProvider;
    cdsUF: TClientDataSet;
    cdsUFUF: TStringField;
    cdsUFPERC_ICMS: TFloatField;
    cdsUFIDPAIS: TIntegerField;
    cdsUFCODUF: TStringField;
    cdsUFPERC_ICMS_INTERNO: TFloatField;
    dsUF: TDataSource;
    sdsCondPgto: TSQLDataSet;
    dspCondPgto: TDataSetProvider;
    cdsCondPgto: TClientDataSet;
    cdsCondPgtoID: TIntegerField;
    cdsCondPgtoNOME: TStringField;
    cdsCondPgtoTIPO: TStringField;
    dsCondPgto: TDataSource;
    sdsCidade: TSQLDataSet;
    dspCidade: TDataSetProvider;
    cdsCidade: TClientDataSet;
    dsCidade: TDataSource;
    cdsCidadeID: TIntegerField;
    cdsCidadeNOME: TStringField;
    cdsCidadeUF: TStringField;
    cdsCidadeCODMUNICIPIO: TStringField;
    sdsPais: TSQLDataSet;
    dspPais: TDataSetProvider;
    cdsPais: TClientDataSet;
    dsPais: TDataSource;
    cdsPaisID: TIntegerField;
    cdsPaisNOME: TStringField;
    cdsPaisCODPAIS: TStringField;
    sdsVendedor: TSQLDataSet;
    dspVendedor: TDataSetProvider;
    cdsVendedor: TClientDataSet;
    cdsVendedorCODIGO: TIntegerField;
    cdsVendedorNOME: TStringField;
    cdsVendedorPERC_COMISSAO: TFloatField;
    dsVendedor: TDataSource;
    sdsTransportadora: TSQLDataSet;
    dspTransportadora: TDataSetProvider;
    cdsTransportadora: TClientDataSet;
    cdsTransportadoraCODIGO: TIntegerField;
    cdsTransportadoraNOME: TStringField;
    dsTransportadora: TDataSource;
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
    dsContas: TDataSource;
    cdsContas: TClientDataSet;
    cdsContasID: TIntegerField;
    dspContas: TDataSetProvider;
    sdsContas: TSQLDataSet;
    sdsPessoaTIPO_FRETE: TStringField;
    cdsPessoaTIPO_FRETE: TStringField;
    cdsContasNOME: TStringField;
    dsRegimeTrib: TDataSource;
    cdsRegimeTrib: TClientDataSet;
    dspRegimeTrib: TDataSetProvider;
    sdsRegimeTrib: TSQLDataSet;
    cdsRegimeTribID: TIntegerField;
    cdsRegimeTribCODIGO: TIntegerField;
    cdsRegimeTribNOME: TStringField;
    sdsPessoaID_REGIME_TRIB: TIntegerField;
    cdsPessoaID_REGIME_TRIB: TIntegerField;
    sdsPessoaTIPO_ICMS: TStringField;
    cdsPessoaTIPO_ICMS: TStringField;
    dsTab_Preco: TDataSource;
    cdsTab_Preco: TClientDataSet;
    dspTab_Preco: TDataSetProvider;
    sdsTab_Preco: TSQLDataSet;
    sdsTab_PrecoID: TIntegerField;
    sdsTab_PrecoNOME: TStringField;
    sdsTab_PrecoDTCADASTRO: TDateField;
    sdsTab_PrecoOBS: TMemoField;
    cdsTab_PrecoID: TIntegerField;
    cdsTab_PrecoNOME: TStringField;
    cdsTab_PrecoDTCADASTRO: TDateField;
    cdsTab_PrecoOBS: TMemoField;
    sdsPessoaID_TAB_PRECO: TIntegerField;
    cdsPessoaID_TAB_PRECO: TIntegerField;
    sdsPessoaTP_ATELIER: TStringField;
    cdsPessoaTP_ATELIER: TStringField;
    xtrConsultaCadastro: TXMLTransformProvider;
    cdsConsultaCadastro: TClientDataSet;
    cdsConsultaCadastroIE: TStringField;
    cdsConsultaCadastroCNPJ: TStringField;
    cdsConsultaCadastroCPF: TStringField;
    cdsConsultaCadastroUF: TStringField;
    cdsConsultaCadastrocSit: TIntegerField;
    cdsConsultaCadastroindCredNFe: TIntegerField;
    cdsConsultaCadastroindCredCTe: TIntegerField;
    cdsConsultaCadastroxNome: TStringField;
    cdsConsultaCadastroxRegApur: TStringField;
    cdsConsultaCadastroCNAE: TStringField;
    cdsConsultaCadastrodIniAtiv: TDateTimeField;
    cdsConsultaCadastrodUltSit: TDateTimeField;
    cdsConsultaCadastroIEUnica: TStringField;
    cdsConsultaCadastroIEAtual: TStringField;
    cdsConsultaCadastroxLgr: TStringField;
    cdsConsultaCadastronro: TStringField;
    cdsConsultaCadastroxCpl: TStringField;
    cdsConsultaCadastroxBairro: TStringField;
    cdsConsultaCadastrocMun: TStringField;
    cdsConsultaCadastroxMun: TStringField;
    cdsConsultaCadastroCEP: TStringField;
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
    qParametrosIMP_CODPRODCLI_DANFE: TStringField;
    qFilial: TSQLQuery;
    qFilialID: TIntegerField;
    qFilialCNPJ_CPF: TStringField;
    dsConsultaCadastro: TDataSource;
    sdsPessoaTIPO_COMISSAO: TStringField;
    cdsPessoaTIPO_COMISSAO: TStringField;
    sdsPessoaPERC_COMISSAO_VEND: TFloatField;
    sdsPessoaNOME_CONTATO: TStringField;
    cdsPessoaNOME_CONTATO: TStringField;
    sdsPessoaINSC_MUNICIPAL: TStringField;
    cdsPessoaINSC_MUNICIPAL: TStringField;
    sdsPessoaDT_CONTRATO_INI: TDateField;
    sdsPessoaDT_CONTRATO_FIN: TDateField;
    sdsPessoaID_SERVICO: TIntegerField;
    sdsPessoaID_SERVICO_INT: TIntegerField;
    sdsPessoaVLR_SERVICO: TFloatField;
    cdsPessoaDT_CONTRATO_INI: TDateField;
    cdsPessoaDT_CONTRATO_FIN: TDateField;
    cdsPessoaID_SERVICO: TIntegerField;
    cdsPessoaID_SERVICO_INT: TIntegerField;
    cdsPessoaVLR_SERVICO: TFloatField;
    sdsServico_Pad: TSQLDataSet;
    sdsServico_PadID: TIntegerField;
    sdsServico_PadCODIGO: TStringField;
    sdsServico_PadNOME: TStringField;
    sdsServico_PadTIPO_AS: TStringField;
    sdsServico_PadNOME_SERVICO: TStringField;
    dspServico_Pad: TDataSetProvider;
    cdsServico_Pad: TClientDataSet;
    cdsServico_PadID: TIntegerField;
    cdsServico_PadCODIGO: TStringField;
    cdsServico_PadNOME: TStringField;
    cdsServico_PadTIPO_AS: TStringField;
    cdsServico_PadNOME_SERVICO: TStringField;
    dsServico_Pad: TDataSource;
    sdsServico_Int: TSQLDataSet;
    dspServico_Int: TDataSetProvider;
    cdsServico_Int: TClientDataSet;
    dsServico_Int: TDataSource;
    dsFilial: TDataSource;
    cdsFilial: TClientDataSet;
    dspFilial: TDataSetProvider;
    sdsFilial: TSQLDataSet;
    sdsServico_IntID: TIntegerField;
    sdsServico_IntNOME: TStringField;
    sdsServico_IntVLR_UNITARIO: TFloatField;
    cdsServico_IntID: TIntegerField;
    cdsServico_IntNOME: TStringField;
    cdsServico_IntVLR_UNITARIO: TFloatField;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    cdsFilialID_SERVICO_PAD: TIntegerField;
    cdsFilialID_SERVICO_SINT: TIntegerField;
    qParametrosUSA_SERVICO: TStringField;
    cdsFilialCOD_SERVICO_SINT: TStringField;
    sdsPessoaCLIENTE_CONTA_ID: TIntegerField;
    sdsPessoaFORNECEDOR_CONTA_ID: TIntegerField;
    sdsPessoaVENDEDOR_CONTA_ID: TIntegerField;
    sdsPessoaTRANSPORTADORA_CONTA_ID: TIntegerField;
    sdsPessoaATELIER_CONTA_ID: TIntegerField;
    cdsPessoaCLIENTE_CONTA_ID: TIntegerField;
    cdsPessoaFORNECEDOR_CONTA_ID: TIntegerField;
    cdsPessoaVENDEDOR_CONTA_ID: TIntegerField;
    cdsPessoaTRANSPORTADORA_CONTA_ID: TIntegerField;
    cdsPessoaATELIER_CONTA_ID: TIntegerField;
    dsContaOrcamento: TDataSource;
    cdsContaOrcamento: TClientDataSet;
    dspContaOrcamento: TDataSetProvider;
    sdsContaOrcamento: TSQLDataSet;
    cdsContaOrcamentoID: TIntegerField;
    cdsContaOrcamentoTIPO: TStringField;
    cdsContaOrcamentoCODIGO: TStringField;
    cdsContaOrcamentoDESCRICAO: TStringField;
    sdsPessoaRETEM_ISS: TStringField;
    cdsPessoaRETEM_ISS: TStringField;
    sdsPessoaRETEM_CSLL: TStringField;
    sdsPessoaRETEM_PISCOFINS: TStringField;
    sdsPessoaRETEM_INSS: TStringField;
    cdsPessoaRETEM_CSLL: TStringField;
    cdsPessoaRETEM_PISCOFINS: TStringField;
    cdsPessoaRETEM_INSS: TStringField;
    dsPessoa_Servico: TDataSource;
    cdsPessoa_Servico: TClientDataSet;
    dspPessoa_Servico: TDataSetProvider;
    sdsPessoa_Servico: TSQLDataSet;
    sdsPessoa_ServicoCODIGO: TIntegerField;
    sdsPessoa_ServicoITEM: TIntegerField;
    sdsPessoa_ServicoID_SERVICO: TIntegerField;
    sdsPessoa_ServicoPERC_ISS: TFloatField;
    cdsPessoa_ServicoCODIGO: TIntegerField;
    cdsPessoa_ServicoITEM: TIntegerField;
    cdsPessoa_ServicoID_SERVICO: TIntegerField;
    cdsPessoa_ServicoPERC_ISS: TFloatField;
    sdsPessoa_ServicoNOME_SERVICO: TStringField;
    sdsPessoa_ServicoCOD_SERVICO: TStringField;
    cdsPessoa_ServicoNOME_SERVICO: TStringField;
    cdsPessoa_ServicoCOD_SERVICO: TStringField;
    sdsPessoaEMAIL_COMPRAS: TStringField;
    sdsPessoaCONTATO_COMPRAS: TStringField;
    cdsPessoaEMAIL_COMPRAS: TStringField;
    cdsPessoaCONTATO_COMPRAS: TStringField;
    sdsPessoaORGAO_PUBLICO: TStringField;
    cdsPessoaORGAO_PUBLICO: TStringField;
    dsPessoa_Fiscal: TDataSource;
    cdsPessoa_Fiscal: TClientDataSet;
    dspPessoa_Fiscal: TDataSetProvider;
    sdsPessoa_Fiscal: TSQLDataSet;
    sdsPessoa_FiscalCODIGO: TIntegerField;
    sdsPessoa_FiscalIPI_SUSPENSO: TStringField;
    sdsPessoa_FiscalIPI_DT_INICIO: TDateField;
    sdsPessoa_FiscalIPI_DT_FINAL: TDateField;
    sdsPessoa_FiscalIPI_OBS: TStringField;
    sdsPessoa_FiscalIPI_ID_CSTIPI: TIntegerField;
    sdsPessoa_FiscalPIS_SUSPENSO: TStringField;
    sdsPessoa_FiscalPIS_DT_INICIO: TDateField;
    sdsPessoa_FiscalPIS_DT_FINAL: TDateField;
    sdsPessoa_FiscalPIS_OBS: TStringField;
    sdsPessoa_FiscalPIS_ID_PIS: TIntegerField;
    cdsPessoa_FiscalCODIGO: TIntegerField;
    cdsPessoa_FiscalIPI_SUSPENSO: TStringField;
    cdsPessoa_FiscalIPI_DT_INICIO: TDateField;
    cdsPessoa_FiscalIPI_DT_FINAL: TDateField;
    cdsPessoa_FiscalIPI_OBS: TStringField;
    cdsPessoa_FiscalIPI_ID_CSTIPI: TIntegerField;
    cdsPessoa_FiscalPIS_SUSPENSO: TStringField;
    cdsPessoa_FiscalPIS_DT_INICIO: TDateField;
    cdsPessoa_FiscalPIS_DT_FINAL: TDateField;
    cdsPessoa_FiscalPIS_OBS: TStringField;
    cdsPessoa_FiscalPIS_ID_PIS: TIntegerField;
    sdsTab_CSTIPI: TSQLDataSet;
    dspTab_CSTIPI: TDataSetProvider;
    cdsTab_CSTIPI: TClientDataSet;
    cdsTab_CSTIPIID: TIntegerField;
    cdsTab_CSTIPICOD_IPI: TStringField;
    cdsTab_CSTIPINOME: TStringField;
    cdsTab_CSTIPIGERAR_IPI: TStringField;
    dsTab_CSTIPI: TDataSource;
    sdsPessoa_FiscalPIS_ID_COFINS: TIntegerField;
    cdsPessoa_FiscalPIS_ID_COFINS: TIntegerField;
    sdsTab_Pis: TSQLDataSet;
    dspTab_Pis: TDataSetProvider;
    cdsTab_Pis: TClientDataSet;
    cdsTab_PisID: TIntegerField;
    cdsTab_PisCODIGO: TStringField;
    cdsTab_PisNOME: TStringField;
    cdsTab_PisGERAR: TStringField;
    dsTab_Pis: TDataSource;
    sdsTab_Cofins: TSQLDataSet;
    dspTab_Cofins: TDataSetProvider;
    cdsTab_Cofins: TClientDataSet;
    cdsTab_CofinsID: TIntegerField;
    cdsTab_CofinsCODIGO: TStringField;
    cdsTab_CofinsNOME: TStringField;
    cdsTab_CofinsGERAR: TStringField;
    dsTab_Cofins: TDataSource;
    dsPessoa_Mestre: TDataSource;
    sdsPessoa_Contato: TSQLDataSet;
    cdsPessoa_Contato: TClientDataSet;
    dsPessoa_Contato: TDataSource;
    cdsPessoasdsPessoa_Contato: TDataSetField;
    sdsPessoa_ContatoCODIGO: TIntegerField;
    sdsPessoa_ContatoITEM: TIntegerField;
    sdsPessoa_ContatoCONTATO: TStringField;
    sdsPessoa_ContatoEMAIL: TStringField;
    sdsPessoa_ContatoENVIAR_NFE: TStringField;
    sdsPessoa_ContatoFONE: TStringField;
    sdsPessoa_ContatoSETOR: TStringField;
    cdsPessoa_ContatoCODIGO: TIntegerField;
    cdsPessoa_ContatoITEM: TIntegerField;
    cdsPessoa_ContatoCONTATO: TStringField;
    cdsPessoa_ContatoEMAIL: TStringField;
    cdsPessoa_ContatoENVIAR_NFE: TStringField;
    cdsPessoa_ContatoFONE: TStringField;
    cdsPessoa_ContatoSETOR: TStringField;
    dsPessoa_Servico_Int: TDataSource;
    cdsPessoa_Servico_Int: TClientDataSet;
    dspPessoa_Servico_Int: TDataSetProvider;
    sdsPessoa_Servico_Int: TSQLDataSet;
    sdsPessoa_Servico_IntCODIGO: TIntegerField;
    sdsPessoa_Servico_IntITEM: TIntegerField;
    sdsPessoa_Servico_IntID_SERVICO_INT: TIntegerField;
    sdsPessoa_Servico_IntSOMAR_DIMINUIR: TStringField;
    sdsPessoa_Servico_IntNOME_SERVICO: TStringField;
    cdsPessoa_Servico_IntCODIGO: TIntegerField;
    cdsPessoa_Servico_IntITEM: TIntegerField;
    cdsPessoa_Servico_IntID_SERVICO_INT: TIntegerField;
    cdsPessoa_Servico_IntSOMAR_DIMINUIR: TStringField;
    cdsPessoa_Servico_IntNOME_SERVICO: TStringField;
    sdsPessoa_Servico_IntCALCULAR_INSS: TStringField;
    cdsPessoa_Servico_IntCALCULAR_INSS: TStringField;
    sdsPessoa_Servico_IntVLR_SERVICO: TFloatField;
    cdsPessoa_Servico_IntVLR_SERVICO: TFloatField;
    sdsPessoaID_NATUREZA: TIntegerField;
    cdsPessoaID_NATUREZA: TIntegerField;
    sdsNatureza: TSQLDataSet;
    dspNatureza: TDataSetProvider;
    cdsNatureza: TClientDataSet;
    cdsNaturezaID: TIntegerField;
    cdsNaturezaID_PROVEDOR: TIntegerField;
    cdsNaturezaCODIGO: TStringField;
    cdsNaturezaNOME: TStringField;
    dsNatureza: TDataSource;
    cdsFilialID_CIDADE: TIntegerField;
    cdsCidadeID_PROVEDOR: TIntegerField;
    qProvedor: TSQLQuery;
    qProvedorID: TIntegerField;
    qProvedorNOME: TStringField;
    qProvedorOBS: TMemoField;
    qProvedorTIPO_NATUREZA: TStringField;
    qProvedorTIPO_RETORNO: TStringField;
    qProvedorMOSTRAR_ALIQUOTA_PD: TStringField;
    qProvedorINF_COD_SERVICO: TStringField;
    sdsPessoaDIMINUIR_RETENCAO: TStringField;
    cdsPessoaDIMINUIR_RETENCAO: TStringField;
    sdsPessoaPERC_REDUCAO_INSS: TFloatField;
    cdsPessoaPERC_REDUCAO_INSS: TFloatField;
    sdsPessoaUSA_TRANSFICMS: TStringField;
    cdsPessoaUSA_TRANSFICMS: TStringField;
    sdsPessoaCLIENTE_ESTOQUE: TStringField;
    cdsPessoaCLIENTE_ESTOQUE: TStringField;
    sdsPessoa_Servico_IntCALCULAR_ISSQN: TStringField;
    sdsPessoa_Servico_IntCALCULAR_PISCOFINS: TStringField;
    sdsPessoa_Servico_IntCALCULAR_CSLL: TStringField;
    sdsPessoa_Servico_IntCALCULAR_IR: TStringField;
    cdsPessoa_Servico_IntCALCULAR_ISSQN: TStringField;
    cdsPessoa_Servico_IntCALCULAR_PISCOFINS: TStringField;
    cdsPessoa_Servico_IntCALCULAR_CSLL: TStringField;
    cdsPessoa_Servico_IntCALCULAR_IR: TStringField;
    sdsPessoaUSA_TAMANHO_AGRUPADO_NFE: TStringField;
    cdsPessoaUSA_TAMANHO_AGRUPADO_NFE: TStringField;
    qParametrosUSA_TAMANHO_AGRUPADO_NFE: TStringField;
    qParametrosUSA_CONTA_ORCAMENTO: TStringField;
    sdsPessoaCOD_ANT: TIntegerField;
    cdsPessoaCOD_ANT: TIntegerField;
    cdsContaOrcamentoNOME_AUX: TStringField;
    sdsPessoaID_EDI: TIntegerField;
    cdsPessoaID_EDI: TIntegerField;
    sdsEDI_Config: TSQLDataSet;
    dspEDI_Config: TDataSetProvider;
    cdsEDI_Config: TClientDataSet;
    dsEDI_Config: TDataSource;
    cdsEDI_ConfigID: TIntegerField;
    cdsEDI_ConfigLAYOUT: TStringField;
    cdsEDI_ConfigNOME: TStringField;
    qParametrosUSA_EDI: TStringField;
    sdsPessoaPAI_NOME: TStringField;
    sdsPessoaMAE_NOME: TStringField;
    cdsPessoaPAI_NOME: TStringField;
    cdsPessoaMAE_NOME: TStringField;
    sdsPessoaTP_ALUNO: TStringField;
    cdsPessoaTP_ALUNO: TStringField;
    qParametrosESCOLA: TStringField;
    sdsPessoaCOBRAR_TAXA_BANCO: TStringField;
    cdsPessoaCOBRAR_TAXA_BANCO: TStringField;
    sdsPessoaVLR_LIMITE_CREDITO: TFloatField;
    cdsPessoaVLR_LIMITE_CREDITO: TFloatField;
    qParametrosUSA_LIMITE_CREDITO: TStringField;
    sdsPessoaINSC_EST_ST: TStringField;
    sdsPessoaUF_ST: TStringField;
    cdsPessoaINSC_EST_ST: TStringField;
    cdsPessoaUF_ST: TStringField;
    sdsPessoa_Consulta: TSQLDataSet;
    dspPessoa_Consulta: TDataSetProvider;
    cdsPessoa_Consulta: TClientDataSet;
    dsPessoa_Consulta: TDataSource;
    cdsPessoa_ConsultaCODIGO: TIntegerField;
    cdsPessoa_ConsultaNOME: TStringField;
    cdsPessoa_ConsultaFANTASIA: TStringField;
    cdsPessoa_ConsultaENDERECO: TStringField;
    cdsPessoa_ConsultaCOMPLEMENTO_END: TStringField;
    cdsPessoa_ConsultaNUM_END: TStringField;
    cdsPessoa_ConsultaBAIRRO: TStringField;
    cdsPessoa_ConsultaID_CIDADE: TIntegerField;
    cdsPessoa_ConsultaCIDADE: TStringField;
    cdsPessoa_ConsultaUF: TStringField;
    cdsPessoa_ConsultaCEP: TStringField;
    cdsPessoa_ConsultaDDDFONE1: TIntegerField;
    cdsPessoa_ConsultaTELEFONE1: TStringField;
    cdsPessoa_ConsultaDDDFONE2: TIntegerField;
    cdsPessoa_ConsultaTELEFONE2: TStringField;
    cdsPessoa_ConsultaDDDFAX: TIntegerField;
    cdsPessoa_ConsultaFAX: TStringField;
    cdsPessoa_ConsultaPESSOA: TStringField;
    cdsPessoa_ConsultaINSCR_EST: TStringField;
    cdsPessoa_ConsultaENDERECO_ENT: TStringField;
    cdsPessoa_ConsultaCOMPLEMENTO_END_ENT: TStringField;
    cdsPessoa_ConsultaNUM_END_ENT: TStringField;
    cdsPessoa_ConsultaBAIRRO_ENT: TStringField;
    cdsPessoa_ConsultaID_CIDADE_ENT: TIntegerField;
    cdsPessoa_ConsultaCIDADE_ENT: TStringField;
    cdsPessoa_ConsultaCEP_ENT: TStringField;
    cdsPessoa_ConsultaUF_ENT: TStringField;
    cdsPessoa_ConsultaPESSOA_ENT: TStringField;
    cdsPessoa_ConsultaCNPJ_CPF_ENT: TStringField;
    cdsPessoa_ConsultaINSC_EST_ENT: TStringField;
    cdsPessoa_ConsultaENDERECO_PGTO: TStringField;
    cdsPessoa_ConsultaCOMPLEMENTO_END_PGTO: TStringField;
    cdsPessoa_ConsultaNUM_END_PGTO: TStringField;
    cdsPessoa_ConsultaBAIRRO_PGTO: TStringField;
    cdsPessoa_ConsultaID_CIDADE_PGTO: TIntegerField;
    cdsPessoa_ConsultaCIDADE_PGTO: TStringField;
    cdsPessoa_ConsultaCEP_PGTO: TStringField;
    cdsPessoa_ConsultaUF_PGTO: TStringField;
    cdsPessoa_ConsultaCAIXAPOSTAL: TStringField;
    cdsPessoa_ConsultaRG: TStringField;
    cdsPessoa_ConsultaID_VENDEDOR: TIntegerField;
    cdsPessoa_ConsultaID_CONDPGTO: TIntegerField;
    cdsPessoa_ConsultaID_CONTABOLETO: TIntegerField;
    cdsPessoa_ConsultaID_TRANSPORTADORA: TIntegerField;
    cdsPessoa_ConsultaID_TIPOCOBRANCA: TIntegerField;
    cdsPessoa_ConsultaID_REDESPACHO: TIntegerField;
    cdsPessoa_ConsultaID_PAIS: TIntegerField;
    cdsPessoa_ConsultaID_REGIME_TRIB: TIntegerField;
    cdsPessoa_ConsultaPERC_COMISSAO: TFloatField;
    cdsPessoa_ConsultaDDD_ENT: TIntegerField;
    cdsPessoa_ConsultaFONE_ENT: TStringField;
    cdsPessoa_ConsultaDDD_PGTO: TIntegerField;
    cdsPessoa_ConsultaFONE_PGTO: TStringField;
    cdsPessoa_ConsultaINATIVO: TStringField;
    cdsPessoa_ConsultaHOMEPAGE: TStringField;
    cdsPessoa_ConsultaTIPO_FRETE: TStringField;
    cdsPessoa_ConsultaNOME_ENTREGA: TStringField;
    cdsPessoa_ConsultaEMAIL_NFE: TStringField;
    cdsPessoa_ConsultaEMAIL_PGTO: TStringField;
    cdsPessoa_ConsultaEMAIL_NFE2: TStringField;
    cdsPessoa_ConsultaPESSOA_PGTO: TStringField;
    cdsPessoa_ConsultaCNPJ_CPG_PGTO: TStringField;
    cdsPessoa_ConsultaINSC_EST_PGTO: TStringField;
    cdsPessoa_ConsultaUF_PLACA: TStringField;
    cdsPessoa_ConsultaPLACA: TStringField;
    cdsPessoa_ConsultaTP_CLIENTE: TStringField;
    cdsPessoa_ConsultaTP_FORNECEDOR: TStringField;
    cdsPessoa_ConsultaTP_TRANSPORTADORA: TStringField;
    cdsPessoa_ConsultaTP_VENDEDOR: TStringField;
    cdsPessoa_ConsultaTIPO_ICMS: TStringField;
    cdsPessoa_ConsultaID_TAB_PRECO: TIntegerField;
    cdsPessoa_ConsultaTP_ATELIER: TStringField;
    cdsPessoa_ConsultaTIPO_COMISSAO: TStringField;
    cdsPessoa_ConsultaNOME_CONTATO: TStringField;
    cdsPessoa_ConsultaINSC_MUNICIPAL: TStringField;
    cdsPessoa_ConsultaDT_CONTRATO_INI: TDateField;
    cdsPessoa_ConsultaDT_CONTRATO_FIN: TDateField;
    cdsPessoa_ConsultaID_SERVICO: TIntegerField;
    cdsPessoa_ConsultaID_SERVICO_INT: TIntegerField;
    cdsPessoa_ConsultaVLR_SERVICO: TFloatField;
    cdsPessoa_ConsultaCLIENTE_CONTA_ID: TIntegerField;
    cdsPessoa_ConsultaFORNECEDOR_CONTA_ID: TIntegerField;
    cdsPessoa_ConsultaVENDEDOR_CONTA_ID: TIntegerField;
    cdsPessoa_ConsultaTRANSPORTADORA_CONTA_ID: TIntegerField;
    cdsPessoa_ConsultaATELIER_CONTA_ID: TIntegerField;
    cdsPessoa_ConsultaRETEM_ISS: TStringField;
    cdsPessoa_ConsultaRETEM_CSLL: TStringField;
    cdsPessoa_ConsultaRETEM_PISCOFINS: TStringField;
    cdsPessoa_ConsultaRETEM_INSS: TStringField;
    cdsPessoa_ConsultaEMAIL_COMPRAS: TStringField;
    cdsPessoa_ConsultaCONTATO_COMPRAS: TStringField;
    cdsPessoa_ConsultaORGAO_PUBLICO: TStringField;
    cdsPessoa_ConsultaID_NATUREZA: TIntegerField;
    cdsPessoa_ConsultaDIMINUIR_RETENCAO: TStringField;
    cdsPessoa_ConsultaPERC_REDUCAO_INSS: TFloatField;
    cdsPessoa_ConsultaUSA_TRANSFICMS: TStringField;
    cdsPessoa_ConsultaCLIENTE_ESTOQUE: TStringField;
    cdsPessoa_ConsultaUSA_TAMANHO_AGRUPADO_NFE: TStringField;
    cdsPessoa_ConsultaID_EDI: TIntegerField;
    cdsPessoa_ConsultaCOBRAR_TAXA_BANCO: TStringField;
    cdsPessoa_ConsultaVLR_LIMITE_CREDITO: TFloatField;
    cdsPessoa_ConsultaINSC_EST_ST: TStringField;
    cdsPessoa_ConsultaUF_ST: TStringField;
    sdsPessoaTIPO_CONSUMIDOR: TSmallintField;
    sdsPessoaTIPO_CONTRIBUINTE: TSmallintField;
    cdsPessoaTIPO_CONSUMIDOR: TSmallintField;
    cdsPessoaTIPO_CONTRIBUINTE: TSmallintField;
    cdsPessoa_ConsultaCNPJ_CPF: TStringField;
    sdsPessoaINSC_SUFRAMA: TStringField;
    cdsPessoaINSC_SUFRAMA: TStringField;
    qParametrosCADASTRA_ORGAO_PUBLICO: TStringField;
    sdsPessoaCOD_ALFA: TStringField;
    cdsPessoaCOD_ALFA: TStringField;
    qParametrosEMPRESA_CONTABIL: TStringField;
    cdsPessoa_ConsultaCOD_ALFA: TStringField;
    sdsPessoaTP_PREPOSTO: TStringField;
    sdsPessoaTP_EXPORTACAO: TStringField;
    cdsPessoaTP_PREPOSTO: TStringField;
    cdsPessoaTP_EXPORTACAO: TStringField;
    sdsPessoaCARIMBO: TStringField;
    cdsPessoaCARIMBO: TStringField;
    qParametrosUSA_CARIMBO: TStringField;
    qParametrosPERC_COMISSAO_PAGA_NOTA: TFloatField;
    cdsPessoa_ConsultaDTPEDIDO: TDateField;
    cdsPessoa_ConsultaDTNOTA: TDateField;
    sdsPessoaDTPEDIDO: TDateField;
    sdsPessoaDTNOTA: TDateField;
    cdsPessoaDTPEDIDO: TDateField;
    cdsPessoaDTNOTA: TDateField;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    frxRichObject1: TfrxRichObject;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    cdsPessoa_ConsultaNOME_CONDPGTO: TStringField;
    cdsPessoaPERC_COMISSAO_VEND: TFloatField;
    cdsPessoa_ConsultaNOME_VENDEDOR: TStringField;
    cdsPessoa_ConsultaPERC_COMISSAO_VEND: TFloatField;
    cdsPessoa_ConsultaDTCADASTRO: TDateField;
    cdsPessoa_ConsultaHRCADASTRO: TTimeField;
    qParametrosID_CLIENTE_CONSUMIDOR: TIntegerField;
    mImpAuxiliar: TClientDataSet;
    mImpAuxiliarID: TIntegerField;
    dsmImpAuxiliar: TDataSource;
    frxDBDataset2: TfrxDBDataset;
    mImpAuxiliarItem: TIntegerField;
    mResumo: TClientDataSet;
    dsmResumo: TDataSource;
    mResumoCodigo: TStringField;
    mResumoNome: TStringField;
    mResumoQtd: TIntegerField;
    mResumoQtd_Ativo: TIntegerField;
    mResumoQtd_Inativo: TIntegerField;
    mResumoTipo: TStringField;
    frxDBDataset3: TfrxDBDataset;
    mResumoNome_Tipo: TStringField;
    frxXLSExport1: TfrxXLSExport;
    sdsPessoaPERC_DESC_SUFRAMA: TFloatField;
    cdsPessoaPERC_DESC_SUFRAMA: TFloatField;
    sdsOBS_Lei: TSQLDataSet;
    dspOBS_Lei: TDataSetProvider;
    cdsOBS_Lei: TClientDataSet;
    dsOBS_Lei: TDataSource;
    cdsOBS_LeiID: TIntegerField;
    cdsOBS_LeiNOME: TStringField;
    cdsOBS_LeiOBS: TStringField;
    sdsPessoa_FiscalDESC_SUFRAMA_PIS_COFINS: TStringField;
    sdsPessoa_FiscalDESC_SUFRAMA_ICMS: TStringField;
    sdsPessoa_FiscalDESC_SUFRAMA_IPI: TStringField;
    cdsPessoa_FiscalDESC_SUFRAMA_PIS_COFINS: TStringField;
    cdsPessoa_FiscalDESC_SUFRAMA_ICMS: TStringField;
    cdsPessoa_FiscalDESC_SUFRAMA_IPI: TStringField;
    sdsPessoa_FiscalOBS_LEI_SUFRAMA: TStringField;
    sdsPessoa_FiscalOBS_LEI_DADOS_ADICIONAIS: TStringField;
    cdsPessoa_FiscalOBS_LEI_SUFRAMA: TStringField;
    cdsPessoa_FiscalOBS_LEI_DADOS_ADICIONAIS: TStringField;
    sdsPessoa_FiscalID_CST_ICMS_SUFRAMA: TIntegerField;
    sdsPessoa_FiscalID_CST_PIS_COFINS_SUFRAMA: TIntegerField;
    sdsPessoa_FiscalID_CST_IPI_SUFRAMA: TIntegerField;
    cdsPessoa_FiscalID_CST_ICMS_SUFRAMA: TIntegerField;
    cdsPessoa_FiscalID_CST_PIS_COFINS_SUFRAMA: TIntegerField;
    cdsPessoa_FiscalID_CST_IPI_SUFRAMA: TIntegerField;
    sdsTab_CSTICMS: TSQLDataSet;
    dspTab_CSTICMS: TDataSetProvider;
    cdsTab_CSTICMS: TClientDataSet;
    dsTab_CSTICMS: TDataSource;
    cdsTab_CSTICMSID: TIntegerField;
    cdsTab_CSTICMSPERCENTUAL: TFloatField;
    cdsTab_CSTICMSCOD_CST: TStringField;
    cdsTab_CSTICMSNOME: TStringField;
    qParametrosTIPO_COMISSAO_PROD: TStringField;
    sdsPessoa_FiscalID_ENQIPI_SUFRAMA: TIntegerField;
    sdsPessoa_FiscalID_ENQIPI: TIntegerField;
    cdsPessoa_FiscalID_ENQIPI_SUFRAMA: TIntegerField;
    cdsPessoa_FiscalID_ENQIPI: TIntegerField;
    qEnqIPI: TSQLQuery;
    qEnqIPIID: TIntegerField;
    qEnqIPICODIGO: TStringField;
    qEnqIPITIPO: TStringField;
    qEnqIPIDESCRICAO: TStringField;
    sdsPessoaVLR_LIMITE_COMPRA: TFloatField;
    cdsPessoaVLR_LIMITE_COMPRA: TFloatField;
    qParametros_Fin: TSQLQuery;
    qParametros_FinID: TIntegerField;
    qParametros_FinCONTROLAR_DUP_USUARIO: TStringField;
    qParametros_FinUSA_METAS_VENDEDOR: TStringField;
    qParametros_FinUSA_LIMITE_COMPRAS: TStringField;
    cdsUFQTD_DIGITOS_IE: TIntegerField;
    dsPessoa_Fisica: TDataSource;
    cdsPessoa_Fisica: TClientDataSet;
    dspPessoa_Fisica: TDataSetProvider;
    sdsPessoa_Fisica: TSQLDataSet;
    sdsPessoa_FisicaCODIGO: TIntegerField;
    sdsPessoa_FisicaCOD_AGENCIA: TStringField;
    sdsPessoa_FisicaNOME_AGENCIA: TStringField;
    sdsPessoa_FisicaCONTA_CONJUNTA: TStringField;
    sdsPessoa_FisicaCOD_OP: TStringField;
    sdsPessoa_FisicaNUM_CONTA: TStringField;
    sdsPessoa_FisicaDV_CONTA: TStringField;
    sdsPessoa_FisicaDTNASCIMENTO: TDateField;
    sdsPessoa_FisicaSEXO: TStringField;
    sdsPessoa_FisicaNACIONALIDADE: TStringField;
    sdsPessoa_FisicaUF_NAT: TStringField;
    sdsPessoa_FisicaID_CIDADE_NAT: TIntegerField;
    sdsPessoa_FisicaRG_NUM: TStringField;
    sdsPessoa_FisicaRG_ORGAO: TStringField;
    sdsPessoa_FisicaRG_UF: TStringField;
    sdsPessoa_FisicaRG_DTEMISSAO: TDateField;
    sdsPessoa_FisicaMENOS_18: TStringField;
    sdsPessoa_FisicaESTADO_CIVIL: TStringField;
    sdsPessoa_FisicaGRAU_INSTRUCAO: TStringField;
    sdsPessoa_FisicaCONJUGE_CPF: TStringField;
    sdsPessoa_FisicaCONJUGE_NOME: TStringField;
    sdsPessoa_FisicaCONJUGE_DTNASCIMENTO: TDateField;
    cdsPessoa_FisicaCODIGO: TIntegerField;
    cdsPessoa_FisicaCOD_AGENCIA: TStringField;
    cdsPessoa_FisicaNOME_AGENCIA: TStringField;
    cdsPessoa_FisicaCONTA_CONJUNTA: TStringField;
    cdsPessoa_FisicaCOD_OP: TStringField;
    cdsPessoa_FisicaNUM_CONTA: TStringField;
    cdsPessoa_FisicaDV_CONTA: TStringField;
    cdsPessoa_FisicaDTNASCIMENTO: TDateField;
    cdsPessoa_FisicaSEXO: TStringField;
    cdsPessoa_FisicaNACIONALIDADE: TStringField;
    cdsPessoa_FisicaUF_NAT: TStringField;
    cdsPessoa_FisicaID_CIDADE_NAT: TIntegerField;
    cdsPessoa_FisicaRG_NUM: TStringField;
    cdsPessoa_FisicaRG_ORGAO: TStringField;
    cdsPessoa_FisicaRG_UF: TStringField;
    cdsPessoa_FisicaRG_DTEMISSAO: TDateField;
    cdsPessoa_FisicaMENOS_18: TStringField;
    cdsPessoa_FisicaESTADO_CIVIL: TStringField;
    cdsPessoa_FisicaGRAU_INSTRUCAO: TStringField;
    cdsPessoa_FisicaCONJUGE_CPF: TStringField;
    cdsPessoa_FisicaCONJUGE_NOME: TStringField;
    cdsPessoa_FisicaCONJUGE_DTNASCIMENTO: TDateField;
    sdsPessoa_FisicaGRAU_SIGILO: TStringField;
    cdsPessoa_FisicaGRAU_SIGILO: TStringField;
    qParametros_Geral: TSQLQuery;
    qParametros_GeralMOSTRAR_DADOS_PESSOA_FISICA: TStringField;
    sdsPessoaID_GRUPO: TIntegerField;
    cdsPessoaID_GRUPO: TIntegerField;
    cdsPessoa_ConsultaNOME_GRUPO: TStringField;
    sdsGrupo_Pessoa: TSQLDataSet;
    dspGrupo_Pessoa: TDataSetProvider;
    cdsGrupo_Pessoa: TClientDataSet;
    dsGrupo_Pessoa: TDataSource;
    cdsGrupo_PessoaID: TIntegerField;
    cdsGrupo_PessoaNOME: TStringField;
    sdsPessoa_FisicaCOD_SOCIO: TIntegerField;
    cdsPessoa_FisicaCOD_SOCIO: TIntegerField;
    sdsPessoa_FisicaNOME_EMP: TStringField;
    sdsPessoa_FisicaENDERECO_EMP: TStringField;
    sdsPessoa_FisicaMATRICULA_EMP: TStringField;
    sdsPessoa_FisicaFONE_EMP: TStringField;
    sdsPessoa_FisicaBAIRRO_EMP: TStringField;
    sdsPessoa_FisicaID_CIDADE_EMP: TStringField;
    sdsPessoa_FisicaCELULAR_EMP: TStringField;
    sdsPessoa_FisicaCEP_EMP: TStringField;
    sdsPessoa_FisicaCARGO_EMP: TStringField;
    sdsPessoa_FisicaINSC_SOCIAL_EMP: TStringField;
    sdsPessoa_FisicaJORNADA_TRAB_EMP: TStringField;
    sdsPessoa_FisicaVLR_SALARIO_BASE_EMP: TFloatField;
    sdsPessoa_FisicaVLR_SALARIO_BRUTO_EMP: TFloatField;
    sdsPessoa_FisicaDTADMISSAO_EMP: TDateField;
    sdsPessoa_FisicaVLR_RENDA_EXTRA: TFloatField;
    sdsPessoa_FisicaVLR_RENDA_FAMILIAR: TFloatField;
    sdsPessoa_FisicaETNIA: TStringField;
    sdsPessoa_FisicaCADEIRANTE: TStringField;
    cdsPessoa_FisicaNOME_EMP: TStringField;
    cdsPessoa_FisicaENDERECO_EMP: TStringField;
    cdsPessoa_FisicaMATRICULA_EMP: TStringField;
    cdsPessoa_FisicaFONE_EMP: TStringField;
    cdsPessoa_FisicaBAIRRO_EMP: TStringField;
    cdsPessoa_FisicaID_CIDADE_EMP: TStringField;
    cdsPessoa_FisicaCELULAR_EMP: TStringField;
    cdsPessoa_FisicaCEP_EMP: TStringField;
    cdsPessoa_FisicaCARGO_EMP: TStringField;
    cdsPessoa_FisicaINSC_SOCIAL_EMP: TStringField;
    cdsPessoa_FisicaJORNADA_TRAB_EMP: TStringField;
    cdsPessoa_FisicaVLR_SALARIO_BASE_EMP: TFloatField;
    cdsPessoa_FisicaVLR_SALARIO_BRUTO_EMP: TFloatField;
    cdsPessoa_FisicaDTADMISSAO_EMP: TDateField;
    cdsPessoa_FisicaVLR_RENDA_EXTRA: TFloatField;
    cdsPessoa_FisicaVLR_RENDA_FAMILIAR: TFloatField;
    cdsPessoa_FisicaETNIA: TStringField;
    cdsPessoa_FisicaCADEIRANTE: TStringField;
    dsPessoa_Dep: TDataSource;
    cdsPessoa_Dep: TClientDataSet;
    dspPessoa_Dep: TDataSetProvider;
    sdsPessoa_Dep: TSQLDataSet;
    sdsPessoa_DepCODIGO: TIntegerField;
    sdsPessoa_DepITEM: TIntegerField;
    sdsPessoa_DepNOME: TStringField;
    sdsPessoa_DepDTNASCIMENTO: TDateField;
    sdsPessoa_DepPARENTESCO: TStringField;
    cdsPessoa_DepCODIGO: TIntegerField;
    cdsPessoa_DepITEM: TIntegerField;
    cdsPessoa_DepNOME: TStringField;
    cdsPessoa_DepDTNASCIMENTO: TDateField;
    cdsPessoa_DepPARENTESCO: TStringField;
    sdsPessoaTP_FUNCIONARIO: TStringField;
    cdsPessoaTP_FUNCIONARIO: TStringField;
    qParametros_GeralLIBERAR_DIG_DTCADASTRO: TStringField;
    cdsPessoa_ConsultaTIPO_CONTRIBUINTE: TSmallintField;
    sdsPessoaIMP_COD_PRODUTO_CLI: TStringField;
    cdsPessoaIMP_COD_PRODUTO_CLI: TStringField;
    qParametros_NFe: TSQLQuery;
    qParametros_NFeID: TIntegerField;
    qParametros_NFeUSA_OPCAO_IMP_COD_CLI: TStringField;
    qFilialLOCALSERVIDORNFE: TStringField;
    sdsPessoaFILIAL: TIntegerField;
    cdsPessoaFILIAL: TIntegerField;
    qParametros_GeralUSAR_PESSOA_FILIAL: TStringField;
    sdsPessoaVLR_ULT_FATURAMENTO: TFloatField;
    cdsPessoaVLR_ULT_FATURAMENTO: TFloatField;
    cdsPessoa_ConsultaVLR_ULT_FATURAMENTO: TFloatField;
    sdsPessoaQTD_ULT_FATURAMENTO: TFloatField;
    cdsPessoaQTD_ULT_FATURAMENTO: TFloatField;
    cdsPessoa_ConsultaQTD_ULT_FATURAMENTO: TFloatField;
    sdsPessoaCOD_CONTABIL_CLIENTE: TIntegerField;
    sdsPessoaCOD_CONTABIL_FORNECEDOR: TIntegerField;
    cdsPessoaCOD_CONTABIL_CLIENTE: TIntegerField;
    cdsPessoaCOD_CONTABIL_FORNECEDOR: TIntegerField;
    qParametros_GeralMOSTRAR_COD_CONTABIL: TStringField;
    sdsPessoaID_REGIAO_VENDA: TIntegerField;
    cdsPessoaID_REGIAO_VENDA: TIntegerField;
    sdsPessoa_FiscalID_CST_ICMS: TIntegerField;
    cdsPessoa_FiscalID_CST_ICMS: TIntegerField;
    sdsPessoa_FisicaMORADIA: TStringField;
    sdsPessoa_FisicaCONJUGE_PAI: TStringField;
    sdsPessoa_FisicaCONJUGE_MAE: TStringField;
    sdsPessoa_FisicaCONJUGE_EMP: TStringField;
    sdsPessoa_FisicaCONJUGE_DTADM: TDateField;
    sdsPessoa_FisicaCONJUGE_CARGO: TStringField;
    sdsPessoa_FisicaCONJUGE_RENDA: TFloatField;
    sdsPessoa_FisicaCONJUGE_ID_CID_EMP: TIntegerField;
    sdsPessoa_FisicaCONJUGE_CID_EMP: TStringField;
    sdsPessoa_FisicaCONJUGE_UF_EMP: TStringField;
    sdsPessoa_FisicaCONJUGE_FONE_EMP: TStringField;
    sdsPessoa_FisicaCONJUGE_END_EMP: TStringField;
    sdsPessoa_FisicaCONJUGE_RG: TStringField;
    cdsPessoa_FisicaMORADIA: TStringField;
    cdsPessoa_FisicaCONJUGE_PAI: TStringField;
    cdsPessoa_FisicaCONJUGE_MAE: TStringField;
    cdsPessoa_FisicaCONJUGE_EMP: TStringField;
    cdsPessoa_FisicaCONJUGE_DTADM: TDateField;
    cdsPessoa_FisicaCONJUGE_CARGO: TStringField;
    cdsPessoa_FisicaCONJUGE_RENDA: TFloatField;
    cdsPessoa_FisicaCONJUGE_ID_CID_EMP: TIntegerField;
    cdsPessoa_FisicaCONJUGE_CID_EMP: TStringField;
    cdsPessoa_FisicaCONJUGE_UF_EMP: TStringField;
    cdsPessoa_FisicaCONJUGE_FONE_EMP: TStringField;
    cdsPessoa_FisicaCONJUGE_END_EMP: TStringField;
    cdsPessoa_FisicaCONJUGE_RG: TStringField;
    sdsPessoa_FisicaTEMPO_MOR: TStringField;
    cdsPessoa_FisicaTEMPO_MOR: TStringField;
    sdsPessoa_FisicaOBS_MOR: TStringField;
    cdsPessoa_FisicaOBS_MOR: TStringField;
    dsPessoa_RefC: TDataSource;
    cdsPessoa_RefC: TClientDataSet;
    dspPessoa_RefC: TDataSetProvider;
    sdsPessoa_RefC: TSQLDataSet;
    sdsPessoa_RefCCODIGO: TIntegerField;
    sdsPessoa_RefCITEM: TIntegerField;
    sdsPessoa_RefCNOME: TStringField;
    sdsPessoa_RefCTEMPO: TStringField;
    sdsPessoa_RefCOBS: TStringField;
    cdsPessoa_RefCCODIGO: TIntegerField;
    cdsPessoa_RefCITEM: TIntegerField;
    cdsPessoa_RefCNOME: TStringField;
    cdsPessoa_RefCTEMPO: TStringField;
    cdsPessoa_RefCOBS: TStringField;
    dsPessoa_Aut: TDataSource;
    cdsPessoa_Aut: TClientDataSet;
    dspPessoa_Aut: TDataSetProvider;
    sdsPessoa_Aut: TSQLDataSet;
    sdsPessoa_AutCODIGO: TIntegerField;
    sdsPessoa_AutITEM: TIntegerField;
    sdsPessoa_AutNOME: TStringField;
    sdsPessoa_AutPARENTESCO: TStringField;
    sdsPessoa_AutOBS: TStringField;
    cdsPessoa_AutCODIGO: TIntegerField;
    cdsPessoa_AutITEM: TIntegerField;
    cdsPessoa_AutNOME: TStringField;
    cdsPessoa_AutPARENTESCO: TStringField;
    cdsPessoa_AutOBS: TStringField;
    sdsPessoa_RefP: TSQLDataSet;
    dspPessoa_RefP: TDataSetProvider;
    sdsPessoa_RefPCODIGO: TIntegerField;
    sdsPessoa_RefPITEM: TIntegerField;
    sdsPessoa_RefPNOME: TStringField;
    sdsPessoa_RefPID_CIDADE: TIntegerField;
    sdsPessoa_RefPUF: TStringField;
    sdsPessoa_RefPCIDADE: TStringField;
    sdsPessoa_RefPENDERECO: TStringField;
    sdsPessoa_RefPPARENTESCO: TStringField;
    sdsPessoa_RefPOBS: TStringField;
    sdsPessoa_RefPFONE: TStringField;
    cdsPessoa_RefP: TClientDataSet;
    cdsPessoa_RefPCODIGO: TIntegerField;
    cdsPessoa_RefPITEM: TIntegerField;
    cdsPessoa_RefPNOME: TStringField;
    cdsPessoa_RefPID_CIDADE: TIntegerField;
    cdsPessoa_RefPUF: TStringField;
    cdsPessoa_RefPCIDADE: TStringField;
    cdsPessoa_RefPENDERECO: TStringField;
    cdsPessoa_RefPPARENTESCO: TStringField;
    cdsPessoa_RefPOBS: TStringField;
    cdsPessoa_RefPFONE: TStringField;
    dsPessoa_RefP: TDataSource;
    sdsPessoa_FisicaNUM_CART_TRAB: TStringField;
    cdsPessoa_FisicaNUM_CART_TRAB: TStringField;
    sdsPessoa_FisicaCONJUGE_END: TStringField;
    cdsPessoa_FisicaCONJUGE_END: TStringField;
    sdsPessoa_FisicaCONJUGE_CART_PROF: TStringField;
    cdsPessoa_FisicaCONJUGE_CART_PROF: TStringField;
    sdsPessoa_FisicaCONJUGE_CID: TStringField;
    cdsPessoa_FisicaCONJUGE_CID: TStringField;
    sdsPessoa_FisicaINF_SPC: TStringField;
    cdsPessoa_FisicaINF_SPC: TStringField;
    sdsPessoaTIPO_CREDITO: TStringField;
    cdsPessoaTIPO_CREDITO: TStringField;
    qParametros_FinMOSTRAR_TIPO_CRED: TStringField;
    dsPessoa_Ativ: TDataSource;
    cdsPessoa_Ativ: TClientDataSet;
    dspPessoa_Ativ: TDataSetProvider;
    sdsPessoa_Ativ: TSQLDataSet;
    sdsPessoa_AtivCODIGO: TIntegerField;
    sdsPessoa_AtivITEM: TIntegerField;
    sdsPessoa_AtivID_ATIVIDADE: TIntegerField;
    sdsPessoa_AtivNOME_ATIVIDADE: TStringField;
    cdsPessoa_AtivCODIGO: TIntegerField;
    cdsPessoa_AtivITEM: TIntegerField;
    cdsPessoa_AtivID_ATIVIDADE: TIntegerField;
    cdsPessoa_AtivNOME_ATIVIDADE: TStringField;
    qAtividade: TSQLQuery;
    qAtividadeID: TIntegerField;
    qAtividadeNOME: TStringField;
    qAtividadeTIPO: TStringField;
    qAtividadeCOD_ANT: TIntegerField;
    qParametros_GeralINF_USUARIO_VEND: TStringField;
    sdsPessoaUSUARIO_LOG: TStringField;
    cdsPessoaUSUARIO_LOG: TStringField;
    sdsUsuario: TSQLDataSet;
    dspUsuario: TDataSetProvider;
    cdsUsuario: TClientDataSet;
    dsUsuario: TDataSource;
    cdsUsuarioUCIDUSER: TIntegerField;
    cdsUsuarioUCUSERNAME: TStringField;
    cdsUsuarioUCLOGIN: TStringField;
    cdsUsuarioUCPASSWORD: TStringField;
    cdsUsuarioUCEMAIL: TStringField;
    cdsUsuarioUCPRIVILEGED: TIntegerField;
    cdsUsuarioUCTYPEREC: TStringField;
    cdsUsuarioUCPROFILE: TIntegerField;
    cdsUsuarioUCKEY: TStringField;
    sdsCarteira: TSQLDataSet;
    dsdCarteira: TDataSetProvider;
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
    sdsPessoaID_CARTEIRA: TIntegerField;
    cdsPessoaID_CARTEIRA: TIntegerField;
    sdsPessoaPROTESTAR: TStringField;
    cdsPessoaPROTESTAR: TStringField;
    qParametros_GeralPESSOA_TIPO_PADRAO: TStringField;
    qParametros_GeralPESSOA_PAIS_PADRAO: TIntegerField;
    qParametros_GeralPESSOA_CIDADE_PADRAO: TIntegerField;
    sdsPessoa_FiscalID_CST_ICMS_SUFRAMA_ST: TIntegerField;
    cdsPessoa_FiscalID_CST_ICMS_SUFRAMA_ST: TIntegerField;
    cdsPessoa_ConsultaDTNASCIMENTO: TDateField;
    cdsPessoa_ConsultaMAE_NOME: TStringField;
    cdsPessoa_ConsultaPAI_NOME: TStringField;
    cdsPessoa_ConsultaCONJUGE_NOME: TStringField;
    cdsPessoa_ConsultaCONJUGE_CPF: TStringField;
    cdsPessoa_ConsultaCONJUGE_DTNASCIMENTO: TDateField;
    cdsPessoa_ConsultaNUM_CART_TRAB: TStringField;
    cdsPessoa_ConsultaNOME_EMP: TStringField;
    cdsPessoa_ConsultaENDERECO_EMP: TStringField;
    cdsPessoa_ConsultaFONE_EMP: TStringField;
    cdsPessoa_ConsultaDTADMISSAO_EMP: TDateField;
    cdsPessoa_ConsultaVLR_SALARIO_BRUTO_EMP: TFloatField;
    cdsPessoa_ConsultaCARGO_EMP: TStringField;
    sdsPessoaDDDCELULAR: TIntegerField;
    sdsPessoaCELULAR: TStringField;
    cdsPessoaDDDCELULAR: TIntegerField;
    cdsPessoaCELULAR: TStringField;
    qParametros_GeralUSA_ISENTO_PESSOA: TStringField;
    sdsPessoaCONT_CUSTO_LIQ: TStringField;
    cdsPessoaCONT_CUSTO_LIQ: TStringField;
    cdsPessoa_ConsultaCOD_CONTA_ORCAMENTO: TStringField;
    qParametros_GeralENDGRIDS: TStringField;
    qAniversario: TSQLQuery;
    mAniversario: TClientDataSet;
    dsAniversario: TDataSource;
    mAniversarioCodigo: TIntegerField;
    mAniversarioNome: TStringField;
    mAniversarioFantasia: TStringField;
    mAniversarioCidade: TStringField;
    mAniversarioFone: TStringField;
    frxAniversario: TfrxDBDataset;
    mAniversarioMes: TStringField;
    mAniversarioDia: TStringField;
    qAniversarioCODIGO: TIntegerField;
    qAniversarioNOME: TStringField;
    qAniversarioFANTASIA: TStringField;
    qAniversarioCIDADE: TStringField;
    qAniversarioFONE: TStringField;
    qAniversarioMES: TSmallintField;
    qAniversarioDIA: TSmallintField;
    cdsFilialUF: TStringField;
    cdsPessoa_ConsultaCOD_ORC_CLI: TStringField;
    cdsPessoa_ConsultaNOME_ORC_CLI: TStringField;
    cdsPessoa_ConsultaCOD_ORC_FORN: TStringField;
    cdsPessoa_ConsultaNOME_ORC_FORN: TStringField;
    cdsPessoa_ConsultaCOD_ORC_TRANSP: TStringField;
    cdsPessoa_ConsultaNOME_ORC_TRANSP: TStringField;
    cdsPessoa_ConsultaCOD_ORC_VEND: TStringField;
    cdsPessoa_ConsultaNOME_ORC_VEND: TStringField;
    sdsPessoaUSA_OC_XML: TStringField;
    cdsPessoaUSA_OC_XML: TStringField;
    qParametros_RecXML: TSQLQuery;
    qParametros_RecXMLUSA_OC_XML: TStringField;
    frxDBDataset4: TfrxDBDataset;
    frxDBDataset5: TfrxDBDataset;
    frxDBDataset6: TfrxDBDataset;
    sdsPessoaIMP_COR_CLIENTE: TStringField;
    cdsPessoaIMP_COR_CLIENTE: TStringField;
    qFilialPESSOA: TStringField;
    sdsPessoaOBS_AVISO: TStringField;
    sdsPessoaMOSTRAR_AVISO: TStringField;
    cdsPessoaOBS_AVISO: TStringField;
    cdsPessoaMOSTRAR_AVISO: TStringField;
    dsPessoa_Vend: TDataSource;
    cdsPessoa_Vend: TClientDataSet;
    dspPessoa_Vend: TDataSetProvider;
    sdsPessoa_Vend: TSQLDataSet;
    sdsPessoa_VendCODIGO: TIntegerField;
    sdsPessoa_VendCOD_VENDEDOR: TIntegerField;
    cdsPessoa_VendCODIGO: TIntegerField;
    cdsPessoa_VendCOD_VENDEDOR: TIntegerField;
    qParametros_GeralUSA_COD_VENDEDOR: TStringField;
    cdsPessoa_ConsultaCOD_VENDEDOR: TIntegerField;
    sdsPessoa_FisicaSENHA: TStringField;
    sdsPessoa_FisicaCONTRA_SENHA: TStringField;
    cdsPessoa_FisicaSENHA: TStringField;
    cdsPessoa_FisicaCONTRA_SENHA: TStringField;
    qParametros_GeralUSA_SENHA_CONTRASENHA: TStringField;
    dsPessoa_TipoMat: TDataSource;
    cdsPessoa_TipoMat: TClientDataSet;
    dspPessoa_TipoMat: TDataSetProvider;
    sdsPessoa_TipoMat: TSQLDataSet;
    sdsPessoa_TipoMatCODIGO: TIntegerField;
    sdsPessoa_TipoMatITEM: TIntegerField;
    sdsPessoa_TipoMatID_TIPO_MATERIAL: TIntegerField;
    sdsPessoa_TipoMatESPESSURA: TFloatField;
    cdsPessoa_TipoMatCODIGO: TIntegerField;
    cdsPessoa_TipoMatITEM: TIntegerField;
    cdsPessoa_TipoMatID_TIPO_MATERIAL: TIntegerField;
    cdsPessoa_TipoMatESPESSURA: TFloatField;
    sdsTipo_Material: TSQLDataSet;
    dspTipo_Material: TDataSetProvider;
    cdsTipo_Material: TClientDataSet;
    dsTipo_Material: TDataSource;
    cdsTipo_MaterialID: TIntegerField;
    cdsTipo_MaterialNOME: TStringField;
    cdsTipo_MaterialDENSIDADE: TFloatField;
    cdsTipo_MaterialVALOR: TFloatField;
    cdsTipo_MaterialUNIDADE: TStringField;
    cdsPessoa_TipoMatlkNOME_TIPO_MAT: TStringField;
    qParametros_GeralUSA_TIPO_MATERIAL: TStringField;
    sdsPessoaMDIA1: TIntegerField;
    sdsPessoaMDIA2: TIntegerField;
    cdsPessoaMDIA1: TIntegerField;
    cdsPessoaMDIA2: TIntegerField;
    cdsUFACEITA_ISENTO: TStringField;
    sdsPessoaASSOCIAR_PROD: TStringField;
    cdsPessoaASSOCIAR_PROD: TStringField;
    qParametros_RecXMLCONTROLAR_GRAVA_PROD: TStringField;
    qParametros_CTA_ORC: TSQLQuery;
    qParametros_CTA_ORCUSA_SINTETICA: TStringField;
    sdsPessoaFUNCIONARIO_CONTA_ID: TIntegerField;
    cdsPessoaFUNCIONARIO_CONTA_ID: TIntegerField;
    sdsPessoaBAIXAR_ETIQ_PREFAT: TStringField;
    cdsPessoaBAIXAR_ETIQ_PREFAT: TStringField;
    cdsPessoa_ConsultaDESC_TIPO_CONSUMIDOR: TStringField;
    cdsPessoa_ConsultaDESC_TIPO_CONTRIBUINTE: TStringField;
    sdsPessoaCAIXINHA: TStringField;
    cdsPessoaCAIXINHA: TStringField;
    qParametros_Ped: TSQLQuery;
    qParametros_PedUSA_CAIXINHA: TStringField;
    qParametros_GeralPERMITE_CNPJ_DUPLICADO_TRANSP: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsPessoaNewRecord(DataSet: TDataSet);
    procedure dspPessoaUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsPessoa_ContatoBeforeInsert(DataSet: TDataSet);
    procedure cdsPessoa_ContatoAfterInsert(DataSet: TDataSet);
    procedure cdsPessoa_ContatoBeforePost(DataSet: TDataSet);
    procedure cdsPessoa_Servico_IntBeforePost(DataSet: TDataSet);
    procedure cdsPessoaBeforePost(DataSet: TDataSet);
    procedure cdsPessoa_Servico_IntNewRecord(DataSet: TDataSet);
    procedure frxDBDataset2First(Sender: TObject);
    procedure frxDBDataset2Next(Sender: TObject);
    procedure cdsPessoa_FiscalNewRecord(DataSet: TDataSet);
    procedure cdsPessoaReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsPessoa_DepBeforeInsert(DataSet: TDataSet);
    procedure cdsPessoa_DepAfterInsert(DataSet: TDataSet);
    procedure cdsPessoa_DepAfterPost(DataSet: TDataSet);
    procedure cdsPessoa_RefPBeforeInsert(DataSet: TDataSet);
    procedure cdsPessoa_RefCBeforeInsert(DataSet: TDataSet);
    procedure cdsPessoa_AutBeforeInsert(DataSet: TDataSet);
    procedure cdsPessoa_RefPAfterInsert(DataSet: TDataSet);
    procedure cdsPessoa_RefCAfterInsert(DataSet: TDataSet);
    procedure cdsPessoa_AutAfterInsert(DataSet: TDataSet);
    procedure cdsPessoa_RefPAfterPost(DataSet: TDataSet);
    procedure cdsPessoa_RefCAfterPost(DataSet: TDataSet);
    procedure cdsPessoa_AutAfterPost(DataSet: TDataSet);
    procedure cdsPessoa_FisicaAfterInsert(DataSet: TDataSet);
    procedure cdsPessoa_AtivBeforeInsert(DataSet: TDataSet);
    procedure cdsPessoa_AtivAfterInsert(DataSet: TDataSet);
    procedure cdsPessoa_AtivAfterPost(DataSet: TDataSet);
    procedure cdsPessoa_TipoMatBeforeInsert(DataSet: TDataSet);
    procedure cdsPessoa_TipoMatAfterInsert(DataSet: TDataSet);
    procedure cdsPessoa_TipoMatAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    vID_CidadePes: Integer;
    vItem_Conatato: Integer;
    vItem_Dep: Integer;
    vItem_TipoMat : Integer;
    vItem_Ativ: Integer;
    procedure prc_Gravar_Cidade;
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgPessoa: String;
    ctCommand: String;
    ctConsulta: String;
    ctServico_Pad, ctServico_Int: String;
    ctCidade: String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir(Tipo: String = '');
    procedure prc_Gravar;
    procedure prc_Excluir;
    procedure prc_Abre_Carteira(ID_BANCO: Integer);
    function  fnc_Erro_Registro: Boolean;

    procedure prc_Gravar_Dados_Pessoa;
    procedure prc_Abrir_Servico;

    procedure prc_Gravar_Pessoa_Servico(ID_Servico: Integer ; Perc_Iss: Real);
    procedure prc_Gravar_Pessoa_Servico_Int(ID_Servico: Integer ; Somar_Diminuir, Calc_INSS, Calc_ISSQN, Calc_PISCOFINS, Calc_CSLL, Calc_IR: String ; Vlr_Servico: Real);

    procedure prc_Abrir_Natureza;
    procedure prc_Abrir_Cidade(UF: String);
  end;

var
  DMCadPessoa: TDMCadPessoa;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadPessoa.prc_Inserir(Tipo: String);
var
  vAux: Integer;
begin
  if not cdsPessoa.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('PESSOA',0);
  if vAux = 99999 then
    prc_Inserir(Tipo);

  cdsPessoa.Insert;
  cdsPessoaCODIGO.AsInteger := vAux;
  if qParametros_GeralUSAR_PESSOA_FILIAL.AsString = 'S' then
    cdsPessoaFILIAL.AsInteger := vFilial;
  if qParametros_GeralPESSOA_TIPO_PADRAO.AsString <> '' then
    cdsPessoaPESSOA.AsString := qParametros_GeralPESSOA_TIPO_PADRAO.AsString;
  if qParametros_GeralPESSOA_PAIS_PADRAO.AsString <> '' then
    cdsPessoaID_PAIS.AsString := qParametros_GeralPESSOA_PAIS_PADRAO.AsString;
  if qParametros_GeralPESSOA_CIDADE_PADRAO.AsString <> '' then
  begin
    cdsPessoaID_CIDADE.AsString  := qParametros_GeralPESSOA_CIDADE_PADRAO.AsString;
    cdsCidade.IndexFieldNames := 'ID';
    cdsCidade.FindKey([qParametros_GeralPESSOA_CIDADE_PADRAO.AsString]);
    cdsPessoaUF.AsString := cdsCidadeUF.AsString;
  end;

  cdsPessoaRETEM_ISS.AsString       := '2';
  cdsPessoaRETEM_CSLL.AsString      := 'N';
  cdsPessoaRETEM_INSS.AsString      := 'N';
  cdsPessoaRETEM_PISCOFINS.AsString := 'N';

  if Tipo = 'C' then //Cliente
    cdsPessoaTP_CLIENTE.AsString := 'S';
  if Tipo = 'F' then
    cdsPessoaTP_FORNECEDOR.AsString := 'S';
  if Tipo = 'V' then
    cdsPessoaTP_VENDEDOR.AsString := 'S';
  if Tipo = 'T' then
    cdsPessoaTP_TRANSPORTADORA.AsString := 'S';
end;

procedure TDMCadPessoa.prc_Excluir;
var
  ID: TTransactionDesc;
begin
  if not(cdsPessoa.Active) or (cdsPessoa.IsEmpty) then
    exit;

  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try

    cdsPessoa_Contato.First;
    while not cdsPessoa_Contato.Eof do
    begin
      if cdsPessoa_ContatoCODIGO.AsInteger = cdsPessoaCODIGO.AsInteger then
        cdsPessoa_Contato.Delete
      else
        cdsPessoa_Contato.Next;
    end;
    cdsPessoa_Ativ.First;
    while not cdsPessoa_Ativ.Eof do
      cdsPessoa_Ativ.Delete;
    if not cdsPessoa_Fiscal.IsEmpty then
    begin
      cdsPessoa_Fiscal.Delete;
      cdsPessoa_Fiscal.ApplyUpdates(0);
    end;

    if (cdsPessoa_Vend.Active) and  (not(cdsPessoa_Vend.IsEmpty)) then
    begin
      cdsPessoa_Vend.Delete;
      cdsPessoa_Vend.ApplyUpdates(0);
    end;

    if not cdsPessoa_Fisica.IsEmpty then
    begin
      cdsPessoa_Fisica.Delete;
      cdsPessoa_Fisica.ApplyUpdates(0);
    end;
    cdsPessoa_Dep.First;
    while not cdsPessoa_Dep.Eof do
      cdsPessoa_Dep.Delete;
    cdsPessoa_Aut.First;
    while not cdsPessoa_Aut.Eof do
      cdsPessoa_Aut.Delete;
    cdsPessoa_TipoMat.First;
    while not cdsPessoa_TipoMat.Eof do
      cdsPessoa_TipoMat.Delete;
    cdsPessoa_RefP.First;
    while not cdsPessoa_RefP.Eof do
      cdsPessoa_RefP.Delete;
    cdsPessoa_RefC.First;
    while not cdsPessoa_RefC.Eof do
      cdsPessoa_RefC.Delete;
    cdsPessoa.Delete;
    cdsPessoa.ApplyUpdates(0);
    cdsPessoa_Dep.ApplyUpdates(0);
    cdsPessoa_Ativ.ApplyUpdates(0);
    cdsPessoa_Aut.ApplyUpdates(0);
    cdsPessoa_TipoMat.ApplyUpdates(0);
    cdsPessoa_RefP.ApplyUpdates(0);
    cdsPessoa_RefC.ApplyUpdates(0);
    dmDatabase.scoDados.Commit(ID);
  except
    on e: Exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      raise;
      //Raise Exception.Create('Ocorreu o seguinte erro ao gravar a nota: ' + #13 + e.Message);
    end
  end;
end;

procedure TDMCadPessoa.prc_Gravar;
begin
  cdsPessoa.Post;
  cdsPessoa.ApplyUpdates(0);
end;

procedure TDMCadPessoa.prc_Localizar(ID: Integer);
begin
  cdsPessoa.Close;
  sdsPessoa.CommandText := ctCommand;
  if ID <> 0 then
    sdsPessoa.CommandText := sdsPessoa.CommandText + ' WHERE CODIGO = ' + IntToStr(ID);
  cdsPessoa.Open;
end;

procedure TDMCadPessoa.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand     := sdsPessoa.CommandText;
  ctConsulta    := sdsPessoa_Consulta.CommandText;
  ctServico_Int := sdsServico_Int.CommandText;
  ctServico_Pad := sdsServico_Pad.CommandText;
  ctCidade      := sdsCidade.CommandText;
  cdsUF.Open;
  cdsCidade.Open;
  cdsCondPgto.Open;
  cdsPais.Open;
  cdsVendedor.Open;
  cdsTransportadora.Open;
  cdsTipoCobranca.Open;
  cdsContas.Open;
  cdsRegimeTrib.Open;
  cdsTab_Preco.Open;
  qParametros.Close;
  qParametros.Open;
  cdsFilial.Close;
  cdsFilial.Open;
  cdsTab_CSTIPI.Open;
  cdsTab_Cofins.Open;
  cdsTab_Pis.Open;
  cdsContaOrcamento.Open;
  cdsTab_CSTICMS.Open;
  cdsCarteira.Open;
  qParametros_Fin.Close;
  qParametros_Fin.Open;
  qParametros_Geral.Close;
  qParametros_Geral.Open;
  cdsGrupo_Pessoa.Open;
  qParametros_NFe.Close;
  qParametros_NFe.Open;
  qParametros_RecXML.Open;
  cdsPessoa_TipoMat.Open;
  qParametros_CTA_ORC.Open;
  qParametros_Ped.Open;
  if qParametrosUSA_SERVICO.AsString = 'S' then
  begin
    prc_Abrir_Servico;
    cdsServico_Int.Open;
    cdsNatureza.Open;
  end;
  if qParametrosUSA_EDI.AsString = 'S' then
    cdsEDI_Config.Open;
  if qParametros_GeralINF_USUARIO_VEND.AsString = 'S' then
    cdsUsuario.Open;
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

procedure TDMCadPessoa.cdsPessoaNewRecord(DataSet: TDataSet);
begin
  cdsPessoaINATIVO.AsString              := 'N';
  cdsPessoaTP_CLIENTE.AsString           := 'N';
  cdsPessoaTP_FORNECEDOR.AsString        := 'N';
  cdsPessoaTP_TRANSPORTADORA.AsString    := 'N';
  cdsPessoaTP_VENDEDOR.AsString          := 'N';
  cdsPessoaTP_ATELIER.AsString           := 'N';
  cdsPessoaPESSOA.AsString               := 'J';
  cdsPessoaCOMPLEMENTO_END.AsString      := '';
  cdsPessoaCOMPLEMENTO_END_ENT.AsString  := '';
  cdsPessoaCOMPLEMENTO_END_PGTO.AsString := '';
  cdsPessoaENDERECO_ENT.AsString         := '';
  cdsPessoaENDERECO_PGTO.AsString        := '';
  cdsPessoaCEP.AsString                  := '';
  cdsPessoaCEP_ENT.AsString              := '';
  cdsPessoaCEP_PGTO.AsString             := '';
  cdsPessoaTIPO_ICMS.AsString            := 'N';
  cdsPessoaORGAO_PUBLICO.AsString        := 'N';
  cdsPessoaUSA_TRANSFICMS.AsString       := 'N';
  cdsPessoaCLIENTE_ESTOQUE.AsString      := 'N';
  if qParametrosUSA_TAMANHO_AGRUPADO_NFE.AsString = 'S' then
    cdsPessoaUSA_TAMANHO_AGRUPADO_NFE.AsString := 'S'
  else
    cdsPessoaUSA_TAMANHO_AGRUPADO_NFE.AsString := 'N';
  cdsPessoaCOBRAR_TAXA_BANCO.AsString := 'N';
  cdsPessoaORGAO_PUBLICO.AsString     := 'N';
  cdsPessoaCOD_ALFA.AsString          := '';
  cdsPessoaTP_EXPORTACAO.AsString     := 'N';
  cdsPessoaTP_PREPOSTO.AsString       := 'N';
  cdsPessoaRETEM_ISS.AsString         := '2';
  cdsPessoaRETEM_CSLL.AsString        := 'N';
  cdsPessoaRETEM_INSS.AsString        := 'N';
  cdsPessoaRETEM_PISCOFINS.AsString   := 'N';
  cdsPessoaDIMINUIR_RETENCAO.AsString := 'N';
  cdsPessoaUSUARIO.AsString           := vUsuario;
  cdsPessoaDTCADASTRO.AsDateTime      := Date;
  cdsPessoaHRCADASTRO.AsDateTime      := Now;
  cdsPessoaTP_FUNCIONARIO.AsString    := 'N';
  cdsPessoaTIPO_CREDITO.AsString      := 'L';
  cdsPessoaCONT_CUSTO_LIQ.AsString    := 'N';
  cdsPessoaUSA_OC_XML.AsString        := 'N';
  cdsPessoaID_REGIME_TRIB.AsInteger   := 3;
  cdsPessoaASSOCIAR_PROD.AsString     := 'S';
end;

procedure TDMCadPessoa.dspPessoaUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadPessoa.prc_Gravar_Dados_Pessoa;
var
  vRegime: String;
  vQtd: Integer;
  i: Integer;
begin
  cdsPessoaINSCR_EST.AsString       := cdsConsultaCadastroIE.AsString;
  //Tirado no dia 17/11/2015 
  //if Length(cdsConsultaCadastroIE.AsString) < 10 then
  //  cdsPessoaINSCR_EST.AsString     := '0' + cdsPessoaINSCR_EST.AsString;
  cdsPessoaENDERECO.AsString        := cdsConsultaCadastroxLgr.AsString;
  cdsPessoaNUM_END.AsString         := cdsConsultaCadastronro.AsString;
  cdsPessoaCOMPLEMENTO_END.AsString := cdsConsultaCadastroxCpl.AsString;
  cdsPessoaBAIRRO.AsString          := cdsConsultaCadastroxBairro.AsString;
  cdsPessoaCEP.AsString             := cdsConsultaCadastroCEP.AsString;
  vID_CidadePes := 0;
  if trim(cdsConsultaCadastrocMun.AsString) = '' then
  begin
    if cdsCidade.Locate('NOME',cdsConsultaCadastroxMun.AsString,([Locaseinsensitive])) then
      vID_CidadePes := cdsCidadeID.AsInteger
  end
  else
  if cdsCidade.Locate('CODMUNICIPIO',cdsConsultaCadastrocMun.AsString,([Locaseinsensitive])) then
    vID_CidadePes := cdsCidadeID.AsInteger
  else
    prc_Gravar_Cidade;

  vRegime := cdsConsultaCadastroxRegApur.AsString;
  if cdsConsultaCadastroxRegApur.AsString = 'GERAL' then
    vRegime := 'REGIME NORMAL';
  //if cdsRegimeTrib.Locate('NOME',cdsConsultaCadastroxRegApur.AsString,([Locaseinsensitive])) then
  if cdsRegimeTrib.Locate('NOME',vRegime,([Locaseinsensitive])) then
    cdsPessoaID_REGIME_TRIB.AsInteger := cdsRegimeTribID.AsInteger;
  cdsPessoaCIDADE.AsString := cdsConsultaCadastroxMun.AsString;
  if vID_CidadePes <= 0 then
    cdsPessoaID_CIDADE.Clear
  else
    cdsPessoaID_CIDADE.AsInteger := vID_CidadePes;
  cdsPessoaUF.AsString     := cdsConsultaCadastroUF.AsString;
  cdsPessoaNOME.AsString   := cdsConsultaCadastroxNome.AsString;
  vQtd := 0;
  if cdsUF.Locate('UF',cdsPessoaUF.AsString,([Locaseinsensitive])) then
    vQtd := cdsUFQTD_DIGITOS_IE.AsInteger;
  cdsPessoaID_PAIS.AsInteger := 1;
  if vQtd > 0 then
  begin
    for i := 1 to vQtd - Length(cdsPessoaINSCR_EST.AsString) do
      cdsPessoaINSCR_EST.AsString := '0' + cdsPessoaINSCR_EST.AsString;
  end;
end;

procedure TDMCadPessoa.prc_Gravar_Cidade;
var
  vAux: Integer;
begin
  vAux := dmDatabase.ProximaSequencia('CIDADE',0);

  cdsCidade.Insert;
  cdsCidadeID.AsInteger          := vAux;
  cdsCidadeNOME.AsString         := cdsConsultaCadastroxMun.AsString;
  cdsCidadeUF.AsString           := cdsConsultaCadastroUF.AsString;
  cdsCidadeCODMUNICIPIO.AsString := cdsConsultaCadastrocMun.AsString;
  cdsCidade.Post;
  cdsCidade.ApplyUpdates(0);

  vID_CidadePes := vAux;
end;

procedure TDMCadPessoa.prc_Abrir_Servico;
begin
  cdsServico_Pad.Close;
  sdsServico_Pad.CommandText := ctServico_Pad;
  if cdsFilialID_SERVICO_SINT.AsInteger > 0 then
    sdsServico_Pad.CommandText := sdsServico_Pad.CommandText + '  AND CODIGO LIKE ' + QuotedStr(cdsFilialCOD_SERVICO_SINT.AsString+'.%');
  cdsServico_Pad.Open;
end;

procedure TDMCadPessoa.prc_Gravar_Pessoa_Servico(ID_Servico: Integer; Perc_Iss: Real);
var
  vAux: Integer;
begin
  cdsPessoa_Servico.Last;
  vAux := cdsPessoa_ServicoITEM.AsInteger + 1;
  
  cdsPessoa_Servico.Insert;
  cdsPessoa_ServicoCODIGO.AsInteger     := cdsPessoaCODIGO.AsInteger;
  cdsPessoa_ServicoITEM.AsInteger       := vAux;
  cdsPessoa_ServicoID_SERVICO.AsInteger := ID_Servico;
  cdsPessoa_ServicoPERC_ISS.AsFloat     := Perc_Iss;
  if cdsServico_Pad.Locate('ID',ID_Servico,([Locaseinsensitive])) then
  begin
    cdsPessoa_ServicoNOME_SERVICO.AsString := cdsServico_PadNOME.AsString;
    cdsPessoa_ServicoCOD_SERVICO.AsString  := cdsServico_PadCODIGO.AsString;
  end;
  cdsPessoa_Servico.Post;
end;

function TDMCadPessoa.fnc_Erro_Registro: Boolean;
var
  vTexto: String;
begin
  Result := True;
  qParametros.Close;
  qParametros.Open;
  vMsgPessoa := '';
  if cdsPessoaCODIGO.AsInteger <= 0 then
    vMsgPessoa := vMsgPessoa + #13 + '*** ID não informado!';
  if trim(cdsPessoaNOME.AsString) = '' then
    vMsgPessoa := vMsgPessoa + #13 + '*** Nome não informado!';
    
  if ((cdsPessoaTP_CLIENTE.AsString = 'N')  or (cdsPessoaTP_CLIENTE.AsString = '')) and
     ((cdsPessoaTP_FORNECEDOR.AsString = 'N') or (cdsPessoaTP_FORNECEDOR.AsString = '')) and
     ((cdsPessoaTP_TRANSPORTADORA.AsString = 'N') or (cdsPessoaTP_TRANSPORTADORA.AsString = '')) and
     ((cdsPessoaTP_VENDEDOR.AsString = 'N') or (cdsPessoaTP_VENDEDOR.AsString = '')) and
     ((cdsPessoaTP_ATELIER.AsString = 'N')  or (cdsPessoaTP_ATELIER.AsString = '')) and
     ((cdsPessoaTP_ALUNO.AsString = 'N')    or (cdsPessoaTP_ALUNO.AsString = '')) and
     ((cdsPessoaTP_FUNCIONARIO.AsString = 'N')    or (cdsPessoaTP_FUNCIONARIO.AsString = '')) then
    vMsgPessoa := vMsgPessoa + #13 + '*** Não foi selecionado um Tipo de Pessoa!';
  if ((cdsPessoaTP_CLIENTE.AsString = 'S') or (cdsPessoaTP_ALUNO.AsString = 'S')) and (cdsPessoaCLIENTE_ESTOQUE.AsString <> 'S') and (cdsPessoaCODIGO.AsInteger <> 99999)
    and (cdsPessoaCODIGO.AsInteger <> qParametrosID_CLIENTE_CONSUMIDOR.AsInteger) then
  begin
    if trim(cdsPessoaBAIRRO.AsString) = '' then
      vMsgPessoa := vMsgPessoa + #13 + '*** Bairro não informado!';
    if trim(cdsPessoaUF.AsString) = '' then
      vMsgPessoa := vMsgPessoa + #13 + '*** UF não informado!';
    if trim(cdsPessoaCEP.AsString) = '' then
      vMsgPessoa := vMsgPessoa + #13 + '*** CEP não informado!';
    if trim(cdsPessoaNUM_END.AsString) = '' then
      vMsgPessoa := vMsgPessoa + #13 + '*** Número do Endereço não informado!';
    if trim(cdsPessoaENDERECO.AsString) = '' then
      vMsgPessoa := vMsgPessoa + #13 + '*** Endereço não informado!';
    if cdsPessoaID_PAIS.AsInteger < 1 then
      vMsgPessoa := vMsgPessoa + #13 + '*** País não informado!';
    if trim(cdsPessoaPESSOA.AsString) = '' then
      vMsgPessoa := vMsgPessoa + #13 + '*** Pessoa não informada (Jurídica/Física)!';
  end;
  if (cdsPessoaTP_VENDEDOR.AsString = 'S') and (cdsPessoaTIPO_COMISSAO.AsString = 'P') and
     (StrToFloat(FormatFloat('0.00',qParametrosPERC_COMISSAO_PAGA_NOTA.AsFloat)) <= 0) then
    vMsgPessoa := vMsgPessoa + #13 + '*** Não informado o % nos parâmetros para pagar parte da comissão na emissão da nota!';
  vTexto := Monta_Numero(cdsPessoaCEP.AsString,0);
  if Length(vTexto) > 8 then
    vMsgPessoa := vMsgPessoa + #13 + '*** CEP com dígito a mais!';
  vTexto := Monta_Numero(cdsPessoaCEP_ENT.AsString,0);
  if Length(vTexto) > 8 then
    vMsgPessoa := vMsgPessoa + #13 + '*** CEP do end. de entrega com dígito a mais!';
  vTexto := Monta_Numero(cdsPessoaCEP_PGTO.AsString,0);
  if Length(vTexto) > 8 then
    vMsgPessoa := vMsgPessoa + #13 + '*** CEP do end. de pagamento com dígito a mais!';
  if (cdsPessoaID_CIDADE.AsInteger <= 0) and (cdsPessoaCODIGO.AsInteger <> 99999) and (cdsPessoaCODIGO.AsInteger <> qParametrosID_CLIENTE_CONSUMIDOR.AsInteger)   then
    vMsgPessoa := vMsgPessoa + #13 + '*** Cidade não foi informada!';
  if qParametros_CTA_ORCUSA_SINTETICA.AsString <> 'S' then
  begin
    if (cdsPessoaCLIENTE_CONTA_ID.AsInteger > 0) and (cdsContaOrcamento.Locate('ID',cdsPessoaCLIENTE_CONTA_ID.AsInteger,([Locaseinsensitive]))) and (cdsContaOrcamentoTIPO.AsString <> 'A') then
      vMsgPessoa := vMsgPessoa + #13 + '*** Conta Orçamento Cliente não é analítica!';
    if (cdsPessoaFORNECEDOR_CONTA_ID.AsInteger > 0) and (cdsContaOrcamento.Locate('ID',cdsPessoaFORNECEDOR_CONTA_ID.AsInteger,([Locaseinsensitive]))) and (cdsContaOrcamentoTIPO.AsString <> 'A') then
      vMsgPessoa := vMsgPessoa + #13 + '*** Conta Orçamento Fornecedor não é analítica!';
    if (cdsPessoaVENDEDOR_CONTA_ID.AsInteger > 0) and (cdsContaOrcamento.Locate('ID',cdsPessoaVENDEDOR_CONTA_ID.AsInteger,([Locaseinsensitive]))) and (cdsContaOrcamentoTIPO.AsString <> 'A') then
      vMsgPessoa := vMsgPessoa + #13 + '*** Conta Orçamento Vendedor não é analítica!';
    if (cdsPessoaTRANSPORTADORA_CONTA_ID.AsInteger > 0) and (cdsContaOrcamento.Locate('ID',cdsPessoaTRANSPORTADORA_CONTA_ID.AsInteger,([Locaseinsensitive]))) and (cdsContaOrcamentoTIPO.AsString <> 'A') then
      vMsgPessoa := vMsgPessoa + #13 + '*** Conta Orçamento Transportadora não é analítica!';
    if (cdsPessoaATELIER_CONTA_ID.AsInteger > 0) and (cdsContaOrcamento.Locate('ID',cdsPessoaATELIER_CONTA_ID.AsInteger,([Locaseinsensitive]))) and (cdsContaOrcamentoTIPO.AsString <> 'A') then
      vMsgPessoa := vMsgPessoa + #13 + '*** Conta Orçamento Atelier não é analítica!';
    if (cdsPessoaFUNCIONARIO_CONTA_ID.AsInteger > 0) and (cdsContaOrcamento.Locate('ID',cdsPessoaFUNCIONARIO_CONTA_ID.AsInteger,([Locaseinsensitive]))) and (cdsContaOrcamentoTIPO.AsString <> 'A') then
      vMsgPessoa := vMsgPessoa + #13 + '*** Conta Orçamento Atelier não é analítica!';
  end;

  if (cdsPessoaTP_VENDEDOR.AsString = 'S') and ((cdsPessoaTIPO_COMISSAO.AsString <> 'D') and (cdsPessoaTIPO_COMISSAO.AsString <> 'N') and (cdsPessoaTIPO_COMISSAO.AsString <> 'P') ) then
    vMsgPessoa := vMsgPessoa + #13 + '*** Não foi informado o tipo de comissão!';
  if cdsPessoaTIPO_CONTRIBUINTE.AsInteger <= 0 then
    vMsgPessoa := vMsgPessoa + #13 + '*** Não foi informado o tipo do contribuinte!';
  if (cdsPessoaTIPO_CONTRIBUINTE.AsInteger = 1) and ((trim(cdsPessoaINSCR_EST.AsString) = '') or (cdsPessoaINSCR_EST.AsString = 'ISENTO')) then
    vMsgPessoa := vMsgPessoa + #13 + '*** Inscrição estadual não informada ou informada incorretamente!';
  //03/06/2018
  if cdsPessoaMDIA2.AsInteger < cdsPessoaMDIA1.AsInteger then
    vMsgPessoa := vMsgPessoa + #13 + '*** Dia de pgto. "2" não pode ser menor que Dia de pgto. "1"!';
  //**********

  //19/09/2017
  if qParametros_GeralUSA_ISENTO_PESSOA.AsString <> 'S' then
  begin
    if (cdsPessoaTIPO_CONTRIBUINTE.AsInteger = 2) and (cdsPessoaINSCR_EST.AsString <> 'ISENTO') then
      vMsgPessoa := vMsgPessoa + #13 + '*** Inscrição estadual ou tipo do contruibuinte informado incorretamente!';
  end;
  //****************
  if (cdsPessoaTIPO_CONTRIBUINTE.AsInteger = 9) and (cdsPessoaINSCR_EST.AsString <> '') then
    vMsgPessoa := vMsgPessoa + #13 + '*** Inscrição estadual ou tipo do contruibuinte informado incorretamente!';
  if trim(vMsgPessoa) <> '' then
    exit;

  Result := False;
end;

procedure TDMCadPessoa.cdsPessoa_ContatoBeforeInsert(DataSet: TDataSet);
begin
  cdsPessoa_Contato.Last;
  vItem_Conatato := cdsPessoa_ContatoITEM.AsInteger;
end;

procedure TDMCadPessoa.cdsPessoa_ContatoAfterInsert(DataSet: TDataSet);
begin
  vItem_Conatato := vItem_Conatato + 1;
  cdsPessoa_ContatoITEM.AsInteger :=vItem_Conatato;
end;

procedure TDMCadPessoa.cdsPessoa_ContatoBeforePost(DataSet: TDataSet);
begin
  if (cdsPessoa_ContatoENVIAR_NFE.AsString = 's') or (cdsPessoa_ContatoENVIAR_NFE.AsString = 'S') then
    cdsPessoa_ContatoENVIAR_NFE.AsString := 'S'
  else
    cdsPessoa_ContatoENVIAR_NFE.AsString := 'N';
end;

procedure TDMCadPessoa.prc_Gravar_Pessoa_Servico_Int(ID_Servico: Integer;
  Somar_Diminuir, Calc_INSS, Calc_ISSQN, Calc_PISCOFINS, Calc_CSLL,
  Calc_IR: String; Vlr_Servico: Real);
var
  vAux: Integer;
begin
  cdsPessoa_Servico_Int.Last;
  vAux := cdsPessoa_Servico_IntITEM.AsInteger + 1;
  
  cdsPessoa_Servico_Int.Insert;
  cdsPessoa_Servico_IntCODIGO.AsInteger            := cdsPessoaCODIGO.AsInteger;
  cdsPessoa_Servico_IntITEM.AsInteger              := vAux;
  cdsPessoa_Servico_IntID_SERVICO_INT.AsInteger    := ID_Servico;
  cdsPessoa_Servico_IntSOMAR_DIMINUIR.AsString     := Somar_Diminuir;
  cdsPessoa_Servico_IntCALCULAR_INSS.AsString      := Calc_INSS;
  cdsPessoa_Servico_IntCALCULAR_ISSQN.AsString     := Calc_ISSQN;
  cdsPessoa_Servico_IntCALCULAR_PISCOFINS.AsString := Calc_PISCOFINS;
  cdsPessoa_Servico_IntCALCULAR_CSLL.AsString      := Calc_CSLL;
  cdsPessoa_Servico_IntCALCULAR_IR.AsString        := Calc_IR;
  cdsPessoa_Servico_IntVLR_SERVICO.AsFloat      := StrToFloat(FormatFloat('0.00',Vlr_Servico));
  if cdsServico_Int.Locate('ID',ID_Servico,([Locaseinsensitive])) then
    cdsPessoa_Servico_IntNOME_SERVICO.AsString := cdsServico_IntNOME.AsString;
  cdsPessoa_Servico_Int.Post;
end;

procedure TDMCadPessoa.cdsPessoa_Servico_IntBeforePost(DataSet: TDataSet);
begin
  if (cdsPessoa_Servico_IntSOMAR_DIMINUIR.AsString = 'N') or (cdsPessoa_Servico_IntSOMAR_DIMINUIR.AsString = 'n') or (cdsPessoa_Servico_IntSOMAR_DIMINUIR.AsString = '-') or
     (cdsPessoa_Servico_IntSOMAR_DIMINUIR.AsString = 'D') or (cdsPessoa_Servico_IntSOMAR_DIMINUIR.AsString = 'd') then
    cdsPessoa_Servico_IntSOMAR_DIMINUIR.AsString := 'D'
  else
    cdsPessoa_Servico_IntSOMAR_DIMINUIR.AsString := 'S';

  if (cdsPessoa_Servico_IntCALCULAR_INSS.AsString = 'N') or (cdsPessoa_Servico_IntCALCULAR_INSS.AsString = 'n') then
    cdsPessoa_Servico_IntCALCULAR_INSS.AsString := 'N'
  else
    cdsPessoa_Servico_IntCALCULAR_INSS.AsString := 'S';

  if (cdsPessoa_Servico_IntCALCULAR_ISSQN.AsString = 'N') or (cdsPessoa_Servico_IntCALCULAR_ISSQN.AsString = 'n') then
    cdsPessoa_Servico_IntCALCULAR_ISSQN.AsString := 'N'
  else
    cdsPessoa_Servico_IntCALCULAR_ISSQN.AsString := 'S';

  if (cdsPessoa_Servico_IntCALCULAR_PISCOFINS.AsString = 'N') or (cdsPessoa_Servico_IntCALCULAR_PISCOFINS.AsString = 'n') then
    cdsPessoa_Servico_IntCALCULAR_PISCOFINS.AsString := 'N'
  else
    cdsPessoa_Servico_IntCALCULAR_PISCOFINS.AsString := 'S';

  if (cdsPessoa_Servico_IntCALCULAR_CSLL.AsString = 'N') or (cdsPessoa_Servico_IntCALCULAR_CSLL.AsString = 'n') then
    cdsPessoa_Servico_IntCALCULAR_CSLL.AsString := 'N'
  else
    cdsPessoa_Servico_IntCALCULAR_CSLL.AsString := 'S';

  if (cdsPessoa_Servico_IntCALCULAR_IR.AsString = 'N') or (cdsPessoa_Servico_IntCALCULAR_IR.AsString = 'n') then
    cdsPessoa_Servico_IntCALCULAR_IR.AsString := 'N'
  else
    cdsPessoa_Servico_IntCALCULAR_IR.AsString := 'S';
end;

procedure TDMCadPessoa.prc_Abrir_Natureza;
begin
  cdsNatureza.Close;
  if cdsFilialID_CIDADE.AsInteger <= 0 then
    exit;
  if (cdsFilialID_CIDADE.AsInteger > 0) then
    if not cdsCidade.Locate('ID',cdsFilialID_CIDADE.AsInteger,[loCaseInsensitive]) then
      exit;
  qProvedor.Close;
  qProvedor.ParamByName('ID').AsInteger := cdsCidadeID_PROVEDOR.AsInteger;
  qProvedor.Open;
  sdsNatureza.CommandText := 'SELECT * FROM NFSE_NATUREZA ';
  if qProvedorTIPO_NATUREZA.AsString = 'P' then
    sdsNatureza.CommandText := sdsNatureza.CommandText + ' WHERE ID_PROVEDOR = ' + cdsCidadeID_PROVEDOR.AsString
  else
    sdsNatureza.CommandText := sdsNatureza.CommandText + ' WHERE ID_PROVEDOR is Null';
  cdsNatureza.Open;
end;

procedure TDMCadPessoa.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadPessoa.cdsPessoaBeforePost(DataSet: TDataSet);
begin
  if cdsPessoaID_CIDADE.AsInteger <= 0 then
    cdsPessoaID_CIDADE.Clear;
  if trim(cdsPessoaUF.AsString) = '' then
    cdsPessoaUF.Clear;
  if cdsPessoaID_CIDADE_ENT.AsInteger <= 0 then
    cdsPessoaID_CIDADE_ENT.Clear;
  if cdsPessoaID_CIDADE_PGTO.AsInteger <= 0 then
    cdsPessoaID_CIDADE_PGTO.Clear;
  if trim(cdsPessoaUF_ENT.AsString) = '' then
    cdsPessoaUF_ENT.Clear;
  if trim(cdsPessoaUF_PGTO.AsString) = '' then
    cdsPessoaUF_PGTO.Clear;
  if trim(cdsPessoaUF_PLACA.AsString) = '' then
    cdsPessoaUF_PLACA.Clear;
  if cdsPessoaID_VENDEDOR.AsInteger <= 0 then
    cdsPessoaID_VENDEDOR.Clear;
  if cdsPessoaID_CONDPGTO.AsInteger <= 0 then
    cdsPessoaID_CONDPGTO.Clear;
  if cdsPessoaID_CONTABOLETO.AsInteger <= 0 then
    cdsPessoaID_CONTABOLETO.Clear;
  if cdsPessoaID_CARTEIRA.AsInteger <= 0 then
    cdsPessoaID_CARTEIRA.Clear;
  if cdsPessoaID_TRANSPORTADORA.AsInteger <= 0 then
    cdsPessoaID_TRANSPORTADORA.Clear;
  if cdsPessoaID_TIPOCOBRANCA.AsInteger <= 0 then
    cdsPessoaID_TIPOCOBRANCA.Clear;
  if cdsPessoaID_REDESPACHO.AsInteger <= 0 then
    cdsPessoaID_REDESPACHO.Clear;
  if cdsPessoaID_PAIS.AsInteger <= 0 then
    cdsPessoaID_PAIS.Clear;
  if cdsPessoaID_REGIME_TRIB.AsInteger <= 0 then
    cdsPessoaID_REGIME_TRIB.Clear;
  if cdsPessoaID_TAB_PRECO.AsInteger <= 0 then
    cdsPessoaID_TAB_PRECO.Clear;
  if cdsPessoaCLIENTE_CONTA_ID.AsInteger <= 0 then
    cdsPessoaCLIENTE_CONTA_ID.Clear;
  if cdsPessoaFORNECEDOR_CONTA_ID.AsInteger <= 0 then
    cdsPessoaFORNECEDOR_CONTA_ID.Clear;
  if cdsPessoaVENDEDOR_CONTA_ID.AsInteger <= 0 then
    cdsPessoaVENDEDOR_CONTA_ID.Clear;
  if cdsPessoaTRANSPORTADORA_CONTA_ID.AsInteger <= 0 then
    cdsPessoaTRANSPORTADORA_CONTA_ID.Clear;
  if cdsPessoaATELIER_CONTA_ID.AsInteger <= 0 then
    cdsPessoaATELIER_CONTA_ID.Clear;
  if (trim(cdsPessoaEMAIL_NFE2.AsString) <> '') and (trim(cdsPessoaEMAIL_NFE.AsString) = '') then
  begin
    cdsPessoaEMAIL_NFE.AsString  := cdsPessoaEMAIL_NFE2.AsString;
    cdsPessoaEMAIL_NFE2.AsString := '';
  end;
  if (cdsPessoaID_CIDADE.AsInteger > 0) and (cdsCidade.Locate('ID',cdsPessoaID_CIDADE.AsInteger,([Locaseinsensitive]))) then
    cdsPessoaCIDADE.AsString := cdsCidadeNOME.AsString;
  if (cdsPessoaID_CIDADE_ENT.AsInteger > 0) and (cdsCidade.Locate('ID',cdsPessoaID_CIDADE_ENT.AsInteger,([Locaseinsensitive]))) then
    cdsPessoaCIDADE_ENT.AsString := cdsCidadeNOME.AsString;
  if (cdsPessoaID_CIDADE_PGTO.AsInteger > 0) and (cdsCidade.Locate('ID',cdsPessoaID_CIDADE_PGTO.AsInteger,([Locaseinsensitive]))) then
    cdsPessoaCIDADE_PGTO.AsString := cdsCidadeNOME.AsString;
end;

procedure TDMCadPessoa.cdsPessoa_Servico_IntNewRecord(DataSet: TDataSet);
begin
  cdsPessoa_Servico_IntCALCULAR_CSLL.AsString      := 'S';
  cdsPessoa_Servico_IntCALCULAR_INSS.AsString      := 'S';
  cdsPessoa_Servico_IntCALCULAR_IR.AsString        := 'S';
  cdsPessoa_Servico_IntCALCULAR_ISSQN.AsString     := 'S';
  cdsPessoa_Servico_IntCALCULAR_PISCOFINS.AsString := 'S';
end;

procedure TDMCadPessoa.prc_Abrir_Cidade(UF: String);
begin
  cdsCidade.Close;
  sdsCidade.CommandText := ctCidade;
  if (trim(UF) <> '') and (trim(UF) <> 'EX') then
    sdsCidade.CommandText := sdsCidade.CommandText + ' WHERE UF = ' + QuotedStr(UF);
  cdsCidade.Open;
end;

procedure TDMCadPessoa.frxDBDataset2First(Sender: TObject);
begin
  cdsPessoa_Consulta.Locate('CODIGO',mImpAuxiliarID.AsInteger,([Locaseinsensitive]));
end;

procedure TDMCadPessoa.frxDBDataset2Next(Sender: TObject);
begin
  cdsPessoa_Consulta.Locate('CODIGO',mImpAuxiliarID.AsInteger,([Locaseinsensitive]));
end;

procedure TDMCadPessoa.cdsPessoa_FiscalNewRecord(DataSet: TDataSet);
begin
  cdsPessoa_FiscalDESC_SUFRAMA_ICMS.AsString       := 'N';
  cdsPessoa_FiscalDESC_SUFRAMA_IPI.AsString        := 'N';
  cdsPessoa_FiscalDESC_SUFRAMA_PIS_COFINS.AsString := 'N';
end;

procedure TDMCadPessoa.cdsPessoaReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  if trim(e.Message) <> '' then
    Raise Exception.Create('Registro de pessoa não gravado! ' + #13 + e.Message);
end;

procedure TDMCadPessoa.cdsPessoa_DepBeforeInsert(DataSet: TDataSet);
begin
  cdsPessoa_Dep.Last;
  vItem_Dep := cdsPessoa_DepITEM.AsInteger;
end;

procedure TDMCadPessoa.cdsPessoa_DepAfterInsert(DataSet: TDataSet);
begin
  cdsPessoa_DepITEM.AsInteger   := vItem_Dep + 1;
  cdsPessoa_DepCODIGO.AsInteger := cdsPessoaCODIGO.AsInteger;
end;

procedure TDMCadPessoa.cdsPessoa_DepAfterPost(DataSet: TDataSet);
begin
  if trim(cdsPessoa_DepNOME.AsString) = '' then
    cdsPessoa_Dep.Delete;
end;

procedure TDMCadPessoa.cdsPessoa_RefPBeforeInsert(DataSet: TDataSet);
begin
  cdsPessoa_RefP.Last;
  vItem_Dep := cdsPessoa_RefPITEM.AsInteger;
end;

procedure TDMCadPessoa.cdsPessoa_RefCBeforeInsert(DataSet: TDataSet);
begin
  cdsPessoa_RefC.Last;
  vItem_Dep := cdsPessoa_RefCITEM.AsInteger;
end;

procedure TDMCadPessoa.cdsPessoa_AutBeforeInsert(DataSet: TDataSet);
begin
  cdsPessoa_Aut.Last;
  vItem_Dep := cdsPessoa_AutITEM.AsInteger;
end;

procedure TDMCadPessoa.cdsPessoa_RefPAfterInsert(DataSet: TDataSet);
begin
  cdsPessoa_RefPITEM.AsInteger   := vItem_Dep + 1;
  cdsPessoa_RefPCODIGO.AsInteger := cdsPessoaCODIGO.AsInteger;
end;

procedure TDMCadPessoa.cdsPessoa_RefCAfterInsert(DataSet: TDataSet);
begin
  cdsPessoa_RefCITEM.AsInteger   := vItem_Dep + 1;
  cdsPessoa_RefCCODIGO.AsInteger := cdsPessoaCODIGO.AsInteger;
end;

procedure TDMCadPessoa.cdsPessoa_AutAfterInsert(DataSet: TDataSet);
begin
  cdsPessoa_AutITEM.AsInteger   := vItem_Dep + 1;
  cdsPessoa_AutCODIGO.AsInteger := cdsPessoaCODIGO.AsInteger;
end;

procedure TDMCadPessoa.cdsPessoa_RefPAfterPost(DataSet: TDataSet);
begin
  if trim(cdsPessoa_RefPNOME.AsString) = '' then
    cdsPessoa_RefP.Delete;
end;

procedure TDMCadPessoa.cdsPessoa_RefCAfterPost(DataSet: TDataSet);
begin
  if trim(cdsPessoa_RefCNOME.AsString) = '' then
    cdsPessoa_RefC.Delete;
end;

procedure TDMCadPessoa.cdsPessoa_AutAfterPost(DataSet: TDataSet);
begin
  if trim(cdsPessoa_AutNOME.AsString) = '' then
    cdsPessoa_Aut.Delete;
end;

procedure TDMCadPessoa.cdsPessoa_FisicaAfterInsert(DataSet: TDataSet);
begin
  cdsPessoa_FisicaRG_NUM.AsString := cdsPessoaRG.AsString;
end;

procedure TDMCadPessoa.cdsPessoa_AtivBeforeInsert(DataSet: TDataSet);
begin
  cdsPessoa_Ativ.Last;
  vItem_Ativ := cdsPessoa_AtivITEM.AsInteger;
end;

procedure TDMCadPessoa.cdsPessoa_AtivAfterInsert(DataSet: TDataSet);
begin
  cdsPessoa_AtivITEM.AsInteger   := vItem_Ativ + 1;
  cdsPessoa_AtivCODIGO.AsInteger := cdsPessoaCODIGO.AsInteger;
end;

procedure TDMCadPessoa.cdsPessoa_AtivAfterPost(DataSet: TDataSet);
begin
  if cdsPessoa_AtivID_ATIVIDADE.AsInteger <= 0 then
    cdsPessoa_Ativ.Delete;
end;

procedure TDMCadPessoa.prc_Abre_Carteira(ID_BANCO: Integer);
begin
  cdsCarteira.Close;
  sdsCarteira.ParamByName('ID_BANCO').AsInteger := ID_BANCO;
  cdsCarteira.Open;
end;

procedure TDMCadPessoa.cdsPessoa_TipoMatBeforeInsert(DataSet: TDataSet);
begin
  cdsPessoa_TipoMat.Last;
  vItem_TipoMat := cdsPessoa_TipoMatITEM.AsInteger;
end;

procedure TDMCadPessoa.cdsPessoa_TipoMatAfterInsert(DataSet: TDataSet);
begin
  cdsPessoa_TipoMatITEM.AsInteger   := vItem_TipoMat + 1;
  cdsPessoa_TipoMatCODIGO.AsInteger := cdsPessoaCODIGO.AsInteger;
end;

procedure TDMCadPessoa.cdsPessoa_TipoMatAfterPost(DataSet: TDataSet);
begin
  if cdsPessoa_TipoMatID_TIPO_MATERIAL.AsInteger <= 0 then
    cdsPessoa_TipoMat.Delete;
end;

end.

