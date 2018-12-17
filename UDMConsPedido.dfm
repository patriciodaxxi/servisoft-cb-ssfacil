object DMConsPedido: TDMConsPedido
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 198
  Top = 11
  Height = 704
  Width = 1035
  object sdsPedido_Item: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select PED.ID_CLIENTE, PED.ID, PED.PEDIDO_CLIENTE, PED.DTEMISSAO' +
      ', PED.DTENTREGA DTENTREGA_PED, PED.NUM_PEDIDO,'#13#10'       PED.ID_VE' +
      'NDEDOR, PED.FILIAL, FIL.NOME NOME_FILIAL, FIL.NOME_INTERNO NOME_' +
      'FILIAL_INT, CLI.NOME NOME_CLIENTE,'#13#10'       CLI.CLIENTE_ESTOQUE, ' +
      'PRO.NOME NOME_PRODUTO, ITE.REFERENCIA, ITE.ITEM, ITE.ID_PRODUTO,' +
      #13#10'       ITE.DTENTREGA DTENTREGA_ITEM, ITE.QTD, ITE.QTD_FATURADO' +
      ', ITE.QTD_RESTANTE, ITE.QTD_CANCELADO,'#13#10'       VEN.NOME NOME_VEN' +
      'DEDOR, ITE.VLR_UNITARIO, ITE.VLR_DESCONTO, ITE.VLR_TOTAL, ITE.NU' +
      'MOS, CLI.FANTASIA, PED.NUM_DOC,'#13#10'       ITE.NUM_TALAO, ITE.NOMEP' +
      'RODUTO NOME_PRODUTO_PED, ITE.QTD_PECA, ITE.QTD_FUT, ITE.ID_COR,'#13 +
      #10'       COMB.NOME NOME_COR_COMBINACAO, PRO.TIPO_REG, ITE.TAMANHO' +
      ', GR.NOME NOME_GRUPO, PED.APROVADO_PED, ITE.DTFATURA,'#13#10'       IT' +
      'E.DTEXPEDICAO, APROV.DATA DTAPROVADO, ITE.UNIDADE, ITE.OBS_ETIQU' +
      'ETA,'#13#10'       case'#13#10'         when (ITE.COD_PRODUTO_CLIENTE <> '#39#39' ' +
      'and'#13#10'               ITE.COD_COR_CLIENTE <> '#39#39' and'#13#10'             ' +
      '  ITE.NOME_COR_CLIENTE <> '#39#39' and'#13#10'               ITE.TAMANHO_CLI' +
      'ENTE <> '#39#39') then'#13#10'               (ITE.NOME_COR_CLIENTE || '#39' T. '#39 +
      '||ITE.TAMANHO_CLIENTE|| '#39'('#39'||'#13#10'               ITE.COD_PRODUTO_CL' +
      'IENTE ||'#39')'#39' || '#39' Cod.Prod: '#39'||'#13#10'               ITE.COD_COR_CLIEN' +
      'TE)'#13#10'         else'#13#10'               COMB.NOME'#13#10'         end as MO' +
      'NT_COMBINACAO,'#13#10'       case'#13#10'         when (ITE.QTD > 0) then ((' +
      'ITE.VLR_TOTAL / ITE.QTD) * ITE.QTD_RESTANTE)'#13#10'         when (ITE' +
      '.QTD <= 0) then 0'#13#10'       end as VLR_RESTANTE,'#13#10'       case'#13#10'   ' +
      '      when (ITE.QTD > 0) then ((ITE.VLR_TOTAL / ITE.QTD) * ITE.Q' +
      'TD_FATURADO)'#13#10'         when (ITE.QTD <= 0) then 0'#13#10'       end as' +
      ' VLR_FATURADO,'#13#10'       case'#13#10'         when (ITE.QTD > 0) then ((' +
      'ITE.VLR_TOTAL / ITE.QTD) * ITE.QTD_CANCELADO)'#13#10'         when (IT' +
      'E.QTD <= 0) then 0'#13#10'       end as VLR_CANCELADO, PRO.TAM_CALC'#13#10'f' +
      'rom PEDIDO PED'#13#10'inner join PEDIDO_ITEM ITE on PED.ID = ITE.ID'#13#10'i' +
      'nner join FILIAL FIL on PED.FILIAL = FIL.ID'#13#10'inner join PESSOA C' +
      'LI on PED.ID_CLIENTE = CLI.CODIGO'#13#10'inner join PRODUTO PRO on ITE' +
      '.ID_PRODUTO = PRO.ID'#13#10'left join PESSOA VEN on PED.ID_VENDEDOR = ' +
      'VEN.CODIGO'#13#10'left join COMBINACAO COMB on ITE.ID_COR = COMB.ID'#13#10'l' +
      'eft join GRUPO GR on PRO.ID_GRUPO = GR.ID'#13#10'left join PEDIDO_APRO' +
      'V APROV on PED.ID = APROV.ID  '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 10
  end
  object dspPedido_Item: TDataSetProvider
    DataSet = sdsPedido_Item
    Left = 80
    Top = 10
  end
  object cdsPedido_Item: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido_Item'
    Left = 120
    Top = 10
    object cdsPedido_ItemID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsPedido_ItemID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedido_ItemPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsPedido_ItemDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsPedido_ItemDTENTREGA_PED: TDateField
      FieldName = 'DTENTREGA_PED'
    end
    object cdsPedido_ItemNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPedido_ItemID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsPedido_ItemFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsPedido_ItemNOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object cdsPedido_ItemNOME_FILIAL_INT: TStringField
      FieldName = 'NOME_FILIAL_INT'
      Size = 30
    end
    object cdsPedido_ItemNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsPedido_ItemCLIENTE_ESTOQUE: TStringField
      FieldName = 'CLIENTE_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ItemNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsPedido_ItemREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsPedido_ItemITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPedido_ItemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsPedido_ItemDTENTREGA_ITEM: TDateField
      FieldName = 'DTENTREGA_ITEM'
    end
    object cdsPedido_ItemQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedido_ItemQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsPedido_ItemQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsPedido_ItemQTD_CANCELADO: TFloatField
      FieldName = 'QTD_CANCELADO'
    end
    object cdsPedido_ItemNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 60
    end
    object cdsPedido_ItemVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsPedido_ItemVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object cdsPedido_ItemVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsPedido_ItemNUMOS: TStringField
      FieldName = 'NUMOS'
      Size = 30
    end
    object cdsPedido_ItemFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsPedido_ItemNUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object cdsPedido_ItemNUM_TALAO: TStringField
      FieldName = 'NUM_TALAO'
      Size = 15
    end
    object cdsPedido_ItemNOME_PRODUTO_PED: TStringField
      FieldName = 'NOME_PRODUTO_PED'
      Size = 100
    end
    object cdsPedido_ItemQTD_PECA: TIntegerField
      FieldName = 'QTD_PECA'
    end
    object cdsPedido_ItemQTD_FUT: TFloatField
      FieldName = 'QTD_FUT'
    end
    object cdsPedido_ItemID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object cdsPedido_ItemNOME_COR_COMBINACAO: TStringField
      FieldName = 'NOME_COR_COMBINACAO'
      Size = 60
    end
    object cdsPedido_ItemTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ItemTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsPedido_ItemNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      Size = 40
    end
    object cdsPedido_ItemAPROVADO_PED: TStringField
      FieldName = 'APROVADO_PED'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ItemDTFATURA: TDateField
      FieldName = 'DTFATURA'
    end
    object cdsPedido_ItemDTEXPEDICAO: TDateField
      FieldName = 'DTEXPEDICAO'
    end
    object cdsPedido_ItemDTAPROVADO: TDateField
      FieldName = 'DTAPROVADO'
    end
    object cdsPedido_ItemUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsPedido_ItemOBS_ETIQUETA: TStringField
      FieldName = 'OBS_ETIQUETA'
      Size = 30
    end
    object cdsPedido_ItemMONT_COMBINACAO: TStringField
      FieldName = 'MONT_COMBINACAO'
      Size = 152
    end
    object cdsPedido_ItemVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
    end
    object cdsPedido_ItemVLR_FATURADO: TFloatField
      FieldName = 'VLR_FATURADO'
    end
    object cdsPedido_ItemVLR_CANCELADO: TFloatField
      FieldName = 'VLR_CANCELADO'
    end
    object cdsPedido_ItemTAM_CALC: TFloatField
      FieldName = 'TAM_CALC'
    end
  end
  object dsPedido_Item: TDataSource
    DataSet = cdsPedido_Item
    Left = 160
    Top = 10
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME, NOME_INTERNO, NOME_ETIQUETA'#13#10'FROM FILIAL'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 152
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 496
    Top = 152
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 536
    Top = 152
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
    object cdsFilialsdsFilialRelatorios: TDataSetField
      FieldName = 'sdsFilialRelatorios'
    end
    object cdsFilialNOME_ETIQUETA: TStringField
      FieldName = 'NOME_ETIQUETA'
      Size = 15
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 584
    Top = 152
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.ID, P.REFERENCIA, P.NOME, P.TIPO_REG, P.ID_GRADE, P.FOT' +
      'O, P.ID_COR, P.PRECO_VENDA, P.COD_BARRA, M.NOME MARCA'#13#10'FROM PROD' +
      'UTO P'#13#10'LEFT JOIN MARCA M ON (M.ID = P.ID_MARCA)'#13#10'WHERE INATIVO =' +
      ' '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 200
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 496
    Top = 200
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspProduto'
    Left = 536
    Top = 200
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
    object cdsProdutoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoID_GRADE: TIntegerField
      FieldName = 'ID_GRADE'
    end
    object cdsProdutoFOTO: TStringField
      FieldName = 'FOTO'
      Size = 150
    end
    object cdsProdutoID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsProdutoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object cdsProdutoCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object cdsProdutoMARCA: TStringField
      FieldName = 'MARCA'
      Size = 40
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 584
    Top = 200
  end
  object sdsCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PESSOA'#13#10'WHERE TP_CLIENTE = '#39'S'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 296
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 496
    Top = 296
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCliente'
    Left = 536
    Top = 296
    object cdsClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsClienteFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 584
    Top = 296
  end
  object sdsVendedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PESSOA'#13#10'WHERE TP_VENDEDOR = '#39'S'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 344
  end
  object dspVendedor: TDataSetProvider
    DataSet = sdsVendedor
    Left = 496
    Top = 344
  end
  object cdsVendedor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspVendedor'
    Left = 536
    Top = 344
    object cdsVendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsVendedorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsVendedorFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
  end
  object dsVendedor: TDataSource
    DataSet = cdsVendedor
    Left = 584
    Top = 344
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 480
    Top = 10
    object qParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametrosENDXMLNFE: TStringField
      FieldName = 'ENDXMLNFE'
      Size = 250
    end
    object qParametrosENDPDFNFE: TStringField
      FieldName = 'ENDPDFNFE'
      Size = 250
    end
    object qParametrosSERIENORMAL: TStringField
      FieldName = 'SERIENORMAL'
      Size = 3
    end
    object qParametrosSERIECONTINGENCIA: TStringField
      FieldName = 'SERIECONTINGENCIA'
      Size = 3
    end
    object qParametrosLOCALSERVIDORNFE: TStringField
      FieldName = 'LOCALSERVIDORNFE'
      Size = 100
    end
    object qParametrosEMAILRESPONSAVELSISTEMA: TStringField
      FieldName = 'EMAILRESPONSAVELSISTEMA'
      Size = 200
    end
    object qParametrosNFEPRODUCAO: TStringField
      FieldName = 'NFEPRODUCAO'
      FixedChar = True
      Size = 1
    end
    object qParametrosANEXARDANFE: TStringField
      FieldName = 'ANEXARDANFE'
      FixedChar = True
      Size = 1
    end
    object qParametrosVERSAONFE: TStringField
      FieldName = 'VERSAONFE'
      Size = 10
    end
    object qParametrosVERSAOEMISSAONFE: TStringField
      FieldName = 'VERSAOEMISSAONFE'
      Size = 10
    end
    object qParametrosTIPOLOGONFE: TStringField
      FieldName = 'TIPOLOGONFE'
      FixedChar = True
      Size = 1
    end
    object qParametrosAPLICARDESCONTONOICMS: TStringField
      FieldName = 'APLICARDESCONTONOICMS'
      FixedChar = True
      Size = 1
    end
    object qParametrosAPLICARDESCONTONOIPI: TStringField
      FieldName = 'APLICARDESCONTONOIPI'
      FixedChar = True
      Size = 1
    end
    object qParametrosSOMARNOPROD_FRETE: TStringField
      FieldName = 'SOMARNOPROD_FRETE'
      FixedChar = True
      Size = 1
    end
    object qParametrosSOMARNOPROD_OUTRASDESP: TStringField
      FieldName = 'SOMARNOPROD_OUTRASDESP'
      FixedChar = True
      Size = 1
    end
    object qParametrosSOMARNOPROD_SEGURO: TStringField
      FieldName = 'SOMARNOPROD_SEGURO'
      FixedChar = True
      Size = 1
    end
    object qParametrosAJUSTELOGONFEAUTOMATICO: TStringField
      FieldName = 'AJUSTELOGONFEAUTOMATICO'
      FixedChar = True
      Size = 1
    end
    object qParametrosINFNUMNOTAMANUAL: TStringField
      FieldName = 'INFNUMNOTAMANUAL'
      FixedChar = True
      Size = 1
    end
    object qParametrosOPCAO_DTENTREGAPEDIDO: TStringField
      FieldName = 'OPCAO_DTENTREGAPEDIDO'
      FixedChar = True
      Size = 1
    end
    object qParametrosOBS_SIMPLES: TStringField
      FieldName = 'OBS_SIMPLES'
      Size = 250
    end
    object qParametrosIMP_OBSSIMPLES: TStringField
      FieldName = 'IMP_OBSSIMPLES'
      FixedChar = True
      Size = 1
    end
    object qParametrosIMP_REFERENCIANANOTA: TStringField
      FieldName = 'IMP_REFERENCIANANOTA'
      FixedChar = True
      Size = 1
    end
    object qParametrosENVIARNOTABENEF_NANFE: TStringField
      FieldName = 'ENVIARNOTABENEF_NANFE'
      FixedChar = True
      Size = 1
    end
    object qParametrosESPECIE_NOTA: TStringField
      FieldName = 'ESPECIE_NOTA'
    end
    object qParametrosMARCA_NOTA: TStringField
      FieldName = 'MARCA_NOTA'
    end
    object qParametrosVERSAO_BANCO: TIntegerField
      FieldName = 'VERSAO_BANCO'
    end
    object qParametrosUSA_QTDPACOTE_NTE: TStringField
      FieldName = 'USA_QTDPACOTE_NTE'
      FixedChar = True
      Size = 1
    end
    object qParametrosATUALIZAR_PRECO: TStringField
      FieldName = 'ATUALIZAR_PRECO'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_VENDEDOR: TStringField
      FieldName = 'USA_VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_CONSUMO: TStringField
      FieldName = 'USA_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object qParametrosEMPRESA_NAVALHA: TStringField
      FieldName = 'EMPRESA_NAVALHA'
      FixedChar = True
      Size = 1
    end
    object qParametrosEMPRESA_SUCATA: TStringField
      FieldName = 'EMPRESA_SUCATA'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_VALE: TStringField
      FieldName = 'USA_VALE'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_PEDIDO_FUT: TStringField
      FieldName = 'USA_PEDIDO_FUT'
      FixedChar = True
      Size = 1
    end
    object qParametrosCONTROLAR_PEDIDO_LIBERACAO: TStringField
      FieldName = 'CONTROLAR_PEDIDO_LIBERACAO'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_ETIQUETA_IND: TStringField
      FieldName = 'USA_ETIQUETA_IND'
      FixedChar = True
      Size = 1
    end
    object qParametrosINFORMAR_COR_PROD: TStringField
      FieldName = 'INFORMAR_COR_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametrosINFORMAR_COR_MATERIAL: TStringField
      FieldName = 'INFORMAR_COR_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object qParametrosEMPRESA_AMBIENTES: TStringField
      FieldName = 'EMPRESA_AMBIENTES'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_APROVACAO_PED: TStringField
      FieldName = 'USA_APROVACAO_PED'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_APROVACAO_OC_FORN: TStringField
      FieldName = 'USA_APROVACAO_OC_FORN'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_GRADE: TStringField
      FieldName = 'USA_GRADE'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_COD_BARRAS: TStringField
      FieldName = 'USA_COD_BARRAS'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_COD_BARRAS_PROPRIO: TStringField
      FieldName = 'USA_COD_BARRAS_PROPRIO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsPedido_Nota: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT NP.ID ID_NOTA, NP.ITEM ITEM_NOTA, NP.QTD, NT.NUMNOTA, NT.' +
      'DTEMISSAO,'#13#10'NT.SERIE, NT.TIPO_NOTA, NP.ITEM_PEDIDO'#13#10'FROM NOTAFIS' +
      'CAL_PED NP'#13#10'INNER JOIN NOTAFISCAL NT'#13#10'ON NP.ID = NT.ID'#13#10'WHERE NP' +
      '.ID_PEDIDO = :ID'#13#10#13#10#13#10'UNION ALL'#13#10#13#10'SELECT NPT.ID ID_NOTA, NPT.IT' +
      'EM ITEM_NOTA, NPT.QTD, NT.NUMNOTA, NT.DTEMISSAO,'#13#10'NT.SERIE, NT.T' +
      'IPO_NOTA, NPT.ITEM_PEDIDO'#13#10'FROM NOTAFISCAL_PED_TAM NPT'#13#10'INNER JO' +
      'IN NOTAFISCAL NT'#13#10'ON NPT.ID = NT.ID'#13#10'WHERE NPT.ID_PEDIDO = :ID'#13#10 +
      #13#10#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 250
  end
  object cdsPedido_Nota: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_NOTA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ITEM_NOTA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'QTD'
        DataType = ftFloat
      end
      item
        Name = 'NUMNOTA'
        DataType = ftInteger
      end
      item
        Name = 'DTEMISSAO'
        DataType = ftDate
      end
      item
        Name = 'SERIE'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'TIPO_NOTA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ITEM_PEDIDO'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspPedido_Nota'
    StoreDefs = True
    Left = 120
    Top = 250
    object cdsPedido_NotaID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
      Required = True
    end
    object cdsPedido_NotaITEM_NOTA: TIntegerField
      FieldName = 'ITEM_NOTA'
      Required = True
    end
    object cdsPedido_NotaQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '0.000##'
    end
    object cdsPedido_NotaNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsPedido_NotaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsPedido_NotaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsPedido_NotaTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_NotaITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
  end
  object dsPedido_Nota: TDataSource
    DataSet = cdsPedido_Nota
    Left = 160
    Top = 250
  end
  object sdsPedido_Mat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT TAUX.FILIAL, TAUX.ID_CLIENTE, TAUX.ID_PRODUTO, TAUX.ID_MA' +
      'TERIAL, TAUX.NOMEMATERIAL,'#13#10'SUM(TAUX.CONSUMO_TOTAL) CONSUMO_TOTA' +
      'L, TAUX.NOMECLIENTE,'#13#10'SUM(TAUX.QTD_RESTANTE) QTD_RESTANTE, TAUX.' +
      'NOMEPRODUTO, TAUX.TAMANHO, TAUX.TIPO_CONSUMO,'#13#10'SUM(TAUX.CONSUMO_' +
      'TOTAL_TAM) CONSUMO_TOTAL_TAM'#13#10#13#10'FROM (SELECT PED.FILIAL, PI.ID_P' +
      'RODUTO, PI.nomeproduto, PI.referencia, MAT.NOME NOMEMATERIAL,'#13#10' ' +
      '    MAT.ID ID_MATERIAL, MAT.REFERENCIA REFMATERIAL, PI.QTD_RESTA' +
      'NTE, PED.ID_CLIENTE,'#13#10'      PC.qtd_consumo,(PC.qtd_consumo * PI.' +
      'QTD_RESTANTE) CONSUMO_TOTAL, CLI.NOME NOMECLIENTE,'#13#10'      PED.nu' +
      'm_pedido, PI.item ITEM_PEDIDO, PI.TAMANHO, PC.TIPO_CONSUMO,'#13#10'   ' +
      '   (PC_TAM.qtd_consumo * PI.QTD_RESTANTE) CONSUMO_TOTAL_TAM'#13#10'  F' +
      'ROM PEDIDO PED'#13#10'  INNER JOIN PEDIDO_ITEM PI'#13#10'  ON PED.ID = PI.ID' +
      #13#10'  INNER JOIN PESSOA CLI'#13#10'  ON PED.ID_CLIENTE = CLI.CODIGO'#13#10'  L' +
      'EFT JOIN PRODUTO_CONSUMO PC'#13#10'  ON PI.id_produto = PC.ID'#13#10'  LEFT ' +
      'JOIN PRODUTO_CONSUMO_TAM PC_TAM'#13#10'  ON PC.ID = PC_TAM.ID'#13#10'  AND P' +
      'C.item = PC_TAM.item'#13#10'  AND PI.tamanho = PC_TAM.TAMANHO'#13#10#13#10'  LEF' +
      'T JOIN PRODUTO MAT'#13#10'  ON PC.id_material = MAT.ID'#13#10'  WHERE PI.qtd' +
      '_restante > 0'#13#10#13#10'  ) TAUX'#13#10#13#10'GROUP BY TAUX.FILIAL, TAUX.ID_CLIEN' +
      'TE, TAUX.ID_PRODUTO, TAUX.ID_MATERIAL,'#13#10'TAUX.NOMEMATERIAL, TAUX.' +
      'NOMECLIENTE, TAUX.NOMEPRODUTO, TAUX.TAMANHO, TAUX.TIPO_CONSUMO'#13#10 +
      #13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 256
    Top = 10
  end
  object dspPedido_Mat: TDataSetProvider
    DataSet = sdsPedido_Mat
    Left = 296
    Top = 10
  end
  object cdsPedido_Mat: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido_Mat'
    OnCalcFields = cdsPedido_MatCalcFields
    Left = 336
    Top = 10
    object cdsPedido_MatFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsPedido_MatID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsPedido_MatID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsPedido_MatID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsPedido_MatCONSUMO_TOTAL: TFloatField
      FieldName = 'CONSUMO_TOTAL'
      DisplayFormat = '##0.00000'
    end
    object cdsPedido_MatNOMEMATERIAL: TStringField
      FieldName = 'NOMEMATERIAL'
      Size = 100
    end
    object cdsPedido_MatNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 60
    end
    object cdsPedido_MatQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
      DisplayFormat = '##0.000##'
    end
    object cdsPedido_MatNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsPedido_MatTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsPedido_MatTIPO_CONSUMO: TStringField
      FieldName = 'TIPO_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_MatCONSUMO_TOTAL_TAM: TFloatField
      FieldName = 'CONSUMO_TOTAL_TAM'
    end
    object cdsPedido_MatclConsumo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clConsumo'
      Calculated = True
    end
  end
  object dsPedido_Mat: TDataSource
    DataSet = cdsPedido_Mat
    Left = 384
    Top = 10
  end
  object mProdutoSC: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Produto'
        DataType = ftInteger
      end
      item
        Name = 'NomeProduto'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 704
    Top = 184
    Data = {
      4D0000009619E0BD0100000018000000020000000000030000004D000A49445F
      50726F6475746F04000100000000000B4E6F6D6550726F6475746F0100490000
      0001000557494454480200020064000000}
    object mProdutoSCID_Produto: TIntegerField
      FieldName = 'ID_Produto'
    end
    object mProdutoSCNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 100
    end
  end
  object dsmProdutoSC: TDataSource
    DataSet = mProdutoSC
    Left = 752
    Top = 184
  end
  object mConsumo: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    OnNewRecord = mConsumoNewRecord
    Left = 704
    Top = 232
    Data = {
      D50000009619E0BD010000001800000008000000000003000000D5000A49445F
      436C69656E746504000100000000000C4E6F6D655F436C69656E746501004900
      000001000557494454480200020032000B49445F4D6174657269616C04000100
      000000000F5174645F436F6E73756D6F43616C63080004000000000010517464
      5F4D6174657269616C5465726308000400000000000553616C646F0800040000
      0000000A51746450726F6475746F08000400000000000C4E6F6D654D61746572
      69616C01004900000001000557494454480200020064000000}
    object mConsumoID_Cliente: TIntegerField
      FieldName = 'ID_Cliente'
    end
    object mConsumoNome_Cliente: TStringField
      FieldName = 'Nome_Cliente'
      Size = 50
    end
    object mConsumoID_Material: TIntegerField
      FieldName = 'ID_Material'
    end
    object mConsumoQtd_ConsumoCalc: TFloatField
      FieldName = 'Qtd_ConsumoCalc'
      DisplayFormat = '###.00000'
    end
    object mConsumoQtd_MaterialTerc: TFloatField
      FieldName = 'Qtd_MaterialTerc'
      DisplayFormat = '###.00000'
    end
    object mConsumoSaldo: TFloatField
      FieldName = 'Saldo'
      DisplayFormat = '###.00000'
    end
    object mConsumoQtdProduto: TFloatField
      FieldName = 'QtdProduto'
      DisplayFormat = '0.000##'
    end
    object mConsumoNomeMaterial: TStringField
      FieldName = 'NomeMaterial'
      Size = 100
    end
  end
  object dsmConsumo: TDataSource
    DataSet = mConsumo
    Left = 752
    Top = 232
  end
  object qNotaEntrada: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select sum(ni.qtdrestante) QtdRestante'
      'from notafiscal nt'
      'inner join notafiscal_itens ni'
      'on nt.id = ni.id'
      'where nt.cancelada = '#39'N'#39
      '  and nt.nfedenegada = '#39'N'#39
      '  and nt.tipo_reg = '#39'NTE'#39
      '  and ni.qtdrestante > 0'
      '  and ((nt.id_cliente = :ID_CLIENTE)'
      '       or (nt.id_clientetriang = :ID_CLIENTE))'
      '  and nt.filial = :FILIAL'
      '  and ni.id_produto = :ID_PRODUTO')
    SQLConnection = dmDatabase.scoDados
    Left = 680
    Top = 128
    object qNotaEntradaQTDRESTANTE: TFloatField
      FieldName = 'QTDRESTANTE'
    end
  end
  object sdsBaixa_Pedido: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT BX.*,'#13#10'   case'#13#10'      when (BX.TIPO_REG is null) then '#39#39#13 +
      #10'      WHEN (BX.TIPO_REG = '#39'PRO'#39') THEN '#39'Produ'#231#227'o'#39#13#10'      WHEN (B' +
      'X.TIPO_REG = '#39'FAT'#39') THEN '#39'Faturado'#39#13#10'    end as TIPO_BAIXA, O.NU' +
      'M_OS'#13#10'FROM BAIXA_PEDIDO BX'#13#10'LEFT JOIN ORDEMSERVICO O'#13#10'ON BX.ID_O' +
      'S = O.ID'#13#10'WHERE BX.ID_PEDIDO = :ID'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 345
    object sdsBaixa_PedidoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsBaixa_PedidoID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object sdsBaixa_PedidoITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object sdsBaixa_PedidoDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object sdsBaixa_PedidoQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsBaixa_PedidoNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object sdsBaixa_PedidoPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
      Size = 30
    end
    object sdsBaixa_PedidoID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object sdsBaixa_PedidoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object sdsBaixa_PedidoTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 1
    end
    object sdsBaixa_PedidoTIPO_BAIXA: TStringField
      FieldName = 'TIPO_BAIXA'
      ProviderFlags = []
      FixedChar = True
      Size = 8
    end
    object sdsBaixa_PedidoNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
  end
  object cdsBaixa_Pedido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBaixa_Pedido'
    Left = 120
    Top = 345
    object cdsBaixa_PedidoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsBaixa_PedidoID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsBaixa_PedidoITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object cdsBaixa_PedidoDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object cdsBaixa_PedidoQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '0.000##'
    end
    object cdsBaixa_PedidoNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsBaixa_PedidoPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
      Size = 30
    end
    object cdsBaixa_PedidoID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object cdsBaixa_PedidoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsBaixa_PedidoTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 1
    end
    object cdsBaixa_PedidoTIPO_BAIXA: TStringField
      FieldName = 'TIPO_BAIXA'
      ProviderFlags = []
      FixedChar = True
      Size = 8
    end
    object cdsBaixa_PedidoNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
  end
  object dsBaixa_Pedido: TDataSource
    DataSet = cdsBaixa_Pedido
    Left = 160
    Top = 345
  end
  object sdsPrc_Atualiza_Status_Ped: TSQLDataSet
    CommandText = 'PRC_ATUALIZA_STATUS_PED'
    CommandType = ctStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 58
  end
  object sdsPedido: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select V.ID_CLIENTE, V.ID, V.PEDIDO_CLIENTE, V.DTEMISSAO, V.NUM_' +
      'PEDIDO, V.ID_VENDEDOR, V.FILIAL, V.NOME_FILIAL,'#13#10'       V.NOME_F' +
      'ILIAL_INT, V.NOME_CLIENTE, V.CLIENTE_ESTOQUE, V.NOME_VENDEDOR, V' +
      '.FANTASIA, V.DTENTREGA_ITEM,'#13#10'       V.DTENTREGA_PED, V.APROVADO' +
      '_PED, V.DTAPROVACAO, V.DTFATURA, V.DTEXPEDICAO, V.NOME_PRODUTO_P' +
      'ROPOSTA,'#13#10'       V.ID_TRANSPORTADORA, TRA.NOME NOME_TRANSPORTADO' +
      'RA, V.UF, V.CIDADE, sum(V.VLR_TOTAL) VLR_TOTAL, sum(V.QTD) QTD,'#13 +
      #10'       sum(V.QTD_FATURADO) QTD_FATURADO, sum(V.QTD_RESTANTE) QT' +
      'D_RESTANTE, sum(V.QTD_CANCELADO) QTD_CANCELADO,'#13#10'       sum(V.VL' +
      'R_RESTANTE) VLR_RESTANTE, sum(V.VLR_FATURADO) VLR_FATURADO, sum(' +
      'V.VLR_CANCELADO) VLR_CANCELADO'#13#10'from VPEDIDO_ITEM V'#13#10'left join P' +
      'ESSOA TRA on V.ID_TRANSPORTADORA = TRA.CODIGO'#13#10'group by V.ID_CLI' +
      'ENTE, V.ID, V.PEDIDO_CLIENTE, V.DTEMISSAO, V.NUM_PEDIDO, V.ID_VE' +
      'NDEDOR, V.FILIAL, V.NOME_FILIAL, V.NOME_FILIAL_INT, V.NOME_CLIEN' +
      'TE, V.CLIENTE_ESTOQUE, V.NOME_VENDEDOR, V.FANTASIA, V.DTENTREGA_' +
      'ITEM, V.DTENTREGA_PED, V.APROVADO_PED, V.DTAPROVACAO, V.DTFATURA' +
      ', V.DTEXPEDICAO, V.NOME_PRODUTO_PROPOSTA, V.ID_TRANSPORTADORA, T' +
      'RA.NOME, V.UF, V.CIDADE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 400
  end
  object dspPedido: TDataSetProvider
    DataSet = sdsPedido
    Left = 80
    Top = 400
  end
  object cdsPedido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido'
    Left = 120
    Top = 400
    object cdsPedidoID_CLIENTE: TIntegerField
      DisplayLabel = 'ID Cliente'
      FieldName = 'ID_CLIENTE'
    end
    object cdsPedidoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedidoPEDIDO_CLIENTE: TStringField
      DisplayLabel = 'N'#186' OC'
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsPedidoDTEMISSAO: TDateField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DTEMISSAO'
    end
    object cdsPedidoNUM_PEDIDO: TIntegerField
      DisplayLabel = 'N'#186' Pedido Interno'
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPedidoID_VENDEDOR: TIntegerField
      DisplayLabel = 'ID Vendedor'
      FieldName = 'ID_VENDEDOR'
    end
    object cdsPedidoFILIAL: TIntegerField
      DisplayLabel = 'Filial'
      FieldName = 'FILIAL'
    end
    object cdsPedidoNOME_FILIAL: TStringField
      DisplayLabel = 'Nome Filial'
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object cdsPedidoNOME_FILIAL_INT: TStringField
      DisplayLabel = 'Nome Filial'
      FieldName = 'NOME_FILIAL_INT'
      Size = 30
    end
    object cdsPedidoNOME_CLIENTE: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsPedidoNOME_VENDEDOR: TStringField
      DisplayLabel = 'Nome Vendedor'
      FieldName = 'NOME_VENDEDOR'
      Size = 60
    end
    object cdsPedidoFANTASIA: TStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsPedidoDTENTREGA_ITEM: TDateField
      DisplayLabel = 'Data Entrega'
      FieldName = 'DTENTREGA_ITEM'
    end
    object cdsPedidoQTD: TFloatField
      DisplayLabel = 'Qtd. Pedido'
      FieldName = 'QTD'
    end
    object cdsPedidoQTD_FATURADO: TFloatField
      DisplayLabel = 'Qtd. Faturado'
      FieldName = 'QTD_FATURADO'
    end
    object cdsPedidoQTD_RESTANTE: TFloatField
      DisplayLabel = 'Qtd. Pendente'
      FieldName = 'QTD_RESTANTE'
    end
    object cdsPedidoQTD_CANCELADO: TFloatField
      DisplayLabel = 'Qtd. Cancelada'
      FieldName = 'QTD_CANCELADO'
    end
    object cdsPedidoVLR_RESTANTE: TFloatField
      DisplayLabel = 'Vlr. Restante'
      FieldName = 'VLR_RESTANTE'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedidoVLR_FATURADO: TFloatField
      DisplayLabel = 'Vlr. Faturado'
      FieldName = 'VLR_FATURADO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedidoVLR_CANCELADO: TFloatField
      DisplayLabel = 'Vlr. Cancelado'
      FieldName = 'VLR_CANCELADO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedidoVLR_TOTAL: TFloatField
      DisplayLabel = 'Vlr. Total'
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedidoCLIENTE_ESTOQUE: TStringField
      FieldName = 'CLIENTE_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoAPROVADO_PED: TStringField
      FieldName = 'APROVADO_PED'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoDTAPROVACAO: TDateField
      FieldName = 'DTAPROVACAO'
    end
    object cdsPedidoDTFATURA: TDateField
      FieldName = 'DTFATURA'
    end
    object cdsPedidoDTEXPEDICAO: TDateField
      FieldName = 'DTEXPEDICAO'
    end
    object cdsPedidoID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsPedidoNOME_TRANSPORTADORA: TStringField
      FieldName = 'NOME_TRANSPORTADORA'
      Size = 60
    end
    object cdsPedidoUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsPedidoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsPedidoNOME_PRODUTO_PROPOSTA: TStringField
      FieldName = 'NOME_PRODUTO_PROPOSTA'
      Size = 100
    end
    object cdsPedidoDTENTREGA_PED: TDateField
      FieldName = 'DTENTREGA_PED'
    end
  end
  object dsPedido: TDataSource
    DataSet = cdsPedido
    Left = 160
    Top = 400
  end
  object sdsPedido_Fat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select NP.ID ID_NOTA, NP.ITEM ITEM_NOTA, NT.NUMNOTA, NT.DTEMISSA' +
      'O, NT.SERIE, NT.TIPO_NOTA, PED.PEDIDO_CLIENTE,'#13#10'       NP.ID_PED' +
      'IDO, PES.NOME, NI.REFERENCIA, NI.NOME_PRODUTO, NI.VLR_UNITARIO, ' +
      'NI.VLR_DESCONTO, NI.VLR_DESCONTORATEIO,'#13#10'       NI.VLR_TOTAL, NI' +
      '.QTD, pi.DTENTREGA, pi.QTD QTD_PEDIDO, pi.QTD_FATURADO, pi.QTD_R' +
      'ESTANTE, NP.ITEM_PEDIDO,'#13#10'       NP.NUM_PEDIDO, NT.FILIAL, PES.F' +
      'ANTASIA, PES.NOME NOME_CLIENTE,'#13#10'       ((pi.VLR_UNITARIO - pi.V' +
      'LR_DESCONTO) * pi.QTD_RESTANTE) VLR_RESTANTE,'#13#10'       ((pi.VLR_U' +
      'NITARIO - pi.VLR_DESCONTO) * pi.QTD_FATURADO) VLR_FATURADO,'#13#10'   ' +
      '    ((pi.VLR_UNITARIO - pi.VLR_DESCONTO) * pi.QTD_CANCELADO) VLR' +
      '_CANCELADO, COMB.NOME NOME_COR_COMBINACAO,'#13#10'       CFOP.CODCFOP,' +
      ' PED.DTEMISSAO DTEMISSAO_PED,'#13#10'CASE'#13#10'  WHEN PROD.tipo_producao =' +
      ' '#39'T'#39' THEN '#39'Tran'#231'adeira'#39#13#10'  WHEN PROD.tipo_producao = '#39'E'#39' THEN '#39'T' +
      'ear'#39#13#10'  end Desc_Tipo_Producao,'#13#10'CASE'#13#10'  WHEN NT.SERIE = '#39'RNF'#39' t' +
      'hen '#39'REC'#39#13#10'  ELSE '#39'NF'#39#13#10'  end DESC_NOTA, NI.unidade, PROD.unidad' +
      'e UNIDADE_PRODUTO,'#13#10'  ni.id_produto, uconv.qtd qtd_conversor ,'#13#10 +
      'case'#13#10'  when coalesce(uconv.qtd,0) > 0 then coalesce(PROD.pesobr' +
      'uto,0) * coalesce(NI.qtd,0) * uconv.qtd'#13#10'  else coalesce(PROD.pe' +
      'sobruto,0) * coalesce(NI.qtd,0)'#13#10'  end PESOBRUTO'#13#10'from NOTAFISCA' +
      'L_PED NP'#13#10'inner join NOTAFISCAL NT on (NP.ID = NT.ID)'#13#10'inner joi' +
      'n NOTAFISCAL_ITENS NI on (NP.ID = NI.ID and NP.ITEM = NI.ITEM)'#13#10 +
      'inner join PEDIDO PED on (NP.ID_PEDIDO = PED.ID)'#13#10'inner join PED' +
      'IDO_ITEM pi on (NP.ID_PEDIDO = pi.ID and NP.ITEM_PEDIDO = pi.ITE' +
      'M)'#13#10'inner join PESSOA PES on (PED.ID_CLIENTE = PES.CODIGO)'#13#10'left' +
      ' join COMBINACAO COMB on pi.ID_COR = COMB.ID  '#13#10'LEFT JOIN TAB_CF' +
      'OP CFOP ON (NI.ID_CFOP = CFOP.ID)'#13#10'left join PRODUTO PROD on NI.' +
      'ID_PRODUTO = PROD.ID  '#13#10'left join unidade_conv uconv'#13#10'on prod.un' +
      'idade = uconv.unidade'#13#10'and ni.unidade = uconv.unidade_conv'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 448
  end
  object dspPedido_Fat: TDataSetProvider
    DataSet = sdsPedido_Fat
    Left = 80
    Top = 448
  end
  object cdsPedido_Fat: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido_Fat'
    Left = 120
    Top = 448
    object cdsPedido_FatID_NOTA: TIntegerField
      DisplayLabel = 'ID Nota'
      FieldName = 'ID_NOTA'
      Required = True
    end
    object cdsPedido_FatITEM_NOTA: TIntegerField
      DisplayLabel = 'Item Nota'
      FieldName = 'ITEM_NOTA'
      Required = True
    end
    object cdsPedido_FatNUMNOTA: TIntegerField
      DisplayLabel = 'N'#186' Nota'
      FieldName = 'NUMNOTA'
    end
    object cdsPedido_FatDTEMISSAO: TDateField
      DisplayLabel = 'Data Fatura'
      FieldName = 'DTEMISSAO'
    end
    object cdsPedido_FatSERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsPedido_FatTIPO_NOTA: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_FatPEDIDO_CLIENTE: TStringField
      DisplayLabel = 'N'#186' Pedido Cliente (OC)'
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsPedido_FatID_PEDIDO: TIntegerField
      DisplayLabel = 'ID Pedido'
      FieldName = 'ID_PEDIDO'
    end
    object cdsPedido_FatNOME: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOME'
      Size = 60
    end
    object cdsPedido_FatREFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'REFERENCIA'
    end
    object cdsPedido_FatNOME_PRODUTO: TStringField
      DisplayLabel = 'Nome Produto'
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsPedido_FatVLR_UNITARIO: TFloatField
      DisplayLabel = 'Vlr Unit'#225'rio'
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.00'
    end
    object cdsPedido_FatVLR_DESCONTO: TFloatField
      DisplayLabel = 'Vlr. Desconto'
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsPedido_FatVLR_DESCONTORATEIO: TFloatField
      DisplayLabel = 'Vlr. Desconto Rateio'
      FieldName = 'VLR_DESCONTORATEIO'
      DisplayFormat = '0.00'
    end
    object cdsPedido_FatVLR_TOTAL: TFloatField
      DisplayLabel = 'Vlr. Nota (Faturado)'
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsPedido_FatQTD: TFloatField
      DisplayLabel = 'Qtd. Nota (Faturada)'
      DisplayWidth = 10
      FieldName = 'QTD'
    end
    object cdsPedido_FatDTENTREGA: TDateField
      DisplayLabel = 'Dt. Entrega'
      FieldName = 'DTENTREGA'
    end
    object cdsPedido_FatQTD_PEDIDO: TFloatField
      DisplayLabel = 'Qtd. Pedido'
      FieldName = 'QTD_PEDIDO'
      DisplayFormat = '0.000##'
    end
    object cdsPedido_FatQTD_FATURADO: TFloatField
      DisplayLabel = 'Qtd. J'#225' Faturado (Pedido)'
      FieldName = 'QTD_FATURADO'
      DisplayFormat = '0.000##'
    end
    object cdsPedido_FatQTD_RESTANTE: TFloatField
      DisplayLabel = 'Qtd. Restante'
      FieldName = 'QTD_RESTANTE'
      DisplayFormat = '0.000##'
    end
    object cdsPedido_FatITEM_PEDIDO: TIntegerField
      DisplayLabel = 'Item Pedido'
      FieldName = 'ITEM_PEDIDO'
    end
    object cdsPedido_FatVLR_RESTANTE: TFloatField
      DisplayLabel = 'Vlr. Restante'
      FieldName = 'VLR_RESTANTE'
    end
    object cdsPedido_FatVLR_FATURADO: TFloatField
      DisplayLabel = 'Vlr. Faturado'
      FieldName = 'VLR_FATURADO'
    end
    object cdsPedido_FatVLR_CANCELADO: TFloatField
      DisplayLabel = 'Vlr. Cancelado'
      FieldName = 'VLR_CANCELADO'
    end
    object cdsPedido_FatNUM_PEDIDO: TIntegerField
      DisplayLabel = 'N'#186' Ped. Interno'
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPedido_FatFILIAL: TIntegerField
      DisplayLabel = 'Filial'
      FieldName = 'FILIAL'
    end
    object cdsPedido_FatFANTASIA: TStringField
      DisplayLabel = 'Cliente (Fantasia)'
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsPedido_FatNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsPedido_FatNOME_COR_COMBINACAO: TStringField
      FieldName = 'NOME_COR_COMBINACAO'
      Size = 60
    end
    object cdsPedido_FatCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsPedido_FatDTEMISSAO_PED: TDateField
      FieldName = 'DTEMISSAO_PED'
    end
    object cdsPedido_FatDESC_NOTA: TStringField
      FieldName = 'DESC_NOTA'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cdsPedido_FatPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
      DisplayFormat = '0.0000'
    end
    object cdsPedido_FatDESC_TIPO_PRODUCAO: TStringField
      FieldName = 'DESC_TIPO_PRODUCAO'
      FixedChar = True
      Size = 11
    end
    object cdsPedido_FatUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsPedido_FatUNIDADE_PRODUTO: TStringField
      FieldName = 'UNIDADE_PRODUTO'
      Size = 6
    end
    object cdsPedido_FatID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsPedido_FatQTD_CONVERSOR: TFloatField
      FieldName = 'QTD_CONVERSOR'
    end
  end
  object dsPedido_Fat: TDataSource
    DataSet = cdsPedido_Fat
    Left = 160
    Top = 448
  end
  object sdsPedido_FatPed: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT NT.DTEMISSAO, PED.pedido_cliente, NP.id_pedido, PES.nome ' +
      'NOME_CLIENTE,'#13#10'NP.num_pedido, NT.FILIAL, PES.FANTASIA, SUM(NP.qt' +
      'd) QTD_NOTA,'#13#10'sum(NI.vlr_total) VLR_TOTAL'#13#10'FROM NOTAFISCAL_PED N' +
      'P'#13#10'INNER JOIN NOTAFISCAL NT'#13#10'ON NP.ID = NT.ID'#13#10'INNER JOIN notafi' +
      'scal_itens NI'#13#10'ON NP.id = NI.id'#13#10'AND NP.item = NI.item'#13#10'INNER JO' +
      'IN PEDIDO PED'#13#10'ON NP.id_pedido = PED.ID'#13#10'INNER JOIN PESSOA PES'#13#10 +
      'ON PED.id_cliente = PES.codigo'#13#10'INNER JOIN PRODUTO PROD'#13#10'ON NI.i' +
      'd_produto = PROD.ID'#13#10'GROUP BY NT.DTEMISSAO, PED.pedido_cliente, ' +
      'NP.id_pedido, PES.nome,'#13#10'NP.num_pedido, NT.FILIAL, PES.FANTASIA'#13 +
      #10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 504
  end
  object dspPedido_FatPed: TDataSetProvider
    DataSet = sdsPedido_FatPed
    Left = 80
    Top = 504
  end
  object cdsPedido_FatPed: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido_FatPed'
    Left = 120
    Top = 504
    object cdsPedido_FatPedDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsPedido_FatPedPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsPedido_FatPedID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsPedido_FatPedNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPedido_FatPedFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsPedido_FatPedFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsPedido_FatPedQTD_NOTA: TFloatField
      FieldName = 'QTD_NOTA'
    end
    object cdsPedido_FatPedVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsPedido_FatPedNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
  end
  object dsPedido_FatPed: TDataSource
    DataSet = cdsPedido_FatPed
    Left = 160
    Top = 504
  end
  object dspPedido_Nota: TDataSetProvider
    DataSet = sdsPedido_Nota
    Left = 80
    Top = 250
  end
  object dspBaixa_Pedido: TDataSetProvider
    DataSet = sdsBaixa_Pedido
    UpdateMode = upWhereKeyOnly
    Left = 80
    Top = 345
  end
  object sdsPedido_Vale: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT NP.ID ID_VALE, NP.ITEM ITEM_VALE, NP.QTD, NT.NUM_VALE, NT' +
      '.DTEMISSAO, NP.ITEM_PEDIDO'#13#10'FROM VALE_PED NP'#13#10'INNER JOIN VALE NT' +
      #13#10'ON NP.ID = NT.ID'#13#10'WHERE NP.ID_PEDIDO = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 298
  end
  object cdsPedido_Vale: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido_Vale'
    Left = 120
    Top = 298
    object cdsPedido_ValeID_VALE: TIntegerField
      FieldName = 'ID_VALE'
      Required = True
    end
    object cdsPedido_ValeITEM_VALE: TIntegerField
      FieldName = 'ITEM_VALE'
      Required = True
    end
    object cdsPedido_ValeQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedido_ValeNUM_VALE: TIntegerField
      FieldName = 'NUM_VALE'
    end
    object cdsPedido_ValeDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsPedido_ValeITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
  end
  object dsPedido_Vale: TDataSource
    DataSet = cdsPedido_Vale
    Left = 160
    Top = 298
  end
  object dspPedido_Vale: TDataSetProvider
    DataSet = sdsPedido_Vale
    Left = 80
    Top = 298
  end
  object sdsPedido_Ref: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT SUM(V.qtd) Qtd, SUM(V.qtd_faturado) Qtd_Faturado , SUM(V.' +
      'qtd_restante) qtd_restante,'#13#10'SUM(V.qtd_cancelado) qtd_cancelado,' +
      ' SUM(V.qtd_peca) qtd_peca,  SUM(V.vlr_total) vlr_total,'#13#10'SUM(V.v' +
      'lr_restante) vlr_restante, SUM(V.vlr_faturado) vlr_faturado,'#13#10' S' +
      'UM(V.vlr_cancelado) vlr_cancelado, V.id_cliente, V.nome_filial, ' +
      'V.nome_filial_int,'#13#10' V.nome_cliente, V.nome_produto, V.nome_vend' +
      'edor, v.referencia, v.pedido_cliente,'#13#10' v.dtemissao, v.dtentrega' +
      '_ped, v.dtentrega_item,v.num_pedido, v.numos,'#13#10'V.ID_PRODUTO, V.F' +
      'ILIAL, V.CLIENTE_ESTOQUE, V.FANTASIA, v.id_cor, V.NOME_COR_COMBI' +
      'NACAO , V.TIPO_REG,'#13#10'V.DTFATURA, V.DTEXPEDICAO, V.DTAPROVACAO, V' +
      '.TAM_CALC'#13#10'FROM vpedido_item V'#13#10#13#10#13#10'GROUP BY V.id_cliente, V.id_' +
      'cliente, V.nome_filial, V.nome_filial_int,'#13#10' V.nome_cliente, V.n' +
      'ome_produto, V.nome_vendedor, v.referencia, v.pedido_cliente,'#13#10' ' +
      'v.dtemissao, v.dtentrega_ped, v.dtentrega_item,v.num_pedido, v.n' +
      'umos,'#13#10' V.ID_PRODUTO, V.FILIAL, V.CLIENTE_ESTOQUE, V.FANTASIA, V' +
      '.id_cor, V.NOME_COR_COMBINACAO, V.TIPO_REG,'#13#10'V.DTFATURA, V.DTEXP' +
      'EDICAO, V.DTAPROVACAO, V.TAM_CALC'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 58
  end
  object dspPedido_Ref: TDataSetProvider
    DataSet = sdsPedido_Ref
    Left = 80
    Top = 58
  end
  object cdsPedido_Ref: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido_Ref'
    Left = 120
    Top = 58
    object cdsPedido_RefQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '0.000##'
    end
    object cdsPedido_RefQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
      DisplayFormat = '0.000##'
    end
    object cdsPedido_RefQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
      DisplayFormat = '0.000##'
    end
    object cdsPedido_RefQTD_CANCELADO: TFloatField
      FieldName = 'QTD_CANCELADO'
      DisplayFormat = '0.000##'
    end
    object cdsPedido_RefQTD_PECA: TFMTBCDField
      FieldName = 'QTD_PECA'
      Precision = 15
      Size = 0
    end
    object cdsPedido_RefVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedido_RefVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedido_RefVLR_FATURADO: TFloatField
      FieldName = 'VLR_FATURADO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedido_RefVLR_CANCELADO: TFloatField
      FieldName = 'VLR_CANCELADO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedido_RefID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsPedido_RefNOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object cdsPedido_RefNOME_FILIAL_INT: TStringField
      FieldName = 'NOME_FILIAL_INT'
      Size = 30
    end
    object cdsPedido_RefNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsPedido_RefNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsPedido_RefNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 60
    end
    object cdsPedido_RefREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsPedido_RefPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsPedido_RefDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsPedido_RefDTENTREGA_PED: TDateField
      FieldName = 'DTENTREGA_PED'
    end
    object cdsPedido_RefDTENTREGA_ITEM: TDateField
      FieldName = 'DTENTREGA_ITEM'
    end
    object cdsPedido_RefNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPedido_RefNUMOS: TStringField
      FieldName = 'NUMOS'
      Size = 30
    end
    object cdsPedido_RefID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsPedido_RefFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsPedido_RefCLIENTE_ESTOQUE: TStringField
      FieldName = 'CLIENTE_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_RefFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsPedido_RefID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object cdsPedido_RefNOME_COR_COMBINACAO: TStringField
      FieldName = 'NOME_COR_COMBINACAO'
      Size = 60
    end
    object cdsPedido_RefTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_RefDTFATURA: TDateField
      FieldName = 'DTFATURA'
    end
    object cdsPedido_RefDTEXPEDICAO: TDateField
      FieldName = 'DTEXPEDICAO'
    end
    object cdsPedido_RefDTAPROVACAO: TDateField
      FieldName = 'DTAPROVACAO'
    end
    object cdsPedido_RefTAM_CALC: TFloatField
      FieldName = 'TAM_CALC'
    end
  end
  object dsPedido_Ref: TDataSource
    DataSet = cdsPedido_Ref
    Left = 160
    Top = 58
  end
  object sdsPedido_Ref_Acum: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT SUM(V.qtd) Qtd, SUM(V.qtd_faturado) Qtd_Faturado , SUM(V.' +
      'qtd_restante) qtd_restante,'#13#10'SUM(V.qtd_cancelado) qtd_cancelado,' +
      ' SUM(V.qtd_peca) qtd_peca,  SUM(V.vlr_total) vlr_total,'#13#10'SUM(V.v' +
      'lr_restante) vlr_restante, SUM(V.vlr_faturado) vlr_faturado,'#13#10' S' +
      'UM(V.vlr_cancelado) vlr_cancelado,'#13#10'V.nome_produto, v.referencia' +
      ', V.ID_PRODUTO'#13#10'FROM vpedido_item V'#13#10#13#10'GROUP BY'#13#10' V.nome_produto' +
      ', v.referencia, V.ID_PRODUTO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 105
  end
  object dspPedido_Ref_Acum: TDataSetProvider
    DataSet = sdsPedido_Ref_Acum
    Left = 80
    Top = 105
  end
  object cdsPedido_Ref_Acum: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido_Ref_Acum'
    Left = 120
    Top = 105
    object cdsPedido_Ref_AcumQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '0.000##'
    end
    object cdsPedido_Ref_AcumQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
      DisplayFormat = '0.000##'
    end
    object cdsPedido_Ref_AcumQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
      DisplayFormat = '0.000##'
    end
    object cdsPedido_Ref_AcumQTD_CANCELADO: TFloatField
      FieldName = 'QTD_CANCELADO'
      DisplayFormat = '0.000##'
    end
    object cdsPedido_Ref_AcumQTD_PECA: TFMTBCDField
      FieldName = 'QTD_PECA'
      Precision = 15
      Size = 0
    end
    object cdsPedido_Ref_AcumVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedido_Ref_AcumVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedido_Ref_AcumVLR_FATURADO: TFloatField
      FieldName = 'VLR_FATURADO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedido_Ref_AcumVLR_CANCELADO: TFloatField
      FieldName = 'VLR_CANCELADO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedido_Ref_AcumNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsPedido_Ref_AcumREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsPedido_Ref_AcumID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
  end
  object dsPedido_Ref_Acum: TDataSource
    DataSet = cdsPedido_Ref_Acum
    Left = 160
    Top = 105
  end
  object sdsPedido_Cli: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT SUM(V.qtd) Qtd, SUM(V.qtd_faturado) Qtd_Faturado , SUM(V.' +
      'qtd_restante) qtd_restante,'#13#10'SUM(V.qtd_cancelado) qtd_cancelado,' +
      ' SUM(V.qtd_peca) qtd_peca,  SUM(V.vlr_total) vlr_total,'#13#10'SUM(V.v' +
      'lr_restante) vlr_restante, SUM(V.vlr_faturado) vlr_faturado,'#13#10' S' +
      'UM(V.vlr_cancelado) vlr_cancelado, V.id_cliente, V.nome_cliente,' +
      ' V.FANTASIA'#13#10'FROM vpedido_item V'#13#10#13#10'GROUP BY V.id_cliente, V.id_' +
      'cliente, V.nome_cliente, V.FANTASIA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 154
  end
  object dspPedido_Cli: TDataSetProvider
    DataSet = sdsPedido_Cli
    Left = 80
    Top = 154
  end
  object cdsPedido_Cli: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido_Cli'
    Left = 120
    Top = 154
    object cdsPedido_CliQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '0.000##'
    end
    object cdsPedido_CliQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
      DisplayFormat = '0.000##'
    end
    object cdsPedido_CliQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
      DisplayFormat = '0.000##'
    end
    object cdsPedido_CliQTD_CANCELADO: TFloatField
      FieldName = 'QTD_CANCELADO'
      DisplayFormat = '0.000##'
    end
    object cdsPedido_CliQTD_PECA: TFMTBCDField
      FieldName = 'QTD_PECA'
      Precision = 15
      Size = 0
    end
    object cdsPedido_CliVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedido_CliVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedido_CliVLR_FATURADO: TFloatField
      FieldName = 'VLR_FATURADO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedido_CliVLR_CANCELADO: TFloatField
      FieldName = 'VLR_CANCELADO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedido_CliID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsPedido_CliNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsPedido_CliFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
  end
  object dsPedido_Cli: TDataSource
    DataSet = cdsPedido_Cli
    Left = 160
    Top = 154
  end
  object mEtiq_Individual: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Produto'
        DataType = ftInteger
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nome_Produto'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Tamanho'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Tamanho_USA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Tamanho_EUR'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Item_Pedido'
        DataType = ftInteger
      end
      item
        Name = 'ID_Pedido'
        DataType = ftInteger
      end
      item
        Name = 'Num_Pedido'
        DataType = ftInteger
      end
      item
        Name = 'CodBarra'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CaminhoFoto'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'NomeCombinacao'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Nome_Cliente'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DtEntrega'
        DataType = ftDate
      end
      item
        Name = 'Qtde'
        DataType = ftFloat
      end
      item
        Name = 'Pedido_Cliente'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Unidade'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'Preco_Produto'
        DataType = ftCurrency
      end
      item
        Name = 'TotalItens'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CodBarra_Talao'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Processos'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'NumOS'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Encerado'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Obs_Etiqueta'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Parcela3X'
        DataType = ftCurrency
      end
      item
        Name = 'Parcela2X'
        DataType = ftCurrency
      end
      item
        Name = 'DtEmissao'
        DataType = ftDate
      end
      item
        Name = 'Marca'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'ID_Pedido;Item_Pedido'
    Params = <>
    StoreDefs = True
    Left = 704
    Top = 280
    Data = {
      640300009619E0BD01000000180000001C00000000000300000064030A49445F
      50726F6475746F04000100000000000A5265666572656E636961010049000000
      01000557494454480200020014000C4E6F6D655F50726F6475746F0100490000
      000100055749445448020002003C000754616D616E686F010049000000010005
      5749445448020002000A000B54616D616E686F5F555341010049000000010005
      5749445448020002000A000B54616D616E686F5F455552010049000000010005
      5749445448020002000A000B4974656D5F50656469646F040001000000000009
      49445F50656469646F04000100000000000A4E756D5F50656469646F04000100
      0000000008436F6442617272610100490000000100055749445448020002001E
      000B43616D696E686F466F746F010049000000010005574944544802000200C8
      000E4E6F6D65436F6D62696E6163616F01004900000001000557494454480200
      02003C000C4E6F6D655F436C69656E7465010049000000010005574944544802
      0002003C00094474456E74726567610400060000000000045174646508000400
      000000000E50656469646F5F436C69656E746501004900000001000557494454
      4802000200140007556E69646164650100490000000100055749445448020002
      0006000D507265636F5F50726F6475746F080004000000010007535542545950
      450200490006004D6F6E6579000A546F74616C4974656E730100490000000100
      055749445448020002000A000E436F6442617272615F54616C616F0100490000
      0001000557494454480200020014000950726F636573736F7304004B00000002
      0007535542545950450200490005005465787400055749445448020002000100
      054E756D4F530100490000000100055749445448020002001E0008456E636572
      61646F01004900000001000557494454480200020001000C4F62735F45746971
      756574610100490000000100055749445448020002001E000950617263656C61
      3358080004000000010007535542545950450200490006004D6F6E6579000950
      617263656C613258080004000000010007535542545950450200490006004D6F
      6E657900094474456D697373616F0400060000000000054D6172636101004900
      00000100055749445448020002001E0001000D44454641554C545F4F52444552
      0200820000000000}
    object mEtiq_IndividualID_Produto: TIntegerField
      FieldName = 'ID_Produto'
    end
    object mEtiq_IndividualReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mEtiq_IndividualNome_Produto: TStringField
      FieldName = 'Nome_Produto'
      Size = 60
    end
    object mEtiq_IndividualTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
    object mEtiq_IndividualTamanho_USA: TStringField
      FieldName = 'Tamanho_USA'
      Size = 10
    end
    object mEtiq_IndividualTamanho_EUR: TStringField
      FieldName = 'Tamanho_EUR'
      Size = 10
    end
    object mEtiq_IndividualItem_Pedido: TIntegerField
      FieldName = 'Item_Pedido'
    end
    object mEtiq_IndividualID_Pedido: TIntegerField
      FieldName = 'ID_Pedido'
    end
    object mEtiq_IndividualNum_Pedido: TIntegerField
      FieldName = 'Num_Pedido'
    end
    object mEtiq_IndividualCodBarra: TStringField
      FieldName = 'CodBarra'
      Size = 30
    end
    object mEtiq_IndividualCaminhoFoto: TStringField
      FieldName = 'CaminhoFoto'
      Size = 200
    end
    object mEtiq_IndividualNomeCombinacao: TStringField
      FieldName = 'NomeCombinacao'
      Size = 60
    end
    object mEtiq_IndividualNome_Cliente: TStringField
      FieldName = 'Nome_Cliente'
      Size = 60
    end
    object mEtiq_IndividualDtEntrega: TDateField
      FieldName = 'DtEntrega'
    end
    object mEtiq_IndividualQtde: TFloatField
      FieldName = 'Qtde'
    end
    object mEtiq_IndividualPedido_Cliente: TStringField
      FieldName = 'Pedido_Cliente'
    end
    object mEtiq_IndividualUnidade: TStringField
      FieldName = 'Unidade'
      Size = 6
    end
    object mEtiq_IndividualPreco_Produto: TCurrencyField
      FieldName = 'Preco_Produto'
    end
    object mEtiq_IndividualTotalItens: TStringField
      FieldName = 'TotalItens'
      Size = 10
    end
    object mEtiq_IndividualCodBarra_Talao: TStringField
      FieldName = 'CodBarra_Talao'
    end
    object mEtiq_IndividualProcessos: TMemoField
      FieldName = 'Processos'
      BlobType = ftMemo
      Size = 1
    end
    object mEtiq_IndividualNumOS: TStringField
      FieldName = 'NumOS'
      Size = 30
    end
    object mEtiq_IndividualEncerado: TStringField
      FieldName = 'Encerado'
      Size = 1
    end
    object mEtiq_IndividualObs_Etiqueta: TStringField
      FieldName = 'Obs_Etiqueta'
      Size = 30
    end
    object mEtiq_IndividualParcela3X: TCurrencyField
      FieldName = 'Parcela3X'
    end
    object mEtiq_IndividualParcela2X: TCurrencyField
      FieldName = 'Parcela2X'
    end
    object mEtiq_IndividualDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object mEtiq_IndividualMarca: TStringField
      FieldName = 'Marca'
      Size = 30
    end
  end
  object sdsPedido_Item2: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PED.ID, PED.NUM_PEDIDO, ITE.ITEM, ITE.REFERENCIA, ITE.NOM' +
      'EPRODUTO, ITE.TAMANHO, PRO.ID_GRADE, GI.TAMANHO_USA,'#13#10'       GI.' +
      'TAMANHO_EUR, ITE.QTD, ITE.ID_PRODUTO, PRO.FOTO, COMB.NOME NOME_C' +
      'OMBINACAO, ITE.ID_COR,'#13#10'       PED.DTENTREGA DTENTREGA_PED, ITE.' +
      'DTENTREGA DTENTREGA_ITEM, PED.ID_CLIENTE, PED.PEDIDO_CLIENTE, IT' +
      'E.UNIDADE,'#13#10'       PRO.ID_PROCESSO_GRUPO,'#13#10'       (SELECT COUNT(' +
      '1)'#13#10'        FROM PEDIDO_ITEM PI'#13#10'        WHERE PI.ID = PED.ID) C' +
      'ONTADOR_ITENS, ITE.NUMOS, ITE.ENCERADO, PRO.TAMANHO TAM_INDIVIDU' +
      'AL, ITE.TALAO_IMPRESSO,'#13#10'       ITE.OBS_ETIQUETA, PRO.COD_BARRA,' +
      ' ITE.COD_COR_CLIENTE, ITE.NOME_COR_CLIENTE, ITE.TAMANHO_CLIENTE,' +
      #13#10'       ITE.COD_PRODUTO_CLIENTE, PED.DTEMISSAO'#13#10'FROM PEDIDO PED' +
      #13#10'INNER JOIN PEDIDO_ITEM ITE ON (PED.ID = ITE.ID)'#13#10'INNER JOIN PR' +
      'ODUTO PRO ON (ITE.ID_PRODUTO = PRO.ID)'#13#10'LEFT JOIN GRADE_ITENS GI' +
      ' ON (PRO.ID_GRADE = GI.ID AND ITE.TAMANHO = GI.TAMANHO)'#13#10'LEFT JO' +
      'IN COMBINACAO COMB ON (ITE.ID_COR = COMB.ID) '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 392
  end
  object dspPedido_Item2: TDataSetProvider
    DataSet = sdsPedido_Item2
    Left = 496
    Top = 392
  end
  object cdsPedido_Item2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido_Item2'
    Left = 536
    Top = 392
    object cdsPedido_Item2ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedido_Item2NUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPedido_Item2ITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPedido_Item2REFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsPedido_Item2NOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsPedido_Item2TAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsPedido_Item2ID_GRADE: TIntegerField
      FieldName = 'ID_GRADE'
    end
    object cdsPedido_Item2TAMANHO_USA: TStringField
      FieldName = 'TAMANHO_USA'
      Size = 10
    end
    object cdsPedido_Item2TAMANHO_EUR: TStringField
      FieldName = 'TAMANHO_EUR'
      Size = 10
    end
    object cdsPedido_Item2QTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedido_Item2ID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsPedido_Item2FOTO: TStringField
      FieldName = 'FOTO'
      Size = 150
    end
    object cdsPedido_Item2NOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
    object cdsPedido_Item2ID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object cdsPedido_Item2DTENTREGA_PED: TDateField
      FieldName = 'DTENTREGA_PED'
    end
    object cdsPedido_Item2DTENTREGA_ITEM: TDateField
      FieldName = 'DTENTREGA_ITEM'
    end
    object cdsPedido_Item2ID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsPedido_Item2PEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsPedido_Item2UNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsPedido_Item2CONTADOR_ITENS: TIntegerField
      FieldName = 'CONTADOR_ITENS'
    end
    object cdsPedido_Item2ID_PROCESSO_GRUPO: TIntegerField
      FieldName = 'ID_PROCESSO_GRUPO'
    end
    object cdsPedido_Item2NUMOS: TStringField
      FieldName = 'NUMOS'
      Size = 30
    end
    object cdsPedido_Item2ENCERADO: TStringField
      FieldName = 'ENCERADO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_Item2TAM_INDIVIDUAL: TStringField
      FieldName = 'TAM_INDIVIDUAL'
      Size = 3
    end
    object cdsPedido_Item2TALAO_IMPRESSO: TStringField
      FieldName = 'TALAO_IMPRESSO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_Item2OBS_ETIQUETA: TStringField
      FieldName = 'OBS_ETIQUETA'
      Size = 30
    end
    object cdsPedido_Item2COD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object cdsPedido_Item2COD_COR_CLIENTE: TStringField
      FieldName = 'COD_COR_CLIENTE'
      Size = 10
    end
    object cdsPedido_Item2NOME_COR_CLIENTE: TStringField
      FieldName = 'NOME_COR_CLIENTE'
      Size = 100
    end
    object cdsPedido_Item2TAMANHO_CLIENTE: TStringField
      FieldName = 'TAMANHO_CLIENTE'
      Size = 10
    end
    object cdsPedido_Item2COD_PRODUTO_CLIENTE: TStringField
      FieldName = 'COD_PRODUTO_CLIENTE'
      Size = 15
    end
    object cdsPedido_Item2DTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
  end
  object dsPedido_Item2: TDataSource
    DataSet = cdsPedido_Item2
    Left = 584
    Top = 392
  end
  object dsmEtiq_Individual: TDataSource
    DataSet = mEtiq_Individual
    Left = 752
    Top = 280
  end
  object sdsProduto_Tam: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.id, P.TAMANHO'#13#10'FROM PRODUTO_TAM P'#13#10'WHERE ID = :ID'#13#10'UNIO' +
      'N ALL'#13#10'SELECT PP.id, PP.TAMANHO'#13#10'FROM PRODUTO PP'#13#10'WHERE ID = :ID' +
      #13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 248
  end
  object dspProduto_Tam: TDataSetProvider
    DataSet = sdsProduto_Tam
    Left = 496
    Top = 248
  end
  object cdsProduto_Tam: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto_Tam'
    Left = 536
    Top = 248
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
    Left = 584
    Top = 248
  end
  object qGradeMarcar: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TAMANHO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM GRADE_ITENS'
      'WHERE ID = :ID'
      '  AND TAMANHO = :TAMANHO')
    SQLConnection = dmDatabase.scoDados
    Left = 560
    Top = 10
    object qGradeMarcarID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qGradeMarcarTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
    object qGradeMarcarTAMANHO_USA: TStringField
      FieldName = 'TAMANHO_USA'
      Size = 10
    end
    object qGradeMarcarTAMANHO_EUR: TStringField
      FieldName = 'TAMANHO_EUR'
      Size = 10
    end
  end
  object frxReport1: TfrxReport
    Tag = 1
    Version = '5.6.8'
    DotMatrixReport = False
    EngineOptions.PrintIfEmpty = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42052.436473541700000000
    ReportOptions.LastChange = 43425.589071840280000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnBeforePrint = frxReport1BeforePrint
    OnPreview = frxReport1Preview
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 704
    Top = 360
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxmEtiq_Individual'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_Produto=ID_Produto'
      'Referencia=Referencia'
      'Nome_Produto=Nome_Produto'
      'Tamanho=Tamanho'
      'Tamanho_USA=Tamanho_USA'
      'Tamanho_EUR=Tamanho_EUR'
      'Item_Pedido=Item_Pedido'
      'ID_Pedido=ID_Pedido'
      'Num_Pedido=Num_Pedido'
      'CodBarra=CodBarra'
      'CaminhoFoto=CaminhoFoto'
      'NomeCombinacao=NomeCombinacao'
      'Nome_Cliente=Nome_Cliente'
      'DtEntrega=DtEntrega'
      'Qtde=Qtde'
      'Pedido_Cliente=Pedido_Cliente'
      'Unidade=Unidade'
      'Preco_Produto=Preco_Produto'
      'TotalItens=TotalItens'
      'CodBarra_Talao=CodBarra_Talao'
      'Processos=Processos'
      'NumOS=NumOS'
      'Encerado=Encerado'
      'Obs_Etiqueta=Obs_Etiqueta'
      'Parcela3X=Parcela3X'
      'Parcela2X=Parcela2X'
      'DtEmissao=DtEmissao'
      'Marca=Marca')
    DataSource = dsmEtiq_Individual
    BCDToCurrency = False
    Left = 704
    Top = 408
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 736
    Top = 360
  end
  object sdsPedido_Fut: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT NP.ID ID_NOTA, NP.ITEM ITEM_NOTA, NP.QTD, NT.NUMNOTA, NT.' +
      'DTEMISSAO, NT.SERIE, NT.TIPO_NOTA,'#13#10'NP.ITEM_PEDIDO'#13#10'FROM NOTAFIS' +
      'CAL_FUT NP'#13#10'INNER JOIN NOTAFISCAL NT'#13#10'ON NP.ID = NT.ID'#13#10'WHERE NP' +
      '.ID_PEDIDO = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 554
  end
  object cdsPedido_Fut: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido_Fut'
    Left = 120
    Top = 554
    object cdsPedido_FutID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
      Required = True
    end
    object cdsPedido_FutITEM_NOTA: TIntegerField
      FieldName = 'ITEM_NOTA'
      Required = True
    end
    object cdsPedido_FutQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedido_FutNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsPedido_FutDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsPedido_FutSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsPedido_FutTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_FutITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
  end
  object dsPedido_Fut: TDataSource
    DataSet = cdsPedido_Fut
    Left = 160
    Top = 554
  end
  object dspPedido_Fut: TDataSetProvider
    DataSet = sdsPedido_Fut
    Left = 80
    Top = 554
  end
  object sdsLiberado: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PE.ID, PE.PEDIDO_CLIENTE, PE.id_cliente, PE.DTEMISSAO, PI' +
      '.id_produto, PI.id_cfop, PE.NUM_PEDIDO,'#13#10'PI.vlr_unitario, PI.qtd' +
      ', PI.qtd_faturado, PI.qtd_restante, PI.qtd_afaturar, PI.ID_NCM I' +
      'D_NCM_PED,  PI.REFERENCIA, PI.ITEM_CLIENTE, '#13#10'CLI.nome NOMECLIEN' +
      'TE, PRO.REFERENCIA REFERENCIA_PRO, PRO.NOME NOMEPRODUTO, CLI.cnp' +
      'j_cpf,  PI.dtentrega, PI.item, PI.VLR_DESCONTO, PRO.ID_NCM, PI.U' +
      'NIDADE, PI.PERC_IPI, PI.OBS_COMPLEMENTAR, PI.NUMOS, PE.TIPO_FRET' +
      'E, PE.ID_CONDPGTO, PE.IMP_OC_NOTA, PI.ID_VARIACAO, PI.QTD_LIBERA' +
      'DA, PI.QTD_PRODUZIDA, PE.TIPO_REG, PI.TAMANHO, PE.ID_TRANSPORTAD' +
      'ORA, PE.NUM_DOC, PI.NUM_TALAO, PI.VLR_DESCONTORATEIO, PI.QTD_PEC' +
      'A, PI.QTD_FUT'#13#10'FROM PEDIDO PE'#13#10'INNER JOIN PEDIDO_ITEM PI ON (PE.' +
      'ID = PI.ID)'#13#10'INNER JOIN PESSOA CLI ON (PE.ID_CLIENTE = CLI.CODIG' +
      'O)'#13#10'INNER JOIN PRODUTO PRO ON (PI.ID_PRODUTO = PRO.ID)'#13#10'WHERE PI' +
      '.qtd_restante > 0'#13#10'     AND PE.TIPO_REG = '#39'P'#39#13#10'      '#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 817
    Top = 605
  end
  object dspLiberado: TDataSetProvider
    DataSet = sdsLiberado
    Left = 849
    Top = 605
  end
  object cdsLiberado: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspLiberado'
    OnCalcFields = cdsLiberadoCalcFields
    Left = 889
    Top = 605
    object cdsLiberadoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsLiberadoPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsLiberadoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsLiberadoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsLiberadoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsLiberadoID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsLiberadoNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsLiberadoVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsLiberadoQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '0.####'
    end
    object cdsLiberadoQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
      DisplayFormat = '0.####'
    end
    object cdsLiberadoQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
      DisplayFormat = '0.####'
    end
    object cdsLiberadoQTD_AFATURAR: TFloatField
      FieldName = 'QTD_AFATURAR'
      DisplayFormat = '0.####'
    end
    object cdsLiberadoID_NCM_PED: TIntegerField
      FieldName = 'ID_NCM_PED'
    end
    object cdsLiberadoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsLiberadoITEM_CLIENTE: TIntegerField
      FieldName = 'ITEM_CLIENTE'
    end
    object cdsLiberadoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 60
    end
    object cdsLiberadoREFERENCIA_PRO: TStringField
      FieldName = 'REFERENCIA_PRO'
    end
    object cdsLiberadoNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsLiberadoCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsLiberadoDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsLiberadoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsLiberadoVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object cdsLiberadoID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsLiberadoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsLiberadoPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsLiberadoOBS_COMPLEMENTAR: TStringField
      FieldName = 'OBS_COMPLEMENTAR'
      Size = 250
    end
    object cdsLiberadoNUMOS: TStringField
      FieldName = 'NUMOS'
      Size = 30
    end
    object cdsLiberadoTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
    object cdsLiberadoID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsLiberadoIMP_OC_NOTA: TStringField
      FieldName = 'IMP_OC_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsLiberadoID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
    object cdsLiberadoQTD_LIBERADA: TFloatField
      FieldName = 'QTD_LIBERADA'
    end
    object cdsLiberadoQTD_PRODUZIDA: TFloatField
      FieldName = 'QTD_PRODUZIDA'
    end
    object cdsLiberadoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsLiberadoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsLiberadoID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsLiberadoNUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object cdsLiberadoNUM_TALAO: TStringField
      FieldName = 'NUM_TALAO'
      Size = 15
    end
    object cdsLiberadoVLR_DESCONTORATEIO: TFloatField
      FieldName = 'VLR_DESCONTORATEIO'
    end
    object cdsLiberadoQTD_PECA: TIntegerField
      FieldName = 'QTD_PECA'
    end
    object cdsLiberadoQTD_FUT: TFloatField
      FieldName = 'QTD_FUT'
    end
    object cdsLiberadoclQtd_Restante: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clQtd_Restante'
      Calculated = True
    end
  end
  object dsLiberado: TDataSource
    DataSet = cdsLiberado
    Left = 929
    Top = 605
  end
  object qFilial_Relatorios: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'POSICAO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT F.tipo, F.caminho, F.posicao'
      'FROM FILIAL_RELATORIOS F'
      'WHERE F.tipo = :TIPO'
      '  AND F.posicao = :POSICAO')
    SQLConnection = dmDatabase.scoDados
    Left = 848
    Top = 552
    object qFilial_RelatoriosTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object qFilial_RelatoriosCAMINHO: TStringField
      FieldName = 'CAMINHO'
      Size = 150
    end
    object qFilial_RelatoriosPOSICAO: TSmallintField
      FieldName = 'POSICAO'
    end
  end
  object dsFilialRelatorios: TDataSource
    DataSet = cdsFilialRelatorios
    Left = 552
    Top = 436
  end
  object cdsFilialRelatorios: TClientDataSet
    Aggregates = <>
    DataSetField = cdsFilialsdsFilialRelatorios
    Params = <>
    Left = 520
    Top = 436
    object cdsFilialRelatoriosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFilialRelatoriosITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsFilialRelatoriosTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object cdsFilialRelatoriosCAMINHO: TStringField
      FieldName = 'CAMINHO'
      Size = 150
    end
    object cdsFilialRelatoriosPOSICAO: TSmallintField
      FieldName = 'POSICAO'
    end
  end
  object sdsFilialRelatorios: TSQLDataSet
    CommandText = 'SELECT * '#13#10'FROM FILIAL_RELATORIOS'#13#10'WHERE ID = :ID'
    DataSource = dsmFilial
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 436
  end
  object dsmFilial: TDataSource
    DataSet = sdsFilial
    Left = 456
    Top = 436
  end
  object sdsCBarra: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM CBARRA'#13#10'WHERE ID_PRODUTO = :P1'#13#10'AND ID_COR = :C1'#13 +
      #10'AND TAMANHO = :T1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'P1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'C1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'T1'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 481
  end
  object dspCBarra: TDataSetProvider
    DataSet = sdsCBarra
    UpdateMode = upWhereKeyOnly
    Left = 496
    Top = 481
  end
  object cdsCBarra: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCBarra'
    Left = 536
    Top = 481
    object cdsCBarraID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsCBarraID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsCBarraTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsCBarraCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 13
    end
  end
  object dscBarra: TDataSource
    DataSet = cdsCBarra
    Left = 576
    Top = 481
  end
  object sdsPedido_Comb: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT SUM(V.qtd) Qtd, SUM(V.qtd_faturado) Qtd_Faturado , SUM(V.' +
      'qtd_restante) qtd_restante,'#13#10'SUM(V.qtd_cancelado) qtd_cancelado,' +
      ' SUM(V.qtd_peca) qtd_peca,  SUM(V.vlr_total) vlr_total,'#13#10'SUM(V.v' +
      'lr_restante) vlr_restante, SUM(V.vlr_faturado) vlr_faturado,'#13#10' S' +
      'UM(V.vlr_cancelado) vlr_cancelado,'#13#10'V.nome_produto, v.referencia' +
      ', V.ID_PRODUTO, v.id_cor, v.nome_cor_combinacao, V.TAM_CALC'#13#10'FRO' +
      'M vpedido_item V'#13#10#13#10'GROUP BY'#13#10' V.nome_produto, v.referencia, V.I' +
      'D_PRODUTO, v.id_cor, v.nome_cor_combinacao, V.TAM_CALC'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 201
  end
  object dspPedido_Comb: TDataSetProvider
    DataSet = sdsPedido_Comb
    Left = 80
    Top = 201
  end
  object cdsPedido_Comb: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'QTD'
        DataType = ftFloat
      end
      item
        Name = 'QTD_FATURADO'
        DataType = ftFloat
      end
      item
        Name = 'QTD_RESTANTE'
        DataType = ftFloat
      end
      item
        Name = 'QTD_CANCELADO'
        DataType = ftFloat
      end
      item
        Name = 'QTD_PECA'
        DataType = ftFMTBcd
        Precision = 15
      end
      item
        Name = 'VLR_TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'VLR_RESTANTE'
        DataType = ftFloat
      end
      item
        Name = 'VLR_FATURADO'
        DataType = ftFloat
      end
      item
        Name = 'VLR_CANCELADO'
        DataType = ftFloat
      end
      item
        Name = 'NOME_PRODUTO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'REFERENCIA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ID_PRODUTO'
        DataType = ftInteger
      end
      item
        Name = 'ID_COR'
        DataType = ftFMTBcd
        Precision = 15
      end
      item
        Name = 'NOME_COR_COMBINACAO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'TAM_CALC'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspPedido_Comb'
    StoreDefs = True
    Left = 120
    Top = 201
    object cdsPedido_CombQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedido_CombQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsPedido_CombQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsPedido_CombQTD_CANCELADO: TFloatField
      FieldName = 'QTD_CANCELADO'
    end
    object cdsPedido_CombQTD_PECA: TFMTBCDField
      FieldName = 'QTD_PECA'
      Precision = 15
      Size = 0
    end
    object cdsPedido_CombVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedido_CombVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedido_CombVLR_FATURADO: TFloatField
      FieldName = 'VLR_FATURADO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedido_CombVLR_CANCELADO: TFloatField
      FieldName = 'VLR_CANCELADO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedido_CombNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsPedido_CombREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsPedido_CombID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsPedido_CombID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object cdsPedido_CombNOME_COR_COMBINACAO: TStringField
      FieldName = 'NOME_COR_COMBINACAO'
      Size = 60
    end
    object cdsPedido_CombTAM_CALC: TFloatField
      FieldName = 'TAM_CALC'
    end
  end
  object dsPedido_Comb: TDataSource
    DataSet = cdsPedido_Comb
    Left = 160
    Top = 201
  end
  object qParametros_Ped: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_PED'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 688
    Top = 560
    object qParametros_PedID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_PedFATURAR_PED_INTEGRAL: TStringField
      FieldName = 'FATURAR_PED_INTEGRAL'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSA_DTEXPEDICAO: TStringField
      FieldName = 'USA_DTEXPEDICAO'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedIMP_RESUMO_UNID: TStringField
      FieldName = 'IMP_RESUMO_UNID'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSA_OPERACAO_SERV: TStringField
      FieldName = 'USA_OPERACAO_SERV'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSA_OS_REMESSA: TStringField
      FieldName = 'USA_OS_REMESSA'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSA_NUM_TALAO: TStringField
      FieldName = 'USA_NUM_TALAO'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedCONCATENA_PROD_COR_TAM: TStringField
      FieldName = 'CONCATENA_PROD_COR_TAM'
      FixedChar = True
      Size = 1
    end
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxPedido'
    OnFirst = frxDBDataset2First
    OnNext = frxDBDataset2Next
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_CLIENTE=ID_CLIENTE'
      'ID=ID'
      'PEDIDO_CLIENTE=PEDIDO_CLIENTE'
      'DTEMISSAO=DTEMISSAO'
      'NUM_PEDIDO=NUM_PEDIDO'
      'ID_VENDEDOR=ID_VENDEDOR'
      'FILIAL=FILIAL'
      'NOME_FILIAL=NOME_FILIAL'
      'NOME_FILIAL_INT=NOME_FILIAL_INT'
      'NOME_CLIENTE=NOME_CLIENTE'
      'NOME_VENDEDOR=NOME_VENDEDOR'
      'FANTASIA=FANTASIA'
      'DTENTREGA_ITEM=DTENTREGA_ITEM'
      'QTD=QTD'
      'QTD_FATURADO=QTD_FATURADO'
      'QTD_RESTANTE=QTD_RESTANTE'
      'QTD_CANCELADO=QTD_CANCELADO'
      'VLR_RESTANTE=VLR_RESTANTE'
      'VLR_FATURADO=VLR_FATURADO'
      'VLR_CANCELADO=VLR_CANCELADO'
      'VLR_TOTAL=VLR_TOTAL'
      'CLIENTE_ESTOQUE=CLIENTE_ESTOQUE'
      'APROVADO_PED=APROVADO_PED'
      'DTAPROVACAO=DTAPROVACAO'
      'DTFATURA=DTFATURA'
      'DTEXPEDICAO=DTEXPEDICAO'
      'ID_TRANSPORTADORA=ID_TRANSPORTADORA'
      'NOME_TRANSPORTADORA=NOME_TRANSPORTADORA'
      'UF=UF'
      'CIDADE=CIDADE'
      'NOME_PRODUTO_PROPOSTA=NOME_PRODUTO_PROPOSTA'
      'DTENTREGA_PED=DTENTREGA_PED')
    DataSource = dsPedido
    BCDToCurrency = False
    Left = 752
    Top = 407
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 776
    Top = 359
  end
  object frxMailExport1: TfrxMailExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ShowExportDialog = True
    SmtpPort = 25
    UseIniFile = True
    TimeOut = 60
    ConfurmReading = False
    UseMAPI = SMTP
    MAPISendFlag = 0
    Left = 816
    Top = 359
  end
  object frxRichObject1: TfrxRichObject
    Left = 848
    Top = 359
  end
  object sdsProduto_Sem_Venda: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PRO.id id_produto, PRO.referencia, PRO.nome, MAX(v.dtemis' +
      'sao) DTEMISSAO'#13#10' FROM PRODUTO PRO'#13#10' left join vpedido_item v'#13#10'  ' +
      ' on v.id_produto = pro.id'#13#10'WHERE PRO.tipo_reg = '#39'P'#39#13#10'  AND pro.i' +
      'nativo = '#39'N'#39' '#13#10'  AND not exists (select 1 from vpedido_item vp'#13#10 +
      '                    where vp.dtemissao >= :data'#13#10'               ' +
      '       and vp.id_produto = pro.id'#13#10'                      and vp.' +
      'tipo_reg = '#39'P'#39')'#13#10'GROUP BY PRO.id, PRO.referencia, PRO.nome'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'data'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 104
  end
  object dspProduto_Sem_Venda: TDataSetProvider
    DataSet = sdsProduto_Sem_Venda
    Left = 496
    Top = 104
  end
  object cdsProduto_Sem_Venda: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'REFERENCIA'
    Params = <>
    ProviderName = 'dspProduto_Sem_Venda'
    Left = 536
    Top = 104
    object cdsProduto_Sem_VendaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cdsProduto_Sem_VendaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsProduto_Sem_VendaNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsProduto_Sem_VendaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
  end
  object dsProduto_Sem_Venda: TDataSource
    DataSet = cdsProduto_Sem_Venda
    Left = 584
    Top = 104
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxProduto_Sem_Venda'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_PRODUTO=ID_PRODUTO'
      'REFERENCIA=REFERENCIA'
      'NOME=NOME'
      'DTEMISSAO=DTEMISSAO')
    DataSource = dsProduto_Sem_Venda
    BCDToCurrency = False
    Left = 800
    Top = 407
  end
  object qParametros_Prod: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_PROD'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 712
    Top = 608
    object qParametros_ProdID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_ProdGERAR_COD_BARRA_INT: TStringField
      FieldName = 'GERAR_COD_BARRA_INT'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdUSA_TAM_INDIVIDUAL: TStringField
      FieldName = 'USA_TAM_INDIVIDUAL'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdMOSTRAR_TAM_CALC: TStringField
      FieldName = 'MOSTRAR_TAM_CALC'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdATUALIZA_PESO_ENG: TStringField
      FieldName = 'ATUALIZA_PESO_ENG'
      FixedChar = True
      Size = 1
    end
  end
  object sdsConsPedido_Proc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PED.id, PED.id_cliente, PED.num_pedido, PED.filial,'#13#10'PED.' +
      'pedido_cliente, PED.dtemissao, PED.dtentrega, PED.vlr_total, PED' +
      '.vlr_itens, PED.faturado,'#13#10'PED.qtd, PED.cancelado, PED.aprovado_' +
      'orc, PED.ID_VENDEDOR, PED.ID_CFOP, CLI.NOME NOMECLIENTE_CAD, '#13#10'P' +
      'ED.TIPO_REG, PED.PERC_COMISSAO, PED.NOME_CLIENTE, CLI.FANTASIA, ' +
      'CLI.UF,'#13#10'TRA.NOME NOME_TRANSPORTADORA, PED.VLR_IPI, PP.tipo_stat' +
      'us, pp.cod_rastreamento,'#13#10'pp.email_enviado,'#13#10'case'#13#10'  when pp.tip' +
      'o_status = '#39'C'#39' then '#39'Cadastro'#39#13#10'  when pp.tipo_status = '#39'E'#39' then' +
      ' '#39'Lib.Expedi'#231#227'o'#39#13#10'  when pp.tipo_status = '#39'F'#39' then '#39'Faturado'#39#13#10' ' +
      ' when pp.tipo_status = '#39'T'#39' then '#39'Transporte'#39#13#10'  end DESCRICAO_ST' +
      'ATUS'#13#10'FROM PEDIDO PED'#13#10'LEFT JOIN PESSOA CLI'#13#10'  ON PED.ID_CLIENTE' +
      ' = CLI.CODIGO'#13#10'left join pedido_processo pp'#13#10'on ped.id = pp.id'#13#10 +
      'and pp.item = (select MAX(PP2.item)  from pedido_processo pp2 wh' +
      'ere pp2.id = ped.id)'#13#10'LEFT JOIN PESSOA TRA'#13#10'  ON pp.ID_TRANSPORT' +
      'ADORA = TRA.CODIGO'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 529
  end
  object dspConsPedido_Proc: TDataSetProvider
    DataSet = sdsConsPedido_Proc
    UpdateMode = upWhereKeyOnly
    Left = 496
    Top = 529
  end
  object cdsConsPedido_Proc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsPedido_Proc'
    Left = 536
    Top = 529
    object cdsConsPedido_ProcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsPedido_ProcID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsConsPedido_ProcNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsConsPedido_ProcFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsConsPedido_ProcPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsConsPedido_ProcDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsConsPedido_ProcDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsConsPedido_ProcVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsConsPedido_ProcVLR_ITENS: TFloatField
      FieldName = 'VLR_ITENS'
      DisplayFormat = '0.00'
    end
    object cdsConsPedido_ProcFATURADO: TStringField
      FieldName = 'FATURADO'
      FixedChar = True
      Size = 1
    end
    object cdsConsPedido_ProcQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsConsPedido_ProcCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsConsPedido_ProcAPROVADO_ORC: TStringField
      FieldName = 'APROVADO_ORC'
      FixedChar = True
      Size = 1
    end
    object cdsConsPedido_ProcID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsConsPedido_ProcID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsConsPedido_ProcNOMECLIENTE_CAD: TStringField
      FieldName = 'NOMECLIENTE_CAD'
      Size = 60
    end
    object cdsConsPedido_ProcTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsConsPedido_ProcPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsConsPedido_ProcNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsConsPedido_ProcFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsConsPedido_ProcUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsConsPedido_ProcNOME_TRANSPORTADORA: TStringField
      FieldName = 'NOME_TRANSPORTADORA'
      Size = 60
    end
    object cdsConsPedido_ProcVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object cdsConsPedido_ProcTIPO_STATUS: TStringField
      FieldName = 'TIPO_STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsConsPedido_ProcDESCRICAO_STATUS: TStringField
      FieldName = 'DESCRICAO_STATUS'
      FixedChar = True
      Size = 13
    end
    object cdsConsPedido_ProcCOD_RASTREAMENTO: TStringField
      FieldName = 'COD_RASTREAMENTO'
      Size = 25
    end
    object cdsConsPedido_ProcEMAIL_ENVIADO: TStringField
      FieldName = 'EMAIL_ENVIADO'
      FixedChar = True
      Size = 1
    end
  end
  object dsConsPedido_Proc: TDataSource
    DataSet = cdsConsPedido_Proc
    Left = 576
    Top = 529
  end
  object qParametros_Lote: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_LOTE')
    SQLConnection = dmDatabase.scoDados
    Left = 248
    Top = 352
    object qParametros_LoteLOTE_TEXTIL: TStringField
      FieldName = 'LOTE_TEXTIL'
      FixedChar = True
      Size = 1
    end
  end
  object qProcesso_Grupo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT PG.*, P.nome, P.TIPO'
      'FROM PROCESSO_GRUPO_ITENS PG'
      'INNER JOIN PROCESSO P'
      'ON PG.id_processo = P.ID'
      'WHERE PG.ID = :ID'
      'ORDER BY PG.ORDEM')
    SQLConnection = dmDatabase.scoDados
    Left = 832
    Top = 272
    object qProcesso_GrupoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProcesso_GrupoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qProcesso_GrupoID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object qProcesso_GrupoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object qProcesso_GrupoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qProcesso_GrupoORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
  end
  object sdsPedido_Ref2: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT SUM(V.qtd) Qtd, SUM(V.qtd_faturado) Qtd_Faturado , SUM(V.' +
      'qtd_restante) qtd_restante,'#13#10'SUM(V.qtd_cancelado) qtd_cancelado,' +
      ' SUM(V.qtd_peca) qtd_peca,  SUM(V.vlr_total) vlr_total,'#13#10'SUM(V.v' +
      'lr_restante) vlr_restante, SUM(V.vlr_faturado) vlr_faturado,'#13#10' S' +
      'UM(V.vlr_cancelado) vlr_cancelado, V.id_cliente, V.nome_filial, ' +
      'V.nome_filial_int,'#13#10' V.nome_cliente, V.nome_vendedor, v.referenc' +
      'ia, v.pedido_cliente,'#13#10' v.dtemissao, v.dtentrega_ped, v.dtentreg' +
      'a_item,v.num_pedido,'#13#10'V.FILIAL, V.FANTASIA, v.unidade'#13#10'FROM vped' +
      'ido_item V'#13#10'GROUP BY V.id_cliente, V.nome_filial, V.nome_filial_' +
      'int,'#13#10' V.nome_cliente, V.nome_vendedor, v.referencia, v.pedido_c' +
      'liente,'#13#10' v.dtemissao, v.dtentrega_ped, v.dtentrega_item,v.num_p' +
      'edido,'#13#10'V.FILIAL, V.FANTASIA, v.unidade'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 760
    Top = 34
  end
  object dspPedido_Ref2: TDataSetProvider
    DataSet = sdsPedido_Ref2
    Left = 800
    Top = 34
  end
  object cdsPedido_Ref2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido_Ref2'
    Left = 840
    Top = 34
    object cdsPedido_Ref2QTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedido_Ref2QTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsPedido_Ref2QTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsPedido_Ref2QTD_CANCELADO: TFloatField
      FieldName = 'QTD_CANCELADO'
    end
    object cdsPedido_Ref2QTD_PECA: TFMTBCDField
      FieldName = 'QTD_PECA'
      Precision = 15
      Size = 0
    end
    object cdsPedido_Ref2VLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsPedido_Ref2VLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
    end
    object cdsPedido_Ref2VLR_FATURADO: TFloatField
      FieldName = 'VLR_FATURADO'
    end
    object cdsPedido_Ref2VLR_CANCELADO: TFloatField
      FieldName = 'VLR_CANCELADO'
    end
    object cdsPedido_Ref2ID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsPedido_Ref2NOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object cdsPedido_Ref2NOME_FILIAL_INT: TStringField
      FieldName = 'NOME_FILIAL_INT'
      Size = 30
    end
    object cdsPedido_Ref2NOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsPedido_Ref2NOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 60
    end
    object cdsPedido_Ref2REFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsPedido_Ref2PEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsPedido_Ref2DTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsPedido_Ref2DTENTREGA_PED: TDateField
      FieldName = 'DTENTREGA_PED'
    end
    object cdsPedido_Ref2DTENTREGA_ITEM: TDateField
      FieldName = 'DTENTREGA_ITEM'
    end
    object cdsPedido_Ref2NUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPedido_Ref2FILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsPedido_Ref2FANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsPedido_Ref2UNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
  end
  object dsPedido_Ref2: TDataSource
    DataSet = cdsPedido_Ref2
    Left = 880
    Top = 34
  end
  object frxPedido_Ref2: TfrxDBDataset
    UserName = 'frxPedido_Ref2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'QTD=QTD'
      'QTD_FATURADO=QTD_FATURADO'
      'QTD_RESTANTE=QTD_RESTANTE'
      'QTD_CANCELADO=QTD_CANCELADO'
      'QTD_PECA=QTD_PECA'
      'VLR_TOTAL=VLR_TOTAL'
      'VLR_RESTANTE=VLR_RESTANTE'
      'VLR_FATURADO=VLR_FATURADO'
      'VLR_CANCELADO=VLR_CANCELADO'
      'ID_CLIENTE=ID_CLIENTE'
      'NOME_FILIAL=NOME_FILIAL'
      'NOME_FILIAL_INT=NOME_FILIAL_INT'
      'NOME_CLIENTE=NOME_CLIENTE'
      'NOME_VENDEDOR=NOME_VENDEDOR'
      'REFERENCIA=REFERENCIA'
      'PEDIDO_CLIENTE=PEDIDO_CLIENTE'
      'DTEMISSAO=DTEMISSAO'
      'DTENTREGA_PED=DTENTREGA_PED'
      'DTENTREGA_ITEM=DTENTREGA_ITEM'
      'NUM_PEDIDO=NUM_PEDIDO'
      'FILIAL=FILIAL'
      'FANTASIA=FANTASIA'
      'UNIDADE=UNIDADE')
    DataSource = dsPedido_Ref2
    BCDToCurrency = False
    Left = 856
    Top = 407
  end
  object mUnidade: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Unidade'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'Qtd_Fat'
        DataType = ftFloat
      end
      item
        Name = 'Qtd_Rest'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'Unidade'
    Params = <>
    StoreDefs = True
    OnNewRecord = mUnidadeNewRecord
    Left = 872
    Top = 152
    Data = {
      630000009619E0BD010000001800000004000000000003000000630007556E69
      6461646501004900000001000557494454480200020006000351746408000400
      00000000075174645F4661740800040000000000085174645F52657374080004
      00000000000000}
    object mUnidadeUnidade: TStringField
      FieldName = 'Unidade'
      Size = 6
    end
    object mUnidadeQtd: TFloatField
      FieldName = 'Qtd'
      DisplayFormat = '###,###,##0.#####'
    end
    object mUnidadeQtd_Fat: TFloatField
      FieldName = 'Qtd_Fat'
      DisplayFormat = '###,###,##0.#####'
    end
    object mUnidadeQtd_Rest: TFloatField
      FieldName = 'Qtd_Rest'
      DisplayFormat = '###,###,##0.#####'
    end
  end
  object dsmUnidade: TDataSource
    DataSet = mUnidade
    Left = 912
    Top = 152
  end
  object frxmUnidade: TfrxDBDataset
    UserName = 'frxmUnidade'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Unidade=Unidade'
      'Qtd=Qtd'
      'Qtd_Fat=Qtd_Fat'
      'Qtd_Rest=Qtd_Rest')
    DataSource = dsmUnidade
    BCDToCurrency = False
    Left = 904
    Top = 408
  end
  object qParametros_Etiq: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_ETIQ')
    SQLConnection = dmDatabase.scoDados
    Left = 328
    Top = 408
    object qParametros_EtiqID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_EtiqOFFSET_BORDA: TIntegerField
      FieldName = 'OFFSET_BORDA'
    end
    object qParametros_EtiqBACKFEED: TIntegerField
      FieldName = 'BACKFEED'
    end
    object qParametros_EtiqTEMPERATURA: TIntegerField
      FieldName = 'TEMPERATURA'
    end
    object qParametros_EtiqVELOCIDADE: TStringField
      FieldName = 'VELOCIDADE'
      FixedChar = True
      Size = 1
    end
    object qParametros_EtiqENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object qParametros_EtiqTIPO_CLIENTE: TStringField
      FieldName = 'TIPO_CLIENTE'
      Size = 10
    end
    object qParametros_EtiqTIPO_IMPRESSORA: TStringField
      FieldName = 'TIPO_IMPRESSORA'
      Size = 10
    end
    object qParametros_EtiqDESLOCAMENTO_LATERAL: TStringField
      FieldName = 'DESLOCAMENTO_LATERAL'
      Size = 2
    end
    object qParametros_EtiqTIPO_IMP_ETIQ_INDIV: TStringField
      FieldName = 'TIPO_IMP_ETIQ_INDIV'
      FixedChar = True
      Size = 1
    end
    object qParametros_EtiqMARGEM: TSmallintField
      FieldName = 'MARGEM'
    end
    object qParametros_EtiqINF_ENTER: TStringField
      FieldName = 'INF_ENTER'
      FixedChar = True
      Size = 1
    end
    object qParametros_EtiqIMPRIME_PRECO: TStringField
      FieldName = 'IMPRIME_PRECO'
      FixedChar = True
      Size = 1
    end
    object qParametros_EtiqETIQ_TAG_NOVO_LAYOUT: TStringField
      FieldName = 'ETIQ_TAG_NOVO_LAYOUT'
      FixedChar = True
      Size = 1
    end
  end
  object sdsParametros_Etiq: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PARAMETROS_ETIQ'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 464
    Top = 56
    object sdsParametros_EtiqID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsParametros_EtiqOFFSET_BORDA: TIntegerField
      FieldName = 'OFFSET_BORDA'
    end
    object sdsParametros_EtiqBACKFEED: TIntegerField
      FieldName = 'BACKFEED'
    end
    object sdsParametros_EtiqTEMPERATURA: TIntegerField
      FieldName = 'TEMPERATURA'
    end
    object sdsParametros_EtiqVELOCIDADE: TStringField
      FieldName = 'VELOCIDADE'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_EtiqENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object sdsParametros_EtiqTIPO_CLIENTE: TStringField
      FieldName = 'TIPO_CLIENTE'
      Size = 10
    end
    object sdsParametros_EtiqTIPO_IMPRESSORA: TStringField
      FieldName = 'TIPO_IMPRESSORA'
      Size = 10
    end
    object sdsParametros_EtiqDESLOCAMENTO_LATERAL: TStringField
      FieldName = 'DESLOCAMENTO_LATERAL'
      Size = 2
    end
    object sdsParametros_EtiqMARGEM: TSmallintField
      FieldName = 'MARGEM'
    end
    object sdsParametros_EtiqINF_ENTER: TStringField
      FieldName = 'INF_ENTER'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_EtiqIMPRIME_PRECO: TStringField
      FieldName = 'IMPRIME_PRECO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_EtiqETIQ_TAG_NOVO_LAYOUT: TStringField
      FieldName = 'ETIQ_TAG_NOVO_LAYOUT'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_EtiqNAO_IMP_MSG_TROCA: TStringField
      FieldName = 'NAO_IMP_MSG_TROCA'
      FixedChar = True
      Size = 1
    end
  end
  object cdsParametros_Etiq: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspParametros_Etiq'
    Left = 536
    Top = 56
    object cdsParametros_EtiqID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsParametros_EtiqOFFSET_BORDA: TIntegerField
      FieldName = 'OFFSET_BORDA'
    end
    object cdsParametros_EtiqBACKFEED: TIntegerField
      FieldName = 'BACKFEED'
    end
    object cdsParametros_EtiqTEMPERATURA: TIntegerField
      FieldName = 'TEMPERATURA'
    end
    object cdsParametros_EtiqVELOCIDADE: TStringField
      FieldName = 'VELOCIDADE'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_EtiqENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object cdsParametros_EtiqTIPO_CLIENTE: TStringField
      FieldName = 'TIPO_CLIENTE'
      Size = 10
    end
    object cdsParametros_EtiqTIPO_IMPRESSORA: TStringField
      FieldName = 'TIPO_IMPRESSORA'
      Size = 10
    end
    object cdsParametros_EtiqDESLOCAMENTO_LATERAL: TStringField
      FieldName = 'DESLOCAMENTO_LATERAL'
      Size = 2
    end
    object cdsParametros_EtiqMARGEM: TSmallintField
      FieldName = 'MARGEM'
    end
    object cdsParametros_EtiqINF_ENTER: TStringField
      FieldName = 'INF_ENTER'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_EtiqIMPRIME_PRECO: TStringField
      FieldName = 'IMPRIME_PRECO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_EtiqETIQ_TAG_NOVO_LAYOUT: TStringField
      FieldName = 'ETIQ_TAG_NOVO_LAYOUT'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_EtiqNAO_IMP_MSG_TROCA: TStringField
      FieldName = 'NAO_IMP_MSG_TROCA'
      FixedChar = True
      Size = 1
    end
  end
  object dsParametros_Etiq: TDataSource
    DataSet = cdsParametros_Etiq
    Left = 592
    Top = 56
  end
  object dspParametros_Etiq: TDataSetProvider
    DataSet = sdsParametros_Etiq
    Left = 496
    Top = 56
  end
  object frxPedido_Item: TfrxDBDataset
    UserName = 'frxPedido_Item'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ITEM=ITEM'
      'ID_CLIENTE=ID_CLIENTE'
      'PEDIDO_CLIENTE=PEDIDO_CLIENTE'
      'DTEMISSAO=DTEMISSAO'
      'DTENTREGA_PED=DTENTREGA_PED'
      'ID_VENDEDOR=ID_VENDEDOR'
      'FILIAL=FILIAL'
      'NOME_FILIAL=NOME_FILIAL'
      'NOME_FILIAL_INT=NOME_FILIAL_INT'
      'NOME_CLIENTE=NOME_CLIENTE'
      'NOME_PRODUTO=NOME_PRODUTO'
      'REFERENCIA=REFERENCIA'
      'ID_PRODUTO=ID_PRODUTO'
      'DTENTREGA_ITEM=DTENTREGA_ITEM'
      'QTD=QTD'
      'QTD_FATURADO=QTD_FATURADO'
      'QTD_RESTANTE=QTD_RESTANTE'
      'QTD_CANCELADO=QTD_CANCELADO'
      'NOME_VENDEDOR=NOME_VENDEDOR'
      'NUM_PEDIDO=NUM_PEDIDO'
      'VLR_UNITARIO=VLR_UNITARIO'
      'VLR_DESCONTO=VLR_DESCONTO'
      'VLR_TOTAL=VLR_TOTAL'
      'VLR_RESTANTE=VLR_RESTANTE'
      'VLR_FATURADO=VLR_FATURADO'
      'VLR_CANCELADO=VLR_CANCELADO'
      'NUMOS=NUMOS'
      'FANTASIA=FANTASIA'
      'CLIENTE_ESTOQUE=CLIENTE_ESTOQUE'
      'NUM_DOC=NUM_DOC'
      'NUM_TALAO=NUM_TALAO'
      'NOME_PRODUTO_PED=NOME_PRODUTO_PED'
      'QTD_PECA=QTD_PECA'
      'QTD_FUT=QTD_FUT'
      'ID_COR=ID_COR'
      'NOME_COR_COMBINACAO=NOME_COR_COMBINACAO'
      'TIPO_REG=TIPO_REG'
      'TAMANHO=TAMANHO'
      'NOME_GRUPO=NOME_GRUPO'
      'APROVADO_PED=APROVADO_PED'
      'DTFATURA=DTFATURA'
      'DTEXPEDICAO=DTEXPEDICAO'
      'DTAPROVADO=DTAPROVADO'
      'UNIDADE=UNIDADE')
    DataSource = dsPedido_Item
    BCDToCurrency = False
    Left = 704
    Top = 456
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 920
    Top = 224
  end
  object mNotas_Ped: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Pedido'
        DataType = ftInteger
      end
      item
        Name = 'Item_Pedido'
        DataType = ftInteger
      end
      item
        Name = 'Num_Nota'
        DataType = ftInteger
      end
      item
        Name = 'Item_Nota'
        DataType = ftInteger
      end
      item
        Name = 'DtEmissao'
        DataType = ftDate
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end>
    IndexDefs = <>
    IndexFieldNames = 'ID_Pedido;Item_Pedido'
    MasterFields = 'ID;ITEM'
    MasterSource = dsPedido_Item
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    Left = 328
    Top = 104
    Data = {
      810000009619E0BD01000000180000000600000000000300000081000949445F
      50656469646F04000100000000000B4974656D5F50656469646F040001000000
      0000084E756D5F4E6F74610400010000000000094974656D5F4E6F7461040001
      0000000000094474456D697373616F0400060000000000035174640800040000
      0000000000}
    object mNotas_PedID_Pedido: TIntegerField
      FieldName = 'ID_Pedido'
    end
    object mNotas_PedItem_Pedido: TIntegerField
      FieldName = 'Item_Pedido'
    end
    object mNotas_PedNum_Nota: TIntegerField
      FieldName = 'Num_Nota'
    end
    object mNotas_PedItem_Nota: TIntegerField
      FieldName = 'Item_Nota'
    end
    object mNotas_PedDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object mNotas_PedQtd: TFloatField
      FieldName = 'Qtd'
    end
  end
  object dsmNota_Ped: TDataSource
    DataSet = mNotas_Ped
    Left = 352
    Top = 104
  end
  object frxmNota_ped: TfrxDBDataset
    UserName = 'frxmNota_ped'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_Pedido=ID_Pedido'
      'Item_Pedido=Item_Pedido'
      'Num_Nota=Num_Nota'
      'Item_Nota=Item_Nota'
      'DtEmissao=DtEmissao'
      'Qtd=Qtd')
    DataSource = dsmNota_Ped
    BCDToCurrency = False
    Left = 752
    Top = 456
  end
  object sdsPedidoFaturas: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT DISTINCT PED.PEDIDO_CLIENTE, PED.NOME_CLIENTE, NF.NUMNOTA' +
      ', NF.DTEMISSAO, NFP.ITEM, NFP.DTVENCIMENTO, NFP.VLR_VENCIMENTO'#13#10 +
      'FROM NOTAFISCAL_PARC NFP'#13#10' INNER JOIN NOTAFISCAL NF ON (NFP.ID =' +
      ' NF.ID)'#13#10' INNER JOIN NOTAFISCAL_PED NFPED ON (NFPED.ID = NF.ID)'#13 +
      #10' INNER JOIN PEDIDO PED ON (NFPED.ID_PEDIDO = PED.ID)'#13#10'WHERE 0 =' +
      ' 0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 602
  end
  object cdsPedidoFaturas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedidoFaturas'
    Left = 120
    Top = 602
    object cdsPedidoFaturasPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsPedidoFaturasNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsPedidoFaturasNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsPedidoFaturasDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsPedidoFaturasITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPedidoFaturasDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object cdsPedidoFaturasVLR_VENCIMENTO: TFloatField
      FieldName = 'VLR_VENCIMENTO'
      DisplayFormat = '0.00'
    end
  end
  object dsPedidoFaturas: TDataSource
    DataSet = cdsPedidoFaturas
    Left = 160
    Top = 602
  end
  object dspPedidoFaturas: TDataSetProvider
    DataSet = sdsPedidoFaturas
    Left = 80
    Top = 602
  end
  object qPedidoItem: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from VPEDIDO_ITEM'
      'where ID = :ID   ')
    SQLConnection = dmDatabase.scoDados
    Left = 264
    Top = 104
  end
  object frxqPedidoItem: TfrxDBDataset
    UserName = 'frxqPedidoItem'
    CloseDataSource = False
    DataSet = qPedidoItem
    BCDToCurrency = False
    Left = 808
    Top = 456
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = False
    EmptyLines = False
    SuppressPageHeadersFooters = False
    Left = 904
    Top = 360
  end
  object sdsPedidoTipo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.ID, P.NUM_PEDIDO, P.ID_CLIENTE, PI.QTD, PT.comprimento,' +
      ' PT.largura, P.DTEMISSAO,'#13#10'PT.espessura, PT.densidade, PT.peso, ' +
      'PT.id_tipo_material, TM.NOME NOME_TIPO_MATERIAL,'#13#10'PI.NOMEPRODUTO' +
      ', PI.ITEM,  PI.DTENTREGA, PI.OBS, P.NOME_CLIENTE, PI.FOTO,'#13#10'CLI.' +
      'FANTASIA FANTASIA_CLIENTE, PI.TEMPO,'#13#10'CASE'#13#10'  WHEN P.ID_CLIENTE ' +
      '= (SELECT PP.ID_CLIENTE_CONSUMIDOR FROM PARAMETROS PP) THEN P.NO' +
      'ME_CONSUMIDOR'#13#10'  ELSE CLI.FANTASIA'#13#10'  END NOME_CLIENTE2'#13#10'FROM PE' +
      'DIDO P'#13#10'INNER JOIN PEDIDO_ITEM PI'#13#10'ON P.ID = PI.ID'#13#10'INNER JOIN P' +
      'EDIDO_ITEM_TIPO PT'#13#10'ON PI.ID = PT.ID'#13#10'AND PI.ITEM = PT.ITEM'#13#10'INN' +
      'ER JOIN TIPO_MATERIAL TM'#13#10'ON PT.ID_TIPO_MATERIAL = TM.ID'#13#10'INNER ' +
      'JOIN PESSOA CLI'#13#10'ON P.ID_CLIENTE = CLI.CODIGO'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 272
    Top = 504
  end
  object dspPedidoTipo: TDataSetProvider
    DataSet = sdsPedidoTipo
    UpdateMode = upWhereKeyOnly
    Left = 312
    Top = 504
  end
  object cdsPedidoTipo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedidoTipo'
    Left = 352
    Top = 504
    object cdsPedidoTipoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedidoTipoNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPedidoTipoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsPedidoTipoQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedidoTipoCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object cdsPedidoTipoLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object cdsPedidoTipoESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
    end
    object cdsPedidoTipoDENSIDADE: TFloatField
      FieldName = 'DENSIDADE'
    end
    object cdsPedidoTipoPESO: TFloatField
      FieldName = 'PESO'
    end
    object cdsPedidoTipoID_TIPO_MATERIAL: TIntegerField
      FieldName = 'ID_TIPO_MATERIAL'
    end
    object cdsPedidoTipoNOME_TIPO_MATERIAL: TStringField
      FieldName = 'NOME_TIPO_MATERIAL'
      Size = 30
    end
    object cdsPedidoTipoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsPedidoTipoNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsPedidoTipoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPedidoTipoDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsPedidoTipoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPedidoTipoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsPedidoTipoFOTO: TStringField
      FieldName = 'FOTO'
      Size = 250
    end
    object cdsPedidoTipoFANTASIA_CLIENTE: TStringField
      FieldName = 'FANTASIA_CLIENTE'
      Size = 30
    end
    object cdsPedidoTipoNOME_CLIENTE2: TStringField
      FieldName = 'NOME_CLIENTE2'
      Size = 30
    end
    object cdsPedidoTipoTEMPO: TFloatField
      FieldName = 'TEMPO'
    end
  end
  object dsPedidoTipo: TDataSource
    DataSet = cdsPedidoTipo
    Left = 392
    Top = 504
  end
  object frxPedidoTipo: TfrxDBDataset
    UserName = 'frxPedidoTipo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NUM_PEDIDO=NUM_PEDIDO'
      'ID_CLIENTE=ID_CLIENTE'
      'QTD=QTD'
      'COMPRIMENTO=COMPRIMENTO'
      'LARGURA=LARGURA'
      'ESPESSURA=ESPESSURA'
      'DENSIDADE=DENSIDADE'
      'PESO=PESO'
      'ID_TIPO_MATERIAL=ID_TIPO_MATERIAL'
      'NOME_TIPO_MATERIAL=NOME_TIPO_MATERIAL'
      'DTEMISSAO=DTEMISSAO'
      'NOMEPRODUTO=NOMEPRODUTO'
      'ITEM=ITEM'
      'DTENTREGA=DTENTREGA'
      'OBS=OBS'
      'NOME_CLIENTE=NOME_CLIENTE'
      'FOTO=FOTO'
      'FANTASIA_CLIENTE=FANTASIA_CLIENTE'
      'NOME_CLIENTE2=NOME_CLIENTE2'
      'TEMPO=TEMPO')
    DataSource = dsPedidoTipo
    BCDToCurrency = False
    Left = 864
    Top = 456
  end
  object frxPedido_Fat: TfrxDBDataset
    UserName = 'frxPedido_Fat'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_NOTA=ID_NOTA'
      'ITEM_NOTA=ITEM_NOTA'
      'NUMNOTA=NUMNOTA'
      'DTEMISSAO=DTEMISSAO'
      'SERIE=SERIE'
      'TIPO_NOTA=TIPO_NOTA'
      'PEDIDO_CLIENTE=PEDIDO_CLIENTE'
      'ID_PEDIDO=ID_PEDIDO'
      'NOME=NOME'
      'REFERENCIA=REFERENCIA'
      'NOME_PRODUTO=NOME_PRODUTO'
      'VLR_UNITARIO=VLR_UNITARIO'
      'VLR_DESCONTO=VLR_DESCONTO'
      'VLR_DESCONTORATEIO=VLR_DESCONTORATEIO'
      'VLR_TOTAL=VLR_TOTAL'
      'QTD=QTD'
      'DTENTREGA=DTENTREGA'
      'QTD_PEDIDO=QTD_PEDIDO'
      'QTD_FATURADO=QTD_FATURADO'
      'QTD_RESTANTE=QTD_RESTANTE'
      'ITEM_PEDIDO=ITEM_PEDIDO'
      'VLR_RESTANTE=VLR_RESTANTE'
      'VLR_FATURADO=VLR_FATURADO'
      'VLR_CANCELADO=VLR_CANCELADO'
      'NUM_PEDIDO=NUM_PEDIDO'
      'FILIAL=FILIAL'
      'FANTASIA=FANTASIA'
      'NOME_CLIENTE=NOME_CLIENTE'
      'NOME_COR_COMBINACAO=NOME_COR_COMBINACAO'
      'CODCFOP=CODCFOP'
      'DTEMISSAO_PED=DTEMISSAO_PED'
      'DESC_NOTA=DESC_NOTA'
      'PESOBRUTO=PESOBRUTO'
      'DESC_TIPO_PRODUCAO=DESC_TIPO_PRODUCAO')
    DataSource = dsPedido_Fat
    BCDToCurrency = False
    Left = 912
    Top = 456
  end
  object mEtiqueta_Nav: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Nome_Empresa'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Fone'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'Nome_Etiqueta'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'Tamanho'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nome_Produto'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Nome_Cliente'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Qtd'
        DataType = ftInteger
      end
      item
        Name = 'Pedido_Cliente'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Fantasia_Cli'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DtEmissao'
        DataType = ftDate
      end
      item
        Name = 'Prod_Cliente'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NumOS'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Encerado'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Item_Ped'
        DataType = ftInteger
      end
      item
        Name = 'Unidade'
        DataType = ftString
        Size = 12
      end>
    IndexDefs = <>
    IndexFieldNames = 'Nome_Etiqueta;Tamanho'
    Params = <>
    StoreDefs = True
    Left = 704
    Top = 87
    Data = {
      DA0100009619E0BD010000001800000010000000000003000000DA010C4E6F6D
      655F456D70726573610100490000000100055749445448020002000F0004466F
      6E650100490000000100055749445448020002000C000D4E6F6D655F45746971
      7565746101004900000001000557494454480200020019000754616D616E686F
      0100490000000100055749445448020002000A000A5265666572656E63696101
      004900000001000557494454480200020014000C4E6F6D655F50726F6475746F
      01004900000001000557494454480200020064000C4E6F6D655F436C69656E74
      650100490000000100055749445448020002003C000351746404000100000000
      000E50656469646F5F436C69656E746501004900000001000557494454480200
      020014000C46616E74617369615F436C69010049000000010005574944544802
      0002002800094474456D697373616F04000600000000000C50726F645F436C69
      656E74650100490000000100055749445448020002001400054E756D4F530100
      490000000100055749445448020002001E0008456E63657261646F0100490000
      000100055749445448020002000A00084974656D5F5065640400010000000000
      07556E69646164650100490000000100055749445448020002000C000000}
    object mEtiqueta_NavNome_Empresa: TStringField
      FieldName = 'Nome_Empresa'
      Size = 15
    end
    object mEtiqueta_NavFone: TStringField
      FieldName = 'Fone'
      Size = 12
    end
    object mEtiqueta_NavNome_Etiqueta: TStringField
      FieldName = 'Nome_Etiqueta'
      Size = 25
    end
    object mEtiqueta_NavTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
    object mEtiqueta_NavReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mEtiqueta_NavNome_Produto: TStringField
      FieldName = 'Nome_Produto'
      Size = 100
    end
    object mEtiqueta_NavNome_Cliente: TStringField
      FieldName = 'Nome_Cliente'
      Size = 60
    end
    object mEtiqueta_NavQtd: TIntegerField
      FieldName = 'Qtd'
    end
    object mEtiqueta_NavPedido_Cliente: TStringField
      FieldName = 'Pedido_Cliente'
    end
    object mEtiqueta_NavFantasia_Cli: TStringField
      FieldName = 'Fantasia_Cli'
      Size = 40
    end
    object mEtiqueta_NavDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object mEtiqueta_NavProd_Cliente: TStringField
      FieldName = 'Prod_Cliente'
    end
    object mEtiqueta_NavNumOS: TStringField
      FieldName = 'NumOS'
      Size = 30
    end
    object mEtiqueta_NavEncerado: TStringField
      FieldName = 'Encerado'
      Size = 10
    end
    object mEtiqueta_NavItem_Ped: TIntegerField
      FieldName = 'Item_Ped'
    end
    object mEtiqueta_NavUnidade: TStringField
      FieldName = 'Unidade'
      Size = 12
    end
  end
  object dsmEtiqueta_Nav: TDataSource
    DataSet = mEtiqueta_Nav
    Left = 752
    Top = 87
  end
  object frxmEtiqueta_Nav: TfrxDBDataset
    UserName = 'frxmEtiqueta_Nav'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Nome_Empresa=Nome_Empresa'
      'Fone=Fone'
      'Nome_Etiqueta=Nome_Etiqueta'
      'Tamanho=Tamanho'
      'Referencia=Referencia'
      'Nome_Produto=Nome_Produto'
      'Nome_Cliente=Nome_Cliente'
      'Qtd=Qtd'
      'Pedido_Cliente=Pedido_Cliente'
      'Fantasia_Cli=Fantasia_Cli'
      'DtEmissao=DtEmissao'
      'Prod_Cliente=Prod_Cliente'
      'NumOS=NumOS'
      'Encerado=Encerado'
      'Item_Ped=Item_Ped'
      'Unidade=Unidade')
    DataSource = dsmEtiqueta_Nav
    BCDToCurrency = False
    Left = 664
    Top = 512
  end
  object sdsPedido_RefComb: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT SUM(V.qtd) Qtd, SUM(V.qtd_faturado) Qtd_Faturado , SUM(V.' +
      'qtd_restante) qtd_restante,'#13#10'SUM(V.qtd_cancelado) qtd_cancelado,' +
      ' SUM(V.qtd_peca) qtd_peca,  SUM(V.vlr_total) vlr_total,'#13#10'SUM(V.v' +
      'lr_restante) vlr_restante, SUM(V.vlr_faturado) vlr_faturado,'#13#10'SU' +
      'M(V.vlr_cancelado) vlr_cancelado,'#13#10'v.referencia, v.nome_cor_comb' +
      'inacao,'#13#10'SUM((SELECT FIRST 1 coalesce(U.fator_calculo,1) FROM UN' +
      'IDADE U WHERE U.UNIDADE = V.UNIDADE) * (v.tam_calc * V.qtd)) QTD' +
      '_METRO,'#13#10'SUM((SELECT FIRST 1 coalesce(U.fator_calculo,1) FROM UN' +
      'IDADE U WHERE U.UNIDADE = V.UNIDADE) * (v.tam_calc * V.qtd_resta' +
      'nte)) QTD_METRO_REST'#13#10'FROM vpedido_item V'#13#10'GROUP BY'#13#10'v.referenci' +
      'a, v.nome_cor_combinacao'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 248
    Top = 185
  end
  object dspPedido_RefComb: TDataSetProvider
    DataSet = sdsPedido_RefComb
    Left = 288
    Top = 185
  end
  object cdsPedido_RefComb: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'QTD'
        DataType = ftFloat
      end
      item
        Name = 'QTD_FATURADO'
        DataType = ftFloat
      end
      item
        Name = 'QTD_RESTANTE'
        DataType = ftFloat
      end
      item
        Name = 'QTD_CANCELADO'
        DataType = ftFloat
      end
      item
        Name = 'QTD_PECA'
        DataType = ftFMTBcd
        Precision = 15
      end
      item
        Name = 'VLR_TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'VLR_RESTANTE'
        DataType = ftFloat
      end
      item
        Name = 'VLR_FATURADO'
        DataType = ftFloat
      end
      item
        Name = 'VLR_CANCELADO'
        DataType = ftFloat
      end
      item
        Name = 'REFERENCIA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NOME_COR_COMBINACAO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'QTD_METRO'
        DataType = ftFloat
      end
      item
        Name = 'QTD_METRO_REST'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspPedido_RefComb'
    StoreDefs = True
    Left = 328
    Top = 185
    object cdsPedido_RefCombQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedido_RefCombQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsPedido_RefCombQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsPedido_RefCombQTD_CANCELADO: TFloatField
      FieldName = 'QTD_CANCELADO'
    end
    object cdsPedido_RefCombQTD_PECA: TFMTBCDField
      FieldName = 'QTD_PECA'
      Precision = 15
      Size = 0
    end
    object cdsPedido_RefCombVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsPedido_RefCombVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
    end
    object cdsPedido_RefCombVLR_FATURADO: TFloatField
      FieldName = 'VLR_FATURADO'
    end
    object cdsPedido_RefCombVLR_CANCELADO: TFloatField
      FieldName = 'VLR_CANCELADO'
    end
    object cdsPedido_RefCombREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsPedido_RefCombNOME_COR_COMBINACAO: TStringField
      FieldName = 'NOME_COR_COMBINACAO'
      Size = 60
    end
    object cdsPedido_RefCombQTD_METRO: TFloatField
      FieldName = 'QTD_METRO'
      DisplayFormat = '0.000#'
    end
    object cdsPedido_RefCombQTD_METRO_REST: TFloatField
      FieldName = 'QTD_METRO_REST'
    end
  end
  object dsPedido_RefComb: TDataSource
    DataSet = cdsPedido_RefComb
    Left = 368
    Top = 185
  end
  object frxPedido_RefComb: TfrxDBDataset
    UserName = 'frxPedido_RefComb'
    CloseDataSource = False
    FieldAliases.Strings = (
      'QTD=QTD'
      'QTD_FATURADO=QTD_FATURADO'
      'QTD_RESTANTE=QTD_RESTANTE'
      'QTD_CANCELADO=QTD_CANCELADO'
      'QTD_PECA=QTD_PECA'
      'VLR_TOTAL=VLR_TOTAL'
      'VLR_RESTANTE=VLR_RESTANTE'
      'VLR_FATURADO=VLR_FATURADO'
      'VLR_CANCELADO=VLR_CANCELADO'
      'REFERENCIA=REFERENCIA'
      'ID_COR=ID_COR'
      'NOME_COR_COMBINACAO=NOME_COR_COMBINACAO'
      'QTD_METRO=QTD_METRO'
      'QTD_METRO_REST=QTD_METRO_REST')
    DataSource = dsPedido_RefComb
    BCDToCurrency = False
    Left = 720
    Top = 512
  end
  object sdsPedido_RefComb_DtEntrega: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT SUM(V.qtd) Qtd, SUM(V.qtd_faturado) Qtd_Faturado , SUM(V.' +
      'qtd_restante) qtd_restante,'#13#10'SUM(V.qtd_cancelado) qtd_cancelado,' +
      ' SUM(V.qtd_peca) qtd_peca,  SUM(V.vlr_total) vlr_total,'#13#10'SUM(V.v' +
      'lr_restante) vlr_restante, SUM(V.vlr_faturado) vlr_faturado,'#13#10'SU' +
      'M(V.vlr_cancelado) vlr_cancelado,'#13#10'v.referencia, v.nome_cor_comb' +
      'inacao,'#13#10'V.dtentrega_item,'#13#10'SUM((SELECT FIRST 1 coalesce(U.fator' +
      '_calculo,1) FROM UNIDADE U WHERE U.UNIDADE = V.UNIDADE) * (v.tam' +
      '_calc * V.qtd)) QTD_METRO,'#13#10'SUM((SELECT FIRST 1 coalesce(U.fator' +
      '_calculo,1) FROM UNIDADE U WHERE U.UNIDADE = V.UNIDADE) * (v.tam' +
      '_calc * V.qtd_restante)) QTD_METRO_REST'#13#10'FROM vpedido_item V'#13#10'GR' +
      'OUP BY'#13#10'v.referencia, v.nome_cor_combinacao, V.dtentrega_item'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 248
    Top = 233
  end
  object dspPedido_RefComb_DtEntrega: TDataSetProvider
    DataSet = sdsPedido_RefComb_DtEntrega
    Left = 288
    Top = 233
  end
  object cdsPedido_RefComb_DtEntrega: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'QTD'
        DataType = ftFloat
      end
      item
        Name = 'QTD_FATURADO'
        DataType = ftFloat
      end
      item
        Name = 'QTD_RESTANTE'
        DataType = ftFloat
      end
      item
        Name = 'QTD_CANCELADO'
        DataType = ftFloat
      end
      item
        Name = 'QTD_PECA'
        DataType = ftFMTBcd
        Precision = 15
      end
      item
        Name = 'VLR_TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'VLR_RESTANTE'
        DataType = ftFloat
      end
      item
        Name = 'VLR_FATURADO'
        DataType = ftFloat
      end
      item
        Name = 'VLR_CANCELADO'
        DataType = ftFloat
      end
      item
        Name = 'REFERENCIA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NOME_COR_COMBINACAO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DTENTREGA_ITEM'
        DataType = ftDate
      end
      item
        Name = 'QTD_METRO'
        DataType = ftFloat
      end
      item
        Name = 'QTD_METRO_REST'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspPedido_RefComb_DtEntrega'
    StoreDefs = True
    Left = 328
    Top = 233
    object cdsPedido_RefComb_DtEntregaQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedido_RefComb_DtEntregaQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsPedido_RefComb_DtEntregaQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsPedido_RefComb_DtEntregaQTD_CANCELADO: TFloatField
      FieldName = 'QTD_CANCELADO'
    end
    object cdsPedido_RefComb_DtEntregaQTD_PECA: TFMTBCDField
      FieldName = 'QTD_PECA'
      Precision = 15
      Size = 0
    end
    object cdsPedido_RefComb_DtEntregaVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsPedido_RefComb_DtEntregaVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
    end
    object cdsPedido_RefComb_DtEntregaVLR_FATURADO: TFloatField
      FieldName = 'VLR_FATURADO'
    end
    object cdsPedido_RefComb_DtEntregaVLR_CANCELADO: TFloatField
      FieldName = 'VLR_CANCELADO'
    end
    object cdsPedido_RefComb_DtEntregaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsPedido_RefComb_DtEntregaNOME_COR_COMBINACAO: TStringField
      FieldName = 'NOME_COR_COMBINACAO'
      Size = 60
    end
    object cdsPedido_RefComb_DtEntregaDTENTREGA_ITEM: TDateField
      FieldName = 'DTENTREGA_ITEM'
    end
    object cdsPedido_RefComb_DtEntregaQTD_METRO: TFloatField
      FieldName = 'QTD_METRO'
    end
    object cdsPedido_RefComb_DtEntregaQTD_METRO_REST: TFloatField
      FieldName = 'QTD_METRO_REST'
    end
  end
  object dsPedido_RefComb_DtEntrega: TDataSource
    DataSet = cdsPedido_RefComb_DtEntrega
    Left = 368
    Top = 233
  end
  object frxPedido_RefComb_DtEntrega: TfrxDBDataset
    UserName = 'frxPedido_RefComb_DtEntrega'
    CloseDataSource = False
    FieldAliases.Strings = (
      'QTD=QTD'
      'QTD_FATURADO=QTD_FATURADO'
      'QTD_RESTANTE=QTD_RESTANTE'
      'QTD_CANCELADO=QTD_CANCELADO'
      'QTD_PECA=QTD_PECA'
      'VLR_TOTAL=VLR_TOTAL'
      'VLR_RESTANTE=VLR_RESTANTE'
      'VLR_FATURADO=VLR_FATURADO'
      'VLR_CANCELADO=VLR_CANCELADO'
      'REFERENCIA=REFERENCIA'
      'ID_COR=ID_COR'
      'NOME_COR_COMBINACAO=NOME_COR_COMBINACAO'
      'DTENTREGA_ITEM=DTENTREGA_ITEM'
      'QTD_METRO=QTD_METRO'
      'QTD_METRO_REST=QTD_METRO_REST')
    DataSource = dsPedido_RefComb_DtEntrega
    BCDToCurrency = False
    Left = 776
    Top = 512
  end
  object sdsPedido_RefComb_DtECliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT SUM(V.qtd) Qtd, SUM(V.qtd_faturado) Qtd_Faturado , SUM(V.' +
      'qtd_restante) qtd_restante,'#13#10'SUM(V.qtd_cancelado) qtd_cancelado,' +
      ' SUM(V.qtd_peca) qtd_peca,  SUM(V.vlr_total) vlr_total,'#13#10'SUM(V.v' +
      'lr_restante) vlr_restante, SUM(V.vlr_faturado) vlr_faturado,'#13#10'SU' +
      'M(V.vlr_cancelado) vlr_cancelado,'#13#10'v.referencia, v.nome_cor_comb' +
      'inacao,V.nome_cliente,'#13#10'V.dtentrega_item,'#13#10'SUM((SELECT FIRST 1 c' +
      'oalesce(U.fator_calculo,1) FROM UNIDADE U WHERE U.UNIDADE = V.UN' +
      'IDADE) * (v.tam_calc * V.qtd)) QTD_METRO,'#13#10'SUM((SELECT FIRST 1 c' +
      'oalesce(U.fator_calculo,1) FROM UNIDADE U WHERE U.UNIDADE = V.UN' +
      'IDADE) * (v.tam_calc * V.qtd_restante)) QTD_METRO_REST'#13#10'FROM vpe' +
      'dido_item V'#13#10'GROUP BY'#13#10'v.referencia, v.nome_cor_combinacao, V.dt' +
      'entrega_item, V.nome_cliente'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 248
    Top = 289
  end
  object dspPedido_RefComb_DtECliente: TDataSetProvider
    DataSet = sdsPedido_RefComb_DtECliente
    Left = 288
    Top = 289
  end
  object cdsPedido_RefComb_DtECliente: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'QTD'
        DataType = ftFloat
      end
      item
        Name = 'QTD_FATURADO'
        DataType = ftFloat
      end
      item
        Name = 'QTD_RESTANTE'
        DataType = ftFloat
      end
      item
        Name = 'QTD_CANCELADO'
        DataType = ftFloat
      end
      item
        Name = 'QTD_PECA'
        DataType = ftFMTBcd
        Precision = 15
      end
      item
        Name = 'VLR_TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'VLR_RESTANTE'
        DataType = ftFloat
      end
      item
        Name = 'VLR_FATURADO'
        DataType = ftFloat
      end
      item
        Name = 'VLR_CANCELADO'
        DataType = ftFloat
      end
      item
        Name = 'REFERENCIA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NOME_COR_COMBINACAO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'NOME_CLIENTE'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DTENTREGA_ITEM'
        DataType = ftDate
      end
      item
        Name = 'QTD_METRO'
        DataType = ftFloat
      end
      item
        Name = 'QTD_METRO_REST'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspPedido_RefComb_DtECliente'
    StoreDefs = True
    Left = 328
    Top = 289
    object cdsPedido_RefComb_DtEClienteQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedido_RefComb_DtEClienteQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsPedido_RefComb_DtEClienteQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsPedido_RefComb_DtEClienteQTD_CANCELADO: TFloatField
      FieldName = 'QTD_CANCELADO'
    end
    object cdsPedido_RefComb_DtEClienteQTD_PECA: TFMTBCDField
      FieldName = 'QTD_PECA'
      Precision = 15
      Size = 0
    end
    object cdsPedido_RefComb_DtEClienteVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsPedido_RefComb_DtEClienteVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
    end
    object cdsPedido_RefComb_DtEClienteVLR_FATURADO: TFloatField
      FieldName = 'VLR_FATURADO'
    end
    object cdsPedido_RefComb_DtEClienteVLR_CANCELADO: TFloatField
      FieldName = 'VLR_CANCELADO'
    end
    object cdsPedido_RefComb_DtEClienteREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsPedido_RefComb_DtEClienteNOME_COR_COMBINACAO: TStringField
      FieldName = 'NOME_COR_COMBINACAO'
      Size = 60
    end
    object cdsPedido_RefComb_DtEClienteNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsPedido_RefComb_DtEClienteDTENTREGA_ITEM: TDateField
      FieldName = 'DTENTREGA_ITEM'
    end
    object cdsPedido_RefComb_DtEClienteQTD_METRO: TFloatField
      FieldName = 'QTD_METRO'
    end
    object cdsPedido_RefComb_DtEClienteQTD_METRO_REST: TFloatField
      FieldName = 'QTD_METRO_REST'
    end
  end
  object dsPedido_RefComb_DtECliente: TDataSource
    DataSet = cdsPedido_RefComb_DtECliente
    Left = 368
    Top = 289
  end
  object frxPedido_RefComb_DtECliente: TfrxDBDataset
    UserName = 'frxPedido_RefComb_DtECliente'
    CloseDataSource = False
    FieldAliases.Strings = (
      'QTD=QTD'
      'QTD_FATURADO=QTD_FATURADO'
      'QTD_RESTANTE=QTD_RESTANTE'
      'QTD_CANCELADO=QTD_CANCELADO'
      'QTD_PECA=QTD_PECA'
      'VLR_TOTAL=VLR_TOTAL'
      'VLR_RESTANTE=VLR_RESTANTE'
      'VLR_FATURADO=VLR_FATURADO'
      'VLR_CANCELADO=VLR_CANCELADO'
      'REFERENCIA=REFERENCIA'
      'NOME_COR_COMBINACAO=NOME_COR_COMBINACAO'
      'NOME_CLIENTE=NOME_CLIENTE'
      'DTENTREGA_ITEM=DTENTREGA_ITEM'
      'QTD_METRO=QTD_METRO'
      'QTD_METRO_REST=QTD_METRO_REST')
    DataSource = dsPedido_RefComb_DtECliente
    BCDToCurrency = False
    Left = 840
    Top = 504
  end
  object qParametros_Ser: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT LIB_QTD_PEDIDO'
      'FROM PARAMETROS_SER')
    SQLConnection = dmDatabase.scoDados
    Left = 592
    Top = 616
    object qParametros_SerLIB_QTD_PEDIDO: TStringField
      FieldName = 'LIB_QTD_PEDIDO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsMarca: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME FROM MARCA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 577
  end
  object dspMarca: TDataSetProvider
    DataSet = sdsMarca
    UpdateMode = upWhereKeyOnly
    Left = 496
    Top = 577
  end
  object cdsMarca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMarca'
    Left = 536
    Top = 577
    object cdsMarcaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMarcaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object sdsTipoMat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select'#13#10'CASE'#13#10'  WHEN PROD.tipo_mat = '#39'A'#39' then '#39'Algod'#227'o'#39#13#10'  WHEN ' +
      'PROD.tipo_mat = '#39'P'#39' then '#39'Poliester'#39#13#10'  WHEN PROD.tipo_mat = '#39'J'#39 +
      ' then '#39'Juta'#39#13#10'  WHEN PROD.tipo_mat = '#39'L'#39' then '#39'Lurex'#39#13#10'  WHEN PR' +
      'OD.tipo_mat = '#39'M'#39' then '#39'Alma Produ'#231#227'o Pr'#243'pria'#39#13#10'  WHEN PROD.tipo' +
      '_mat = '#39'R'#39' then '#39'Reflex'#39#13#10'  WHEN PROD.tipo_mat = '#39'O'#39' then '#39'Polip' +
      'ropileno'#39#13#10'  WHEN PROD.tipo_mat = '#39'E'#39' then '#39'Elanca'#39#13#10'  WHEN PROD' +
      '.tipo_mat = '#39'C'#39' then '#39'Chenile'#39#13#10'  end DESC_TIPO_MATERIAL,'#13#10'  sum' +
      '('#13#10'case'#13#10'  when coalesce(uconv.qtd,0) > 0 then coalesce(PROD.pes' +
      'obruto,0) * coalesce(NI.qtd,0) * uconv.qtd'#13#10'  else coalesce(PROD' +
      '.pesobruto,0) * coalesce(NI.qtd,0)'#13#10'  end ) PESOBRUTO'#13#10'from NOTA' +
      'FISCAL_PED NP'#13#10'inner join NOTAFISCAL NT on (NP.ID = NT.ID)'#13#10'inne' +
      'r join NOTAFISCAL_ITENS NI on (NP.ID = NI.ID and NP.ITEM = NI.IT' +
      'EM)'#13#10'inner join PEDIDO PED on (NP.ID_PEDIDO = PED.ID)'#13#10'inner joi' +
      'n PEDIDO_ITEM pi on (NP.ID_PEDIDO = pi.ID and NP.ITEM_PEDIDO = p' +
      'i.ITEM)'#13#10'inner join PESSOA PES on (PED.ID_CLIENTE = PES.CODIGO)'#13 +
      #10'left join COMBINACAO COMB on pi.ID_COR = COMB.ID  '#13#10'LEFT JOIN T' +
      'AB_CFOP CFOP ON (NI.ID_CFOP = CFOP.ID)'#13#10'left join PRODUTO PROD o' +
      'n NI.ID_PRODUTO = PROD.ID  '#13#10'left join unidade_conv uconv'#13#10'on pr' +
      'od.unidade = uconv.unidade'#13#10'and ni.unidade = uconv.unidade_conv'#13 +
      #10'GROUP BY PROD.tipo_mat'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 264
    Top = 560
  end
  object dspTipomat: TDataSetProvider
    DataSet = sdsTipoMat
    Left = 312
    Top = 560
  end
  object cdsTipoMat: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTipomat'
    Left = 352
    Top = 560
    object cdsTipoMatDESC_TIPO_MATERIAL: TStringField
      FieldName = 'DESC_TIPO_MATERIAL'
      FixedChar = True
      Size = 21
    end
    object cdsTipoMatPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
  end
  object dsTipoMaterial: TDataSource
    DataSet = cdsTipoMat
    Left = 384
    Top = 560
  end
end
