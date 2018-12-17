object DMCadTipo_Matriz: TDMCadTipo_Matriz
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 329
  Top = 222
  Height = 328
  Width = 585
  object sdsTipo_Matriz: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TIPO_MATRIZ'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsTipo_MatrizID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTipo_MatrizNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dspTipo_Matriz: TDataSetProvider
    DataSet = sdsTipo_Matriz
    OnUpdateError = dspTipo_MatrizUpdateError
    Left = 128
    Top = 32
  end
  object cdsTipo_Matriz: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTipo_Matriz'
    Left = 200
    Top = 32
    object cdsTipo_MatrizID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTipo_MatrizNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dsTipo_Matriz: TDataSource
    DataSet = cdsTipo_Matriz
    Left = 264
    Top = 32
  end
end
