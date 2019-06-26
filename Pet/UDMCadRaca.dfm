object DMCadRaca: TDMCadRaca
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 316
  Top = 174
  Height = 296
  Width = 706
  object sdsRaca: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM RACA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsRacaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsRacaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsRacaID_TIPO_ANIMAL: TIntegerField
      FieldName = 'ID_TIPO_ANIMAL'
    end
  end
  object dspRaca: TDataSetProvider
    DataSet = sdsRaca
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspRacaUpdateError
    Left = 128
    Top = 32
  end
  object cdsRaca: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspRaca'
    Left = 192
    Top = 32
    object cdsRacaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRacaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsRacaID_TIPO_ANIMAL: TIntegerField
      FieldName = 'ID_TIPO_ANIMAL'
    end
  end
  object dsRaca: TDataSource
    DataSet = cdsRaca
    Left = 264
    Top = 32
  end
  object sdsTipo_Animal: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TIPO_ANIMAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 113
    Top = 146
    object sdsTipo_AnimalID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsTipo_AnimalNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 40
    end
  end
  object dspTipo_Animal: TDataSetProvider
    DataSet = sdsTipo_Animal
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspRacaUpdateError
    Left = 183
    Top = 146
  end
  object cdsTipo_Animal: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspTipo_Animal'
    Left = 247
    Top = 146
    object cdsTipo_AnimalID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTipo_AnimalNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 40
    end
  end
  object dsTipo_Animal: TDataSource
    DataSet = cdsTipo_Animal
    Left = 319
    Top = 146
  end
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT R.*, T.NOME NOME_TIPO'#13#10'FROM RACA R'#13#10'LEFT JOIN TIPO_ANIMAL' +
      ' T'#13#10'ON R.id_tipo_animal = T.ID'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 404
    Top = 36
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspRacaUpdateError
    Left = 476
    Top = 36
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 540
    Top = 36
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsConsultaID_TIPO_ANIMAL: TIntegerField
      FieldName = 'ID_TIPO_ANIMAL'
    end
    object cdsConsultaNOME_TIPO: TStringField
      FieldName = 'NOME_TIPO'
      Size = 40
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 612
    Top = 36
  end
end
