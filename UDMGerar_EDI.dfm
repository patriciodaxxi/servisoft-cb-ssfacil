object DMGerar_EDI: TDMGerar_EDI
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 275
  Top = 154
  Height = 497
  Width = 831
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 112
    object qParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametrosID_OPERACAO_VENDA: TIntegerField
      FieldName = 'ID_OPERACAO_VENDA'
    end
    object qParametrosID_OPERACAO_BENEF_RET: TIntegerField
      FieldName = 'ID_OPERACAO_BENEF_RET'
    end
    object qParametrosID_OPERACAO_MAOOBRA: TIntegerField
      FieldName = 'ID_OPERACAO_MAOOBRA'
    end
    object qParametrosID_OPERACAO_TRIANGULAR: TIntegerField
      FieldName = 'ID_OPERACAO_TRIANGULAR'
    end
  end
  object mNaoGerado: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Pedido'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'NumOS'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Motivo'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'Item'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 216
    Top = 112
    Data = {
      770000009619E0BD010000001800000004000000000003000000770006506564
      69646F0100490000000100055749445448020002000F00054E756D4F53010049
      0000000100055749445448020002001400064D6F7469766F0100490000000100
      05574944544802000200C800044974656D04000100000000000000}
    object mNaoGeradoPedido: TStringField
      DisplayWidth = 18
      FieldName = 'Pedido'
      Size = 15
    end
    object mNaoGeradoNumOS: TStringField
      DisplayWidth = 24
      FieldName = 'NumOS'
    end
    object mNaoGeradoMotivo: TStringField
      DisplayWidth = 90
      FieldName = 'Motivo'
      Size = 200
    end
    object mNaoGeradoItem: TIntegerField
      DisplayWidth = 12
      FieldName = 'Item'
    end
  end
  object dsmNaoGerado: TDataSource
    DataSet = mNaoGerado
    Left = 256
    Top = 112
  end
  object mGerado: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NumPedido'
        DataType = ftInteger
      end
      item
        Name = 'PedidoCliente'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 216
    Top = 176
    Data = {
      4E0000009619E0BD0100000018000000020000000000030000004E00094E756D
      50656469646F04000100000000000D50656469646F436C69656E746501004900
      000001000557494454480200020014000000}
    object mGeradoNumPedido: TIntegerField
      FieldName = 'NumPedido'
    end
    object mGeradoPedidoCliente: TStringField
      FieldName = 'PedidoCliente'
    end
  end
  object dsmGerado: TDataSource
    DataSet = mGerado
    Left = 280
    Top = 176
  end
  object mAuxiliar: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CNPJCliente'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'NumOC'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'Plano'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DtEmissao'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TipoOperacao'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DtEntrega'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'LocalEntrega'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Fabrica'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CodProdCli'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Quantidade'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Unidade'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PercTransferencia'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'VlrUnitario'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CondPgto'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Drawback'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Plano2'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'NomeProduto'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'CNPJFornecedor'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'Reservado'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Tamnanho'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ID_Produto'
        DataType = ftInteger
      end
      item
        Name = 'ID_Cliente'
        DataType = ftInteger
      end
      item
        Name = 'Tamanho_Int'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Erro'
        DataType = ftBoolean
      end
      item
        Name = 'Filial'
        DataType = ftInteger
      end
      item
        Name = 'Item_Cliente'
        DataType = ftInteger
      end
      item
        Name = 'ID_Cor'
        DataType = ftInteger
      end
      item
        Name = 'CodCorCli'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'NomeCorCli'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'NumOC;Item_Cliente'
    Params = <>
    StoreDefs = True
    OnNewRecord = mAuxiliarNewRecord
    Left = 384
    Top = 32
    Data = {
      610300009619E0BD01000000180000001E00000000000300000061030B434E50
      4A436C69656E74650100490000000100055749445448020002001200054E756D
      4F430100490000000100055749445448020002000A00044974656D0400010000
      00000005506C616E6F0100490000000100055749445448020002000A00094474
      456D697373616F0100490000000100055749445448020002000A000C5469706F
      4F7065726163616F010049000000010005574944544802000200010009447445
      6E74726567610100490000000100055749445448020002000A000C4C6F63616C
      456E74726567610100490000000100055749445448020002000A000746616272
      69636101004900000001000557494454480200020004000A436F6450726F6443
      6C690100490000000100055749445448020002000F000A5175616E7469646164
      650100490000000100055749445448020002000A0007556E6964616465010049
      000000010005574944544802000200030011506572635472616E73666572656E
      63696101004900000001000557494454480200020005000B566C72556E697461
      72696F0100490000000100055749445448020002000F0008436F6E645067746F
      0100490000000100055749445448020002000F0008447261776261636B010049
      000000010005574944544802000200010006506C616E6F320100490000000100
      055749445448020002000A000B4E6F6D6550726F6475746F0100490000000100
      0557494454480200020064000E434E504A466F726E656365646F720100490000
      0001000557494454480200020012000952657365727661646F01004900000001
      00055749445448020002003C000854616D6E616E686F01004900000001000557
      49445448020002000A000A49445F50726F6475746F04000100000000000A4944
      5F436C69656E746504000100000000000B54616D616E686F5F496E7401004900
      00000100055749445448020002000A00044572726F0200030000000000064669
      6C69616C04000100000000000C4974656D5F436C69656E746504000100000000
      000649445F436F72040001000000000009436F64436F72436C69010049000000
      0100055749445448020002000A000A4E6F6D65436F72436C6901004900000001
      0005574944544802000200640001000D44454641554C545F4F52444552020082
      0000000000}
    object mAuxiliarCNPJCliente: TStringField
      FieldName = 'CNPJCliente'
      Size = 18
    end
    object mAuxiliarNumOC: TStringField
      FieldName = 'NumOC'
      Size = 10
    end
    object mAuxiliarItem: TIntegerField
      FieldName = 'Item'
    end
    object mAuxiliarPlano: TStringField
      FieldName = 'Plano'
      Size = 10
    end
    object mAuxiliarDtEmissao: TStringField
      FieldName = 'DtEmissao'
      Size = 10
    end
    object mAuxiliarTipoOperacao: TStringField
      FieldName = 'TipoOperacao'
      Size = 1
    end
    object mAuxiliarDtEntrega: TStringField
      FieldName = 'DtEntrega'
      Size = 10
    end
    object mAuxiliarLocalEntrega: TStringField
      FieldName = 'LocalEntrega'
      Size = 10
    end
    object mAuxiliarFabrica: TStringField
      FieldName = 'Fabrica'
      Size = 4
    end
    object mAuxiliarCodProdCli: TStringField
      FieldName = 'CodProdCli'
      Size = 15
    end
    object mAuxiliarQuantidade: TStringField
      FieldName = 'Quantidade'
      Size = 10
    end
    object mAuxiliarUnidade: TStringField
      FieldName = 'Unidade'
      Size = 6
    end
    object mAuxiliarPercTransferencia: TStringField
      FieldName = 'PercTransferencia'
      Size = 5
    end
    object mAuxiliarVlrUnitario: TStringField
      FieldName = 'VlrUnitario'
      Size = 15
    end
    object mAuxiliarCondPgto: TStringField
      FieldName = 'CondPgto'
      Size = 15
    end
    object mAuxiliarDrawback: TStringField
      FieldName = 'Drawback'
      Size = 1
    end
    object mAuxiliarPlano2: TStringField
      FieldName = 'Plano2'
      Size = 10
    end
    object mAuxiliarNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 100
    end
    object mAuxiliarCNPJFornecedor: TStringField
      FieldName = 'CNPJFornecedor'
      Size = 18
    end
    object mAuxiliarReservado: TStringField
      FieldName = 'Reservado'
      Size = 60
    end
    object mAuxiliarTamnanho: TStringField
      FieldName = 'Tamnanho'
      Size = 10
    end
    object mAuxiliarID_Produto: TIntegerField
      FieldName = 'ID_Produto'
    end
    object mAuxiliarID_Cliente: TIntegerField
      FieldName = 'ID_Cliente'
    end
    object mAuxiliarTamanho_Int: TStringField
      FieldName = 'Tamanho_Int'
      Size = 10
    end
    object mAuxiliarErro: TBooleanField
      FieldName = 'Erro'
    end
    object mAuxiliarFilial: TIntegerField
      FieldName = 'Filial'
    end
    object mAuxiliarItem_Cliente: TIntegerField
      FieldName = 'Item_Cliente'
    end
    object mAuxiliarID_Cor: TIntegerField
      FieldName = 'ID_Cor'
    end
    object mAuxiliarCodCorCli: TStringField
      FieldName = 'CodCorCli'
      Size = 10
    end
    object mAuxiliarNomeCorCli: TStringField
      FieldName = 'NomeCorCli'
      Size = 100
    end
  end
  object dsmAuxiliar: TDataSource
    DataSet = mAuxiliar
    Left = 432
    Top = 32
  end
  object qCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CNPJ_CPF'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT P.*, R.CODIGO CODIGO_TRIB'
      'FROM PESSOA P'
      'LEFT JOIN REGIME_TRIB R'
      'ON P.ID_REGIME_TRIB  = R.ID'
      'WHERE P.CNPJ_CPF = :CNPJ_CPF')
    SQLConnection = dmDatabase.scoDados
    Left = 384
    Top = 96
    object qClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qClienteCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object qClienteID_EDI: TIntegerField
      FieldName = 'ID_EDI'
    end
    object qClienteID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object qClienteID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object qClienteID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object qClienteID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object qClienteID_CONTABOLETO: TIntegerField
      FieldName = 'ID_CONTABOLETO'
    end
    object qClienteID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object qClienteID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object qClientePERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object qClientePERC_COMISSAO_VEND: TFloatField
      FieldName = 'PERC_COMISSAO_VEND'
    end
    object qClienteTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      FixedChar = True
      Size = 1
    end
    object qClienteUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object qClienteCODIGO_TRIB: TIntegerField
      FieldName = 'CODIGO_TRIB'
    end
    object qClientePESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object qClienteUSA_TRANSFICMS: TStringField
      FieldName = 'USA_TRANSFICMS'
      FixedChar = True
      Size = 1
    end
    object qClienteID_TAB_PRECO: TIntegerField
      FieldName = 'ID_TAB_PRECO'
    end
    object qClienteINSC_SUFRAMA: TStringField
      FieldName = 'INSC_SUFRAMA'
      Size = 9
    end
  end
  object qFilial: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CNPJ_CPF'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM FILIAL'
      'WHERE CNPJ_CPF = :CNPJ_CPF')
    SQLConnection = dmDatabase.scoDados
    Left = 440
    Top = 112
    object qFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qFilialNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object qFilialCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object qFilialSIMPLES: TStringField
      FieldName = 'SIMPLES'
      FixedChar = True
      Size = 1
    end
    object qFilialUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qFilialID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object qFilialID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object qFilialID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object qFilialTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object qFilialTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object qFilialPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object qFilialPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object qFilialID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object qFilialID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
  end
  object qEDI_Config: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM EDI_CONFIG'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 136
    Top = 24
    object qEDI_ConfigID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qEDI_ConfigLAYOUT: TStringField
      FieldName = 'LAYOUT'
      Size = 15
    end
    object qEDI_ConfigCNPJ_CLIENTE_INI: TIntegerField
      FieldName = 'CNPJ_CLIENTE_INI'
    end
    object qEDI_ConfigCNPJ_CLIENTE_TAM: TIntegerField
      FieldName = 'CNPJ_CLIENTE_TAM'
    end
    object qEDI_ConfigNUM_OC_INI: TIntegerField
      FieldName = 'NUM_OC_INI'
    end
    object qEDI_ConfigNUM_OC_TAM: TIntegerField
      FieldName = 'NUM_OC_TAM'
    end
    object qEDI_ConfigOCO_INI: TIntegerField
      FieldName = 'OCO_INI'
    end
    object qEDI_ConfigOCO_TAM: TIntegerField
      FieldName = 'OCO_TAM'
    end
    object qEDI_ConfigPLANO_INI: TIntegerField
      FieldName = 'PLANO_INI'
    end
    object qEDI_ConfigPLANO_TAM: TIntegerField
      FieldName = 'PLANO_TAM'
    end
    object qEDI_ConfigDTEMISSAO_INI: TIntegerField
      FieldName = 'DTEMISSAO_INI'
    end
    object qEDI_ConfigDTEMISSAO_TAM: TIntegerField
      FieldName = 'DTEMISSAO_TAM'
    end
    object qEDI_ConfigTIPO_OPERACAO_INI: TIntegerField
      FieldName = 'TIPO_OPERACAO_INI'
    end
    object qEDI_ConfigTIPO_OPERACAO_TAM: TIntegerField
      FieldName = 'TIPO_OPERACAO_TAM'
    end
    object qEDI_ConfigDTENTREGA_INI: TIntegerField
      FieldName = 'DTENTREGA_INI'
    end
    object qEDI_ConfigDTENTREGA_TAM: TIntegerField
      FieldName = 'DTENTREGA_TAM'
    end
    object qEDI_ConfigCOD_LOCAL_ENTREGA_INI: TIntegerField
      FieldName = 'COD_LOCAL_ENTREGA_INI'
    end
    object qEDI_ConfigCOD_LOCAL_ENTREGA_TAM: TIntegerField
      FieldName = 'COD_LOCAL_ENTREGA_TAM'
    end
    object qEDI_ConfigFABRICA_INI: TIntegerField
      FieldName = 'FABRICA_INI'
    end
    object qEDI_ConfigFABRICA_TAM: TIntegerField
      FieldName = 'FABRICA_TAM'
    end
    object qEDI_ConfigCOD_PRODUTO_INI: TIntegerField
      FieldName = 'COD_PRODUTO_INI'
    end
    object qEDI_ConfigCOD_PRODUTO_TAM: TIntegerField
      FieldName = 'COD_PRODUTO_TAM'
    end
    object qEDI_ConfigQTD_INI: TIntegerField
      FieldName = 'QTD_INI'
    end
    object qEDI_ConfigQTD_TAM: TIntegerField
      FieldName = 'QTD_TAM'
    end
    object qEDI_ConfigUNIDADE_INI: TIntegerField
      FieldName = 'UNIDADE_INI'
    end
    object qEDI_ConfigUNIDADE_TAM: TIntegerField
      FieldName = 'UNIDADE_TAM'
    end
    object qEDI_ConfigPERC_TRANSF_INI: TIntegerField
      FieldName = 'PERC_TRANSF_INI'
    end
    object qEDI_ConfigPERC_TRANSF_TAM: TIntegerField
      FieldName = 'PERC_TRANSF_TAM'
    end
    object qEDI_ConfigVLR_UNITARIO_INI: TIntegerField
      FieldName = 'VLR_UNITARIO_INI'
    end
    object qEDI_ConfigVLR_UNITARIO_TAM: TIntegerField
      FieldName = 'VLR_UNITARIO_TAM'
    end
    object qEDI_ConfigVLR_UNITARIO_DEC: TIntegerField
      FieldName = 'VLR_UNITARIO_DEC'
    end
    object qEDI_ConfigCOND_PGTO_INI: TIntegerField
      FieldName = 'COND_PGTO_INI'
    end
    object qEDI_ConfigCOND_PGTO_TAM: TIntegerField
      FieldName = 'COND_PGTO_TAM'
    end
    object qEDI_ConfigNOME_PRODUTO_INI: TIntegerField
      FieldName = 'NOME_PRODUTO_INI'
    end
    object qEDI_ConfigNOME_PRODUTO_TAM: TIntegerField
      FieldName = 'NOME_PRODUTO_TAM'
    end
    object qEDI_ConfigCNPJ_FORNECEDOR_INI: TIntegerField
      FieldName = 'CNPJ_FORNECEDOR_INI'
    end
    object qEDI_ConfigCNPJ_FORNECEDOR_TAM: TIntegerField
      FieldName = 'CNPJ_FORNECEDOR_TAM'
    end
    object qEDI_ConfigPLANO2_INI: TIntegerField
      FieldName = 'PLANO2_INI'
    end
    object qEDI_ConfigPLANO2_TAM: TIntegerField
      FieldName = 'PLANO2_TAM'
    end
    object qEDI_ConfigUSA_PLANO: TStringField
      FieldName = 'USA_PLANO'
      FixedChar = True
      Size = 1
    end
    object qEDI_ConfigDRAWBACK_INI: TIntegerField
      FieldName = 'DRAWBACK_INI'
    end
    object qEDI_ConfigDRAWBACK_TAM: TIntegerField
      FieldName = 'DRAWBACK_TAM'
    end
    object qEDI_ConfigTAMANHO_INI: TIntegerField
      FieldName = 'TAMANHO_INI'
    end
    object qEDI_ConfigTAMANHO_TAM: TIntegerField
      FieldName = 'TAMANHO_TAM'
    end
    object qEDI_ConfigRESERVADO_INI: TIntegerField
      FieldName = 'RESERVADO_INI'
    end
    object qEDI_ConfigRESERVADO_TAM: TIntegerField
      FieldName = 'RESERVADO_TAM'
    end
    object qEDI_ConfigQTD_DEC: TIntegerField
      FieldName = 'QTD_DEC'
    end
    object qEDI_ConfigITEM_INI: TIntegerField
      FieldName = 'ITEM_INI'
    end
    object qEDI_ConfigITEM_TAM: TIntegerField
      FieldName = 'ITEM_TAM'
    end
    object qEDI_ConfigCOD_COR_INI: TIntegerField
      FieldName = 'COD_COR_INI'
    end
    object qEDI_ConfigCOD_COR_TAM: TIntegerField
      FieldName = 'COD_COR_TAM'
    end
  end
  object qProduto_Forn: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_FORNECEDOR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COD_MATERIAL_FORN'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COD_COR_FORN'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TAMANHO_CLIENTE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT p.*, prod.inativo, prod.tipo_reg'
      'FROM PRODUTO_FORN P'
      'left join produto prod'
      'on p.id = prod.id'
      'WHERE P.ID_FORNECEDOR = :ID_FORNECEDOR'
      '  AND P.COD_MATERIAL_FORN = :COD_MATERIAL_FORN'
      '  AND P.COD_COR_FORN = :COD_COR_FORN'
      '  AND P.TAMANHO_CLIENTE = :TAMANHO_CLIENTE')
    SQLConnection = dmDatabase.scoDados
    Left = 376
    Top = 184
    object qProduto_FornID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProduto_FornITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qProduto_FornID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object qProduto_FornNOME_MATERIAL_FORN: TStringField
      FieldName = 'NOME_MATERIAL_FORN'
      Size = 100
    end
    object qProduto_FornCOD_MATERIAL_FORN: TStringField
      FieldName = 'COD_MATERIAL_FORN'
    end
    object qProduto_FornTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object qProduto_FornID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object qProduto_FornCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object qProduto_FornPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object qProduto_FornTAMANHO_CLIENTE: TStringField
      FieldName = 'TAMANHO_CLIENTE'
      Size = 10
    end
    object qProduto_FornINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object qProduto_FornTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object qProduto_FornCOD_COR_FORN: TStringField
      FieldName = 'COD_COR_FORN'
      Size = 10
    end
    object qProduto_FornNOME_COR_FORN: TStringField
      FieldName = 'NOME_COR_FORN'
      Size = 100
    end
  end
  object qRegra_Empresa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_OPERACAO'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Tipo_Empresa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Tipo_Cliente'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'UF_Cliente'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Pessoa_Cliente'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Finalidade'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT R.ID, R.id_operacao, I.id_cfop, I.id_variacao'
      'FROM REGRA_EMPRESA R'
      'INNER JOIN REGRA_EMPRESA_ITENS I'
      'ON R.id = I.id'
      'WHERE R.ID_OPERACAO = :ID_OPERACAO'
      '  AND I.tipo_empresa = :Tipo_Empresa'
      '  AND I.tipo_cliente = :Tipo_Cliente'
      '  AND I.uf_cliente = :UF_Cliente'
      '  AND I.pessoa_cliente = :Pessoa_Cliente'
      '  AND I.finalidade = :Finalidade')
    SQLConnection = dmDatabase.scoDados
    Left = 504
    Top = 216
    object qRegra_EmpresaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qRegra_EmpresaID_OPERACAO: TIntegerField
      FieldName = 'ID_OPERACAO'
    end
    object qRegra_EmpresaID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object qRegra_EmpresaID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
  end
  object sdsPedido_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT PI.*'#13#10'FROM PEDIDO_ITEM PI'#13#10'WHERE PI.ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 264
    object sdsPedido_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPedido_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsPedido_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsPedido_ItensID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsPedido_ItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsPedido_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsPedido_ItensQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object sdsPedido_ItensQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object sdsPedido_ItensQTD_CANCELADO: TFloatField
      FieldName = 'QTD_CANCELADO'
    end
    object sdsPedido_ItensVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object sdsPedido_ItensCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_ItensDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object sdsPedido_ItensFATURADO: TStringField
      FieldName = 'FATURADO'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_ItensDTFATURADO: TDateField
      FieldName = 'DTFATURADO'
    end
    object sdsPedido_ItensCOD_PRODUTO_CLIENTE: TStringField
      FieldName = 'COD_PRODUTO_CLIENTE'
      Size = 15
    end
    object sdsPedido_ItensTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object sdsPedido_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsPedido_ItensNUMOS: TStringField
      FieldName = 'NUMOS'
      Size = 30
    end
    object sdsPedido_ItensPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object sdsPedido_ItensVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object sdsPedido_ItensBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object sdsPedido_ItensVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object sdsPedido_ItensBASE_ICMSTRANSF: TFloatField
      FieldName = 'BASE_ICMSTRANSF'
    end
    object sdsPedido_ItensPERC_TRANSF: TFloatField
      FieldName = 'PERC_TRANSF'
    end
    object sdsPedido_ItensVLR_TRANSF: TFloatField
      FieldName = 'VLR_TRANSF'
    end
    object sdsPedido_ItensVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object sdsPedido_ItensBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
    end
    object sdsPedido_ItensVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
    end
    object sdsPedido_ItensPERC_ICMSSIMPLES: TFloatField
      FieldName = 'PERC_ICMSSIMPLES'
    end
    object sdsPedido_ItensBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
    end
    object sdsPedido_ItensVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
    end
    object sdsPedido_ItensVLR_DESCONTORATEIO: TFloatField
      FieldName = 'VLR_DESCONTORATEIO'
    end
    object sdsPedido_ItensID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object sdsPedido_ItensID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object sdsPedido_ItensID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object sdsPedido_ItensPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object sdsPedido_ItensPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object sdsPedido_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsPedido_ItensNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object sdsPedido_ItensOBS_COMPLEMENTAR: TStringField
      FieldName = 'OBS_COMPLEMENTAR'
      Size = 250
    end
    object sdsPedido_ItensCALCULARICMSSOBREIPI: TStringField
      FieldName = 'CALCULARICMSSOBREIPI'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_ItensVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsPedido_ItensID_CONFIG_CFOP: TIntegerField
      FieldName = 'ID_CONFIG_CFOP'
    end
    object sdsPedido_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsPedido_ItensQTD_AFATURAR: TFloatField
      FieldName = 'QTD_AFATURAR'
    end
    object sdsPedido_ItensID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
    object sdsPedido_ItensOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsPedido_ItensPERC_TRIBICMS: TFloatField
      FieldName = 'PERC_TRIBICMS'
    end
    object sdsPedido_ItensID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object sdsPedido_ItensVLR_UNITARIO_ATELIER: TFloatField
      FieldName = 'VLR_UNITARIO_ATELIER'
    end
    object sdsPedido_ItensVLR_TOTAL_ATELIER: TFloatField
      FieldName = 'VLR_TOTAL_ATELIER'
    end
    object sdsPedido_ItensDT_ENVIO_ATELIER: TDateField
      FieldName = 'DT_ENVIO_ATELIER'
    end
    object sdsPedido_ItensDT_RETORNO_ATELIER: TDateField
      FieldName = 'DT_RETORNO_ATELIER'
    end
    object sdsPedido_ItensVLR_PAGTO_ATELIER: TFloatField
      FieldName = 'VLR_PAGTO_ATELIER'
    end
    object sdsPedido_ItensDT_PAGTO_ATELIER: TDateField
      FieldName = 'DT_PAGTO_ATELIER'
    end
    object sdsPedido_ItensAPROVADO_ORC: TStringField
      FieldName = 'APROVADO_ORC'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_ItensMOTIVO_NAO_APROV: TMemoField
      FieldName = 'MOTIVO_NAO_APROV'
      BlobType = ftMemo
      Size = 1
    end
    object sdsPedido_ItensDTAPROVADO_NAO: TDateField
      FieldName = 'DTAPROVADO_NAO'
    end
    object sdsPedido_ItensID_ORCAMENTO: TIntegerField
      FieldName = 'ID_ORCAMENTO'
    end
    object sdsPedido_ItensITEM_ORCAMENTO: TIntegerField
      FieldName = 'ITEM_ORCAMENTO'
    end
    object sdsPedido_ItensQTD_LIBERADA: TFloatField
      FieldName = 'QTD_LIBERADA'
    end
    object sdsPedido_ItensQTD_PRODUZIDA: TFloatField
      FieldName = 'QTD_PRODUZIDA'
    end
    object sdsPedido_ItensNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object sdsPedido_ItensNUM_TALAO: TStringField
      FieldName = 'NUM_TALAO'
      Size = 15
    end
    object sdsPedido_ItensGERAR_LOTE: TStringField
      FieldName = 'GERAR_LOTE'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_ItensCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object sdsPedido_ItensDTPRODUCAO: TDateField
      FieldName = 'DTPRODUCAO'
    end
    object sdsPedido_ItensID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
  end
  object cdsPedido_Itens: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 176
    Top = 264
    object cdsPedido_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedido_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPedido_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsPedido_ItensID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsPedido_ItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsPedido_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedido_ItensQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsPedido_ItensQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsPedido_ItensQTD_CANCELADO: TFloatField
      FieldName = 'QTD_CANCELADO'
    end
    object cdsPedido_ItensVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object cdsPedido_ItensCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ItensDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsPedido_ItensFATURADO: TStringField
      FieldName = 'FATURADO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ItensDTFATURADO: TDateField
      FieldName = 'DTFATURADO'
    end
    object cdsPedido_ItensCOD_PRODUTO_CLIENTE: TStringField
      FieldName = 'COD_PRODUTO_CLIENTE'
      Size = 15
    end
    object cdsPedido_ItensTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object cdsPedido_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsPedido_ItensNUMOS: TStringField
      FieldName = 'NUMOS'
      Size = 30
    end
    object cdsPedido_ItensPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object cdsPedido_ItensVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object cdsPedido_ItensBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object cdsPedido_ItensVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object cdsPedido_ItensBASE_ICMSTRANSF: TFloatField
      FieldName = 'BASE_ICMSTRANSF'
    end
    object cdsPedido_ItensPERC_TRANSF: TFloatField
      FieldName = 'PERC_TRANSF'
    end
    object cdsPedido_ItensVLR_TRANSF: TFloatField
      FieldName = 'VLR_TRANSF'
    end
    object cdsPedido_ItensVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object cdsPedido_ItensBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
    end
    object cdsPedido_ItensVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
    end
    object cdsPedido_ItensPERC_ICMSSIMPLES: TFloatField
      FieldName = 'PERC_ICMSSIMPLES'
    end
    object cdsPedido_ItensBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
    end
    object cdsPedido_ItensVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
    end
    object cdsPedido_ItensVLR_DESCONTORATEIO: TFloatField
      FieldName = 'VLR_DESCONTORATEIO'
    end
    object cdsPedido_ItensID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsPedido_ItensID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsPedido_ItensID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object cdsPedido_ItensPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsPedido_ItensPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsPedido_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsPedido_ItensNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsPedido_ItensOBS_COMPLEMENTAR: TStringField
      FieldName = 'OBS_COMPLEMENTAR'
      Size = 250
    end
    object cdsPedido_ItensCALCULARICMSSOBREIPI: TStringField
      FieldName = 'CALCULARICMSSOBREIPI'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ItensVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsPedido_ItensID_CONFIG_CFOP: TIntegerField
      FieldName = 'ID_CONFIG_CFOP'
    end
    object cdsPedido_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsPedido_ItensQTD_AFATURAR: TFloatField
      FieldName = 'QTD_AFATURAR'
    end
    object cdsPedido_ItensID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
    object cdsPedido_ItensOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPedido_ItensPERC_TRIBICMS: TFloatField
      FieldName = 'PERC_TRIBICMS'
    end
    object cdsPedido_ItensID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object cdsPedido_ItensVLR_UNITARIO_ATELIER: TFloatField
      FieldName = 'VLR_UNITARIO_ATELIER'
    end
    object cdsPedido_ItensVLR_TOTAL_ATELIER: TFloatField
      FieldName = 'VLR_TOTAL_ATELIER'
    end
    object cdsPedido_ItensDT_ENVIO_ATELIER: TDateField
      FieldName = 'DT_ENVIO_ATELIER'
    end
    object cdsPedido_ItensDT_RETORNO_ATELIER: TDateField
      FieldName = 'DT_RETORNO_ATELIER'
    end
    object cdsPedido_ItensVLR_PAGTO_ATELIER: TFloatField
      FieldName = 'VLR_PAGTO_ATELIER'
    end
    object cdsPedido_ItensDT_PAGTO_ATELIER: TDateField
      FieldName = 'DT_PAGTO_ATELIER'
    end
    object cdsPedido_ItensAPROVADO_ORC: TStringField
      FieldName = 'APROVADO_ORC'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ItensMOTIVO_NAO_APROV: TMemoField
      FieldName = 'MOTIVO_NAO_APROV'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPedido_ItensDTAPROVADO_NAO: TDateField
      FieldName = 'DTAPROVADO_NAO'
    end
    object cdsPedido_ItensID_ORCAMENTO: TIntegerField
      FieldName = 'ID_ORCAMENTO'
    end
    object cdsPedido_ItensITEM_ORCAMENTO: TIntegerField
      FieldName = 'ITEM_ORCAMENTO'
    end
    object cdsPedido_ItensQTD_LIBERADA: TFloatField
      FieldName = 'QTD_LIBERADA'
    end
    object cdsPedido_ItensQTD_PRODUZIDA: TFloatField
      FieldName = 'QTD_PRODUZIDA'
    end
    object cdsPedido_ItensNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object cdsPedido_ItensNUM_TALAO: TStringField
      FieldName = 'NUM_TALAO'
      Size = 15
    end
    object cdsPedido_ItensGERAR_LOTE: TStringField
      FieldName = 'GERAR_LOTE'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ItensCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object cdsPedido_ItensDTPRODUCAO: TDateField
      FieldName = 'DTPRODUCAO'
    end
    object cdsPedido_ItensID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
  end
  object dsPedido_Itens: TDataSource
    DataSet = cdsPedido_Itens
    Left = 248
    Top = 264
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = sdsPedido_Itens
    Left = 136
    Top = 264
  end
  object qCFOP: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Item'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT T.id, T.codcfop, T.id_csticms, T.id_cstipi, T.id_pis, T.i' +
        'd_cofins,'
      
        'V.id_csticms id_csticms_Var, v.id_cstipi id_cstipi_Var, v.id_pis' +
        ' id_pis_Var,'
      'v.id_cofins id_cofins_var, v.item'
      'FROM TAB_CFOP T'
      'LEFT JOIN tab_cfop_variacao V'
      'ON T.id = V.id'
      'where t.id = :ID'
      '  and v.item = :Item')
    SQLConnection = dmDatabase.scoDados
    Left = 472
    Top = 288
    object qCFOPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCFOPCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object qCFOPID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object qCFOPID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object qCFOPID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object qCFOPID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object qCFOPID_CSTICMS_VAR: TIntegerField
      FieldName = 'ID_CSTICMS_VAR'
    end
    object qCFOPID_CSTIPI_VAR: TIntegerField
      FieldName = 'ID_CSTIPI_VAR'
    end
    object qCFOPID_PIS_VAR: TIntegerField
      FieldName = 'ID_PIS_VAR'
    end
    object qCFOPID_COFINS_VAR: TIntegerField
      FieldName = 'ID_COFINS_VAR'
    end
    object qCFOPITEM: TIntegerField
      FieldName = 'ITEM'
    end
  end
  object qVerifica_Pedido: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PEDIDO_CLIENTE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT P.id, P.id_cliente, P.pedido_cliente, P.NUM_PEDIDO'
      'FROM PEDIDO P'
      'WHERE P.ID_CLIENTE = :ID_CLIENTE'
      '  AND P.PEDIDO_CLIENTE = :PEDIDO_CLIENTE')
    SQLConnection = dmDatabase.scoDados
    Left = 344
    Top = 336
    object qVerifica_PedidoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qVerifica_PedidoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object qVerifica_PedidoPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object qVerifica_PedidoNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
  end
  object sdsProduto_Forn: TSQLDataSet
    CommandText = 
      'SELECT P.*, PES.NOME NOME_CLIENTE, PES.CNPJ_CPF, PROD.REFERENCIA' +
      ','#13#10'COMB.nome NOME_COMBINACAO'#13#10'FROM PRODUTO_FORN P'#13#10'INNER JOIN PE' +
      'SSOA PES'#13#10'ON P.ID_FORNECEDOR = PES.CODIGO'#13#10'INNER JOIN PRODUTO PR' +
      'OD'#13#10'ON P.ID = PROD.ID'#13#10'LEFT JOIN COMBINACAO COMB'#13#10'ON P.ID_COR = ' +
      'COMB.ID'#13#10'WHERE P.COD_MATERIAL_FORN LIKE :COD_MATERIAL_FORN ||'#39'%'#39 +
      #13#10'  AND P.COD_COR_FORN = :COD_COR_FORN'#13#10'  AND P.TAMANHO_CLIENTE ' +
      '= :TAMANHO_CLIENTE'#13#10' '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'COD_MATERIAL_FORN'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COD_COR_FORN'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TAMANHO_CLIENTE'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 592
    Top = 48
    object sdsProduto_FornID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProduto_FornITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsProduto_FornID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object sdsProduto_FornNOME_MATERIAL_FORN: TStringField
      FieldName = 'NOME_MATERIAL_FORN'
      Size = 100
    end
    object sdsProduto_FornCOD_MATERIAL_FORN: TStringField
      FieldName = 'COD_MATERIAL_FORN'
    end
    object sdsProduto_FornTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsProduto_FornID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsProduto_FornCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object sdsProduto_FornPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object sdsProduto_FornTAMANHO_CLIENTE: TStringField
      FieldName = 'TAMANHO_CLIENTE'
      Size = 10
    end
    object sdsProduto_FornNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object sdsProduto_FornCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object sdsProduto_FornREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsProduto_FornNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
    object sdsProduto_FornCOD_COR_FORN: TStringField
      FieldName = 'COD_COR_FORN'
      Size = 10
    end
    object sdsProduto_FornNOME_COR_FORN: TStringField
      FieldName = 'NOME_COR_FORN'
      Size = 100
    end
  end
  object cdsProduto_Forn: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CNPJ_CPF'
    Params = <>
    ProviderName = 'dspProduto_Forn'
    Left = 664
    Top = 48
    object cdsProduto_FornID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProduto_FornITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsProduto_FornID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsProduto_FornNOME_MATERIAL_FORN: TStringField
      FieldName = 'NOME_MATERIAL_FORN'
      Size = 100
    end
    object cdsProduto_FornCOD_MATERIAL_FORN: TStringField
      FieldName = 'COD_MATERIAL_FORN'
    end
    object cdsProduto_FornTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsProduto_FornID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsProduto_FornCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object cdsProduto_FornPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsProduto_FornTAMANHO_CLIENTE: TStringField
      FieldName = 'TAMANHO_CLIENTE'
      Size = 10
    end
    object cdsProduto_FornNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsProduto_FornCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsProduto_FornREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsProduto_FornNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 60
    end
    object cdsProduto_FornCOD_COR_FORN: TStringField
      FieldName = 'COD_COR_FORN'
      Size = 10
    end
    object cdsProduto_FornNOME_COR_FORN: TStringField
      FieldName = 'NOME_COR_FORN'
      Size = 100
    end
  end
  object dspProduto_Forn: TDataSetProvider
    DataSet = sdsProduto_Forn
    Left = 632
    Top = 48
  end
  object dsProduto_Forn: TDataSource
    DataSet = cdsProduto_Forn
    Left = 712
    Top = 48
  end
  object sdsProduto_Forn_CNPJ: TSQLDataSet
    CommandText = 
      'SELECT P.*, PES.NOME NOME_CLIENTE, PES.CNPJ_CPF, PROD.REFERENCIA' +
      #13#10'FROM PRODUTO_FORN P'#13#10'INNER JOIN PESSOA PES'#13#10'ON P.ID_FORNECEDOR' +
      ' = PES.CODIGO'#13#10'INNER JOIN PRODUTO PROD'#13#10'ON P.ID = PROD.ID'#13#10'WHERE' +
      ' PES.cnpj_cpf = :CNPJ_CPF'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CNPJ_CPF'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 592
    Top = 104
    object sdsProduto_Forn_CNPJID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProduto_Forn_CNPJITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsProduto_Forn_CNPJID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object sdsProduto_Forn_CNPJNOME_MATERIAL_FORN: TStringField
      FieldName = 'NOME_MATERIAL_FORN'
      Size = 100
    end
    object sdsProduto_Forn_CNPJCOD_MATERIAL_FORN: TStringField
      FieldName = 'COD_MATERIAL_FORN'
    end
    object sdsProduto_Forn_CNPJTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsProduto_Forn_CNPJID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsProduto_Forn_CNPJCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object sdsProduto_Forn_CNPJPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object sdsProduto_Forn_CNPJTAMANHO_CLIENTE: TStringField
      FieldName = 'TAMANHO_CLIENTE'
      Size = 10
    end
    object sdsProduto_Forn_CNPJNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object sdsProduto_Forn_CNPJCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object sdsProduto_Forn_CNPJREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsProduto_Forn_CNPJCOD_COR_FORN: TStringField
      FieldName = 'COD_COR_FORN'
      Size = 10
    end
    object sdsProduto_Forn_CNPJNOME_COR_FORN: TStringField
      FieldName = 'NOME_COR_FORN'
      Size = 100
    end
  end
  object cdsProduto_Forn_CNPJ: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COD_MATERIAL_FORN'
    Params = <>
    ProviderName = 'dspProduto_Forn_CNPJ'
    Left = 664
    Top = 104
    object cdsProduto_Forn_CNPJID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProduto_Forn_CNPJITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsProduto_Forn_CNPJID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsProduto_Forn_CNPJNOME_MATERIAL_FORN: TStringField
      FieldName = 'NOME_MATERIAL_FORN'
      Size = 100
    end
    object cdsProduto_Forn_CNPJCOD_MATERIAL_FORN: TStringField
      FieldName = 'COD_MATERIAL_FORN'
    end
    object cdsProduto_Forn_CNPJTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsProduto_Forn_CNPJID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsProduto_Forn_CNPJCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object cdsProduto_Forn_CNPJPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsProduto_Forn_CNPJTAMANHO_CLIENTE: TStringField
      FieldName = 'TAMANHO_CLIENTE'
      Size = 10
    end
    object cdsProduto_Forn_CNPJNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsProduto_Forn_CNPJCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsProduto_Forn_CNPJREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsProduto_Forn_CNPJCOD_COR_FORN: TStringField
      FieldName = 'COD_COR_FORN'
      Size = 10
    end
    object cdsProduto_Forn_CNPJNOME_COR_FORN: TStringField
      FieldName = 'NOME_COR_FORN'
      Size = 100
    end
  end
  object dspProduto_Forn_CNPJ: TDataSetProvider
    DataSet = sdsProduto_Forn_CNPJ
    Left = 632
    Top = 104
  end
  object dsProduto_Forn_CNPJ: TDataSource
    DataSet = cdsProduto_Forn_CNPJ
    Left = 712
    Top = 104
  end
  object qProduto_Tam: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT P.*'
      'FROM produto_tam P'
      'WHERE P.ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 656
    Top = 216
    object qProduto_TamID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProduto_TamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
  end
  object qParametros_Geral: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_GERAL')
    SQLConnection = dmDatabase.scoDados
    Left = 104
    Top = 176
    object qParametros_GeralEND_ARQ_EDI: TStringField
      FieldName = 'END_ARQ_EDI'
      Size = 200
    end
  end
  object sdsOperacao: TSQLDataSet
    CommandText = 'SELECT ID,NOME FROM operacao_nota WHERE MOSTRA_EDI = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 544
    Top = 328
    object sdsOperacaoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = []
      Required = True
    end
    object sdsOperacaoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dspOperacao: TDataSetProvider
    DataSet = sdsOperacao
    Left = 576
    Top = 328
  end
  object cdsOperacao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOperacao'
    Left = 608
    Top = 328
    object cdsOperacaoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = []
      Required = True
    end
    object cdsOperacaoNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 40
    end
  end
  object dsOperacao: TDataSource
    DataSet = cdsOperacao
    Left = 640
    Top = 328
  end
  object qComb: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT C.NOME'
      'FROM COMBINACAO C'
      'WHERE C.ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 600
    Top = 176
    object qCombNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object mVer: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Pedido'
        DataType = ftInteger
      end
      item
        Name = 'Num_Pedido'
        DataType = ftInteger
      end
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'Item_Cliente'
        DataType = ftInteger
      end
      item
        Name = 'Item_EDI'
        DataType = ftInteger
      end
      item
        Name = 'Num_OS'
        DataType = ftString
        Size = 30
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
        Name = 'Cod_Produto_Cli'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Diferenca'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ID_Produto_EDI'
        DataType = ftInteger
      end
      item
        Name = 'ID_Cor_EDI'
        DataType = ftInteger
      end>
    IndexDefs = <>
    IndexFieldNames = 'Item'
    Params = <>
    StoreDefs = True
    Left = 136
    Top = 368
    Data = {
      1B0100009619E0BD01000000180000000C0000000000030000001B010949445F
      50656469646F04000100000000000A4E756D5F50656469646F04000100000000
      00044974656D04000100000000000C4974656D5F436C69656E74650400010000
      000000084974656D5F4544490400010000000000064E756D5F4F530100490000
      000100055749445448020002001E000A49445F50726F6475746F040001000000
      00000649445F436F7204000100000000000F436F645F50726F6475746F5F436C
      690100490000000100055749445448020002001E00094469666572656E636101
      00490000000100055749445448020002001E000E49445F50726F6475746F5F45
      444904000100000000000A49445F436F725F45444904000100000000000000}
    object mVerID_Pedido: TIntegerField
      FieldName = 'ID_Pedido'
    end
    object mVerNum_Pedido: TIntegerField
      FieldName = 'Num_Pedido'
    end
    object mVerItem: TIntegerField
      FieldName = 'Item'
    end
    object mVerItem_Cliente: TIntegerField
      FieldName = 'Item_Cliente'
    end
    object mVerItem_EDI: TIntegerField
      FieldName = 'Item_EDI'
    end
    object mVerNum_OS: TStringField
      FieldName = 'Num_OS'
      Size = 30
    end
    object mVerID_Produto: TIntegerField
      FieldName = 'ID_Produto'
    end
    object mVerID_Cor: TIntegerField
      FieldName = 'ID_Cor'
    end
    object mVerCod_Produto_Cli: TStringField
      FieldName = 'Cod_Produto_Cli'
      Size = 30
    end
    object mVerDiferenca: TStringField
      FieldName = 'Diferenca'
      Size = 30
    end
    object mVerID_Produto_EDI: TIntegerField
      FieldName = 'ID_Produto_EDI'
    end
    object mVerID_Cor_EDI: TIntegerField
      FieldName = 'ID_Cor_EDI'
    end
  end
  object dsmVer: TDataSource
    DataSet = mVer
    Left = 176
    Top = 368
  end
  object qVer: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pedido_cliente'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'item_cliente'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select i.id, p.num_pedido, i.numos, i.item, i.item_cliente,'
      'i.id_produto, i.id_cor, i.cod_produto_cliente'
      'from pedido_item i'
      'inner join pedido p'
      'on p.id = i.id'
      'where p.pedido_cliente = :pedido_cliente'
      '  and i.item_cliente = :item_cliente')
    SQLConnection = dmDatabase.scoDados
    Left = 464
    Top = 384
    object qVerID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qVerNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object qVerNUMOS: TStringField
      FieldName = 'NUMOS'
      Size = 30
    end
    object qVerITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qVerITEM_CLIENTE: TIntegerField
      FieldName = 'ITEM_CLIENTE'
    end
    object qVerID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object qVerID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object qVerCOD_PRODUTO_CLIENTE: TStringField
      FieldName = 'COD_PRODUTO_CLIENTE'
      Size = 15
    end
  end
end
