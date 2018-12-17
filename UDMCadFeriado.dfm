object DMCadFeriado: TDMCadFeriado
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 392
  Top = 222
  Height = 296
  Width = 478
  object sdsFeriado: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FERIADO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsFeriadoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFeriadoDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsFeriadoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object sdsFeriadoFIXOS: TStringField
      FieldName = 'FIXOS'
      FixedChar = True
      Size = 1
    end
  end
  object dspFeriado: TDataSetProvider
    DataSet = sdsFeriado
    OnUpdateError = dspFeriadoUpdateError
    Left = 128
    Top = 32
  end
  object cdsFeriado: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspFeriado'
    Left = 192
    Top = 32
    object cdsFeriadoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFeriadoDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsFeriadoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object cdsFeriadoFIXOS: TStringField
      FieldName = 'FIXOS'
      FixedChar = True
      Size = 1
    end
  end
  object dsFeriado: TDataSource
    DataSet = cdsFeriado
    Left = 264
    Top = 32
  end
  object qData: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ANO'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM FERIADO'
      'WHERE extract(year from DATA) = :ANO')
    SQLConnection = dmDatabase.scoDados
    Left = 336
    Top = 168
    object qDataID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qDataDATA: TDateField
      FieldName = 'DATA'
    end
    object qDataDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object qDataFIXOS: TStringField
      FieldName = 'FIXOS'
      FixedChar = True
      Size = 1
    end
  end
  object sdsFeriado_Fixo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FERIADO_FIXO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 104
    object sdsFeriado_FixoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFeriado_FixoDIA: TIntegerField
      FieldName = 'DIA'
    end
    object sdsFeriado_FixoMES: TIntegerField
      FieldName = 'MES'
    end
    object sdsFeriado_FixoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dspFeriado_Fixo: TDataSetProvider
    DataSet = sdsFeriado_Fixo
    OnUpdateError = dspFeriadoUpdateError
    Left = 128
    Top = 104
  end
  object cdsFeriado_Fixo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspFeriado_Fixo'
    Left = 192
    Top = 104
    object cdsFeriado_FixoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFeriado_FixoDIA: TIntegerField
      FieldName = 'DIA'
    end
    object cdsFeriado_FixoMES: TIntegerField
      FieldName = 'MES'
    end
    object cdsFeriado_FixoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
end
