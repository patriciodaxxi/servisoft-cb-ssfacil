object DMCadContabilista: TDMCadContabilista
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 342
  Top = 72
  Height = 609
  Width = 850
  object sdsContabilista: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CONTABILISTA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsContabilistaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsContabilistaNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsContabilistaCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object sdsContabilistaCRC: TStringField
      FieldName = 'CRC'
      Size = 15
    end
    object sdsContabilistaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object sdsContabilistaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object sdsContabilistaCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object sdsContabilistaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object sdsContabilistaNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 10
    end
    object sdsContabilistaCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object sdsContabilistaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object sdsContabilistaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsContabilistaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sdsContabilistaDDD_FONE: TStringField
      FieldName = 'DDD_FONE'
      Size = 2
    end
    object sdsContabilistaFONE: TStringField
      FieldName = 'FONE'
      Size = 10
    end
    object sdsContabilistaDDD_FAX: TStringField
      FieldName = 'DDD_FAX'
      Size = 2
    end
    object sdsContabilistaFAX: TStringField
      FieldName = 'FAX'
      Size = 10
    end
    object sdsContabilistaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
  end
  object dspContabilista: TDataSetProvider
    DataSet = sdsContabilista
    OnUpdateError = dspContabilistaUpdateError
    Left = 128
    Top = 32
  end
  object cdsContabilista: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspContabilista'
    OnNewRecord = cdsContabilistaNewRecord
    Left = 192
    Top = 32
    object cdsContabilistaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsContabilistaNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsContabilistaCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object cdsContabilistaCRC: TStringField
      FieldName = 'CRC'
      Size = 15
    end
    object cdsContabilistaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsContabilistaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsContabilistaCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsContabilistaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsContabilistaNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 10
    end
    object cdsContabilistaCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsContabilistaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object cdsContabilistaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsContabilistaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsContabilistaDDD_FONE: TStringField
      FieldName = 'DDD_FONE'
      Size = 2
    end
    object cdsContabilistaFONE: TStringField
      FieldName = 'FONE'
      Size = 10
    end
    object cdsContabilistaDDD_FAX: TStringField
      FieldName = 'DDD_FAX'
      Size = 2
    end
    object cdsContabilistaFAX: TStringField
      FieldName = 'FAX'
      Size = 10
    end
    object cdsContabilistaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
  end
  object dsContabilista: TDataSource
    DataSet = cdsContabilista
    Left = 264
    Top = 32
  end
  object sdsCidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CID.ID, CID.NOME, CID.UF,  CID.ID_PROVEDOR, PRO.TIPO_NATU' +
      'REZA'#13#10' FROM CIDADE CID'#13#10'LEFT JOIN PROVEDOR PRO'#13#10'ON CID.ID_PROVED' +
      'OR = PRO.ID'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 88
    object sdsCidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object sdsCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sdsCidadeID_PROVEDOR: TIntegerField
      FieldName = 'ID_PROVEDOR'
    end
    object sdsCidadeTIPO_NATUREZA: TStringField
      FieldName = 'TIPO_NATUREZA'
      FixedChar = True
      Size = 1
    end
  end
  object dspCidade: TDataSetProvider
    DataSet = sdsCidade
    Left = 128
    Top = 88
  end
  object cdsCidade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCidade'
    Left = 192
    Top = 88
    object cdsCidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsCidadeID_PROVEDOR: TIntegerField
      FieldName = 'ID_PROVEDOR'
    end
    object cdsCidadeTIPO_NATUREZA: TStringField
      FieldName = 'TIPO_NATUREZA'
      FixedChar = True
      Size = 1
    end
  end
  object dsCidade: TDataSource
    DataSet = cdsCidade
    Left = 264
    Top = 88
  end
  object sdsUF: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM UF'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 50
    Top = 150
    object sdsUFUF: TStringField
      FieldName = 'UF'
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
  end
  object dspUF: TDataSetProvider
    DataSet = sdsUF
    Left = 122
    Top = 150
  end
  object cdsUF: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UF'
    Params = <>
    ProviderName = 'dspUF'
    Left = 186
    Top = 150
    object cdsUFUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
    object cdsUFPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsUFIDPAIS: TIntegerField
      FieldName = 'IDPAIS'
    end
    object cdsUFCODUF: TStringField
      FieldName = 'CODUF'
      Size = 2
    end
    object cdsUFPERC_ICMS_INTERNO: TFloatField
      FieldName = 'PERC_ICMS_INTERNO'
    end
  end
  object dsUF: TDataSource
    DataSet = cdsUF
    Left = 258
    Top = 150
  end
end
