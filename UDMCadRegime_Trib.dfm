object DMCadRegime_Trib: TDMCadRegime_Trib
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 281
  Top = 222
  Height = 296
  Width = 478
  object sdsRegime_Trib: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM REGIME_TRIB'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsRegime_TribID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsRegime_TribCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object sdsRegime_TribNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsRegime_TribTIPO: TStringField
      FieldName = 'TIPO'
      Size = 5
    end
  end
  object dspRegime_Trib: TDataSetProvider
    DataSet = sdsRegime_Trib
    OnUpdateError = dspRegime_TribUpdateError
    Left = 128
    Top = 32
  end
  object cdsRegime_Trib: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspRegime_Trib'
    Left = 192
    Top = 32
    object cdsRegime_TribID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsRegime_TribCODIGO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C'#243'digo Regime'
      FieldName = 'CODIGO'
    end
    object cdsRegime_TribNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 100
    end
    object cdsRegime_TribTIPO: TStringField
      FieldName = 'TIPO'
      Size = 5
    end
  end
  object dsRegime_Trib: TDataSource
    DataSet = cdsRegime_Trib
    Left = 264
    Top = 32
  end
end
