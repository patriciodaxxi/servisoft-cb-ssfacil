object DMCadOperacao_Nota: TDMCadOperacao_Nota
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 434
  Top = 216
  Height = 260
  Width = 569
  object sdsOperacao_Nota: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM OPERACAO_NOTA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 32
    object sdsOperacao_NotaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsOperacao_NotaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object sdsOperacao_NotaPEDIR_FINALIDADE: TStringField
      FieldName = 'PEDIR_FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object sdsOperacao_NotaNATUREZA_NOTA: TStringField
      FieldName = 'NATUREZA_NOTA'
      Size = 60
    end
    object sdsOperacao_NotaSERIE_NFE: TStringField
      FieldName = 'SERIE_NFE'
      Size = 3
    end
    object sdsOperacao_NotaTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
    object sdsOperacao_NotaMOSTRA_EDI: TStringField
      FieldName = 'MOSTRA_EDI'
      FixedChar = True
      Size = 1
    end
    object sdsOperacao_NotaMOSTRAR_CLI_TRIANG2: TStringField
      FieldName = 'MOSTRAR_CLI_TRIANG2'
      FixedChar = True
      Size = 1
    end
  end
  object dspOperacao_Nota: TDataSetProvider
    DataSet = sdsOperacao_Nota
    OnUpdateError = dspOperacao_NotaUpdateError
    Left = 160
    Top = 32
  end
  object cdsOperacao_Nota: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspOperacao_Nota'
    OnNewRecord = cdsOperacao_NotaNewRecord
    Left = 224
    Top = 32
    object cdsOperacao_NotaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOperacao_NotaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsOperacao_NotaPEDIR_FINALIDADE: TStringField
      FieldName = 'PEDIR_FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object cdsOperacao_NotaNATUREZA_NOTA: TStringField
      FieldName = 'NATUREZA_NOTA'
      Size = 60
    end
    object cdsOperacao_NotaSERIE_NFE: TStringField
      FieldName = 'SERIE_NFE'
      Size = 3
    end
    object cdsOperacao_NotaTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsOperacao_NotaMOSTRA_EDI: TStringField
      FieldName = 'MOSTRA_EDI'
      FixedChar = True
      Size = 1
    end
    object cdsOperacao_NotaMOSTRAR_CLI_TRIANG2: TStringField
      FieldName = 'MOSTRAR_CLI_TRIANG2'
      FixedChar = True
      Size = 1
    end
  end
  object dsOperacao_Nota: TDataSource
    DataSet = cdsOperacao_Nota
    Left = 296
    Top = 32
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT CONTROLAR_SERIE_OPERACAO'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 336
    Top = 120
    object qParametrosCONTROLAR_SERIE_OPERACAO: TStringField
      FieldName = 'CONTROLAR_SERIE_OPERACAO'
      FixedChar = True
      Size = 1
    end
  end
end
