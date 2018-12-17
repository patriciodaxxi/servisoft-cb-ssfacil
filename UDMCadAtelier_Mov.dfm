object DMCadAtelier_Mov: TDMCadAtelier_Mov
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 199
  Top = 90
  Height = 530
  Width = 881
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PED.id_cliente, PED.ID, PED.pedido_cliente, PED.dtemissao' +
      ', PED.dtentrega DTENTREGA_PED, PED.NUM_PEDIDO,'#13#10'PED.id_vendedor,' +
      ' PED.filial, FIL.NOME NOME_FILIAL, FIL.nome_interno NOME_FILIAL_' +
      'INT,'#13#10'CLI.NOME NOME_CLIENTE, NOMEPRODUTO, REFERENCIA, ITE.ITEM, ' +
      'ITE.ID_PRODUTO,'#13#10'ITE.DTENTREGA DTENTREGA_ITEM,  ITE.QTD, ITE.qtd' +
      '_cancelado, ITE.VLR_UNITARIO, ITE.VLR_DESCONTO, ITE.VLR_TOTAL, '#13 +
      #10'ITE.UNIDADE, ITE.VLR_UNITARIO_ATELIER, ITE.VLR_TOTAL_ATELIER, I' +
      'TE.ID_ATELIER, ITE.DT_ENVIO_ATELIER, '#13#10'DT_RETORNO_ATELIER, ITE.O' +
      'BS, ATE.NOME NOME_ATELIER, PED.VLR_ADIANTAMENTO'#13#10'FROM PEDIDO PED' +
      #13#10'INNER JOIN PEDIDO_ITEM ITE'#13#10'ON PED.ID = ITE.ID'#13#10'INNER JOIN FIL' +
      'IAL FIL'#13#10'ON PED.FILIAL = FIL.id'#13#10'INNER JOIN PESSOA CLI'#13#10'ON PED.i' +
      'd_cliente = CLI.CODIGO'#13#10#13#10'LEFT JOIN PESSOA ATE'#13#10'ON ITE.ID_ATELIE' +
      'R = ATE.CODIGO'#13#10#13#10'WHERE PED.CANCELADO = '#39'N'#39#13#10' AND ITE.QTD > 0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 288
    Top = 224
    object sdsConsultaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsConsultaPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object sdsConsultaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsConsultaDTENTREGA_PED: TDateField
      FieldName = 'DTENTREGA_PED'
    end
    object sdsConsultaNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object sdsConsultaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsConsultaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsConsultaNOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object sdsConsultaNOME_FILIAL_INT: TStringField
      FieldName = 'NOME_FILIAL_INT'
      Size = 30
    end
    object sdsConsultaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object sdsConsultaNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object sdsConsultaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsConsultaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsConsultaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsConsultaDTENTREGA_ITEM: TDateField
      FieldName = 'DTENTREGA_ITEM'
    end
    object sdsConsultaQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsConsultaQTD_CANCELADO: TFloatField
      FieldName = 'QTD_CANCELADO'
    end
    object sdsConsultaVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsConsultaVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object sdsConsultaVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsConsultaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object sdsConsultaVLR_UNITARIO_ATELIER: TFloatField
      FieldName = 'VLR_UNITARIO_ATELIER'
    end
    object sdsConsultaVLR_TOTAL_ATELIER: TFloatField
      FieldName = 'VLR_TOTAL_ATELIER'
    end
    object sdsConsultaID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object sdsConsultaDT_ENVIO_ATELIER: TDateField
      FieldName = 'DT_ENVIO_ATELIER'
    end
    object sdsConsultaDT_RETORNO_ATELIER: TDateField
      FieldName = 'DT_RETORNO_ATELIER'
    end
    object sdsConsultaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsConsultaNOME_ATELIER: TStringField
      FieldName = 'NOME_ATELIER'
      Size = 60
    end
    object sdsConsultaVLR_ADIANTAMENTO: TFloatField
      FieldName = 'VLR_ADIANTAMENTO'
    end
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Left = 368
    Top = 224
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 432
    Top = 224
    object cdsConsultaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsConsultaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsConsultaDTENTREGA_PED: TDateField
      FieldName = 'DTENTREGA_PED'
    end
    object cdsConsultaNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsConsultaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsConsultaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsConsultaNOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object cdsConsultaNOME_FILIAL_INT: TStringField
      FieldName = 'NOME_FILIAL_INT'
      Size = 30
    end
    object cdsConsultaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsConsultaNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsConsultaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsConsultaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsConsultaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsConsultaDTENTREGA_ITEM: TDateField
      FieldName = 'DTENTREGA_ITEM'
    end
    object cdsConsultaQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsConsultaQTD_CANCELADO: TFloatField
      FieldName = 'QTD_CANCELADO'
    end
    object cdsConsultaVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.000##'
    end
    object cdsConsultaVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object cdsConsultaVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsConsultaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsConsultaVLR_UNITARIO_ATELIER: TFloatField
      FieldName = 'VLR_UNITARIO_ATELIER'
      DisplayFormat = '0.000##'
    end
    object cdsConsultaVLR_TOTAL_ATELIER: TFloatField
      FieldName = 'VLR_TOTAL_ATELIER'
      DisplayFormat = '0.00'
    end
    object cdsConsultaID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object cdsConsultaDT_ENVIO_ATELIER: TDateField
      FieldName = 'DT_ENVIO_ATELIER'
    end
    object cdsConsultaDT_RETORNO_ATELIER: TDateField
      FieldName = 'DT_RETORNO_ATELIER'
    end
    object cdsConsultaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsultaNOME_ATELIER: TStringField
      FieldName = 'NOME_ATELIER'
      Size = 60
    end
    object cdsConsultaVLR_ADIANTAMENTO: TFloatField
      FieldName = 'VLR_ADIANTAMENTO'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 504
    Top = 224
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME'#13#10'FROM FILIAL'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 328
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
    Left = 368
    Top = 328
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 432
    Top = 328
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
    Left = 488
    Top = 328
  end
  object sdsAtelier: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PESSOA'#13#10'WHERE TP_ATELIER = '#39'S'#39#13#10'   AND INATIVO = ' +
      #39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 432
    object sdsAtelierCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsAtelierNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsAtelierFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object sdsAtelierATELIER_CONTA_ID: TIntegerField
      FieldName = 'ATELIER_CONTA_ID'
    end
  end
  object dspAtelier: TDataSetProvider
    DataSet = sdsAtelier
    Left = 328
    Top = 432
  end
  object cdsAtelier: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspAtelier'
    Left = 368
    Top = 432
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
    object cdsAtelierATELIER_CONTA_ID: TIntegerField
      FieldName = 'ATELIER_CONTA_ID'
    end
  end
  object dsAtelier: TDataSource
    DataSet = cdsAtelier
    Left = 408
    Top = 432
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 528
    Top = 64
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
  end
  object sdsCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PESSOA'#13#10'WHERE TP_CLIENTE = '#39'S'#39#13#10'   AND INATIVO = ' +
      #39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 504
    Top = 424
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
    Left = 536
    Top = 424
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCliente'
    Left = 576
    Top = 424
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
    Left = 616
    Top = 424
  end
  object sdsPedido_Item: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PEDIDO_ITEM'#13#10'WHERE ID = :ID'#13#10'      AND ITEM = :IT' +
      'EM'
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
    Left = 536
    Top = 160
    object sdsPedido_ItemID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPedido_ItemITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsPedido_ItemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsPedido_ItemID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsPedido_ItemTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
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
    object sdsPedido_ItemVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object sdsPedido_ItemCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_ItemDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object sdsPedido_ItemFATURADO: TStringField
      FieldName = 'FATURADO'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_ItemDTFATURADO: TDateField
      FieldName = 'DTFATURADO'
    end
    object sdsPedido_ItemCOD_PRODUTO_CLIENTE: TStringField
      FieldName = 'COD_PRODUTO_CLIENTE'
      Size = 15
    end
    object sdsPedido_ItemTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object sdsPedido_ItemUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object sdsPedido_ItemNUMOS: TStringField
      FieldName = 'NUMOS'
      Size = 30
    end
    object sdsPedido_ItemPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object sdsPedido_ItemVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object sdsPedido_ItemBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object sdsPedido_ItemVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object sdsPedido_ItemBASE_ICMSTRANSF: TFloatField
      FieldName = 'BASE_ICMSTRANSF'
    end
    object sdsPedido_ItemPERC_TRANSF: TFloatField
      FieldName = 'PERC_TRANSF'
    end
    object sdsPedido_ItemVLR_TRANSF: TFloatField
      FieldName = 'VLR_TRANSF'
    end
    object sdsPedido_ItemVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object sdsPedido_ItemBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
    end
    object sdsPedido_ItemVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
    end
    object sdsPedido_ItemPERC_ICMSSIMPLES: TFloatField
      FieldName = 'PERC_ICMSSIMPLES'
    end
    object sdsPedido_ItemBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
    end
    object sdsPedido_ItemVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
    end
    object sdsPedido_ItemVLR_DESCONTORATEIO: TFloatField
      FieldName = 'VLR_DESCONTORATEIO'
    end
    object sdsPedido_ItemID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object sdsPedido_ItemID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object sdsPedido_ItemID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object sdsPedido_ItemPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object sdsPedido_ItemPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object sdsPedido_ItemREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsPedido_ItemNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object sdsPedido_ItemOBS_COMPLEMENTAR: TStringField
      FieldName = 'OBS_COMPLEMENTAR'
      Size = 250
    end
    object sdsPedido_ItemCALCULARICMSSOBREIPI: TStringField
      FieldName = 'CALCULARICMSSOBREIPI'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_ItemVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsPedido_ItemID_CONFIG_CFOP: TIntegerField
      FieldName = 'ID_CONFIG_CFOP'
    end
    object sdsPedido_ItemVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsPedido_ItemQTD_AFATURAR: TFloatField
      FieldName = 'QTD_AFATURAR'
    end
    object sdsPedido_ItemID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
    object sdsPedido_ItemOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsPedido_ItemPERC_TRIBICMS: TFloatField
      FieldName = 'PERC_TRIBICMS'
    end
    object sdsPedido_ItemID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object sdsPedido_ItemVLR_UNITARIO_ATELIER: TFloatField
      FieldName = 'VLR_UNITARIO_ATELIER'
    end
    object sdsPedido_ItemVLR_TOTAL_ATELIER: TFloatField
      FieldName = 'VLR_TOTAL_ATELIER'
    end
    object sdsPedido_ItemDT_ENVIO_ATELIER: TDateField
      FieldName = 'DT_ENVIO_ATELIER'
    end
    object sdsPedido_ItemDT_RETORNO_ATELIER: TDateField
      FieldName = 'DT_RETORNO_ATELIER'
    end
  end
  object dspPedido_Item: TDataSetProvider
    DataSet = sdsPedido_Item
    Left = 616
    Top = 160
  end
  object cdsPedido_Item: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido_Item'
    Left = 680
    Top = 160
    object cdsPedido_ItemID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedido_ItemITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPedido_ItemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsPedido_ItemID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsPedido_ItemTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
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
    object cdsPedido_ItemVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object cdsPedido_ItemCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ItemDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsPedido_ItemFATURADO: TStringField
      FieldName = 'FATURADO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ItemDTFATURADO: TDateField
      FieldName = 'DTFATURADO'
    end
    object cdsPedido_ItemCOD_PRODUTO_CLIENTE: TStringField
      FieldName = 'COD_PRODUTO_CLIENTE'
      Size = 15
    end
    object cdsPedido_ItemTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object cdsPedido_ItemUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsPedido_ItemNUMOS: TStringField
      FieldName = 'NUMOS'
      Size = 30
    end
    object cdsPedido_ItemPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object cdsPedido_ItemVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ItemBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ItemVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ItemBASE_ICMSTRANSF: TFloatField
      FieldName = 'BASE_ICMSTRANSF'
    end
    object cdsPedido_ItemPERC_TRANSF: TFloatField
      FieldName = 'PERC_TRANSF'
    end
    object cdsPedido_ItemVLR_TRANSF: TFloatField
      FieldName = 'VLR_TRANSF'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ItemVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ItemBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
    end
    object cdsPedido_ItemVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ItemPERC_ICMSSIMPLES: TFloatField
      FieldName = 'PERC_ICMSSIMPLES'
    end
    object cdsPedido_ItemBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ItemVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ItemVLR_DESCONTORATEIO: TFloatField
      FieldName = 'VLR_DESCONTORATEIO'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ItemID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsPedido_ItemID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsPedido_ItemID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object cdsPedido_ItemPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsPedido_ItemPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsPedido_ItemREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsPedido_ItemNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsPedido_ItemOBS_COMPLEMENTAR: TStringField
      FieldName = 'OBS_COMPLEMENTAR'
      Size = 250
    end
    object cdsPedido_ItemCALCULARICMSSOBREIPI: TStringField
      FieldName = 'CALCULARICMSSOBREIPI'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ItemVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ItemID_CONFIG_CFOP: TIntegerField
      FieldName = 'ID_CONFIG_CFOP'
    end
    object cdsPedido_ItemVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ItemQTD_AFATURAR: TFloatField
      FieldName = 'QTD_AFATURAR'
    end
    object cdsPedido_ItemID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
    object cdsPedido_ItemOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPedido_ItemPERC_TRIBICMS: TFloatField
      FieldName = 'PERC_TRIBICMS'
    end
    object cdsPedido_ItemID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object cdsPedido_ItemVLR_UNITARIO_ATELIER: TFloatField
      FieldName = 'VLR_UNITARIO_ATELIER'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ItemVLR_TOTAL_ATELIER: TFloatField
      FieldName = 'VLR_TOTAL_ATELIER'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ItemDT_ENVIO_ATELIER: TDateField
      FieldName = 'DT_ENVIO_ATELIER'
    end
    object cdsPedido_ItemDT_RETORNO_ATELIER: TDateField
      FieldName = 'DT_RETORNO_ATELIER'
    end
  end
  object dsPedido_Item: TDataSource
    DataSet = cdsPedido_Item
    Left = 752
    Top = 160
  end
  object sdsAtelier_Mov: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT MOV.*, ATE.NOME NOME_ATELIER, CT.NOME NOME_CONTA'#13#10'FROM AT' +
      'ELIER_MOV MOV'#13#10'INNER JOIN PESSOA ATE'#13#10'ON MOV.ID_ATELIER = ATE.CO' +
      'DIGO'#13#10'LEFT JOIN CONTAS CT'#13#10'ON MOV.ID_CONTA = CT.ID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 24
    object sdsAtelier_MovID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsAtelier_MovDT_MOV: TDateField
      FieldName = 'DT_MOV'
    end
    object sdsAtelier_MovDT_REFERENCIA: TDateField
      FieldName = 'DT_REFERENCIA'
    end
    object sdsAtelier_MovTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 3
    end
    object sdsAtelier_MovVLR_MOV: TFloatField
      FieldName = 'VLR_MOV'
    end
    object sdsAtelier_MovID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object sdsAtelier_MovOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsAtelier_MovID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object sdsAtelier_MovID_FINANCEIRO: TIntegerField
      FieldName = 'ID_FINANCEIRO'
    end
    object sdsAtelier_MovFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsAtelier_MovNOME_ATELIER: TStringField
      FieldName = 'NOME_ATELIER'
      ProviderFlags = []
      Size = 60
    end
    object sdsAtelier_MovNOME_CONTA: TStringField
      FieldName = 'NOME_CONTA'
      ProviderFlags = []
      Size = 30
    end
  end
  object dspAtelier_Mov: TDataSetProvider
    DataSet = sdsAtelier_Mov
    Left = 168
    Top = 24
  end
  object cdsAtelier_Mov: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspAtelier_Mov'
    BeforePost = cdsAtelier_MovBeforePost
    Left = 232
    Top = 24
    object cdsAtelier_MovID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
      Required = True
    end
    object cdsAtelier_MovDT_MOV: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data Lan'#231'amento'
      FieldName = 'DT_MOV'
    end
    object cdsAtelier_MovDT_REFERENCIA: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data Refer'#234'ncia'
      FieldName = 'DT_REFERENCIA'
    end
    object cdsAtelier_MovTIPO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      FixedChar = True
      Size = 3
    end
    object cdsAtelier_MovVLR_MOV: TFloatField
      DisplayLabel = 'Vlr. Movimento'
      FieldName = 'VLR_MOV'
      DisplayFormat = '0.00'
    end
    object cdsAtelier_MovID_ATELIER: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Atelier'
      FieldName = 'ID_ATELIER'
    end
    object cdsAtelier_MovOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsAtelier_MovID_CONTA: TIntegerField
      DisplayLabel = 'ID Conta'
      FieldName = 'ID_CONTA'
    end
    object cdsAtelier_MovID_FINANCEIRO: TIntegerField
      DisplayLabel = 'ID Financeiro'
      FieldName = 'ID_FINANCEIRO'
    end
    object cdsAtelier_MovFILIAL: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Filial'
      FieldName = 'FILIAL'
    end
    object cdsAtelier_MovNOME_CONTA: TStringField
      DisplayLabel = 'Nome Conta'
      FieldName = 'NOME_CONTA'
      ProviderFlags = []
      Size = 30
    end
    object cdsAtelier_MovNOME_ATELIER: TStringField
      DisplayLabel = 'Nome Atelier'
      FieldName = 'NOME_ATELIER'
      ProviderFlags = []
      Size = 60
    end
  end
  object dsAtelier_Mov: TDataSource
    DataSet = cdsAtelier_Mov
    Left = 304
    Top = 24
  end
  object sdsContas: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * '#13#10'FROM CONTAS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 616
    Top = 288
    object sdsContasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsContasNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dspContas: TDataSetProvider
    DataSet = sdsContas
    Left = 648
    Top = 288
  end
  object cdsContas: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspContas'
    Left = 688
    Top = 288
    object cdsContasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsContasNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsContas: TDataSource
    DataSet = cdsContas
    Left = 728
    Top = 288
  end
  object sdsFinanceiro: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FINANCEIRO'#13#10'WHERE ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 616
    Top = 344
    object sdsFinanceiroID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFinanceiroTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object sdsFinanceiroID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object sdsFinanceiroDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object sdsFinanceiroID_MOVDUPLICATA: TIntegerField
      FieldName = 'ID_MOVDUPLICATA'
    end
    object sdsFinanceiroITEM_MOVDUPLICATA: TIntegerField
      FieldName = 'ITEM_MOVDUPLICATA'
    end
    object sdsFinanceiroVLR_MOVIMENTO: TFloatField
      FieldName = 'VLR_MOVIMENTO'
    end
    object sdsFinanceiroID_HISTORICO: TIntegerField
      FieldName = 'ID_HISTORICO'
    end
    object sdsFinanceiroHISTORICO_COMPL: TStringField
      FieldName = 'HISTORICO_COMPL'
      Size = 100
    end
    object sdsFinanceiroID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object sdsFinanceiroFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsFinanceiroUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsFinanceiroDTUSUARIO: TDateField
      FieldName = 'DTUSUARIO'
    end
    object sdsFinanceiroHRUSUARIO: TTimeField
      FieldName = 'HRUSUARIO'
    end
    object sdsFinanceiroID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object sdsFinanceiroVLR_SAIDA: TFloatField
      FieldName = 'VLR_SAIDA'
    end
    object sdsFinanceiroVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object sdsFinanceiroID_EXTCOMISSAO: TIntegerField
      FieldName = 'ID_EXTCOMISSAO'
    end
    object sdsFinanceiroID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object sdsFinanceiroID_NOTA_SERVICO: TIntegerField
      FieldName = 'ID_NOTA_SERVICO'
    end
    object sdsFinanceiroID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
    end
    object sdsFinanceiroID_CHEQUE: TIntegerField
      FieldName = 'ID_CHEQUE'
    end
    object sdsFinanceiroID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object sdsFinanceiroID_TERMINAL: TIntegerField
      FieldName = 'ID_TERMINAL'
    end
  end
  object dspFinanceiro: TDataSetProvider
    DataSet = sdsFinanceiro
    Left = 648
    Top = 344
  end
  object cdsFinanceiro: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspFinanceiro'
    Left = 688
    Top = 344
    object cdsFinanceiroID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFinanceiroTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object cdsFinanceiroID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsFinanceiroDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object cdsFinanceiroID_MOVDUPLICATA: TIntegerField
      FieldName = 'ID_MOVDUPLICATA'
    end
    object cdsFinanceiroITEM_MOVDUPLICATA: TIntegerField
      FieldName = 'ITEM_MOVDUPLICATA'
    end
    object cdsFinanceiroVLR_MOVIMENTO: TFloatField
      FieldName = 'VLR_MOVIMENTO'
      DisplayFormat = '0.00'
    end
    object cdsFinanceiroID_HISTORICO: TIntegerField
      FieldName = 'ID_HISTORICO'
    end
    object cdsFinanceiroHISTORICO_COMPL: TStringField
      FieldName = 'HISTORICO_COMPL'
      Size = 100
    end
    object cdsFinanceiroID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsFinanceiroFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsFinanceiroUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsFinanceiroDTUSUARIO: TDateField
      FieldName = 'DTUSUARIO'
    end
    object cdsFinanceiroHRUSUARIO: TTimeField
      FieldName = 'HRUSUARIO'
    end
    object cdsFinanceiroID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object cdsFinanceiroVLR_SAIDA: TFloatField
      FieldName = 'VLR_SAIDA'
    end
    object cdsFinanceiroVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object cdsFinanceiroID_EXTCOMISSAO: TIntegerField
      FieldName = 'ID_EXTCOMISSAO'
    end
    object cdsFinanceiroID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object cdsFinanceiroID_NOTA_SERVICO: TIntegerField
      FieldName = 'ID_NOTA_SERVICO'
    end
    object cdsFinanceiroID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
    end
    object cdsFinanceiroID_CHEQUE: TIntegerField
      FieldName = 'ID_CHEQUE'
    end
    object cdsFinanceiroID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsFinanceiroID_TERMINAL: TIntegerField
      FieldName = 'ID_TERMINAL'
    end
  end
  object dsFinanceiro: TDataSource
    DataSet = cdsFinanceiro
    Left = 728
    Top = 344
  end
end
