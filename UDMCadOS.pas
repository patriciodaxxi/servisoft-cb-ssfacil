unit UDMCadOS;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes, frxClass, frxRich, frxDBSet, frxExportMail,
  frxExportPDF, dbXPress;

type
  TDMCadOS = class(TDataModule)
    sdsOS: TSQLDataSet;
    dspOS: TDataSetProvider;
    cdsOS: TClientDataSet;
    dsOS: TDataSource;
    sdsOSID: TIntegerField;
    sdsOSTIPO_REG: TStringField;
    sdsOSID_CLIENTE: TIntegerField;
    sdsOSDTEMISSAO: TDateField;
    sdsOSVLR_PRODUTO: TFloatField;
    sdsOSVLR_SERVICO: TIntegerField;    
    sdsOSVLR_TOTAL: TFloatField;
    sdsOSID_SERVICO: TIntegerField;
    sdsOSID_SERVICO_INT: TIntegerField;
    sdsOSPERC_INSS: TFloatField;
    sdsOSPERC_ISS: TFloatField;
    sdsOSPERC_IR: TFloatField;
    sdsOSRETEM_INSS: TStringField;
    sdsOSRETEM_ISS: TStringField;
    sdsOSRETEM_IR: TStringField;
    sdsOSDTCONTRATO_INI: TDateField;
    sdsOSDTCONTRATO_FIN: TDateField;
    sdsOSDTPREVISTA_REN: TDateField;
    sdsOSDTRENOVACAO: TDateField;
    sdsOSDTPRAZO_ENT: TDateField;
    sdsOSDTENTREGA: TDateField;
    sdsOSPERC_RENOVACAO: TFloatField;
    sdsOSNUM_OS: TIntegerField;
    sdsOSOBS: TMemoField;
    cdsOSID: TIntegerField;
    cdsOSTIPO_REG: TStringField;
    cdsOSID_CLIENTE: TIntegerField;
    cdsOSDTEMISSAO: TDateField;
    cdsOSVLR_PRODUTO: TFloatField;
    cdsOSVLR_SERVICO: TIntegerField;
    cdsOSVLR_TOTAL: TFloatField;
    cdsOSID_SERVICO: TIntegerField;
    cdsOSID_SERVICO_INT: TIntegerField;
    cdsOSPERC_INSS: TFloatField;
    cdsOSPERC_ISS: TFloatField;
    cdsOSPERC_IR: TFloatField;
    cdsOSRETEM_INSS: TStringField;
    cdsOSRETEM_ISS: TStringField;
    cdsOSRETEM_IR: TStringField;
    cdsOSDTCONTRATO_INI: TDateField;
    cdsOSDTCONTRATO_FIN: TDateField;
    cdsOSDTPREVISTA_REN: TDateField;
    cdsOSDTRENOVACAO: TDateField;
    cdsOSDTPRAZO_ENT: TDateField;
    cdsOSDTENTREGA: TDateField;
    cdsOSPERC_RENOVACAO: TFloatField;
    cdsOSNUM_OS: TIntegerField;
    cdsOSOBS: TMemoField;
    sdsOS_Consulta: TSQLDataSet;
    dspOS_Consulta: TDataSetProvider;
    cdsOS_Consulta: TClientDataSet;
    dsOS_Consulta: TDataSource;
    cdsOS_ConsultaID: TIntegerField;
    cdsOS_ConsultaTIPO_REG: TStringField;
    cdsOS_ConsultaID_CLIENTE: TIntegerField;
    cdsOS_ConsultaDTEMISSAO: TDateField;
    cdsOS_ConsultaVLR_PRODUTO: TFloatField;
    cdsOS_ConsultaVLR_SERVICO: TIntegerField;
    cdsOS_ConsultaVLR_TOTAL: TFloatField;
    cdsOS_ConsultaID_SERVICO: TIntegerField;
    cdsOS_ConsultaID_SERVICO_INT: TIntegerField;
    cdsOS_ConsultaPERC_INSS: TFloatField;
    cdsOS_ConsultaPERC_ISS: TFloatField;
    cdsOS_ConsultaPERC_IR: TFloatField;
    cdsOS_ConsultaRETEM_INSS: TStringField;
    cdsOS_ConsultaRETEM_ISS: TStringField;
    cdsOS_ConsultaRETEM_IR: TStringField;
    cdsOS_ConsultaDTCONTRATO_INI: TDateField;
    cdsOS_ConsultaDTCONTRATO_FIN: TDateField;
    cdsOS_ConsultaDTPREVISTA_REN: TDateField;
    cdsOS_ConsultaDTRENOVACAO: TDateField;
    cdsOS_ConsultaDTPRAZO_ENT: TDateField;
    cdsOS_ConsultaDTENTREGA: TDateField;
    cdsOS_ConsultaPERC_RENOVACAO: TFloatField;
    cdsOS_ConsultaNUM_OS: TIntegerField;
    cdsOS_ConsultaOBS: TMemoField;
    cdsOS_ConsultaNOME_CLIENTE: TStringField;
    cdsOS_ConsultaNOME_SERVICO: TStringField;
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
    dsServico: TDataSource;
    sdsCliente: TSQLDataSet;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
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
    cdsClienteCEP: TStringField;
    cdsClienteDDDFONE1: TIntegerField;
    cdsClienteTELEFONE1: TStringField;
    cdsClienteDDDFONE2: TIntegerField;
    cdsClienteTELEFONE2: TStringField;
    cdsClienteDDDFAX: TIntegerField;
    cdsClienteFAX: TStringField;
    cdsClientePESSOA: TStringField;
    cdsClienteCNPJ_CPF: TStringField;
    cdsClienteINSCR_EST: TStringField;
    cdsClienteENDERECO_ENT: TStringField;
    cdsClienteCOMPLEMENTO_END_ENT: TStringField;
    cdsClienteNUM_END_ENT: TStringField;
    cdsClienteBAIRRO_ENT: TStringField;
    cdsClienteID_CIDADE_ENT: TIntegerField;
    cdsClienteCIDADE_ENT: TStringField;
    cdsClienteCEP_ENT: TStringField;
    cdsClienteUF_ENT: TStringField;
    cdsClientePESSOA_ENT: TStringField;
    cdsClienteCNPJ_CPF_ENT: TStringField;
    cdsClienteINSC_EST_ENT: TStringField;
    cdsClienteENDERECO_PGTO: TStringField;
    cdsClienteCOMPLEMENTO_END_PGTO: TStringField;
    cdsClienteNUM_END_PGTO: TStringField;
    cdsClienteBAIRRO_PGTO: TStringField;
    cdsClienteID_CIDADE_PGTO: TIntegerField;
    cdsClienteCIDADE_PGTO: TStringField;
    cdsClienteCEP_PGTO: TStringField;
    cdsClienteUF_PGTO: TStringField;
    cdsClienteUSUARIO: TStringField;
    cdsClienteDTCADASTRO: TDateField;
    cdsClienteHRCADASTRO: TTimeField;
    cdsClienteID_VENDEDOR: TIntegerField;
    cdsClienteOBS: TMemoField;
    cdsClienteCAIXAPOSTAL: TStringField;
    cdsClienteRG: TStringField;
    cdsClienteID_CONDPGTO: TIntegerField;
    cdsClienteID_CONTABOLETO: TIntegerField;
    cdsClienteID_TRANSPORTADORA: TIntegerField;
    cdsClienteID_TIPOCOBRANCA: TIntegerField;
    cdsClientePERC_COMISSAO: TFloatField;
    cdsClienteID_REDESPACHO: TIntegerField;
    cdsClienteDDD_ENT: TIntegerField;
    cdsClienteFONE_ENT: TStringField;
    cdsClienteDDD_PGTO: TIntegerField;
    cdsClienteFONE_PGTO: TStringField;
    cdsClienteINATIVO: TStringField;
    cdsClienteHOMEPAGE: TStringField;
    cdsClienteNOME_ENTREGA: TStringField;
    cdsClienteEMAIL_NFE: TStringField;
    cdsClienteID_PAIS: TIntegerField;
    cdsClienteEMAIL_PGTO: TStringField;
    cdsClienteEMAIL_NFE2: TStringField;
    cdsClientePESSOA_PGTO: TStringField;
    cdsClienteCNPJ_CPG_PGTO: TStringField;
    cdsClienteINSC_EST_PGTO: TStringField;
    cdsClienteUF_PLACA: TStringField;
    cdsClientePLACA: TStringField;
    cdsClienteTP_CLIENTE: TStringField;
    cdsClienteTP_FORNECEDOR: TStringField;
    cdsClienteTP_TRANSPORTADORA: TStringField;
    cdsClienteTP_VENDEDOR: TStringField;
    cdsClienteTIPO_FRETE: TStringField;
    cdsClienteID_REGIME_TRIB: TIntegerField;
    cdsClienteTIPO_ICMS: TStringField;
    cdsClienteID_TAB_PRECO: TIntegerField;
    cdsClienteDT_CONTRATO_INI: TDateField;
    cdsClienteDT_CONTRATO_FIN: TDateField;
    cdsClienteID_SERVICO: TIntegerField;
    cdsClienteID_SERVICO_INT: TIntegerField;
    cdsClienteVLR_SERVICO: TFloatField;
    cdsClienteRETEM_ISS: TStringField;
    cdsClienteRETEM_CSLL: TStringField;
    cdsClienteRETEM_PISCOFINS: TStringField;
    cdsClienteRETEM_INSS: TStringField;
    cdsClienteORGAO_PUBLICO: TStringField;
    dsCliente: TDataSource;
    sdsServico_Int: TSQLDataSet;
    dspServico_Int: TDataSetProvider;
    cdsServico_Int: TClientDataSet;
    cdsServico_IntID: TIntegerField;
    cdsServico_IntNOME: TStringField;
    cdsServico_IntVLR_UNITARIO: TFloatField;
    dsServico_Int: TDataSource;
    sdsOSFILIAL: TIntegerField;
    sdsOSDISCRIMINACAO: TMemoField;
    cdsOSFILIAL: TIntegerField;
    cdsOSDISCRIMINACAO: TMemoField;
    cdsOS_ConsultaFILIAL: TIntegerField;
    cdsOS_ConsultaDISCRIMINACAO: TMemoField;
    sdsOSID_ATIVIDADE_CID: TIntegerField;
    sdsOSCNAE: TStringField;
    sdsOSDIA_VENCIMENTO: TIntegerField;
    sdsOSID_CONTA: TIntegerField;
    sdsOSID_TIPO_COBRANCA: TIntegerField;
    cdsOSID_ATIVIDADE_CID: TIntegerField;
    cdsOSCNAE: TStringField;
    cdsOSDIA_VENCIMENTO: TIntegerField;
    cdsOSID_CONTA: TIntegerField;
    cdsOSID_TIPO_COBRANCA: TIntegerField;
    cdsOS_ConsultaID_ATIVIDADE_CID: TIntegerField;
    cdsOS_ConsultaCNAE: TStringField;
    cdsOS_ConsultaDIA_VENCIMENTO: TIntegerField;
    cdsOS_ConsultaID_CONTA: TIntegerField;
    cdsOS_ConsultaID_TIPO_COBRANCA: TIntegerField;
    sdsOS_Servico_Int: TSQLDataSet;
    cdsOS_Servico_Int: TClientDataSet;
    dsOS_Servico_Int: TDataSource;
    dsOS_Mestre: TDataSource;
    sdsOS_Servico_IntID: TIntegerField;
    sdsOS_Servico_IntITEM: TIntegerField;
    sdsOS_Servico_IntID_SERVICO_INT: TIntegerField;
    sdsOS_Servico_IntCALCULAR_INSS: TStringField;
    sdsOS_Servico_IntSOMAR_DIMINUIR: TStringField;
    sdsOS_Servico_IntVLR_SERVICO: TFloatField;
    cdsOSsdsOS_Servico_Int: TDataSetField;
    cdsOS_Servico_IntID: TIntegerField;
    cdsOS_Servico_IntITEM: TIntegerField;
    cdsOS_Servico_IntID_SERVICO_INT: TIntegerField;
    cdsOS_Servico_IntCALCULAR_INSS: TStringField;
    cdsOS_Servico_IntSOMAR_DIMINUIR: TStringField;
    cdsOS_Servico_IntVLR_SERVICO: TFloatField;
    qProximo_Num_a: TSQLQuery;
    cdsOS_ConsultaDTVENCIMENTO_CERTIFICADO: TSQLTimeStampField;
    cdsOS_ConsultaPERIODO_CERTIFICADO: TStringField;
    cdsOS_ConsultaTIPO_CERTIFICADO: TStringField;
    cdsOS_ConsultaNUM_CONTRATO: TIntegerField;
    cdsOS_ConsultaCOD_ATIVIDADE_CID: TStringField;
    cdsOS_ConsultaCOD_SERVICO: TStringField;
    cdsOS_ConsultaMOTIVO_ENCERRAMENTO: TMemoField;
    sdsOSDTVENCIMENTO_CERTIFICADO: TSQLTimeStampField;
    sdsOSPERIODO_CERTIFICADO: TStringField;
    sdsOSTIPO_CERTIFICADO: TStringField;
    sdsOSNUM_CONTRATO: TIntegerField;
    sdsOSMOTIVO_ENCERRAMENTO: TMemoField;
    cdsOSDTVENCIMENTO_CERTIFICADO: TSQLTimeStampField;
    cdsOSPERIODO_CERTIFICADO: TStringField;
    cdsOSTIPO_CERTIFICADO: TStringField;
    cdsOSNUM_CONTRATO: TIntegerField;
    cdsOSMOTIVO_ENCERRAMENTO: TMemoField;
    sdsNatureza: TSQLDataSet;
    dspNatureza: TDataSetProvider;
    cdsNatureza: TClientDataSet;
    cdsNaturezaID: TIntegerField;
    cdsNaturezaID_PROVEDOR: TIntegerField;
    cdsNaturezaCODIGO: TStringField;
    cdsNaturezaNOME: TStringField;
    dsNatureza: TDataSource;
    sdsAtividade_Cid: TSQLDataSet;
    dspAtividade_Cid: TDataSetProvider;
    cdsAtividade_Cid: TClientDataSet;
    cdsAtividade_CidID: TIntegerField;
    cdsAtividade_CidCODIGO: TStringField;
    cdsAtividade_CidNOME: TStringField;
    dsAtividade_Cid: TDataSource;
    sdsOSID_NATUREZA: TIntegerField;
    sdsOSRETEM_CSLL: TStringField;
    cdsOSID_NATUREZA: TIntegerField;
    cdsOSRETEM_CSLL: TStringField;
    sdsOSRETEM_PISCOFINS: TStringField;
    cdsOSRETEM_PISCOFINS: TStringField;
    sdsOS_Servico_IntNOME_SERVICO_INT: TStringField;
    cdsOS_Servico_IntNOME_SERVICO_INT: TStringField;
    qParametros: TSQLQuery;
    qParametrosID_CONTA_PADRAO: TIntegerField;
    qParametrosID_TIPO_COBRANCA_PADRAO: TIntegerField;
    qParametrosID: TIntegerField;
    sdsCidade: TSQLDataSet;
    dspCidade: TDataSetProvider;
    cdsCidade: TClientDataSet;
    cdsCidadeID: TIntegerField;
    cdsCidadeNOME: TStringField;
    cdsCidadeUF: TStringField;
    cdsCidadeCODMUNICIPIO: TStringField;
    cdsCidadeID_PROVEDOR: TIntegerField;
    cdsCidadeTIPO_NATUREZA: TStringField;
    dsCidade: TDataSource;
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
    cdsFilialID_SERVICO_SINT: TIntegerField;
    cdsFilialID_SERVICO_PAD: TIntegerField;
    cdsFilialCOD_SERVICO_SINT: TStringField;
    cdsFilialPERC_IR: TFloatField;
    cdsFilialVLR_IR_MINIMO: TFloatField;
    cdsFilialPERC_ISS: TFloatField;
    cdsFilialCOD_REGIME_TIB_ESP: TIntegerField;
    cdsFilialCOD_TRIBUTACAO_MUNICIPIO: TStringField;
    cdsFilialCODMUNICIPIO: TStringField;
    cdsFilialNUMLOTE: TIntegerField;
    cdsFilialTIPO_RETORNO: TStringField;
    cdsFilialENDLOGO_NFSE: TStringField;
    cdsFilialPERC_CSLL: TFloatField;
    cdsFilialMOSTRAR_ALIQUOTA_PD: TStringField;
    cdsFilialINF_COD_SERVICO: TStringField;
    cdsFilialCNAE_NFSE: TStringField;
    cdsFilialLINKNFSE: TStringField;
    cdsFilialFONE_PREFEITURA: TStringField;
    cdsFilialSITE_PREFEITURA: TStringField;
    cdsFilialEND_LOGO_PREFEITURA: TStringField;
    cdsFilialPERC_INSS: TFloatField;
    cdsFilialID_ATIVIDADE_CID: TIntegerField;
    cdsFilialNFSE_HOMOLOGACAO: TStringField;
    cdsFilialPERC_CSRF: TFloatField;
    cdsFilialVLR_FATURAMENTO_MES_CSRF: TFloatField;
    cdsFilialPERC_TRIB_SERV: TFloatField;
    cdsFilialIMPRESSAO_MATRICIAL: TStringField;
    dsFilial: TDataSource;
    qPessoa_Servico: TSQLQuery;
    qPessoa_ServicoPERC_ISS: TFloatField;
    qProximo_Num_aNUM_CONTRATO: TIntegerField;
    qProximo_Num_aNUM_OS: TIntegerField;
    sdsCondPgto: TSQLDataSet;
    dspCondPgto: TDataSetProvider;
    cdsCondPgto: TClientDataSet;
    cdsCondPgtoID: TIntegerField;
    cdsCondPgtoNOME: TStringField;
    cdsCondPgtoTIPO: TStringField;
    cdsCondPgtoIMPRIMIR_NFSE: TStringField;
    dsCondPgto: TDataSource;
    sdsOSID_CONDPGTO: TIntegerField;
    cdsOSID_CONDPGTO: TIntegerField;
    sdsContrato: TSQLDataSet;
    dspContrato: TDataSetProvider;
    cdsContrato: TClientDataSet;
    cdsContratoID: TIntegerField;
    cdsContratoTIPO_REG: TStringField;
    cdsContratoID_CLIENTE: TIntegerField;
    cdsContratoDTEMISSAO: TDateField;
    cdsContratoVLR_PRODUTO: TFloatField;
    cdsContratoVLR_SERVICO: TIntegerField;
    cdsContratoVLR_TOTAL: TFloatField;
    cdsContratoID_SERVICO: TIntegerField;
    cdsContratoID_SERVICO_INT: TIntegerField;
    cdsContratoPERC_INSS: TFloatField;
    cdsContratoPERC_ISS: TFloatField;
    cdsContratoPERC_IR: TFloatField;
    cdsContratoRETEM_INSS: TStringField;
    cdsContratoRETEM_ISS: TStringField;
    cdsContratoRETEM_IR: TStringField;
    cdsContratoDTCONTRATO_INI: TDateField;
    cdsContratoDTCONTRATO_FIN: TDateField;
    cdsContratoDTPREVISTA_REN: TDateField;
    cdsContratoDTRENOVACAO: TDateField;
    cdsContratoDTPRAZO_ENT: TDateField;
    cdsContratoDTENTREGA: TDateField;
    cdsContratoPERC_RENOVACAO: TFloatField;
    cdsContratoNUM_OS: TIntegerField;
    cdsContratoOBS: TMemoField;
    cdsContratoFILIAL: TIntegerField;
    cdsContratoDISCRIMINACAO: TMemoField;
    cdsContratoID_ATIVIDADE_CID: TIntegerField;
    cdsContratoCNAE: TStringField;
    cdsContratoDIA_VENCIMENTO: TIntegerField;
    cdsContratoID_CONTA: TIntegerField;
    cdsContratoID_TIPO_COBRANCA: TIntegerField;
    cdsContratoDTVENCIMENTO_CERTIFICADO: TSQLTimeStampField;
    cdsContratoPERIODO_CERTIFICADO: TStringField;
    cdsContratoTIPO_CERTIFICADO: TStringField;
    cdsContratoNUM_CONTRATO: TIntegerField;
    cdsContratoMOTIVO_ENCERRAMENTO: TMemoField;
    cdsContratoID_NATUREZA: TIntegerField;
    cdsContratoRETEM_CSLL: TStringField;
    cdsContratoRETEM_PISCOFINS: TStringField;
    cdsContratoID_CONDPGTO: TIntegerField;
    cdsContratoNOME_CLIENTE: TStringField;
    cdsContratoNOME_SERVICO: TStringField;
    cdsContratoCOD_ATIVIDADE_CID: TStringField;
    cdsContratoCOD_SERVICO: TStringField;
    dsContrato: TDataSource;
    sdsOSDTENCERRAMENTO: TDateField;
    cdsOSDTENCERRAMENTO: TDateField;
    cdsClientePERC_REDUCAO_INSS: TFloatField;
    cdsOS_ConsultaID_NATUREZA: TIntegerField;
    cdsOS_ConsultaRETEM_CSLL: TStringField;
    cdsOS_ConsultaRETEM_PISCOFINS: TStringField;
    cdsOS_ConsultaID_CONDPGTO: TIntegerField;
    cdsOS_ConsultaDTENCERRAMENTO: TDateField;
    cdsContratoDTENCERRAMENTO: TDateField;
    sdsOSID_TECNICO: TIntegerField;
    sdsOSGARANTIA: TStringField;
    cdsOSID_TECNICO: TIntegerField;
    cdsOSGARANTIA: TStringField;
    sdsOS_Servico_IntID_TECNICO: TIntegerField;
    cdsOS_Servico_IntID_TECNICO: TIntegerField;
    sdsOSHREMISSAO: TTimeField;
    sdsOSHRENTREGA: TTimeField;
    sdsOSNUM_NOTA: TIntegerField;
    sdsOSSERIE_NOTA: TStringField;
    cdsOSHREMISSAO: TTimeField;
    cdsOSHRENTREGA: TTimeField;
    cdsOSNUM_NOTA: TIntegerField;
    cdsOSSERIE_NOTA: TStringField;
    sdsOSCOMARCA: TStringField;
    sdsOSNOME_SINDICO: TStringField;
    cdsOSCOMARCA: TStringField;
    cdsOSNOME_SINDICO: TStringField;
    sdsOSCPF_SINDICO: TStringField;
    cdsOSCPF_SINDICO: TStringField;
    cdsOS_ConsultaCOMARCA: TStringField;
    cdsOS_ConsultaNOME_SINDICO: TStringField;
    cdsOS_ConsultaCPF_SINDICO: TStringField;
    cdsOS_ConsultaCNPJ_CPF: TStringField;
    cdsOS_ConsultaENDERECO: TStringField;
    cdsOS_ConsultaNUM_END: TStringField;
    cdsOS_ConsultaCOMPLEMENTO_END: TStringField;
    cdsOS_ConsultaBAIRRO: TStringField;
    cdsOS_ConsultaUF: TStringField;
    cdsOS_ConsultaCIDADE_NOME: TStringField;
    sdsOS_Parc: TSQLDataSet;
    cdsOS_Parc: TClientDataSet;
    dsOS_Parc: TDataSource;
    sdsOS_ParcID: TIntegerField;
    sdsOS_ParcITEM: TIntegerField;
    sdsOS_ParcDTVENCIMENTO: TDateField;
    sdsOS_ParcVLR_VENCIMENTO: TFloatField;
    sdsOS_ParcID_TIPOCOBRANCA: TIntegerField;
    sdsOS_ParcID_CONTA: TIntegerField;
    cdsOSsdsOS_Parc: TDataSetField;
    cdsOS_ParcID: TIntegerField;
    cdsOS_ParcITEM: TIntegerField;
    cdsOS_ParcDTVENCIMENTO: TDateField;
    cdsOS_ParcVLR_VENCIMENTO: TFloatField;
    cdsOS_ParcID_TIPOCOBRANCA: TIntegerField;
    cdsOS_ParcID_CONTA: TIntegerField;
    sdsOS_Servico_IntCALCULAR_ISSQN: TStringField;
    sdsOS_Servico_IntCALCULAR_IR: TStringField;
    sdsOS_Servico_IntCALCULAR_PISCOFINS: TStringField;
    cdsOS_Servico_IntCALCULAR_ISSQN: TStringField;
    cdsOS_Servico_IntCALCULAR_IR: TStringField;
    cdsOS_Servico_IntCALCULAR_PISCOFINS: TStringField;
    sdsOSID_VENDEDOR: TIntegerField;
    sdsOSPERC_COMISSAO: TFloatField;
    cdsOSID_VENDEDOR: TIntegerField;
    cdsOSPERC_COMISSAO: TFloatField;
    sdsVendedor: TSQLDataSet;
    dspVendedor: TDataSetProvider;
    cdsVendedor: TClientDataSet;
    cdsVendedorCODIGO: TIntegerField;
    cdsVendedorNOME: TStringField;
    cdsVendedorPERC_COMISSAO_VEND: TFloatField;
    cdsVendedorTIPO_COMISSAO: TStringField;
    dsVendedor: TDataSource;
    sdsContas: TSQLDataSet;
    dspContas: TDataSetProvider;
    cdsContas: TClientDataSet;
    cdsContasID: TIntegerField;
    cdsContasNOME: TStringField;
    dsContas: TDataSource;
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
    qParametrosUSA_VENDEDOR: TStringField;
    cdsClienteCLIENTE_CONTA_ID: TIntegerField;
    qParametrosID_CONTA_ORC_SERVICO: TIntegerField;
    sdsOS_Servico_IntQTD: TFloatField;
    sdsOS_Servico_IntVLR_TOTAL: TFloatField;
    cdsOS_Servico_IntQTD: TFloatField;
    cdsOS_Servico_IntVLR_TOTAL: TFloatField;
    sdsOS_Servico_IntID_VENDEDOR: TIntegerField;
    sdsOS_Servico_IntPERC_COMISSAO: TFloatField;
    cdsOS_Servico_IntID_VENDEDOR: TIntegerField;
    cdsOS_Servico_IntPERC_COMISSAO: TFloatField;
    qParametrosTIPO_COMISSAO_NFSE: TStringField;
    cdsServico_IntID_VENDEDOR: TIntegerField;
    cdsServico_IntPERC_COMISSAO: TFloatField;
    sdsOS_Servico_IntNOME_VENDEDOR: TStringField;
    cdsOS_Servico_IntNOME_VENDEDOR: TStringField;
    qParametrosESCOLA: TStringField;
    sdsOSOPCAO_VENCIMENTO_MREF: TStringField;
    cdsOSOPCAO_VENCIMENTO_MREF: TStringField;
    cdsOS_ConsultaOPCAO_VENCIMENTO_MREF: TStringField;
    cdsContratoOPCAO_VENCIMENTO_MREF: TStringField;
    sdsContaOrcamento: TSQLDataSet;
    dspContaOrcamento: TDataSetProvider;
    cdsContaOrcamento: TClientDataSet;
    cdsContaOrcamentoID: TIntegerField;
    cdsContaOrcamentoTIPO: TStringField;
    cdsContaOrcamentoCODIGO: TStringField;
    cdsContaOrcamentoDESCRICAO: TStringField;
    cdsContaOrcamentoNOME_AUX: TStringField;
    dsContaOrcamento: TDataSource;
    sdsOSID_CONTA_ORCAMENTO: TIntegerField;
    cdsOSID_CONTA_ORCAMENTO: TIntegerField;
    sdsEventos: TSQLDataSet;
    dspEventos: TDataSetProvider;
    cdsEventos: TClientDataSet;
    dsEventos: TDataSource;
    cdsEventosID: TIntegerField;
    cdsEventosITEM: TIntegerField;
    cdsEventosID_TECNICO: TIntegerField;
    cdsEventosID_SERVICO: TIntegerField;
    cdsEventosQTD: TFloatField;
    cdsEventosVLR_UNITARIO: TFloatField;
    cdsEventosVLR_TOTAL: TFloatField;
    cdsEventosDESCRICAO: TStringField;
    cdsEventosCONCLUIDO: TStringField;
    cdsEventosDT_CONCLUIDO: TDateField;
    cdsEventosDT_INICIO: TDateField;
    cdsEventosHR_INICIO: TTimeField;
    cdsEventosHR_CONCLUIDO: TTimeField;
    qParametrosUSA_RECIBO_NFSE: TStringField;
    qVerificaNota: TSQLQuery;
    qVerificaNotaID: TIntegerField;
    frxReport1: TfrxReport;
    mExtrato: TClientDataSet;
    mExtratoNum_Contrato: TStringField;
    mExtratoMes_Ref: TIntegerField;
    mExtratoAno_Ref: TIntegerField;
    mExtratoDtVencimento: TDateField;
    mExtratoDtEmissao: TDateField;
    mExtratoID_Cliente: TIntegerField;
    mExtratoCod_Alfa: TStringField;
    mExtratoNome_Cliente: TStringField;
    mExtratoVlr_Servico: TFloatField;
    mExtratoVlr_Total: TFloatField;
    mExtratoPerc_ISS: TFloatField;
    mExtratoCNAE: TStringField;
    dsmExtrato: TDataSource;
    mExtrato_Itens: TClientDataSet;
    mExtrato_ItensItem: TIntegerField;
    mExtrato_ItensID_Servico: TIntegerField;
    mExtrato_ItensID_Servico_Int: TIntegerField;
    mExtrato_ItensNome_Servico: TStringField;
    mExtrato_ItensQtd: TFloatField;
    mExtrato_ItensVlr_Total: TFloatField;
    mExtrato_ItensVlr_Unitario: TFloatField;
    qCliente: TSQLQuery;
    qClienteCODIGO: TIntegerField;
    qClienteNOME: TStringField;
    qClienteCOD_ALFA: TStringField;
    mExtrato_ItensNum_Contrato: TStringField;
    mExtratoPerc_INSS: TFloatField;
    mExtratoPerc_IR: TFloatField;
    mExtratoRetem_ISS: TStringField;
    mExtratoRetem_IR: TStringField;
    mExtratoRetem_INSS: TStringField;
    mExtratoPerc_Red_INSS: TFloatField;
    qClienteID_SERVICO: TIntegerField;
    qClienteID_SERVICO_INT: TIntegerField;
    qClienteVLR_SERVICO: TFloatField;
    qClienteRETEM_ISS: TStringField;
    qClienteRETEM_CSLL: TStringField;
    qClienteRETEM_PISCOFINS: TStringField;
    qClienteRETEM_INSS: TStringField;
    qClienteDIMINUIR_RETENCAO: TStringField;
    qClientePERC_REDUCAO_INSS: TFloatField;
    dsmExtrato_Itens: TDataSource;
    mExtrato_ItensCod_Servico: TStringField;
    frxRichObject1: TfrxRichObject;
    qParametrosID_COND_PGTO_NFSE: TIntegerField;
    mExtrato_ItensCod_Alfa: TStringField;
    mExtratoCod_Alfa_Aux: TStringField;
    mExtrato_ItensCod_Alfa_Aux: TStringField;
    qParametrosQTD_DIG_COD_CLI_CTB: TIntegerField;
    mExtrato_Nao: TClientDataSet;
    dsmExtrato_Nao: TDataSource;
    mExtrato_NaoCod_Alfa: TStringField;
    mExtrato_NaoMotivo: TStringField;
    sdsOS_Material: TSQLDataSet;
    cdsOS_Material: TClientDataSet;
    dsOS_Material: TDataSource;
    cdsOSsdsOS_Material: TDataSetField;
    cdsOS_MaterialID: TIntegerField;
    cdsOS_MaterialITEM: TIntegerField;
    cdsOS_MaterialID_PRODUTO: TIntegerField;
    cdsOS_MaterialNUM_SERIE: TStringField;
    cdsOS_MaterialVLR: TFMTBCDField;
    cdsOS_MaterialOBS: TStringField;
    cdsOS_MaterialclRefProduto: TStringField;
    cdsOS_MaterialclNomeProduto: TStringField;
    sdsOS_MaterialID: TIntegerField;
    sdsOS_MaterialITEM: TIntegerField;
    sdsOS_MaterialID_PRODUTO: TIntegerField;
    sdsOS_MaterialNUM_SERIE: TStringField;
    sdsOS_MaterialVLR: TFMTBCDField;
    sdsOS_MaterialOBS: TStringField;
    sdsProdutoCons: TSQLDataSet;
    dspProdutoCons: TDataSetProvider;
    cdsProdutoCons: TClientDataSet;
    dsProduto: TDataSource;
    cdsProdutoConsID: TIntegerField;
    cdsProdutoConsREFERENCIA: TStringField;
    cdsProdutoConsNOME: TStringField;
    cdsProdutoConsPRECO_VENDA: TFloatField;
    sdsProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    FloatField1: TFloatField;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    frxDBDataset4: TfrxDBDataset;
    sdsMov_Servico: TSQLDataSet;
    dspMov_Servico: TDataSetProvider;
    cdsMov_Servico: TClientDataSet;
    dsMov_Servico: TDataSource;
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
    qParametrosGERAR_NUM_AUT_CONTRATO: TStringField;
    qParametrosUSA_ANO_CONTRATO: TStringField;
    sdsOSANO_CONTRATO: TIntegerField;
    cdsOSANO_CONTRATO: TIntegerField;
    cdsContratoANO_CONTRATO: TIntegerField;
    cdsOS_ConsultaANO_CONTRATO: TIntegerField;
    mExtratoAno_Contrato: TIntegerField;
    qParametrosCONTRATO_CONSUMO: TStringField;
    sdsOS_Servico_Int_Cons: TSQLDataSet;
    dspOS_Servico_Int_Cons: TDataSetProvider;
    cdsOS_Servico_Int_Cons: TClientDataSet;
    cdsOS_Servico_Int_ConsID: TIntegerField;
    cdsOS_Servico_Int_ConsITEM: TIntegerField;
    cdsOS_Servico_Int_ConsNOME_SERVICO_INT: TStringField;
    cdsOS_Servico_Int_ConsQTD_FRANQUIA: TIntegerField;
    cdsOS_Servico_Int_ConsVLR_UNIT_EXCEDENTE: TFloatField;
    dsOS_Servico_Int_Cons: TDataSource;
    mContrato_Consumo: TClientDataSet;
    dsmContrato_Consumo: TDataSource;
    mContrato_ConsumoID: TIntegerField;
    mContrato_ConsumoID_SERVICO_INT: TIntegerField;
    mContrato_ConsumoNOME_SERVICO_INT: TStringField;
    mContrato_ConsumoFRANQUIA: TIntegerField;
    mContrato_ConsumoVLR_EXCEDENTE: TFloatField;
    sdsOS_Servico_IntQTD_FRANQUIA: TIntegerField;
    sdsOS_Servico_IntVLR_UNIT_EXCEDENTE: TFloatField;
    cdsOS_Servico_IntQTD_FRANQUIA: TIntegerField;
    cdsOS_Servico_IntVLR_UNIT_EXCEDENTE: TFloatField;
    mContrato_ConsumoclVLR_UTILIZADA: TFloatField;
    cdsOS_Servico_Int_ConsID_SERVICO_INT: TIntegerField;
    sdsOS_Servico_Int_Mes: TSQLDataSet;
    dspOS_Servico_Int_Mes: TDataSetProvider;
    cdsOS_Servico_Int_Mes: TClientDataSet;
    dsOS_Servico_Int_Mes: TDataSource;
    sdsOS_Servico_Int_MesID: TIntegerField;
    sdsOS_Servico_Int_MesITEM: TIntegerField;
    sdsOS_Servico_Int_MesCONTROLE: TIntegerField;
    sdsOS_Servico_Int_MesANO_MES: TStringField;
    sdsOS_Servico_Int_MesQTD_INFORMADA: TIntegerField;
    sdsOS_Servico_Int_MesVLR_EXCEDENTE: TFloatField;
    cdsOS_Servico_Int_MesID: TIntegerField;
    cdsOS_Servico_Int_MesITEM: TIntegerField;
    cdsOS_Servico_Int_MesCONTROLE: TIntegerField;
    cdsOS_Servico_Int_MesANO_MES: TStringField;
    cdsOS_Servico_Int_MesQTD_INFORMADA: TIntegerField;
    cdsOS_Servico_Int_MesVLR_EXCEDENTE: TFloatField;
    mContrato_ConsumoITEM: TIntegerField;
    sdsOS_Servico_IntTIPO_COB: TStringField;
    cdsOS_Servico_IntTIPO_COB: TStringField;
    qMesControle: TSQLQuery;
    qMesControleCONTROLE: TIntegerField;
    sdsOS_Servico_Int_MesQTD_ANT: TIntegerField;
    sdsOS_Servico_Int_MesQTD_ATUAL: TIntegerField;
    cdsOS_Servico_Int_MesQTD_ANT: TIntegerField;
    cdsOS_Servico_Int_MesQTD_ATUAL: TIntegerField;
    mContrato_ConsumoQTD_ANT: TIntegerField;
    mContrato_ConsumoQTD_ATUAL: TIntegerField;
    qParametros_Ser: TSQLQuery;
    qParametros_SerID: TIntegerField;
    qParametros_SerAGRUPA_CONTRATO_NFSE: TStringField;
    mOSAux: TClientDataSet;
    mOSAuxID: TIntegerField;
    mOSAuxID_Contrato: TIntegerField;
    mOSAuxID_Cliente: TIntegerField;
    mOSAuxID_Servico_Padrao: TIntegerField;
    mOSAuxDia_Vencimento: TIntegerField;
    mOSAuxID_Vendedor: TIntegerField;
    mOSAuxPerc_Comissao: TFloatField;
    cdsContratoID_VENDEDOR: TIntegerField;
    cdsContratoPERC_COMISSAO: TFloatField;
    cdsContratoID_CONTA_ORCAMENTO: TIntegerField;
    dsmOSAux: TDataSource;
    mContrato: TClientDataSet;
    mContratoID_Natureza: TIntegerField;
    mContratoISS_Retido: TStringField;
    mContratoPerc_Aliquota: TFloatField;
    mContratoID_Servico: TIntegerField;
    mContratoDiscriminacao: TMemoField;
    mContratoID_CondPgto: TIntegerField;
    cdsOS_ConsultaDTAJUSTE: TDateField;
    sdsOS_Servico_Hist: TSQLDataSet;
    cdsOS_Servico_Hist: TClientDataSet;
    dsOS_Servico_Hist: TDataSource;
    sdsOS_Servico_HistID: TIntegerField;
    sdsOS_Servico_HistITEM: TIntegerField;
    sdsOS_Servico_HistITEM_HIST: TIntegerField;
    sdsOS_Servico_HistID_SERVICO_INT: TIntegerField;
    sdsOS_Servico_HistVLR_ANT: TFloatField;
    sdsOS_Servico_HistVLR_NOVO: TFloatField;
    sdsOS_Servico_HistDTAJUSTE: TDateField;
    sdsOS_Servico_HistHRAJUSTE: TTimeField;
    sdsOS_Servico_HistID_AJUSTE: TIntegerField;
    dsOS_Servico_Int_Mestre: TDataSource;
    cdsOS_Servico_IntsdsOS_Servico_Hist: TDataSetField;
    cdsOS_Servico_HistID: TIntegerField;
    cdsOS_Servico_HistITEM: TIntegerField;
    cdsOS_Servico_HistITEM_HIST: TIntegerField;
    cdsOS_Servico_HistID_SERVICO_INT: TIntegerField;
    cdsOS_Servico_HistVLR_ANT: TFloatField;
    cdsOS_Servico_HistVLR_NOVO: TFloatField;
    cdsOS_Servico_HistDTAJUSTE: TDateField;
    cdsOS_Servico_HistHRAJUSTE: TTimeField;
    cdsOS_Servico_HistID_AJUSTE: TIntegerField;
    sdsAjuste_Contrato: TSQLDataSet;
    dspAjuste_Contrato: TDataSetProvider;
    cdsAjuste_Contrato: TClientDataSet;
    dsAjuste_Contrato: TDataSource;
    cdsAjuste_ContratoID: TIntegerField;
    cdsAjuste_ContratoDTAJUSTE: TDateField;
    cdsAjuste_ContratoHRAJUSTE: TTimeField;
    cdsAjuste_ContratoTIPO_AJUSTE: TStringField;
    cdsAjuste_ContratoPERC_AJUSTE: TFloatField;
    cdsAjuste_ContratoQTD_CONTRATO: TIntegerField;
    sdsAjuste_ContratoID: TIntegerField;
    sdsAjuste_ContratoDTAJUSTE: TDateField;
    sdsAjuste_ContratoHRAJUSTE: TTimeField;
    sdsAjuste_ContratoTIPO_AJUSTE: TStringField;
    sdsAjuste_ContratoPERC_AJUSTE: TFloatField;
    sdsAjuste_ContratoQTD_CONTRATO: TIntegerField;
    sdsOSDTAJUSTE: TDateField;
    cdsOSDTAJUSTE: TDateField;
    qParametros_SerUSA_AJUSTE_PRECO: TStringField;
    sdsOS_Servico_HistPERC_AJUSTE: TFloatField;
    cdsOS_Servico_HistPERC_AJUSTE: TFloatField;
    qParametros_Ger: TSQLQuery;
    qParametros_GerUSA_PONTOS_LOCACAO: TStringField;
    sdsPontos: TSQLDataSet;
    dspPontos: TDataSetProvider;
    cdsPontos: TClientDataSet;
    dsPontos: TDataSource;
    sdsOS_Servico_IntID_PONTO: TIntegerField;
    cdsOS_Servico_IntID_PONTO: TIntegerField;
    cdsPontosID: TIntegerField;
    cdsPontosLOCALIZACAO: TStringField;
    cdsPontosCIDADE: TStringField;
    cdsPontosUF: TStringField;
    cdsPontosLOGRADOURO: TStringField;
    cdsPontosLOGRADOURO2: TStringField;
    qParametros_SerTIPO_COBRANCA_NFSE: TStringField;
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
    cdsDuplicataID_PEDIDO: TIntegerField;
    cdsDuplicataTITULO_CARTORIO: TStringField;
    cdsDuplicataPERC_BASE_COMISSAO: TFloatField;
    dspDuplicata: TDataSetProvider;
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
    sdsDuplicataID_PEDIDO: TIntegerField;
    sdsDuplicataTITULO_CARTORIO: TStringField;
    sdsDuplicataPERC_BASE_COMISSAO: TFloatField;
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
    qParametros_SerGERAR_DUPLICATA_CONTRATO: TStringField;
    dsCondPgto_Mestre: TDataSource;
    sdsCondPgto_Dia: TSQLDataSet;
    sdsCondPgto_DiaID: TIntegerField;
    sdsCondPgto_DiaITEM: TIntegerField;
    sdsCondPgto_DiaQTDDIAS: TIntegerField;
    cdsCondPgto_Dia: TClientDataSet;
    cdsCondPgto_DiaID: TIntegerField;
    cdsCondPgto_DiaITEM: TIntegerField;
    cdsCondPgto_DiaQTDDIAS: TIntegerField;
    cdsCondPgtoTIPO_CONDICAO: TStringField;
    cdsCondPgtoQTD_PARCELA: TIntegerField;
    cdsCondPgtoENTRADA: TStringField;
    cdsCondPgtoMOSTRAR_NFCE: TStringField;
    cdsCondPgtosdsCondPgto_Dia: TDataSetField;
    sdsDuplicataID_CONTRATO: TIntegerField;
    cdsDuplicataID_CONTRATO: TIntegerField;
    sdsDuplicataPERC_COMISSAO_PAGAR_NOTA: TFloatField;
    cdsDuplicataPERC_COMISSAO_PAGAR_NOTA: TFloatField;
    sdsDuplicataNUM_CONTRATO: TIntegerField;
    cdsDuplicataNUM_CONTRATO: TIntegerField;
    cdsClienteCOD_ALFA: TStringField;
    cdsClienteID_GRUPO: TIntegerField;
    sdsDuplicataID_TERMINAL: TIntegerField;
    cdsDuplicataID_TERMINAL: TIntegerField;
    sdsDuplicataVLR_MULTA: TFloatField;
    cdsDuplicataVLR_MULTA: TFloatField;
    sdsDuplicata_HistVLR_MULTA: TFloatField;
    cdsDuplicata_HistVLR_MULTA: TFloatField;
    cdsFilialPERC_ISS_SIMPLES: TFloatField;
    sdsDuplicataNGR: TStringField;
    sdsDuplicataAPROVADO: TStringField;
    cdsDuplicataNGR: TStringField;
    cdsDuplicataAPROVADO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspOSUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsOS_Servico_IntNewRecord(DataSet: TDataSet);
    procedure cdsOSNewRecord(DataSet: TDataSet);
    procedure cdsOSBeforePost(DataSet: TDataSet);
    procedure cdsOS_Servico_IntBeforePost(DataSet: TDataSet);
    procedure mExtrato_ItensBeforeDelete(DataSet: TDataSet);
    procedure mExtratoBeforeDelete(DataSet: TDataSet);
    procedure cdsOS_MaterialCalcFields(DataSet: TDataSet);
    procedure mContrato_ConsumoCalcFields(DataSet: TDataSet);
    procedure cdsDuplicataNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
    procedure prc_Montar_Duplicata;
    procedure prc_Gravar_Duplicata(Parcela, ID_TipoCobranca, ID_Conta: Integer; Data: TDateTime; Valor, Perc_Base_Com: Real);
    procedure Abrir_cdsDuplicata(ID: Integer);
    procedure Gravar_Dupicata_Hist;
    procedure prc_Excluir_Duplicata(ID_Contrato : Integer);    

  public
    { Public declarations }
    vMsgOS: String;
    ctCommand: String;
    ctServico: String;
    ctConsulta: String;
    ctContrato: String;
    ctAjuste_Contrato : String;
    vMSGNotaGerada: String;
    vMSGAviso: String;
    vID_Ajuste : Integer;
    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar(Gerar_Dupl : String = 'N');
    procedure prc_Excluir;
    procedure prc_Abrir_Ajuste(ID: Integer); //-1 = Inclusão
    procedure prc_Abrir_Natureza;
    procedure prc_Abrir_Servico(Padrao_Sintetica: String = 'S');
    procedure prc_Abrir_cdsCliente;
    procedure prc_Inserir_Servico_Int;
    procedure prc_Excluir_Servico_Int;
    procedure prc_Inserir_Material;
    function fnc_Buscar_Pessoa_Servico(ID_Cliente, ID_Servico: Integer): Real;
    function fnc_Nota_Gerada(Ano, Mes: Integer; NumContrato, Ano_Contrato: Integer): Boolean;
    function fnc_Recibo_Gerado(Ano, Mes: Integer; Recibo_Nota: String = 'R'): Boolean;
    function fnc_Busca_Num_Contrato(Ano: Integer; Tipo: String ): Integer; //C=Contrato  O=OS
    procedure prc_Inserir_Ajuste(Perc_Ajuste : Real ; Tipo_Ajuste : String ; Qtd_Contrato : Integer);

    function fnc_Verifica_Dupl(ID_Contrato : Integer) : Boolean;
  end;

