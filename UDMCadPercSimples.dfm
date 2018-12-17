object DMCadPercSimples: TDMCadPercSimples
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 311
  Top = 152
  Height = 542
  Width = 637
  object sdsPercentual_Simples: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.*, F.NOME_INTERNO'#13#10'FROM PERCENTUAL_SIMPLES P'#13#10'LEFT JOIN' +
      ' FILIAL F'#13#10'ON P.FILIAL = F.ID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 32
    object sdsPercentual_SimplesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPercentual_SimplesFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsPercentual_SimplesANO: TIntegerField
      FieldName = 'ANO'
    end
    object sdsPercentual_SimplesMES: TIntegerField
      FieldName = 'MES'
    end
    object sdsPercentual_SimplesPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
    object sdsPercentual_SimplesNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      ProviderFlags = []
      Size = 30
    end
  end
  object dspPercentual_Simples: TDataSetProvider
    DataSet = sdsPercentual_Simples
    OnUpdateError = dspPercentual_SimplesUpdateError
    Left = 160
    Top = 32
  end
  object cdsPercentual_Simples: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspPercentual_Simples'
    Left = 224
    Top = 32
    object cdsPercentual_SimplesID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
      Required = True
    end
    object cdsPercentual_SimplesFILIAL: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Filial'
      FieldName = 'FILIAL'
    end
    object cdsPercentual_SimplesANO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
    end
    object cdsPercentual_SimplesMES: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'M'#234's'
      FieldName = 'MES'
    end
    object cdsPercentual_SimplesPERCENTUAL: TFloatField
      Alignment = taCenter
      DisplayLabel = '%'
      FieldName = 'PERCENTUAL'
    end
    object cdsPercentual_SimplesNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      ProviderFlags = []
      Size = 30
    end
  end
  object dsPercentual_Simples: TDataSource
    DataSet = cdsPercentual_Simples
    Left = 296
    Top = 32
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FILIAL'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 256
    Top = 152
    object sdsFilialID: TIntegerField
      FieldName = 'ID'
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
    object sdsFilialUSARICMSSIMPLES: TStringField
      FieldName = 'USARICMSSIMPLES'
      FixedChar = True
      Size = 10
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
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 288
    Top = 152
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 328
    Top = 152
    object cdsFilialID: TIntegerField
      FieldName = 'ID'
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
    object cdsFilialUSARICMSSIMPLES: TStringField
      FieldName = 'USARICMSSIMPLES'
      FixedChar = True
      Size = 10
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
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 368
    Top = 152
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 256
    Top = 208
    object qParametrosUSA_FAIXA_SIMPLES: TStringField
      FieldName = 'USA_FAIXA_SIMPLES'
      FixedChar = True
      Size = 1
    end
  end
  object qFaturamento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT sum(SAI.VLR_DUPLICATA) VLR_FATURAMENTO'
      'FROM MOVIMENTO SAI'
      'WHERE (SAI.CANCELADO <> '#39'S'#39')'
      '  AND (SAI.TIPO_REG = '#39'NTS'#39') AND (SAI.TP_SAIDA = '#39'S'#39')')
    SQLConnection = dmDatabase.scoDados
    Left = 256
    Top = 264
    object qFaturamentoVLR_FATURAMENTO: TFloatField
      FieldName = 'VLR_FATURAMENTO'
    end
  end
  object qDevolucao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT sum(ENT.VLR_TOTAL) VLR_DEVOLUCAO'
      'FROM MOVIMENTO ENT'
      'INNER JOIN TAB_CFOP TC'
      ' ON ENT.ID_CFOP = TC.ID'
      'WHERE (ENT.CANCELADO <> '#39'S'#39')'
      '  AND (((ENT.TIPO_REG = '#39'NTS'#39') AND (ENT.TIPO_ES = '#39'E'#39'))'
      '  OR ((ENT.TIPO_REG = '#39'NTE'#39') AND (ENT.TIPO_ES = '#39'E'#39')))'
      '  AND (TC.DEVOLUCAO = '#39'S'#39')')
    SQLConnection = dmDatabase.scoDados
    Left = 256
    Top = 320
    object qDevolucaoVLR_DEVOLUCAO: TFloatField
      FieldName = 'VLR_DEVOLUCAO'
    end
  end
  object qFaixa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'valor'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'valor'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM faixa_simples F'
      'where vlr_de <= :valor'
      '   and vlr_ate >= :valor'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 376
    Top = 232
    object qFaixaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qFaixaPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
  end
  object sdsFaixa_Simples: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FAIXA_SIMPLES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 184
    Top = 408
    object sdsFaixa_SimplesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFaixa_SimplesVLR_DE: TFloatField
      FieldName = 'VLR_DE'
    end
    object sdsFaixa_SimplesVLR_ATE: TFloatField
      FieldName = 'VLR_ATE'
    end
    object sdsFaixa_SimplesPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
  end
  object dspFaixa_Simples: TDataSetProvider
    DataSet = sdsFaixa_Simples
    OnUpdateError = dspPercentual_SimplesUpdateError
    Left = 256
    Top = 408
  end
  object cdsFaixa_Simples: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFaixa_Simples'
    Left = 320
    Top = 408
    object cdsFaixa_SimplesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFaixa_SimplesVLR_DE: TFloatField
      FieldName = 'VLR_DE'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsFaixa_SimplesVLR_ATE: TFloatField
      FieldName = 'VLR_ATE'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsFaixa_SimplesPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
      DisplayFormat = '0.00'
    end
  end
  object dsFaixa_Simples: TDataSource
    DataSet = cdsFaixa_Simples
    Left = 392
    Top = 408
  end
end
