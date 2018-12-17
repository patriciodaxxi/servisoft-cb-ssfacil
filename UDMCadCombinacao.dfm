object DMCadCombinacao: TDMCadCombinacao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 432
  Top = 227
  Height = 285
  Width = 631
  object sdsCombinacao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM COMBINACAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsCombinacaoID: TFMTBCDField
      FieldName = 'ID'
      Required = True
      Precision = 15
      Size = 0
    end
    object sdsCombinacaoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsCombinacaoITEM_COMBINACAO: TIntegerField
      FieldName = 'ITEM_COMBINACAO'
    end
    object sdsCombinacaoID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsCombinacaoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsCombinacaoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
  end
  object dspCombinacao: TDataSetProvider
    DataSet = sdsCombinacao
    OnUpdateError = dspCombinacaoUpdateError
    Left = 128
    Top = 32
  end
  object cdsCombinacao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCombinacao'
    Left = 192
    Top = 32
    object cdsCombinacaoID: TFMTBCDField
      FieldName = 'ID'
      Required = True
      Precision = 15
      Size = 0
    end
    object cdsCombinacaoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsCombinacaoITEM_COMBINACAO: TIntegerField
      FieldName = 'ITEM_COMBINACAO'
    end
    object cdsCombinacaoID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsCombinacaoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsCombinacaoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
  end
  object dsCombinacao: TDataSource
    DataSet = cdsCombinacao
    Left = 264
    Top = 32
  end
  object qCombinacao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID'
      'FROM COMBINACAO'
      'WHERE NOME = :NOME')
    SQLConnection = dmDatabase.scoDados
    Left = 384
    Top = 184
    object qCombinacaoID: TFMTBCDField
      FieldName = 'ID'
      Required = True
      Precision = 15
      Size = 0
    end
  end
end
