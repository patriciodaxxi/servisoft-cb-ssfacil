object DMCadRet_Cadastro: TDMCadRet_Cadastro
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 281
  Top = 222
  Height = 296
  Width = 478
  object sdsRet_Cadastro: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CAD.*, B.NOME NOME_BANCO'#13#10'FROM RET_CADASTRO CAD'#13#10'INNER JO' +
      'IN BANCO B'#13#10'ON CAD.ID_BANCO = B.ID'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsRet_CadastroID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsRet_CadastroCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object sdsRet_CadastroNOME: TStringField
      FieldName = 'NOME'
      Size = 120
    end
    object sdsRet_CadastroTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object sdsRet_CadastroID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object sdsRet_CadastroNOME_BANCO: TStringField
      FieldName = 'NOME_BANCO'
      ProviderFlags = []
      Size = 60
    end
    object sdsRet_CadastroTIPO_RET: TStringField
      FieldName = 'TIPO_RET'
      Size = 3
    end
    object sdsRet_CadastroTIPO_LIQ: TStringField
      FieldName = 'TIPO_LIQ'
      Size = 3
    end
  end
  object dspRet_Cadastro: TDataSetProvider
    DataSet = sdsRet_Cadastro
    OnUpdateError = dspRet_CadastroUpdateError
    Left = 128
    Top = 32
  end
  object cdsRet_Cadastro: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspRet_Cadastro'
    Left = 192
    Top = 32
    object cdsRet_CadastroID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsRet_CadastroCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object cdsRet_CadastroNOME: TStringField
      FieldName = 'NOME'
      Size = 120
    end
    object cdsRet_CadastroTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsRet_CadastroID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object cdsRet_CadastroNOME_BANCO: TStringField
      FieldName = 'NOME_BANCO'
      ProviderFlags = []
      Size = 60
    end
    object cdsRet_CadastroTIPO_RET: TStringField
      FieldName = 'TIPO_RET'
      Size = 3
    end
    object cdsRet_CadastroTIPO_LIQ: TStringField
      FieldName = 'TIPO_LIQ'
      Size = 3
    end
  end
  object dsRet_Cadastro: TDataSource
    DataSet = cdsRet_Cadastro
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
