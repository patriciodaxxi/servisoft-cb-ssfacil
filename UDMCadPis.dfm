object DMCadPis: TDMCadPis
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 356
  Top = 222
  Height = 296
  Width = 478
  object sdsTab_Pis: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_PIS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsTab_PisID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTab_PisCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 2
    end
    object sdsTab_PisNOME: TStringField
      FieldName = 'NOME'
      Size = 150
    end
    object sdsTab_PisGERAR: TStringField
      FieldName = 'GERAR'
      FixedChar = True
      Size = 1
    end
  end
  object dspTab_Pis: TDataSetProvider
    DataSet = sdsTab_Pis
    OnUpdateError = dspTab_PisUpdateError
    Left = 128
    Top = 32
  end
  object cdsTab_Pis: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_Pis'
    OnNewRecord = cdsTab_PisNewRecord
    Left = 192
    Top = 32
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
    object cdsTab_PisGERAR: TStringField
      FieldName = 'GERAR'
      FixedChar = True
      Size = 1
    end
  end
  object dsTab_Pis: TDataSource
    DataSet = cdsTab_Pis
    Left = 264
    Top = 32
  end
end
