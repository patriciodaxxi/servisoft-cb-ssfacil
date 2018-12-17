object DMConsOC: TDMConsOC
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 134
  Top = 80
  Height = 596
  Width = 985
  object sdsOC_Item: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PED.id_cliente, PED.ID, PED.dtemissao, PED.dtentrega DTEN' +
      'TREGA_PED, PED.NUM_PEDIDO,'#13#10'PED.filial, FIL.NOME NOME_FILIAL, FI' +
      'L.nome_interno NOME_FILIAL_INT,'#13#10'CLI.NOME NOME_FORNECEDOR, PRO.N' +
      'OME NOME_PRODUTO, PRO.REFERENCIA, ITE.ITEM, ITE.ID_PRODUTO,'#13#10'ITE' +
      '.DTENTREGA DTENTREGA_ITEM,  ITE.QTD, ITE.qtd_faturado, ITE.qtd_r' +
      'estante, ITE.qtd_cancelado,'#13#10'ITE.VLR_UNITARIO, ITE.VLR_DESCONTO,' +
      ' ITE.VLR_TOTAL, ITE.NUMOS, CLI.FANTASIA FANTASIA_FORN,'#13#10'FUN.NOME' +
      ' NOME_FUNCIONARIO,  ITE.ID_COR, COMB.NOME NOME_COR_COMBINACAO, I' +
      'TE.TAMANHO, '#13#10'PED.APROVADO_PED,'#13#10'((ITE.VLR_TOTAL / ITE.QTD) * IT' +
      'E.QTD_RESTANTE) VLR_RESTANTE,'#13#10'((ITE.VLR_TOTAL / ITE.QTD) * ITE.' +
      'QTD_FATURADO) VLR_FATURADO,'#13#10'((ITE.VLR_TOTAL / ITE.QTD) * ITE.QT' +
      'D_CANCELADO) VLR_CANCELADO'#13#10'FROM PEDIDO PED'#13#10'INNER JOIN PEDIDO_I' +
      'TEM ITE'#13#10'ON PED.ID = ITE.ID'#13#10'INNER JOIN FILIAL FIL'#13#10'ON PED.FILIA' +
      'L = FIL.id'#13#10'INNER JOIN PESSOA CLI'#13#10'ON PED.id_cliente = CLI.CODIG' +
      'O'#13#10'INNER JOIN PRODUTO PRO'#13#10'ON ITE.ID_PRODUTO = PRO.ID'#13#10'LEFT JOIN' +
      ' FUNCIONARIO FUN'#13#10'ON PED.ID_SOLICITANTE = FUN.CODIGO'#13#10'LEFT JOIN ' +
      'COMBINACAO COMB'#13#10'ON ITE.id_cor = COMB.id'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 112
    Top = 40
    object sdsOC_ItemID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsOC_ItemID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsOC_ItemDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsOC_ItemDTENTREGA_PED: TDateField
      FieldName = 'DTENTREGA_PED'
    end
    object sdsOC_ItemNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object sdsOC_ItemFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsOC_ItemNOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object sdsOC_ItemNOME_FILIAL_INT: TStringField
      FieldName = 'NOME_FILIAL_INT'
      Size = 30
    end
    object sdsOC_ItemNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      Size = 60
    end
    object sdsOC_ItemNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object sdsOC_ItemREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsOC_ItemITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsOC_ItemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsOC_ItemDTENTREGA_ITEM: TDateField
      FieldName = 'DTENTREGA_ITEM'
    end
    object sdsOC_ItemQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsOC_ItemQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object sdsOC_ItemQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object sdsOC_ItemQTD_CANCELADO: TFloatField
      FieldName = 'QTD_CANCELADO'
    end
    object sdsOC_ItemVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsOC_ItemVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object sdsOC_ItemVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsOC_ItemNUMOS: TStringField
      FieldName = 'NUMOS'
      Size = 30
    end
    object sdsOC_ItemFANTASIA_FORN: TStringField
      FieldName = 'FANTASIA_FORN'
      Size = 30
    end
    object sdsOC_ItemNOME_FUNCIONARIO: TStringField
      FieldName = 'NOME_FUNCIONARIO'
      Size = 50
    end
    object sdsOC_ItemVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
    end
    object sdsOC_ItemVLR_FATURADO: TFloatField
      FieldName = 'VLR_FATURADO'
    end
    object sdsOC_ItemVLR_CANCELADO: TFloatField
      FieldName = 'VLR_CANCELADO'
    end
    object sdsOC_ItemID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object sdsOC_ItemNOME_COR_COMBINACAO: TStringField
      FieldName = 'NOME_COR_COMBINACAO'
      Size = 60
    end
    object sdsOC_ItemTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsOC_ItemAPROVADO_PED: TStringField
      FieldName = 'APROVADO_PED'
      FixedChar = True
      Size = 1
    end
  end
  object dspOC_Item: TDataSetProvider
    DataSet = sdsOC_Item
    Left = 192
    Top = 40
  end
  object cdsOC_Item: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOC_Item'
    Left = 256
    Top = 40
    object cdsOC_ItemID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsOC_ItemID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOC_ItemDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsOC_ItemDTENTREGA_PED: TDateField
      FieldName = 'DTENTREGA_PED'
    end
    object cdsOC_ItemNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsOC_ItemFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsOC_ItemNOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object cdsOC_ItemNOME_FILIAL_INT: TStringField
      FieldName = 'NOME_FILIAL_INT'
      Size = 30
    end
    object cdsOC_ItemNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      Size = 60
    end
    object cdsOC_ItemNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsOC_ItemREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsOC_ItemITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsOC_ItemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsOC_ItemDTENTREGA_ITEM: TDateField
      FieldName = 'DTENTREGA_ITEM'
    end
    object cdsOC_ItemQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '###,###,##0.0000##'
    end
    object cdsOC_ItemQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
      DisplayFormat = '###,###,##0.0000##'
    end
    object cdsOC_ItemQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
      DisplayFormat = '###,###,##0.0000##'
    end
    object cdsOC_ItemQTD_CANCELADO: TFloatField
      FieldName = 'QTD_CANCELADO'
      DisplayFormat = '###,###,##0.0000##'
    end
    object cdsOC_ItemVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '###,##0.000##'
    end
    object cdsOC_ItemVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '0.00###'
    end
    object cdsOC_ItemVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsOC_ItemNUMOS: TStringField
      FieldName = 'NUMOS'
      Size = 30
    end
    object cdsOC_ItemFANTASIA_FORN: TStringField
      FieldName = 'FANTASIA_FORN'
      Size = 30
    end
    object cdsOC_ItemNOME_FUNCIONARIO: TStringField
      FieldName = 'NOME_FUNCIONARIO'
      Size = 50
    end
    object cdsOC_ItemVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsOC_ItemVLR_FATURADO: TFloatField
      FieldName = 'VLR_FATURADO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsOC_ItemVLR_CANCELADO: TFloatField
      FieldName = 'VLR_CANCELADO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsOC_ItemID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object cdsOC_ItemNOME_COR_COMBINACAO: TStringField
      FieldName = 'NOME_COR_COMBINACAO'
      Size = 60
    end
    object cdsOC_ItemTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsOC_ItemAPROVADO_PED: TStringField
      FieldName = 'APROVADO_PED'
      FixedChar = True
      Size = 1
    end
  end
  object dsOC_Item: TDataSource
    DataSet = cdsOC_Item
    Left = 328
    Top = 40
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME, NOME_INTERNO'#13#10'FROM FILIAL'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 280
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 528
    Top = 280
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 592
    Top = 280
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
    Left = 648
    Top = 280
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 336
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 488
    Top = 336
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspProduto'
    Left = 528
    Top = 336
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
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 568
    Top = 336
  end
  object sdsCentroCusto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CENTROCUSTO'#13#10'WHERE TIPO = '#39'A'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 384
  end
  object dspCentroCusto: TDataSetProvider
    DataSet = sdsCentroCusto
    Left = 488
    Top = 384
  end
  object cdsCentroCusto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'DESCRICAO'
    Params = <>
    ProviderName = 'dspCentroCusto'
    Left = 528
    Top = 384
    object cdsCentroCustoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCentroCustoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsCentroCustoCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsCentroCustoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsCentroCustoNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object cdsCentroCustoAPROPRIACAO: TStringField
      FieldName = 'APROPRIACAO'
      FixedChar = True
      Size = 1
    end
    object cdsCentroCustoSUPERIOR: TStringField
      FieldName = 'SUPERIOR'
    end
    object cdsCentroCustoCOD_PRINCIPAL: TIntegerField
      FieldName = 'COD_PRINCIPAL'
    end
  end
  object dsCentroCusto: TDataSource
    DataSet = cdsCentroCusto
    Left = 568
    Top = 384
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 608
    Top = 80
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
    object qParametrosINFORMAR_COR_MATERIAL: TStringField
      FieldName = 'INFORMAR_COR_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object qParametrosINFORMAR_COR_PROD: TStringField
      FieldName = 'INFORMAR_COR_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_APROVACAO_OC_FORN: TStringField
      FieldName = 'USA_APROVACAO_OC_FORN'
      FixedChar = True
      Size = 1
    end
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
    Left = 456
    Top = 72
  end
  object sdsOC: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PED.id_cliente, PED.ID, PED.dtemissao, PED.NUM_PEDIDO,'#13#10'P' +
      'ED.filial, FIL.NOME NOME_FILIAL, FIL.nome_interno NOME_FILIAL_IN' +
      'T,'#13#10'CLI.NOME NOME_FORNECEDOR, CLI.FANTASIA, PED.VLR_TOTAL,'#13#10'FUN.' +
      'NOME NOME_FUNCIONARIO,'#13#10'ITE.DTENTREGA DTENTREGA_ITEM,  PED.APROV' +
      'ADO_PED,'#13#10'SUM(ITE.QTD) QTD , SUM(ITE.qtd_faturado) qtd_faturado,' +
      #13#10'SUM(ITE.qtd_restante) qtd_restante, SUM(ITE.qtd_cancelado) qtd' +
      '_cancelado, '#13#10'SUM((ITE.VLR_UNITARIO - ITE.VLR_DESCONTO) * ITE.QT' +
      'D_RESTANTE) VLR_RESTANTE,'#13#10'SUM((ITE.VLR_UNITARIO - ITE.VLR_DESCO' +
      'NTO) * ITE.QTD_FATURADO) VLR_FATURADO,'#13#10'SUM((ITE.VLR_UNITARIO - ' +
      'ITE.VLR_DESCONTO) * ITE.QTD_CANCELADO) VLR_CANCELADO'#13#10'FROM PEDID' +
      'O PED'#13#10'INNER JOIN PEDIDO_ITEM ITE'#13#10'ON PED.ID = ITE.ID'#13#10'INNER JOI' +
      'N FILIAL FIL'#13#10'ON PED.FILIAL = FIL.id'#13#10'INNER JOIN PESSOA CLI'#13#10'ON ' +
      'PED.id_cliente = CLI.CODIGO'#13#10'LEFT JOIN FUNCIONARIO FUN'#13#10'ON PED.I' +
      'D_SOLICITANTE = FUN.CODIGO'#13#10'GROUP BY PED.id_cliente, PED.ID, PED' +
      '.pedido_cliente, PED.dtemissao, PED.NUM_PEDIDO,'#13#10'PED.filial, FIL' +
      '.NOME, FIL.nome_interno, FUN.NOME,'#13#10'CLI.NOME, FUN.NOME, CLI.FANT' +
      'ASIA, ITE.DTENTREGA, PED.VLR_TOTAL , PED.APROVADO_PED'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 80
    Top = 176
  end
  object dspOC: TDataSetProvider
    DataSet = sdsOC
    Left = 160
    Top = 176
  end
  object cdsOC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOC'
    Left = 224
    Top = 176
    object cdsOCID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsOCID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOCDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsOCNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsOCFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsOCNOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object cdsOCNOME_FILIAL_INT: TStringField
      FieldName = 'NOME_FILIAL_INT'
      Size = 30
    end
    object cdsOCNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      Size = 60
    end
    object cdsOCFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsOCVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsOCNOME_FUNCIONARIO: TStringField
      FieldName = 'NOME_FUNCIONARIO'
      Size = 50
    end
    object cdsOCDTENTREGA_ITEM: TDateField
      FieldName = 'DTENTREGA_ITEM'
    end
    object cdsOCQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '###,###,##0.0000##'
    end
    object cdsOCQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
      DisplayFormat = '###,###,##0.0000##'
    end
    object cdsOCQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
      DisplayFormat = '###,###,##0.0000##'
    end
    object cdsOCQTD_CANCELADO: TFloatField
      FieldName = 'QTD_CANCELADO'
      DisplayFormat = '###,###,##0.0000##'
    end
    object cdsOCVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsOCVLR_FATURADO: TFloatField
      FieldName = 'VLR_FATURADO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsOCVLR_CANCELADO: TFloatField
      FieldName = 'VLR_CANCELADO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsOCAPROVADO_PED: TStringField
      FieldName = 'APROVADO_PED'
      FixedChar = True
      Size = 1
    end
  end
  object dsOC: TDataSource
    DataSet = cdsOC
    Left = 296
    Top = 176
  end
  object sdsFornecedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PESSOA'#13#10'WHERE TP_FORNECEDOR = '#39'S'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 440
  end
  object dspFornecedor: TDataSetProvider
    DataSet = sdsFornecedor
    Left = 488
    Top = 440
  end
  object cdsFornecedor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFornecedor'
    Left = 528
    Top = 440
    object cdsFornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsFornecedorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsFornecedorFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
  end
  object dsFornecedor: TDataSource
    DataSet = cdsFornecedor
    Left = 568
    Top = 440
  end
  object sdsFuncionario: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT CODIGO, NOME '#13#10'FROM FUNCIONARIO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 464
  end
  object dspFuncionario: TDataSetProvider
    DataSet = sdsFuncionario
    Left = 104
    Top = 464
  end
  object cdsFuncionario: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFuncionario'
    Left = 144
    Top = 464
    object cdsFuncionarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsFuncionarioNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object dsFuncionario: TDataSource
    DataSet = cdsFuncionario
    Left = 184
    Top = 464
  end
  object sdsOC_Projeto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PED.id_cliente, PED.ID, PED.dtemissao, PED.NUM_PEDIDO,'#13#10'P' +
      'ED.filial, FIL.NOME NOME_FILIAL, FIL.nome_interno NOME_FILIAL_IN' +
      'T,'#13#10'FORN.NOME NOME_FORNECEDOR, FORN.FANTASIA, PED.VLR_TOTAL,'#13#10'FU' +
      'N.NOME NOME_FUNCIONARIO, ITE.NOMEPRODUTO, ITE.REFERENCIA,'#13#10'ITE.D' +
      'TENTREGA DTENTREGA_ITEM,  SUM(PCLI.QTD) QTD,'#13#10'CC.DESCRICAO NOME_' +
      'PROJETO,SUM((ITE.VLR_UNITARIO - ITE.VLR_DESCONTO) * PCLI.QTD) VL' +
      'R_PROJETO, PCLI.id_centrocusto'#13#10'FROM PEDIDO PED'#13#10'INNER JOIN PEDI' +
      'DO_ITEM ITE'#13#10'ON PED.ID = ITE.ID'#13#10'INNER JOIN PEDIDO_CLI PCLI'#13#10'ON ' +
      'ITE.ID = PCLI.ID'#13#10'AND ITE.ITEM = PCLI.ITEM'#13#10'INNER JOIN FILIAL FI' +
      'L'#13#10'ON PED.FILIAL = FIL.id'#13#10'INNER JOIN PESSOA FORN'#13#10'ON PED.id_cli' +
      'ente = FORN.CODIGO'#13#10'LEFT JOIN FUNCIONARIO FUN'#13#10'ON PED.ID_SOLICIT' +
      'ANTE = FUN.CODIGO'#13#10'LEFT JOIN CENTROCUSTO CC'#13#10'ON PCLI.ID_CENTROCU' +
      'STO = CC.ID'#13#10'GROUP BY PED.id_cliente, PED.ID, PED.dtemissao, PED' +
      '.NUM_PEDIDO,'#13#10'PED.filial, FIL.NOME, FIL.nome_interno,'#13#10'FORN.NOME' +
      ', FORN.FANTASIA, PED.VLR_TOTAL,'#13#10'FUN.NOME, ITE.DTENTREGA, CC.DES' +
      'CRICAO, ITE.NOMEPRODUTO, ITE.REFERENCIA, PCLI.id_centrocusto'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 272
  end
  object dspOC_Projeto: TDataSetProvider
    DataSet = sdsOC_Projeto
    Left = 168
    Top = 272
  end
  object cdsOC_Projeto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOC_Projeto'
    Left = 240
    Top = 272
    object cdsOC_ProjetoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsOC_ProjetoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOC_ProjetoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsOC_ProjetoNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsOC_ProjetoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsOC_ProjetoNOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object cdsOC_ProjetoNOME_FILIAL_INT: TStringField
      FieldName = 'NOME_FILIAL_INT'
      Size = 30
    end
    object cdsOC_ProjetoNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      Size = 60
    end
    object cdsOC_ProjetoFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsOC_ProjetoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsOC_ProjetoNOME_FUNCIONARIO: TStringField
      FieldName = 'NOME_FUNCIONARIO'
      Size = 50
    end
    object cdsOC_ProjetoNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsOC_ProjetoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsOC_ProjetoDTENTREGA_ITEM: TDateField
      FieldName = 'DTENTREGA_ITEM'
    end
    object cdsOC_ProjetoQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '###,###,##0.0000##'
    end
    object cdsOC_ProjetoNOME_PROJETO: TStringField
      FieldName = 'NOME_PROJETO'
      Size = 60
    end
    object cdsOC_ProjetoVLR_PROJETO: TFloatField
      FieldName = 'VLR_PROJETO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsOC_ProjetoID_CENTROCUSTO: TIntegerField
      FieldName = 'ID_CENTROCUSTO'
      Required = True
    end
  end
  object dsOC_Projeto: TDataSource
    DataSet = cdsOC_Projeto
    Left = 304
    Top = 272
  end
end
