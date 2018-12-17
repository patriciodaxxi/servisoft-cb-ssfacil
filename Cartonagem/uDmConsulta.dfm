object dmConsulta: TdmConsulta
  OldCreateOrder = False
  Left = 422
  Top = 114
  Height = 332
  Width = 421
  object sdsAcabado: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.ID, P.NOME, P.REFERENCIA, F.FD_COMPR, F.FD_LARGURA, F.F' +
      'D_ALTURA'#13#10'FROM  PRODUTO P'#13#10'LEFT JOIN CARTO_ACABADO A ON (P.ID = ' +
      'A.ID)'#13#10'LEFT JOIN CARTO_FACA F ON (A.FACA_ID = F.ID)'#13#10'WHERE TIPO_' +
      'REG = '#39'P'#39' '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 48
    Top = 24
    object sdsAcabadoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsAcabadoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsAcabadoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsAcabadoFD_COMPR: TFMTBCDField
      FieldName = 'FD_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsAcabadoFD_LARGURA: TFMTBCDField
      FieldName = 'FD_LARGURA'
      Precision = 15
      Size = 2
    end
    object sdsAcabadoFD_ALTURA: TFMTBCDField
      FieldName = 'FD_ALTURA'
      Precision = 15
      Size = 2
    end
  end
  object dspAcabado: TDataSetProvider
    DataSet = sdsAcabado
    Left = 88
    Top = 24
  end
  object cdsAcabado: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspAcabado'
    Left = 128
    Top = 24
    object cdsAcabadoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsAcabadoREFERENCIA: TStringField
      DisplayWidth = 15
      FieldName = 'REFERENCIA'
    end
    object cdsAcabadoNOME: TStringField
      DisplayWidth = 60
      FieldName = 'NOME'
      Size = 100
    end
    object cdsAcabadoFD_COMPR: TFMTBCDField
      FieldName = 'FD_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsAcabadoFD_LARGURA: TFMTBCDField
      FieldName = 'FD_LARGURA'
      Precision = 15
      Size = 2
    end
    object cdsAcabadoFD_ALTURA: TFMTBCDField
      FieldName = 'FD_ALTURA'
      Precision = 15
      Size = 2
    end
  end
  object dsAcabado: TDataSource
    DataSet = cdsAcabado
    Left = 176
    Top = 24
  end
  object sdsPessoa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT CODIGO, NOME'#13#10'FROM  PESSOA '#13#10'WHERE TP_CLIENTE = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 48
    Top = 72
    object sdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dspPessoa: TDataSetProvider
    DataSet = sdsPessoa
    Left = 88
    Top = 72
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspPessoa'
    Left = 128
    Top = 72
    object cdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsPessoa: TDataSource
    DataSet = cdsPessoa
    Left = 176
    Top = 72
  end
  object dspFaca: TDataSetProvider
    DataSet = sdsFaca
    Left = 88
    Top = 120
  end
  object sdsFaca: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, NOME, FD_COMPR, FD_LARGURA, FD_ALTURA'#13#10'FROM CARTO_FAC' +
      'A CF'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 48
    Top = 120
    object sdsFacaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFacaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsFacaFD_COMPR: TFMTBCDField
      FieldName = 'FD_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsFacaFD_LARGURA: TFMTBCDField
      FieldName = 'FD_LARGURA'
      Precision = 15
      Size = 2
    end
    object sdsFacaFD_ALTURA: TFMTBCDField
      FieldName = 'FD_ALTURA'
      Precision = 15
      Size = 2
    end
  end
  object cdsFaca: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFaca'
    Left = 128
    Top = 120
    object cdsFacaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFacaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsFacaFD_COMPR: TFMTBCDField
      FieldName = 'FD_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsFacaFD_LARGURA: TFMTBCDField
      FieldName = 'FD_LARGURA'
      Precision = 15
      Size = 2
    end
    object cdsFacaFD_ALTURA: TFMTBCDField
      FieldName = 'FD_ALTURA'
      Precision = 15
      Size = 2
    end
  end
  object dsFaca: TDataSource
    DataSet = cdsFaca
    Left = 176
    Top = 120
  end
  object dsFichaTecnica: TDataSource
    DataSet = cdsFichaTecnica
    Left = 176
    Top = 168
  end
  object cdsFichaTecnica: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFichaTecnica'
    Left = 128
    Top = 168
    object cdsFichaTecnicaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFichaTecnicaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object dspFichaTecnica: TDataSetProvider
    DataSet = sdsFichaTecnica
    Left = 88
    Top = 168
  end
  object sdsFichaTecnica: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT CFT.ID, CFT.NOME'#13#10'FROM CARTO_FT CFT'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 48
    Top = 168
    object sdsFichaTecnicaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFichaTecnicaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object sdsPasta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * '#13#10'FROM CARTO_PASTA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 48
    Top = 216
    object sdsPastaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPastaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object dspPasta: TDataSetProvider
    DataSet = sdsPasta
    Left = 88
    Top = 216
  end
  object cdsPasta: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'DESCRICAO'
    Params = <>
    ProviderName = 'dspPasta'
    Left = 128
    Top = 216
    object cdsPastaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPastaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object dsPasta: TDataSource
    DataSet = cdsPasta
    Left = 176
    Top = 216
  end
end
