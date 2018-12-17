object DMConferencia: TDMConferencia
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 134
  Top = 49
  Height = 614
  Width = 1185
  object sdsPedido_Item: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ITE.ID, ITE.ITEM, ITE.id_produto, ITE.referencia, ITE.nom' +
      'eproduto, ITE.qtd, ITE.qtd_faturado, '#13#10'ITE.qtd_restante, ITE.qtd' +
      '_liberada, QTD_CONFERIDO, DTCONFERENCIA, '#13#10'HRCONFERENCIA, USUARI' +
      'O_CONF, ITE.ID_COR, UNIDADE, TAMANHO, VLR_UNITARIO'#13#10'FROM PEDIDO_' +
      'ITEM ITE'#13#10'WHERE ITE.ID = :ID'#13#10'  AND ITE.cancelado = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 376
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
    object sdsPedido_ItemREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsPedido_ItemNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
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
    object sdsPedido_ItemQTD_LIBERADA: TFloatField
      FieldName = 'QTD_LIBERADA'
    end
    object sdsPedido_ItemQTD_CONFERIDO: TFloatField
      FieldName = 'QTD_CONFERIDO'
    end
    object sdsPedido_ItemDTCONFERENCIA: TDateField
      FieldName = 'DTCONFERENCIA'
    end
    object sdsPedido_ItemHRCONFERENCIA: TTimeField
      FieldName = 'HRCONFERENCIA'
    end
    object sdsPedido_ItemUSUARIO_CONF: TStringField
      FieldName = 'USUARIO_CONF'
      Size = 15
    end
    object sdsPedido_ItemID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object sdsPedido_ItemUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsPedido_ItemTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsPedido_ItemVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
  end
  object dspPedido_Item: TDataSetProvider
    DataSet = sdsPedido_Item
    Left = 88
    Top = 376
  end
  object cdsPedido_Item: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspPedido_Item'
    OnCalcFields = cdsPedido_ItemCalcFields
    Left = 136
    Top = 376
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
    object cdsPedido_ItemREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsPedido_ItemNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
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
    object cdsPedido_ItemQTD_LIBERADA: TFloatField
      FieldName = 'QTD_LIBERADA'
    end
    object cdsPedido_ItemQTD_CONFERIDO: TFloatField
      FieldName = 'QTD_CONFERIDO'
    end
    object cdsPedido_ItemDTCONFERENCIA: TDateField
      FieldName = 'DTCONFERENCIA'
    end
    object cdsPedido_ItemHRCONFERENCIA: TTimeField
      FieldName = 'HRCONFERENCIA'
    end
    object cdsPedido_ItemUSUARIO_CONF: TStringField
      FieldName = 'USUARIO_CONF'
      Size = 15
    end
    object cdsPedido_ItemID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object cdsPedido_ItemUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsPedido_ItemTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsPedido_ItemVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsPedido_ItemclNome_Cor: TStringField
      FieldKind = fkCalculated
      FieldName = 'clNome_Cor'
      ProviderFlags = []
      Size = 60
      Calculated = True
    end
  end
  object dsPedido_Item: TDataSource
    DataSet = cdsPedido_Item
    Left = 184
    Top = 376
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME'#13#10'FROM FILIAL'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 504
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
    Left = 136
    Top = 504
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 176
    Top = 504
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
    Left = 216
    Top = 504
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
    Left = 688
    Top = 368
  end
  object mPedidoAux: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'ID_Pedido'
    Params = <>
    Left = 688
    Top = 472
    Data = {
      2C0000009619E0BD0100000018000000010000000000030000002C000949445F
      50656469646F04000100000000000000}
    object mPedidoAuxID_Pedido: TIntegerField
      FieldName = 'ID_Pedido'
    end
  end
  object sdsPedido: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.ID, P.num_pedido, P.pedido_cliente, P.dtemissao, P.conf' +
      'erido,'#13#10'P.id_cliente, P.faturado, CLI.nome NOME_CLIENTE, P.FILIA' +
      'L, P.CANCELADO, P.TIPO_REG, P.EMAIL_COMPRAS'#13#10'FROM PEDIDO P'#13#10'INNE' +
      'R JOIN PESSOA CLI'#13#10'ON P.id_cliente = CLI.codigo'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 328
    object sdsPedidoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPedidoNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object sdsPedidoPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object sdsPedidoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsPedidoCONFERIDO: TStringField
      FieldName = 'CONFERIDO'
      Size = 1
    end
    object sdsPedidoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsPedidoFATURADO: TStringField
      FieldName = 'FATURADO'
      FixedChar = True
      Size = 1
    end
    object sdsPedidoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object sdsPedidoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsPedidoCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object sdsPedidoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object sdsPedidoEMAIL_COMPRAS: TStringField
      FieldName = 'EMAIL_COMPRAS'
      Size = 100
    end
  end
  object dspPedido: TDataSetProvider
    DataSet = sdsPedido
    Left = 88
    Top = 328
  end
  object cdsPedido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido'
    Left = 136
    Top = 328
    object cdsPedidoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedidoNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPedidoPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsPedidoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsPedidoCONFERIDO: TStringField
      FieldName = 'CONFERIDO'
      Size = 1
    end
    object cdsPedidoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsPedidoFATURADO: TStringField
      FieldName = 'FATURADO'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsPedidoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsPedidoCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoEMAIL_COMPRAS: TStringField
      FieldName = 'EMAIL_COMPRAS'
      Size = 100
    end
  end
  object dsPedido: TDataSource
    DataSet = cdsPedido
    Left = 184
    Top = 328
  end
  object sdsConferencia: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CONFERENCIA'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 8
    object sdsConferenciaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsConferenciaDTINICIO: TDateField
      FieldName = 'DTINICIO'
    end
    object sdsConferenciaHRINICIO: TTimeField
      FieldName = 'HRINICIO'
    end
    object sdsConferenciaTOTAL_ITENS: TIntegerField
      FieldName = 'TOTAL_ITENS'
    end
    object sdsConferenciaTOTAL_PRODUTO_DIF: TIntegerField
      FieldName = 'TOTAL_PRODUTO_DIF'
    end
    object sdsConferenciaQTD_PRODUITO: TIntegerField
      FieldName = 'QTD_PRODUITO'
    end
    object sdsConferenciaPESO_LIQ: TFloatField
      FieldName = 'PESO_LIQ'
    end
    object sdsConferenciaPESO_BRU: TFloatField
      FieldName = 'PESO_BRU'
    end
    object sdsConferenciaENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      Size = 1
    end
    object sdsConferenciaDTENCERRADO: TDateField
      FieldName = 'DTENCERRADO'
    end
    object sdsConferenciaHRENCERRADO: TTimeField
      FieldName = 'HRENCERRADO'
    end
    object sdsConferenciaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsConferenciaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
  end
  object dspConferencia: TDataSetProvider
    DataSet = sdsConferencia
    UpdateMode = upWhereKeyOnly
    Left = 120
    Top = 8
  end
  object cdsConferencia: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspConferencia'
    Left = 168
    Top = 8
    object cdsConferenciaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsConferenciaDTINICIO: TDateField
      FieldName = 'DTINICIO'
    end
    object cdsConferenciaHRINICIO: TTimeField
      FieldName = 'HRINICIO'
    end
    object cdsConferenciaTOTAL_ITENS: TIntegerField
      FieldName = 'TOTAL_ITENS'
    end
    object cdsConferenciaTOTAL_PRODUTO_DIF: TIntegerField
      FieldName = 'TOTAL_PRODUTO_DIF'
    end
    object cdsConferenciaQTD_PRODUITO: TIntegerField
      FieldName = 'QTD_PRODUITO'
    end
    object cdsConferenciaPESO_LIQ: TFloatField
      FieldName = 'PESO_LIQ'
    end
    object cdsConferenciaPESO_BRU: TFloatField
      FieldName = 'PESO_BRU'
    end
    object cdsConferenciaENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      Size = 1
    end
    object cdsConferenciaDTENCERRADO: TDateField
      FieldName = 'DTENCERRADO'
    end
    object cdsConferenciaHRENCERRADO: TTimeField
      FieldName = 'HRENCERRADO'
    end
    object cdsConferenciaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsConferenciaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsConferenciasdsConferencia_Itens: TDataSetField
      FieldName = 'sdsConferencia_Itens'
    end
  end
  object dsConferencia: TDataSource
    DataSet = cdsConferencia
    Left = 216
    Top = 8
  end
  object dsConferencia_Mestre: TDataSource
    DataSet = sdsConferencia
    Left = 32
    Top = 48
  end
  object qConferencia: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'USUARIO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT C.ID, C.dtinicio, C.usuario, C.encerrado'
      'FROM CONFERENCIA C'
      'WHERE C.encerrado = '#39'N'#39
      '  AND C.usuario = :USUARIO')
    SQLConnection = dmDatabase.scoDados
    Left = 352
    Top = 128
    object qConferenciaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qConferenciaDTINICIO: TDateField
      FieldName = 'DTINICIO'
    end
    object qConferenciaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object qConferenciaENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      Size = 1
    end
  end
  object sdsConferencia_Itens: TSQLDataSet
    CommandText = 'SELECT *'#13#10'FROM CONFERENCIA_ITENS'#13#10'WHERE ID = :ID'
    DataSource = dsConferencia_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 96
    object sdsConferencia_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsConferencia_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsConferencia_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsConferencia_ItensPESO_LIQ: TFloatField
      FieldName = 'PESO_LIQ'
    end
    object sdsConferencia_ItensPESO_BRU: TFloatField
      FieldName = 'PESO_BRU'
    end
    object sdsConferencia_ItensENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      FixedChar = True
      Size = 1
    end
    object sdsConferencia_ItensETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      FixedChar = True
      Size = 1
    end
    object sdsConferencia_ItensQTD_TIPO_PRODUTO: TIntegerField
      FieldName = 'QTD_TIPO_PRODUTO'
    end
  end
  object cdsConferencia_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsConferenciasdsConferencia_Itens
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 144
    Top = 96
    object cdsConferencia_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsConferencia_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsConferencia_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsConferencia_ItensPESO_LIQ: TFloatField
      FieldName = 'PESO_LIQ'
    end
    object cdsConferencia_ItensPESO_BRU: TFloatField
      FieldName = 'PESO_BRU'
    end
    object cdsConferencia_ItensENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      FixedChar = True
      Size = 1
    end
    object cdsConferencia_ItensETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      FixedChar = True
      Size = 1
    end
    object cdsConferencia_ItensQTD_TIPO_PRODUTO: TIntegerField
      FieldName = 'QTD_TIPO_PRODUTO'
    end
    object cdsConferencia_ItenssdsConferencia_Ped: TDataSetField
      FieldName = 'sdsConferencia_Ped'
    end
  end
  object dsConferencia_Itens: TDataSource
    DataSet = cdsConferencia_Itens
    Left = 216
    Top = 96
  end
  object dsConferencia_Itens_Mestre: TDataSource
    DataSet = sdsConferencia_Itens
    Left = 48
    Top = 144
  end
  object cdsConferencia_Ped: TClientDataSet
    Aggregates = <>
    DataSetField = cdsConferencia_ItenssdsConferencia_Ped
    IndexFieldNames = 'ID;ITEM;ITEM_REG'
    Params = <>
    OnCalcFields = cdsConferencia_PedCalcFields
    Left = 168
    Top = 192
    object cdsConferencia_PedID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsConferencia_PedITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsConferencia_PedITEM_REG: TIntegerField
      FieldName = 'ITEM_REG'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsConferencia_PedID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsConferencia_PedITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object cdsConferencia_PedID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsConferencia_PedQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsConferencia_PedPESO_LIQ: TFloatField
      FieldName = 'PESO_LIQ'
    end
    object cdsConferencia_PedPESO_BRU: TFloatField
      FieldName = 'PESO_BRU'
    end
    object cdsConferencia_PedENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      Size = 1
    end
    object cdsConferencia_PedclNum_Pedido: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'clNum_Pedido'
      ProviderFlags = []
      Calculated = True
    end
    object cdsConferencia_PedclCodBarra: TStringField
      FieldKind = fkCalculated
      FieldName = 'clCodBarra'
      ProviderFlags = []
      Size = 14
      Calculated = True
    end
    object cdsConferencia_PedclReferencia: TStringField
      FieldKind = fkCalculated
      FieldName = 'clReferencia'
      Calculated = True
    end
  end
  object dsConferencia_Ped: TDataSource
    DataSet = cdsConferencia_Ped
    Left = 232
    Top = 192
  end
  object qCBarra: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'COD_BARRA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT P.id, P.pesoliquido, P.pesobruto, P.cod_barra'
      'FROM PRODUTO P'
      'WHERE P.cod_barra = :COD_BARRA')
    SQLConnection = dmDatabase.scoDados
    Left = 400
    Top = 344
    object qCBarraID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCBarraPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object qCBarraPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object qCBarraCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
  end
  object sdsConferencia_Ped: TSQLDataSet
    CommandText = 
      'SELECT CP.*'#13#10'FROM CONFERENCIA_PED CP'#13#10'WHERE CP.ID = :ID'#13#10'  AND C' +
      'P.ITEM = :ITEM'
    DataSource = dsConferencia_Itens_Mestre
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
    Left = 88
    Top = 192
    object sdsConferencia_PedID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsConferencia_PedITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsConferencia_PedITEM_REG: TIntegerField
      FieldName = 'ITEM_REG'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsConferencia_PedID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object sdsConferencia_PedITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object sdsConferencia_PedID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsConferencia_PedQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsConferencia_PedPESO_LIQ: TFloatField
      FieldName = 'PESO_LIQ'
    end
    object sdsConferencia_PedPESO_BRU: TFloatField
      FieldName = 'PESO_BRU'
    end
    object sdsConferencia_PedENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      Size = 1
    end
  end
  object qPedido_Ver: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT P.num_pedido, I.referencia, I.nomeproduto, PROD.cod_barra'
      'FROM PEDIDO P'
      'INNER JOIN PEDIDO_ITEM I'
      'ON P.ID = I.id'
      'AND I.ITEM = :ITEM'
      'INNER JOIN PRODUTO PROD'
      'ON I.ID_PRODUTO = PROD.ID'
      'WHERE P.ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 352
    Top = 232
    object qPedido_VerNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object qPedido_VerREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object qPedido_VerNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object qPedido_VerCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
  end
  object frxReport1: TfrxReport
    Version = '5.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42759.854971979200000000
    ReportOptions.LastChange = 42759.885930636580000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Left = 952
    Top = 279
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
    Left = 992
    Top = 279
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
    Left = 1032
    Top = 279
  end
  object frxRichObject1: TfrxRichObject
    Left = 1064
    Top = 279
  end
  object frxEtiqueta: TfrxDBDataset
    UserName = 'frxEtiqueta'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ITEM=ITEM'
      'QTD=QTD'
      'PESO_LIQ=PESO_LIQ'
      'PESO_BRU=PESO_BRU'
      'ENCERRADO=ENCERRADO'
      'ETIQUETA=ETIQUETA'
      'QTD_TIPO_PRODUTO=QTD_TIPO_PRODUTO'
      'DTINICIO=DTINICIO'
      'HRINICIO=HRINICIO'
      'USUARIO=USUARIO')
    DataSource = dsEtiqueta
    BCDToCurrency = False
    Left = 952
    Top = 327
  end
  object qQtdProd: TSQLQuery
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
    SQL.Strings = (
      'SELECT COUNT(P.id_produto) CONTADOR'
      'FROM CONFERENCIA_PED P'
      'WHERE P.ID = :ID'
      '  AND P.ITEM = :ITEM')
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 176
    object qQtdProdCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      Required = True
    end
  end
  object sdsEtiqueta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT I.*, C.dtinicio, C.hrinicio, C.usuario'#13#10'FROM conferencia_' +
      'itens I'#13#10'INNER JOIN conferencia C'#13#10'ON I.ID = C.ID'#13#10'WHERE I.ID = ' +
      ':ID'#13#10'  AND I.ITEM = :ITEM'#13#10
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
    Left = 944
    Top = 232
  end
  object dspEtiqueta: TDataSetProvider
    DataSet = sdsEtiqueta
    Left = 984
    Top = 232
  end
  object cdsEtiqueta: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEtiqueta'
    Left = 1032
    Top = 232
    object cdsEtiquetaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEtiquetaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsEtiquetaQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsEtiquetaPESO_LIQ: TFloatField
      FieldName = 'PESO_LIQ'
    end
    object cdsEtiquetaPESO_BRU: TFloatField
      FieldName = 'PESO_BRU'
    end
    object cdsEtiquetaENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      FixedChar = True
      Size = 1
    end
    object cdsEtiquetaETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      FixedChar = True
      Size = 1
    end
    object cdsEtiquetaQTD_TIPO_PRODUTO: TIntegerField
      FieldName = 'QTD_TIPO_PRODUTO'
    end
    object cdsEtiquetaDTINICIO: TDateField
      FieldName = 'DTINICIO'
    end
    object cdsEtiquetaHRINICIO: TTimeField
      FieldName = 'HRINICIO'
    end
    object cdsEtiquetaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
  end
  object dsEtiqueta: TDataSource
    DataSet = cdsEtiqueta
    Left = 1080
    Top = 232
  end
  object sdsQtdPed: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT SUM(CP.qtd) QTD, CP.id_pedido, CP.item_pedido'#13#10'FROM confe' +
      'rencia_ped CP'#13#10'WHERE CP.ID = :ID'#13#10'GROUP BY CP.id_pedido, CP.item' +
      '_pedido'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 608
    Top = 24
  end
  object dspQtdPed: TDataSetProvider
    DataSet = sdsQtdPed
    Left = 648
    Top = 24
  end
  object cdsQtdPed: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_PEDIDO;ITEM_PEDIDO'
    Params = <>
    ProviderName = 'dspQtdPed'
    Left = 696
    Top = 24
    object cdsQtdPedQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsQtdPedID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsQtdPedITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
  end
  object dsQtdPed: TDataSource
    DataSet = cdsQtdPed
    Left = 744
    Top = 24
  end
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT C.*'#13#10'FROM CONFERENCIA C'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 608
    Top = 72
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Left = 648
    Top = 72
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 696
    Top = 72
    object cdsConsultaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaDTINICIO: TDateField
      FieldName = 'DTINICIO'
    end
    object cdsConsultaHRINICIO: TTimeField
      FieldName = 'HRINICIO'
    end
    object cdsConsultaTOTAL_ITENS: TIntegerField
      FieldName = 'TOTAL_ITENS'
    end
    object cdsConsultaTOTAL_PRODUTO_DIF: TIntegerField
      FieldName = 'TOTAL_PRODUTO_DIF'
    end
    object cdsConsultaQTD_PRODUITO: TIntegerField
      FieldName = 'QTD_PRODUITO'
    end
    object cdsConsultaPESO_LIQ: TFloatField
      FieldName = 'PESO_LIQ'
    end
    object cdsConsultaPESO_BRU: TFloatField
      FieldName = 'PESO_BRU'
    end
    object cdsConsultaENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      Size = 1
    end
    object cdsConsultaDTENCERRADO: TDateField
      FieldName = 'DTENCERRADO'
    end
    object cdsConsultaHRENCERRADO: TTimeField
      FieldName = 'HRENCERRADO'
    end
    object cdsConsultaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 744
    Top = 72
  end
  object sdsConsulta_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT I.*'#13#10'FROM CONFERENCIA_ITENS I'#13#10'WHERE I.ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 608
    Top = 120
  end
  object dspConsulta_Itens: TDataSetProvider
    DataSet = sdsConsulta_Itens
    Left = 648
    Top = 120
  end
  object cdsConsulta_Itens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta_Itens'
    Left = 696
    Top = 120
    object cdsConsulta_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsulta_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsConsulta_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsConsulta_ItensPESO_LIQ: TFloatField
      FieldName = 'PESO_LIQ'
    end
    object cdsConsulta_ItensPESO_BRU: TFloatField
      FieldName = 'PESO_BRU'
    end
    object cdsConsulta_ItensENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_ItensETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_ItensQTD_TIPO_PRODUTO: TIntegerField
      FieldName = 'QTD_TIPO_PRODUTO'
    end
  end
  object dsConsulta_Itens: TDataSource
    DataSet = cdsConsulta_Itens
    Left = 744
    Top = 120
  end
  object sdsConsulta_Ped: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CP.QTD, CP.item, CP.id_pedido, CP.item_pedido,'#13#10'CP.id_pro' +
      'duto, PROD.referencia, PROD.nome, PROD.cod_barra, PED.num_pedido' +
      #13#10'FROM conferencia_ped CP'#13#10'INNER JOIN PRODUTO PROD'#13#10'ON CP.id_pro' +
      'duto = PROD.ID'#13#10'INNER JOIN PEDIDO PED'#13#10'ON CP.id_pedido = PED.ID'#13 +
      #10'WHERE CP.ID = :ID'#13#10'  and cp.item = :ITEM'#13#10
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
    Left = 608
    Top = 176
  end
  object dspConsulta_Ped: TDataSetProvider
    DataSet = sdsConsulta_Ped
    Left = 648
    Top = 176
  end
  object cdsConsulta_Ped: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta_Ped'
    Left = 696
    Top = 176
    object cdsConsulta_PedQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsConsulta_PedITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsConsulta_PedID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsConsulta_PedITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object cdsConsulta_PedID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsConsulta_PedREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsConsulta_PedNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsConsulta_PedCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object cdsConsulta_PedNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
  end
  object dsConsulta_Ped: TDataSource
    DataSet = cdsConsulta_Ped
    Left = 744
    Top = 176
  end
  object mImpConferencia: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Conferencia'
        DataType = ftInteger
      end
      item
        Name = 'Usuario'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Qtd_Total'
        DataType = ftFloat
      end
      item
        Name = 'Total_Etiqueta'
        DataType = ftInteger
      end
      item
        Name = 'Total_Prod_Dif'
        DataType = ftInteger
      end
      item
        Name = 'Item_Etiqueta'
        DataType = ftInteger
      end
      item
        Name = 'Qtd_Total_Etiq'
        DataType = ftFloat
      end
      item
        Name = 'Total_Prod_Dif_Etiq'
        DataType = ftInteger
      end
      item
        Name = 'Num_Pedido'
        DataType = ftInteger
      end
      item
        Name = 'Item_Pedido'
        DataType = ftInteger
      end
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
        Name = 'Nome_Prod'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Cod_Barra'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Qtd_Ped'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'ID_Conferencia;Item_Etiqueta'
    Params = <>
    StoreDefs = True
    Left = 888
    Top = 424
    Data = {
      7B0100009619E0BD01000000180000000F0000000000030000007B010E49445F
      436F6E666572656E6369610400010000000000075573756172696F0100490000
      000100055749445448020002001400095174645F546F74616C08000400000000
      000E546F74616C5F457469717565746104000100000000000E546F74616C5F50
      726F645F44696604000100000000000D4974656D5F4574697175657461040001
      00000000000E5174645F546F74616C5F45746971080004000000000013546F74
      616C5F50726F645F4469665F4574697104000100000000000A4E756D5F506564
      69646F04000100000000000B4974656D5F50656469646F04000100000000000A
      49445F50726F6475746F04000100000000000A5265666572656E636961010049
      0000000100055749445448020002001400094E6F6D655F50726F640100490000
      000100055749445448020002003C0009436F645F426172726101004900000001
      00055749445448020002001400075174645F50656404000100000000000000}
    object mImpConferenciaID_Conferencia: TIntegerField
      FieldName = 'ID_Conferencia'
    end
    object mImpConferenciaUsuario: TStringField
      FieldName = 'Usuario'
    end
    object mImpConferenciaQtd_Total: TFloatField
      FieldName = 'Qtd_Total'
    end
    object mImpConferenciaTotal_Etiqueta: TIntegerField
      FieldName = 'Total_Etiqueta'
    end
    object mImpConferenciaTotal_Prod_Dif: TIntegerField
      FieldName = 'Total_Prod_Dif'
    end
    object mImpConferenciaItem_Etiqueta: TIntegerField
      FieldName = 'Item_Etiqueta'
    end
    object mImpConferenciaQtd_Total_Etiq: TFloatField
      FieldName = 'Qtd_Total_Etiq'
    end
    object mImpConferenciaTotal_Prod_Dif_Etiq: TIntegerField
      FieldName = 'Total_Prod_Dif_Etiq'
    end
    object mImpConferenciaNum_Pedido: TIntegerField
      FieldName = 'Num_Pedido'
    end
    object mImpConferenciaItem_Pedido: TIntegerField
      FieldName = 'Item_Pedido'
    end
    object mImpConferenciaID_Produto: TIntegerField
      FieldName = 'ID_Produto'
    end
    object mImpConferenciaReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mImpConferenciaNome_Prod: TStringField
      FieldName = 'Nome_Prod'
      Size = 60
    end
    object mImpConferenciaCod_Barra: TStringField
      FieldName = 'Cod_Barra'
    end
    object mImpConferenciaQtd_Ped: TIntegerField
      FieldName = 'Qtd_Ped'
    end
  end
  object dsmImpConferencia: TDataSource
    DataSet = mImpConferencia
    Left = 920
    Top = 424
  end
  object frxImpConferencia: TfrxDBDataset
    UserName = 'frxImpConferencia'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_Conferencia=ID_Conferencia'
      'Usuario=Usuario'
      'Qtd_Total=Qtd_Total'
      'Total_Etiqueta=Total_Etiqueta'
      'Total_Prod_Dif=Total_Prod_Dif'
      'Item_Etiqueta=Item_Etiqueta'
      'Qtd_Total_Etiq=Qtd_Total_Etiq'
      'Total_Prod_Dif_Etiq=Total_Prod_Dif_Etiq'
      'Num_Pedido=Num_Pedido'
      'Item_Pedido=Item_Pedido'
      'ID_Produto=ID_Produto'
      'Referencia=Referencia'
      'Nome_Prod=Nome_Prod'
      'Cod_Barra=Cod_Barra'
      'Qtd_Ped=Qtd_Ped')
    DataSource = dsmImpConferencia
    BCDToCurrency = False
    Left = 1000
    Top = 327
  end
  object qParametros_Ped: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT CONFERENCIA_SIMPLES'
      'FROM PARAMETROS_PED')
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 264
    object qParametros_PedCONFERENCIA_SIMPLES: TStringField
      FieldName = 'CONFERENCIA_SIMPLES'
      FixedChar = True
      Size = 1
    end
  end
  object sdsPedido_Item_Tipo: TSQLDataSet
    CommandText = 
      'SELECT *'#13#10'FROM PEDIDO_ITEM_TIPO '#13#10'WHERE ID = :ID'#13#10'   AND ITEM = ' +
      ':ITEM'
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
    Left = 384
    Top = 469
  end
  object cdsPedido_Item_Tipo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido_Item_Tipo'
    Left = 472
    Top = 469
    object cdsPedido_Item_TipoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedido_Item_TipoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedido_Item_TipoCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object cdsPedido_Item_TipoLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object cdsPedido_Item_TipoALTURA: TFloatField
      FieldName = 'ALTURA'
    end
    object cdsPedido_Item_TipoVLR_KG: TFloatField
      FieldName = 'VLR_KG'
    end
    object cdsPedido_Item_TipoQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedido_Item_TipoVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsPedido_Item_TipoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsPedido_Item_TipoDIAMETRO: TFloatField
      FieldName = 'DIAMETRO'
    end
    object cdsPedido_Item_TipoDIAMETRO_EXT: TFloatField
      FieldName = 'DIAMETRO_EXT'
    end
    object cdsPedido_Item_TipoDIAMETRO_INT: TFloatField
      FieldName = 'DIAMETRO_INT'
    end
    object cdsPedido_Item_TipoPAREDE: TFloatField
      FieldName = 'PAREDE'
    end
    object cdsPedido_Item_TipoPESO: TFloatField
      FieldName = 'PESO'
      DisplayFormat = '0.0000###'
    end
    object cdsPedido_Item_TipoCOMPLEMENTO_NOME: TStringField
      FieldName = 'COMPLEMENTO_NOME'
      Size = 50
    end
    object cdsPedido_Item_TipoTIPO_ORCAMENTO: TStringField
      FieldName = 'TIPO_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_Item_TipoDESCRICAO_TIPO: TStringField
      FieldName = 'DESCRICAO_TIPO'
      Size = 12
    end
    object cdsPedido_Item_TipoID_ACABAMENTO: TIntegerField
      FieldName = 'ID_ACABAMENTO'
    end
    object cdsPedido_Item_TipoID_REDONDO_MOD: TIntegerField
      FieldName = 'ID_REDONDO_MOD'
    end
    object cdsPedido_Item_TipoID_CMOEDA: TIntegerField
      FieldName = 'ID_CMOEDA'
    end
    object cdsPedido_Item_TipoID_FUROS: TIntegerField
      FieldName = 'ID_FUROS'
    end
    object cdsPedido_Item_TipoID_FURACAO: TIntegerField
      FieldName = 'ID_FURACAO'
    end
    object cdsPedido_Item_TipoID_PERFIL: TIntegerField
      FieldName = 'ID_PERFIL'
    end
    object cdsPedido_Item_TipoID_VIDRO: TIntegerField
      FieldName = 'ID_VIDRO'
    end
    object cdsPedido_Item_TipoclNome_Acabamento: TStringField
      FieldKind = fkCalculated
      FieldName = 'clNome_Acabamento'
      ProviderFlags = []
      Size = 30
      Calculated = True
    end
    object cdsPedido_Item_TipoclNome_Redondo_Mod: TStringField
      FieldKind = fkCalculated
      FieldName = 'clNome_Redondo_Mod'
      ProviderFlags = []
      Size = 30
      Calculated = True
    end
    object cdsPedido_Item_TipoclNome_CMoeda: TStringField
      FieldKind = fkCalculated
      FieldName = 'clNome_CMoeda'
      ProviderFlags = []
      Size = 30
      Calculated = True
    end
    object cdsPedido_Item_TipoclNome_Furos: TStringField
      FieldKind = fkCalculated
      FieldName = 'clNome_Furos'
      ProviderFlags = []
      Size = 30
      Calculated = True
    end
    object cdsPedido_Item_TipoclNome_Furacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'clNome_Furacao'
      ProviderFlags = []
      Size = 30
      Calculated = True
    end
    object cdsPedido_Item_TipoclNome_Perfil: TStringField
      FieldKind = fkCalculated
      FieldName = 'clNome_Perfil'
      ProviderFlags = []
      Size = 60
      Calculated = True
    end
    object cdsPedido_Item_TipoclNome_Vidro: TStringField
      FieldKind = fkCalculated
      FieldName = 'clNome_Vidro'
      ProviderFlags = []
      Size = 60
      Calculated = True
    end
    object cdsPedido_Item_TipoQTD_FUROS: TIntegerField
      FieldName = 'QTD_FUROS'
    end
    object cdsPedido_Item_TipoVLR_DOBRA: TFloatField
      FieldName = 'VLR_DOBRA'
    end
    object cdsPedido_Item_TipoID_CHAPA: TIntegerField
      FieldName = 'ID_CHAPA'
    end
  end
  object dsPedido_Item_Tipo: TDataSource
    DataSet = cdsPedido_Item_Tipo
    Left = 512
    Top = 469
  end
  object dspPedido_Item_Tipo: TDataSetProvider
    DataSet = sdsPedido_Item_Tipo
    Left = 424
    Top = 472
  end
  object mAuxConf: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Pedido'
        DataType = ftInteger
      end
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'ID_Produto'
        DataType = ftInteger
      end
      item
        Name = 'ID_Cor'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Produto'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Nome_Cor'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Qtd'
        DataType = ftInteger
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Tamanho'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 768
    Top = 296
    Data = {
      E00000009619E0BD010000001800000009000000000003000000E0000949445F
      50656469646F0400010000000000044974656D04000100000000000A49445F50
      726F6475746F04000100000000000649445F436F7204000100000000000C4E6F
      6D655F50726F6475746F0100490000000100055749445448020002006400084E
      6F6D655F436F720100490000000100055749445448020002003C000351746404
      000100000000000A5265666572656E6369610100490000000100055749445448
      0200020014000754616D616E686F010049000000010005574944544802000200
      0A000000}
    object mAuxConfID_Pedido: TIntegerField
      FieldName = 'ID_Pedido'
    end
    object mAuxConfItem: TIntegerField
      FieldName = 'Item'
    end
    object mAuxConfID_Produto: TIntegerField
      FieldName = 'ID_Produto'
    end
    object mAuxConfID_Cor: TIntegerField
      FieldName = 'ID_Cor'
    end
    object mAuxConfNome_Produto: TStringField
      FieldName = 'Nome_Produto'
      Size = 100
    end
    object mAuxConfNome_Cor: TStringField
      FieldName = 'Nome_Cor'
      Size = 60
    end
    object mAuxConfQtd: TIntegerField
      FieldName = 'Qtd'
    end
    object mAuxConfReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mAuxConfTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
  end
  object dsmAuxConf: TDataSource
    DataSet = mAuxConf
    Left = 800
    Top = 296
  end
  object qCombinacao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID, NOME'
      'FROM COMBINACAO'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 504
    Top = 336
    object qCombinacaoID: TFMTBCDField
      FieldName = 'ID'
      Required = True
      Precision = 15
      Size = 0
    end
    object qCombinacaoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object sdsPedido_Conf: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PEDIDO_CONF'#13#10'WHERE ID = :ID'#13#10'   AND ITEM = :ITEM'#13 +
      #10
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
    Left = 40
    Top = 432
    object sdsPedido_ConfID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPedido_ConfITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsPedido_ConfITEM_CONF: TIntegerField
      FieldName = 'ITEM_CONF'
    end
    object sdsPedido_ConfQTD: TIntegerField
      FieldName = 'QTD'
    end
    object sdsPedido_ConfID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object sdsPedido_ConfDATA: TDateField
      FieldName = 'DATA'
    end
  end
  object dspPedido_Conf: TDataSetProvider
    DataSet = sdsPedido_Conf
    Left = 88
    Top = 432
  end
  object cdsPedido_Conf: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM;ITEM_CONF'
    Params = <>
    ProviderName = 'dspPedido_Conf'
    Left = 136
    Top = 432
    object cdsPedido_ConfID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedido_ConfITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPedido_ConfITEM_CONF: TIntegerField
      FieldName = 'ITEM_CONF'
    end
    object cdsPedido_ConfQTD: TIntegerField
      FieldName = 'QTD'
    end
    object cdsPedido_ConfID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object cdsPedido_ConfDATA: TDateField
      FieldName = 'DATA'
    end
  end
  object dsPedido_Conf: TDataSource
    DataSet = cdsPedido_Conf
    Left = 184
    Top = 432
  end
  object qPedidoConf: TSQLQuery
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
    SQL.Strings = (
      'SELECT MAX(ITEM_CONF) ITEM_CONF'
      'FROM PEDIDO_CONF'
      'WHERE ID = :ID'
      '  AND ITEM = :ITEM')
    SQLConnection = dmDatabase.scoDados
    Left = 632
    Top = 296
    object qPedidoConfITEM_CONF: TIntegerField
      FieldName = 'ITEM_CONF'
    end
  end
  object qCBarraCor: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'COD_BARRA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT P.id_produto , P.cod_barra, P.id_cor, P.tamanho'
      'FROM CBARRA P'
      'WHERE P.cod_barra = :COD_BARRA')
    SQLConnection = dmDatabase.scoDados
    Left = 560
    Top = 400
    object qCBarraCorCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 13
    end
    object qCBarraCorID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object qCBarraCorID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object qCBarraCorTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
  end
end
