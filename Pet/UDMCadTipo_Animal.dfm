object DMCadTipo_Animal: TDMCadTipo_Animal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 316
  Top = 174
  Height = 296
  Width = 706
  object sdsTipo_Animal: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TIPO_ANIMAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 53
    Top = 28
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
    OnUpdateError = dspTipo_AnimalUpdateError
    Left = 128
    Top = 32
  end
  object cdsTipo_Animal: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTipo_Animal'
    Left = 192
    Top = 32
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
    Left = 264
    Top = 32
  end
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT T.*'#13#10'FROM TIPO_ANIMAL T'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 404
    Top = 36
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspTipo_AnimalUpdateError
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
      Required = True
      Size = 40
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 612
    Top = 36
  end
end
