object DMCadUF: TDMCadUF
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 281
  Top = 222
  Height = 296
  Width = 478
  object sdsUF: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT UF.*'#13#10'FROM UF'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsUFUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object sdsUFPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object sdsUFIDPAIS: TIntegerField
      FieldName = 'IDPAIS'
    end
    object sdsUFCODUF: TStringField
      FieldName = 'CODUF'
      Size = 2
    end
    object sdsUFPERC_ICMS_INTERNO: TFloatField
      FieldName = 'PERC_ICMS_INTERNO'
    end
    object sdsUFPERC_CP: TFloatField
      FieldName = 'PERC_CP'
    end
    object sdsUFQTD_DIGITOS_IE: TIntegerField
      FieldName = 'QTD_DIGITOS_IE'
    end
    object sdsUFEXIGE_CBENEF: TStringField
      FieldName = 'EXIGE_CBENEF'
      FixedChar = True
      Size = 1
    end
    object sdsUFACEITA_ISENTO: TStringField
      FieldName = 'ACEITA_ISENTO'
      FixedChar = True
      Size = 1
    end
    object sdsUFPOSSUI_FCP: TStringField
      FieldName = 'POSSUI_FCP'
      FixedChar = True
      Size = 1
    end
  end
  object dspUF: TDataSetProvider
    DataSet = sdsUF
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspUFUpdateError
    Left = 128
    Top = 32
  end
  object cdsUF: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UF'
    Params = <>
    ProviderName = 'dspUF'
    OnCalcFields = cdsUFCalcFields
    Left = 192
    Top = 32
    object cdsUFUF: TStringField
      Alignment = taCenter
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object cdsUFPERC_ICMS: TFloatField
      DisplayLabel = '% ICMS'
      FieldName = 'PERC_ICMS'
    end
    object cdsUFIDPAIS: TIntegerField
      DisplayLabel = 'ID Pais'
      FieldName = 'IDPAIS'
    end
    object cdsUFCODUF: TStringField
      DisplayLabel = 'C'#243'd. UF'
      FieldName = 'CODUF'
      Size = 2
    end
    object cdsUFPERC_ICMS_INTERNO: TFloatField
      DisplayLabel = '% ICMS Interno'
      FieldName = 'PERC_ICMS_INTERNO'
    end
    object cdsUFclNomePais: TStringField
      FieldKind = fkCalculated
      FieldName = 'clNomePais'
      Size = 60
      Calculated = True
    end
    object cdsUFPERC_CP: TFloatField
      FieldName = 'PERC_CP'
    end
    object cdsUFQTD_DIGITOS_IE: TIntegerField
      FieldName = 'QTD_DIGITOS_IE'
    end
    object cdsUFEXIGE_CBENEF: TStringField
      FieldName = 'EXIGE_CBENEF'
      FixedChar = True
      Size = 1
    end
    object cdsUFACEITA_ISENTO: TStringField
      FieldName = 'ACEITA_ISENTO'
      FixedChar = True
      Size = 1
    end
    object cdsUFPOSSUI_FCP: TStringField
      FieldName = 'POSSUI_FCP'
      FixedChar = True
      Size = 1
    end
  end
  object dsUF: TDataSource
    DataSet = cdsUF
    Left = 264
    Top = 32
  end
  object sdsPais: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PAIS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 160
    Top = 128
    object sdsPaisID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPaisNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dspPais: TDataSetProvider
    DataSet = sdsPais
    Left = 208
    Top = 128
  end
  object cdsPais: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspPais'
    Left = 272
    Top = 128
    object cdsPaisID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPaisNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsPais: TDataSource
    DataSet = cdsPais
    Left = 328
    Top = 128
  end
  object qPais: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT NOME'
      'FROM PAIS'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 376
    Top = 56
    object qPaisNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
end