var
  DMCadOS: TDMCadOS;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadOS.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsOS.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('OS',0);

  cdsOS.Insert;
  cdsOSID.AsInteger := vAux + 1;
  cdsOSDTEMISSAO.AsDateTime := Date;
end;

procedure TDMCadOS.prc_Excluir;
var
  ID: TTransactionDesc;
begin
  if not(cdsOS.Active) or (cdsOS.IsEmpty) then
    exit;
  ID.TransactionID  := 2;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    cdsOS_Servico_Int.First;
    while not cdsOS_Servico_Int.Eof do
      prc_Excluir_Servico_Int;
    cdsOS_Parc.First;
    while not cdsOS_Parc.Eof do
      cdsOS_Parc.Delete;
    cdsOS_Material.First;
    while not cdsOS_Material.Eof do
      cdsOS_Material.Delete;
    prc_Excluir_Duplicata(cdsOSID.AsInteger);
    cdsOS.Delete;
    cdsOS.ApplyUpdates(0);
    dmDatabase.scoDados.Commit(ID);
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
end;

procedure TDMCadOS.prc_Gravar(Gerar_Dupl : String = 'N');
var
  sds: TSQLDataSet;
  ID: TTransactionDesc;
  vGravar_Ajuste : Boolean;
  vTipo_Ajuste, vTipoAux : String;
