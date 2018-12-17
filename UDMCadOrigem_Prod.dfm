object DMCadOrigem_Prod: TDMCadOrigem_Prod
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 281
  Top = 222
  Height = 296
  Width = 478
  object sdsOrigem_Prod: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM ORIGEM_PROD'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsOrigem_ProdORIGEM: TStringField
      FieldName = 'ORIGEM'
      Required = True
      Size = 1
    end
    object sdsOrigem_ProdNOME: TStringField
      FieldName = 'NOME'
      Size = 230
    end
  end
  object dspOrigem_Prod: TDataSetProvider
    DataSet = sdsOrigem_Prod
    OnUpdateError = dspOrigem_ProdUpdateError
    Left = 128
    Top = 32
  end
  object cdsOrigem_Prod: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrigem_Prod'
    Left = 192
    Top = 32
    object cdsOrigem_ProdORIGEM: TStringField
      Alignment = taCenter
      DisplayLabel = 'C'#243'd. Origem'
      FieldName = 'ORIGEM'
      Required = True
      Size = 1
    end
    object cdsOrigem_ProdNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 230
    end
  end
  object dsOrigem_Prod: TDataSource
    DataSet = cdsOrigem_Prod
    Left = 264
    Top = 32
  end
end
