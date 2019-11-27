object DMCadCor: TDMCadCor
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 523
  Top = 147
  Height = 296
  Width = 473
  object sdsCor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM COR'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsCorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCorNOME: TStringField
      FieldName = 'NOME'
      Size = 45
    end
    object sdsCorPANTONE: TStringField
      FieldName = 'PANTONE'
      Size = 15
    end
    object sdsCorPRECO_MT: TFloatField
      FieldName = 'PRECO_MT'
    end
    object sdsCorPRECO_M2: TFloatField
      FieldName = 'PRECO_M2'
    end
  end
  object dspCor: TDataSetProvider
    DataSet = sdsCor
    OnUpdateError = dspCorUpdateError
    Left = 128
    Top = 32
  end
  object cdsCor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCor'
    Left = 192
    Top = 32
    object cdsCorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCorNOME: TStringField
      FieldName = 'NOME'
      Size = 45
    end
    object cdsCorPANTONE: TStringField
      FieldName = 'PANTONE'
      Size = 15
    end
    object cdsCorPRECO_MT: TFloatField
      FieldName = 'PRECO_MT'
      DisplayFormat = '0.000#'
    end
    object cdsCorPRECO_M2: TFloatField
      FieldName = 'PRECO_M2'
      DisplayFormat = '0.000#'
    end
  end
  object dsCor: TDataSource
    DataSet = cdsCor
    Left = 264
    Top = 32
  end
  object qVerifica_Cor: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_COR_COMBINACAO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select pc.id'
      'from produto_comb pc'
      'where pc.ID_COR_COMBINACAO = :ID_COR_COMBINACAO')
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 96
    object qVerifica_CorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object qVerifica_Nome: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select c.id, c.nome'
      'from cor c'
      'where c.id <> :id and c.nome = :nome')
    SQLConnection = dmDatabase.scoDados
    Left = 192
    Top = 100
    object qVerifica_NomeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qVerifica_NomeNOME: TStringField
      FieldName = 'NOME'
      Size = 45
    end
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT P.empresa_ambientes'
      'FROM PARAMETROS P')
    SQLConnection = dmDatabase.scoDados
    Left = 288
    Top = 115
    object qParametrosEMPRESA_AMBIENTES: TStringField
      FieldName = 'EMPRESA_AMBIENTES'
      FixedChar = True
      Size = 1
    end
  end
end
