object DMCadCofins: TDMCadCofins
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 356
  Top = 222
  Height = 296
  Width = 478
  object sdsTab_Cofins: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_COFINS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsTab_CofinsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTab_CofinsCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 2
    end
    object sdsTab_CofinsNOME: TStringField
      FieldName = 'NOME'
      Size = 150
    end
    object sdsTab_CofinsGERAR: TStringField
      FieldName = 'GERAR'
      FixedChar = True
      Size = 1
    end
  end
  object dspTab_Cofins: TDataSetProvider
    DataSet = sdsTab_Cofins
    OnUpdateError = dspTab_CofinsUpdateError
    Left = 128
    Top = 32
  end
  object cdsTab_Cofins: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_Cofins'
    OnNewRecord = cdsTab_CofinsNewRecord
    Left = 192
    Top = 32
    object cdsTab_CofinsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_CofinsCODIGO: TStringField
      Alignment = taCenter
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Size = 2
    end
    object cdsTab_CofinsNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 150
    end
    object cdsTab_CofinsGERAR: TStringField
      FieldName = 'GERAR'
      FixedChar = True
      Size = 1
    end
  end
  object dsTab_Cofins: TDataSource
    DataSet = cdsTab_Cofins
    Left = 264
    Top = 32
  end
end