begin
  vMsgOS := '';
  if cdsOSNUM_CONTRATO.AsInteger > 0 then
  begin
    try
      sds := TSQLDataSet.Create(nil);
      sds.SQLConnection := dmDatabase.scoDados;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;

      sds.CommandText := 'SELECT OS.ID, OS.NUM_CONTRATO FROM OS '
                         + ' WHERE OS.NUM_CONTRATO = ' + IntToStr(cdsOSNUM_CONTRATO.AsInteger)
                         + '   AND OS.ANO_CONTRATO = ' + IntToStr(cdsOSANO_CONTRATO.AsInteger);
      sds.Open;
      if not(sds.IsEmpty) and (sds.FieldByName('ID').AsInteger <> cdsOSID.AsInteger) then
        vMsgOS := vMsgOS + #13 + '*** Esse número de contrato já existe';
    finally
      FreeAndNil(sds);
    end;
  end;

  if cdsOSID_CLIENTE.AsInteger <= 0 then
    vMsgOS := vMsgOS + #13 + '*** Cliente não informado!';
  if cdsOSNUM_CONTRATO.AsInteger <= 0 then
    vMsgOS := vMsgOS + #13 + '*** Número do contrato não informado!';
  if cdsOSDTEMISSAO.AsDateTime < 10 then
    vMsgOS := vMsgOS + #13 + '*** Data emissão não informada!';
  if ((cdsOSDTCONTRATO_INI.AsDateTime > 0) and (cdsOSDTCONTRATO_FIN.AsDateTime > 0)) and (cdsOSDTCONTRATO_FIN.AsDateTime <= cdsOSDTCONTRATO_INI.AsDateTime) then
    vMsgOS := vMsgOS + #13 + '*** Data de contrato informada incorretamente!';
  if (cdsOSDIA_VENCIMENTO.AsInteger <= 0) and (cdsOSTIPO_REG.AsString <> 'S') and (qParametros_SerTIPO_COBRANCA_NFSE.AsString <> 'C') then
    vMsgOS := vMsgOS + #13 + '*** Dia do vencimento não informado!';
  if (cdsOS_Servico_Int.IsEmpty) and (cdsOSTIPO_REG.AsString <> 'S') then
    vMsgOS := vMsgOS + #13 + '*** Não foi informado nenhum serviço!';
  if (cdsOSDIA_VENCIMENTO.AsInteger <= 0) and (cdsOSTIPO_REG.AsString <> 'S') and (qParametros_SerTIPO_COBRANCA_NFSE.AsString = 'C') and (cdsOSID_CONDPGTO.AsInteger <= 0) then
    vMsgOS := vMsgOS + #13 + '*** Dia do vencimento e condição de pagamentos zerado!';
  if (cdsOSTIPO_REG.AsString <> 'S') and (qParametros_SerTIPO_COBRANCA_NFSE.AsString = 'C') and (cdsOSID_CONDPGTO.AsInteger <= 0) then
    vMsgOS := vMsgOS + #13 + '*** Condição de pagamento não informada!';

  if vMsgOS <> '' then
    exit;

  if cdsOSID_CONDPGTO.AsInteger <> cdsCondPgtoID.AsInteger then
    cdsCondPgto.Locate('ID',cdsOSID_CONDPGTO.AsInteger,[loCaseInsensitive]);

  vID_Ajuste := 0;
  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    cdsOS_Servico_Int.First;
    while not cdsOS_Servico_Int.Eof do
    begin
      cdsOS_Servico_Hist.First;
      while not cdsOS_Servico_Hist.Eof do
      begin
        if cdsOS_Servico_HistID_AJUSTE.IsNull then
        begin
          if StrToFloat(FormatFloat('0.00',cdsOS_Servico_HistVLR_NOVO.AsFloat)) > StrToFloat(FormatFloat('0.00',cdsOS_Servico_HistVLR_ANT.AsFloat)) then
            prc_Inserir_Ajuste(0,'A',1)
          else
            prc_Inserir_Ajuste(0,'D',1);
        end;
        cdsOS_Servico_Hist.Edit;
        cdsOS_Servico_HistID_AJUSTE.AsInteger := vID_Ajuste;
        cdsOS_Servico_Hist.Post;
        cdsOS_Servico_Hist.Next;
      end;
      cdsOS_Servico_Int.Next;
    end;
    if not (cdsOS.State in [dsEdit,dsInsert]) then
      cdsOS.Edit;
    if vID_Ajuste > 0 then
      cdsOSDTAJUSTE.AsDateTime := Date;
    if cdsClienteCODIGO.AsInteger <> cdsOSID_CLIENTE.AsInteger then
      cdsCliente.Locate('CODIGO',cdsOSID_CLIENTE.AsInteger,[loCaseInsensitive]);
    cdsOS.Post;

    if Gerar_Dupl = 'S' then
    begin
      prc_Excluir_Duplicata(cdsOSid.AsInteger);
      prc_Montar_Duplicata;
    end;

    cdsOS.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
  FreeAndNil(sds);
