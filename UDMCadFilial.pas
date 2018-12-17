unit UDMCadFilial;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadFilial = class(TDataModule)
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    sdsFilialID: TIntegerField;
    sdsFilialNOME: TStringField;
    sdsFilialNOME_INTERNO: TStringField;
    sdsFilialENDERECO: TStringField;
    sdsFilialCOMPLEMENTO_END: TStringField;
    sdsFilialNUM_END: TStringField;
    sdsFilialBAIRRO: TStringField;
    sdsFilialCEP: TStringField;
    sdsFilialID_CIDADE: TIntegerField;
    sdsFilialCIDADE: TStringField;
    sdsFilialUF: TStringField;
    sdsFilialDDD1: TIntegerField;
    sdsFilialFONE1: TStringField;
    sdsFilialDDD2: TIntegerField;
    sdsFilialFONE: TStringField;
    sdsFilialDDDFAX: TIntegerField;
    sdsFilialFAX: TStringField;
    sdsFilialPESSOA: TStringField;
    sdsFilialCNPJ_CPF: TStringField;
    sdsFilialINSCR_EST: TStringField;
    sdsFilialSIMPLES: TStringField;
    sdsFilialENDLOGO: TStringField;
    sdsFilialCALCULAR_IPI: TStringField;
    sdsFilialINATIVO: TStringField;
    sdsFilialINSCMUNICIPAL: TStringField;
    sdsFilialCNAE: TStringField;
    sdsFilialHOMEPAGE: TStringField;
    sdsFilialID_REGIME_TRIB: TIntegerField;
    sdsFilialID_PIS: TIntegerField;
    sdsFilialID_COFINS: TIntegerField;
    sdsFilialTIPO_PIS: TStringField;
    sdsFilialTIPO_COFINS: TStringField;
    sdsFilialPERC_PIS: TFloatField;
    sdsFilialPERC_COFINS: TFloatField;
    sdsFilialID_CSTICMS: TIntegerField;
    sdsFilialID_CSTIPI: TIntegerField;
    sdsFilialEMAIL_NFE: TStringField;
    sdsFilialDTESTOQUE: TDateField;
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
    sdsCidade: TSQLDataSet;
    dspCidade: TDataSetProvider;
    cdsCidade: TClientDataSet;
    dsCidade: TDataSource;
    cdsCidadeID: TIntegerField;
    cdsCidadeNOME: TStringField;
    sdsTab_Pis: TSQLDataSet;
    dspTab_Pis: TDataSetProvider;
    cdsTab_Pis: TClientDataSet;
    cdsTab_PisID: TIntegerField;
    cdsTab_PisCODIGO: TStringField;
    cdsTab_PisNOME: TStringField;
    dsTab_Pis: TDataSource;
    sdsTab_Cofins: TSQLDataSet;
    dspTab_Cofins: TDataSetProvider;
    cdsTab_Cofins: TClientDataSet;
    cdsTab_CofinsID: TIntegerField;
    cdsTab_CofinsCODIGO: TStringField;
    cdsTab_CofinsNOME: TStringField;
    dsTab_Cofins: TDataSource;
    sdsTab_CSTICMS: TSQLDataSet;
    dspTab_CSTICMS: TDataSetProvider;
    cdsTab_CSTICMS: TClientDataSet;
    cdsTab_CSTICMSID: TIntegerField;
    cdsTab_CSTICMSPERCENTUAL: TFloatField;
    cdsTab_CSTICMSHISTORICO: TMemoField;
    cdsTab_CSTICMSTIPO: TStringField;
    cdsTab_CSTICMSNOME: TStringField;
    cdsTab_CSTICMSCOD_CST: TStringField;
    dsTab_CSTICMS: TDataSource;
    sdsTab_CSTIPI: TSQLDataSet;
    dspTab_CSTIPI: TDataSetProvider;
    cdsTab_CSTIPI: TClientDataSet;
    cdsTab_CSTIPIID: TIntegerField;
    cdsTab_CSTIPICOD_IPI: TStringField;
    cdsTab_CSTIPINOME: TStringField;
    cdsTab_CSTIPIGERAR_IPI: TStringField;
    dsTab_CSTIPI: TDataSource;
    sdsRegimeTrib: TSQLDataSet;
    dspRegimeTrib: TDataSetProvider;
    cdsRegimeTrib: TClientDataSet;
    dsRegimeTrib: TDataSource;
    cdsRegimeTribID: TIntegerField;
    cdsRegimeTribNOME: TStringField;
    sdsUF: TSQLDataSet;
    dspUF: TDataSetProvider;
    cdsUF: TClientDataSet;
    dsUF: TDataSource;
    cdsUFUF: TStringField;
    cdsUFPERC_ICMS: TFloatField;
    cdsUFIDPAIS: TIntegerField;
    cdsUFCODUF: TStringField;
    cdsUFPERC_ICMS_INTERNO: TFloatField;
    cdsCidadeUF: TStringField;
    cdsRegimeTribCODIGO: TIntegerField;
    sdsFilialPRINCIPAL: TStringField;
    cdsFilialPRINCIPAL: TStringField;
    sdsFilialLIBERADO_ATE: TStringField;
    sdsFilialULTIMO_ACESSO: TStringField;
    sdsFilialUSARICMSSIMPLES: TStringField;
    cdsFilialLIBERADO_ATE: TStringField;
    cdsFilialULTIMO_ACESSO: TStringField;
    cdsFilialUSARICMSSIMPLES: TStringField;
    sdsFilialSERIENORMAL: TStringField;
    cdsFilialSERIENORMAL: TStringField;
    sdsRegimeTrib_NFSe: TSQLDataSet;
    dspRegimeTrib_NFSe: TDataSetProvider;
    cdsRegimeTrib_NFSe: TClientDataSet;
    dsRegimeTrib_NFSe: TDataSource;
    cdsRegimeTrib_NFSeID: TIntegerField;
    cdsRegimeTrib_NFSeCODIGO: TIntegerField;
    cdsRegimeTrib_NFSeNOME: TStringField;
    cdsRegimeTrib_NFSeTIPO: TStringField;
    sdsFilialID_REGIME_TRIB_NFSE: TIntegerField;
    cdsFilialID_REGIME_TRIB_NFSE: TIntegerField;
    sdsFilialINCENTIVO_CULTURAL: TStringField;
    cdsFilialINCENTIVO_CULTURAL: TStringField;
    sdsFilialSERIE_NFSE: TStringField;
    cdsFilialSERIE_NFSE: TStringField;
    sdsFilialID_NATUREZA: TIntegerField;
    cdsFilialID_NATUREZA: TIntegerField;
    sdsNatureza: TSQLDataSet;
    dspNatureza: TDataSetProvider;
    cdsNatureza: TClientDataSet;
    cdsNaturezaID: TIntegerField;
    cdsNaturezaID_PROVEDOR: TIntegerField;
    cdsNaturezaCODIGO: TStringField;
    cdsNaturezaNOME: TStringField;
    dsNatureza: TDataSource;
    sdsFilialID_SERVICO_SINT: TIntegerField;
    sdsFilialID_SERVICO_PAD: TIntegerField;
    cdsFilialID_SERVICO_SINT: TIntegerField;
    cdsFilialID_SERVICO_PAD: TIntegerField;
    sdsServico_Sint: TSQLDataSet;
    dspServico_Sint: TDataSetProvider;
    cdsServico_Sint: TClientDataSet;
    dsServico_Sint: TDataSource;
    cdsServico_SintID: TIntegerField;
    cdsServico_SintCODIGO: TStringField;
    cdsServico_SintNOME: TStringField;
    cdsServico_SintTIPO_AS: TStringField;
    sdsServico_Pad: TSQLDataSet;
    dspServico_Pad: TDataSetProvider;
    cdsServico_Pad: TClientDataSet;
    dsServico_Pad: TDataSource;
    cdsServico_PadID: TIntegerField;
    cdsServico_PadCODIGO: TStringField;
    cdsServico_PadNOME: TStringField;
    cdsServico_PadTIPO_AS: TStringField;
    cdsServico_SintNOME_SERVICO: TStringField;
    cdsServico_PadNOME_SERVICO: TStringField;
    sdsFilialPERC_IR: TFloatField;
    sdsFilialVLR_IR_MINIMO: TFloatField;
    sdsFilialPERC_ISS: TFloatField;
    cdsFilialPERC_IR: TFloatField;
    cdsFilialVLR_IR_MINIMO: TFloatField;
    cdsFilialPERC_ISS: TFloatField;
    sdsFilialCOD_TRIBUTACAO_MUNICIPIO: TStringField;
    cdsFilialCOD_TRIBUTACAO_MUNICIPIO: TStringField;
    sdsFilialNUMLOTE: TIntegerField;
    cdsFilialNUMLOTE: TIntegerField;
    sdsFilialENDLOGO_NFSE: TStringField;
    cdsFilialENDLOGO_NFSE: TStringField;
    sdsFilialPERC_CSLL: TFloatField;
    cdsFilialPERC_CSLL: TFloatField;
    cdsCidadeID_PROVEDOR: TIntegerField;
    cdsCidadeTIPO_NATUREZA: TStringField;
    sdsFilialCNAE_NFSE: TStringField;
    cdsFilialCNAE_NFSE: TStringField;
    sdsAtividade_Cid: TSQLDataSet;
    dspAtividade_Cid: TDataSetProvider;
    cdsAtividade_Cid: TClientDataSet;
    cdsAtividade_CidID: TIntegerField;
    cdsAtividade_CidCODIGO: TStringField;
    cdsAtividade_CidNOME: TStringField;
    dsAtividade_Cid: TDataSource;
    sdsFilialPERC_INSS: TFloatField;
    sdsFilialID_ATIVIDADE_CID: TIntegerField;
    cdsFilialPERC_INSS: TFloatField;
    cdsFilialID_ATIVIDADE_CID: TIntegerField;
    sdsFilialNFSE_HOMOLOGACAO: TStringField;
    cdsFilialNFSE_HOMOLOGACAO: TStringField;
    sdsFilialPERC_CSRF: TFloatField;
    sdsFilialVLR_FATURAMENTO_MES_CSRF: TFloatField;
    cdsFilialPERC_CSRF: TFloatField;
    cdsFilialVLR_FATURAMENTO_MES_CSRF: TFloatField;
    sdsFilialPERC_TRIB_SERV: TFloatField;
    cdsFilialPERC_TRIB_SERV: TFloatField;
    sdsFilialPERC_TRIB_NTS_IND: TFloatField;
    sdsFilialPERC_TRIB_NTS_VEN: TFloatField;
    cdsFilialPERC_TRIB_NTS_IND: TFloatField;
    cdsFilialPERC_TRIB_NTS_VEN: TFloatField;
    sdsFilialPERC_TRIB_NTS_IND_EXP: TFloatField;
    sdsFilialPERC_TRIB_NTS_VEN_EXP: TFloatField;
    cdsFilialPERC_TRIB_NTS_IND_EXP: TFloatField;
    cdsFilialPERC_TRIB_NTS_VEN_EXP: TFloatField;
    sdsFilialPERC_LISTA_CAMEX: TFloatField;
    cdsFilialPERC_LISTA_CAMEX: TFloatField;
    sdsFilialIMPRESSAO_MATRICIAL: TStringField;
    cdsFilialIMPRESSAO_MATRICIAL: TStringField;
    sdsFilialID_CONTABILISTA: TIntegerField;
    sdsFilialINSCR_SUFRAMA: TStringField;
    sdsFilialSPED_PERFIL: TStringField;
    sdsFilialSPED_ATIVIDADE: TStringField;
    cdsFilialID_CONTABILISTA: TIntegerField;
    cdsFilialINSCR_SUFRAMA: TStringField;
    cdsFilialSPED_PERFIL: TStringField;
    cdsFilialSPED_ATIVIDADE: TStringField;
    sdsContabilista: TSQLDataSet;
    dspContabilista: TDataSetProvider;
    cdsContabilista: TClientDataSet;
    dsContabilista: TDataSource;
    cdsContabilistaID: TIntegerField;
    cdsContabilistaNOME: TStringField;
    cdsContabilistaCPF: TStringField;
    cdsContabilistaCRC: TStringField;
    cdsContabilistaCNPJ: TStringField;
    cdsContabilistaID_CIDADE: TIntegerField;
    cdsContabilistaCEP: TStringField;
    cdsContabilistaENDERECO: TStringField;
    cdsContabilistaNUM_END: TStringField;
    cdsContabilistaCOMPLEMENTO_END: TStringField;
    cdsContabilistaBAIRRO: TStringField;
    cdsContabilistaCIDADE: TStringField;
    cdsContabilistaUF: TStringField;
    cdsContabilistaDDD_FONE: TStringField;
    cdsContabilistaFONE: TStringField;
    cdsContabilistaDDD_FAX: TStringField;
    cdsContabilistaFAX: TStringField;
    cdsContabilistaEMAIL: TStringField;
    sdsFilialEMAIL: TStringField;
    cdsFilialEMAIL: TStringField;
    dsmFilial: TDataSource;
    sdsFilialRelatorios: TSQLDataSet;
    cdsFilialRelatorios: TClientDataSet;
    dsFilialRelatorios: TDataSource;
    cdsFilialsdsFilialRelatorios: TDataSetField;
    sdsFilialRelatoriosID: TIntegerField;
    sdsFilialRelatoriosITEM: TIntegerField;
    sdsFilialRelatoriosTIPO: TSmallintField;
    sdsFilialRelatoriosCAMINHO: TStringField;
    cdsFilialRelatoriosID: TIntegerField;
    cdsFilialRelatoriosITEM: TIntegerField;
    cdsFilialRelatoriosTIPO: TSmallintField;
    cdsFilialRelatoriosCAMINHO: TStringField;
    sdsFilial_Email: TSQLDataSet;
    sdsFilial_EmailID: TIntegerField;
    sdsFilial_EmailITEM: TIntegerField;
    sdsFilial_EmailTIPO_REG: TSmallintField;
    sdsFilial_EmailID_CONFIG_EMAIL: TIntegerField;
    cdsFilial_Email: TClientDataSet;
    cdsFilialsdsFilial_Email: TDataSetField;
    cdsFilial_EmailID: TIntegerField;
    cdsFilial_EmailITEM: TIntegerField;
    cdsFilial_EmailTIPO_REG: TSmallintField;
    cdsFilial_EmailID_CONFIG_EMAIL: TIntegerField;
    dsFilial_Email: TDataSource;
    cdsFilial_EmailNOME_CONFIG_EMAIL: TStringField;
    qConfig_Email: TSQLQuery;
    qConfig_EmailNOME_CONFIG: TStringField;
    sdsConfig_Email: TSQLDataSet;
    dspConfig_Email: TDataSetProvider;
    cdsConfig_Email: TClientDataSet;
    dsConfig_Email: TDataSource;
    cdsConfig_EmailID: TIntegerField;
    cdsConfig_EmailNOME_CONFIG: TStringField;
    cdsFilial_EmailNOME_TIPO_REG: TStringField;
    cdsFilial_EmailEMAIL: TStringField;
    qConfig_EmailREMETENTE_EMAIL: TStringField;
    sdsFilial_Download: TSQLDataSet;
    cdsFilial_Download: TClientDataSet;
    dsFilial_Download: TDataSource;
    sdsFilial_DownloadID: TIntegerField;
    sdsFilial_DownloadITEM: TIntegerField;
    sdsFilial_DownloadPESSOA: TStringField;
    sdsFilial_DownloadCNPJ_CPF: TStringField;
    cdsFilialsdsFilial_Download: TDataSetField;
    cdsFilial_DownloadID: TIntegerField;
    cdsFilial_DownloadITEM: TIntegerField;
    cdsFilial_DownloadPESSOA: TStringField;
    cdsFilial_DownloadCNPJ_CPF: TStringField;
    cdsFilial_DownloadclCNPJ_CPF: TStringField;
    sdsConfig_NFe: TSQLDataSet;
    dspConfig_NFe: TDataSetProvider;
    cdsConfig_NFe: TClientDataSet;
    dsConfig_NFe: TDataSource;
    sdsConfig_NFeCNPJ_TITULAR: TStringField;
    sdsConfig_NFeCHAVE_ACESSO: TMemoField;
    sdsConfig_NFeVALIDADE_INICIO: TSQLTimeStampField;
    sdsConfig_NFeVALIDADE_FIM: TSQLTimeStampField;
    sdsConfig_NFeID: TIntegerField;
    sdsConfig_NFeID_CERTIFICADO: TIntegerField;
    sdsConfig_NFeAMBIENTE: TIntegerField;
    sdsConfig_NFeCONTINGENCIA: TStringField;
    sdsConfig_NFeLICENCA: TStringField;
    sdsConfig_NFeTEMPO_ESPERA: TIntegerField;
    sdsConfig_NFeUF: TStringField;
    sdsConfig_NFeWEBSERVICE: TStringField;
    sdsConfig_NFeDANFE_DADOS_EMISSOR: TStringField;
    sdsConfig_NFeDANFE_QUADRO_RECIBO: TStringField;
    sdsConfig_NFeDANFE_QUADRO_FATURA: TStringField;
    sdsConfig_NFeDANFE_QUADRO_ISSQN: TStringField;
    sdsConfig_NFeDANFE_SEPARADOR_ITEM: TStringField;
    sdsConfig_NFeDANFE_CONF_PDF: TMemoField;
    sdsConfig_NFeDANFE_QTRIBDEC: TIntegerField;
    sdsConfig_NFeDANFE_RODAPE: TStringField;
    sdsConfig_NFeDANFE_SEM_COLUNA_DESCONTO: TStringField;
    sdsConfig_NFeDANFE_COM_FATURA: TStringField;
    sdsConfig_NFeDANFE_SEM_DADOS_EMITENTE: TStringField;
    sdsConfig_NFeDANFE_SEM_QUADRO_EMITENTE: TStringField;
    sdsConfig_NFeDANFE_SALTAR_LINHA: TStringField;
    sdsConfig_NFeDANFE_CARACTER_SALTAR_LINHA: TStringField;
    sdsConfig_NFeDANFE_MOSTRAR_ST: TStringField;
    sdsConfig_NFeDANFE_OMITIR_RESER_AO_FISCO: TStringField;
    sdsConfig_NFeDANFE_IMP_COLUNA_TRIB_SEM_INF: TStringField;
    sdsConfig_NFeDANFE_NAO_GERAR_ZEROS_ICMS: TStringField;
    sdsConfig_NFeDANFE_NAO_GERAR_ZEROS_IPI: TStringField;
    sdsConfig_NFeDANFE_NAO_GERAR_DADOS_ENTREGA: TStringField;
    sdsConfig_NFeDANFE_NAO_GERAR_DADOS_RETIRADA: TStringField;
    sdsConfig_NFeDANFE_MOSTRAR_FCI: TStringField;
    cdsConfig_NFeCNPJ_TITULAR: TStringField;
    cdsConfig_NFeCHAVE_ACESSO: TMemoField;
    cdsConfig_NFeVALIDADE_INICIO: TSQLTimeStampField;
    cdsConfig_NFeVALIDADE_FIM: TSQLTimeStampField;
    cdsConfig_NFeID: TIntegerField;
    cdsConfig_NFeID_CERTIFICADO: TIntegerField;
    cdsConfig_NFeAMBIENTE: TIntegerField;
    cdsConfig_NFeCONTINGENCIA: TStringField;
    cdsConfig_NFeLICENCA: TStringField;
    cdsConfig_NFeTEMPO_ESPERA: TIntegerField;
    cdsConfig_NFeUF: TStringField;
    cdsConfig_NFeWEBSERVICE: TStringField;
    cdsConfig_NFeDANFE_DADOS_EMISSOR: TStringField;
    cdsConfig_NFeDANFE_QUADRO_RECIBO: TStringField;
    cdsConfig_NFeDANFE_QUADRO_FATURA: TStringField;
    cdsConfig_NFeDANFE_QUADRO_ISSQN: TStringField;
    cdsConfig_NFeDANFE_SEPARADOR_ITEM: TStringField;
    cdsConfig_NFeDANFE_CONF_PDF: TMemoField;
    cdsConfig_NFeDANFE_QTRIBDEC: TIntegerField;
    cdsConfig_NFeDANFE_RODAPE: TStringField;
    cdsConfig_NFeDANFE_SEM_COLUNA_DESCONTO: TStringField;
    cdsConfig_NFeDANFE_COM_FATURA: TStringField;
    cdsConfig_NFeDANFE_SEM_DADOS_EMITENTE: TStringField;
    cdsConfig_NFeDANFE_SEM_QUADRO_EMITENTE: TStringField;
    cdsConfig_NFeDANFE_SALTAR_LINHA: TStringField;
    cdsConfig_NFeDANFE_CARACTER_SALTAR_LINHA: TStringField;
    cdsConfig_NFeDANFE_MOSTRAR_ST: TStringField;
    cdsConfig_NFeDANFE_OMITIR_RESER_AO_FISCO: TStringField;
    cdsConfig_NFeDANFE_IMP_COLUNA_TRIB_SEM_INF: TStringField;
    cdsConfig_NFeDANFE_NAO_GERAR_ZEROS_ICMS: TStringField;
    cdsConfig_NFeDANFE_NAO_GERAR_ZEROS_IPI: TStringField;
    cdsConfig_NFeDANFE_NAO_GERAR_DADOS_ENTREGA: TStringField;
    cdsConfig_NFeDANFE_NAO_GERAR_DADOS_RETIRADA: TStringField;
    cdsConfig_NFeDANFE_MOSTRAR_FCI: TStringField;
    sdsConfig_NFeDANFE_ALTQUADRORECIBO: TIntegerField;
    cdsConfig_NFeDANFE_ALTQUADRORECIBO: TIntegerField;
    sdsFilialRelatoriosPOSICAO: TSmallintField;
    cdsFilialRelatoriosPOSICAO: TSmallintField;
    sdsFILIAL_CBarra: TSQLDataSet;
    cdsFILIAL_CBarra: TClientDataSet;
    dsFILIAL_CBarra: TDataSource;
    sdsFILIAL_CBarraID: TIntegerField;
    sdsFILIAL_CBarraITEM: TIntegerField;
    sdsFILIAL_CBarraCOD_BARRA: TStringField;
    sdsFILIAL_CBarraULT_SEQUENCIA: TIntegerField;
    sdsFILIAL_CBarraMAX_SEQUENCIA: TIntegerField;
    cdsFilialsdsFILIAL_CBarra: TDataSetField;
    cdsFILIAL_CBarraID: TIntegerField;
    cdsFILIAL_CBarraITEM: TIntegerField;
    cdsFILIAL_CBarraCOD_BARRA: TStringField;
    cdsFILIAL_CBarraULT_SEQUENCIA: TIntegerField;
    cdsFILIAL_CBarraMAX_SEQUENCIA: TIntegerField;
    qParametros: TSQLQuery;
    qParametrosUSA_COD_BARRAS: TStringField;
    qParametrosUSA_COD_BARRAS_PROPRIO: TStringField;
    sdsFILIAL_CBarraENCERRADO: TStringField;
    cdsFILIAL_CBarraENCERRADO: TStringField;
    sdsFilialID_CFOP_NFCE_PADRAO: TIntegerField;
    sdsFilialUSA_NFCE: TStringField;
    cdsFilialID_CFOP_NFCE_PADRAO: TIntegerField;
    cdsFilialUSA_NFCE: TStringField;
    sdsCFOP: TSQLDataSet;
    dspCFOP: TDataSetProvider;
    cdsCFOP: TClientDataSet;
    dsCFOP: TDataSource;
    cdsCFOPID: TIntegerField;
    cdsCFOPCODCFOP: TStringField;
    cdsCFOPNOME: TStringField;
    cdsCFOPNOME_INTERNO: TStringField;
    sdsFilialNFCEPRODUCAO: TStringField;
    cdsFilialNFCEPRODUCAO: TStringField;
    sdsFilialSERIE_NFCE: TStringField;
    cdsFilialSERIE_NFCE: TStringField;
    sdsFilialVLR_CSRF_MINIMO: TFloatField;
    cdsFilialVLR_CSRF_MINIMO: TFloatField;
    sdsFilial_NFCe: TSQLDataSet;
    cdsFilial_NFCe: TClientDataSet;
    dsFilial_NFCe: TDataSource;
    cdsFilialsdsFilial_NFCe: TDataSetField;
    cdsFilial_NFCeID: TIntegerField;
    cdsFilial_NFCeCSC: TStringField;
    cdsFilial_NFCeCLDTOKEN: TStringField;
    sdsFilial_NFCeID: TIntegerField;
    sdsFilial_NFCeCSC: TStringField;
    sdsFilial_NFCeCLDTOKEN: TStringField;
    sdsFilialID_ENQIPI: TIntegerField;
    cdsFilialID_ENQIPI: TIntegerField;
    sdsEnqIPI: TSQLDataSet;
    dspEnqIPI: TDataSetProvider;
    cdsEnqIPI: TClientDataSet;
    cdsEnqIPIID: TIntegerField;
    cdsEnqIPICODIGO: TStringField;
    cdsEnqIPITIPO: TStringField;
    cdsEnqIPIDESCRICAO: TStringField;
    dsEnqIPI: TDataSource;
    sdsFilialCALCULAR_DIFAL: TStringField;
    cdsFilialCALCULAR_DIFAL: TStringField;
    sdsFilialNUM_PEDIDO_ULT: TIntegerField;
    sdsFilialNUM_ORCAMENTO_ULT: TIntegerField;
    sdsFilialNUM_OC_ULT: TIntegerField;
    cdsFilialNUM_PEDIDO_ULT: TIntegerField;
    cdsFilialNUM_ORCAMENTO_ULT: TIntegerField;
    cdsFilialNUM_OC_ULT: TIntegerField;
    sdsFilialEMAIL_FINANCEIRO: TStringField;
    cdsFilialEMAIL_FINANCEIRO: TStringField;
    sdsFilialENDLOGO_ROTULO: TStringField;
    cdsFilialENDLOGO_ROTULO: TStringField;
    cdsFilialRelatoriosclDescricao_Tipo: TStringField;
    sdsFilialLOCALSERVIDORNFE: TStringField;
    cdsFilialLOCALSERVIDORNFE: TStringField;
    sdsFilialUSA_CUPOM: TStringField;
    cdsFilialUSA_CUPOM: TStringField;
    qParametros_Geral: TSQLQuery;
    qParametros_GeralMOSTRAR_COD_CONTABIL: TStringField;
    sdsFilial_Contabil: TSQLDataSet;
    cdsFilial_Contabil: TClientDataSet;
    dsFilial_Contabil: TDataSource;
    sdsFilial_ContabilID: TIntegerField;
    sdsFilial_ContabilCOD_CONTABIL_JUROS_PAGOS: TIntegerField;
    sdsFilial_ContabilCOD_CONTABIL_JUROS_REC: TIntegerField;
    sdsFilial_ContabilNUM_SEQ_LOTE_INTEGRACAO: TIntegerField;
    sdsFilial_ContabilID_CONTABIL_OPE_BAIXA_CRE: TIntegerField;
    sdsFilial_ContabilID_CONTABIL_OPE_BAIXA_CPA: TIntegerField;
    cdsFilialsdsFilial_Contabil: TDataSetField;
    cdsFilial_ContabilID: TIntegerField;
    cdsFilial_ContabilCOD_CONTABIL_JUROS_PAGOS: TIntegerField;
    cdsFilial_ContabilCOD_CONTABIL_JUROS_REC: TIntegerField;
    cdsFilial_ContabilNUM_SEQ_LOTE_INTEGRACAO: TIntegerField;
    cdsFilial_ContabilID_CONTABIL_OPE_BAIXA_CRE: TIntegerField;
    cdsFilial_ContabilID_CONTABIL_OPE_BAIXA_CPA: TIntegerField;
    sdsContabil_Ope: TSQLDataSet;
    dspContabil_Ope: TDataSetProvider;
    cdsContabil_Ope: TClientDataSet;
    dsContabil_Ope: TDataSource;
    cdsContabil_OpeID: TIntegerField;
    cdsContabil_OpeNOME: TStringField;
    sdsFilial_ContabilCOD_CONTABIL_DESC_CRE: TIntegerField;
    sdsFilial_ContabilCOD_CONTABIL_DESC_CPA: TIntegerField;
    sdsFilial_ContabilCOD_CONTABIL_MULTA_CRE: TIntegerField;
    sdsFilial_ContabilCOD_CONTABIL_MULTA_CPA: TIntegerField;
    cdsFilial_ContabilCOD_CONTABIL_DESC_CRE: TIntegerField;
    cdsFilial_ContabilCOD_CONTABIL_DESC_CPA: TIntegerField;
    cdsFilial_ContabilCOD_CONTABIL_MULTA_CRE: TIntegerField;
    cdsFilial_ContabilCOD_CONTABIL_MULTA_CPA: TIntegerField;
    sdsFilialDIFAL_GERAR_VALORES: TStringField;
    cdsFilialDIFAL_GERAR_VALORES: TStringField;
    sdsFilialOBS_DIFAL: TStringField;
    cdsFilialOBS_DIFAL: TStringField;
    sdsFilialINCENTIVO_FISCAL: TStringField;
    cdsFilialINCENTIVO_FISCAL: TStringField;
    sdsFilial_MDFe: TSQLDataSet;
    cdsFilial_MDFe: TClientDataSet;
    dsFilial_MDFe: TDataSource;
    sdsFilial_MDFeID: TIntegerField;
    sdsFilial_MDFeTIPO_EMITENTE: TStringField;
    sdsFilial_MDFeTIPO_TRANSPORTADOR: TStringField;
    sdsFilial_MDFeTIPO_AMBIENTE: TStringField;
    sdsFilial_MDFeRNTRC: TStringField;
    sdsFilial_MDFeSERIE: TStringField;
    cdsFilialsdsFilial_MDFe: TDataSetField;
    cdsFilial_MDFeID: TIntegerField;
    cdsFilial_MDFeTIPO_EMITENTE: TStringField;
    cdsFilial_MDFeTIPO_TRANSPORTADOR: TStringField;
    cdsFilial_MDFeTIPO_AMBIENTE: TStringField;
    cdsFilial_MDFeRNTRC: TStringField;
    cdsFilial_MDFeSERIE: TStringField;
    sdsFilialNOME_ETIQUETA: TStringField;
    cdsFilialNOME_ETIQUETA: TStringField;
    sdsFilialPERC_ISS_SIMPLES: TFloatField;
    cdsFilialPERC_ISS_SIMPLES: TFloatField;
    sdsFilialLICENCA_FEPAM: TStringField;
    sdsFilialNUM_NOTA_RAMIRO: TIntegerField;
    cdsFilialLICENCA_FEPAM: TStringField;
    cdsFilialNUM_NOTA_RAMIRO: TIntegerField;
    qParametros_GeralUSA_CUSTO: TStringField;
    sdsFilial_Custo: TSQLDataSet;
    cdsFilial_Custo: TClientDataSet;
    dsFilial_Custo: TDataSource;
    cdsFilialsdsFilial_Custo: TDataSetField;
    sdsFilial_CustoID: TIntegerField;
    sdsFilial_CustoPERC_ICMS: TFloatField;
    sdsFilial_CustoPERC_MARK_UP: TFloatField;
    sdsFilial_CustoPERC_COMISSAO: TFloatField;
    sdsFilial_CustoPERC_FRETE: TFloatField;
    sdsFilial_CustoPERC_IR_CONTRSOCIAL: TFloatField;
    sdsFilial_CustoPERC_MARGEM_OPE: TFloatField;
    sdsFilial_CustoPERC_CUSTO_FINANCEIRO: TFloatField;
    sdsFilial_CustoPRAZO_BASE: TIntegerField;
    cdsFilial_CustoID: TIntegerField;
    cdsFilial_CustoPERC_ICMS: TFloatField;
    cdsFilial_CustoPERC_MARK_UP: TFloatField;
    cdsFilial_CustoPERC_COMISSAO: TFloatField;
    cdsFilial_CustoPERC_FRETE: TFloatField;
    cdsFilial_CustoPERC_IR_CONTRSOCIAL: TFloatField;
    cdsFilial_CustoPERC_MARGEM_OPE: TFloatField;
    cdsFilial_CustoPERC_CUSTO_FINANCEIRO: TFloatField;
    cdsFilial_CustoPRAZO_BASE: TIntegerField;
    sdsFilial_CustoPERC_IR_PJ: TFloatField;
    cdsFilial_CustoPERC_IR_PJ: TFloatField;
    sdsFilial_CustoCLIQ_PIS_COFINS: TStringField;
    sdsFilial_CustoCLIQ_ICMS: TStringField;
    sdsFilial_CustoCLIQ_IPI: TStringField;
    sdsFilial_CustoCLIQ_FRETE: TStringField;
    sdsFilial_CustoCLIQ_ST: TStringField;
    cdsFilial_CustoCLIQ_PIS_COFINS: TStringField;
    cdsFilial_CustoCLIQ_ICMS: TStringField;
    cdsFilial_CustoCLIQ_IPI: TStringField;
    cdsFilial_CustoCLIQ_FRETE: TStringField;
    cdsFilial_CustoCLIQ_ST: TStringField;
    qParametros_Ped: TSQLQuery;
    qParametros_PedENVIA_SMS: TStringField;
    sdsFilial_SMS: TSQLDataSet;
    cdsFilial_SMS: TClientDataSet;
    dsFilial_SMS: TDataSource;
    cdsFilialsdsFilial_SMS: TDataSetField;
    sdsFilial_SMSID: TIntegerField;
    sdsFilial_SMSLOGIN: TStringField;
    sdsFilial_SMSSENHA: TStringField;
    sdsFilial_SMSTOKEN: TStringField;
    sdsFilial_SMSFONE_ORIGEM: TStringField;
    cdsFilial_SMSID: TIntegerField;
    cdsFilial_SMSLOGIN: TStringField;
    cdsFilial_SMSSENHA: TStringField;
    cdsFilial_SMSTOKEN: TStringField;
    cdsFilial_SMSFONE_ORIGEM: TStringField;
    sdsFilialIND_NAT_PJ: TSmallintField;
    sdsFilialIND_ATIV_PISCOFINS: TSmallintField;
    cdsFilialIND_NAT_PJ: TSmallintField;
    cdsFilialIND_ATIV_PISCOFINS: TSmallintField;
    sdsFilialFINALIDADE_PADRAO: TStringField;
    cdsFilialFINALIDADE_PADRAO: TStringField;
    qCopiar_Filial_Rel: TSQLQuery;
    sdsFilialSERIE_CPF: TStringField;
    sdsFilialTIPO_EMP: TStringField;
    cdsFilialSERIE_CPF: TStringField;
    cdsFilialTIPO_EMP: TStringField;
    sdsFilialRelatoriosDESCRICAO: TStringField;
    cdsFilialRelatoriosDESCRICAO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsFilialNewRecord(DataSet: TDataSet);
    procedure cdsFilialBeforePost(DataSet: TDataSet);
    procedure dspFilialUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsFilial_EmailCalcFields(DataSet: TDataSet);
    procedure cdsFilial_DownloadCalcFields(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure cdsFILIAL_CBarraBeforeInsert(DataSet: TDataSet);
    procedure cdsFILIAL_CBarraAfterInsert(DataSet: TDataSet);
    procedure cdsFILIAL_CBarraBeforePost(DataSet: TDataSet);
    procedure cdsFILIAL_CBarraFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdsFilialRelatoriosCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    vMsgFilial : String;
    ctCommand : String;
    ctServico_Pad : String;
    vItem_CBarra : Integer;
    vNFeConfig_Achou : Boolean;

    procedure prc_Localizar(ID : Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

    procedure prc_Abrir_Natureza;
    procedure prc_Abrir_Servico_Pad(Codigo : String);
    
  end;

var
  DMCadFilial: TDMCadFilial;

implementation

uses DmdDatabase, DmdDatabase_NFeBD, LogProvider, uUtilPadrao, Variants;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadFilial.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsFilial.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('FILIAL',0);

  cdsFilial.Insert;
  cdsFilialID.AsInteger     := vAux;
  cdsFilialINATIVO.AsString := 'N';
  cdsFilialPESSOA.AsString  := 'J';
end;

procedure TDMCadFilial.prc_Excluir;
begin
  if not(cdsFilial.Active) or (cdsFilial.IsEmpty) then
    exit;
  cdsFilial_Email.First;
  while not cdsFilial_Email.Eof do
    cdsFilial_Email.Delete;
  cdsFilialRelatorios.First;
  while not cdsFilialRelatorios.Eof do
    cdsFilialRelatorios.Delete;
  cdsFilial_Download.First;
  while not cdsFilial_Download.Eof do
    cdsFilial_Download.Delete;
  cdsFILIAL_CBarra.First;
  while not cdsFILIAL_CBarra.Eof do
    cdsFILIAL_CBarra.Delete;
  cdsFilial_Contabil.First;
  if not cdsFilial_Contabil.IsEmpty then
    cdsFilial_Contabil.Delete;
  cdsFilial_SMS.First;
  if not cdsFilial_SMS.IsEmpty then
    cdsFilial_SMS.Delete;
  cdsFilial_MDFe.First;
  if not cdsFilial_MDFe.IsEmpty then
    cdsFilial_MDFe.Delete;
  cdsFilial_Custo.First;
  if not cdsFilial_Custo.IsEmpty then
    cdsFilial_Custo.Delete;
  cdsFilial.Delete;
  cdsFilial.ApplyUpdates(0);
end;

procedure TDMCadFilial.prc_Gravar;
var
  vTipo_Aux : array[1..9] of Integer;
  i : Integer;
begin
  vMsgFilial := '';
  if trim(cdsFilialNOME.AsString) = '' then
    vMsgFilial := '*** Nome não informado!';
  if (trim(cdsFilialCNPJ_CPF.AsString) = '')  then
    vMsgFilial := vMsgFilial + #13 + '*** CNPJ ou CPF não informado!';
  if (trim(cdsFilialSERIENORMAL.AsString) = '')  then
    vMsgFilial := vMsgFilial + #13 + '*** Série normal não informada!';
  //if (trim(cdsFilialINSCMUNICIPAL.AsString) <> '') and (trim(cdsFilialCNAE.AsString) = '') then
  //  vMsgFilial := vMsgFilial + #13 + '*** Falta informar o CNAE (quando a empresa possui Insc. Municipal é obrigatório o CNAE)!';
  if (trim(cdsFilialINSCMUNICIPAL.AsString) = '') and (trim(cdsFilialCNAE.AsString) <> '') then
    vMsgFilial := vMsgFilial + #13 + '*** Falta informar a Insc. Municipal (quando a empresa possui CNAE é obrigatório a Insc. Municipal)!';
  for i := 1 to 9 do
    vTipo_Aux[i] := 0;
  cdsFilial_Email.First;
  while not cdsFilial_Email.Eof do
  begin
    vTipo_Aux[cdsFilial_EmailTIPO_REG.AsInteger] := vTipo_Aux[cdsFilial_EmailTIPO_REG.AsInteger] + 1;
    cdsFilial_Email.Next;
  end;
  for i := 1 to 9 do
  begin
    if vTipo_Aux[i] > 1 then
      vMsgFilial := vMsgFilial + #13 + '*** Existe tipo informado mais de uma vez no cadastro de email!';
  end;
  if vMsgFilial <> '' then
    exit;
  if cdsFilial_Custo.State in [dsEdit,dsInsert] then
    cdsFilial_Custo.Post;
    
  cdsFilial.Post;
  cdsFilial.ApplyUpdates(0);
end;

procedure TDMCadFilial.prc_Localizar(ID: Integer);
begin
  cdsFilial.Close;
  sdsFilial.CommandText := ctCommand;
  if ID <> 0 then
    sdsFilial.CommandText := sdsFilial.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsFilial.Open;
  cdsFilial_NFCe.Close;
  cdsFilial_NFCe.Open;
  cdsFilial_Contabil.Close;
  cdsFilial_Contabil.Open;
  cdsFilial_SMS.Close;
  cdsFilial_SMS.Open;
end;

procedure TDMCadFilial.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand     := sdsFilial.CommandText;
  ctServico_Pad := sdsServico_Pad.CommandText;

  vNFeConfig_Achou := fnc_Verifica_Usa_NFeConfig;
  if vNFeConfig_Achou then
    dmDatabase_NFeBD := TdmDatabase_NFeBD.Create(Self);
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

  cdsCidade.Open;
  cdsTab_Cofins.Open;
  cdsTab_Pis.Open;
  cdsTab_CSTICMS.Open;
  cdsTab_CSTIPI.Open;
  cdsRegimeTrib.Open;
  cdsRegimeTrib_NFSe.Open;
  cdsUF.Open;
  cdsServico_Sint.Open;
  cdsServico_Pad.Open;
  cdsAtividade_Cid.Open;
  cdsContabilista.Open;
  cdsConfig_Email.Open;
  cdsCFOP.Open;
  qParametros.Open;
  cdsEnqIPI.Open;
  qParametros_Geral.Close;
  qParametros_Geral.Open;
  if qParametros_GeralMOSTRAR_COD_CONTABIL.AsString = 'S' then
    cdsContabil_Ope.Open;
  qParametros_Ped.Open;
end;

procedure TDMCadFilial.cdsFilialNewRecord(DataSet: TDataSet);
begin
  cdsFilialINATIVO.AsString             := 'N';
  cdsFilialSERIENORMAL.AsString         := '1';
  cdsFilialIMPRESSAO_MATRICIAL.AsString := 'N';
  cdsFilialCALCULAR_DIFAL.AsString      := 'N';
  cdsFilialDIFAL_GERAR_VALORES.AsString := 'N';
end;

procedure TDMCadFilial.cdsFilialBeforePost(DataSet: TDataSet);
begin
  if cdsRegimeTrib.Locate('ID',cdsFilialID_REGIME_TRIB.AsInteger,[loCaseInsensitive]) then
  begin
    if cdsRegimeTribCODIGO.AsInteger = 2 then
    begin
      cdsFilialSIMPLES.AsString         := '2';
      cdsFilialUSARICMSSIMPLES.AsString := 'N';
    end
    else
    if cdsRegimeTribCODIGO.AsInteger < 3 then
      cdsFilialSIMPLES.AsString := 'S'
    else
    begin
      cdsFilialSIMPLES.AsString         := 'N';
      cdsFilialUSARICMSSIMPLES.AsString := 'N';
    end;
  end;
end;

procedure TDMCadFilial.dspFilialUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadFilial.prc_Abrir_Natureza;
begin
  cdsNatureza.Close;
  if cdsFilialID_CIDADE.AsInteger <= 0 then
    exit;
  if (cdsFilialID_CIDADE.AsInteger > 0) then
    cdsCidade.Locate('ID',cdsFilialID_CIDADE.AsInteger,[loCaseInsensitive]);
  sdsNatureza.CommandText := 'SELECT * FROM NFSE_NATUREZA ';
  if cdsCidadeTIPO_NATUREZA.AsString = 'P' then
    sdsNatureza.CommandText := sdsNatureza.CommandText + ' WHERE ID_PROVEDOR = ' + cdsCidadeID_PROVEDOR.AsString
  else
    sdsNatureza.CommandText := sdsNatureza.CommandText + ' WHERE ID_PROVEDOR is Null';
  cdsNatureza.Open;
end;

procedure TDMCadFilial.prc_Abrir_Servico_Pad(Codigo: String);
begin
  cdsServico_Pad.Close;
  sdsServico_Pad.CommandText := ctServico_Pad;
  if trim(Codigo) <> '' then
    sdsServico_Pad .CommandText := sdsServico_Pad.CommandText + ' AND CODIGO LIKE ' + QuotedStr(Codigo+'.%');
  cdsServico_Pad.Open;
end;

procedure TDMCadFilial.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadFilial.cdsFilial_EmailCalcFields(DataSet: TDataSet);
begin
  if cdsFilial_EmailID_CONFIG_EMAIL.AsInteger > 0 then
  begin
    qConfig_Email.Close;
    qConfig_Email.ParamByName('ID').AsInteger := cdsFilial_EmailID_CONFIG_EMAIL.AsInteger;
    qConfig_Email.Open;
    cdsFilial_EmailNOME_CONFIG_EMAIL.AsString := qConfig_EmailNOME_CONFIG.AsString;
    cdsFilial_EmailEMAIL.AsString             := qConfig_EmailREMETENTE_EMAIL.AsString;
  end
  else
    cdsFilial_EmailNOME_CONFIG_EMAIL.AsString := '';
  case cdsFilial_EmailTIPO_REG.AsInteger of
    1 : cdsFilial_EmailNOME_TIPO_REG.AsString := 'NFe';
    2 : cdsFilial_EmailNOME_TIPO_REG.AsString := 'NFSe';
    3 : cdsFilial_EmailNOME_TIPO_REG.AsString := 'Financeiro';
    4 : cdsFilial_EmailNOME_TIPO_REG.AsString := 'Compras';
    5 : cdsFilial_EmailNOME_TIPO_REG.AsString := 'Orçamento/Pedido';
    6 : cdsFilial_EmailNOME_TIPO_REG.AsString := 'Pedido Conferido';
  end;
end;

procedure TDMCadFilial.cdsFilial_DownloadCalcFields(DataSet: TDataSet);
begin
  cdsFilial_DownloadclCNPJ_CPF.AsString := cdsFilial_DownloadCNPJ_CPF.AsString;
end;

procedure TDMCadFilial.DataModuleDestroy(Sender: TObject);
begin
  if vNFeConfig_Achou then
    FreeAndNil(dmDatabase_NFeBD);
end;

procedure TDMCadFilial.cdsFILIAL_CBarraBeforeInsert(DataSet: TDataSet);
begin
  cdsFILIAL_CBarra.Last;
  vItem_CBarra := cdsFILIAL_CBarraITEM.AsInteger;
end;

procedure TDMCadFilial.cdsFILIAL_CBarraAfterInsert(DataSet: TDataSet);
begin
  cdsFILIAL_CBarraITEM.AsInteger := vItem_CBarra + 1;
  cdsFILIAL_CBarraULT_SEQUENCIA.AsInteger := 0;
end;

procedure TDMCadFilial.cdsFILIAL_CBarraBeforePost(DataSet: TDataSet);
var
  vAux : Integer;
  i, i2 : Integer;
begin
  if cdsFILIAL_CBarraULT_SEQUENCIA.AsInteger <= 0 then
    cdsFILIAL_CBarraULT_SEQUENCIA.AsInteger := 0;
  if trim(cdsFILIAL_CBarraCOD_BARRA.AsString) <> '' then
  begin
    i := Length(cdsFILIAL_CBarraCOD_BARRA.AsString);
    i := 12 - i;
    if cdsFILIAL_CBarraMAX_SEQUENCIA.AsInteger <= 0 then
    begin
      for i2 := 1 to i do
        cdsFILIAL_CBarraMAX_SEQUENCIA.AsString := cdsFILIAL_CBarraMAX_SEQUENCIA.AsString + '9';
    end;
  end;
  if (cdsFILIAL_CBarraENCERRADO.IsNull) or (cdsFILIAL_CBarraENCERRADO.AsString = '') then
    cdsFILIAL_CBarraENCERRADO.AsString := 'N';
end;

procedure TDMCadFilial.cdsFILIAL_CBarraFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  cdsFILIAL_CBarraENCERRADO.AsString := 'N';
end;

procedure TDMCadFilial.cdsFilialRelatoriosCalcFields(DataSet: TDataSet);
begin
  case cdsFilialRelatoriosTIPO.AsInteger of
    1  : cdsFilialRelatoriosclDescricao_Tipo.AsString := 'ORÇAMENTO';
    2  : cdsFilialRelatoriosclDescricao_Tipo.AsString := 'PEDIDO';
    3  : cdsFilialRelatoriosclDescricao_Tipo.AsString := 'ORDEM COMPRA';
    4  : cdsFilialRelatoriosclDescricao_Tipo.AsString := 'ORDEM SERVIÇO';
    5  : cdsFilialRelatoriosclDescricao_Tipo.AsString := 'CONTRATO';
    6  : cdsFilialRelatoriosclDescricao_Tipo.AsString := 'ETIQUETA INDIVIDUAL';
    7  : cdsFilialRelatoriosclDescricao_Tipo.AsString := 'RÓTULO';
    8  : cdsFilialRelatoriosclDescricao_Tipo.AsString := 'NOTA DE SERVIÇO';
    9  : cdsFilialRelatoriosclDescricao_Tipo.AsString := 'RECIBO';
    10 : cdsFilialRelatoriosclDescricao_Tipo.AsString := 'RÓTULO POR GRADE';
    11 : cdsFilialRelatoriosclDescricao_Tipo.AsString := 'RÓTULO NA NOTA (CORRUGADO)';
    12 : cdsFilialRelatoriosclDescricao_Tipo.AsString := 'CONSULTA PEDIDO';
    13 : cdsFilialRelatoriosclDescricao_Tipo.AsString := 'RECIBO NF';
  end;
end;

end.
