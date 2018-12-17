object DMCadUnidade: TDMCadUnidade
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 356
  Top = 222
  Height = 413
  Width = 700
  object sdsUnidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM UNIDADE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 32
    object sdsUnidadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object sdsUnidadeCONVERSOR: TFloatField
      FieldName = 'CONVERSOR'
    end
    object sdsUnidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object sdsUnidadeEXPORTACAO: TStringField
      FieldName = 'EXPORTACAO'
      FixedChar = True
      Size = 1
    end
    object sdsUnidadeFRACIONAVEL: TStringField
      FieldName = 'FRACIONAVEL'
      FixedChar = True
      Size = 1
    end
    object sdsUnidadeFATOR_CALCULO: TFloatField
      FieldName = 'FATOR_CALCULO'
    end
  end
  object dspUnidade: TDataSetProvider
    DataSet = sdsUnidade
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspUnidadeUpdateError
    Left = 168
    Top = 32
  end
  object cdsUnidade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UNIDADE'
    Params = <>
    ProviderName = 'dspUnidade'
    Left = 232
    Top = 32
    object cdsUnidadeUNIDADE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object cdsUnidadeCONVERSOR: TFloatField
      DisplayLabel = 'Conversor'
      FieldName = 'CONVERSOR'
    end
    object cdsUnidadeNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 30
    end
    object cdsUnidadesdsUnidade_Conv: TDataSetField
      FieldName = 'sdsUnidade_Conv'
    end
    object cdsUnidadeEXPORTACAO: TStringField
      FieldName = 'EXPORTACAO'
      FixedChar = True
      Size = 1
    end
    object cdsUnidadeFRACIONAVEL: TStringField
      FieldName = 'FRACIONAVEL'
      FixedChar = True
      Size = 1
    end
    object cdsUnidadeFATOR_CALCULO: TFloatField
      FieldName = 'FATOR_CALCULO'
    end
  end
  object dsUnidade: TDataSource
    DataSet = cdsUnidade
    Left = 304
    Top = 32
  end
  object dsUnidade_Mestre: TDataSource
    DataSet = sdsUnidade
    Left = 40
    Top = 80
  end
  object sdsUnidade_Conv: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM UNIDADE_CONV'#13#10'WHERE UNIDADE = :UNIDADE'
    DataSource = dsUnidade_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'UNIDADE'
        ParamType = ptInput
        Size = 7
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 128
    object sdsUnidade_ConvUNIDADE: TStringField
      FieldName = 'UNIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object sdsUnidade_ConvITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsUnidade_ConvUNIDADE_CONV: TStringField
      FieldName = 'UNIDADE_CONV'
      Size = 6
    end
    object sdsUnidade_ConvNOME: TStringField
      FieldName = 'NOME'
    end
    object sdsUnidade_ConvQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsUnidade_ConvTIPO_CONVERSOR: TStringField
      FieldName = 'TIPO_CONVERSOR'
      FixedChar = True
      Size = 1
    end
  end
  object cdsUnidade_Conv: TClientDataSet
    Aggregates = <>
    DataSetField = cdsUnidadesdsUnidade_Conv
    IndexFieldNames = 'UNIDADE;ITEM'
    Params = <>
    Left = 176
    Top = 128
    object cdsUnidade_ConvUNIDADE: TStringField
      FieldName = 'UNIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object cdsUnidade_ConvITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsUnidade_ConvUNIDADE_CONV: TStringField
      FieldName = 'UNIDADE_CONV'
      Size = 6
    end
    object cdsUnidade_ConvNOME: TStringField
      FieldName = 'NOME'
    end
    object cdsUnidade_ConvQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsUnidade_ConvTIPO_CONVERSOR: TStringField
      FieldName = 'TIPO_CONVERSOR'
      FixedChar = True
      Size = 1
    end
  end
  object dsUnidade_Conv: TDataSource
    DataSet = cdsUnidade_Conv
    Left = 264
    Top = 128
  end
  object sdsUnidade2: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT UNIDADE, NOME'#13#10'FROM UNIDADE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 400
    Top = 224
  end
  object dspUnidade2: TDataSetProvider
    DataSet = sdsUnidade2
    Left = 456
    Top = 224
  end
  object cdsUnidade2: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UNIDADE'
    Params = <>
    ProviderName = 'dspUnidade2'
    Left = 512
    Top = 224
    object cdsUnidade2UNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 6
    end
    object cdsUnidade2NOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsUnidade2: TDataSource
    DataSet = cdsUnidade2
    Left = 568
    Top = 224
  end
  object qParametros_Prod: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MOSTRAR_TAM_CALC '
      'FROM PARAMETROS_PROD')
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 64
    object qParametros_ProdMOSTRAR_TAM_CALC: TStringField
      FieldName = 'MOSTRAR_TAM_CALC'
      FixedChar = True
      Size = 1
    end
  end
  object qVerUnidade: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'UNIDADE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'UNIDADE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT COUNT(1) CONTADOR,'
      
        '(SELECT COUNT(1) CONTADOR_PROD FROM PRODUTO WHERE UNIDADE = :UNI' +
        'DADE)'
      'FROM movimento M'
      'WHERE M.UNIDADE = :UNIDADE'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 264
    Top = 280
    object qVerUnidadeCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      Required = True
    end
    object qVerUnidadeCONTADOR_PROD: TIntegerField
      FieldName = 'CONTADOR_PROD'
    end
  end
end
