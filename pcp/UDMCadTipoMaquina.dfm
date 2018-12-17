object DMCadTipoMaquina: TDMCadTipoMaquina
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 432
  Top = 231
  Height = 263
  Width = 437
  object sdsTipoMaquina: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TIPO_MAQUINA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 32
    object sdsTipoMaquinaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsTipoMaquinaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object sdsTipoMaquinaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
  end
  object dspTipoMaquina: TDataSetProvider
    DataSet = sdsTipoMaquina
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspTipoMaquinaUpdateError
    Left = 168
    Top = 32
  end
  object cdsTipoMaquina: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTipoMaquina'
    Left = 240
    Top = 32
    object cdsTipoMaquinaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTipoMaquinaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsTipoMaquinaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
  end
  object dsTipoMaquina: TDataSource
    DataSet = cdsTipoMaquina
    Left = 304
    Top = 32
  end
end