end;

procedure TDMCadOS.prc_Localizar(ID: Integer);
begin
  cdsOS.Close;
  sdsOS.CommandText := ctCommand;
  if ID <> 0 then
    sdsOS.CommandText := sdsOS.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsOS.Open;
  cdsOS_Servico_Int.Close;
  cdsOS_Servico_Int.Open;
  cdsOS_Servico_Hist.Close;
  cdsOS_Servico_Hist.Open;
end;

procedure TDMCadOS.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand  := sdsOS.CommandText;
  ctServico  := sdsServico.CommandText;
  ctConsulta := sdsOS_Consulta.CommandText;
  ctContrato := sdsContrato.CommandText;
  ctAjuste_Contrato := sdsAjuste_Contrato.CommandText;
  cdsCliente.Open;
  cdsServico.Open;
  cdsFilial.Open;
  cdsCidade.Open;
  cdsAtividade_Cid.Open;
  cdsServico_Int.Open;
  qParametros.Close;
  qParametros.Open;
  cdsCondPgto.Open;
  cdsVendedor.Open;
  cdsContas.Open;
  cdsTipoCobranca.Open;
  cdsContaOrcamento.Open;
  qParametros_Ser.Open;
  qParametros_Ger.Open;
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

procedure TDMCadOS.dspOSUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadOS.prc_Abrir_Natureza;
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
    sdsNatureza.CommandText := sdsNatureza.CommandText + ' WHERE ID_PROVEDOR is Null';
  cdsNatureza.Open;
