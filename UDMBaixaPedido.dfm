object DMBaixaPedido: TDMBaixaPedido
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 148
  Top = 68
  Height = 614
  Width = 1185
  object sdsPedido_Item: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PED.id_cliente, PED.ID, PED.pedido_cliente, PED.dtemissao' +
      ', PED.dtentrega DTENTREGA_PED, PED.NUM_PEDIDO,'#13#10'PED.id_vendedor,' +
      ' PED.filial, FIL.NOME NOME_FILIAL, FIL.nome_interno NOME_FILIAL_' +
      'INT,'#13#10'CLI.NOME NOME_CLIENTE, PRO.NOME NOME_PRODUTO, ITE.REFERENC' +
      'IA, ITE.ITEM, ITE.ID_PRODUTO,'#13#10'ITE.DTENTREGA DTENTREGA_ITEM,  IT' +
      'E.QTD, ITE.qtd_faturado, ITE.qtd_restante, ITE.qtd_cancelado,'#13#10'I' +
      'TE.VLR_UNITARIO, ITE.VLR_DESCONTO, ITE.VLR_TOTAL, ITE.qtd_afatur' +
      'ar, ITE.ID_CFOP, ITE.UNIDADE,'#13#10'ITE.PERC_ICMS, ITE.PERC_IPI, ITE.' +
      'PERC_TRIBICMS, ITE.QTD_PRODUZIDA, ITE.QTD_LIBERADA,'#13#10'ITE.TAMANHO' +
      ', ITE.NUM_TALAO, CLI.FANTASIA, CLI.CIDADE, ITE.NUMOS, PED.NUM_DO' +
      'C, '#13#10'ITE.NOMEPRODUTO NOME_PRODUTO_PED,'#13#10'((ITE.VLR_UNITARIO - ITE' +
      '.VLR_DESCONTO) * ITE.QTD_RESTANTE) VLR_RESTANTE,'#13#10'((ITE.VLR_UNIT' +
      'ARIO - ITE.VLR_DESCONTO) * ITE.QTD_FATURADO) VLR_FATURADO,'#13#10'((IT' +
      'E.VLR_UNITARIO - ITE.VLR_DESCONTO) * ITE.QTD_CANCELADO) VLR_CANC' +
      'ELADO'#13#10'FROM PEDIDO PED'#13#10'INNER JOIN PEDIDO_ITEM ITE'#13#10'ON PED.ID = ' +
      'ITE.ID'#13#10'INNER JOIN FILIAL FIL'#13#10'ON PED.FILIAL = FIL.id'#13#10'INNER JOI' +
      'N PESSOA CLI'#13#10'ON PED.id_cliente = CLI.CODIGO'#13#10'INNER JOIN PRODUTO' +
      ' PRO'#13#10'ON ITE.ID_PRODUTO = PRO.ID'#13#10'WHERE PED.CANCELADO = '#39'N'#39#13#10'   ' +
      '   '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 112
    Top = 40
    object sdsPedido_ItemID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsPedido_ItemID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPedido_ItemPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object sdsPedido_ItemDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsPedido_ItemDTENTREGA_PED: TDateField
      FieldName = 'DTENTREGA_PED'
    end
    object sdsPedido_ItemNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object sdsPedido_ItemID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsPedido_ItemFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsPedido_ItemNOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object sdsPedido_ItemNOME_FILIAL_INT: TStringField
      FieldName = 'NOME_FILIAL_INT'
      Size = 30
    end
    object sdsPedido_ItemNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object sdsPedido_ItemNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object sdsPedido_ItemREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsPedido_ItemITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsPedido_ItemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsPedido_ItemDTENTREGA_ITEM: TDateField
      FieldName = 'DTENTREGA_ITEM'
    end
    object sdsPedido_ItemQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsPedido_ItemQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object sdsPedido_ItemQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object sdsPedido_ItemQTD_CANCELADO: TFloatField
      FieldName = 'QTD_CANCELADO'
    end
    object sdsPedido_ItemVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsPedido_ItemVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object sdsPedido_ItemVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsPedido_ItemVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
    end
    object sdsPedido_ItemVLR_FATURADO: TFloatField
      FieldName = 'VLR_FATURADO'
    end
    object sdsPedido_ItemVLR_CANCELADO: TFloatField
      FieldName = 'VLR_CANCELADO'
    end
    object sdsPedido_ItemQTD_AFATURAR: TFloatField
      FieldName = 'QTD_AFATURAR'
    end
    object sdsPedido_ItemID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object sdsPedido_ItemUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object sdsPedido_ItemPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object sdsPedido_ItemPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object sdsPedido_ItemPERC_TRIBICMS: TFloatField
      FieldName = 'PERC_TRIBICMS'
    end
    object sdsPedido_ItemQTD_PRODUZIDA: TFloatField
      FieldName = 'QTD_PRODUZIDA'
    end
    object sdsPedido_ItemQTD_LIBERADA: TFloatField
      FieldName = 'QTD_LIBERADA'
    end
    object sdsPedido_ItemTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsPedido_ItemNUM_TALAO: TStringField
      FieldName = 'NUM_TALAO'
      Size = 15
    end
    object sdsPedido_ItemFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object sdsPedido_ItemCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsPedido_ItemNUMOS: TStringField
      FieldName = 'NUMOS'
      Size = 30
    end
    object sdsPedido_ItemNUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object sdsPedido_ItemNOME_PRODUTO_PED: TStringField
      FieldName = 'NOME_PRODUTO_PED'
      Size = 100
    end
  end
  object dspPedido_Item: TDataSetProvider
    DataSet = sdsPedido_Item
    Left = 192
    Top = 40
  end
  object cdsPedido_Item: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspPedido_Item'
    OnCalcFields = cdsPedido_ItemCalcFields
    Left = 256
    Top = 40
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
      DisplayFormat = '###,###,##0.0000##'
    end
    object cdsPedido_ItemQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
      DisplayFormat = '###,###,##0.0000##'
    end
    object cdsPedido_ItemQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
      DisplayFormat = '###,###,##0.0000##'
    end
    object cdsPedido_ItemQTD_CANCELADO: TFloatField
      FieldName = 'QTD_CANCELADO'
      DisplayFormat = '###,###,##0.0000##'
    end
    object cdsPedido_ItemVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '###,###,##0.000##'
    end
    object cdsPedido_ItemVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '###,###,##0.000##'
    end
    object cdsPedido_ItemVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedido_ItemVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedido_ItemVLR_FATURADO: TFloatField
      FieldName = 'VLR_FATURADO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedido_ItemVLR_CANCELADO: TFloatField
      FieldName = 'VLR_CANCELADO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedido_ItemsdsPedido_Nota: TDataSetField
      FieldName = 'sdsPedido_Nota'
    end
    object cdsPedido_ItemQTD_AFATURAR: TFloatField
      FieldName = 'QTD_AFATURAR'
    end
    object cdsPedido_ItemID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsPedido_ItemUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsPedido_ItemPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsPedido_ItemPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsPedido_ItemPERC_TRIBICMS: TFloatField
      FieldName = 'PERC_TRIBICMS'
    end
    object cdsPedido_ItemQTD_PRODUZIDA: TFloatField
      FieldName = 'QTD_PRODUZIDA'
      DisplayFormat = '###,###,##0.0000##'
    end
    object cdsPedido_ItemQTD_LIBERADA: TFloatField
      FieldName = 'QTD_LIBERADA'
      DisplayFormat = '###,###,##0.0000##'
    end
    object cdsPedido_ItemclQtd_Restante: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clQtd_Restante'
      DisplayFormat = '###,###,##0.0000##'
      Calculated = True
    end
    object cdsPedido_ItemTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsPedido_ItemNUM_TALAO: TStringField
      FieldName = 'NUM_TALAO'
      Size = 15
    end
    object cdsPedido_ItemFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsPedido_ItemCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsPedido_ItemNUMOS: TStringField
      FieldName = 'NUMOS'
      Size = 30
    end
    object cdsPedido_ItemNUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object cdsPedido_ItemNOME_PRODUTO_PED: TStringField
      FieldName = 'NOME_PRODUTO_PED'
      Size = 100
    end
  end
  object dsPedido_Item: TDataSource
    DataSet = cdsPedido_Item
    Left = 328
    Top = 40
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME'#13#10'FROM FILIAL'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 80
    Top = 480
    object sdsFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 152
    Top = 480
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 216
    Top = 480
    object cdsFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 272
    Top = 480
  end
  object sdsCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PESSOA'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 608
    Top = 248
    object sdsClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsClienteFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 640
    Top = 248
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCliente'
    Left = 680
    Top = 248
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
    Left = 720
    Top = 248
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 24
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
    object qParametrosBAIXA_ESTOQUE_MP: TStringField
      FieldName = 'BAIXA_ESTOQUE_MP'
      FixedChar = True
      Size = 1
    end
    object qParametrosID_ATELIER_ADEFINIR: TIntegerField
      FieldName = 'ID_ATELIER_ADEFINIR'
    end
    object qParametrosUSA_LOCAL_ESTOQUE: TStringField
      FieldName = 'USA_LOCAL_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object qParametrosINFORMAR_COR_PROD: TStringField
      FieldName = 'INFORMAR_COR_PROD'
      FixedChar = True
      Size = 1
    end
  end
  object dsPedido_Item_Mestre: TDataSource
    DataSet = sdsPedido_Item
    Left = 48
    Top = 96
  end
  object sdsPedido_Nota: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT NP.ID ID_NOTA, NP.ITEM ITEM_NOTA, NP.QTD, NT.NUMNOTA, NT.' +
      'DTEMISSAO, NT.SERIE'#13#10'FROM NOTAFISCAL_PED NP'#13#10'INNER JOIN NOTAFISC' +
      'AL NT'#13#10'ON NP.ID = NT.ID'#13#10'WHERE NP.ID_PEDIDO = :ID'#13#10'  AND NP.ITEM' +
      '_PEDIDO = :ITEM'
    DataSource = dsPedido_Item_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 168
    object sdsPedido_NotaID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
      Required = True
    end
    object sdsPedido_NotaITEM_NOTA: TIntegerField
      FieldName = 'ITEM_NOTA'
      Required = True
    end
    object sdsPedido_NotaQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsPedido_NotaNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object sdsPedido_NotaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsPedido_NotaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
  end
  object cdsPedido_Nota: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 184
    Top = 168
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
  end
  object dsPedido_Nota: TDataSource
    DataSet = cdsPedido_Nota
    Left = 280
    Top = 168
  end
  object sdsBaixa_Pedido: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM BAIXA_PEDIDO'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 80
    Top = 288
    object sdsBaixa_PedidoID: TIntegerField
      FieldName = 'ID'
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
  end
  object dspBaixa_Pedido: TDataSetProvider
    DataSet = sdsBaixa_Pedido
    Left = 152
    Top = 288
  end
  object cdsBaixa_Pedido: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspBaixa_Pedido'
    OnNewRecord = cdsBaixa_PedidoNewRecord
    Left = 216
    Top = 288
    object cdsBaixa_PedidoID: TIntegerField
      FieldName = 'ID'
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
    object cdsBaixa_PedidosdsBaixa_Pedido_MP: TDataSetField
      FieldName = 'sdsBaixa_Pedido_MP'
    end
  end
  object dsBaixa_Pedido: TDataSource
    DataSet = cdsBaixa_Pedido
    Left = 272
    Top = 288
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
    Top = 352
  end
  object mPedidoAux: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'ID_Pedido'
    Params = <>
    Left = 416
    Top = 248
    Data = {
      2C0000009619E0BD0100000018000000010000000000030000002C000949445F
      50656469646F04000100000000000000}
    object mPedidoAuxID_Pedido: TIntegerField
      FieldName = 'ID_Pedido'
    end
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, REFERENCIA, NOME'#13#10'FROM PRODUTO'#13#10'WHERE INATIVO = '#39'N'#39#13#10 +
      '  AND TIPO_REG = '#39'P'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 568
    Top = 32
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 640
    Top = 32
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    Left = 704
    Top = 32
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
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 760
    Top = 32
  end
  object sdsLote_Talao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT L.dtemissao, L.num_lote, L.filial, L.hremissao, L.DTENTRE' +
      'GA, L.qtd_taloes,'#13#10'T.*, PRO.REFERENCIA, PRO.NOME NOME_PRODUTO, P' +
      'RO.UNIDADE, FIL.NOME NOME_FILIAL'#13#10'FROM LOTE L'#13#10'INNER JOIN TALAO ' +
      'T'#13#10'ON L.ID = T.ID'#13#10'INNER JOIN PRODUTO PRO'#13#10'ON T.ID_PRODUTO = PRO' +
      '.ID'#13#10'INNER JOIN FILIAL FIL'#13#10'ON L.FILIAL = FIL.ID'#13#10'WHERE (T.qtd_p' +
      'endente > 0)'#13#10'    and (T.DTBAIXA IS NULL)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 584
    Top = 304
    object sdsLote_TalaoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsLote_TalaoNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object sdsLote_TalaoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsLote_TalaoHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object sdsLote_TalaoDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object sdsLote_TalaoQTD_TALOES: TIntegerField
      FieldName = 'QTD_TALOES'
    end
    object sdsLote_TalaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsLote_TalaoNUM_TALAO: TIntegerField
      FieldName = 'NUM_TALAO'
      Required = True
    end
    object sdsLote_TalaoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsLote_TalaoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsLote_TalaoQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsLote_TalaoQTD_PRODUZIDO: TFloatField
      FieldName = 'QTD_PRODUZIDO'
    end
    object sdsLote_TalaoQTD_PENDENTE: TFloatField
      FieldName = 'QTD_PENDENTE'
    end
    object sdsLote_TalaoDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object sdsLote_TalaoHRBAIXA: TTimeField
      FieldName = 'HRBAIXA'
    end
    object sdsLote_TalaoIMPRESSO: TStringField
      FieldName = 'IMPRESSO'
      FixedChar = True
      Size = 1
    end
    object sdsLote_TalaoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsLote_TalaoNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object sdsLote_TalaoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object sdsLote_TalaoNOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
  end
  object dspLote_Talao: TDataSetProvider
    DataSet = sdsLote_Talao
    Left = 656
    Top = 304
  end
  object cdsLote_Talao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;NUM_TALAO'
    Params = <>
    ProviderName = 'dspLote_Talao'
    Left = 720
    Top = 304
    object cdsLote_TalaoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsLote_TalaoNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object cdsLote_TalaoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsLote_TalaoHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object cdsLote_TalaoDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsLote_TalaoQTD_TALOES: TIntegerField
      FieldName = 'QTD_TALOES'
    end
    object cdsLote_TalaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsLote_TalaoNUM_TALAO: TIntegerField
      FieldName = 'NUM_TALAO'
      Required = True
    end
    object cdsLote_TalaoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsLote_TalaoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsLote_TalaoQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsLote_TalaoQTD_PRODUZIDO: TFloatField
      FieldName = 'QTD_PRODUZIDO'
    end
    object cdsLote_TalaoQTD_PENDENTE: TFloatField
      FieldName = 'QTD_PENDENTE'
    end
    object cdsLote_TalaoDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object cdsLote_TalaoHRBAIXA: TTimeField
      FieldName = 'HRBAIXA'
    end
    object cdsLote_TalaoIMPRESSO: TStringField
      FieldName = 'IMPRESSO'
      FixedChar = True
      Size = 1
    end
    object cdsLote_TalaoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsLote_TalaoNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsLote_TalaoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsLote_TalaoNOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
  end
  object dsLote_Talao: TDataSource
    DataSet = cdsLote_Talao
    Left = 776
    Top = 304
  end
  object sdsTalao_Ped: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM TALAO_PED'#13#10'WHERE ID = :ID'#13#10'   AND NUM_TALAO = :NU' +
      'M_TALAO'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUM_TALAO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 584
    Top = 352
    object sdsTalao_PedID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTalao_PedNUM_TALAO: TIntegerField
      FieldName = 'NUM_TALAO'
      Required = True
    end
    object sdsTalao_PedID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Required = True
    end
    object sdsTalao_PedITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
      Required = True
    end
    object sdsTalao_PedQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object dspTalao_Ped: TDataSetProvider
    DataSet = sdsTalao_Ped
    Left = 656
    Top = 352
  end
  object cdsTalao_Ped: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;NUM_TALAO;ID_PEDIDO;ITEM_PEDIDO'
    Params = <>
    ProviderName = 'dspTalao_Ped'
    Left = 720
    Top = 352
    object cdsTalao_PedID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTalao_PedNUM_TALAO: TIntegerField
      FieldName = 'NUM_TALAO'
      Required = True
    end
    object cdsTalao_PedID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Required = True
    end
    object cdsTalao_PedITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
      Required = True
    end
    object cdsTalao_PedQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object dsTalao_Ped: TDataSource
    DataSet = cdsTalao_Ped
    Left = 776
    Top = 352
  end
  object sdsBaixa_Talao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM BAIXA_TALAO'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 584
    Top = 400
    object sdsBaixa_TalaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsBaixa_TalaoNUM_TALAO: TIntegerField
      FieldName = 'NUM_TALAO'
    end
    object sdsBaixa_TalaoNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object sdsBaixa_TalaoQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsBaixa_TalaoDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object sdsBaixa_TalaoHRBAIXA: TTimeField
      FieldName = 'HRBAIXA'
    end
    object sdsBaixa_TalaoID_BAIXA_PEDIDO: TIntegerField
      FieldName = 'ID_BAIXA_PEDIDO'
    end
    object sdsBaixa_TalaoID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
    end
  end
  object dspBaixa_Talao: TDataSetProvider
    DataSet = sdsBaixa_Talao
    Left = 656
    Top = 400
  end
  object cdsBaixa_Talao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspBaixa_Talao'
    Left = 720
    Top = 400
    object cdsBaixa_TalaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsBaixa_TalaoNUM_TALAO: TIntegerField
      FieldName = 'NUM_TALAO'
    end
    object cdsBaixa_TalaoNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object cdsBaixa_TalaoQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsBaixa_TalaoDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object cdsBaixa_TalaoHRBAIXA: TTimeField
      FieldName = 'HRBAIXA'
    end
    object cdsBaixa_TalaoID_BAIXA_PEDIDO: TIntegerField
      FieldName = 'ID_BAIXA_PEDIDO'
    end
    object cdsBaixa_TalaoID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
    end
  end
  object dsBaixa_Talao: TDataSource
    DataSet = cdsBaixa_Talao
    Left = 776
    Top = 400
  end
  object sdsTalao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM TALAO'#13#10'WHERE ID = :ID'#13#10'      AND NUM_TALAO = :NUM' +
      '_TALAO'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUM_TALAO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 584
    Top = 448
    object sdsTalaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTalaoNUM_TALAO: TIntegerField
      FieldName = 'NUM_TALAO'
      Required = True
    end
    object sdsTalaoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsTalaoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsTalaoQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsTalaoQTD_PRODUZIDO: TFloatField
      FieldName = 'QTD_PRODUZIDO'
    end
    object sdsTalaoQTD_PENDENTE: TFloatField
      FieldName = 'QTD_PENDENTE'
    end
    object sdsTalaoDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object sdsTalaoHRBAIXA: TTimeField
      FieldName = 'HRBAIXA'
    end
    object sdsTalaoIMPRESSO: TStringField
      FieldName = 'IMPRESSO'
      FixedChar = True
      Size = 1
    end
    object sdsTalaoID_COMBINACAO: TIntegerField
      FieldName = 'ID_COMBINACAO'
    end
    object sdsTalaoID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object sdsTalaoDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object sdsTalaoHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
  end
  object dspTalao: TDataSetProvider
    DataSet = sdsTalao
    Left = 656
    Top = 448
  end
  object cdsTalao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;NUM_TALAO'
    Params = <>
    ProviderName = 'dspTalao'
    Left = 720
    Top = 448
    object cdsTalaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTalaoNUM_TALAO: TIntegerField
      FieldName = 'NUM_TALAO'
      Required = True
    end
    object cdsTalaoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsTalaoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsTalaoQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsTalaoQTD_PRODUZIDO: TFloatField
      FieldName = 'QTD_PRODUZIDO'
    end
    object cdsTalaoQTD_PENDENTE: TFloatField
      FieldName = 'QTD_PENDENTE'
    end
    object cdsTalaoDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object cdsTalaoHRBAIXA: TTimeField
      FieldName = 'HRBAIXA'
    end
    object cdsTalaoIMPRESSO: TStringField
      FieldName = 'IMPRESSO'
      FixedChar = True
      Size = 1
    end
    object cdsTalaoID_COMBINACAO: TIntegerField
      FieldName = 'ID_COMBINACAO'
    end
    object cdsTalaoID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object cdsTalaoDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object cdsTalaoHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
  end
  object sdsProduto_Consumo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO_CONSUMO'#13#10'WHERE ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 576
    Top = 88
  end
  object dspProduto_Consumo: TDataSetProvider
    DataSet = sdsProduto_Consumo
    Left = 648
    Top = 88
  end
  object cdsProduto_Consumo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto_Consumo'
    Left = 712
    Top = 88
    object cdsProduto_ConsumoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProduto_ConsumoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsProduto_ConsumoID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsProduto_ConsumoQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object cdsProduto_ConsumoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsProduto_ConsumoTIPO_CONSUMO: TStringField
      FieldName = 'TIPO_CONSUMO'
      FixedChar = True
      Size = 1
    end
  end
  object dsProduto_Consumo: TDataSource
    DataSet = cdsProduto_Consumo
    Left = 768
    Top = 88
  end
  object sdsProduto_Consumo_Tam: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PRODUTO_CONSUMO_TAM'#13#10'WHERE ID = :ID'#13#10'     AND ITE' +
      'M = :ITEM'#13#10'     AND TAMANHO = :TAMANHO'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TAMANHO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 576
    Top = 136
  end
  object dspProduto_Consumo_Tam: TDataSetProvider
    DataSet = sdsProduto_Consumo_Tam
    Left = 648
    Top = 136
  end
  object cdsProduto_Consumo_Tam: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto_Consumo_Tam'
    Left = 712
    Top = 136
    object cdsProduto_Consumo_TamID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProduto_Consumo_TamITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsProduto_Consumo_TamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
    object cdsProduto_Consumo_TamQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
  end
  object dsProduto_Consumo_Tam: TDataSource
    DataSet = cdsProduto_Consumo_Tam
    Left = 760
    Top = 136
  end
  object qMaterial: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM PRODUTO'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 864
    Top = 208
    object qMaterialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qMaterialREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object qMaterialNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qMaterialPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object qMaterialPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object qMaterialPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object qMaterialPOSSE_MATERIAL: TStringField
      FieldName = 'POSSE_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object qMaterialESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object qMaterialID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object qMaterialORIGEM_PROD: TStringField
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
    end
    object qMaterialCODSITCF: TStringField
      FieldName = 'CODSITCF'
      Size = 5
    end
    object qMaterialPERC_REDUCAOICMS: TFloatField
      FieldName = 'PERC_REDUCAOICMS'
    end
    object qMaterialUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object qMaterialUSA_GRADE: TStringField
      FieldName = 'USA_GRADE'
      FixedChar = True
      Size = 1
    end
    object qMaterialID_GRADE: TIntegerField
      FieldName = 'ID_GRADE'
    end
  end
  object dsBaixa_Pedido_Mestre: TDataSource
    DataSet = sdsBaixa_Pedido
    Left = 32
    Top = 336
  end
  object sdsBaixa_Pedido_MP: TSQLDataSet
    CommandText = 'SELECT *'#13#10'FROM BAIXA_PEDIDO_MP'#13#10'WHERE ID = :ID'
    DataSource = dsBaixa_Pedido_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 80
    Top = 392
    object sdsBaixa_Pedido_MPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsBaixa_Pedido_MPITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsBaixa_Pedido_MPID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object sdsBaixa_Pedido_MPTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsBaixa_Pedido_MPQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsBaixa_Pedido_MPID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object sdsBaixa_Pedido_MPQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object sdsBaixa_Pedido_MPID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
  end
  object cdsBaixa_Pedido_MP: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = cdsBaixa_PedidosdsBaixa_Pedido_MP
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    BeforePost = cdsBaixa_Pedido_MPBeforePost
    Left = 160
    Top = 392
    object cdsBaixa_Pedido_MPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsBaixa_Pedido_MPITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsBaixa_Pedido_MPID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsBaixa_Pedido_MPTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsBaixa_Pedido_MPQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsBaixa_Pedido_MPID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object cdsBaixa_Pedido_MPQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object cdsBaixa_Pedido_MPID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
  end
  object dsBaixa_Pedido_MP: TDataSource
    DataSet = cdsBaixa_Pedido_MP
    Left = 240
    Top = 392
  end
  object sdsTalao_Aux: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT T.id, T.item, T.id_atelier, T.id_setor, T.id_produto, T.i' +
      'd_combinacao,'#13#10'T.qtd, T.dtsaida, T.dtretorno, T.HRSAIDA, T.HRRET' +
      'ORNO, T.ID_ATELIER_ORIG, T.DTSISTEMA, T.HRSISTEMA'#13#10'FROM TALAO_AU' +
      'X T'#13#10'WHERE T.ID = :ID'#13#10'  AND T.ITEM = :ITEM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 880
    Top = 392
    object sdsTalao_AuxID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsTalao_AuxITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsTalao_AuxID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object sdsTalao_AuxID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object sdsTalao_AuxID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsTalao_AuxID_COMBINACAO: TIntegerField
      FieldName = 'ID_COMBINACAO'
    end
    object sdsTalao_AuxQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsTalao_AuxDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object sdsTalao_AuxDTRETORNO: TDateField
      FieldName = 'DTRETORNO'
    end
    object sdsTalao_AuxHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
    object sdsTalao_AuxHRRETORNO: TTimeField
      FieldName = 'HRRETORNO'
    end
    object sdsTalao_AuxID_ATELIER_ORIG: TIntegerField
      FieldName = 'ID_ATELIER_ORIG'
    end
    object sdsTalao_AuxDTSISTEMA: TDateField
      FieldName = 'DTSISTEMA'
    end
    object sdsTalao_AuxHRSISTEMA: TTimeField
      FieldName = 'HRSISTEMA'
    end
  end
  object dspTalao_Aux: TDataSetProvider
    DataSet = sdsTalao_Aux
    UpdateMode = upWhereKeyOnly
    Left = 952
    Top = 392
  end
  object cdsTalao_Aux: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspTalao_Aux'
    Left = 1016
    Top = 392
    object cdsTalao_AuxID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTalao_AuxITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTalao_AuxID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object cdsTalao_AuxID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object cdsTalao_AuxID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsTalao_AuxID_COMBINACAO: TIntegerField
      FieldName = 'ID_COMBINACAO'
    end
    object cdsTalao_AuxQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsTalao_AuxDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object cdsTalao_AuxDTRETORNO: TDateField
      FieldName = 'DTRETORNO'
    end
    object cdsTalao_AuxHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
    object cdsTalao_AuxHRRETORNO: TTimeField
      FieldName = 'HRRETORNO'
    end
    object cdsTalao_AuxID_ATELIER_ORIG: TIntegerField
      FieldName = 'ID_ATELIER_ORIG'
    end
    object cdsTalao_AuxDTSISTEMA: TDateField
      FieldName = 'DTSISTEMA'
    end
    object cdsTalao_AuxHRSISTEMA: TTimeField
      FieldName = 'HRSISTEMA'
    end
  end
  object dsTalao_Aux: TDataSource
    DataSet = cdsTalao_Aux
    Left = 1080
    Top = 392
  end
  object sdsAtelier_OP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT AUX.*'#13#10'FROM ('#13#10'SELECT DISTINCT L.num_ordem, ATE.nome NOME' +
      '_ATELIER, P.id_atelier, '#39'E'#39' TIPO'#13#10'FROM LOTE L'#13#10'INNER JOIN PRODUT' +
      'O_ATELIER P'#13#10'ON L.id_produto = P.id'#13#10'INNER JOIN PESSOA ATE'#13#10'ON P' +
      '.id_atelier = ATE.codigo'#13#10'WHERE L.num_ordem = :NUM_ORDEM'#13#10#13#10'UNIO' +
      'N ALL'#13#10#13#10'select DISTINCT LL.num_ordem, pp.nome NOME_ATELIER, tt.' +
      'id_atelier, '#39'R'#39' TIPO'#13#10'from talao_aux tt'#13#10'inner join lote ll'#13#10'on ' +
      'tt.id = ll.id'#13#10'inner join pessoa pp'#13#10'on tt.id_atelier = pp.codig' +
      'o'#13#10'WHERE LL.NUM_ORDEM = :NUM_ORDEM) AUX'#13#10'WHERE AUX.TIPO = :TIPO'#13 +
      #10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_ORDEM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUM_ORDEM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 872
    Top = 464
  end
  object dspAtelier_OP: TDataSetProvider
    DataSet = sdsAtelier_OP
    Left = 944
    Top = 464
  end
  object cdsAtelier_OP: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME_ATELIER'
    Params = <>
    ProviderName = 'dspAtelier_OP'
    Left = 1008
    Top = 464
    object cdsAtelier_OPNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object cdsAtelier_OPNOME_ATELIER: TStringField
      FieldName = 'NOME_ATELIER'
      Size = 60
    end
    object cdsAtelier_OPID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object cdsAtelier_OPTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dsAtelier_OP: TDataSource
    DataSet = cdsAtelier_OP
    Left = 1072
    Top = 464
  end
  object sdsAtelier: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ATE.CODIGO, ATE.NOME, ATE.FANTASIA'#13#10'FROM PESSOA ATE'#13#10'WHER' +
      'E ATE.TP_ATELIER = '#39'S'#39#13#10'  AND ATE.INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 872
    Top = 519
  end
  object dspAtelier: TDataSetProvider
    DataSet = sdsAtelier
    Left = 944
    Top = 519
  end
  object cdsAtelier: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspAtelier'
    Left = 1008
    Top = 519
    object cdsAtelierCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsAtelierNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsAtelierFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
  end
  object dsAtelier: TDataSource
    DataSet = cdsAtelier
    Left = 1072
    Top = 519
  end
  object sdsPedido_Pend: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT V.*'#13#10'FROM VPEDIDO_ITEM_PEND V'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 976
    Top = 112
  end
  object dspPedido_Pend: TDataSetProvider
    DataSet = sdsPedido_Pend
    Left = 1008
    Top = 112
  end
  object cdsPedido_Pend: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido_Pend'
    OnCalcFields = cdsPedido_PendCalcFields
    Left = 1040
    Top = 112
    object cdsPedido_PendID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsPedido_PendID: TIntegerField
      FieldName = 'ID'
    end
    object cdsPedido_PendPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsPedido_PendDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsPedido_PendDTENTREGA_PED: TDateField
      FieldName = 'DTENTREGA_PED'
    end
    object cdsPedido_PendNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPedido_PendID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsPedido_PendFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsPedido_PendNOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object cdsPedido_PendNOME_FILIAL_INT: TStringField
      FieldName = 'NOME_FILIAL_INT'
      Size = 30
    end
    object cdsPedido_PendNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsPedido_PendCLIENTE_ESTOQUE: TStringField
      FieldName = 'CLIENTE_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_PendNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsPedido_PendREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsPedido_PendITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object cdsPedido_PendID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsPedido_PendDTENTREGA_ITEM: TDateField
      FieldName = 'DTENTREGA_ITEM'
    end
    object cdsPedido_PendQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedido_PendQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsPedido_PendQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsPedido_PendQTD_CANCELADO: TFloatField
      FieldName = 'QTD_CANCELADO'
    end
    object cdsPedido_PendNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 60
    end
    object cdsPedido_PendVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsPedido_PendVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object cdsPedido_PendVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsPedido_PendNUMOS: TStringField
      FieldName = 'NUMOS'
      Size = 30
    end
    object cdsPedido_PendFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsPedido_PendNUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object cdsPedido_PendNUM_TALAO: TStringField
      FieldName = 'NUM_TALAO'
      Size = 15
    end
    object cdsPedido_PendQTD_PECA: TIntegerField
      FieldName = 'QTD_PECA'
    end
    object cdsPedido_PendTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_PendAPROVADO_ORC: TStringField
      FieldName = 'APROVADO_ORC'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_PendPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsPedido_PendID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object cdsPedido_PendNOME_COR_COMBINACAO: TStringField
      FieldName = 'NOME_COR_COMBINACAO'
      Size = 60
    end
    object cdsPedido_PendTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsPedido_PendVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
    end
    object cdsPedido_PendVLR_FATURADO: TFloatField
      FieldName = 'VLR_FATURADO'
    end
    object cdsPedido_PendVLR_CANCELADO: TFloatField
      FieldName = 'VLR_CANCELADO'
    end
    object cdsPedido_PendclQtd_Restante: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clQtd_Restante'
      Calculated = True
    end
    object cdsPedido_PendQTD_PRODUZIDA: TFloatField
      FieldName = 'QTD_PRODUZIDA'
    end
    object cdsPedido_PendQTD_AFATURAR: TFloatField
      FieldName = 'QTD_AFATURAR'
    end
    object cdsPedido_PendNOME_PRODUTO_PED: TStringField
      FieldName = 'NOME_PRODUTO_PED'
      Size = 100
    end
    object cdsPedido_PendID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsPedido_PendUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsPedido_PendPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsPedido_PendPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsPedido_PendPERC_TRIBICMS: TFloatField
      FieldName = 'PERC_TRIBICMS'
    end
    object cdsPedido_PendID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
  end
  object dsPedido_Pend: TDataSource
    DataSet = cdsPedido_Pend
    Left = 1072
    Top = 112
  end
  object sdsLote: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT L.*'#13#10'FROM LOTE L'#13#10'WHERE L.num_ordem = :NUM_ORDEM'#13#10'  AND L' +
      '.num_lote = :NUM_LOTE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_ORDEM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUM_LOTE'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 424
    Top = 480
    object sdsLoteID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsLoteNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object sdsLoteQTD_TALOES: TIntegerField
      FieldName = 'QTD_TALOES'
    end
    object sdsLoteDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsLoteHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object sdsLoteFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsLoteOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsLoteID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsLoteDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object sdsLoteQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsLoteNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object sdsLoteCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object sdsLoteID_COMBINACAO: TIntegerField
      FieldName = 'ID_COMBINACAO'
    end
    object sdsLoteNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object sdsLoteNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object sdsLoteTALAO_AUX_GERADO: TStringField
      FieldName = 'TALAO_AUX_GERADO'
      FixedChar = True
      Size = 1
    end
    object sdsLoteDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object sdsLoteHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object sdsLoteDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object sdsLoteHRBAIXA: TTimeField
      FieldName = 'HRBAIXA'
    end
  end
  object dspLote: TDataSetProvider
    DataSet = sdsLote
    Left = 472
    Top = 480
  end
  object cdsLote: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspLote'
    Left = 512
    Top = 480
    object cdsLoteID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsLoteNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object cdsLoteQTD_TALOES: TIntegerField
      FieldName = 'QTD_TALOES'
    end
    object cdsLoteDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsLoteHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object cdsLoteFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsLoteOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsLoteID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsLoteDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsLoteQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsLoteNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object cdsLoteCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object cdsLoteID_COMBINACAO: TIntegerField
      FieldName = 'ID_COMBINACAO'
    end
    object cdsLoteNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsLoteNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsLoteTALAO_AUX_GERADO: TStringField
      FieldName = 'TALAO_AUX_GERADO'
      FixedChar = True
      Size = 1
    end
    object cdsLoteDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object cdsLoteHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object cdsLoteDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object cdsLoteHRBAIXA: TTimeField
      FieldName = 'HRBAIXA'
    end
  end
  object qLote2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_LOTE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT L.num_lote, L.num_ordem, L.ID'
      'FROM LOTE L'
      'WHERE L.NUM_LOTE = :NUM_LOTE')
    SQLConnection = dmDatabase.scoDados
    Left = 936
    Top = 312
    object qLote2NUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object qLote2NUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object qLote2ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object sdsProcesso_Grupo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PG.*, P.nome, P.TIPO'#13#10'FROM PROCESSO_GRUPO_ITENS PG'#13#10'INNER' +
      ' JOIN PROCESSO P'#13#10'ON PG.id_processo = P.ID'#13#10'WHERE PG.ID = :ID'#13#10'O' +
      'RDER BY PG.item'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 976
    Top = 168
  end
  object dspProcesso_Grupo: TDataSetProvider
    DataSet = sdsProcesso_Grupo
    Left = 1008
    Top = 168
  end
  object cdsProcesso_Grupo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProcesso_Grupo'
    OnCalcFields = cdsPedido_PendCalcFields
    Left = 1040
    Top = 168
    object cdsProcesso_GrupoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProcesso_GrupoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsProcesso_GrupoID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object cdsProcesso_GrupoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsProcesso_GrupoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object dsProcesso_Grupo: TDataSource
    DataSet = cdsProcesso_Grupo
    Left = 1072
    Top = 168
  end
  object sdsProduto_CMat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT V.id, v.item, v.nome_combinacao, v.id_material, v.materia' +
      'l, v.id_setor, v.nome_posicao, v.qtd_consumo,'#13#10'v.nome_setor, v.T' +
      'IPO_CONSUMO, V.ITEM_CONSUMO, V.ID_COR_MAT, V.NOME_COR NOME_COR_M' +
      'AT'#13#10'FROM vficha_tecnica2 V'#13#10'WHERE V.ID = :ID'#13#10'  AND V.id_cor_com' +
      'binacao = :ID_COR_COMBINACAO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_COR_COMBINACAO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 568
    Top = 184
  end
  object dspProduto_CMat: TDataSetProvider
    DataSet = sdsProduto_CMat
    Left = 640
    Top = 184
  end
  object cdsProduto_CMat: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto_CMat'
    Left = 704
    Top = 184
    object cdsProduto_CMatID: TIntegerField
      FieldName = 'ID'
    end
    object cdsProduto_CMatITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object cdsProduto_CMatNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 50
    end
    object cdsProduto_CMatID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsProduto_CMatMATERIAL: TStringField
      FieldName = 'MATERIAL'
      Size = 100
    end
    object cdsProduto_CMatID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object cdsProduto_CMatNOME_POSICAO: TStringField
      FieldName = 'NOME_POSICAO'
      Size = 30
    end
    object cdsProduto_CMatQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object cdsProduto_CMatNOME_SETOR: TStringField
      FieldName = 'NOME_SETOR'
    end
    object cdsProduto_CMatITEM_CONSUMO: TIntegerField
      FieldName = 'ITEM_CONSUMO'
    end
    object cdsProduto_CMatTIPO_CONSUMO: TStringField
      FieldName = 'TIPO_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_CMatID_COR_MAT: TFMTBCDField
      FieldName = 'ID_COR_MAT'
      Precision = 15
      Size = 0
    end
    object cdsProduto_CMatNOME_COR_MAT: TStringField
      FieldName = 'NOME_COR_MAT'
      Size = 60
    end
  end
  object dsProduto_CMat: TDataSource
    DataSet = cdsProduto_CMat
    Left = 760
    Top = 184
  end
  object qParametros_Est: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MARCAR_BAIXA_PEDIDO'
      'FROM PARAMETROS_EST')
    SQLConnection = dmDatabase.scoDados
    Left = 448
    Top = 112
    object qParametros_EstMARCAR_BAIXA_PEDIDO: TStringField
      FieldName = 'MARCAR_BAIXA_PEDIDO'
      Size = 1
    end
  end
  object qParametros_Ser: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select p.lib_qtd_pedido'
      'from parametros_ser p')
    SQLConnection = dmDatabase.scoDados
    Left = 448
    Top = 176
    object qParametros_SerLIB_QTD_PEDIDO: TStringField
      FieldName = 'LIB_QTD_PEDIDO'
      FixedChar = True
      Size = 1
    end
  end
end
