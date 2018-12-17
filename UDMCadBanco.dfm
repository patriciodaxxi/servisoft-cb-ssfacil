object DMCadBanco: TDMCadBanco
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 523
  Top = 147
  Height = 296
  Width = 473
  object sdsBanco: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM BANCO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
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
    object sdsBancoOPCAO_GERAR_NOSSNUMERO: TStringField
      FieldName = 'OPCAO_GERAR_NOSSNUMERO'
      FixedChar = True
      Size = 1
    end
    object sdsBancoACBR_USAR_MONTAR_NOSSONUMERO: TStringField
      FieldName = 'ACBR_USAR_MONTAR_NOSSONUMERO'
      FixedChar = True
      Size = 1
    end
    object sdsBancoINICIAL_NOME_ARQ_REMESSA: TStringField
      FieldName = 'INICIAL_NOME_ARQ_REMESSA'
      Size = 2
    end
  end
  object dspBanco: TDataSetProvider
    DataSet = sdsBanco
    OnUpdateError = dspBancoUpdateError
    Left = 128
    Top = 32
  end
  object cdsBanco: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspBanco'
    OnNewRecord = cdsBancoNewRecord
    Left = 192
    Top = 32
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
    object cdsBancoOPCAO_GERAR_NOSSNUMERO: TStringField
      FieldName = 'OPCAO_GERAR_NOSSNUMERO'
      FixedChar = True
      Size = 1
    end
    object cdsBancoACBR_USAR_MONTAR_NOSSONUMERO: TStringField
      FieldName = 'ACBR_USAR_MONTAR_NOSSONUMERO'
      FixedChar = True
      Size = 1
    end
    object cdsBancoINICIAL_NOME_ARQ_REMESSA: TStringField
      FieldName = 'INICIAL_NOME_ARQ_REMESSA'
      Size = 2
    end
  end
  object dsBanco: TDataSource
    DataSet = cdsBanco
    Left = 264
    Top = 32
  end
end
