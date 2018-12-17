object DMCadCidade: TDMCadCidade
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 281
  Top = 222
  Height = 328
  Width = 585
  object sdsCidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CIDADE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
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
    object sdsCidadeCODMUNICIPIO: TStringField
      FieldName = 'CODMUNICIPIO'
      Size = 7
    end
    object sdsCidadeID_PROVEDOR: TIntegerField
      FieldName = 'ID_PROVEDOR'
    end
    object sdsCidadeLINKNFSE: TStringField
      FieldName = 'LINKNFSE'
      Size = 200
    end
    object sdsCidadeFONE_PREFEITURA: TStringField
      FieldName = 'FONE_PREFEITURA'
      Size = 15
    end
    object sdsCidadeSITE_PREFEITURA: TStringField
      FieldName = 'SITE_PREFEITURA'
      Size = 200
    end
    object sdsCidadeEND_LOGO_PREFEITURA: TStringField
      FieldName = 'END_LOGO_PREFEITURA'
      Size = 250
    end
    object sdsCidadeCANCELAMENTO_NFSE: TStringField
      FieldName = 'CANCELAMENTO_NFSE'
      FixedChar = True
      Size = 1
    end
  end
  object dspCidade: TDataSetProvider
    DataSet = sdsCidade
    OnUpdateError = dspCidadeUpdateError
    Left = 128
    Top = 32
  end
  object cdsCidade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCidade'
    Left = 192
    Top = 32
    object cdsCidadeID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
      Required = True
    end
    object cdsCidadeNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 40
    end
    object cdsCidadeUF: TStringField
      Alignment = taCenter
      FieldName = 'UF'
      Size = 2
    end
    object cdsCidadeCODMUNICIPIO: TStringField
      Alignment = taCenter
      DisplayLabel = 'C'#243'd. Munic'#237'pio'
      FieldName = 'CODMUNICIPIO'
      Size = 7
    end
    object cdsCidadeID_PROVEDOR: TIntegerField
      FieldName = 'ID_PROVEDOR'
    end
    object cdsCidadeLINKNFSE: TStringField
      FieldName = 'LINKNFSE'
      Size = 200
    end
    object cdsCidadeFONE_PREFEITURA: TStringField
      FieldName = 'FONE_PREFEITURA'
      Size = 15
    end
    object cdsCidadeSITE_PREFEITURA: TStringField
      FieldName = 'SITE_PREFEITURA'
      Size = 200
    end
    object cdsCidadeEND_LOGO_PREFEITURA: TStringField
      FieldName = 'END_LOGO_PREFEITURA'
      Size = 250
    end
    object cdsCidadeCANCELAMENTO_NFSE: TStringField
      FieldName = 'CANCELAMENTO_NFSE'
      FixedChar = True
      Size = 1
    end
  end
  object dsCidade: TDataSource
    DataSet = cdsCidade
    Left = 264
    Top = 32
  end
  object sdsUF: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM UF'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 160
    Top = 128
    object sdsUFUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
  end
  object dspUF: TDataSetProvider
    DataSet = sdsUF
    Left = 208
    Top = 128
  end
  object cdsUF: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UF'
    Params = <>
    ProviderName = 'dspUF'
    Left = 272
    Top = 128
    object cdsUFUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
  end
  object dsUF: TDataSource
    DataSet = cdsUF
    Left = 328
    Top = 128
  end
  object sdsProvedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PROVEDOR'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 186
    Top = 214
    object sdsProvedorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProvedorNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object sdsProvedorOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsProvedorTIPO_NATUREZA: TStringField
      FieldName = 'TIPO_NATUREZA'
      FixedChar = True
      Size = 1
    end
  end
  object dspProvedor: TDataSetProvider
    DataSet = sdsProvedor
    Left = 258
    Top = 214
  end
  object cdsProvedor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspProvedor'
    Left = 322
    Top = 214
    object cdsProvedorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProvedorNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsProvedorOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsProvedorTIPO_NATUREZA: TStringField
      FieldName = 'TIPO_NATUREZA'
      FixedChar = True
      Size = 1
    end
  end
  object dsProvedor: TDataSource
    DataSet = cdsProvedor
    Left = 394
    Top = 214
  end
end