end;

procedure TDMCadOS.prc_Abrir_Servico(Padrao_Sintetica: String = 'S');
begin
  cdsServico.Close;
  sdsServico.CommandText := ctServico;
  if (Padrao_Sintetica = 'P') then
  begin
    if cdsFilialID_SERVICO_PAD.AsInteger > 0 then
      sdsServico.CommandText := sdsServico.CommandText + ' WHERE ((ID =  ' + IntToStr(cdsFilialID_SERVICO_PAD.AsInteger) + ')'
                                                       + '    OR (ID = '  + IntToStr(cdsClienteID_SERVICO.AsInteger) + '))'
  end
  else
  if cdsFilialID_SERVICO_SINT.AsInteger > 0 then
    sdsServico.CommandText := sdsServico.CommandText + ' WHERE ((CODIGO LIKE ' + QuotedStr(cdsFilialCOD_SERVICO_SINT.AsString+'.%') + ')'
                                                     + '    OR (ID = ' + IntToStr(cdsClienteID_SERVICO.AsInteger) + '))';
  cdsServico.Open;
end;

procedure TDMCadOS.prc_Abrir_cdsCliente;
begin
  cdsCliente.Close;
  sdsCliente.CommandText := ' SELECT * FROM PESSOA  WHERE INATIVO = ' + QuotedStr('N');
  sdsCliente.CommandText := sdsCliente.CommandText + ' AND TP_CLIENTE = ' + QuotedStr('S');
  cdsCliente.Open;
