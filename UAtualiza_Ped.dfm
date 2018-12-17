object frmAtualiza_Ped: TfrmAtualiza_Ped
  Left = 233
  Top = 181
  Width = 530
  Height = 250
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'frmAtualiza_Ped'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 40
    Top = 96
    Width = 209
    Height = 25
    Caption = 'Atualizar Pedidos'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object ProgressBar1: TProgressBar
    Left = 40
    Top = 128
    Width = 425
    Height = 17
    TabOrder = 1
  end
  object sdsPedido: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PEDIDO'#13#10'WHERE ID = 1'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 104
    Top = 5
    object sdsPedidoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPedidoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsPedidoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsPedidoPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object sdsPedidoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsPedidoID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object sdsPedidoID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object sdsPedidoID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object sdsPedidoID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsPedidoID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object sdsPedidoTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
    object sdsPedidoPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsPedidoQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsPedidoQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object sdsPedidoQTD_CANCELADO: TFloatField
      FieldName = 'QTD_CANCELADO'
    end
    object sdsPedidoQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object sdsPedidoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsPedidoVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object sdsPedidoCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object sdsPedidoDOLAR: TStringField
      FieldName = 'DOLAR'
      FixedChar = True
      Size = 1
    end
    object sdsPedidoDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object sdsPedidoPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object sdsPedidoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsPedidoVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object sdsPedidoBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object sdsPedidoVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object sdsPedidoBASE_ICMSTRANSF: TFloatField
      FieldName = 'BASE_ICMSTRANSF'
    end
    object sdsPedidoPERC_TRANSF: TFloatField
      FieldName = 'PERC_TRANSF'
    end
    object sdsPedidoVLR_TRANSF: TFloatField
      FieldName = 'VLR_TRANSF'
    end
    object sdsPedidoVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object sdsPedidoBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
    end
    object sdsPedidoVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
    end
    object sdsPedidoPERC_ICMSSIMPLES: TFloatField
      FieldName = 'PERC_ICMSSIMPLES'
    end
    object sdsPedidoBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
    end
    object sdsPedidoVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
    end
    object sdsPedidoID_CONFIG_CFOP: TIntegerField
      FieldName = 'ID_CONFIG_CFOP'
    end
    object sdsPedidoTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      Size = 1
    end
    object sdsPedidoLOCALENTREGA: TStringField
      FieldName = 'LOCALENTREGA'
      FixedChar = True
      Size = 1
    end
    object sdsPedidoVLR_ITENS: TFloatField
      FieldName = 'VLR_ITENS'
    end
    object sdsPedidoPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object sdsPedidoPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object sdsPedidoCALCULARICMSSOBREIPI: TStringField
      FieldName = 'CALCULARICMSSOBREIPI'
      FixedChar = True
      Size = 1
    end
    object sdsPedidoID_REGIMETRIB: TIntegerField
      FieldName = 'ID_REGIMETRIB'
    end
    object sdsPedidoSIMPLES_FILIAL: TStringField
      FieldName = 'SIMPLES_FILIAL'
      FixedChar = True
      Size = 1
    end
    object sdsPedidoDESCRICAO_DESC: TStringField
      FieldName = 'DESCRICAO_DESC'
      Size = 70
    end
    object sdsPedidoIMP_OC_NOTA: TStringField
      FieldName = 'IMP_OC_NOTA'
      FixedChar = True
      Size = 1
    end
    object sdsPedidoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object sdsPedidoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object sdsPedidoVALIDADE: TStringField
      FieldName = 'VALIDADE'
      Size = 30
    end
    object sdsPedidoNUM_ORCAMENTO: TIntegerField
      FieldName = 'NUM_ORCAMENTO'
    end
    object sdsPedidoNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object sdsPedidoID_OPERACAO_NOTA: TIntegerField
      FieldName = 'ID_OPERACAO_NOTA'
    end
    object sdsPedidoFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object sdsPedidoVLR_ADIANTAMENTO: TFloatField
      FieldName = 'VLR_ADIANTAMENTO'
    end
    object sdsPedidoFATURADO: TStringField
      FieldName = 'FATURADO'
      FixedChar = True
      Size = 1
    end
    object sdsPedidoID_SOLICITANTE: TIntegerField
      FieldName = 'ID_SOLICITANTE'
    end
    object sdsPedidoID_PROJETO: TIntegerField
      FieldName = 'ID_PROJETO'
    end
    object sdsPedidoAMOSTRA_GRATIS: TStringField
      FieldName = 'AMOSTRA_GRATIS'
      FixedChar = True
      Size = 1
    end
    object sdsPedidoID_CLIENTE_TRIANGULAR: TIntegerField
      FieldName = 'ID_CLIENTE_TRIANGULAR'
    end
  end
  object dspPedido: TDataSetProvider
    DataSet = sdsPedido
    Left = 144
    Top = 5
  end
  object cdsPedido: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspPedido'
    Left = 176
    Top = 8
    object cdsPedidoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedidoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsPedidoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsPedidoPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsPedidoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsPedidoID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsPedidoID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object cdsPedidoID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsPedidoID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsPedidoID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsPedidoTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
    object cdsPedidoPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
      DisplayFormat = '0.00'
    end
    object cdsPedidoQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedidoQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsPedidoQTD_CANCELADO: TFloatField
      FieldName = 'QTD_CANCELADO'
    end
    object cdsPedidoQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsPedidoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsPedidoVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsPedidoCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoDOLAR: TStringField
      FieldName = 'DOLAR'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsPedidoPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsPedidoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPedidoVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
      DisplayFormat = '0.00'
    end
    object cdsPedidoBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      DisplayFormat = '0.00'
    end
    object cdsPedidoVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      DisplayFormat = '0.00'
    end
    object cdsPedidoBASE_ICMSTRANSF: TFloatField
      FieldName = 'BASE_ICMSTRANSF'
      DisplayFormat = '0.00'
    end
    object cdsPedidoPERC_TRANSF: TFloatField
      FieldName = 'PERC_TRANSF'
      DisplayFormat = '0.00'
    end
    object cdsPedidoVLR_TRANSF: TFloatField
      FieldName = 'VLR_TRANSF'
      DisplayFormat = '0.00'
    end
    object cdsPedidoVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      DisplayFormat = '0.00'
    end
    object cdsPedidoBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
      DisplayFormat = '0.00'
    end
    object cdsPedidoVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
      DisplayFormat = '0.00'
    end
    object cdsPedidoPERC_ICMSSIMPLES: TFloatField
      FieldName = 'PERC_ICMSSIMPLES'
      DisplayFormat = '0.00'
    end
    object cdsPedidoBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
      DisplayFormat = '0.00'
    end
    object cdsPedidoVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '0.00'
    end
    object cdsPedidoID_CONFIG_CFOP: TIntegerField
      FieldName = 'ID_CONFIG_CFOP'
    end
    object cdsPedidoTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      Size = 1
    end
    object cdsPedidoLOCALENTREGA: TStringField
      FieldName = 'LOCALENTREGA'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoVLR_ITENS: TFloatField
      FieldName = 'VLR_ITENS'
      DisplayFormat = '0.00'
    end
    object cdsPedidoPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object cdsPedidoPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object cdsPedidoCALCULARICMSSOBREIPI: TStringField
      FieldName = 'CALCULARICMSSOBREIPI'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoID_REGIMETRIB: TIntegerField
      FieldName = 'ID_REGIMETRIB'
    end
    object cdsPedidoSIMPLES_FILIAL: TStringField
      FieldName = 'SIMPLES_FILIAL'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoDESCRICAO_DESC: TStringField
      FieldName = 'DESCRICAO_DESC'
      Size = 70
    end
    object cdsPedidoIMP_OC_NOTA: TStringField
      FieldName = 'IMP_OC_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsPedidoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoVALIDADE: TStringField
      FieldName = 'VALIDADE'
      Size = 30
    end
    object cdsPedidoNUM_ORCAMENTO: TIntegerField
      FieldName = 'NUM_ORCAMENTO'
    end
    object cdsPedidoNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPedidoID_OPERACAO_NOTA: TIntegerField
      FieldName = 'ID_OPERACAO_NOTA'
    end
    object cdsPedidoFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoVLR_ADIANTAMENTO: TFloatField
      FieldName = 'VLR_ADIANTAMENTO'
    end
    object cdsPedidoFATURADO: TStringField
      FieldName = 'FATURADO'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoID_SOLICITANTE: TIntegerField
      FieldName = 'ID_SOLICITANTE'
    end
    object cdsPedidoID_PROJETO: TIntegerField
      FieldName = 'ID_PROJETO'
    end
    object cdsPedidoAMOSTRA_GRATIS: TStringField
      FieldName = 'AMOSTRA_GRATIS'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoID_CLIENTE_TRIANGULAR: TIntegerField
      FieldName = 'ID_CLIENTE_TRIANGULAR'
    end
    object cdsPedidosdsPedido_Itens: TDataSetField
      FieldName = 'sdsPedido_Itens'
    end
  end
  object dsPedido: TDataSource
    DataSet = cdsPedido
    Left = 208
    Top = 5
  end
  object dsPedido_Mestre: TDataSource
    DataSet = sdsPedido
    Left = 80
    Top = 32
  end
  object sdsPedido_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PI.*, CFOP.CODCFOP,  CSTICMS.COD_CST, CSTIPI.COD_IPI'#13#10'FRO' +
      'M PEDIDO_ITEM PI'#13#10#13#10'LEFT JOIN TAB_CFOP CFOP'#13#10'ON PI.ID_CFOP = CFO' +
      'P.ID'#13#10#13#10'LEFT JOIN TAB_CSTICMS CSTICMS'#13#10'ON PI.ID_CSTICMS = CSTICM' +
      'S.ID'#13#10'LEFT JOIN TAB_CSTIPI CSTIPI'#13#10'ON PI.ID_CSTIPI = CSTIPI.ID'#13#10 +
      #13#10'WHERE PI.ID = :ID'#13#10
    DataSource = dsPedido_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 112
    Top = 56
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
      Size = 3
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
    object sdsPedido_ItensCOD_IPI: TStringField
      FieldName = 'COD_IPI'
      ProviderFlags = []
      Size = 2
    end
    object sdsPedido_ItensCOD_CST: TStringField
      FieldName = 'COD_CST'
      ProviderFlags = []
      Size = 3
    end
    object sdsPedido_ItensCODCFOP: TStringField
      FieldName = 'CODCFOP'
      ProviderFlags = []
      Size = 5
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
    object sdsPedido_ItensGERAR_LOTE: TStringField
      FieldName = 'GERAR_LOTE'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_ItensCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object sdsPedido_ItensID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
  end
  object cdsPedido_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPedidosdsPedido_Itens
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 144
    Top = 56
    object cdsPedido_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedido_ItensITEM: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPedido_ItensID_PRODUTO: TIntegerField
      DisplayLabel = 'ID Produto'
      FieldName = 'ID_PRODUTO'
    end
    object cdsPedido_ItensTAMANHO: TStringField
      DisplayLabel = 'Tamanho'
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsPedido_ItensQTD: TFloatField
      DisplayLabel = 'Qtd.'
      FieldName = 'QTD'
      DisplayFormat = '0.000##'
    end
    object cdsPedido_ItensQTD_FATURADO: TFloatField
      DisplayLabel = 'Qtd. Faturado'
      FieldName = 'QTD_FATURADO'
      DisplayFormat = '0.000##'
    end
    object cdsPedido_ItensQTD_RESTANTE: TFloatField
      DisplayLabel = 'Qtd. Pendente'
      FieldName = 'QTD_RESTANTE'
      DisplayFormat = '0.000##'
    end
    object cdsPedido_ItensQTD_CANCELADO: TFloatField
      DisplayLabel = 'Qtd. Cancelado'
      FieldName = 'QTD_CANCELADO'
      DisplayFormat = '0.000##'
    end
    object cdsPedido_ItensVLR_DESCONTO: TFloatField
      DisplayLabel = 'Vlr. Desconto'
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ItensCANCELADO: TStringField
      DisplayLabel = 'Cancelado'
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ItensDTENTREGA: TDateField
      DisplayLabel = 'Dt. Entrega'
      FieldName = 'DTENTREGA'
    end
    object cdsPedido_ItensFATURADO: TStringField
      DisplayLabel = 'Faturado'
      FieldName = 'FATURADO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ItensDTFATURADO: TDateField
      DisplayLabel = 'Dt. Faturado'
      FieldName = 'DTFATURADO'
    end
    object cdsPedido_ItensCOD_PRODUTO_CLIENTE: TStringField
      DisplayLabel = 'C'#243'd. Produto Cliente'
      FieldName = 'COD_PRODUTO_CLIENTE'
      Size = 15
    end
    object cdsPedido_ItensTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Size = 1
    end
    object cdsPedido_ItensUNIDADE: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsPedido_ItensNUMOS: TStringField
      DisplayLabel = 'N'#186' OS'
      FieldName = 'NUMOS'
      Size = 30
    end
    object cdsPedido_ItensPERC_DESCONTO: TFloatField
      DisplayLabel = '% Desconto'
      FieldName = 'PERC_DESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ItensVLR_FRETE: TFloatField
      DisplayLabel = 'Vlr. Frete'
      FieldName = 'VLR_FRETE'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ItensBASE_ICMS: TFloatField
      DisplayLabel = 'Base Icms'
      FieldName = 'BASE_ICMS'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ItensVLR_ICMS: TFloatField
      DisplayLabel = 'Vlr. Icms'
      FieldName = 'VLR_ICMS'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ItensBASE_ICMSTRANSF: TFloatField
      DisplayLabel = 'Base Icms Transf.'
      FieldName = 'BASE_ICMSTRANSF'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ItensPERC_TRANSF: TFloatField
      DisplayLabel = '% Icms Transf.'
      FieldName = 'PERC_TRANSF'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ItensVLR_TRANSF: TFloatField
      DisplayLabel = 'Vlr. Transf.'
      FieldName = 'VLR_TRANSF'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ItensVLR_IPI: TFloatField
      DisplayLabel = 'Vlr. IPI'
      FieldName = 'VLR_IPI'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ItensBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ItensVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ItensPERC_ICMSSIMPLES: TFloatField
      FieldName = 'PERC_ICMSSIMPLES'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ItensBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ItensVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ItensVLR_DESCONTORATEIO: TFloatField
      FieldName = 'VLR_DESCONTORATEIO'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ItensID_CFOP: TIntegerField
      DisplayLabel = 'ID CFOP'
      FieldName = 'ID_CFOP'
    end
    object cdsPedido_ItensID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsPedido_ItensID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object cdsPedido_ItensPERC_ICMS: TFloatField
      DisplayLabel = '% Icms'
      FieldName = 'PERC_ICMS'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ItensPERC_IPI: TFloatField
      DisplayLabel = '% Ipi'
      FieldName = 'PERC_IPI'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ItensREFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'REFERENCIA'
    end
    object cdsPedido_ItensNOMEPRODUTO: TStringField
      DisplayLabel = 'Nome Produto'
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsPedido_ItensOBS_COMPLEMENTAR: TStringField
      DisplayLabel = 'Obs Complementar'
      FieldName = 'OBS_COMPLEMENTAR'
      Size = 250
    end
    object cdsPedido_ItensCALCULARICMSSOBREIPI: TStringField
      FieldName = 'CALCULARICMSSOBREIPI'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ItensVLR_UNITARIO: TFloatField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.000###'
    end
    object cdsPedido_ItensID_CONFIG_CFOP: TIntegerField
      FieldName = 'ID_CONFIG_CFOP'
    end
    object cdsPedido_ItensCODCFOP: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'CODCFOP'
      ProviderFlags = []
      Size = 5
    end
    object cdsPedido_ItensCOD_CST: TStringField
      DisplayLabel = 'CST Icms'
      FieldName = 'COD_CST'
      ProviderFlags = []
      Size = 3
    end
    object cdsPedido_ItensCOD_IPI: TStringField
      DisplayLabel = 'CST IPI'
      FieldName = 'COD_IPI'
      ProviderFlags = []
      Size = 2
    end
    object cdsPedido_ItensVLR_TOTAL: TFloatField
      DisplayLabel = 'Vlr. Total'
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
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
      DisplayFormat = '0.00'
    end
    object cdsPedido_ItensVLR_TOTAL_ATELIER: TFloatField
      FieldName = 'VLR_TOTAL_ATELIER'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ItensDT_ENVIO_ATELIER: TDateField
      FieldName = 'DT_ENVIO_ATELIER'
    end
    object cdsPedido_ItensDT_RETORNO_ATELIER: TDateField
      FieldName = 'DT_RETORNO_ATELIER'
    end
    object cdsPedido_ItensVLR_PAGTO_ATELIER: TFloatField
      FieldName = 'VLR_PAGTO_ATELIER'
      DisplayFormat = '0.00'
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
      DisplayFormat = '0.000##'
    end
    object cdsPedido_ItensQTD_PRODUZIDA: TFloatField
      FieldName = 'QTD_PRODUZIDA'
      DisplayFormat = '0.000##'
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
    object cdsPedido_ItensID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
  end
  object dsPedido_Itens: TDataSource
    DataSet = cdsPedido_Itens
    Left = 176
    Top = 56
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
    Left = 328
    Top = 32
  end
end
