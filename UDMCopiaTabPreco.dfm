object DMCopiaTabPreco: TDMCopiaTabPreco
  OldCreateOrder = False
  Left = 460
  Top = 281
  Height = 258
  Width = 368
  object sdsTab_Preco: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select *'#13#10'from TAB_PRECO'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 8
    object sdsTab_PrecoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTab_PrecoNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object sdsTab_PrecoDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object sdsTab_PrecoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsTab_PrecoDTINICIAL: TDateField
      FieldName = 'DTINICIAL'
    end
    object sdsTab_PrecoDTFINAL: TDateField
      FieldName = 'DTFINAL'
    end
    object sdsTab_PrecoTABPROMOCIONAL: TStringField
      FieldName = 'TABPROMOCIONAL'
      FixedChar = True
      Size = 1
    end
  end
  object dspTab_Preco: TDataSetProvider
    DataSet = sdsTab_Preco
    Left = 80
    Top = 8
  end
  object cdsTab_Preco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTab_Preco'
    Left = 112
    Top = 8
    object cdsTab_PrecoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_PrecoNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object cdsTab_PrecoDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object cdsTab_PrecoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsTab_PrecoDTINICIAL: TDateField
      FieldName = 'DTINICIAL'
    end
    object cdsTab_PrecoDTFINAL: TDateField
      FieldName = 'DTFINAL'
    end
    object cdsTab_PrecoTABPROMOCIONAL: TStringField
      FieldName = 'TABPROMOCIONAL'
      FixedChar = True
      Size = 1
    end
    object cdsTab_PrecosdsTab_Preco_Itens: TDataSetField
      FieldName = 'sdsTab_Preco_Itens'
    end
  end
  object dsTab_Preco: TDataSource
    DataSet = cdsTab_Preco
    Left = 144
    Top = 8
  end
  object dsMestre: TDataSource
    DataSet = sdsTab_Preco
    Left = 24
    Top = 64
  end
  object sdsTab_Preco_Itens: TSQLDataSet
    CommandText = 'select *'#13#10'from TAB_PRECO_ITENS '#13#10'where ID = :ID '
    DataSource = dsMestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 24
    Top = 112
    object sdsTab_Preco_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTab_Preco_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsTab_Preco_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsTab_Preco_ItensVLR_VENDA: TFloatField
      FieldName = 'VLR_VENDA'
    end
    object sdsTab_Preco_ItensID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
  end
  object cdsTab_Preco_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsTab_PrecosdsTab_Preco_Itens
    Params = <>
    Left = 88
    Top = 112
    object cdsTab_Preco_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_Preco_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsTab_Preco_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsTab_Preco_ItensVLR_VENDA: TFloatField
      FieldName = 'VLR_VENDA'
    end
    object cdsTab_Preco_ItensID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
  end
  object dsTab_Preco_Itens: TDataSource
    DataSet = cdsTab_Preco_Itens
    Left = 128
    Top = 112
  end
end
