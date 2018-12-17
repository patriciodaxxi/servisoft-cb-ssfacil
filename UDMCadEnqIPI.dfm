object DMCadEnqIPI: TDMCadEnqIPI
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 526
  Top = 244
  Height = 296
  Width = 478
  object sdsTab_EnqIPI: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_ENQIPI'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsTab_EnqIPIID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsTab_EnqIPICODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object sdsTab_EnqIPITIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsTab_EnqIPIDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
  end
  object dspTab_EnqIPI: TDataSetProvider
    DataSet = sdsTab_EnqIPI
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspTab_EnqIPIUpdateError
    Left = 128
    Top = 32
  end
  object cdsTab_EnqIPI: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_EnqIPI'
    Left = 192
    Top = 32
    object cdsTab_EnqIPIID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTab_EnqIPICODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object cdsTab_EnqIPITIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsTab_EnqIPIDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
  end
  object dsTab_EnqIPI: TDataSource
    DataSet = cdsTab_EnqIPI
    Left = 264
    Top = 32
  end
end
