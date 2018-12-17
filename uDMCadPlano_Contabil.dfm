object DMCadPlano_Contabil: TDMCadPlano_Contabil
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 347
  Top = 276
  Height = 301
  Width = 568
  object sdsPlano_Contabil: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT C.*, CASE'#13#10'   WHEN NIVEL = 1 THEN NOME'#13#10'   WHEN NIVEL = 2' +
      ' THEN LPAD('#39' '#39', NIVEL, '#39' '#39')||C.NOME'#13#10'   WHEN NIVEL > 2 THEN LPAD' +
      '('#39' '#39', (NIVEL+2-4+NIVEL), '#39' '#39')||C.NOME'#13#10'   END AS NOME_AUX'#13#10'FROM ' +
      'PLANO_CONTABIL C'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 24
    object sdsPlano_ContabilID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPlano_ContabilCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 60
    end
    object sdsPlano_ContabilNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsPlano_ContabilDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object sdsPlano_ContabilNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object sdsPlano_ContabilTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object sdsPlano_ContabilCOD_NATUREZA: TIntegerField
      FieldName = 'COD_NATUREZA'
    end
    object sdsPlano_ContabilINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsPlano_ContabilSUPERIOR: TIntegerField
      FieldName = 'SUPERIOR'
    end
    object sdsPlano_ContabilDT_INICIO_VALIDADE: TDateField
      FieldName = 'DT_INICIO_VALIDADE'
    end
    object sdsPlano_ContabilDT_FINAL_VALIDADE: TDateField
      FieldName = 'DT_FINAL_VALIDADE'
    end
    object sdsPlano_ContabilNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      ProviderFlags = []
      Size = 32765
    end
    object sdsPlano_ContabilCODIGO_REDUZIDO: TIntegerField
      FieldName = 'CODIGO_REDUZIDO'
    end
  end
  object dspPlano_Contabil: TDataSetProvider
    DataSet = sdsPlano_Contabil
    OnUpdateError = dspPlano_ContabilUpdateError
    Left = 128
    Top = 24
  end
  object cdsPlano_Contabil: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlano_Contabil'
    OnNewRecord = cdsPlano_ContabilNewRecord
    Left = 216
    Top = 24
    object cdsPlano_ContabilID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPlano_ContabilCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 60
    end
    object cdsPlano_ContabilNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsPlano_ContabilDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object cdsPlano_ContabilNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object cdsPlano_ContabilTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsPlano_ContabilCOD_NATUREZA: TIntegerField
      FieldName = 'COD_NATUREZA'
    end
    object cdsPlano_ContabilINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsPlano_ContabilSUPERIOR: TIntegerField
      FieldName = 'SUPERIOR'
    end
    object cdsPlano_ContabilDT_INICIO_VALIDADE: TDateField
      FieldName = 'DT_INICIO_VALIDADE'
    end
    object cdsPlano_ContabilDT_FINAL_VALIDADE: TDateField
      FieldName = 'DT_FINAL_VALIDADE'
    end
    object cdsPlano_ContabilNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      ProviderFlags = []
      Size = 32765
    end
    object cdsPlano_ContabilCODIGO_REDUZIDO: TIntegerField
      FieldName = 'CODIGO_REDUZIDO'
    end
  end
  object dsPlano_Contabil: TDataSource
    DataSet = cdsPlano_Contabil
    Left = 288
    Top = 24
  end
  object sdsSuperior: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, CODIGO, NOME, NIVEL'#13#10'FROM PLANO_CONTABIL'#13#10'WHERE TIPO_' +
      'REG = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 96
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
    Left = 112
    Top = 96
  end
  object cdsSuperior: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSuperior'
    Left = 168
    Top = 96
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
    Left = 224
    Top = 96
  end
  object qUltimoCodReduzido: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select max(codigo_reduzido)AS ULTIMO_CODIGO from plano_contabil')
    SQLConnection = dmDatabase.scoDados
    Left = 184
    Top = 176
    object qUltimoCodReduzidoULTIMO_CODIGO: TIntegerField
      FieldName = 'ULTIMO_CODIGO'
    end
  end
end
