object DMExcluirPed: TDMExcluirPed
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 322
  Top = 238
  Height = 321
  Width = 763
  object sdsConsulta_Ped: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PED.id, PED.id_cliente, PED.num_pedido,  PED.filial, PED.' +
      'pedido_cliente,'#13#10' PED.dtemissao, PED.dtentrega, PED.vlr_total, P' +
      'ED.vlr_itens, PED.faturado,'#13#10' PED.qtd, PED.cancelado, PED.ID_VEN' +
      'DEDOR, PED.ID_CFOP, CLI.NOME NOMECLIENTE_CAD,'#13#10' PED.TIPO_REG, PE' +
      'D.PERC_COMISSAO, PED.NOME_CLIENTE, CLI.FANTASIA, CLI.UF,'#13#10' PED.N' +
      'OME_CONSUMIDOR, PED.VLR_IPI, PED.USUARIO, PED.VLR_DUPLICATA,'#13#10' P' +
      'ED.SELECIONADO, VEND.nome NOME_VENDEDOR'#13#10'  FROM PEDIDO PED'#13#10'  LE' +
      'FT JOIN PESSOA CLI ON PED.ID_CLIENTE = CLI.CODIGO'#13#10'  LEFT JOIN P' +
      'ESSOA VEND  ON PED.id_vendedor = VEND.codigo'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 10
  end
  object dspConsulta_Ped: TDataSetProvider
    DataSet = sdsConsulta_Ped
    Left = 80
    Top = 10
  end
  object cdsConsulta_Ped: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspConsulta_Ped'
    Left = 120
    Top = 10
    object cdsConsulta_PedID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsulta_PedID_CLIENTE: TIntegerField
      DisplayLabel = 'ID Cliente'
      FieldName = 'ID_CLIENTE'
    end
    object cdsConsulta_PedNUM_PEDIDO: TIntegerField
      DisplayLabel = 'N'#186' Ped. Interno'
      FieldName = 'NUM_PEDIDO'
    end
    object cdsConsulta_PedFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsConsulta_PedPEDIDO_CLIENTE: TStringField
      DisplayLabel = 'Ped. Cliente (OC)'
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsConsulta_PedDTEMISSAO: TDateField
      DisplayLabel = 'Dt.Emiss'#227'o'
      FieldName = 'DTEMISSAO'
    end
    object cdsConsulta_PedDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsConsulta_PedVLR_TOTAL: TFloatField
      DisplayLabel = 'Vlr. Total'
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsConsulta_PedVLR_ITENS: TFloatField
      DisplayLabel = 'Vlr. Produtos'
      FieldName = 'VLR_ITENS'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsConsulta_PedFATURADO: TStringField
      FieldName = 'FATURADO'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_PedQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsConsulta_PedCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_PedID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsConsulta_PedID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsConsulta_PedNOMECLIENTE_CAD: TStringField
      FieldName = 'NOMECLIENTE_CAD'
      Size = 60
    end
    object cdsConsulta_PedTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_PedPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsConsulta_PedNOME_CLIENTE: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsConsulta_PedFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsConsulta_PedUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsConsulta_PedNOME_CONSUMIDOR: TStringField
      DisplayLabel = 'Nome Consumidor'
      FieldName = 'NOME_CONSUMIDOR'
      Size = 30
    end
    object cdsConsulta_PedVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsConsulta_PedUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsConsulta_PedVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsConsulta_PedSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_PedNOME_VENDEDOR: TStringField
      DisplayLabel = 'Nome Vendedor'
      FieldName = 'NOME_VENDEDOR'
      Size = 60
    end
  end
  object dsConsulta_Ped: TDataSource
    DataSet = cdsConsulta_Ped
    Left = 160
    Top = 10
  end
  object sdsConsulta_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT I.*'#13#10'FROM PEDIDO_ITEM I'#13#10'WHERE I.ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 72
  end
  object dspConsulta_Itens: TDataSetProvider
    DataSet = sdsConsulta_Itens
    Left = 88
    Top = 72
  end
  object cdsConsulta_Itens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta_Itens'
    Left = 128
    Top = 72
    object cdsConsulta_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsulta_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsConsulta_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsConsulta_ItensID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object cdsConsulta_ItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsConsulta_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsConsulta_ItensQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsConsulta_ItensQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsConsulta_ItensQTD_CANCELADO: TFloatField
      FieldName = 'QTD_CANCELADO'
    end
    object cdsConsulta_ItensVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object cdsConsulta_ItensCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_ItensDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsConsulta_ItensFATURADO: TStringField
      FieldName = 'FATURADO'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_ItensDTFATURADO: TDateField
      FieldName = 'DTFATURADO'
    end
    object cdsConsulta_ItensCOD_PRODUTO_CLIENTE: TStringField
      FieldName = 'COD_PRODUTO_CLIENTE'
      Size = 15
    end
    object cdsConsulta_ItensTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object cdsConsulta_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsConsulta_ItensNUMOS: TStringField
      FieldName = 'NUMOS'
      Size = 30
    end
    object cdsConsulta_ItensPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object cdsConsulta_ItensVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
      DisplayFormat = '0.00'
    end
    object cdsConsulta_ItensBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      DisplayFormat = '0.00'
    end
    object cdsConsulta_ItensVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      DisplayFormat = '0.00'
    end
    object cdsConsulta_ItensBASE_ICMSTRANSF: TFloatField
      FieldName = 'BASE_ICMSTRANSF'
      DisplayFormat = '0.00'
    end
    object cdsConsulta_ItensPERC_TRANSF: TFloatField
      FieldName = 'PERC_TRANSF'
    end
    object cdsConsulta_ItensVLR_TRANSF: TFloatField
      FieldName = 'VLR_TRANSF'
      DisplayFormat = '0.00'
    end
    object cdsConsulta_ItensVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      DisplayFormat = '0.00'
    end
    object cdsConsulta_ItensBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
    end
    object cdsConsulta_ItensVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
      DisplayFormat = '0.00'
    end
    object cdsConsulta_ItensPERC_ICMSSIMPLES: TFloatField
      FieldName = 'PERC_ICMSSIMPLES'
    end
    object cdsConsulta_ItensBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
    end
    object cdsConsulta_ItensVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '0.00'
    end
    object cdsConsulta_ItensVLR_DESCONTORATEIO: TFloatField
      FieldName = 'VLR_DESCONTORATEIO'
      DisplayFormat = '0.00'
    end
    object cdsConsulta_ItensID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsConsulta_ItensID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsConsulta_ItensID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object cdsConsulta_ItensPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsConsulta_ItensPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsConsulta_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsConsulta_ItensNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsConsulta_ItensOBS_COMPLEMENTAR: TStringField
      FieldName = 'OBS_COMPLEMENTAR'
      Size = 250
    end
    object cdsConsulta_ItensCALCULARICMSSOBREIPI: TStringField
      FieldName = 'CALCULARICMSSOBREIPI'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_ItensVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.00###'
    end
    object cdsConsulta_ItensID_CONFIG_CFOP: TIntegerField
      FieldName = 'ID_CONFIG_CFOP'
    end
    object cdsConsulta_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsConsulta_ItensQTD_AFATURAR: TFloatField
      FieldName = 'QTD_AFATURAR'
    end
    object cdsConsulta_ItensID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
    object cdsConsulta_ItensOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsulta_ItensPERC_TRIBICMS: TFloatField
      FieldName = 'PERC_TRIBICMS'
    end
    object cdsConsulta_ItensID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object cdsConsulta_ItensVLR_UNITARIO_ATELIER: TFloatField
      FieldName = 'VLR_UNITARIO_ATELIER'
    end
    object cdsConsulta_ItensVLR_TOTAL_ATELIER: TFloatField
      FieldName = 'VLR_TOTAL_ATELIER'
    end
    object cdsConsulta_ItensDT_ENVIO_ATELIER: TDateField
      FieldName = 'DT_ENVIO_ATELIER'
    end
    object cdsConsulta_ItensDT_RETORNO_ATELIER: TDateField
      FieldName = 'DT_RETORNO_ATELIER'
    end
    object cdsConsulta_ItensVLR_PAGTO_ATELIER: TFloatField
      FieldName = 'VLR_PAGTO_ATELIER'
    end
    object cdsConsulta_ItensDT_PAGTO_ATELIER: TDateField
      FieldName = 'DT_PAGTO_ATELIER'
    end
    object cdsConsulta_ItensAPROVADO_ORC: TStringField
      FieldName = 'APROVADO_ORC'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_ItensMOTIVO_NAO_APROV: TMemoField
      FieldName = 'MOTIVO_NAO_APROV'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsulta_ItensDTAPROVADO_NAO: TDateField
      FieldName = 'DTAPROVADO_NAO'
    end
    object cdsConsulta_ItensID_ORCAMENTO: TIntegerField
      FieldName = 'ID_ORCAMENTO'
    end
    object cdsConsulta_ItensITEM_ORCAMENTO: TIntegerField
      FieldName = 'ITEM_ORCAMENTO'
    end
    object cdsConsulta_ItensQTD_LIBERADA: TFloatField
      FieldName = 'QTD_LIBERADA'
    end
    object cdsConsulta_ItensQTD_PRODUZIDA: TFloatField
      FieldName = 'QTD_PRODUZIDA'
    end
    object cdsConsulta_ItensNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object cdsConsulta_ItensNUM_TALAO: TStringField
      FieldName = 'NUM_TALAO'
      Size = 15
    end
    object cdsConsulta_ItensGERAR_LOTE: TStringField
      FieldName = 'GERAR_LOTE'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_ItensCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object cdsConsulta_ItensDTPRODUCAO: TDateField
      FieldName = 'DTPRODUCAO'
    end
    object cdsConsulta_ItensID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsConsulta_ItensTIPO_ORCAMENTO: TStringField
      FieldName = 'TIPO_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_ItensEND_FOTO: TStringField
      FieldName = 'END_FOTO'
      Size = 200
    end
    object cdsConsulta_ItensITEM_CLIENTE: TIntegerField
      FieldName = 'ITEM_CLIENTE'
    end
    object cdsConsulta_ItensQTD_PECA: TIntegerField
      FieldName = 'QTD_PECA'
    end
    object cdsConsulta_ItensGRAVACAO_COM_ERRO: TStringField
      FieldName = 'GRAVACAO_COM_ERRO'
      Size = 3
    end
    object cdsConsulta_ItensQTD_FUT: TFloatField
      FieldName = 'QTD_FUT'
    end
    object cdsConsulta_ItensITEM_COMBINACAO: TIntegerField
      FieldName = 'ITEM_COMBINACAO'
    end
    object cdsConsulta_ItensTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_ItensID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object cdsConsulta_ItensGERAR_ESTOQUE: TStringField
      FieldName = 'GERAR_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_ItensITEM_ORIGINAL: TIntegerField
      FieldName = 'ITEM_ORIGINAL'
    end
    object cdsConsulta_ItensPERC_DIFERIMENTO: TFloatField
      FieldName = 'PERC_DIFERIMENTO'
    end
    object cdsConsulta_ItensVLR_ICMSDIFERIDO: TFloatField
      FieldName = 'VLR_ICMSDIFERIDO'
    end
    object cdsConsulta_ItensTIPO_ACESSORIO: TStringField
      FieldName = 'TIPO_ACESSORIO'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_ItensCOMPRIMENTO_VOLUME: TFloatField
      FieldName = 'COMPRIMENTO_VOLUME'
    end
    object cdsConsulta_ItensQTD_LANCAR_ESTOQUE: TFloatField
      FieldName = 'QTD_LANCAR_ESTOQUE'
    end
    object cdsConsulta_ItensPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsConsulta_ItensNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object cdsConsulta_ItensDTEXPEDICAO: TDateField
      FieldName = 'DTEXPEDICAO'
    end
    object cdsConsulta_ItensDTFATURA: TDateField
      FieldName = 'DTFATURA'
    end
    object cdsConsulta_ItensPERC_ICMS_FCP: TFloatField
      FieldName = 'PERC_ICMS_FCP'
    end
    object cdsConsulta_ItensPERC_ICMS_UF_DEST: TFloatField
      FieldName = 'PERC_ICMS_UF_DEST'
    end
    object cdsConsulta_ItensPERC_ICMS_PARTILHA: TFloatField
      FieldName = 'PERC_ICMS_PARTILHA'
    end
    object cdsConsulta_ItensVLR_ICMS_FCP: TFloatField
      FieldName = 'VLR_ICMS_FCP'
      DisplayFormat = '0.00'
    end
    object cdsConsulta_ItensVLR_ICMS_UF_DEST: TFloatField
      FieldName = 'VLR_ICMS_UF_DEST'
      DisplayFormat = '0.00'
    end
    object cdsConsulta_ItensVLR_ICMS_UF_REMET: TFloatField
      FieldName = 'VLR_ICMS_UF_REMET'
      DisplayFormat = '0.00'
    end
    object cdsConsulta_ItensPERC_ICMS_INTER: TFloatField
      FieldName = 'PERC_ICMS_INTER'
    end
    object cdsConsulta_ItensCOPIAR_SELECIONADO: TStringField
      FieldName = 'COPIAR_SELECIONADO'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_ItensVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
      DisplayFormat = '0.00'
    end
    object cdsConsulta_ItensGERAR_DUPLICATA: TStringField
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_ItensSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_ItensQTD_CONFERIDO: TFloatField
      FieldName = 'QTD_CONFERIDO'
    end
    object cdsConsulta_ItensDTCONFERENCIA: TDateField
      FieldName = 'DTCONFERENCIA'
    end
    object cdsConsulta_ItensHRCONFERENCIA: TTimeField
      FieldName = 'HRCONFERENCIA'
    end
    object cdsConsulta_ItensUSUARIO_CONF: TStringField
      FieldName = 'USUARIO_CONF'
      Size = 15
    end
    object cdsConsulta_ItensVLR_ICMSFRETE: TFloatField
      FieldName = 'VLR_ICMSFRETE'
      DisplayFormat = '0.00'
    end
    object cdsConsulta_ItensQTD_SOBRA_OC: TFloatField
      FieldName = 'QTD_SOBRA_OC'
    end
    object cdsConsulta_ItensTIPO_SERVICO: TStringField
      FieldName = 'TIPO_SERVICO'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_ItensID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsConsulta_ItensNOME_SERVICO_INT: TStringField
      FieldName = 'NOME_SERVICO_INT'
      Size = 150
    end
    object cdsConsulta_ItensPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsConsulta_ItensPERC_MARGEM: TFloatField
      FieldName = 'PERC_MARGEM'
    end
    object cdsConsulta_ItensPERC_MARGEM2: TFloatField
      FieldName = 'PERC_MARGEM2'
    end
    object cdsConsulta_ItensID_OS_SERV: TIntegerField
      FieldName = 'ID_OS_SERV'
    end
    object cdsConsulta_ItensNUM_OS_SERV: TIntegerField
      FieldName = 'NUM_OS_SERV'
    end
    object cdsConsulta_ItensID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object cdsConsulta_ItensNUM_NOTA_ENT: TIntegerField
      FieldName = 'NUM_NOTA_ENT'
    end
    object cdsConsulta_ItensSERIE_NOTA_ENT: TStringField
      FieldName = 'SERIE_NOTA_ENT'
      Size = 3
    end
    object cdsConsulta_ItensENCERADO: TStringField
      FieldName = 'ENCERADO'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_ItensUNIDADE_PROD: TStringField
      FieldName = 'UNIDADE_PROD'
      Size = 6
    end
    object cdsConsulta_ItensCONV_UNIDADE: TFloatField
      FieldName = 'CONV_UNIDADE'
    end
    object cdsConsulta_ItensTALAO_IMPRESSO: TStringField
      FieldName = 'TALAO_IMPRESSO'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_ItensOBS_ETIQUETA: TStringField
      FieldName = 'OBS_ETIQUETA'
      Size = 30
    end
    object cdsConsulta_ItensQTD_CAIXA: TIntegerField
      FieldName = 'QTD_CAIXA'
    end
    object cdsConsulta_ItensCOD_COR_CLIENTE: TStringField
      FieldName = 'COD_COR_CLIENTE'
      Size = 10
    end
    object cdsConsulta_ItensNOME_COR_CLIENTE: TStringField
      FieldName = 'NOME_COR_CLIENTE'
      Size = 100
    end
    object cdsConsulta_ItensTAMANHO_CLIENTE: TStringField
      FieldName = 'TAMANHO_CLIENTE'
      Size = 10
    end
  end
  object dsConsulta_Itens: TDataSource
    DataSet = cdsConsulta_Itens
    Left = 160
    Top = 72
  end
end
