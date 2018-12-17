object DMCadCadastro_Valores: TDMCadCadastro_Valores
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 527
  Top = 198
  Height = 296
  Width = 473
  object sdsCadastro_Valores: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CADASTRO_VALORES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsCadastro_ValoresID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCadastro_ValoresNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsCadastro_ValoresID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object sdsCadastro_ValoresORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
  end
  object dspCadastro_Valores: TDataSetProvider
    DataSet = sdsCadastro_Valores
    OnUpdateError = dspCadastro_ValoresUpdateError
    Left = 128
    Top = 32
  end
  object cdsCadastro_Valores: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCadastro_Valores'
    Left = 192
    Top = 32
    object cdsCadastro_ValoresID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCadastro_ValoresNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsCadastro_ValoresID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsCadastro_ValoresORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
  end
  object dsCadastro_Valores: TDataSource
    DataSet = cdsCadastro_Valores
    Left = 264
    Top = 32
  end
  object sdsContaOrcamento: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT C.ID, C.DESCRICAO, C.TIPO, C.CODIGO, CASE NIVEL'#13#10'        ' +
      '   WHEN 5 THEN '#39'          '#39' ||  DESCRICAO'#13#10'           WHEN 4 THE' +
      'N '#39'        '#39' ||  DESCRICAO'#13#10'           WHEN 3 THEN '#39'      '#39' ||  ' +
      'DESCRICAO'#13#10'           WHEN 2 THEN '#39'    '#39' ||  DESCRICAO'#13#10'        ' +
      '   WHEN 1 THEN DESCRICAO'#13#10'           ELSE DESCRICAO'#13#10'           ' +
      'END AS NOME_AUX'#13#10'FROM CONTA_ORCAMENTO C '#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 233
    Top = 128
  end
  object dspContaOrcamento: TDataSetProvider
    DataSet = sdsContaOrcamento
    Left = 265
    Top = 128
  end
  object cdsContaOrcamento: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'DESCRICAO'
    Params = <>
    ProviderName = 'dspContaOrcamento'
    Left = 305
    Top = 128
    object cdsContaOrcamentoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsContaOrcamentoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsContaOrcamentoCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsContaOrcamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsContaOrcamentoNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      Size = 60
    end
  end
  object dsContaOrcamento: TDataSource
    DataSet = cdsContaOrcamento
    Left = 345
    Top = 128
  end
  object qParametros_Fin: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT EXIGIR_CONTA_ORC_DUP'
      'FROM PARAMETROS_FIN')
    SQLConnection = dmDatabase.scoDados
    Left = 120
    Top = 144
    object qParametros_FinEXIGIR_CONTA_ORC_DUP: TStringField
      FieldName = 'EXIGIR_CONTA_ORC_DUP'
      FixedChar = True
      Size = 1
    end
  end
end
