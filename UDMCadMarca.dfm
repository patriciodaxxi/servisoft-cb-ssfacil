object DMCadMarca: TDMCadMarca
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 293
  Top = 165
  Height = 381
  Width = 582
  object sdsMarca: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MARCA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 32
    object sdsMarcaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsMarcaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dspMarca: TDataSetProvider
    DataSet = sdsMarca
    OnUpdateError = dspMarcaUpdateError
    Left = 160
    Top = 32
  end
  object cdsMarca: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspMarca'
    Left = 224
    Top = 32
    object cdsMarcaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMarcaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dsMarca: TDataSource
    DataSet = cdsMarca
    Left = 296
    Top = 32
  end
end
