object DMCadFaixa_Simples: TDMCadFaixa_Simples
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 392
  Top = 222
  Height = 296
  Width = 478
  object sdsFaixa_Simples: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FAIXA_SIMPLES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
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
    OnUpdateError = dspFaixa_SimplesUpdateError
    Left = 128
    Top = 32
  end
  object cdsFaixa_Simples: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspFaixa_Simples'
    Left = 192
    Top = 32
    object cdsFaixa_SimplesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFaixa_SimplesVLR_DE: TFloatField
      FieldName = 'VLR_DE'
      DisplayFormat = '0.00'
    end
    object cdsFaixa_SimplesVLR_ATE: TFloatField
      FieldName = 'VLR_ATE'
      DisplayFormat = '0.00'
    end
    object cdsFaixa_SimplesPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
      DisplayFormat = '0.00'
    end
  end
  object dsFaixa_Simples: TDataSource
    DataSet = cdsFaixa_Simples
    Left = 264
    Top = 32
  end
end
