object DMCadCBarra_Int: TDMCadCBarra_Int
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 523
  Top = 147
  Height = 296
  Width = 473
  object sdsCBarra_Int: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM CBARRA_INT'#13#10'WHERE ID_PRODUTO = :ID_PRODUTO'#13#10'   AN' +
      'D ID_COR = :ID_COR'#13#10'   AND TAMANHO = :TAMANHO'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_COR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TAMANHO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 32
    object sdsCBarra_IntID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCBarra_IntCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 13
    end
    object sdsCBarra_IntID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsCBarra_IntID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsCBarra_IntTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsCBarra_IntSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
    end
  end
  object dspCBarra_Int: TDataSetProvider
    DataSet = sdsCBarra_Int
    Left = 112
    Top = 32
  end
  object cdsCBarra_Int: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCBarra_Int'
    Left = 176
    Top = 32
    object cdsCBarra_IntID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCBarra_IntCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 13
    end
    object cdsCBarra_IntID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsCBarra_IntID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsCBarra_IntTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsCBarra_IntSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
    end
  end
  object dsCBarra_Int: TDataSource
    DataSet = cdsCBarra_Int
    Left = 240
    Top = 32
  end
end
