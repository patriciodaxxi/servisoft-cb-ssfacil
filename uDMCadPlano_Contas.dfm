object DMCadPlano_Contas: TDMCadPlano_Contas
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 382
  Top = 215
  Height = 388
  Width = 906
  object sdsPlano_Contas: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT C.*, CASE NIVEL'#13#10'           WHEN 9 THEN '#39'                ' +
      #39' ||  NOME'#13#10'           WHEN 8 THEN '#39'              '#39' ||  NOME'#13#10'  ' +
      '         WHEN 7 THEN '#39'            '#39' ||  NOME'#13#10'           WHEN 6 ' +
      'THEN '#39'          '#39' ||  NOME'#13#10'           WHEN 5 THEN '#39'        '#39' ||' +
      '  NOME'#13#10'           WHEN 4 THEN '#39'      '#39' ||  NOME'#13#10'           WHE' +
      'N 3 THEN '#39'    '#39' ||  NOME'#13#10'           WHEN 2 THEN '#39'  '#39' ||  NOME'#13#10 +
      '           WHEN 1 THEN NOME'#13#10'           ELSE NOME'#13#10'           EN' +
      'D AS NOME_AUX'#13#10'FROM PLANO_CONTAS C'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 32
    object sdsPlano_ContasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPlano_ContasCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 60
    end
    object sdsPlano_ContasNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsPlano_ContasDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object sdsPlano_ContasNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object sdsPlano_ContasTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object sdsPlano_ContasCOD_NATUREZA: TIntegerField
      FieldName = 'COD_NATUREZA'
    end
    object sdsPlano_ContasINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsPlano_ContasSUPERIOR: TIntegerField
      FieldName = 'SUPERIOR'
    end
    object sdsPlano_ContasDT_INICIO_VALIDADE: TDateField
      FieldName = 'DT_INICIO_VALIDADE'
    end
    object sdsPlano_ContasDT_FINAL_VALIDADE: TDateField
      FieldName = 'DT_FINAL_VALIDADE'
    end
    object sdsPlano_ContasNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      ProviderFlags = []
      Size = 116
    end
  end
  object dspPlano_Contas: TDataSetProvider
    DataSet = sdsPlano_Contas
    Options = [poCascadeUpdates]
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspPlano_ContasUpdateError
    Left = 144
    Top = 32
  end
  object cdsPlano_Contas: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspPlano_Contas'
    OnNewRecord = cdsPlano_ContasNewRecord
    Left = 208
    Top = 32
    object cdsPlano_ContasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPlano_ContasCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 60
    end
    object cdsPlano_ContasNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsPlano_ContasDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object cdsPlano_ContasNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object cdsPlano_ContasTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsPlano_ContasCOD_NATUREZA: TIntegerField
      FieldName = 'COD_NATUREZA'
    end
    object cdsPlano_ContasINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsPlano_ContasSUPERIOR: TIntegerField
      FieldName = 'SUPERIOR'
    end
    object cdsPlano_ContasDT_INICIO_VALIDADE: TDateField
      FieldName = 'DT_INICIO_VALIDADE'
    end
    object cdsPlano_ContasDT_FINAL_VALIDADE: TDateField
      FieldName = 'DT_FINAL_VALIDADE'
    end
    object cdsPlano_ContasNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      ProviderFlags = []
      Size = 116
    end
  end
  object dsPlano_Contas: TDataSource
    DataSet = cdsPlano_Contas
    Left = 280
    Top = 32
  end
  object sdsSuperior: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, CODIGO, NOME, NIVEL'#13#10'FROM PLANO_CONTAS'#13#10'WHERE TIPO_RE' +
      'G = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 48
    object sdsSuperiorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsSuperiorCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 60
    end
    object sdsSuperiorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsSuperiorNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
  end
  object dspSuperior: TDataSetProvider
    DataSet = sdsSuperior
    OnUpdateError = dspPlano_ContasUpdateError
    Left = 528
    Top = 48
  end
  object cdsSuperior: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSuperior'
    Left = 592
    Top = 48
    object cdsSuperiorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsSuperiorCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 60
    end
    object cdsSuperiorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsSuperiorNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
  end
  object dsSuperior: TDataSource
    DataSet = cdsSuperior
    Left = 664
    Top = 48
  end
  object sqProximo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MAX(CODIGO)'
      'FROM CONTA_ORCAMENTO'
      'WHERE CODIGO LIKE '#39':C%'#39)
    SQLConnection = dmDatabase.scoDados
    Left = 416
    Top = 208
    object sqProximoMAX: TStringField
      FieldName = 'MAX'
    end
  end
  object qCalculo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT SUM(CTA.VALOR) VALOR'
      'FROM CONTA_ORCAMENTO CTA'
      'WHERE CTA.inativo = '#39'N'#39
      '  AND CTA.tipo_despesa = '#39'F'#39)
    SQLConnection = dmDatabase.scoDados
    Left = 536
    Top = 256
    object qCalculoVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
end
