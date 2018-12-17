object DMCadCob_TipoCadastro: TDMCadCob_TipoCadastro
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 466
  Top = 227
  Height = 296
  Width = 478
  object sdsCob_TipoCadastro: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CAD.*, B.NOME NOME_BANCO'#13#10'FROM COB_TIPO_CADASTRO CAD'#13#10'INN' +
      'ER JOIN BANCO B'#13#10'ON CAD.ID_BANCO = B.ID'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsCob_TipoCadastroID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCob_TipoCadastroCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object sdsCob_TipoCadastroNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsCob_TipoCadastroTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object sdsCob_TipoCadastroID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object sdsCob_TipoCadastroNOME_BANCO: TStringField
      FieldName = 'NOME_BANCO'
      ProviderFlags = []
      Size = 60
    end
    object sdsCob_TipoCadastroCOD_REDUZIDO: TStringField
      FieldName = 'COD_REDUZIDO'
      Size = 3
    end
    object sdsCob_TipoCadastroTIPO_INST: TStringField
      FieldName = 'TIPO_INST'
      Size = 3
    end
    object sdsCob_TipoCadastroTIPO_PROTESTO: TStringField
      FieldName = 'TIPO_PROTESTO'
      Size = 1
    end
    object sdsCob_TipoCadastroENVIAR_DIAS_PROTESTO: TStringField
      FieldName = 'ENVIAR_DIAS_PROTESTO'
      FixedChar = True
      Size = 1
    end
    object sdsCob_TipoCadastroGERAR_NOSSONUMERO: TStringField
      FieldName = 'GERAR_NOSSONUMERO'
      FixedChar = True
      Size = 1
    end
    object sdsCob_TipoCadastroGERAR_REMESSA: TStringField
      FieldName = 'GERAR_REMESSA'
      FixedChar = True
      Size = 1
    end
    object sdsCob_TipoCadastroTIPO_OCO: TStringField
      FieldName = 'TIPO_OCO'
      Size = 3
    end
  end
  object dspCob_TipoCadastro: TDataSetProvider
    DataSet = sdsCob_TipoCadastro
    OnUpdateError = dspCob_TipoCadastroUpdateError
    Left = 128
    Top = 32
  end
  object cdsCob_TipoCadastro: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspCob_TipoCadastro'
    Left = 192
    Top = 32
    object cdsCob_TipoCadastroID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCob_TipoCadastroCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Size = 3
    end
    object cdsCob_TipoCadastroNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 100
    end
    object cdsCob_TipoCadastroTIPO_REG: TStringField
      DisplayLabel = 'Tipo Reg'
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsCob_TipoCadastroID_BANCO: TIntegerField
      DisplayLabel = 'ID Banco'
      FieldName = 'ID_BANCO'
    end
    object cdsCob_TipoCadastroNOME_BANCO: TStringField
      DisplayLabel = 'Nome Banco'
      FieldName = 'NOME_BANCO'
      ProviderFlags = []
      Size = 60
    end
    object cdsCob_TipoCadastroCOD_REDUZIDO: TStringField
      FieldName = 'COD_REDUZIDO'
      Size = 3
    end
    object cdsCob_TipoCadastroTIPO_INST: TStringField
      FieldName = 'TIPO_INST'
      Size = 3
    end
    object cdsCob_TipoCadastroTIPO_PROTESTO: TStringField
      FieldName = 'TIPO_PROTESTO'
      Size = 1
    end
    object cdsCob_TipoCadastroENVIAR_DIAS_PROTESTO: TStringField
      FieldName = 'ENVIAR_DIAS_PROTESTO'
      FixedChar = True
      Size = 1
    end
    object cdsCob_TipoCadastroGERAR_NOSSONUMERO: TStringField
      FieldName = 'GERAR_NOSSONUMERO'
      FixedChar = True
      Size = 1
    end
    object cdsCob_TipoCadastroGERAR_REMESSA: TStringField
      FieldName = 'GERAR_REMESSA'
      FixedChar = True
      Size = 1
    end
    object cdsCob_TipoCadastroTIPO_OCO: TStringField
      FieldName = 'TIPO_OCO'
      Size = 3
    end
  end
  object dsCob_TipoCadastro: TDataSource
    DataSet = cdsCob_TipoCadastro
    Left = 264
    Top = 32
  end
  object sdsBanco: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM BANCO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 88
    object sdsBancoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsBancoCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object sdsBancoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dspBanco: TDataSetProvider
    DataSet = sdsBanco
    Left = 128
    Top = 88
  end
  object cdsBanco: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspBanco'
    Left = 192
    Top = 88
    object cdsBancoID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
      Required = True
    end
    object cdsBancoCODIGO: TStringField
      DisplayLabel = 'C'#243'digo Banco'
      FieldName = 'CODIGO'
      Size = 3
    end
    object cdsBancoNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsBanco: TDataSource
    DataSet = cdsBanco
    Left = 264
    Top = 88
  end
end
