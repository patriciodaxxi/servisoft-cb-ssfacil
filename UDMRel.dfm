object DMRel: TDMRel
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 150
  Top = 131
  Height = 359
  Width = 574
  object RLPreviewSetup1: TRLPreviewSetup
    BorderIcons = [biSystemMenu, biMaximize]
    EnabledButtons = [pbPrint, pbSave, pbSend, pbCustom]
    OnSend = RLPreviewSetup1Send
    Left = 148
    Top = 16
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 196
    Top = 16
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 232
    Top = 16
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport v0.3.04a \251 Copyright '#169' 1999-2003 Fortes Inform'#225't' +
      'ica'
    DisplayName = 'Documento PDF'
    Left = 268
    Top = 16
  end
  object qFilial: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM FILIAL'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 184
    Top = 104
    object qFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qFilialNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object qFilialENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object qFilialCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object qFilialNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object qFilialBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qFilialCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qFilialID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object qFilialCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qFilialUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qFilialDDD1: TIntegerField
      FieldName = 'DDD1'
    end
    object qFilialFONE1: TStringField
      FieldName = 'FONE1'
      Size = 15
    end
    object qFilialDDD2: TIntegerField
      FieldName = 'DDD2'
    end
    object qFilialFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object qFilialDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object qFilialFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object qFilialPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object qFilialCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object qFilialINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object qFilialSIMPLES: TStringField
      FieldName = 'SIMPLES'
      FixedChar = True
      Size = 1
    end
    object qFilialENDLOGO: TStringField
      FieldName = 'ENDLOGO'
      Size = 250
    end
    object qFilialCALCULAR_IPI: TStringField
      FieldName = 'CALCULAR_IPI'
      FixedChar = True
      Size = 1
    end
    object qFilialINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object qFilialINSCMUNICIPAL: TStringField
      FieldName = 'INSCMUNICIPAL'
      Size = 18
    end
    object qFilialCNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object qFilialHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 250
    end
    object qFilialID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object qFilialID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object qFilialID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object qFilialTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object qFilialTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object qFilialPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object qFilialPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object qFilialID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object qFilialID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object qFilialEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 200
    end
    object qFilialDTESTOQUE: TDateField
      FieldName = 'DTESTOQUE'
    end
    object qFilialPRINCIPAL: TStringField
      FieldName = 'PRINCIPAL'
      FixedChar = True
      Size = 1
    end
    object qFilialLIBERADO_ATE: TStringField
      FieldName = 'LIBERADO_ATE'
      Size = 18
    end
    object qFilialULTIMO_ACESSO: TStringField
      FieldName = 'ULTIMO_ACESSO'
      Size = 18
    end
    object qFilialUSARICMSSIMPLES: TStringField
      FieldName = 'USARICMSSIMPLES'
      FixedChar = True
      Size = 1
    end
    object qFilialSERIENORMAL: TStringField
      FieldName = 'SERIENORMAL'
      Size = 3
    end
    object qFilialID_REGIME_TRIB_NFSE: TIntegerField
      FieldName = 'ID_REGIME_TRIB_NFSE'
    end
    object qFilialINCENTIVO_CULTURAL: TStringField
      FieldName = 'INCENTIVO_CULTURAL'
      FixedChar = True
      Size = 1
    end
    object qFilialSERIE_NFSE: TStringField
      FieldName = 'SERIE_NFSE'
      Size = 5
    end
    object qFilialID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
    end
    object qFilialID_SERVICO_SINT: TIntegerField
      FieldName = 'ID_SERVICO_SINT'
    end
    object qFilialID_SERVICO_PAD: TIntegerField
      FieldName = 'ID_SERVICO_PAD'
    end
    object qFilialPERC_IR: TFloatField
      FieldName = 'PERC_IR'
    end
    object qFilialVLR_IR_MINIMO: TFloatField
      FieldName = 'VLR_IR_MINIMO'
    end
    object qFilialPERC_ISS: TFloatField
      FieldName = 'PERC_ISS'
    end
    object qFilialCOD_TRIBUTACAO_MUNICIPIO: TStringField
      FieldName = 'COD_TRIBUTACAO_MUNICIPIO'
    end
    object qFilialNUMLOTE: TIntegerField
      FieldName = 'NUMLOTE'
    end
    object qFilialENDLOGO_NFSE: TStringField
      FieldName = 'ENDLOGO_NFSE'
      Size = 200
    end
    object qFilialPERC_CSLL: TFloatField
      FieldName = 'PERC_CSLL'
    end
    object qFilialCNAE_NFSE: TStringField
      FieldName = 'CNAE_NFSE'
      Size = 7
    end
    object qFilialPERC_INSS: TFloatField
      FieldName = 'PERC_INSS'
    end
    object qFilialID_ATIVIDADE_CID: TIntegerField
      FieldName = 'ID_ATIVIDADE_CID'
    end
    object qFilialNFSE_HOMOLOGACAO: TStringField
      FieldName = 'NFSE_HOMOLOGACAO'
      FixedChar = True
      Size = 1
    end
    object qFilialPERC_CSRF: TFloatField
      FieldName = 'PERC_CSRF'
    end
    object qFilialVLR_FATURAMENTO_MES_CSRF: TFloatField
      FieldName = 'VLR_FATURAMENTO_MES_CSRF'
    end
    object qFilialPERC_TRIB_SERV: TFloatField
      FieldName = 'PERC_TRIB_SERV'
    end
    object qFilialPERC_TRIB_NTS_IND: TFloatField
      FieldName = 'PERC_TRIB_NTS_IND'
    end
    object qFilialPERC_TRIB_NTS_VEN: TFloatField
      FieldName = 'PERC_TRIB_NTS_VEN'
    end
    object qFilialPERC_TRIB_NTS_IND_EXP: TFloatField
      FieldName = 'PERC_TRIB_NTS_IND_EXP'
    end
    object qFilialPERC_TRIB_NTS_VEN_EXP: TFloatField
      FieldName = 'PERC_TRIB_NTS_VEN_EXP'
    end
    object qFilialPERC_LISTA_CAMEX: TFloatField
      FieldName = 'PERC_LISTA_CAMEX'
    end
    object qFilialIMPRESSAO_MATRICIAL: TStringField
      FieldName = 'IMPRESSAO_MATRICIAL'
      FixedChar = True
      Size = 1
    end
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 328
    Top = 16
  end
end