end;

function TDMCadOS.fnc_Buscar_Pessoa_Servico(ID_Cliente,
  ID_Servico: Integer): Real;
begin
  qPessoa_Servico.Close;
  qPessoa_Servico.ParamByName('CODIGO').AsInteger     := ID_Cliente;
  qPessoa_Servico.ParamByName('ID_SERVICO').AsInteger := ID_Servico;
  qPessoa_Servico.Open;
  Result := qPessoa_ServicoPERC_ISS.AsFloat;
end;

procedure TDMCadOS.prc_Inserir_Servico_Int;
var
  vItemAux: Integer;
  vID_Vendedor: Integer;
  vPerc_Comissao: Real;
begin
  cdsOS_Servico_Int.Last;
  vItemAux := cdsOS_Servico_IntITEM.AsInteger;
  if cdsOS_Servico_IntID_VENDEDOR.AsInteger > 0 then
  begin
    vID_Vendedor   := cdsOS_Servico_IntID_VENDEDOR.AsInteger;
    vPerc_Comissao := StrToFloat(FormatFloat('0.00',cdsOS_Servico_IntPERC_COMISSAO.AsFloat));
  end
  else
  begin
    vID_Vendedor   := 0;
    vPerc_Comissao := StrToFloat(FormatFloat('0.00',0));
  end;

  cdsOS_Servico_Int.Insert;
  cdsOS_Servico_IntID.AsInteger   := cdsOSID.AsInteger;
  cdsOS_Servico_IntITEM.AsInteger := vItemAux + 1;
  cdsOS_Servico_IntQTD.AsInteger  := 1;
  if vID_Vendedor > 0 then
  begin
    cdsOS_Servico_IntID_VENDEDOR.AsInteger := vID_Vendedor;
    cdsOS_Servico_IntPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',vPerc_Comissao));
  end;
end;

procedure TDMCadOS.prc_Excluir_Servico_Int;
begin
  cdsOS_Servico_Hist.First;
  while not cdsOS_Servico_Hist.Eof do
    cdsOS_Servico_Hist.Delete;
  cdsOS_Servico_Int.Delete;
end;

procedure TDMCadOS.cdsOS_Servico_IntNewRecord(DataSet: TDataSet);
begin
  cdsOS_Servico_IntCALCULAR_INSS.AsString      := 'S';
  cdsOS_Servico_IntCALCULAR_IR.AsString        := 'S';
  cdsOS_Servico_IntCALCULAR_ISSQN.AsString     := 'S';
  cdsOS_Servico_IntCALCULAR_PISCOFINS.AsString := 'S';
  cdsOS_Servico_IntSOMAR_DIMINUIR.AsString     := 'S';
end;

function TDMCadOS.fnc_Nota_Gerada(Ano, Mes: Integer; NumContrato, Ano_Contrato: Integer): Boolean;
var
  sds: TSQLDataSet;
  vTab : String;
  
begin
  vTab := 'NS.';
  if qParametros_SerAGRUPA_CONTRATO_NFSE.AsString = 'S' then
    vTab := 'NC.';
  Result := False;
  try
    sds := TSQLDataSet.Create(nil);
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.Close;
    //inclui a linha do left no dia 26/07/2016 para controlar se a nota já foi gerada através da tabela de nota_contrato
    sds.CommandText   := 'SELECT NS.NUMNOTA, NS.NUMRPS FROM NOTASERVICO NS '
                       + ' LEFT JOIN NOTASERVICO_CONTRATO NC '
                       + '   ON NS.ID = NC.ID '
                       + ' WHERE ' + vTab + 'NUM_CONTRATO = ' + IntToStr(NumContrato)
                       + '   AND ' + vtab + 'ANO_CONTRATO = ' + IntToStr(Ano_Contrato)
                       + ' AND NS.ANO_REF = ' + IntToStr(Ano)
                       + ' AND NS.MES_REF = ' + IntToStr(Mes)
                       + ' AND NS.STATUS_RPS = ' + QuotedStr('1');
    sds.Open;
    if not(sds.IsEmpty) or (sds.FieldByName('NUMNOTA').AsInteger > 0) or (sds.FieldByName('NUMRPS').AsInteger > 0) then
    begin
      if sds.FieldByName('NUMNOTA').AsInteger > 0 then
        //vMSGNotaGerada := vMSGNotaGerada + #13 + ' Contrato ' + cdsContratoNum_Contrato.AsString + ' já esta na nota ' + sds.FieldByName('NUMNOTA').AsString
        vMSGNotaGerada := vMSGNotaGerada + #13 + ' Contrato ' + IntToStr(NumContrato) + ' já esta na nota ' + sds.FieldByName('NUMNOTA').AsString
      else
      if sds.FieldByName('NUMRPS').AsInteger > 0 then
        //vMSGNotaGerada := vMSGNotaGerada + #13 + ' Contrato ' + cdsContratoNum_Contrato.AsString + ' já esta no RPS ' + sds.FieldByName('NUMRPS').AsString;
        vMSGNotaGerada := vMSGNotaGerada + #13 + ' Contrato ' + IntToStr(NumContrato) + ' já esta no RPS ' + sds.FieldByName('NUMRPS').AsString;
      Result := True;
    end;
    sds.Close;
  finally
    sds.Close;
    FreeAndNil(sds);
  end;
end;

procedure TDMCadOS.cdsOSNewRecord(DataSet: TDataSet);
begin
 cdsOSRETEM_ISS.AsString             := '2';
 cdsOSRETEM_CSLL.AsString            := 'N';
 cdsOSRETEM_INSS.AsString            := 'N';
 cdsOSRETEM_IR.AsString              := 'N';
 cdsOSRETEM_PISCOFINS.AsString       := 'N';
 cdsOSOPCAO_VENCIMENTO_MREF.AsString := 'N';
 if qParametrosUSA_ANO_CONTRATO.AsString <> 'S' then
   cdsOSANO_CONTRATO.AsInteger := 9999;
end;

