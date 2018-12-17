object DMCadCSTIcms: TDMCadCSTIcms
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 459
  Top = 220
  Height = 296
  Width = 478
  object sdsTab_CSTIcms: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CSTICMS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 57
    Top = 47
    object sdsTab_CSTIcmsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTab_CSTIcmsPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
    object sdsTab_CSTIcmsHISTORICO: TMemoField
      FieldName = 'HISTORICO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsTab_CSTIcmsCOD_CST: TStringField
      FieldName = 'COD_CST'
      Size = 3
    end
    object sdsTab_CSTIcmsTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsTab_CSTIcmsNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object sdsTab_CSTIcmsUSA_DESONERACAO: TStringField
      FieldName = 'USA_DESONERACAO'
      Size = 1
    end
    object sdsTab_CSTIcmsCOD_DESONERACAO: TSmallintField
      FieldName = 'COD_DESONERACAO'
    end
    object sdsTab_CSTIcmsPERC_DIFERIMENTO: TFloatField
      FieldName = 'PERC_DIFERIMENTO'
    end
    object sdsTab_CSTIcmsCALCULA_FCP: TStringField
      FieldName = 'CALCULA_FCP'
      FixedChar = True
      Size = 1
    end
  end
  object dspTab_CSTIcms: TDataSetProvider
    DataSet = sdsTab_CSTIcms
    Left = 89
    Top = 47
  end
  object cdsTab_CSTIcms: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_CSTIcms'
    OnNewRecord = cdsTab_CSTIcmsNewRecord
    Left = 153
    Top = 47
    object cdsTab_CSTIcmsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_CSTIcmsPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
    object cdsTab_CSTIcmsHISTORICO: TMemoField
      FieldName = 'HISTORICO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsTab_CSTIcmsCOD_CST: TStringField
      FieldName = 'COD_CST'
      Size = 3
    end
    object cdsTab_CSTIcmsTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsTab_CSTIcmsNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object cdsTab_CSTIcmsUSA_DESONERACAO: TStringField
      FieldName = 'USA_DESONERACAO'
      Size = 1
    end
    object cdsTab_CSTIcmsCOD_DESONERACAO: TSmallintField
      FieldName = 'COD_DESONERACAO'
    end
    object cdsTab_CSTIcmsPERC_DIFERIMENTO: TFloatField
      FieldName = 'PERC_DIFERIMENTO'
    end
    object cdsTab_CSTIcmsCALCULA_FCP: TStringField
      FieldName = 'CALCULA_FCP'
      FixedChar = True
      Size = 1
    end
  end
  object dsTab_CSTIcms: TDataSource
    DataSet = cdsTab_CSTIcms
    Left = 201
    Top = 47
  end
  object sdsDesoneracao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM TAB_DESONERACAO_ICMS'#13#10'WHERE COD_CST_ICMS = :COD_C' +
      'ST_ICMS'#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'COD_CST_ICMS'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 73
    Top = 119
    object sdsDesoneracaoCOD_CST_ICMS: TStringField
      FieldName = 'COD_CST_ICMS'
      Required = True
      Size = 3
    end
    object sdsDesoneracaoCOD_DESONERACAO: TSmallintField
      FieldName = 'COD_DESONERACAO'
      Required = True
    end
    object sdsDesoneracaoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dspDesoneracao: TDataSetProvider
    DataSet = sdsDesoneracao
    Left = 105
    Top = 119
  end
  object cdsDesoneracao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COD_CST_ICMS'
    Params = <>
    ProviderName = 'dspDesoneracao'
    Left = 169
    Top = 119
    object cdsDesoneracaoCOD_CST_ICMS: TStringField
      FieldName = 'COD_CST_ICMS'
      Required = True
      Size = 3
    end
    object cdsDesoneracaoCOD_DESONERACAO: TSmallintField
      FieldName = 'COD_DESONERACAO'
      Required = True
    end
    object cdsDesoneracaoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dsDesoneracao: TDataSource
    DataSet = cdsDesoneracao
    Left = 217
    Top = 119
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT P.usa_desoneracao'
      'FROM PARAMETROS P')
    SQLConnection = dmDatabase.scoDados
    Left = 344
    Top = 144
    object qParametrosUSA_DESONERACAO: TStringField
      FieldName = 'USA_DESONERACAO'
      FixedChar = True
      Size = 1
    end
  end
end
