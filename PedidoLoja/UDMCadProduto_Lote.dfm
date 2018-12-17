object DMCadProduto_Lote: TDMCadProduto_Lote
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 230
  Top = 199
  Height = 362
  Width = 657
  object sdsProduto_Lote: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT L.*'#13#10'FROM PRODUTO_LOTE L'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 16
    object sdsProduto_LoteID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_LoteITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProduto_LoteNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object sdsProduto_LotePRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object sdsProduto_LotePRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
  end
  object dspProduto_Lote: TDataSetProvider
    DataSet = sdsProduto_Lote
    UpdateMode = upWhereKeyOnly
    Left = 136
    Top = 16
  end
  object cdsProduto_Lote: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspProduto_Lote'
    Left = 184
    Top = 16
    object cdsProduto_LoteID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_LoteITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProduto_LoteNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object cdsProduto_LotePRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsProduto_LotePRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
  end
  object dsProduto_Lote: TDataSource
    DataSet = cdsProduto_Lote
    Left = 224
    Top = 16
  end
  object qProdLote: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NUM_LOTE_CONTROLE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT L.*'
      'FROM PRODUTO_LOTE L'
      'WHERE L.ID = :ID'
      '  AND L.NUM_LOTE_CONTROLE = :NUM_LOTE_CONTROLE')
    SQLConnection = dmDatabase.scoDados
    Left = 384
    Top = 40
    object qProdLoteID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProdLoteITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qProdLoteNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object qProdLotePRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object qProdLotePRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
  end
  object qProd: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT P.PERC_MARGEMLUCRO'
      'FROM PRODUTO P'
      'WHERE P.ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 392
    Top = 96
    object qProdPERC_MARGEMLUCRO: TFloatField
      FieldName = 'PERC_MARGEMLUCRO'
    end
  end
end
