object DMCadFilial: TDMCadFilial
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 307
  Top = 20
  Height = 709
  Width = 1045
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FILIAL '#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 32
    object sdsFilialID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsFilialNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object sdsFilialENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object sdsFilialCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object sdsFilialNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object sdsFilialBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sdsFilialCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object sdsFilialID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object sdsFilialCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsFilialUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sdsFilialDDD1: TIntegerField
      FieldName = 'DDD1'
    end
    object sdsFilialFONE1: TStringField
      FieldName = 'FONE1'
      Size = 15
    end
    object sdsFilialDDD2: TIntegerField
      FieldName = 'DDD2'
    end
    object sdsFilialFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object sdsFilialDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object sdsFilialFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object sdsFilialPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object sdsFilialCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object sdsFilialINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object sdsFilialSIMPLES: TStringField
      FieldName = 'SIMPLES'
      FixedChar = True
      Size = 1
    end
    object sdsFilialENDLOGO: TStringField
      FieldName = 'ENDLOGO'
      Size = 250
    end
    object sdsFilialCALCULAR_IPI: TStringField
      FieldName = 'CALCULAR_IPI'
      FixedChar = True
      Size = 1
    end
    object sdsFilialINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsFilialINSCMUNICIPAL: TStringField
      FieldName = 'INSCMUNICIPAL'
      Size = 18
    end
    object sdsFilialCNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object sdsFilialHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 250
    end
    object sdsFilialID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object sdsFilialID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object sdsFilialID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object sdsFilialTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object sdsFilialTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object sdsFilialPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object sdsFilialPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object sdsFilialID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object sdsFilialID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object sdsFilialEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 200
    end
    object sdsFilialDTESTOQUE: TDateField
      FieldName = 'DTESTOQUE'
    end
    object sdsFilialPRINCIPAL: TStringField
      FieldName = 'PRINCIPAL'
      FixedChar = True
      Size = 1
    end
    object sdsFilialLIBERADO_ATE: TStringField
      FieldName = 'LIBERADO_ATE'
      Size = 18
    end
    object sdsFilialULTIMO_ACESSO: TStringField
      FieldName = 'ULTIMO_ACESSO'
      Size = 18
    end
    object sdsFilialUSARICMSSIMPLES: TStringField
      FieldName = 'USARICMSSIMPLES'
      FixedChar = True
      Size = 1
    end
    object sdsFilialSERIENORMAL: TStringField
      FieldName = 'SERIENORMAL'
      Size = 3
    end
    object sdsFilialID_REGIME_TRIB_NFSE: TIntegerField
      FieldName = 'ID_REGIME_TRIB_NFSE'
    end
    object sdsFilialINCENTIVO_CULTURAL: TStringField
      FieldName = 'INCENTIVO_CULTURAL'
      FixedChar = True
      Size = 1
    end
    object sdsFilialSERIE_NFSE: TStringField
      FieldName = 'SERIE_NFSE'
      Size = 5
    end
    object sdsFilialID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
    end
    object sdsFilialID_SERVICO_SINT: TIntegerField
      FieldName = 'ID_SERVICO_SINT'
    end
    object sdsFilialID_SERVICO_PAD: TIntegerField
      FieldName = 'ID_SERVICO_PAD'
    end
    object sdsFilialPERC_IR: TFloatField
      FieldName = 'PERC_IR'
    end
    object sdsFilialVLR_IR_MINIMO: TFloatField
      FieldName = 'VLR_IR_MINIMO'
    end
    object sdsFilialPERC_ISS: TFloatField
      FieldName = 'PERC_ISS'
    end
    object sdsFilialCOD_TRIBUTACAO_MUNICIPIO: TStringField
      FieldName = 'COD_TRIBUTACAO_MUNICIPIO'
    end
    object sdsFilialNUMLOTE: TIntegerField
      FieldName = 'NUMLOTE'
    end
    object sdsFilialENDLOGO_NFSE: TStringField
      FieldName = 'ENDLOGO_NFSE'
      Size = 200
    end
    object sdsFilialPERC_CSLL: TFloatField
      FieldName = 'PERC_CSLL'
    end
    object sdsFilialCNAE_NFSE: TStringField
      FieldName = 'CNAE_NFSE'
      Size = 7
    end
    object sdsFilialPERC_INSS: TFloatField
      FieldName = 'PERC_INSS'
    end
    object sdsFilialID_ATIVIDADE_CID: TIntegerField
      FieldName = 'ID_ATIVIDADE_CID'
    end
    object sdsFilialNFSE_HOMOLOGACAO: TStringField
      FieldName = 'NFSE_HOMOLOGACAO'
      FixedChar = True
      Size = 1
    end
    object sdsFilialPERC_CSRF: TFloatField
      FieldName = 'PERC_CSRF'
    end
    object sdsFilialVLR_FATURAMENTO_MES_CSRF: TFloatField
      FieldName = 'VLR_FATURAMENTO_MES_CSRF'
    end
    object sdsFilialPERC_TRIB_SERV: TFloatField
      FieldName = 'PERC_TRIB_SERV'
    end
    object sdsFilialPERC_TRIB_NTS_IND: TFloatField
      FieldName = 'PERC_TRIB_NTS_IND'
    end
    object sdsFilialPERC_TRIB_NTS_VEN: TFloatField
      FieldName = 'PERC_TRIB_NTS_VEN'
    end
    object sdsFilialPERC_TRIB_NTS_IND_EXP: TFloatField
      FieldName = 'PERC_TRIB_NTS_IND_EXP'
    end
    object sdsFilialPERC_TRIB_NTS_VEN_EXP: TFloatField
      FieldName = 'PERC_TRIB_NTS_VEN_EXP'
    end
    object sdsFilialPERC_LISTA_CAMEX: TFloatField
      FieldName = 'PERC_LISTA_CAMEX'
    end
    object sdsFilialIMPRESSAO_MATRICIAL: TStringField
      FieldName = 'IMPRESSAO_MATRICIAL'
      FixedChar = True
      Size = 1
    end
    object sdsFilialID_CONTABILISTA: TIntegerField
      FieldName = 'ID_CONTABILISTA'
    end
    object sdsFilialINSCR_SUFRAMA: TStringField
      FieldName = 'INSCR_SUFRAMA'
      Size = 10
    end
    object sdsFilialSPED_PERFIL: TStringField
      FieldName = 'SPED_PERFIL'
      FixedChar = True
      Size = 1
    end
    object sdsFilialSPED_ATIVIDADE: TStringField
      FieldName = 'SPED_ATIVIDADE'
      FixedChar = True
      Size = 1
    end
    object sdsFilialEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object sdsFilialID_CFOP_NFCE_PADRAO: TIntegerField
      FieldName = 'ID_CFOP_NFCE_PADRAO'
    end
    object sdsFilialUSA_NFCE: TStringField
      FieldName = 'USA_NFCE'
      FixedChar = True
      Size = 1
    end
    object sdsFilialNFCEPRODUCAO: TStringField
      FieldName = 'NFCEPRODUCAO'
      FixedChar = True
      Size = 1
    end
    object sdsFilialSERIE_NFCE: TStringField
      FieldName = 'SERIE_NFCE'
      Size = 3
    end
    object sdsFilialVLR_CSRF_MINIMO: TFloatField
      FieldName = 'VLR_CSRF_MINIMO'
    end
    object sdsFilialID_ENQIPI: TIntegerField
      FieldName = 'ID_ENQIPI'
    end
    object sdsFilialCALCULAR_DIFAL: TStringField
      FieldName = 'CALCULAR_DIFAL'
      FixedChar = True
      Size = 1
    end
    object sdsFilialNUM_PEDIDO_ULT: TIntegerField
      FieldName = 'NUM_PEDIDO_ULT'
    end
    object sdsFilialNUM_ORCAMENTO_ULT: TIntegerField
      FieldName = 'NUM_ORCAMENTO_ULT'
    end
    object sdsFilialNUM_OC_ULT: TIntegerField
      FieldName = 'NUM_OC_ULT'
    end
    object sdsFilialEMAIL_FINANCEIRO: TStringField
      FieldName = 'EMAIL_FINANCEIRO'
      Size = 200
    end
    object sdsFilialENDLOGO_ROTULO: TStringField
      FieldName = 'ENDLOGO_ROTULO'
      Size = 200
    end
    object sdsFilialLOCALSERVIDORNFE: TStringField
      FieldName = 'LOCALSERVIDORNFE'
      Size = 100
    end
    object sdsFilialUSA_CUPOM: TStringField
      FieldName = 'USA_CUPOM'
      Size = 1
    end
    object sdsFilialDIFAL_GERAR_VALORES: TStringField
      FieldName = 'DIFAL_GERAR_VALORES'
      FixedChar = True
      Size = 1
    end
    object sdsFilialOBS_DIFAL: TStringField
      FieldName = 'OBS_DIFAL'
      Size = 250
    end
    object sdsFilialINCENTIVO_FISCAL: TStringField
      FieldName = 'INCENTIVO_FISCAL'
      FixedChar = True
      Size = 1
    end
    object sdsFilialNOME_ETIQUETA: TStringField
      FieldName = 'NOME_ETIQUETA'
      Size = 15
    end
    object sdsFilialPERC_ISS_SIMPLES: TFloatField
      FieldName = 'PERC_ISS_SIMPLES'
    end
    object sdsFilialLICENCA_FEPAM: TStringField
      FieldName = 'LICENCA_FEPAM'
      Size = 15
    end
    object sdsFilialNUM_NOTA_RAMIRO: TIntegerField
      FieldName = 'NUM_NOTA_RAMIRO'
    end
    object sdsFilialIND_NAT_PJ: TSmallintField
      FieldName = 'IND_NAT_PJ'
    end
    object sdsFilialIND_ATIV_PISCOFINS: TSmallintField
      FieldName = 'IND_ATIV_PISCOFINS'
    end
    object sdsFilialFINALIDADE_PADRAO: TStringField
      FieldName = 'FINALIDADE_PADRAO'
      FixedChar = True
      Size = 1
    end
    object sdsFilialSERIE_CPF: TStringField
      FieldName = 'SERIE_CPF'
      Size = 3
    end
    object sdsFilialTIPO_EMP: TStringField
      FieldName = 'TIPO_EMP'
      FixedChar = True
      Size = 1
    end
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspFilialUpdateError
    Left = 144
    Top = 32
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspFilial'
    BeforePost = cdsFilialBeforePost
    OnNewRecord = cdsFilialNewRecord
    Left = 208
    Top = 32
    object cdsFilialID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsFilialNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object cdsFilialENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsFilialCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsFilialNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object cdsFilialBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsFilialCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsFilialID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsFilialCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsFilialUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsFilialDDD1: TIntegerField
      FieldName = 'DDD1'
    end
    object cdsFilialFONE1: TStringField
      FieldName = 'FONE1'
      Size = 15
    end
    object cdsFilialDDD2: TIntegerField
      FieldName = 'DDD2'
    end
    object cdsFilialFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object cdsFilialDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object cdsFilialFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsFilialPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsFilialCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsFilialINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object cdsFilialSIMPLES: TStringField
      FieldName = 'SIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsFilialENDLOGO: TStringField
      FieldName = 'ENDLOGO'
      Size = 250
    end
    object cdsFilialCALCULAR_IPI: TStringField
      FieldName = 'CALCULAR_IPI'
      FixedChar = True
      Size = 1
    end
    object cdsFilialINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsFilialINSCMUNICIPAL: TStringField
      FieldName = 'INSCMUNICIPAL'
      Size = 18
    end
    object cdsFilialCNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object cdsFilialHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 250
    end
    object cdsFilialID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object cdsFilialID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object cdsFilialID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object cdsFilialTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object cdsFilialTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object cdsFilialPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object cdsFilialPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object cdsFilialID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object cdsFilialID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsFilialEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 200
    end
    object cdsFilialDTESTOQUE: TDateField
      FieldName = 'DTESTOQUE'
    end
    object cdsFilialPRINCIPAL: TStringField
      FieldName = 'PRINCIPAL'
      FixedChar = True
      Size = 1
    end
    object cdsFilialLIBERADO_ATE: TStringField
      FieldName = 'LIBERADO_ATE'
      Size = 18
    end
    object cdsFilialULTIMO_ACESSO: TStringField
      FieldName = 'ULTIMO_ACESSO'
      Size = 18
    end
    object cdsFilialUSARICMSSIMPLES: TStringField
      FieldName = 'USARICMSSIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsFilialSERIENORMAL: TStringField
      FieldName = 'SERIENORMAL'
      Size = 3
    end
    object cdsFilialID_REGIME_TRIB_NFSE: TIntegerField
      FieldName = 'ID_REGIME_TRIB_NFSE'
    end
    object cdsFilialINCENTIVO_CULTURAL: TStringField
      FieldName = 'INCENTIVO_CULTURAL'
      FixedChar = True
      Size = 1
    end
    object cdsFilialSERIE_NFSE: TStringField
      FieldName = 'SERIE_NFSE'
      Size = 5
    end
    object cdsFilialID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
    end
    object cdsFilialID_SERVICO_SINT: TIntegerField
      FieldName = 'ID_SERVICO_SINT'
    end
    object cdsFilialID_SERVICO_PAD: TIntegerField
      FieldName = 'ID_SERVICO_PAD'
    end
    object cdsFilialPERC_IR: TFloatField
      FieldName = 'PERC_IR'
    end
    object cdsFilialVLR_IR_MINIMO: TFloatField
      FieldName = 'VLR_IR_MINIMO'
    end
    object cdsFilialPERC_ISS: TFloatField
      FieldName = 'PERC_ISS'
    end
    object cdsFilialCOD_TRIBUTACAO_MUNICIPIO: TStringField
      FieldName = 'COD_TRIBUTACAO_MUNICIPIO'
    end
    object cdsFilialNUMLOTE: TIntegerField
      FieldName = 'NUMLOTE'
    end
    object cdsFilialENDLOGO_NFSE: TStringField
      FieldName = 'ENDLOGO_NFSE'
      Size = 200
    end
    object cdsFilialPERC_CSLL: TFloatField
      FieldName = 'PERC_CSLL'
    end
    object cdsFilialCNAE_NFSE: TStringField
      FieldName = 'CNAE_NFSE'
      Size = 7
    end
    object cdsFilialPERC_INSS: TFloatField
      FieldName = 'PERC_INSS'
    end
    object cdsFilialID_ATIVIDADE_CID: TIntegerField
      FieldName = 'ID_ATIVIDADE_CID'
    end
    object cdsFilialNFSE_HOMOLOGACAO: TStringField
      FieldName = 'NFSE_HOMOLOGACAO'
      FixedChar = True
      Size = 1
    end
    object cdsFilialPERC_CSRF: TFloatField
      FieldName = 'PERC_CSRF'
    end
    object cdsFilialVLR_FATURAMENTO_MES_CSRF: TFloatField
      FieldName = 'VLR_FATURAMENTO_MES_CSRF'
    end
    object cdsFilialPERC_TRIB_SERV: TFloatField
      FieldName = 'PERC_TRIB_SERV'
    end
    object cdsFilialPERC_TRIB_NTS_IND: TFloatField
      FieldName = 'PERC_TRIB_NTS_IND'
    end
    object cdsFilialPERC_TRIB_NTS_VEN: TFloatField
      FieldName = 'PERC_TRIB_NTS_VEN'
    end
    object cdsFilialPERC_TRIB_NTS_IND_EXP: TFloatField
      FieldName = 'PERC_TRIB_NTS_IND_EXP'
    end
    object cdsFilialPERC_TRIB_NTS_VEN_EXP: TFloatField
      FieldName = 'PERC_TRIB_NTS_VEN_EXP'
    end
    object cdsFilialPERC_LISTA_CAMEX: TFloatField
      FieldName = 'PERC_LISTA_CAMEX'
    end
    object cdsFilialIMPRESSAO_MATRICIAL: TStringField
      FieldName = 'IMPRESSAO_MATRICIAL'
      FixedChar = True
      Size = 1
    end
    object cdsFilialID_CONTABILISTA: TIntegerField
      FieldName = 'ID_CONTABILISTA'
    end
    object cdsFilialINSCR_SUFRAMA: TStringField
      FieldName = 'INSCR_SUFRAMA'
      Size = 10
    end
    object cdsFilialSPED_PERFIL: TStringField
      FieldName = 'SPED_PERFIL'
      FixedChar = True
      Size = 1
    end
    object cdsFilialSPED_ATIVIDADE: TStringField
      FieldName = 'SPED_ATIVIDADE'
      FixedChar = True
      Size = 1
    end
    object cdsFilialEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object cdsFilialsdsFilialRelatorios: TDataSetField
      FieldName = 'sdsFilialRelatorios'
    end
    object cdsFilialsdsFilial_Email: TDataSetField
      FieldName = 'sdsFilial_Email'
    end
    object cdsFilialsdsFilial_Download: TDataSetField
      FieldName = 'sdsFilial_Download'
    end
    object cdsFilialsdsFILIAL_CBarra: TDataSetField
      FieldName = 'sdsFILIAL_CBarra'
    end
    object cdsFilialID_CFOP_NFCE_PADRAO: TIntegerField
      FieldName = 'ID_CFOP_NFCE_PADRAO'
    end
    object cdsFilialUSA_NFCE: TStringField
      FieldName = 'USA_NFCE'
      FixedChar = True
      Size = 1
    end
    object cdsFilialNFCEPRODUCAO: TStringField
      FieldName = 'NFCEPRODUCAO'
      FixedChar = True
      Size = 1
    end
    object cdsFilialSERIE_NFCE: TStringField
      FieldName = 'SERIE_NFCE'
      Size = 3
    end
    object cdsFilialVLR_CSRF_MINIMO: TFloatField
      FieldName = 'VLR_CSRF_MINIMO'
    end
    object cdsFilialsdsFilial_NFCe: TDataSetField
      FieldName = 'sdsFilial_NFCe'
    end
    object cdsFilialID_ENQIPI: TIntegerField
      FieldName = 'ID_ENQIPI'
    end
    object cdsFilialCALCULAR_DIFAL: TStringField
      FieldName = 'CALCULAR_DIFAL'
      FixedChar = True
      Size = 1
    end
    object cdsFilialNUM_PEDIDO_ULT: TIntegerField
      FieldName = 'NUM_PEDIDO_ULT'
    end
    object cdsFilialNUM_ORCAMENTO_ULT: TIntegerField
      FieldName = 'NUM_ORCAMENTO_ULT'
    end
    object cdsFilialNUM_OC_ULT: TIntegerField
      FieldName = 'NUM_OC_ULT'
    end
    object cdsFilialEMAIL_FINANCEIRO: TStringField
      FieldName = 'EMAIL_FINANCEIRO'
      Size = 200
    end
    object cdsFilialENDLOGO_ROTULO: TStringField
      FieldName = 'ENDLOGO_ROTULO'
      Size = 200
    end
    object cdsFilialLOCALSERVIDORNFE: TStringField
      FieldName = 'LOCALSERVIDORNFE'
      Size = 100
    end
    object cdsFilialUSA_CUPOM: TStringField
      FieldName = 'USA_CUPOM'
      Size = 1
    end
    object cdsFilialsdsFilial_Contabil: TDataSetField
      FieldName = 'sdsFilial_Contabil'
    end
    object cdsFilialDIFAL_GERAR_VALORES: TStringField
      FieldName = 'DIFAL_GERAR_VALORES'
      FixedChar = True
      Size = 1
    end
    object cdsFilialOBS_DIFAL: TStringField
      FieldName = 'OBS_DIFAL'
      Size = 250
    end
    object cdsFilialINCENTIVO_FISCAL: TStringField
      FieldName = 'INCENTIVO_FISCAL'
      FixedChar = True
      Size = 1
    end
    object cdsFilialsdsFilial_MDFe: TDataSetField
      FieldName = 'sdsFilial_MDFe'
    end
    object cdsFilialNOME_ETIQUETA: TStringField
      FieldName = 'NOME_ETIQUETA'
      Size = 15
    end
    object cdsFilialPERC_ISS_SIMPLES: TFloatField
      FieldName = 'PERC_ISS_SIMPLES'
    end
    object cdsFilialLICENCA_FEPAM: TStringField
      FieldName = 'LICENCA_FEPAM'
      Size = 15
    end
    object cdsFilialNUM_NOTA_RAMIRO: TIntegerField
      FieldName = 'NUM_NOTA_RAMIRO'
    end
    object cdsFilialsdsFilial_Custo: TDataSetField
      FieldName = 'sdsFilial_Custo'
    end
    object cdsFilialsdsFilial_SMS: TDataSetField
      FieldName = 'sdsFilial_SMS'
    end
    object cdsFilialIND_NAT_PJ: TSmallintField
      FieldName = 'IND_NAT_PJ'
    end
    object cdsFilialIND_ATIV_PISCOFINS: TSmallintField
      FieldName = 'IND_ATIV_PISCOFINS'
    end
    object cdsFilialFINALIDADE_PADRAO: TStringField
      FieldName = 'FINALIDADE_PADRAO'
      FixedChar = True
      Size = 1
    end
    object cdsFilialSERIE_CPF: TStringField
      FieldName = 'SERIE_CPF'
      Size = 3
    end
    object cdsFilialTIPO_EMP: TStringField
      FieldName = 'TIPO_EMP'
      FixedChar = True
      Size = 1
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 272
    Top = 32
  end
  object sdsCidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CID.ID, CID.NOME, CID.UF,  CID.ID_PROVEDOR, PRO.TIPO_NATU' +
      'REZA'#13#10' FROM CIDADE CID'#13#10'LEFT JOIN PROVEDOR PRO'#13#10'ON CID.ID_PROVED' +
      'OR = PRO.ID'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 416
    Top = 266
  end
  object dspCidade: TDataSetProvider
    DataSet = sdsCidade
    Left = 480
    Top = 266
  end
  object cdsCidade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCidade'
    Left = 536
    Top = 266
    object cdsCidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsCidadeID_PROVEDOR: TIntegerField
      FieldName = 'ID_PROVEDOR'
    end
    object cdsCidadeTIPO_NATUREZA: TStringField
      FieldName = 'TIPO_NATUREZA'
      FixedChar = True
      Size = 1
    end
  end
  object dsCidade: TDataSource
    DataSet = cdsCidade
    Left = 592
    Top = 266
  end
  object sdsTab_Pis: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_PIS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 418
    Top = 312
  end
  object dspTab_Pis: TDataSetProvider
    DataSet = sdsTab_Pis
    Left = 482
    Top = 312
  end
  object cdsTab_Pis: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspTab_Pis'
    Left = 538
    Top = 312
    object cdsTab_PisID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_PisCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 2
    end
    object cdsTab_PisNOME: TStringField
      FieldName = 'NOME'
      Size = 150
    end
  end
  object dsTab_Pis: TDataSource
    DataSet = cdsTab_Pis
    Left = 594
    Top = 312
  end
  object sdsTab_Cofins: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_COFINS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 418
    Top = 360
  end
  object dspTab_Cofins: TDataSetProvider
    DataSet = sdsTab_Cofins
    Left = 482
    Top = 360
  end
  object cdsTab_Cofins: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspTab_Cofins'
    Left = 538
    Top = 360
    object cdsTab_CofinsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_CofinsCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 2
    end
    object cdsTab_CofinsNOME: TStringField
      FieldName = 'NOME'
      Size = 150
    end
  end
  object dsTab_Cofins: TDataSource
    DataSet = cdsTab_Cofins
    Left = 594
    Top = 360
  end
  object sdsTab_CSTICMS: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CSTICMS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 416
    Top = 408
  end
  object dspTab_CSTICMS: TDataSetProvider
    DataSet = sdsTab_CSTICMS
    Left = 480
    Top = 408
  end
  object cdsTab_CSTICMS: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COD_CST'
    Params = <>
    ProviderName = 'dspTab_CSTICMS'
    Left = 536
    Top = 408
    object cdsTab_CSTICMSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_CSTICMSPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
    object cdsTab_CSTICMSHISTORICO: TMemoField
      FieldName = 'HISTORICO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsTab_CSTICMSTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsTab_CSTICMSNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object cdsTab_CSTICMSCOD_CST: TStringField
      FieldName = 'COD_CST'
      Size = 3
    end
  end
  object dsTab_CSTICMS: TDataSource
    DataSet = cdsTab_CSTICMS
    Left = 592
    Top = 408
  end
  object sdsTab_CSTIPI: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CSTIPI'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 418
    Top = 460
  end
  object dspTab_CSTIPI: TDataSetProvider
    DataSet = sdsTab_CSTIPI
    Left = 482
    Top = 460
  end
  object cdsTab_CSTIPI: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COD_IPI'
    Params = <>
    ProviderName = 'dspTab_CSTIPI'
    Left = 538
    Top = 460
    object cdsTab_CSTIPIID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_CSTIPICOD_IPI: TStringField
      FieldName = 'COD_IPI'
      Size = 2
    end
    object cdsTab_CSTIPINOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsTab_CSTIPIGERAR_IPI: TStringField
      FieldName = 'GERAR_IPI'
      FixedChar = True
      Size = 1
    end
  end
  object dsTab_CSTIPI: TDataSource
    DataSet = cdsTab_CSTIPI
    Left = 594
    Top = 460
  end
  object sdsRegimeTrib: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM REGIME_TRIB'#13#10'WHERE TIPO = '#39'NFE'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 418
    Top = 508
  end
  object dspRegimeTrib: TDataSetProvider
    DataSet = sdsRegimeTrib
    Left = 482
    Top = 508
  end
  object cdsRegimeTrib: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspRegimeTrib'
    Left = 538
    Top = 508
    object cdsRegimeTribID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsRegimeTribNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsRegimeTribCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
  end
  object dsRegimeTrib: TDataSource
    DataSet = cdsRegimeTrib
    Left = 594
    Top = 508
  end
  object sdsUF: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM UF'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 418
    Top = 558
  end
  object dspUF: TDataSetProvider
    DataSet = sdsUF
    Left = 482
    Top = 558
  end
  object cdsUF: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UF'
    Params = <>
    ProviderName = 'dspUF'
    Left = 538
    Top = 558
    object cdsUFUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
    object cdsUFPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsUFIDPAIS: TIntegerField
      FieldName = 'IDPAIS'
    end
    object cdsUFCODUF: TStringField
      FieldName = 'CODUF'
      Size = 2
    end
    object cdsUFPERC_ICMS_INTERNO: TFloatField
      FieldName = 'PERC_ICMS_INTERNO'
    end
  end
  object dsUF: TDataSource
    DataSet = cdsUF
    Left = 594
    Top = 558
  end
  object sdsRegimeTrib_NFSe: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM REGIME_TRIB'#13#10'WHERE TIPO = '#39'NFSE'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 690
    Top = 278
  end
  object dspRegimeTrib_NFSe: TDataSetProvider
    DataSet = sdsRegimeTrib_NFSe
    Left = 762
    Top = 278
  end
  object cdsRegimeTrib_NFSe: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspRegimeTrib_NFSe'
    Left = 826
    Top = 278
    object cdsRegimeTrib_NFSeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsRegimeTrib_NFSeCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsRegimeTrib_NFSeNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsRegimeTrib_NFSeTIPO: TStringField
      FieldName = 'TIPO'
      Size = 5
    end
  end
  object dsRegimeTrib_NFSe: TDataSource
    DataSet = cdsRegimeTrib_NFSe
    Left = 898
    Top = 278
  end
  object sdsNatureza: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NFSE_NATUREZA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 698
    Top = 356
  end
  object dspNatureza: TDataSetProvider
    DataSet = sdsNatureza
    Left = 730
    Top = 356
  end
  object cdsNatureza: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspNatureza'
    Left = 770
    Top = 356
    object cdsNaturezaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNaturezaID_PROVEDOR: TIntegerField
      FieldName = 'ID_PROVEDOR'
    end
    object cdsNaturezaCODIGO: TStringField
      FieldName = 'CODIGO'
      FixedChar = True
      Size = 1
    end
    object cdsNaturezaNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
  end
  object dsNatureza: TDataSource
    DataSet = cdsNatureza
    Left = 810
    Top = 356
  end
  object sdsServico_Sint: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, CODIGO, NOME, TIPO_AS , CODIGO || '#39'-'#39' || NOME AS NOME' +
      '_SERVICO'#13#10'FROM SERVICO'#13#10'WHERE TIPO_AS = '#39'S'#39#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 706
    Top = 62
  end
  object dspServico_Sint: TDataSetProvider
    DataSet = sdsServico_Sint
    Left = 778
    Top = 62
  end
  object cdsServico_Sint: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspServico_Sint'
    Left = 842
    Top = 62
    object cdsServico_SintID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsServico_SintCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 5
    end
    object cdsServico_SintNOME: TStringField
      FieldName = 'NOME'
      Size = 500
    end
    object cdsServico_SintTIPO_AS: TStringField
      FieldName = 'TIPO_AS'
      FixedChar = True
      Size = 1
    end
    object cdsServico_SintNOME_SERVICO: TStringField
      FieldName = 'NOME_SERVICO'
      Size = 506
    end
  end
  object dsServico_Sint: TDataSource
    DataSet = cdsServico_Sint
    Left = 914
    Top = 62
  end
  object sdsServico_Pad: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, CODIGO, NOME, TIPO_AS , CODIGO || '#39'-'#39' || NOME AS NOME' +
      '_SERVICO'#13#10'FROM SERVICO'#13#10'WHERE TIPO_AS = '#39'A'#39#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 706
    Top = 134
  end
  object dspServico_Pad: TDataSetProvider
    DataSet = sdsServico_Pad
    Left = 778
    Top = 134
  end
  object cdsServico_Pad: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspServico_Pad'
    Left = 842
    Top = 134
    object cdsServico_PadID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsServico_PadCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 5
    end
    object cdsServico_PadNOME: TStringField
      FieldName = 'NOME'
      Size = 500
    end
    object cdsServico_PadTIPO_AS: TStringField
      FieldName = 'TIPO_AS'
      FixedChar = True
      Size = 1
    end
    object cdsServico_PadNOME_SERVICO: TStringField
      FieldName = 'NOME_SERVICO'
      Size = 506
    end
  end
  object dsServico_Pad: TDataSource
    DataSet = cdsServico_Pad
    Left = 914
    Top = 134
  end
  object sdsAtividade_Cid: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM ATIVIDADE_CID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 696
    Top = 216
  end
  object dspAtividade_Cid: TDataSetProvider
    DataSet = sdsAtividade_Cid
    Left = 768
    Top = 216
  end
  object cdsAtividade_Cid: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAtividade_Cid'
    Left = 840
    Top = 216
    object cdsAtividade_CidID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsAtividade_CidCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object cdsAtividade_CidNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dsAtividade_Cid: TDataSource
    DataSet = cdsAtividade_Cid
    Left = 904
    Top = 216
  end
  object sdsContabilista: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CONTABILISTA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 698
    Top = 404
  end
  object dspContabilista: TDataSetProvider
    DataSet = sdsContabilista
    Left = 730
    Top = 404
  end
  object cdsContabilista: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspContabilista'
    Left = 770
    Top = 404
    object cdsContabilistaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsContabilistaNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsContabilistaCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object cdsContabilistaCRC: TStringField
      FieldName = 'CRC'
      Size = 15
    end
    object cdsContabilistaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsContabilistaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsContabilistaCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsContabilistaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsContabilistaNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 10
    end
    object cdsContabilistaCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsContabilistaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object cdsContabilistaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsContabilistaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsContabilistaDDD_FONE: TStringField
      FieldName = 'DDD_FONE'
      Size = 2
    end
    object cdsContabilistaFONE: TStringField
      FieldName = 'FONE'
      Size = 10
    end
    object cdsContabilistaDDD_FAX: TStringField
      FieldName = 'DDD_FAX'
      Size = 2
    end
    object cdsContabilistaFAX: TStringField
      FieldName = 'FAX'
      Size = 10
    end
    object cdsContabilistaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
  end
  object dsContabilista: TDataSource
    DataSet = cdsContabilista
    Left = 810
    Top = 404
  end
  object dsmFilial: TDataSource
    DataSet = sdsFilial
    Left = 320
    Top = 32
  end
  object sdsFilialRelatorios: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT FR.*'#13#10'FROM FILIAL_RELATORIOS FR'#13#10'WHERE ID = :ID'
    DataSource = dsmFilial
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 88
    object sdsFilialRelatoriosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFilialRelatoriosITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFilialRelatoriosTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object sdsFilialRelatoriosCAMINHO: TStringField
      FieldName = 'CAMINHO'
      Size = 150
    end
    object sdsFilialRelatoriosPOSICAO: TSmallintField
      FieldName = 'POSICAO'
    end
    object sdsFilialRelatoriosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
  end
  object cdsFilialRelatorios: TClientDataSet
    Aggregates = <>
    DataSetField = cdsFilialsdsFilialRelatorios
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    OnCalcFields = cdsFilialRelatoriosCalcFields
    Left = 200
    Top = 88
    object cdsFilialRelatoriosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFilialRelatoriosITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFilialRelatoriosTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object cdsFilialRelatoriosCAMINHO: TStringField
      FieldName = 'CAMINHO'
      Size = 150
    end
    object cdsFilialRelatoriosPOSICAO: TSmallintField
      FieldName = 'POSICAO'
    end
    object cdsFilialRelatoriosclDescricao_Tipo: TStringField
      FieldKind = fkCalculated
      FieldName = 'clDescricao_Tipo'
      Size = 30
      Calculated = True
    end
    object cdsFilialRelatoriosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
  end
  object dsFilialRelatorios: TDataSource
    DataSet = cdsFilialRelatorios
    Left = 272
    Top = 88
  end
  object sdsFilial_Email: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FILIAL_EMAIL'#13#10'WHERE ID = :ID'
    DataSource = dsmFilial
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 144
    object sdsFilial_EmailID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFilial_EmailITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFilial_EmailTIPO_REG: TSmallintField
      FieldName = 'TIPO_REG'
    end
    object sdsFilial_EmailID_CONFIG_EMAIL: TIntegerField
      FieldName = 'ID_CONFIG_EMAIL'
    end
  end
  object cdsFilial_Email: TClientDataSet
    Aggregates = <>
    DataSetField = cdsFilialsdsFilial_Email
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    OnCalcFields = cdsFilial_EmailCalcFields
    Left = 192
    Top = 144
    object cdsFilial_EmailID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFilial_EmailITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFilial_EmailTIPO_REG: TSmallintField
      FieldName = 'TIPO_REG'
    end
    object cdsFilial_EmailID_CONFIG_EMAIL: TIntegerField
      FieldName = 'ID_CONFIG_EMAIL'
    end
    object cdsFilial_EmailNOME_CONFIG_EMAIL: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOME_CONFIG_EMAIL'
      Size = 50
      Calculated = True
    end
    object cdsFilial_EmailNOME_TIPO_REG: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOME_TIPO_REG'
      Size = 30
      Calculated = True
    end
    object cdsFilial_EmailEMAIL: TStringField
      FieldKind = fkCalculated
      FieldName = 'EMAIL'
      Size = 200
      Calculated = True
    end
  end
  object dsFilial_Email: TDataSource
    DataSet = cdsFilial_Email
    Left = 272
    Top = 144
  end
  object qConfig_Email: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT NOME_CONFIG, REMETENTE_EMAIL'
      'FROM CONFIG_EMAIL'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 944
    Top = 376
    object qConfig_EmailNOME_CONFIG: TStringField
      FieldName = 'NOME_CONFIG'
      Required = True
      Size = 40
    end
    object qConfig_EmailREMETENTE_EMAIL: TStringField
      FieldName = 'REMETENTE_EMAIL'
      Size = 150
    end
  end
  object sdsConfig_Email: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME_CONFIG'#13#10'FROM CONFIG_EMAIL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 698
    Top = 460
  end
  object dspConfig_Email: TDataSetProvider
    DataSet = sdsConfig_Email
    Left = 730
    Top = 460
  end
  object cdsConfig_Email: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME_CONFIG'
    Params = <>
    ProviderName = 'dspConfig_Email'
    Left = 770
    Top = 460
    object cdsConfig_EmailID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConfig_EmailNOME_CONFIG: TStringField
      FieldName = 'NOME_CONFIG'
      Required = True
      Size = 40
    end
  end
  object dsConfig_Email: TDataSource
    DataSet = cdsConfig_Email
    Left = 810
    Top = 460
  end
  object sdsFilial_Download: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FILIAL_DOWNLOAD'#13#10'WHERE ID = :ID'
    DataSource = dsmFilial
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 192
    object sdsFilial_DownloadID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFilial_DownloadITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFilial_DownloadPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object sdsFilial_DownloadCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
  end
  object cdsFilial_Download: TClientDataSet
    Aggregates = <>
    DataSetField = cdsFilialsdsFilial_Download
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    OnCalcFields = cdsFilial_DownloadCalcFields
    Left = 192
    Top = 192
    object cdsFilial_DownloadID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFilial_DownloadITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFilial_DownloadPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsFilial_DownloadCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsFilial_DownloadclCNPJ_CPF: TStringField
      FieldKind = fkCalculated
      FieldName = 'clCNPJ_CPF'
      Size = 18
      Calculated = True
    end
  end
  object dsFilial_Download: TDataSource
    DataSet = cdsFilial_Download
    Left = 272
    Top = 192
  end
  object sdsConfig_NFe: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CC.CNPJ_TITULAR, CC.chave_acesso, CC.validade_inicio, CC.' +
      'validade_fim, CN.*'#13#10'FROM CONFIG_NFE CN'#13#10'INNER JOIN CONFIG_CERTIF' +
      'ICADOS CC'#13#10'ON CN.ID_CERTIFICADO = CC.ID'#13#10'WHERE CC.CNPJ_TITULAR =' +
      ' :CNPJ_TITULAR'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CNPJ_TITULAR'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase_NFeBD.scoNFeBD
    Left = 720
    Top = 560
    object sdsConfig_NFeCNPJ_TITULAR: TStringField
      FieldName = 'CNPJ_TITULAR'
      ProviderFlags = []
    end
    object sdsConfig_NFeCHAVE_ACESSO: TMemoField
      FieldName = 'CHAVE_ACESSO'
      ProviderFlags = []
      BlobType = ftMemo
      Size = 1
    end
    object sdsConfig_NFeVALIDADE_INICIO: TSQLTimeStampField
      FieldName = 'VALIDADE_INICIO'
      ProviderFlags = []
    end
    object sdsConfig_NFeVALIDADE_FIM: TSQLTimeStampField
      FieldName = 'VALIDADE_FIM'
      ProviderFlags = []
    end
    object sdsConfig_NFeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsConfig_NFeID_CERTIFICADO: TIntegerField
      FieldName = 'ID_CERTIFICADO'
      Required = True
    end
    object sdsConfig_NFeAMBIENTE: TIntegerField
      FieldName = 'AMBIENTE'
    end
    object sdsConfig_NFeCONTINGENCIA: TStringField
      FieldName = 'CONTINGENCIA'
      Size = 10
    end
    object sdsConfig_NFeLICENCA: TStringField
      FieldName = 'LICENCA'
      Size = 128
    end
    object sdsConfig_NFeTEMPO_ESPERA: TIntegerField
      FieldName = 'TEMPO_ESPERA'
    end
    object sdsConfig_NFeUF: TStringField
      FieldName = 'UF'
      Size = 10
    end
    object sdsConfig_NFeWEBSERVICE: TStringField
      FieldName = 'WEBSERVICE'
      Size = 10
    end
    object sdsConfig_NFeDANFE_DADOS_EMISSOR: TStringField
      FieldName = 'DANFE_DADOS_EMISSOR'
      Size = 200
    end
    object sdsConfig_NFeDANFE_QUADRO_RECIBO: TStringField
      FieldName = 'DANFE_QUADRO_RECIBO'
      FixedChar = True
      Size = 1
    end
    object sdsConfig_NFeDANFE_QUADRO_FATURA: TStringField
      FieldName = 'DANFE_QUADRO_FATURA'
      FixedChar = True
      Size = 1
    end
    object sdsConfig_NFeDANFE_QUADRO_ISSQN: TStringField
      FieldName = 'DANFE_QUADRO_ISSQN'
      FixedChar = True
      Size = 1
    end
    object sdsConfig_NFeDANFE_SEPARADOR_ITEM: TStringField
      FieldName = 'DANFE_SEPARADOR_ITEM'
      FixedChar = True
      Size = 1
    end
    object sdsConfig_NFeDANFE_CONF_PDF: TMemoField
      FieldName = 'DANFE_CONF_PDF'
      BlobType = ftMemo
      Size = 1
    end
    object sdsConfig_NFeDANFE_QTRIBDEC: TIntegerField
      FieldName = 'DANFE_QTRIBDEC'
    end
    object sdsConfig_NFeDANFE_RODAPE: TStringField
      FieldName = 'DANFE_RODAPE'
      Size = 50
    end
    object sdsConfig_NFeDANFE_SEM_COLUNA_DESCONTO: TStringField
      FieldName = 'DANFE_SEM_COLUNA_DESCONTO'
      FixedChar = True
      Size = 1
    end
    object sdsConfig_NFeDANFE_COM_FATURA: TStringField
      FieldName = 'DANFE_COM_FATURA'
      FixedChar = True
      Size = 1
    end
    object sdsConfig_NFeDANFE_SEM_DADOS_EMITENTE: TStringField
      FieldName = 'DANFE_SEM_DADOS_EMITENTE'
      FixedChar = True
      Size = 1
    end
    object sdsConfig_NFeDANFE_SEM_QUADRO_EMITENTE: TStringField
      FieldName = 'DANFE_SEM_QUADRO_EMITENTE'
      FixedChar = True
      Size = 1
    end
    object sdsConfig_NFeDANFE_SALTAR_LINHA: TStringField
      FieldName = 'DANFE_SALTAR_LINHA'
      FixedChar = True
      Size = 1
    end
    object sdsConfig_NFeDANFE_CARACTER_SALTAR_LINHA: TStringField
      FieldName = 'DANFE_CARACTER_SALTAR_LINHA'
      FixedChar = True
      Size = 1
    end
    object sdsConfig_NFeDANFE_MOSTRAR_ST: TStringField
      FieldName = 'DANFE_MOSTRAR_ST'
      FixedChar = True
      Size = 1
    end
    object sdsConfig_NFeDANFE_OMITIR_RESER_AO_FISCO: TStringField
      FieldName = 'DANFE_OMITIR_RESER_AO_FISCO'
      FixedChar = True
      Size = 1
    end
    object sdsConfig_NFeDANFE_IMP_COLUNA_TRIB_SEM_INF: TStringField
      FieldName = 'DANFE_IMP_COLUNA_TRIB_SEM_INF'
      FixedChar = True
      Size = 1
    end
    object sdsConfig_NFeDANFE_NAO_GERAR_ZEROS_ICMS: TStringField
      FieldName = 'DANFE_NAO_GERAR_ZEROS_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsConfig_NFeDANFE_NAO_GERAR_ZEROS_IPI: TStringField
      FieldName = 'DANFE_NAO_GERAR_ZEROS_IPI'
      FixedChar = True
      Size = 1
    end
    object sdsConfig_NFeDANFE_NAO_GERAR_DADOS_ENTREGA: TStringField
      FieldName = 'DANFE_NAO_GERAR_DADOS_ENTREGA'
      FixedChar = True
      Size = 1
    end
    object sdsConfig_NFeDANFE_NAO_GERAR_DADOS_RETIRADA: TStringField
      FieldName = 'DANFE_NAO_GERAR_DADOS_RETIRADA'
      FixedChar = True
      Size = 1
    end
    object sdsConfig_NFeDANFE_MOSTRAR_FCI: TStringField
      FieldName = 'DANFE_MOSTRAR_FCI'
      FixedChar = True
      Size = 1
    end
    object sdsConfig_NFeDANFE_ALTQUADRORECIBO: TIntegerField
      FieldName = 'DANFE_ALTQUADRORECIBO'
    end
  end
  object dspConfig_NFe: TDataSetProvider
    DataSet = sdsConfig_NFe
    Left = 792
    Top = 560
  end
  object cdsConfig_NFe: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConfig_NFe'
    Left = 856
    Top = 560
    object cdsConfig_NFeCNPJ_TITULAR: TStringField
      FieldName = 'CNPJ_TITULAR'
      ProviderFlags = []
    end
    object cdsConfig_NFeCHAVE_ACESSO: TMemoField
      FieldName = 'CHAVE_ACESSO'
      ProviderFlags = []
      BlobType = ftMemo
      Size = 1
    end
    object cdsConfig_NFeVALIDADE_INICIO: TSQLTimeStampField
      FieldName = 'VALIDADE_INICIO'
      ProviderFlags = []
    end
    object cdsConfig_NFeVALIDADE_FIM: TSQLTimeStampField
      FieldName = 'VALIDADE_FIM'
      ProviderFlags = []
    end
    object cdsConfig_NFeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConfig_NFeID_CERTIFICADO: TIntegerField
      FieldName = 'ID_CERTIFICADO'
      Required = True
    end
    object cdsConfig_NFeAMBIENTE: TIntegerField
      FieldName = 'AMBIENTE'
    end
    object cdsConfig_NFeCONTINGENCIA: TStringField
      FieldName = 'CONTINGENCIA'
      Size = 10
    end
    object cdsConfig_NFeLICENCA: TStringField
      FieldName = 'LICENCA'
      Size = 128
    end
    object cdsConfig_NFeTEMPO_ESPERA: TIntegerField
      FieldName = 'TEMPO_ESPERA'
    end
    object cdsConfig_NFeUF: TStringField
      FieldName = 'UF'
      Size = 10
    end
    object cdsConfig_NFeWEBSERVICE: TStringField
      FieldName = 'WEBSERVICE'
      Size = 10
    end
    object cdsConfig_NFeDANFE_DADOS_EMISSOR: TStringField
      FieldName = 'DANFE_DADOS_EMISSOR'
      Size = 200
    end
    object cdsConfig_NFeDANFE_QUADRO_RECIBO: TStringField
      FieldName = 'DANFE_QUADRO_RECIBO'
      FixedChar = True
      Size = 1
    end
    object cdsConfig_NFeDANFE_QUADRO_FATURA: TStringField
      FieldName = 'DANFE_QUADRO_FATURA'
      FixedChar = True
      Size = 1
    end
    object cdsConfig_NFeDANFE_QUADRO_ISSQN: TStringField
      FieldName = 'DANFE_QUADRO_ISSQN'
      FixedChar = True
      Size = 1
    end
    object cdsConfig_NFeDANFE_SEPARADOR_ITEM: TStringField
      FieldName = 'DANFE_SEPARADOR_ITEM'
      FixedChar = True
      Size = 1
    end
    object cdsConfig_NFeDANFE_CONF_PDF: TMemoField
      FieldName = 'DANFE_CONF_PDF'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConfig_NFeDANFE_QTRIBDEC: TIntegerField
      FieldName = 'DANFE_QTRIBDEC'
    end
    object cdsConfig_NFeDANFE_RODAPE: TStringField
      FieldName = 'DANFE_RODAPE'
      Size = 50
    end
    object cdsConfig_NFeDANFE_SEM_COLUNA_DESCONTO: TStringField
      FieldName = 'DANFE_SEM_COLUNA_DESCONTO'
      FixedChar = True
      Size = 1
    end
    object cdsConfig_NFeDANFE_COM_FATURA: TStringField
      FieldName = 'DANFE_COM_FATURA'
      FixedChar = True
      Size = 1
    end
    object cdsConfig_NFeDANFE_SEM_DADOS_EMITENTE: TStringField
      FieldName = 'DANFE_SEM_DADOS_EMITENTE'
      FixedChar = True
      Size = 1
    end
    object cdsConfig_NFeDANFE_SEM_QUADRO_EMITENTE: TStringField
      FieldName = 'DANFE_SEM_QUADRO_EMITENTE'
      FixedChar = True
      Size = 1
    end
    object cdsConfig_NFeDANFE_SALTAR_LINHA: TStringField
      FieldName = 'DANFE_SALTAR_LINHA'
      FixedChar = True
      Size = 1
    end
    object cdsConfig_NFeDANFE_CARACTER_SALTAR_LINHA: TStringField
      FieldName = 'DANFE_CARACTER_SALTAR_LINHA'
      FixedChar = True
      Size = 1
    end
    object cdsConfig_NFeDANFE_MOSTRAR_ST: TStringField
      FieldName = 'DANFE_MOSTRAR_ST'
      FixedChar = True
      Size = 1
    end
    object cdsConfig_NFeDANFE_OMITIR_RESER_AO_FISCO: TStringField
      FieldName = 'DANFE_OMITIR_RESER_AO_FISCO'
      FixedChar = True
      Size = 1
    end
    object cdsConfig_NFeDANFE_IMP_COLUNA_TRIB_SEM_INF: TStringField
      FieldName = 'DANFE_IMP_COLUNA_TRIB_SEM_INF'
      FixedChar = True
      Size = 1
    end
    object cdsConfig_NFeDANFE_NAO_GERAR_ZEROS_ICMS: TStringField
      FieldName = 'DANFE_NAO_GERAR_ZEROS_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsConfig_NFeDANFE_NAO_GERAR_ZEROS_IPI: TStringField
      FieldName = 'DANFE_NAO_GERAR_ZEROS_IPI'
      FixedChar = True
      Size = 1
    end
    object cdsConfig_NFeDANFE_NAO_GERAR_DADOS_ENTREGA: TStringField
      FieldName = 'DANFE_NAO_GERAR_DADOS_ENTREGA'
      FixedChar = True
      Size = 1
    end
    object cdsConfig_NFeDANFE_NAO_GERAR_DADOS_RETIRADA: TStringField
      FieldName = 'DANFE_NAO_GERAR_DADOS_RETIRADA'
      FixedChar = True
      Size = 1
    end
    object cdsConfig_NFeDANFE_MOSTRAR_FCI: TStringField
      FieldName = 'DANFE_MOSTRAR_FCI'
      FixedChar = True
      Size = 1
    end
    object cdsConfig_NFeDANFE_ALTQUADRORECIBO: TIntegerField
      FieldName = 'DANFE_ALTQUADRORECIBO'
    end
  end
  object dsConfig_NFe: TDataSource
    DataSet = cdsConfig_NFe
    Left = 928
    Top = 560
  end
  object sdsFILIAL_CBarra: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FILIAL_CBARRA'#13#10'WHERE ID = :ID'
    DataSource = dsmFilial
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 248
    object sdsFILIAL_CBarraID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFILIAL_CBarraITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFILIAL_CBarraCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 9
    end
    object sdsFILIAL_CBarraULT_SEQUENCIA: TIntegerField
      FieldName = 'ULT_SEQUENCIA'
    end
    object sdsFILIAL_CBarraMAX_SEQUENCIA: TIntegerField
      FieldName = 'MAX_SEQUENCIA'
    end
    object sdsFILIAL_CBarraENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsFILIAL_CBarra: TClientDataSet
    Aggregates = <>
    DataSetField = cdsFilialsdsFILIAL_CBarra
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    BeforeInsert = cdsFILIAL_CBarraBeforeInsert
    AfterInsert = cdsFILIAL_CBarraAfterInsert
    BeforePost = cdsFILIAL_CBarraBeforePost
    OnFilterRecord = cdsFILIAL_CBarraFilterRecord
    Left = 192
    Top = 248
    object cdsFILIAL_CBarraID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFILIAL_CBarraITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFILIAL_CBarraCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 9
    end
    object cdsFILIAL_CBarraULT_SEQUENCIA: TIntegerField
      FieldName = 'ULT_SEQUENCIA'
    end
    object cdsFILIAL_CBarraMAX_SEQUENCIA: TIntegerField
      FieldName = 'MAX_SEQUENCIA'
    end
    object cdsFILIAL_CBarraENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      FixedChar = True
      Size = 1
    end
  end
  object dsFILIAL_CBarra: TDataSource
    DataSet = cdsFILIAL_CBarra
    Left = 272
    Top = 248
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT P.usa_cod_barras, P.usa_cod_barras_proprio'
      'FROM PARAMETROS P')
    SQLConnection = dmDatabase.scoDados
    Left = 416
    Top = 200
    object qParametrosUSA_COD_BARRAS: TStringField
      FieldName = 'USA_COD_BARRAS'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_COD_BARRAS_PROPRIO: TStringField
      FieldName = 'USA_COD_BARRAS_PROPRIO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsCFOP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT T.id, T.codcfop, T.nome, T.nome_interno'#13#10'FROM TAB_CFOP T'#13 +
      #10'WHERE T.USA_NFCE = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 169
    Top = 560
  end
  object dspCFOP: TDataSetProvider
    DataSet = sdsCFOP
    Left = 201
    Top = 560
  end
  object cdsCFOP: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODCFOP;NOME'
    Params = <>
    ProviderName = 'dspCFOP'
    Left = 241
    Top = 560
    object cdsCFOPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCFOPCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsCFOPNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsCFOPNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
  end
  object dsCFOP: TDataSource
    DataSet = cdsCFOP
    Left = 281
    Top = 560
  end
  object sdsFilial_NFCe: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FILIAL_NFCE'#13#10'WHERE ID = :ID'
    DataSource = dsmFilial
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 304
    object sdsFilial_NFCeID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFilial_NFCeCSC: TStringField
      FieldName = 'CSC'
      Size = 40
    end
    object sdsFilial_NFCeCLDTOKEN: TStringField
      FieldName = 'CLDTOKEN'
      Size = 6
    end
  end
  object cdsFilial_NFCe: TClientDataSet
    Aggregates = <>
    DataSetField = cdsFilialsdsFilial_NFCe
    IndexFieldNames = 'ID'
    Params = <>
    Left = 192
    Top = 304
    object cdsFilial_NFCeID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFilial_NFCeCSC: TStringField
      FieldName = 'CSC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 40
    end
    object cdsFilial_NFCeCLDTOKEN: TStringField
      FieldName = 'CLDTOKEN'
      Size = 6
    end
  end
  object dsFilial_NFCe: TDataSource
    DataSet = cdsFilial_NFCe
    Left = 272
    Top = 304
  end
  object sdsEnqIPI: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_ENQIPI'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 128
    Top = 608
  end
  object dspEnqIPI: TDataSetProvider
    DataSet = sdsEnqIPI
    Left = 200
    Top = 608
  end
  object cdsEnqIPI: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspEnqIPI'
    Left = 272
    Top = 608
    object cdsEnqIPIID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEnqIPICODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object cdsEnqIPITIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsEnqIPIDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
  end
  object dsEnqIPI: TDataSource
    DataSet = cdsEnqIPI
    Left = 344
    Top = 608
  end
  object qParametros_Geral: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_GERAL'
      'WHERE ID = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 544
    Top = 191
    object qParametros_GeralMOSTRAR_COD_CONTABIL: TStringField
      FieldName = 'MOSTRAR_COD_CONTABIL'
      FixedChar = True
      Size = 1
    end
    object qParametros_GeralUSA_CUSTO: TStringField
      FieldName = 'USA_CUSTO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsFilial_Contabil: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FILIAL_CONTABIL'#13#10'WHERE ID = :ID'
    DataSource = dsmFilial
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 352
    object sdsFilial_ContabilID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFilial_ContabilCOD_CONTABIL_JUROS_PAGOS: TIntegerField
      FieldName = 'COD_CONTABIL_JUROS_PAGOS'
    end
    object sdsFilial_ContabilCOD_CONTABIL_JUROS_REC: TIntegerField
      FieldName = 'COD_CONTABIL_JUROS_REC'
    end
    object sdsFilial_ContabilNUM_SEQ_LOTE_INTEGRACAO: TIntegerField
      FieldName = 'NUM_SEQ_LOTE_INTEGRACAO'
    end
    object sdsFilial_ContabilID_CONTABIL_OPE_BAIXA_CRE: TIntegerField
      FieldName = 'ID_CONTABIL_OPE_BAIXA_CRE'
    end
    object sdsFilial_ContabilID_CONTABIL_OPE_BAIXA_CPA: TIntegerField
      FieldName = 'ID_CONTABIL_OPE_BAIXA_CPA'
    end
    object sdsFilial_ContabilCOD_CONTABIL_DESC_CRE: TIntegerField
      FieldName = 'COD_CONTABIL_DESC_CRE'
    end
    object sdsFilial_ContabilCOD_CONTABIL_DESC_CPA: TIntegerField
      FieldName = 'COD_CONTABIL_DESC_CPA'
    end
    object sdsFilial_ContabilCOD_CONTABIL_MULTA_CRE: TIntegerField
      FieldName = 'COD_CONTABIL_MULTA_CRE'
    end
    object sdsFilial_ContabilCOD_CONTABIL_MULTA_CPA: TIntegerField
      FieldName = 'COD_CONTABIL_MULTA_CPA'
    end
  end
  object cdsFilial_Contabil: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    Left = 192
    Top = 352
    object cdsFilial_ContabilID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFilial_ContabilCOD_CONTABIL_JUROS_PAGOS: TIntegerField
      FieldName = 'COD_CONTABIL_JUROS_PAGOS'
    end
    object cdsFilial_ContabilCOD_CONTABIL_JUROS_REC: TIntegerField
      FieldName = 'COD_CONTABIL_JUROS_REC'
    end
    object cdsFilial_ContabilNUM_SEQ_LOTE_INTEGRACAO: TIntegerField
      FieldName = 'NUM_SEQ_LOTE_INTEGRACAO'
    end
    object cdsFilial_ContabilID_CONTABIL_OPE_BAIXA_CRE: TIntegerField
      FieldName = 'ID_CONTABIL_OPE_BAIXA_CRE'
    end
    object cdsFilial_ContabilID_CONTABIL_OPE_BAIXA_CPA: TIntegerField
      FieldName = 'ID_CONTABIL_OPE_BAIXA_CPA'
    end
    object cdsFilial_ContabilCOD_CONTABIL_DESC_CRE: TIntegerField
      FieldName = 'COD_CONTABIL_DESC_CRE'
    end
    object cdsFilial_ContabilCOD_CONTABIL_DESC_CPA: TIntegerField
      FieldName = 'COD_CONTABIL_DESC_CPA'
    end
    object cdsFilial_ContabilCOD_CONTABIL_MULTA_CRE: TIntegerField
      FieldName = 'COD_CONTABIL_MULTA_CRE'
    end
    object cdsFilial_ContabilCOD_CONTABIL_MULTA_CPA: TIntegerField
      FieldName = 'COD_CONTABIL_MULTA_CPA'
    end
  end
  object dsFilial_Contabil: TDataSource
    DataSet = cdsFilial_Contabil
    Left = 272
    Top = 352
  end
  object sdsContabil_Ope: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CONTABIL_OPE'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 424
    Top = 130
  end
  object dspContabil_Ope: TDataSetProvider
    DataSet = sdsContabil_Ope
    Left = 488
    Top = 130
  end
  object cdsContabil_Ope: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspContabil_Ope'
    Left = 544
    Top = 130
    object cdsContabil_OpeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsContabil_OpeNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dsContabil_Ope: TDataSource
    DataSet = cdsContabil_Ope
    Left = 600
    Top = 130
  end
  object sdsFilial_MDFe: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FILIAL_MDFE'#13#10'WHERE ID = :ID'
    DataSource = dsmFilial
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 400
    object sdsFilial_MDFeID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFilial_MDFeTIPO_EMITENTE: TStringField
      FieldName = 'TIPO_EMITENTE'
      FixedChar = True
      Size = 1
    end
    object sdsFilial_MDFeTIPO_TRANSPORTADOR: TStringField
      FieldName = 'TIPO_TRANSPORTADOR'
      FixedChar = True
      Size = 1
    end
    object sdsFilial_MDFeTIPO_AMBIENTE: TStringField
      FieldName = 'TIPO_AMBIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsFilial_MDFeRNTRC: TStringField
      FieldName = 'RNTRC'
      Size = 8
    end
    object sdsFilial_MDFeSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
  end
  object cdsFilial_MDFe: TClientDataSet
    Aggregates = <>
    DataSetField = cdsFilialsdsFilial_MDFe
    IndexFieldNames = 'ID'
    Params = <>
    Left = 192
    Top = 400
    object cdsFilial_MDFeID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFilial_MDFeTIPO_EMITENTE: TStringField
      FieldName = 'TIPO_EMITENTE'
      FixedChar = True
      Size = 1
    end
    object cdsFilial_MDFeTIPO_TRANSPORTADOR: TStringField
      FieldName = 'TIPO_TRANSPORTADOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsFilial_MDFeTIPO_AMBIENTE: TStringField
      FieldName = 'TIPO_AMBIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsFilial_MDFeRNTRC: TStringField
      FieldName = 'RNTRC'
      Size = 8
    end
    object cdsFilial_MDFeSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
  end
  object dsFilial_MDFe: TDataSource
    DataSet = cdsFilial_MDFe
    Left = 272
    Top = 400
  end
  object sdsFilial_Custo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FILIAL_CUSTO'#13#10'WHERE ID = :ID'
    DataSource = dsmFilial
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 448
    object sdsFilial_CustoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFilial_CustoPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object sdsFilial_CustoPERC_MARK_UP: TFloatField
      FieldName = 'PERC_MARK_UP'
    end
    object sdsFilial_CustoPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsFilial_CustoPERC_FRETE: TFloatField
      FieldName = 'PERC_FRETE'
    end
    object sdsFilial_CustoPERC_IR_CONTRSOCIAL: TFloatField
      FieldName = 'PERC_IR_CONTRSOCIAL'
    end
    object sdsFilial_CustoPERC_MARGEM_OPE: TFloatField
      FieldName = 'PERC_MARGEM_OPE'
    end
    object sdsFilial_CustoPERC_CUSTO_FINANCEIRO: TFloatField
      FieldName = 'PERC_CUSTO_FINANCEIRO'
    end
    object sdsFilial_CustoPRAZO_BASE: TIntegerField
      FieldName = 'PRAZO_BASE'
    end
    object sdsFilial_CustoPERC_IR_PJ: TFloatField
      FieldName = 'PERC_IR_PJ'
    end
    object sdsFilial_CustoCLIQ_PIS_COFINS: TStringField
      FieldName = 'CLIQ_PIS_COFINS'
      FixedChar = True
      Size = 1
    end
    object sdsFilial_CustoCLIQ_ICMS: TStringField
      FieldName = 'CLIQ_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsFilial_CustoCLIQ_IPI: TStringField
      FieldName = 'CLIQ_IPI'
      FixedChar = True
      Size = 1
    end
    object sdsFilial_CustoCLIQ_FRETE: TStringField
      FieldName = 'CLIQ_FRETE'
      FixedChar = True
      Size = 1
    end
    object sdsFilial_CustoCLIQ_ST: TStringField
      FieldName = 'CLIQ_ST'
      FixedChar = True
      Size = 1
    end
  end
  object cdsFilial_Custo: TClientDataSet
    Aggregates = <>
    DataSetField = cdsFilialsdsFilial_Custo
    IndexFieldNames = 'ID'
    Params = <>
    Left = 192
    Top = 448
    object cdsFilial_CustoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFilial_CustoPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsFilial_CustoPERC_MARK_UP: TFloatField
      FieldName = 'PERC_MARK_UP'
    end
    object cdsFilial_CustoPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsFilial_CustoPERC_FRETE: TFloatField
      FieldName = 'PERC_FRETE'
    end
    object cdsFilial_CustoPERC_IR_CONTRSOCIAL: TFloatField
      FieldName = 'PERC_IR_CONTRSOCIAL'
    end
    object cdsFilial_CustoPERC_MARGEM_OPE: TFloatField
      FieldName = 'PERC_MARGEM_OPE'
    end
    object cdsFilial_CustoPERC_CUSTO_FINANCEIRO: TFloatField
      FieldName = 'PERC_CUSTO_FINANCEIRO'
    end
    object cdsFilial_CustoPRAZO_BASE: TIntegerField
      FieldName = 'PRAZO_BASE'
    end
    object cdsFilial_CustoPERC_IR_PJ: TFloatField
      FieldName = 'PERC_IR_PJ'
    end
    object cdsFilial_CustoCLIQ_PIS_COFINS: TStringField
      FieldName = 'CLIQ_PIS_COFINS'
      FixedChar = True
      Size = 1
    end
    object cdsFilial_CustoCLIQ_ICMS: TStringField
      FieldName = 'CLIQ_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsFilial_CustoCLIQ_IPI: TStringField
      FieldName = 'CLIQ_IPI'
      FixedChar = True
      Size = 1
    end
    object cdsFilial_CustoCLIQ_FRETE: TStringField
      FieldName = 'CLIQ_FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsFilial_CustoCLIQ_ST: TStringField
      FieldName = 'CLIQ_ST'
      FixedChar = True
      Size = 1
    end
  end
  object dsFilial_Custo: TDataSource
    DataSet = cdsFilial_Custo
    Left = 272
    Top = 448
  end
  object qParametros_Ped: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ENVIA_SMS'
      'FROM PARAMETROS_PED'
      'WHERE ID = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 592
    Top = 71
    object qParametros_PedENVIA_SMS: TStringField
      FieldName = 'ENVIA_SMS'
      FixedChar = True
      Size = 1
    end
  end
  object sdsFilial_SMS: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FILIAL_SMS'#13#10'WHERE ID = :ID'
    DataSource = dsmFilial
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 496
    object sdsFilial_SMSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFilial_SMSLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 200
    end
    object sdsFilial_SMSSENHA: TStringField
      FieldName = 'SENHA'
    end
    object sdsFilial_SMSTOKEN: TStringField
      FieldName = 'TOKEN'
      Size = 300
    end
    object sdsFilial_SMSFONE_ORIGEM: TStringField
      FieldName = 'FONE_ORIGEM'
      Size = 15
    end
  end
  object cdsFilial_SMS: TClientDataSet
    Aggregates = <>
    DataSetField = cdsFilialsdsFilial_SMS
    IndexFieldNames = 'ID'
    Params = <>
    Left = 192
    Top = 496
    object cdsFilial_SMSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFilial_SMSLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 200
    end
    object cdsFilial_SMSSENHA: TStringField
      FieldName = 'SENHA'
    end
    object cdsFilial_SMSTOKEN: TStringField
      FieldName = 'TOKEN'
      Size = 300
    end
    object cdsFilial_SMSFONE_ORIGEM: TStringField
      FieldName = 'FONE_ORIGEM'
      Size = 15
    end
  end
  object dsFilial_SMS: TDataSource
    DataSet = cdsFilial_SMS
    Left = 272
    Top = 496
  end
  object qCopiar_Filial_Rel: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'EXECUTE PROCEDURE PRC_COPIA_REL_FILIAL(:FILIAL)')
    SQLConnection = dmDatabase.scoDados
    Left = 936
    Top = 456
  end
end
