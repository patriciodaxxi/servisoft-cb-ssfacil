object DMCopiaPedido: TDMCopiaPedido
  OldCreateOrder = False
  Left = 396
  Top = 200
  Height = 368
  Width = 688
  object sdsPedido: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PEDIDO'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 104
    Top = 21
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
    object sdsPedidoID_CLIENTE_TRIANGULAR: TIntegerField
      FieldName = 'ID_CLIENTE_TRIANGULAR'
    end
    object sdsPedidoNUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object sdsPedidoFRETE_SOMAR: TStringField
      FieldName = 'FRETE_SOMAR'
      FixedChar = True
      Size = 1
    end
    object sdsPedidoROMANEIO: TStringField
      FieldName = 'ROMANEIO'
      FixedChar = True
      Size = 1
    end
    object sdsPedidoTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      FixedChar = True
      Size = 1
    end
    object sdsPedidoAPROVADO_ORC: TStringField
      FieldName = 'APROVADO_ORC'
      FixedChar = True
      Size = 1
    end
    object sdsPedidoNOME_CONSUMIDOR: TStringField
      FieldName = 'NOME_CONSUMIDOR'
      Size = 30
    end
    object sdsPedidoID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object sdsPedidoNOME_PRODUTO_PROPOSTA: TStringField
      FieldName = 'NOME_PRODUTO_PROPOSTA'
      Size = 100
    end
    object sdsPedidoVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object sdsPedidoID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object sdsPedidoPERC_MARGEM: TFloatField
      FieldName = 'PERC_MARGEM'
    end
    object sdsPedidoVLR_TOTAL_TRILHOS: TFloatField
      FieldName = 'VLR_TOTAL_TRILHOS'
    end
    object sdsPedidoVLR_TOTAL_ROLDANAS: TFloatField
      FieldName = 'VLR_TOTAL_ROLDANAS'
    end
    object sdsPedidoID_TIPO_COBRANCA: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA'
    end
    object sdsPedidoID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object sdsPedidoVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object sdsPedidoDTINICIO_DUPLICATA: TDateField
      FieldName = 'DTINICIO_DUPLICATA'
    end
    object sdsPedidoID_MAPA: TIntegerField
      FieldName = 'ID_MAPA'
    end
    object sdsPedidoEMAIL_COMPRAS: TStringField
      FieldName = 'EMAIL_COMPRAS'
      Size = 100
    end
  end
  object dspPedido: TDataSetProvider
    DataSet = sdsPedido
    OnUpdateError = dspPedidoUpdateError
    Left = 136
    Top = 21
  end
  object cdsPedido: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspPedido'
    Left = 168
    Top = 21
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
    end
    object cdsPedidoVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
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
    end
    object cdsPedidoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPedidoVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object cdsPedidoBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object cdsPedidoVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object cdsPedidoBASE_ICMSTRANSF: TFloatField
      FieldName = 'BASE_ICMSTRANSF'
    end
    object cdsPedidoPERC_TRANSF: TFloatField
      FieldName = 'PERC_TRANSF'
    end
    object cdsPedidoVLR_TRANSF: TFloatField
      FieldName = 'VLR_TRANSF'
    end
    object cdsPedidoVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object cdsPedidoBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
    end
    object cdsPedidoVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
    end
    object cdsPedidoPERC_ICMSSIMPLES: TFloatField
      FieldName = 'PERC_ICMSSIMPLES'
    end
    object cdsPedidoBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
    end
    object cdsPedidoVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
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
    object cdsPedidoID_CLIENTE_TRIANGULAR: TIntegerField
      FieldName = 'ID_CLIENTE_TRIANGULAR'
    end
    object cdsPedidoNUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object cdsPedidoFRETE_SOMAR: TStringField
      FieldName = 'FRETE_SOMAR'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoROMANEIO: TStringField
      FieldName = 'ROMANEIO'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoAPROVADO_ORC: TStringField
      FieldName = 'APROVADO_ORC'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoNOME_CONSUMIDOR: TStringField
      FieldName = 'NOME_CONSUMIDOR'
      Size = 30
    end
    object cdsPedidoID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsPedidoNOME_PRODUTO_PROPOSTA: TStringField
      FieldName = 'NOME_PRODUTO_PROPOSTA'
      Size = 100
    end
    object cdsPedidoVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object cdsPedidoID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsPedidoPERC_MARGEM: TFloatField
      FieldName = 'PERC_MARGEM'
    end
    object cdsPedidoVLR_TOTAL_TRILHOS: TFloatField
      FieldName = 'VLR_TOTAL_TRILHOS'
    end
    object cdsPedidoVLR_TOTAL_ROLDANAS: TFloatField
      FieldName = 'VLR_TOTAL_ROLDANAS'
    end
    object cdsPedidoID_TIPO_COBRANCA: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA'
    end
    object cdsPedidoID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsPedidoVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object cdsPedidoDTINICIO_DUPLICATA: TDateField
      FieldName = 'DTINICIO_DUPLICATA'
    end
    object cdsPedidoID_MAPA: TIntegerField
      FieldName = 'ID_MAPA'
    end
    object cdsPedidosdsPedido_Desconto: TDataSetField
      FieldName = 'sdsPedido_Desconto'
    end
    object cdsPedidosdsPedido_Itens: TDataSetField
      FieldName = 'sdsPedido_Itens'
    end
    object cdsPedidoEMAIL_COMPRAS: TStringField
      FieldName = 'EMAIL_COMPRAS'
      Size = 100
    end
  end
  object dsPedido: TDataSource
    DataSet = cdsPedido
    Left = 200
    Top = 21
  end
  object dsPedido_Mestre: TDataSource
    DataSet = sdsPedido
    Left = 32
    Top = 56
  end
  object sdsPedido_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PI.*, CFOP.CODCFOP, NCM.NCM'#13#10'FROM PEDIDO_ITEM PI'#13#10'LEFT JO' +
      'IN TAB_CFOP CFOP ON (PI.ID_CFOP = CFOP.ID)'#13#10'LEFT JOIN TAB_NCM NC' +
      'M ON (PI.ID_NCM = NCM.ID)'#13#10'WHERE PI.ID = :ID'#13#10#13#10
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
    Left = 104
    Top = 64
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
    object sdsPedido_ItensID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
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
    object sdsPedido_ItensTIPO_ORCAMENTO: TStringField
      FieldName = 'TIPO_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_ItensEND_FOTO: TStringField
      FieldName = 'END_FOTO'
      Size = 200
    end
    object sdsPedido_ItensITEM_CLIENTE: TIntegerField
      FieldName = 'ITEM_CLIENTE'
    end
    object sdsPedido_ItensQTD_PECA: TIntegerField
      FieldName = 'QTD_PECA'
    end
    object sdsPedido_ItensGRAVACAO_COM_ERRO: TStringField
      FieldName = 'GRAVACAO_COM_ERRO'
      Size = 3
    end
    object sdsPedido_ItensQTD_FUT: TFloatField
      FieldName = 'QTD_FUT'
    end
    object sdsPedido_ItensTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_ItensID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object sdsPedido_ItensGERAR_ESTOQUE: TStringField
      FieldName = 'GERAR_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_ItensITEM_ORIGINAL: TIntegerField
      FieldName = 'ITEM_ORIGINAL'
    end
    object sdsPedido_ItensPERC_DIFERIMENTO: TFloatField
      FieldName = 'PERC_DIFERIMENTO'
    end
    object sdsPedido_ItensVLR_ICMSDIFERIDO: TFloatField
      FieldName = 'VLR_ICMSDIFERIDO'
    end
    object sdsPedido_ItensTIPO_ACESSORIO: TStringField
      FieldName = 'TIPO_ACESSORIO'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_ItensCOMPRIMENTO_VOLUME: TFloatField
      FieldName = 'COMPRIMENTO_VOLUME'
    end
    object sdsPedido_ItensPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsPedido_ItensCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object sdsPedido_ItensNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
  end
  object cdsPedido_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPedidosdsPedido_Itens
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 136
    Top = 64
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
    object cdsPedido_ItensID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
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
    object cdsPedido_ItensTIPO_ORCAMENTO: TStringField
      FieldName = 'TIPO_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ItensEND_FOTO: TStringField
      FieldName = 'END_FOTO'
      Size = 200
    end
    object cdsPedido_ItensITEM_CLIENTE: TIntegerField
      FieldName = 'ITEM_CLIENTE'
    end
    object cdsPedido_ItensQTD_PECA: TIntegerField
      FieldName = 'QTD_PECA'
    end
    object cdsPedido_ItensGRAVACAO_COM_ERRO: TStringField
      FieldName = 'GRAVACAO_COM_ERRO'
      Size = 3
    end
    object cdsPedido_ItensQTD_FUT: TFloatField
      FieldName = 'QTD_FUT'
    end
    object cdsPedido_ItensTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ItensID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object cdsPedido_ItensGERAR_ESTOQUE: TStringField
      FieldName = 'GERAR_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ItensITEM_ORIGINAL: TIntegerField
      FieldName = 'ITEM_ORIGINAL'
    end
    object cdsPedido_ItensPERC_DIFERIMENTO: TFloatField
      FieldName = 'PERC_DIFERIMENTO'
    end
    object cdsPedido_ItensVLR_ICMSDIFERIDO: TFloatField
      FieldName = 'VLR_ICMSDIFERIDO'
    end
    object cdsPedido_ItensTIPO_ACESSORIO: TStringField
      FieldName = 'TIPO_ACESSORIO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ItensCOMPRIMENTO_VOLUME: TFloatField
      FieldName = 'COMPRIMENTO_VOLUME'
    end
    object cdsPedido_ItensPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsPedido_ItensCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsPedido_ItensNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsPedido_ItenssdsPedido_Item_Tipo: TDataSetField
      FieldName = 'sdsPedido_Item_Tipo'
    end
  end
  object dsPedido_Itens: TDataSource
    DataSet = cdsPedido_Itens
    Left = 168
    Top = 64
  end
  object sdsPedido_Desconto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PEDIDO_DESCONTO'#13#10'WHERE ID = :ID'#13#10#13#10#13#10
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
    Top = 216
    object sdsPedido_DescontoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPedido_DescontoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsPedido_DescontoPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object sdsPedido_DescontoVLR_DESCONTO: TIntegerField
      FieldName = 'VLR_DESCONTO'
    end
  end
  object cdsPedido_Desconto: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPedidosdsPedido_Desconto
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 144
    Top = 216
    object cdsPedido_DescontoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedido_DescontoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPedido_DescontoPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object cdsPedido_DescontoVLR_DESCONTO: TIntegerField
      FieldName = 'VLR_DESCONTO'
    end
  end
  object dsPedido_Desconto: TDataSource
    DataSet = cdsPedido_Desconto
    Left = 176
    Top = 216
  end
  object sdsPedido_Item_Tipo: TSQLDataSet
    CommandText = 
      'SELECT *'#13#10'FROM PEDIDO_ITEM_TIPO '#13#10'WHERE ID = :ID'#13#10'   AND ITEM = ' +
      ':ITEM'
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
    Left = 112
    Top = 149
    object sdsPedido_Item_TipoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPedido_Item_TipoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsPedido_Item_TipoCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object sdsPedido_Item_TipoLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object sdsPedido_Item_TipoALTURA: TFloatField
      FieldName = 'ALTURA'
    end
    object sdsPedido_Item_TipoVLR_KG: TFloatField
      FieldName = 'VLR_KG'
    end
    object sdsPedido_Item_TipoQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsPedido_Item_TipoVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsPedido_Item_TipoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsPedido_Item_TipoDIAMETRO: TFloatField
      FieldName = 'DIAMETRO'
    end
    object sdsPedido_Item_TipoDIAMETRO_EXT: TFloatField
      FieldName = 'DIAMETRO_EXT'
    end
    object sdsPedido_Item_TipoDIAMETRO_INT: TFloatField
      FieldName = 'DIAMETRO_INT'
    end
    object sdsPedido_Item_TipoPAREDE: TFloatField
      FieldName = 'PAREDE'
    end
    object sdsPedido_Item_TipoPESO: TFloatField
      FieldName = 'PESO'
    end
    object sdsPedido_Item_TipoCOMPLEMENTO_NOME: TStringField
      FieldName = 'COMPLEMENTO_NOME'
      Size = 50
    end
    object sdsPedido_Item_TipoTIPO_ORCAMENTO: TStringField
      FieldName = 'TIPO_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_Item_TipoDESCRICAO_TIPO: TStringField
      FieldName = 'DESCRICAO_TIPO'
      Size = 12
    end
    object sdsPedido_Item_TipoID_ACABAMENTO: TIntegerField
      FieldName = 'ID_ACABAMENTO'
    end
    object sdsPedido_Item_TipoID_REDONDO_MOD: TIntegerField
      FieldName = 'ID_REDONDO_MOD'
    end
    object sdsPedido_Item_TipoID_CMOEDA: TIntegerField
      FieldName = 'ID_CMOEDA'
    end
    object sdsPedido_Item_TipoID_FUROS: TIntegerField
      FieldName = 'ID_FUROS'
    end
    object sdsPedido_Item_TipoID_FURACAO: TIntegerField
      FieldName = 'ID_FURACAO'
    end
    object sdsPedido_Item_TipoID_PERFIL: TIntegerField
      FieldName = 'ID_PERFIL'
    end
    object sdsPedido_Item_TipoID_VIDRO: TIntegerField
      FieldName = 'ID_VIDRO'
    end
    object sdsPedido_Item_TipoQTD_FUROS: TIntegerField
      FieldName = 'QTD_FUROS'
    end
    object sdsPedido_Item_TipoVLR_DOBRA: TFloatField
      FieldName = 'VLR_DOBRA'
    end
    object sdsPedido_Item_TipoID_CHAPA: TIntegerField
      FieldName = 'ID_CHAPA'
    end
  end
  object cdsPedido_Item_Tipo: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPedido_ItenssdsPedido_Item_Tipo
    Params = <>
    Left = 144
    Top = 149
    object cdsPedido_Item_TipoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedido_Item_TipoITEM: TIntegerField
      FieldName = 'ITEM'
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
    Left = 176
    Top = 149
  end
  object dsPedido_Item_Mestre: TDataSource
    DataSet = sdsPedido_Itens
    Left = 48
    Top = 112
  end
  object mAux: TClientDataSet
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
        Name = 'Num_Pedido'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 392
    Top = 112
    Data = {
      530000009619E0BD01000000180000000300000000000300000053000949445F
      50656469646F04000100000000000B4974656D5F50656469646F040001000000
      00000A4E756D5F50656469646F04000100000000000000}
    object mAuxID_Pedido: TIntegerField
      FieldName = 'ID_Pedido'
    end
    object mAuxItem_Pedido: TIntegerField
      FieldName = 'Item_Pedido'
    end
    object mAuxNum_Pedido: TIntegerField
      FieldName = 'Num_Pedido'
    end
  end
end
