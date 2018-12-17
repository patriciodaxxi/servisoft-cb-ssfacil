object DMEstoque_Res: TDMEstoque_Res
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 270
  Top = 252
  Height = 304
  Width = 631
  object sdsEstoque_Mov_Res: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM ESTOQUE_MOV_RES'#13#10'WHERE ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 32
    object sdsEstoque_Mov_ResID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsEstoque_Mov_ResID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsEstoque_Mov_ResID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsEstoque_Mov_ResTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsEstoque_Mov_ResNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object sdsEstoque_Mov_ResQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsEstoque_Mov_ResDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsEstoque_Mov_ResTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object sdsEstoque_Mov_ResFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsEstoque_Mov_ResQTD2: TFloatField
      FieldName = 'QTD2'
    end
    object sdsEstoque_Mov_ResTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 3
    end
    object sdsEstoque_Mov_ResQTD_ENT: TFloatField
      FieldName = 'QTD_ENT'
    end
    object sdsEstoque_Mov_ResQTD_SAI: TFloatField
      FieldName = 'QTD_SAI'
    end
    object sdsEstoque_Mov_ResNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
  end
  object dspEstoque_Mov_Res: TDataSetProvider
    DataSet = sdsEstoque_Mov_Res
    Left = 136
    Top = 32
  end
  object cdsEstoque_Mov_Res: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspEstoque_Mov_Res'
    OnReconcileError = cdsEstoque_Mov_ResReconcileError
    Left = 192
    Top = 32
    object cdsEstoque_Mov_ResID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEstoque_Mov_ResID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsEstoque_Mov_ResID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsEstoque_Mov_ResTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsEstoque_Mov_ResNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object cdsEstoque_Mov_ResQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsEstoque_Mov_ResDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsEstoque_Mov_ResTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object cdsEstoque_Mov_ResFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsEstoque_Mov_ResQTD2: TFloatField
      FieldName = 'QTD2'
    end
    object cdsEstoque_Mov_ResTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 3
    end
    object cdsEstoque_Mov_ResQTD_ENT: TFloatField
      FieldName = 'QTD_ENT'
    end
    object cdsEstoque_Mov_ResQTD_SAI: TFloatField
      FieldName = 'QTD_SAI'
    end
    object cdsEstoque_Mov_ResNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
  end
  object dsEstoque_Mov_Res: TDataSource
    DataSet = cdsEstoque_Mov_Res
    Left = 248
    Top = 32
  end
  object sdsCombinacao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.ID ID_PRODUTO, P.NOME, p.id_cor_combinacao'#13#10'FROM PRODUT' +
      'O_COMB P'#13#10'WHERE P.ID = :ID'#13#10'  AND P.INATIVO = '#39'N'#39#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 400
    Top = 16
  end
  object dspCombinacao: TDataSetProvider
    DataSet = sdsCombinacao
    Left = 432
    Top = 16
  end
  object cdsCombinacao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCombinacao'
    Left = 464
    Top = 16
    object cdsCombinacaoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cdsCombinacaoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsCombinacaoID_COR_COMBINACAO: TIntegerField
      FieldName = 'ID_COR_COMBINACAO'
    end
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.ID'#13#10', P.REFERENCIA'#13#10', P.NOME'#13#10', P.UNIDADE'#13#10', P.INATIVO'#13 +
      #10', P.TIPO_REG'#13#10'FROM PRODUTO P'#13#10'WHERE INATIVO = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 385
    Top = 70
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 417
    Top = 70
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspProduto'
    Left = 457
    Top = 70
    object cdsProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 497
    Top = 70
  end
  object dsCombinacao: TDataSource
    DataSet = cdsCombinacao
    Left = 496
    Top = 16
  end
  object sdsProduto_Tam: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO_TAM'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 368
    Top = 128
  end
  object dspProduto_Tam: TDataSetProvider
    DataSet = sdsProduto_Tam
    Left = 408
    Top = 128
  end
  object cdsProduto_Tam: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto_Tam'
    Left = 448
    Top = 128
    object cdsProduto_TamID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProduto_TamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
  end
  object dsProduto_Tam: TDataSource
    DataSet = cdsProduto_Tam
    Left = 488
    Top = 128
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME, NOME_INTERNO'#13#10'FROM FILIAL'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 361
    Top = 185
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 393
    Top = 185
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 433
    Top = 185
    object cdsFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsFilialNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 473
    Top = 185
  end
end
