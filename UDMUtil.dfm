object DMUtil: TDMUtil
  OldCreateOrder = False
  Left = 319
  Top = 214
  Height = 408
  Width = 575
  object sdsModulo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MODULO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 72
    object sdsModuloID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsModuloNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object sdsModuloTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object dspModulo: TDataSetProvider
    DataSet = sdsModulo
    Left = 104
    Top = 72
  end
  object cdsModulo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspModulo'
    Left = 152
    Top = 72
    object cdsModuloID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsModuloNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsModuloTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object dsModulo: TDataSource
    DataSet = cdsModulo
    Left = 200
    Top = 72
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT P.id_resp_suporte, EMPRESA_LIVRARIA'
      'FROM PARAMETROS P')
    SQLConnection = dmDatabase.scoDados
    Left = 288
    Top = 184
    object qParametrosID_RESP_SUPORTE: TIntegerField
      FieldName = 'ID_RESP_SUPORTE'
    end
    object qParametrosEMPRESA_LIVRARIA: TStringField
      FieldName = 'EMPRESA_LIVRARIA'
      FixedChar = True
      Size = 1
    end
  end
  object qParametros_Usuario: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'USUARIO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT UTILIZA_PESSOA_REDUZIDO '
      'FROM PARAMETROS_USUARIO WHERE'
      'USUARIO = :USUARIO')
    SQLConnection = dmDatabase.scoDados
    Left = 376
    Top = 248
    object qParametros_UsuarioUTILIZA_PESSOA_REDUZIDO: TStringField
      FieldName = 'UTILIZA_PESSOA_REDUZIDO'
      FixedChar = True
      Size = 1
    end
  end
end
