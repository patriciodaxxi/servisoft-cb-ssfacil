object DMCopiaDoc: TDMCopiaDoc
  OldCreateOrder = False
  Left = 396
  Top = 200
  Height = 368
  Width = 688
  object mAux: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'Item'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 392
    Top = 111
    Data = {
      320000009619E0BD010000001800000002000000000003000000320002494404
      00010000000000044974656D04000100000000000000}
    object mAuxID: TIntegerField
      FieldName = 'ID'
    end
    object mAuxItem: TIntegerField
      FieldName = 'Item'
    end
  end
  object sdsDocEstoque: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM DOCESTOQUE'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 128
    Top = 3
    object sdsDocEstoqueID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDocEstoqueDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object sdsDocEstoqueFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsDocEstoqueTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object sdsDocEstoqueVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsDocEstoqueID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object sdsDocEstoqueOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsDocEstoqueID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object sdsDocEstoqueTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object sdsDocEstoqueID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object sdsDocEstoqueID_LOCAL_DESTINO: TIntegerField
      FieldName = 'ID_LOCAL_DESTINO'
    end
    object sdsDocEstoqueINF_CODBARRA: TStringField
      FieldName = 'INF_CODBARRA'
      FixedChar = True
      Size = 1
    end
    object sdsDocEstoqueNUM_REQUISICAO: TIntegerField
      FieldName = 'NUM_REQUISICAO'
    end
    object sdsDocEstoqueID_FUNCIONARIO_ENTR: TIntegerField
      FieldName = 'ID_FUNCIONARIO_ENTR'
    end
    object sdsDocEstoqueNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object sdsDocEstoqueNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
  end
  object dspDocEstoque: TDataSetProvider
    DataSet = sdsDocEstoque
    UpdateMode = upWhereKeyOnly
    Left = 200
    Top = 5
  end
  object cdsDocEstoque: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspDocEstoque'
    Left = 264
    Top = 4
    object cdsDocEstoqueID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDocEstoqueDTMOVIMENTO: TDateField
      DisplayLabel = 'Data Movimento'
      FieldName = 'DTMOVIMENTO'
    end
    object cdsDocEstoqueFILIAL: TIntegerField
      DisplayLabel = 'Filial'
      FieldName = 'FILIAL'
    end
    object cdsDocEstoqueTIPO_ES: TStringField
      DisplayLabel = 'Entrada / Sa'#237'da'
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object cdsDocEstoqueVLR_TOTAL: TFloatField
      DisplayLabel = 'Vlr. Total'
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsDocEstoqueID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsDocEstoquesdsDocEstoque_Itens: TDataSetField
      FieldName = 'sdsDocEstoque_Itens'
    end
    object cdsDocEstoqueOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsDocEstoqueID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsDocEstoqueTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsDocEstoqueID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object cdsDocEstoqueID_LOCAL_DESTINO: TIntegerField
      FieldName = 'ID_LOCAL_DESTINO'
    end
    object cdsDocEstoqueINF_CODBARRA: TStringField
      FieldName = 'INF_CODBARRA'
      FixedChar = True
      Size = 1
    end
    object cdsDocEstoqueNUM_REQUISICAO: TIntegerField
      FieldName = 'NUM_REQUISICAO'
    end
    object cdsDocEstoqueID_FUNCIONARIO_ENTR: TIntegerField
      FieldName = 'ID_FUNCIONARIO_ENTR'
    end
    object cdsDocEstoqueNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object cdsDocEstoqueNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
  end
  object dsDocEstoque: TDataSource
    DataSet = cdsDocEstoque
    Left = 336
    Top = 5
  end
  object dsDocEstoque_Mestre: TDataSource
    DataSet = sdsDocEstoque
    Left = 64
    Top = 41
  end
  object sdsDocEstoque_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT DI.*, COMB.NOME NOME_COR_COMBINACAO'#13#10'FROM DOCESTOQUE_ITEN' +
      'S DI'#13#10'LEFT JOIN COMBINACAO COMB ON (DI.ID_COR = COMB.ID)'#13#10'WHERE ' +
      'DI.ID = :ID'#13#10
    DataSource = dsDocEstoque_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 128
    Top = 88
    object sdsDocEstoque_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDocEstoque_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDocEstoque_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsDocEstoque_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsDocEstoque_ItensVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsDocEstoque_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsDocEstoque_ItensPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object sdsDocEstoque_ItensID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object sdsDocEstoque_ItensMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 100
    end
    object sdsDocEstoque_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsDocEstoque_ItensID_CENTROCUSTO: TIntegerField
      FieldName = 'ID_CENTROCUSTO'
    end
    object sdsDocEstoque_ItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsDocEstoque_ItensID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object sdsDocEstoque_ItensNOME_COR_COMBINACAO: TStringField
      FieldName = 'NOME_COR_COMBINACAO'
      ProviderFlags = []
      Size = 60
    end
    object sdsDocEstoque_ItensID_MOVESTOQUE_DESTINO: TIntegerField
      FieldName = 'ID_MOVESTOQUE_DESTINO'
    end
    object sdsDocEstoque_ItensNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object sdsDocEstoque_ItensGERAR_CUSTO: TStringField
      FieldName = 'GERAR_CUSTO'
      FixedChar = True
      Size = 1
    end
    object sdsDocEstoque_ItensPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
    object sdsDocEstoque_ItensLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 30
    end
    object sdsDocEstoque_ItensLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object sdsDocEstoque_ItensCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object sdsDocEstoque_ItensESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
    end
    object sdsDocEstoque_ItensTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
  end
  object cdsDocEstoque_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsDocEstoquesdsDocEstoque_Itens
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 192
    Top = 88
    object cdsDocEstoque_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDocEstoque_ItensITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDocEstoque_ItensID_PRODUTO: TIntegerField
      DisplayLabel = 'ID Produto'
      FieldName = 'ID_PRODUTO'
    end
    object cdsDocEstoque_ItensQTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'QTD'
    end
    object cdsDocEstoque_ItensVLR_UNITARIO: TFloatField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.000###'
    end
    object cdsDocEstoque_ItensVLR_TOTAL: TFloatField
      DisplayLabel = 'Vlr. Total'
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsDocEstoque_ItensMOTIVO: TStringField
      DisplayLabel = 'Motivo'
      FieldName = 'MOTIVO'
      Size = 100
    end
    object cdsDocEstoque_ItensUNIDADE: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsDocEstoque_ItensPERC_IPI: TFloatField
      DisplayLabel = '% IPI'
      FieldName = 'PERC_IPI'
    end
    object cdsDocEstoque_ItensID_MOVESTOQUE: TIntegerField
      DisplayLabel = 'ID Mov. Estoque'
      FieldName = 'ID_MOVESTOQUE'
    end
    object cdsDocEstoque_ItensID_CENTROCUSTO: TIntegerField
      FieldName = 'ID_CENTROCUSTO'
    end
    object cdsDocEstoque_ItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsDocEstoque_ItensNOME_PRODUTO: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOME_PRODUTO'
      ProviderFlags = []
      Size = 60
      Calculated = True
    end
    object cdsDocEstoque_ItensREFERENCIA: TStringField
      FieldKind = fkCalculated
      FieldName = 'REFERENCIA'
      ProviderFlags = []
      Calculated = True
    end
    object cdsDocEstoque_ItensNOME_CENTROCUSTO: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOME_CENTROCUSTO'
      ProviderFlags = []
      Size = 60
      Calculated = True
    end
    object cdsDocEstoque_ItensCOD_CENTROCUSTO: TStringField
      FieldKind = fkCalculated
      FieldName = 'COD_CENTROCUSTO'
      ProviderFlags = []
      Calculated = True
    end
    object cdsDocEstoque_ItensID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object cdsDocEstoque_ItensNOME_COR_COMBINACAO: TStringField
      FieldName = 'NOME_COR_COMBINACAO'
      ProviderFlags = []
      Size = 60
    end
    object cdsDocEstoque_ItensID_MOVESTOQUE_DESTINO: TIntegerField
      FieldName = 'ID_MOVESTOQUE_DESTINO'
    end
    object cdsDocEstoque_ItensNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object cdsDocEstoque_ItensGERAR_CUSTO: TStringField
      FieldName = 'GERAR_CUSTO'
      FixedChar = True
      Size = 1
    end
    object cdsDocEstoque_ItensPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
      DisplayFormat = '0.000###'
    end
    object cdsDocEstoque_ItensLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 30
    end
    object cdsDocEstoque_ItensLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object cdsDocEstoque_ItensCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object cdsDocEstoque_ItensESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
    end
    object cdsDocEstoque_ItensTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
  end
  object dsDocEstoque_Itens: TDataSource
    DataSet = cdsDocEstoque_Itens
    Left = 256
    Top = 88
  end
end
