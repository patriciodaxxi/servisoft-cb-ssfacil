object DMCadTipo_Conta_Orc: TDMCadTipo_Conta_Orc
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 425
  Top = 222
  Height = 296
  Width = 478
  object sdsTipo_Conta_Orc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TIPO_CONTA_ORC'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsTipo_Conta_OrcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTipo_Conta_OrcNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dspTipo_Conta_Orc: TDataSetProvider
    DataSet = sdsTipo_Conta_Orc
    OnUpdateError = dspTipo_Conta_OrcUpdateError
    Left = 128
    Top = 32
  end
  object cdsTipo_Conta_Orc: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTipo_Conta_Orc'
    Left = 192
    Top = 32
    object cdsTipo_Conta_OrcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTipo_Conta_OrcNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsTipo_Conta_Orc: TDataSource
    DataSet = cdsTipo_Conta_Orc
    Left = 264
    Top = 32
  end
end
