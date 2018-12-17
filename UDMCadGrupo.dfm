object DMCadGrupo: TDMCadGrupo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 293
  Top = 165
  Height = 410
  Width = 774
  object sdsGrupo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT G.ID, G.NOME, G.TIPO, G.CODIGO, G.NIVEL, G.SUPERIOR, G.CO' +
      'D_PRINCIPAL, TIPO_PROD,'#13#10'G.UNIDADE, G.ID_NCM,'#13#10'CASE NIVEL'#13#10'     ' +
      '      WHEN 5 THEN '#39'        '#39' ||  NOME'#13#10'           WHEN 4 THEN '#39' ' +
      '     '#39' ||  NOME'#13#10'           WHEN 3 THEN '#39'    '#39' ||  NOME'#13#10'       ' +
      '    WHEN 2 THEN '#39'  '#39' ||  NOME'#13#10'           WHEN 1 THEN NOME'#13#10'    ' +
      '       ELSE G.NOME'#13#10'           END AS NOME_AUX'#13#10'FROM GRUPO G'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 64
    Top = 24
    object sdsGrupoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsGrupoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object sdsGrupoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsGrupoCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object sdsGrupoNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object sdsGrupoSUPERIOR: TStringField
      FieldName = 'SUPERIOR'
    end
    object sdsGrupoCOD_PRINCIPAL: TIntegerField
      FieldName = 'COD_PRINCIPAL'
    end
    object sdsGrupoTIPO_PROD: TStringField
      FieldName = 'TIPO_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsGrupoNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      ProviderFlags = []
      Size = 48
    end
    object sdsGrupoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsGrupoID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
  end
  object dspGrupo: TDataSetProvider
    DataSet = sdsGrupo
    UpdateMode = upWhereKeyOnly
    Left = 128
    Top = 24
  end
  object cdsGrupo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspGrupo'
    OnNewRecord = cdsGrupoNewRecord
    Left = 184
    Top = 24
    object cdsGrupoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsGrupoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsGrupoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsGrupoCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsGrupoNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object cdsGrupoSUPERIOR: TStringField
      FieldName = 'SUPERIOR'
    end
    object cdsGrupoCOD_PRINCIPAL: TIntegerField
      FieldName = 'COD_PRINCIPAL'
    end
    object cdsGrupoNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      ProviderFlags = []
      Size = 48
    end
    object cdsGrupoTIPO_PROD: TStringField
      FieldName = 'TIPO_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsGrupoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsGrupoID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
  end
  object dsGrupo: TDataSource
    DataSet = cdsGrupo
    Left = 264
    Top = 24
  end
  object sdsSuperior: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, CODIGO, NOME, NIVEL, COD_PRINCIPAL'#13#10'FROM GRUPO'#13#10'WHERE' +
      ' TIPO = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 88
    object sdsSuperiorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsSuperiorCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object sdsSuperiorNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object sdsSuperiorNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object sdsSuperiorCOD_PRINCIPAL: TIntegerField
      FieldName = 'COD_PRINCIPAL'
    end
  end
  object dspSuperior: TDataSetProvider
    DataSet = sdsSuperior
    Left = 128
    Top = 88
  end
  object cdsSuperior: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspSuperior'
    Left = 192
    Top = 88
    object cdsSuperiorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsSuperiorCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsSuperiorNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object cdsSuperiorNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsSuperiorCOD_PRINCIPAL: TIntegerField
      FieldName = 'COD_PRINCIPAL'
    end
  end
  object dsSuperior: TDataSource
    DataSet = cdsSuperior
    Left = 264
    Top = 88
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT EMPRESA_AMBIENTES'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 400
    Top = 48
    object qParametrosEMPRESA_AMBIENTES: TStringField
      FieldName = 'EMPRESA_AMBIENTES'
      FixedChar = True
      Size = 1
    end
  end
  object qParametros_Prod: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT QTD_CARACTER_NIVEL_GR'
      'FROM PARAMETROS_PROD')
    SQLConnection = dmDatabase.scoDados
    Left = 400
    Top = 128
    object qParametros_ProdQTD_CARACTER_NIVEL_GR: TIntegerField
      FieldName = 'QTD_CARACTER_NIVEL_GR'
    end
  end
  object sdsUnidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM UNIDADE'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 208
  end
  object dspUnidade: TDataSetProvider
    DataSet = sdsUnidade
    Left = 488
    Top = 208
  end
  object cdsUnidade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UNIDADE'
    Params = <>
    ProviderName = 'dspUnidade'
    Left = 520
    Top = 208
    object cdsUnidadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 6
    end
    object cdsUnidadeCONVERSOR: TFloatField
      FieldName = 'CONVERSOR'
    end
    object cdsUnidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsUnidade: TDataSource
    DataSet = cdsUnidade
    Left = 552
    Top = 208
  end
  object sdsNCM: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_NCM'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 448
    Top = 259
  end
  object dspNCM: TDataSetProvider
    DataSet = sdsNCM
    Left = 480
    Top = 259
  end
  object cdsNCM: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NCM'
    Params = <>
    ProviderName = 'dspNCM'
    Left = 512
    Top = 259
    object cdsNCMID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNCMNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsNCMNOME: TStringField
      FieldName = 'NOME'
      Size = 250
    end
  end
  object dsNCM: TDataSource
    DataSet = cdsNCM
    Left = 544
    Top = 259
  end
end
