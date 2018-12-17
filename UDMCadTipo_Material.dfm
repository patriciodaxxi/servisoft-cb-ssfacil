object DMCadTipo_Material: TDMCadTipo_Material
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 362
  Top = 129
  Height = 577
  Width = 782
  object sdsTipo_Material: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TIPO_MATERIAL'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 120
    Top = 32
    object sdsTipo_MaterialID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsTipo_MaterialNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object sdsTipo_MaterialDENSIDADE: TFloatField
      FieldName = 'DENSIDADE'
    end
    object sdsTipo_MaterialVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sdsTipo_MaterialUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
  end
  object dspTipo_Material: TDataSetProvider
    DataSet = sdsTipo_Material
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspTipo_MaterialUpdateError
    Left = 192
    Top = 32
  end
  object cdsTipo_Material: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTipo_Material'
    Left = 256
    Top = 32
    object cdsTipo_MaterialID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTipo_MaterialNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsTipo_MaterialDENSIDADE: TFloatField
      FieldName = 'DENSIDADE'
    end
    object cdsTipo_MaterialVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsTipo_MaterialUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
  end
  object dsTipo_Material: TDataSource
    DataSet = cdsTipo_Material
    Left = 328
    Top = 32
  end
  object sdsUNIDADE: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM UNIDADE'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 466
    Top = 236
  end
  object dspUNIDADE: TDataSetProvider
    DataSet = sdsUNIDADE
    Left = 498
    Top = 236
  end
  object cdsUNIDADE: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UNIDADE'
    Params = <>
    ProviderName = 'dspUNIDADE'
    Left = 538
    Top = 236
    object cdsUNIDADEUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 6
    end
    object cdsUNIDADECONVERSOR: TFloatField
      FieldName = 'CONVERSOR'
    end
    object cdsUNIDADENOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsUNIDADE: TDataSource
    DataSet = cdsUNIDADE
    Left = 578
    Top = 236
  end
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TIPO_MATERIAL'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 24
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Left = 488
    Top = 24
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 528
    Top = 24
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsConsultaDENSIDADE: TFloatField
      FieldName = 'DENSIDADE'
    end
    object cdsConsultaVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsConsultaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 568
    Top = 24
  end
end
