object DMCadFeriado_Fixo: TDMCadFeriado_Fixo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 392
  Top = 222
  Height = 296
  Width = 478
  object sdsFeriado_Fixo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FERIADO_FIXO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
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
    OnUpdateError = dspFeriado_FixoUpdateError
    Left = 128
    Top = 32
  end
  object cdsFeriado_Fixo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspFeriado_Fixo'
    Left = 192
    Top = 32
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
  object dsFeriado_Fixo: TDataSource
    DataSet = cdsFeriado_Fixo
    Left = 264
    Top = 32
  end
end
