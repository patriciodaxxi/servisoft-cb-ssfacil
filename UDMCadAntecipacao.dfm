object DMCadAntecipacao: TDMCadAntecipacao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 444
  Top = 164
  Height = 356
  Width = 511
  object sdsAutenticacao: TSQLDataSet
    CommandText = 
      'select ANT.*, PES.NOME NOME_PESSOA'#13#10'from ANTECIPACAO ANT'#13#10'left j' +
      'oin PESSOA PES on ANT.ID_PESSOA = PES.CODIGO '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 24
    object sdsAutenticacaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsAutenticacaoDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object sdsAutenticacaoID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object sdsAutenticacaoTIPO_PES: TStringField
      FieldName = 'TIPO_PES'
      FixedChar = True
      Size = 1
    end
    object sdsAutenticacaoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sdsAutenticacaoTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object sdsAutenticacaoNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object sdsAutenticacaoSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object sdsAutenticacaoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsAutenticacaoID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object sdsAutenticacaoID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object sdsAutenticacaoNUM_OC: TIntegerField
      FieldName = 'NUM_OC'
    end
    object sdsAutenticacaoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsAutenticacaoNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      ProviderFlags = []
      Size = 60
    end
  end
  object dspAutenticacao: TDataSetProvider
    DataSet = sdsAutenticacao
    Left = 136
    Top = 24
  end
  object cdsAutenticacao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAutenticacao'
    OnNewRecord = cdsAutenticacaoNewRecord
    Left = 232
    Top = 24
    object cdsAutenticacaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsAutenticacaoDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object cdsAutenticacaoID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsAutenticacaoTIPO_PES: TStringField
      FieldName = 'TIPO_PES'
      FixedChar = True
      Size = 1
    end
    object cdsAutenticacaoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsAutenticacaoTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object cdsAutenticacaoNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object cdsAutenticacaoSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsAutenticacaoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsAutenticacaoID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsAutenticacaoID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object cdsAutenticacaoNUM_OC: TIntegerField
      FieldName = 'NUM_OC'
    end
    object cdsAutenticacaoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsAutenticacaoNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
  end
  object dsAutenticacao: TDataSource
    DataSet = cdsAutenticacao
    Left = 320
    Top = 24
  end
  object sdsFilial: TSQLDataSet
    CommandText = 'SELECT *'#13#10'FROM FILIAL'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 144
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 136
    Top = 144
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFilial'
    Left = 232
    Top = 144
    object cdsFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsFilialNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 320
    Top = 144
  end
  object sdsPessoa: TSQLDataSet
    CommandText = 'select codigo,nome from pessoa'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 208
    object sdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = []
      Required = True
    end
    object sdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dspPessoa: TDataSetProvider
    DataSet = sdsPessoa
    Left = 136
    Top = 208
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoa'
    Left = 232
    Top = 208
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
    Left = 320
    Top = 208
  end
end