procedure TDMCadOS.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadOS.cdsOSBeforePost(DataSet: TDataSet);
begin
  if cdsOSDTENTREGA.AsDateTime < 10 then
    cdsOSDTENTREGA.Clear;
  if cdsOSDTCONTRATO_FIN.AsDateTime <= 10 then
    cdsOSDTCONTRATO_FIN.Clear;
  if cdsOSDTENCERRAMENTO.AsDateTime <= 10 then
    cdsOSDTENCERRAMENTO.Clear;
end;

procedure TDMCadOS.cdsOS_Servico_IntBeforePost(DataSet: TDataSet);
begin
  if (cdsOS_Servico_IntSOMAR_DIMINUIR.AsString = 'D') or (cdsOS_Servico_IntSOMAR_DIMINUIR.AsString = 'd') or
     (cdsOS_Servico_IntSOMAR_DIMINUIR.AsString = '-') then
    cdsOS_Servico_IntSOMAR_DIMINUIR.AsString := 'D'
  else
    cdsOS_Servico_IntSOMAR_DIMINUIR.AsString := 'S';
  if (cdsOS_Servico_IntCALCULAR_INSS.AsString = 'N') or (cdsOS_Servico_IntCALCULAR_INSS.AsString = 'n') or
     (cdsOS_Servico_IntCALCULAR_INSS.AsString = '-') then
    cdsOS_Servico_IntCALCULAR_INSS.AsString := 'N'
  else
    cdsOS_Servico_IntCALCULAR_INSS.AsString := 'S';
  if (cdsOS_Servico_IntCALCULAR_IR.AsString = 'N') or (cdsOS_Servico_IntCALCULAR_IR.AsString = 'n') or
     (cdsOS_Servico_IntCALCULAR_IR.AsString = '-') then
    cdsOS_Servico_IntCALCULAR_IR.AsString := 'N'
  else
    cdsOS_Servico_IntCALCULAR_IR.AsString := 'S';
  if (cdsOS_Servico_IntCALCULAR_ISSQN.AsString = 'N') or (cdsOS_Servico_IntCALCULAR_ISSQN.AsString = 'n') or
     (cdsOS_Servico_IntCALCULAR_ISSQN.AsString = '-') then
    cdsOS_Servico_IntCALCULAR_ISSQN.AsString := 'N'
  else
    cdsOS_Servico_IntCALCULAR_ISSQN.AsString := 'S';
  if (cdsOS_Servico_IntCALCULAR_PISCOFINS.AsString = 'N') or (cdsOS_Servico_IntCALCULAR_PISCOFINS.AsString = 'n') or
     (cdsOS_Servico_IntCALCULAR_PISCOFINS.AsString = '-') then
    cdsOS_Servico_IntCALCULAR_PISCOFINS.AsString := 'N'
  else
    cdsOS_Servico_IntCALCULAR_PISCOFINS.AsString := 'S';
end;

function TDMCadOS.fnc_Recibo_Gerado(Ano, Mes: Integer ; Recibo_Nota: String = 'R'): Boolean;
var
  sds: TSQLDataSet;
  vTab : String;
begin
  Result := False;
  try
    sds := TSQLDataSet.Create(nil);
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    vTab := 'RE.';
    if qParametros_SerAGRUPA_CONTRATO_NFSE.AsString = 'S' then
      vTab := 'RC.';
    sds.Close;
    sds.CommandText   := 'SELECT RE.NUM_RECIBO FROM RECIBO RE '
                       + 'LEFT JOIN RECIBO_CONTRATO RC '
                       + ' ON RE.ID = RC.ID '
                       + 'WHERE ' + vTab + 'NUM_CONTRATO = ' + cdsContratoNUM_CONTRATO.AsString
                       + ' AND ' + vTab + 'ANO_CONTRATO = ' + cdsContratoANO_CONTRATO.AsString
                       + ' AND RE.ANO_REF = ' + IntToStr(Ano)
                       + ' AND RE.MES_REF = ' + IntToStr(Mes);
    sds.Open;
    if not(sds.IsEmpty) or (sds.FieldByName('NUM_RECIBO').AsInteger > 0) then
    begin
      if Recibo_Nota = 'R' then
        //vMSGNotaGerada := vMSGNotaGerada + #13 + ' Contrato ' + cdsContratoNum_Contrato.AsString + ' já esta no recibo ' + sds.FieldByName('NUM_RECIBO').AsString;
        vMSGAviso := vMSGNotaGerada + #13 + ' Contrato ' + cdsContratoNum_Contrato.AsString + ' já esta no recibo ' + sds.FieldByName('NUM_RECIBO').AsString;
      Result := True;
    end;
    sds.Close;
  finally
    sds.Close;
    FreeAndNil(sds);
  end;
end;

procedure TDMCadOS.mExtrato_ItensBeforeDelete(DataSet: TDataSet);
begin
  mExtrato.Edit;
  mExtratoVlr_Servico.AsFloat := StrToFloat(FormatFloat('0.00',mExtratoVlr_Servico.AsFloat - mExtrato_ItensVlr_Total.AsFloat));
  mExtratoVlr_Total.AsFloat   := StrToFloat(FormatFloat('0.00',mExtratoVlr_Total.AsFloat - mExtrato_ItensVlr_Total.AsFloat));
  mExtrato.Post;
end;

procedure TDMCadOS.mExtratoBeforeDelete(DataSet: TDataSet);
begin
  mExtrato_Itens.First;
  while not mExtrato_Itens.Eof do
    mExtrato_Itens.Delete;
end;

procedure TDMCadOS.cdsOS_MaterialCalcFields(DataSet: TDataSet);
begin
  if not cdsOS_MaterialID_PRODUTO.IsNull then
  begin
    cdsProdutoCons.IndexFieldNames := 'ID';
    cdsProdutoCons.FindKey([cdsOS_MaterialID_PRODUTO.AsInteger]);
    cdsOS_MaterialclNomeProduto.AsString := cdsProdutoConsNOME.AsString;
    cdsOS_MaterialclRefProduto.AsString  := cdsProdutoConsREFERENCIA.AsString;
  end;
end;

procedure TDMCadOS.prc_Inserir_Material;
var
  vItemAux: Integer;
  vPerc_Comissao: Real;
begin
  cdsOS_Material.Last;
  vItemAux := cdsOS_MaterialITEM.AsInteger;

  cdsOS_Material.Insert;
  cdsOS_MaterialID.AsInteger   := cdsOSID.AsInteger;
  cdsOS_MaterialITEM.AsInteger := vItemAux + 1;
end;

function TDMCadOS.fnc_Busca_Num_Contrato(Ano: Integer ; Tipo: String ): Integer; //C=Contrato  O=OS
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  
  try
    sds.CommandText := 'SELECT MAX(NUM_CONTRATO) NUM_CONTRATO, MAX(NUM_OS) NUM_OS FROM OS ' +
                       'WHERE ANO_CONTRATO = ' + IntToStr(Ano);
    sds.Open;
    if Tipo = 'C' then
      Result := sds.FieldByName('NUM_CONTRATO').AsInteger
    else
      Result := sds.FieldByName('NUM_OS').AsInteger;
    Result := Result + 1;
  except
    Result := 0;
  end;
  FreeAndNil(sds);
end;

procedure TDMCadOS.mContrato_ConsumoCalcFields(DataSet: TDataSet);
var
  vQtdUtilizada: Integer;
begin
  vQtdUtilizada := mContrato_ConsumoQTD_ATUAL.AsInteger - mContrato_ConsumoQTD_ANT.AsInteger;

  if vQtdUtilizada > mContrato_ConsumoFRANQUIA.AsFloat then
    mContrato_ConsumoclVLR_UTILIZADA.AsCurrency := (vQtdUtilizada -
                                                   mContrato_ConsumoFRANQUIA.AsFloat) *
                                                   mContrato_ConsumoVLR_EXCEDENTE.AsCurrency;
end;

procedure TDMCadOS.prc_Abrir_Ajuste(ID: Integer);
begin
  cdsAjuste_Contrato.Close;
  sdsAjuste_Contrato.CommandText := ctAjuste_Contrato;
  if ID <> 0 then
    sdsAjuste_Contrato.CommandText := sdsAjuste_Contrato.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsAjuste_Contrato.Open;
end;

procedure TDMCadOS.prc_Inserir_Ajuste(Perc_Ajuste : Real ; Tipo_Ajuste : String ; Qtd_Contrato : Integer);
begin
  if not cdsAjuste_Contrato.Active then
    prc_Abrir_Ajuste(-1);
  vID_Ajuste := dmDatabase.ProximaSequencia('AJUSTE_CONTRATO',0);

  cdsAjuste_Contrato.Insert;
  cdsAjuste_ContratoID.AsInteger := vID_Ajuste;
  cdsAjuste_ContratoDTAJUSTE.AsDateTime := Date;
  cdsAjuste_ContratoHRAJUSTE.AsDateTime := Now;
  cdsAjuste_ContratoTIPO_AJUSTE.AsString := Tipo_Ajuste;
  cdsAjuste_ContratoPERC_AJUSTE.AsFloat  := StrToFloat(FormatFloat('0.00',Perc_Ajuste));
  cdsAjuste_ContratoQTD_CONTRATO.AsFloat := Qtd_Contrato;
  cdsAjuste_Contrato.Post;
  cdsAjuste_Contrato.ApplyUpdates(0);
end;

procedure TDMCadOS.prc_Montar_Duplicata;
var
  vParcAux: Integer;
  vDataAux: TDateTime;
  vDataOri: TDateTime;
  vValorParc, vValorOri: Real;
  i: Integer;
  vQtdParc: Integer;
  vID_Tipo_Cobranca_Aux, vID_Conta_Aux: Integer;
  vValorParc_Com, vValorOri_Com : Real;
  vPerc_Base_Com : Real;
