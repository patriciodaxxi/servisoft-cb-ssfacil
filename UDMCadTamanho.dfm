object DMCadTamanho: TDMCadTamanho
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 436
  Top = 207
  Height = 296
  Width = 478
  object sdsTamanho: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAMANHO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsTamanhoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTamanhoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
  end
  object dspTamanho: TDataSetProvider
    DataSet = sdsTamanho
    OnUpdateError = dspTamanhoUpdateError
    Left = 128
    Top = 32
  end
  object cdsTamanho: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTamanho'
    Left = 192
    Top = 32
    object cdsTamanhoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTamanhoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
  end
  object dsTamanho: TDataSource
    DataSet = cdsTamanho
    Left = 264
    Top = 32
  end
  object qTamanho: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TAMANHO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM TAMANHO'
      'WHERE TAMANHO = :TAMANHO')
    SQLConnection = dmDatabase.scoDados
    Left = 160
    Top = 104
    object qTamanhoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qTamanhoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
  end
end
