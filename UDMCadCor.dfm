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
end