begin
  //if (cdsCondPgtoTIPO_CONDICAO.AsString = 'F') and (cdsOSDTCONTRATO_INI.AsDateTime > 10) then
  vDataOri := cdsOSDTCONTRATO_INI.AsDateTime;

  if cdsCondPgtoTIPO_CONDICAO.AsString = 'F' then
    vQtdParc := cdsCondPgtoQTD_PARCELA.AsInteger
  else
    vQtdParc := cdsCondPgto_Dia.RecordCount;
  vValorParc := StrToFloat(FormatFloat('0.00',cdsOSVLR_TOTAL.AsFloat));
  //vValorParc_Com :=StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscalVLR_BASE_COMISSAO.AsFloat));
  vValorOri      := StrToFloat(FormatFloat('0.00',vValorParc));
  vValorParc     := StrToFloat(FormatFloat('0.00',vValorParc / vQtdParc));
  //vValorOri_Com  := StrToFloat(FormatFloat('0.00',vValorParc_Com));
  //vValorParc_Com := StrToFloat(FormatFloat('0.00',vValorParc_Com / vQtdParc));
  vPerc_Base_Com := StrToFloat(FormatFloat('0.00',0));
  //**************
  i := 0;
  if cdsCondPgtoTIPO_CONDICAO.AsString = 'F' then
  begin
    vQtdParc := cdsCondPgtoQTD_PARCELA.AsInteger;
    vDataAux := vDataOri;
    while vQtdParc > 0 do
    begin
      i := i + 1;
      if vQtdParc = 1 then
      begin
        vValorParc := StrToFloat(FormatFloat('0.00',vValorOri));
        //08/02/2016
        //vValorParc_Com := StrToFloat(FormatFloat('0.00',vValorOri_Com));
      end;
      vDataAux := IncMonth(vDataAux);
      prc_Gravar_Duplicata(i,cdsOSID_TIPO_COBRANCA.AsInteger,cdsOSID_CONTA.AsInteger,
                           vDataAux,vValorParc,StrToFloat(FormatFloat('0.00000',vPerc_Base_Com)));
      vValorOri := StrToFloat(FormatFloat('0.00',vValorOri - vValorParc));
      //08/02/2016
      //vValorOri_Com := StrToFloat(FormatFloat('0.00',vValorOri_Com - vValorParc_Com));
      vQtdParc  := vQtdParc - 1;
    end;
  end
  else
  begin
    cdsCondPgto_Dia.First;
    while not cdsCondPgto_Dia.Eof do
    begin
      i := i + 1;
      if i = vQtdParc then
      begin
        vValorParc := StrToFloat(FormatFloat('0.00',vValorOri));
        //vValorParc_Com := StrToFloat(FormatFloat('0.00',vValorOri_Com));
      end;
      vDataAux := vDataOri + cdsCondPgto_DiaQTDDIAS.AsInteger;
      prc_Gravar_Duplicata(i,cdsOSID_TIPO_COBRANCA.AsInteger,cdsOSID_CONTA.AsInteger,
                                                  vDataAux,vValorParc,StrToFloat(FormatFloat('0.00000',vPerc_Base_Com)));
      vValorOri := StrToFloat(FormatFloat('0.00',vValorOri - vValorParc));
      //vValorOri_Com := StrToFloat(FormatFloat('0.00',vValorOri_Com - vValorParc_Com));
      cdsCondPgto_Dia.Next;
    end;
  end;
end;

procedure TDMCadOS.prc_Gravar_Duplicata(Parcela, ID_TipoCobranca,
  ID_Conta: Integer; Data: TDateTime; Valor, Perc_Base_Com: Real);
var
  vAux: Integer;
begin
  if not cdsDuplicata.Active then
    Abrir_cdsDuplicata(0);

  vAux := dmDatabase.ProximaSequencia('DUPLICATA',0);

  cdsDuplicata.Insert;
  cdsDuplicataID.AsInteger := vAux;
  cdsDuplicataTIPO_ES.AsString := 'E';
  cdsDuplicataFILIAL.AsInteger        := cdsOSFILIAL.AsInteger;
  cdsDuplicataID_CONTRATO.AsInteger   := cdsOSID.AsInteger;
  cdsDuplicataNUM_CONTRATO.AsString   := cdsOSNUM_CONTRATO.AsString;
  cdsDuplicataPARCELA.AsInteger       := Parcela;
  //Alterado conforme Gonzaga e Shala 11/05/2016
  //cdsDuplicataNUMDUPLICATA.AsString   := cdsOSNUM_CONTRATO.AsString;
  cdsDuplicataNUMDUPLICATA.AsString   := cdsClienteCOD_ALFA.AsString;
  //cdsDuplicataNUMNOTA.AsInteger       := cdsNotaFiscalNUMNOTA.AsInteger;
  cdsDuplicataSERIE.AsString          := 'CTR';
  cdsDuplicataDTVENCIMENTO.AsDateTime := Data;
  cdsDuplicataVLR_PARCELA.AsFloat     := StrToFloat(FormatFloat('0.00',Valor));
  cdsDuplicataVLR_RESTANTE.AsFloat    := StrToFloat(FormatFloat('0.00',Valor));
  cdsDuplicataVLR_PAGO.AsFloat        := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicataVLR_DEVOLUCAO.AsFloat   := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicataVLR_DESPESAS.AsFloat    := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicataVLR_DESCONTO.AsFloat    := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicataVLR_JUROSPAGOS.AsFloat  := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicataVLR_MULTA.AsFloat       := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicataVLR_COMISSAO.AsFloat    := StrToFloat(FormatFloat('0.00',0));
  //if cdsParametrosTIPO_COMISSAO_PROD.AsString = 'I' then
  //  cdsDuplicataPERC_COMISSAO.AsFloat   := StrToFloat(FormatFloat('0.0000',vPerc_Comissao_Rateio))
  //else
  cdsDuplicataPERC_COMISSAO.AsFloat   := StrToFloat(FormatFloat('0.00',cdsOSPERC_COMISSAO.AsFloat));
  cdsDuplicataDTULTPAGAMENTO.Clear;
  cdsDuplicataID_PESSOA.AsInteger     := cdsOSID_CLIENTE.AsInteger;
  if cdsOSID_VENDEDOR.AsInteger > 0 then
    cdsDuplicataID_VENDEDOR.AsInteger := cdsOSID_VENDEDOR.AsInteger;
  if cdsOSID_CONTA.AsInteger > 0 then
    cdsDuplicataID_CONTA.AsInteger   := cdsOSID_CONTA.AsInteger;
  if cdsOSID_TIPO_COBRANCA.AsInteger > 0 then
    cdsDuplicataID_TIPOCOBRANCA.AsInteger := cdsOSID_TIPO_COBRANCA.AsInteger;
  if cdsOSID_CONTA.AsInteger > 0 then
    cdsDuplicataID_CONTA_BOLETO.AsInteger := cdsOSID_CONTA.AsInteger;
  cdsDuplicataID_COMISSAO.AsInteger       := 0;
  cdsDuplicataQTD_DIASATRASO.AsInteger    := 0;
  cdsDuplicataDTRECEBIMENTO_TITULO.Clear;
  cdsDuplicataDTEMISSAO.AsDateTime        := cdsOSDTEMISSAO.AsDateTime;
  cdsDuplicataPAGO_CARTORIO.AsString      := 'N';
  cdsDuplicataPROTESTADO.AsString         := 'N';
  cdsDuplicataTIPO_LANCAMENTO.AsString    := 'CTR';
  cdsDuplicataARQUIVO_GERADO.AsString     := 'N';
  cdsDuplicataTRANSFERENCIA_ICMS.AsString := 'N';
  cdsDuplicataNOSSONUMERO.AsString        := '';
  cdsDuplicataDTFINANCEIRO.Clear;
  cdsDuplicataNUMCHEQUE.AsInteger         := 0;
  cdsDuplicataACEITE.AsString             := '';
  cdsDuplicataPERC_COMISSAO_PAGAR_NOTA.AsFloat := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicataPERC_BASE_COMISSAO.AsFloat       := 100;
  if cdsDuplicataID_CONTA_ORCAMENTO.AsInteger > 0 then
    cdsDuplicataID_CONTA_ORCAMENTO.AsInteger := cdsDuplicataID_CONTA_ORCAMENTO.AsInteger
  else
    cdsDuplicataID_CONTA_ORCAMENTO.Clear;
  cdsDuplicataTITULO_CARTORIO.AsString := 'N';
  //12/07/2016
  if vTerminal <= 0 then
    cdsDuplicataID_TERMINAL.Clear
  else
    cdsDuplicataID_TERMINAL.AsInteger := vTerminal;
  cdsDuplicata.Post;
  Gravar_Dupicata_Hist;
  cdsDuplicata.ApplyUpdates(0);
end;

procedure TDMCadOS.Abrir_cdsDuplicata(ID: Integer);
begin
  cdsDuplicata.Close;
  sdsDuplicata.CommandText := 'SELECT * FROM DUPLICATA WHERE ID = ' + IntToStr(ID);
  cdsDuplicata.Open;
end;

procedure TDMCadOS.Gravar_Dupicata_Hist;
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
  cdsDuplicata_HistCOMPLEMENTO.AsString  := 'ENTRADA DO TÍTULO';
  cdsDuplicata_HistVLR_PAGAMENTO.AsFloat := StrToFloat(FormatFloat('0.00',0));
  cdsDuplicata_HistDTHISTORICO.AsDateTime  := Date;
  cdsDuplicata_HistDTLANCAMENTO.AsDateTime := cdsDuplicataDTEMISSAO.AsDateTime;
  cdsDuplicata_HistNUMCHEQUE.AsInteger     := 0;
  cdsDuplicata_HistDTPREVISAO_CHEQUE.Clear;
  if cdsDuplicataID_CONTA.AsInteger > 0 then
    cdsDuplicata_HistID_CONTA.AsInteger := cdsDuplicataID_CONTA.AsInteger;
  cdsDuplicata_HistID_COMISSAO.AsInteger   := 0;
  cdsDuplicata_HistTIPO_ES.AsString        := cdsDuplicataTIPO_ES.AsString;
  cdsDuplicata_Hist.Post;
end;

function TDMCadOS.fnc_Verifica_Dupl(ID_Contrato: Integer): Boolean;
var
  sds: TSQLDataSet;
begin
  Result := False;
  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;

  sds.CommandText := 'SELECT COUNT(1) CONTADOR FROM DUPLICATA D '
                   + 'WHERE D.id_contrato = :ID_CONTRATO '
                   + '  AND D.nossonumero_seq > 0 ';
  sds.ParamByName('ID_CONTRATO').AsInteger := ID_Contrato;
  sds.Open;
  if sds.FieldByName('CONTADOR').AsInteger > 0 then
    Result := True;
  FreeAndNil(sds);
end;

procedure TDMCadOS.prc_Excluir_Duplicata(ID_Contrato: Integer);
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText := 'DELETE FROM DUPLICATA D '
                   + 'WHERE D.id_contrato = :ID_CONTRATO ';
  sds.ParamByName('ID_CONTRATO').AsInteger := ID_Contrato;
  sds.ExecSQL;
  FreeAndNil(sds);
end;

procedure TDMCadOS.cdsDuplicataNewRecord(DataSet: TDataSet);
begin
  cdsDuplicataNGR.AsString := 'N';
  cdsDuplicataAPROVADO.AsString := 'S';
end;

end.
