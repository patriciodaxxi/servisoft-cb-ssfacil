object DMCadPedido: TDMCadPedido
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 65530
  Top = 11
  Height = 691
  Width = 1380
  object sdsPedido: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PEDIDO'#13#10#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 24
    Top = 8
    object sdsPedidoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object sdsPedidoID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object sdsPedidoAPROVADO_PED: TStringField
      FieldName = 'APROVADO_PED'
      FixedChar = True
      Size = 1
    end
    object sdsPedidoOBS_NOTA: TStringField
      FieldName = 'OBS_NOTA'
      Size = 250
    end
    object sdsPedidoVLR_ICMS_FCP: TFloatField
      FieldName = 'VLR_ICMS_FCP'
    end
    object sdsPedidoVLR_ICMS_UF_DEST: TFloatField
      FieldName = 'VLR_ICMS_UF_DEST'
    end
    object sdsPedidoVLR_ICMS_UF_REMET: TFloatField
      FieldName = 'VLR_ICMS_UF_REMET'
    end
    object sdsPedidoNOTIFICACAO: TIntegerField
      FieldName = 'NOTIFICACAO'
    end
    object sdsPedidoIMPRESSO: TStringField
      FieldName = 'IMPRESSO'
      FixedChar = True
      Size = 1
    end
    object sdsPedidoTIPO_STATUS: TStringField
      FieldName = 'TIPO_STATUS'
      FixedChar = True
      Size = 1
    end
    object sdsPedidoID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object sdsPedidoOBS_ROTULO: TStringField
      FieldName = 'OBS_ROTULO'
      Size = 50
    end
    object sdsPedidoROTULO_IMP: TStringField
      FieldName = 'ROTULO_IMP'
      FixedChar = True
      Size = 1
    end
    object sdsPedidoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsPedidoDTUSUARIO: TDateField
      FieldName = 'DTUSUARIO'
    end
    object sdsPedidoHRUSUARIO: TTimeField
      FieldName = 'HRUSUARIO'
    end
    object sdsPedidoGERA_ENTRADA_NO_PEDIDO: TStringField
      FieldName = 'GERA_ENTRADA_NO_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object sdsPedidoVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object sdsPedidoQTD_LIBERADA: TFloatField
      FieldName = 'QTD_LIBERADA'
    end
    object sdsPedidoQTD_CONFERIDO: TFloatField
      FieldName = 'QTD_CONFERIDO'
    end
    object sdsPedidoVLR_DESCONTO_ITEM: TFloatField
      FieldName = 'VLR_DESCONTO_ITEM'
    end
    object sdsPedidoAPLICAR_DESC_POR: TStringField
      FieldName = 'APLICAR_DESC_POR'
      FixedChar = True
      Size = 1
    end
    object sdsPedidoTIPO_ATENDIMENTO: TSmallintField
      FieldName = 'TIPO_ATENDIMENTO'
    end
    object sdsPedidoNUM_ORDPROD: TIntegerField
      FieldName = 'NUM_ORDPROD'
    end
    object sdsPedidoPERC_ICMS_FRETE: TFloatField
      FieldName = 'PERC_ICMS_FRETE'
    end
    object sdsPedidoNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object sdsPedidoEMAIL_COMPRAS: TStringField
      FieldName = 'EMAIL_COMPRAS'
      Size = 100
    end
    object sdsPedidoDTRECEBIMENTO: TDateField
      FieldName = 'DTRECEBIMENTO'
    end
    object sdsPedidoDDD: TIntegerField
      FieldName = 'DDD'
    end
    object sdsPedidoFONE: TStringField
      FieldName = 'FONE'
      Size = 10
    end
    object sdsPedidoID_GRUPO_PESSOA: TIntegerField
      FieldName = 'ID_GRUPO_PESSOA'
    end
    object sdsPedidoFINANCEIRO_CONF: TStringField
      FieldName = 'FINANCEIRO_CONF'
      FixedChar = True
      Size = 1
    end
    object sdsPedidoVLR_MAO_OBRA: TFloatField
      FieldName = 'VLR_MAO_OBRA'
    end
    object sdsPedidoDTVALIDADE: TDateField
      FieldName = 'DTVALIDADE'
    end
    object sdsPedidoNGR: TStringField
      FieldName = 'NGR'
      Size = 1
    end
    object sdsPedidoID_TAB_PRECO: TIntegerField
      FieldName = 'ID_TAB_PRECO'
    end
    object sdsPedidoNUM_PEDIDO_VEND: TIntegerField
      FieldName = 'NUM_PEDIDO_VEND'
    end
    object sdsPedidoAMOSTRA: TStringField
      FieldName = 'AMOSTRA'
      Size = 1
    end
    object sdsPedidoBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
    end
    object sdsPedidoID_PEDWEB: TIntegerField
      FieldName = 'ID_PEDWEB'
    end
  end
  object dspPedido: TDataSetProvider
    DataSet = sdsPedido
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspPedidoUpdateError
    Left = 40
    Top = 8
  end
  object cdsPedido: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspPedido'
    BeforePost = cdsPedidoBeforePost
    OnNewRecord = cdsPedidoNewRecord
    Left = 55
    Top = 8
    object cdsPedidoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
      DisplayFormat = '0.00'
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
      DisplayFormat = '0.00'
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
    object cdsPedidosdsPedido_Itens: TDataSetField
      FieldName = 'sdsPedido_Itens'
    end
    object cdsPedidosdsPedido_Desconto: TDataSetField
      FieldName = 'sdsPedido_Desconto'
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
    object cdsPedidosdsPedidoServico: TDataSetField
      FieldName = 'sdsPedidoServico'
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
      DisplayFormat = '0.00'
    end
    object cdsPedidoID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsPedidoPERC_MARGEM: TFloatField
      FieldName = 'PERC_MARGEM'
    end
    object cdsPedidosdsPedido_Ace: TDataSetField
      FieldName = 'sdsPedido_Ace'
    end
    object cdsPedidosdsPedido_Rol: TDataSetField
      FieldName = 'sdsPedido_Rol'
    end
    object cdsPedidoVLR_TOTAL_TRILHOS: TFloatField
      FieldName = 'VLR_TOTAL_TRILHOS'
      DisplayFormat = '0.00'
    end
    object cdsPedidoVLR_TOTAL_ROLDANAS: TFloatField
      FieldName = 'VLR_TOTAL_ROLDANAS'
      DisplayFormat = '0.00'
    end
    object cdsPedidosdsPedido_Parc: TDataSetField
      FieldName = 'sdsPedido_Parc'
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
    object cdsPedidoID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object cdsPedidoAPROVADO_PED: TStringField
      FieldName = 'APROVADO_PED'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoOBS_NOTA: TStringField
      FieldName = 'OBS_NOTA'
      Size = 250
    end
    object cdsPedidoVLR_ICMS_FCP: TFloatField
      FieldName = 'VLR_ICMS_FCP'
    end
    object cdsPedidoVLR_ICMS_UF_DEST: TFloatField
      FieldName = 'VLR_ICMS_UF_DEST'
    end
    object cdsPedidoVLR_ICMS_UF_REMET: TFloatField
      FieldName = 'VLR_ICMS_UF_REMET'
    end
    object cdsPedidoNOTIFICACAO: TIntegerField
      FieldName = 'NOTIFICACAO'
    end
    object cdsPedidoIMPRESSO: TStringField
      FieldName = 'IMPRESSO'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoTIPO_STATUS: TStringField
      FieldName = 'TIPO_STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object cdsPedidoOBS_ROTULO: TStringField
      FieldName = 'OBS_ROTULO'
      Size = 50
    end
    object cdsPedidoROTULO_IMP: TStringField
      FieldName = 'ROTULO_IMP'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsPedidoDTUSUARIO: TDateField
      FieldName = 'DTUSUARIO'
    end
    object cdsPedidoHRUSUARIO: TTimeField
      FieldName = 'HRUSUARIO'
    end
    object cdsPedidoGERA_ENTRADA_NO_PEDIDO: TStringField
      FieldName = 'GERA_ENTRADA_NO_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
      DisplayFormat = '0.00'
    end
    object cdsPedidoQTD_LIBERADA: TFloatField
      FieldName = 'QTD_LIBERADA'
    end
    object cdsPedidoQTD_CONFERIDO: TFloatField
      FieldName = 'QTD_CONFERIDO'
    end
    object cdsPedidoVLR_DESCONTO_ITEM: TFloatField
      FieldName = 'VLR_DESCONTO_ITEM'
    end
    object cdsPedidoAPLICAR_DESC_POR: TStringField
      FieldName = 'APLICAR_DESC_POR'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoTIPO_ATENDIMENTO: TSmallintField
      FieldName = 'TIPO_ATENDIMENTO'
    end
    object cdsPedidosdsPedido_Cupom: TDataSetField
      FieldName = 'sdsPedido_Cupom'
    end
    object cdsPedidoNUM_ORDPROD: TIntegerField
      FieldName = 'NUM_ORDPROD'
    end
    object cdsPedidoPERC_ICMS_FRETE: TFloatField
      FieldName = 'PERC_ICMS_FRETE'
    end
    object cdsPedidoNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object cdsPedidoEMAIL_COMPRAS: TStringField
      FieldName = 'EMAIL_COMPRAS'
      Size = 100
    end
    object cdsPedidoDTRECEBIMENTO: TDateField
      FieldName = 'DTRECEBIMENTO'
    end
    object cdsPedidoDDD: TIntegerField
      FieldName = 'DDD'
    end
    object cdsPedidoFONE: TStringField
      FieldName = 'FONE'
      Size = 10
    end
    object cdsPedidoID_GRUPO_PESSOA: TIntegerField
      FieldName = 'ID_GRUPO_PESSOA'
    end
    object cdsPedidoFINANCEIRO_CONF: TStringField
      FieldName = 'FINANCEIRO_CONF'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoVLR_MAO_OBRA: TFloatField
      FieldName = 'VLR_MAO_OBRA'
      DisplayFormat = '0.00'
    end
    object cdsPedidoDTVALIDADE: TDateField
      FieldName = 'DTVALIDADE'
    end
    object cdsPedidoNGR: TStringField
      FieldName = 'NGR'
      Size = 1
    end
    object cdsPedidoID_TAB_PRECO: TIntegerField
      FieldName = 'ID_TAB_PRECO'
    end
    object cdsPedidoNUM_PEDIDO_VEND: TIntegerField
      FieldName = 'NUM_PEDIDO_VEND'
    end
    object cdsPedidoAMOSTRA: TStringField
      FieldName = 'AMOSTRA'
      Size = 1
    end
    object cdsPedidoBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
      DisplayFormat = '0.00'
    end
    object cdsPedidoID_PEDWEB: TIntegerField
      FieldName = 'ID_PEDWEB'
    end
  end
  object dsPedido: TDataSource
    DataSet = cdsPedido
    Left = 72
    Top = 8
  end
  object sdsVendedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME, PERC_COMISSAO, PERC_COMISSAO_VEND'#13#10'FROM PES' +
      'SOA'#13#10'WHERE INATIVO = '#39'N'#39#13#10'      AND TP_VENDEDOR = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 368
    Top = 52
  end
  object dspVendedor: TDataSetProvider
    DataSet = sdsVendedor
    Left = 384
    Top = 52
  end
  object cdsVendedor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspVendedor'
    Left = 400
    Top = 52
    object cdsVendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsVendedorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsVendedorPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsVendedorPERC_COMISSAO_VEND: TFloatField
      FieldName = 'PERC_COMISSAO_VEND'
    end
  end
  object dsVendedor: TDataSource
    DataSet = cdsVendedor
    Left = 424
    Top = 52
  end
  object sdsTransportadora: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME, EMAIL_NFE, ENDERECO, NUM_END, COMPLEMENTO_E' +
      'ND, BAIRRO, ID_CIDADE, UF, CNPJ_CPF, INSCR_EST'#13#10'FROM PESSOA'#13#10'WHE' +
      'RE INATIVO = '#39'N'#39#13#10'      AND TP_TRANSPORTADORA = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 368
    Top = 95
  end
  object dspTransportadora: TDataSetProvider
    DataSet = sdsTransportadora
    Left = 384
    Top = 95
  end
  object cdsTransportadora: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspTransportadora'
    Left = 400
    Top = 95
    object cdsTransportadoraCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsTransportadoraNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsTransportadoraEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 250
    end
    object cdsTransportadoraENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsTransportadoraNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object cdsTransportadoraCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsTransportadoraBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsTransportadoraID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsTransportadoraUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsTransportadoraCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsTransportadoraINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
  end
  object dsTransportadora: TDataSource
    DataSet = cdsTransportadora
    Left = 424
    Top = 95
  end
  object sdsPedido_Consulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select PED.NUM_ORCAMENTO, PED.ID, PED.ID_CLIENTE, PED.NUM_PEDIDO' +
      ', PED.NUM_DOC, PED.FILIAL, PED.PEDIDO_CLIENTE,'#13#10'       PED.DTEMI' +
      'SSAO, PED.DTENTREGA, PED.VLR_TOTAL, PED.VLR_ITENS, PED.FATURADO,' +
      ' PED.QTD, PED.CANCELADO,'#13#10'       PED.APROVADO_ORC, PED.ID_VENDED' +
      'OR, PED.ID_CFOP, CLI.NOME NOMECLIENTE_CAD, PED.TIPO_REG, PED.PER' +
      'C_COMISSAO,'#13#10'       PED.NOME_CLIENTE, PED.VALIDADE, CLI.FANTASIA' +
      ', CLI.UF, PED.NOME_CONSUMIDOR, TRA.NOME NOME_TRANSPORTADORA,'#13#10'  ' +
      '     PED.ID_TRANSPORTADORA, PED.APROVADO_PED, AP.DATA DTAPROVADO' +
      ', PED.VLR_IPI, PED.OBS_ROTULO, PED.ROTULO_IMP,'#13#10'       PED.USUAR' +
      'IO, PED.VLR_DUPLICATA, PED.QTD_LIBERADA, PED.QTD_CONFERIDO, PED.' +
      'DTRECEBIMENTO, NUM_ORDPROD,'#13#10'       PED.CONFERIDO, PED.SELECIONA' +
      'DO, PED.IMPRESSO, VEND.NOME NOME_VENDEDOR, OPN.NOME NOME_OPERACA' +
      'O,'#13#10'       PED.FINANCEIRO_CONF, PED.AMOSTRA, CLI.CNPJ_CPF,'#13#10'    ' +
      '   case(select max(PP.ITEM)'#13#10'            from PEDIDO_PROCESSO PP' +
      #13#10'            where PP.ID = PED.ID)'#13#10'         when '#39'1'#39' then '#39'Cad' +
      'astro'#39#13#10'         when '#39'5'#39' then '#39'Lib.Expedi'#231#227'o'#39#13#10'         when '#39'1' +
      '0'#39' then '#39'Faturado'#39#13#10'         when '#39'15'#39' then '#39'Lib.Transporte'#39#13#10'  ' +
      '     end DESCRICAO_STATUS,'#13#10'       (select'#13#10'               case'#13 +
      #10'                 when sum(TOT_PED) = 0 then '#39'N'#39#13#10'              ' +
      '   when sum(TOT_PED) >= sum(TOT_ITENS) then '#39'S'#39#13#10'               ' +
      '  else '#39'P'#39#13#10'               end'#13#10'        from (select count(1) TO' +
      'T_ITENS, 0 TOT_PED'#13#10'              from PEDIDO_ITEM PIT'#13#10'        ' +
      '      where PIT.ID = PED.ID'#13#10'              union all'#13#10'          ' +
      '    select 0 TOT_ITENS, count(1) TOT_PED'#13#10'              from (se' +
      'lect ID_PEDIDO, ITEM_PEDIDO'#13#10'                    from LOTE_PED L' +
      'PD'#13#10'                    where LPD.ID_PEDIDO = PED.ID'#13#10'          ' +
      '          group by ID_PEDIDO, ITEM_PEDIDO))) GEROU_PRODUCAO,'#13#10'  ' +
      '     (select count(1) CONT_TALAO'#13#10'        from TALAO_PED TP'#13#10'   ' +
      '     where TP.ID_PEDIDO = PED.ID) CONT_TALAO,'#13#10'       (select co' +
      'unt(1) CONT_TALAO2'#13#10'        from LOTE_PED_CALC LPC'#13#10'        wher' +
      'e LPC.ID_PEDIDO = PED.ID) CONT_TALAO2,'#13#10'       (select coalesce(' +
      'sum(PRECO_CUSTO * QTD), 0)'#13#10'        from PEDIDO_ITEM'#13#10'        wh' +
      'ere ID = PED.ID) VALOR_CUSTO'#13#10#13#10'from PEDIDO PED'#13#10'left join PESSO' +
      'A CLI on PED.ID_CLIENTE = CLI.CODIGO'#13#10'left join PESSOA TRA on PE' +
      'D.ID_TRANSPORTADORA = TRA.CODIGO'#13#10'left join PEDIDO_APROV AP on P' +
      'ED.ID = AP.ID'#13#10'left join PESSOA VEND on PED.ID_VENDEDOR = VEND.C' +
      'ODIGO'#13#10'left join OPERACAO_NOTA OPN on PED.ID_OPERACAO_NOTA = OPN' +
      '.ID  '#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 216
    Top = 18
  end
  object dspPedido_Consulta: TDataSetProvider
    DataSet = sdsPedido_Consulta
    Left = 232
    Top = 18
  end
  object cdsPedido_Consulta: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspPedido_Consulta'
    Left = 248
    Top = 18
    object cdsPedido_ConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedido_ConsultaFILIAL: TIntegerField
      DisplayLabel = 'Filial'
      FieldName = 'FILIAL'
    end
    object cdsPedido_ConsultaDTEMISSAO: TDateField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DTEMISSAO'
    end
    object cdsPedido_ConsultaPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsPedido_ConsultaID_CLIENTE: TIntegerField
      DisplayLabel = 'ID Cliente'
      FieldName = 'ID_CLIENTE'
    end
    object cdsPedido_ConsultaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsPedido_ConsultaID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsPedido_ConsultaPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ConsultaQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedido_ConsultaVLR_TOTAL: TFloatField
      DisplayLabel = 'Vlr. Total'
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '#,###,##0.00'
    end
    object cdsPedido_ConsultaVLR_ITENS: TFloatField
      DisplayLabel = 'Vlr. Produtos'
      FieldName = 'VLR_ITENS'
      DisplayFormat = '#,###,##0.00'
    end
    object cdsPedido_ConsultaCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ConsultaDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsPedido_ConsultaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsPedido_ConsultaTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ConsultaVALIDADE: TStringField
      FieldName = 'VALIDADE'
      Size = 30
    end
    object cdsPedido_ConsultaNUM_ORCAMENTO: TIntegerField
      FieldName = 'NUM_ORCAMENTO'
    end
    object cdsPedido_ConsultaNUM_PEDIDO: TIntegerField
      DisplayLabel = 'Ped. Interno'
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPedido_ConsultaNOMECLIENTE_CAD: TStringField
      FieldName = 'NOMECLIENTE_CAD'
      Size = 60
    end
    object cdsPedido_ConsultaFANTASIA: TStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsPedido_ConsultaFATURADO: TStringField
      FieldName = 'FATURADO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ConsultaAPROVADO_ORC: TStringField
      FieldName = 'APROVADO_ORC'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ConsultaNUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object cdsPedido_ConsultaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsPedido_ConsultaNOME_CONSUMIDOR: TStringField
      DisplayLabel = 'Nome Consumidor'
      FieldName = 'NOME_CONSUMIDOR'
      Size = 30
    end
    object cdsPedido_ConsultaNOME_TRANSPORTADORA: TStringField
      FieldName = 'NOME_TRANSPORTADORA'
      Size = 60
    end
    object cdsPedido_ConsultaID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsPedido_ConsultaAPROVADO_PED: TStringField
      FieldName = 'APROVADO_PED'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ConsultaDTAPROVADO: TDateField
      FieldName = 'DTAPROVADO'
    end
    object cdsPedido_ConsultaVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ConsultaOBS_ROTULO: TStringField
      FieldName = 'OBS_ROTULO'
      Size = 50
    end
    object cdsPedido_ConsultaROTULO_IMP: TStringField
      FieldName = 'ROTULO_IMP'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ConsultaDESCRICAO_STATUS: TStringField
      FieldName = 'DESCRICAO_STATUS'
      FixedChar = True
      Size = 14
    end
    object cdsPedido_ConsultaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsPedido_ConsultaVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ConsultaQTD_LIBERADA: TFloatField
      FieldName = 'QTD_LIBERADA'
    end
    object cdsPedido_ConsultaQTD_CONFERIDO: TFloatField
      FieldName = 'QTD_CONFERIDO'
    end
    object cdsPedido_ConsultaNUM_ORDPROD: TIntegerField
      FieldName = 'NUM_ORDPROD'
    end
    object cdsPedido_ConsultaCONFERIDO: TStringField
      FieldName = 'CONFERIDO'
      Size = 1
    end
    object cdsPedido_ConsultaNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 60
    end
    object cdsPedido_ConsultaNOME_OPERACAO: TStringField
      FieldName = 'NOME_OPERACAO'
      Size = 40
    end
    object cdsPedido_ConsultaGEROU_PRODUCAO: TStringField
      FieldName = 'GEROU_PRODUCAO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ConsultaDTRECEBIMENTO: TDateField
      FieldName = 'DTRECEBIMENTO'
    end
    object cdsPedido_ConsultaCONT_TALAO: TIntegerField
      FieldName = 'CONT_TALAO'
    end
    object cdsPedido_ConsultaCONT_TALAO2: TIntegerField
      FieldName = 'CONT_TALAO2'
    end
    object cdsPedido_ConsultaSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ConsultaVALOR_CUSTO: TFloatField
      FieldName = 'VALOR_CUSTO'
    end
    object cdsPedido_ConsultaIMPRESSO: TStringField
      FieldName = 'IMPRESSO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ConsultaFINANCEIRO_CONF: TStringField
      FieldName = 'FINANCEIRO_CONF'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ConsultaAMOSTRA: TStringField
      FieldName = 'AMOSTRA'
      Size = 1
    end
    object cdsPedido_ConsultaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
  end
  object dsPedido_Consulta: TDataSource
    DataSet = cdsPedido_Consulta
    Left = 264
    Top = 18
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT FIL.*, SER.CODIGO COD_SERVICO_SINT'#13#10'FROM FILIAL FIL'#13#10'LEFT' +
      ' JOIN SERVICO SER ON (FIL.ID_SERVICO_SINT = SER.ID)'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 368
    Top = 182
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 384
    Top = 182
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 400
    Top = 182
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
    object cdsFilialENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsFilialCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsFilialNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object cdsFilialBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsFilialCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsFilialID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsFilialCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsFilialUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsFilialDDD1: TIntegerField
      FieldName = 'DDD1'
    end
    object cdsFilialFONE1: TStringField
      FieldName = 'FONE1'
      Size = 15
    end
    object cdsFilialDDD2: TIntegerField
      FieldName = 'DDD2'
    end
    object cdsFilialFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object cdsFilialDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object cdsFilialFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsFilialPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsFilialCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsFilialINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object cdsFilialSIMPLES: TStringField
      FieldName = 'SIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsFilialENDLOGO: TStringField
      FieldName = 'ENDLOGO'
      Size = 250
    end
    object cdsFilialCALCULAR_IPI: TStringField
      FieldName = 'CALCULAR_IPI'
      FixedChar = True
      Size = 1
    end
    object cdsFilialINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsFilialINSCMUNICIPAL: TStringField
      FieldName = 'INSCMUNICIPAL'
      Size = 18
    end
    object cdsFilialCNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object cdsFilialHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 250
    end
    object cdsFilialUSARICMSSIMPLES: TStringField
      FieldName = 'USARICMSSIMPLES'
      FixedChar = True
      Size = 10
    end
    object cdsFilialID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object cdsFilialID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object cdsFilialID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object cdsFilialTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object cdsFilialTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object cdsFilialPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object cdsFilialPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object cdsFilialID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object cdsFilialID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsFilialEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 200
    end
    object cdsFilialDTESTOQUE: TDateField
      FieldName = 'DTESTOQUE'
    end
    object cdsFilialPERC_LISTA_CAMEX: TFloatField
      FieldName = 'PERC_LISTA_CAMEX'
    end
    object cdsFilialsdsFilialRelatorios: TDataSetField
      FieldName = 'sdsFilialRelatorios'
    end
    object cdsFilialCALCULAR_DIFAL: TStringField
      FieldName = 'CALCULAR_DIFAL'
      FixedChar = True
      Size = 1
    end
    object cdsFilialNUM_PEDIDO_ULT: TIntegerField
      FieldName = 'NUM_PEDIDO_ULT'
    end
    object cdsFilialNUM_ORCAMENTO_ULT: TIntegerField
      FieldName = 'NUM_ORCAMENTO_ULT'
    end
    object cdsFilialNUM_OC_ULT: TIntegerField
      FieldName = 'NUM_OC_ULT'
    end
    object cdsFilialENDLOGO_ROTULO: TStringField
      FieldName = 'ENDLOGO_ROTULO'
      Size = 200
    end
    object cdsFilialID_CFOP_NFCE_PADRAO: TIntegerField
      FieldName = 'ID_CFOP_NFCE_PADRAO'
    end
    object cdsFilialUSA_NFCE: TStringField
      FieldName = 'USA_NFCE'
      FixedChar = True
      Size = 1
    end
    object cdsFilialID_SERVICO_SINT: TIntegerField
      FieldName = 'ID_SERVICO_SINT'
    end
    object cdsFilialID_SERVICO_PAD: TIntegerField
      FieldName = 'ID_SERVICO_PAD'
    end
    object cdsFilialCOD_SERVICO_SINT: TStringField
      FieldName = 'COD_SERVICO_SINT'
      Size = 5
    end
    object cdsFilialFINALIDADE_PADRAO: TStringField
      FieldName = 'FINALIDADE_PADRAO'
      FixedChar = True
      Size = 1
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 424
    Top = 182
  end
  object sdsUF: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM UF'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 368
    Top = 228
  end
  object dspUF: TDataSetProvider
    DataSet = sdsUF
    Left = 384
    Top = 228
  end
  object cdsUF: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UF'
    Params = <>
    ProviderName = 'dspUF'
    Left = 400
    Top = 228
    object cdsUFUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
    object cdsUFPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsUFIDPAIS: TIntegerField
      FieldName = 'IDPAIS'
    end
    object cdsUFCODUF: TStringField
      FieldName = 'CODUF'
      Size = 2
    end
    object cdsUFPERC_ICMS_INTERNO: TFloatField
      FieldName = 'PERC_ICMS_INTERNO'
    end
    object cdsUFPERC_CP: TFloatField
      FieldName = 'PERC_CP'
    end
  end
  object dsUF: TDataSource
    DataSet = cdsUF
    Left = 424
    Top = 228
  end
  object sdsTipoCobranca: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TIPOCOBRANCA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 368
    Top = 322
  end
  object dspTipoCobranca: TDataSetProvider
    DataSet = sdsTipoCobranca
    Left = 384
    Top = 322
  end
  object cdsTipoCobranca: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspTipoCobranca'
    Left = 400
    Top = 322
    object cdsTipoCobrancaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTipoCobrancaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsTipoCobrancaDESCONTADO: TStringField
      FieldName = 'DESCONTADO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaDEPOSITO: TStringField
      FieldName = 'DEPOSITO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaGERARBOLETO: TStringField
      FieldName = 'GERARBOLETO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaQTDDIAS: TIntegerField
      FieldName = 'QTDDIAS'
    end
    object cdsTipoCobrancaCARTAOCREDITO: TStringField
      FieldName = 'CARTAOCREDITO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaCHEQUE: TStringField
      FieldName = 'CHEQUE'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaDINHEIRO: TStringField
      FieldName = 'DINHEIRO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaMOSTRARNOCUPOM: TStringField
      FieldName = 'MOSTRARNOCUPOM'
      FixedChar = True
      Size = 1
    end
  end
  object dsTipoCobranca: TDataSource
    DataSet = cdsTipoCobranca
    Left = 424
    Top = 322
  end
  object sdsContas: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, NOME, GERAR_BOLETO, GERAR_DEPOSITO'#13#10'FROM CONTAS'#13#10'WHER' +
      'E INATIVO = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 368
    Top = 367
  end
  object dspContas: TDataSetProvider
    DataSet = sdsContas
    Left = 384
    Top = 367
  end
  object cdsContas: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspContas'
    Left = 400
    Top = 367
    object cdsContasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsContasNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsContasGERAR_BOLETO: TStringField
      FieldName = 'GERAR_BOLETO'
      FixedChar = True
      Size = 1
    end
    object cdsContasGERAR_DEPOSITO: TStringField
      FieldName = 'GERAR_DEPOSITO'
      FixedChar = True
      Size = 1
    end
  end
  object dsContas: TDataSource
    DataSet = cdsContas
    Left = 424
    Top = 367
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.ID, P.REFERENCIA, P.NOME, P.UNIDADE, P.PESOLIQUIDO, P.P' +
      'ESOBRUTO, P.INATIVO, P.ID_CSTIPI, P.PERC_IPI, P.PRECO_CUSTO, P.P' +
      'RECO_VENDA, P.TIPO_REG, P.ESTOQUE'#13#10', P.MATERIAL_OUTROS, P.CA, P.' +
      'COMPLEMENTO, P.ID_NCM, P.ORIGEM_PROD, P.CODSITCF, P.PERC_REDUCAO' +
      'ICMS, P.TIPO_VENDA, P.COD_BARRA, P.PERC_IMPORTACAO'#13#10', P.DT_ALTPR' +
      'ECO, P.PERC_REDUCAOICMSSUBST, P.USA_GRADE, P.ID_GRADE, P.USA_PER' +
      'C_IMP_INTERESTADUAL, P.PERC_PIS, P.PERC_COFINS, P.PERC_ICMS_IMP'#13 +
      #10', P.PERC_IPI_IMP, P.ID_GRUPO, P.USA_PRECO_COR, P.PERC_COMISSAO,' +
      'P.PICTOGRAMA,P.PERC_DESC_MAX,P.ID_CFOP_NFCE,SPED_TIPO_ITEM,ID_CS' +
      'TICMS_BRED'#13#10',P.PERC_MARGEMLUCRO,P.TAMANHO,P.QTD_EMBALAGEM,P.QTD_' +
      'PECA_EMB, P.REF2, P.FATOR_CALCULO, P.ID_CSTICMS'#13#10'FROM PRODUTO P'#13 +
      #10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 368
    Top = 408
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 384
    Top = 408
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspProduto'
    Left = 400
    Top = 408
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
    object cdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      FixedChar = True
      Size = 6
    end
    object cdsProdutoPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object cdsProdutoPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object cdsProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsProdutoPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
      DisplayFormat = '0.00'
    end
    object cdsProdutoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
      DisplayFormat = '0.000###'
    end
    object cdsProdutoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
      DisplayFormat = '0.000###'
    end
    object cdsProdutoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoMATERIAL_OUTROS: TStringField
      FieldName = 'MATERIAL_OUTROS'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCA: TStringField
      FieldName = 'CA'
    end
    object cdsProdutoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object cdsProdutoID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsProdutoORIGEM_PROD: TStringField
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCODSITCF: TStringField
      FieldName = 'CODSITCF'
      Size = 5
    end
    object cdsProdutoPERC_REDUCAOICMS: TFloatField
      FieldName = 'PERC_REDUCAOICMS'
    end
    object cdsProdutoCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object cdsProdutoUSA_GRADE: TStringField
      FieldName = 'USA_GRADE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoID_GRADE: TIntegerField
      FieldName = 'ID_GRADE'
    end
    object cdsProdutoPERC_REDUCAOICMSSUBST: TFloatField
      FieldName = 'PERC_REDUCAOICMSSUBST'
    end
    object cdsProdutoTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPERC_IMPORTACAO: TFloatField
      FieldName = 'PERC_IMPORTACAO'
    end
    object cdsProdutoDT_ALTPRECO: TDateField
      FieldName = 'DT_ALTPRECO'
    end
    object cdsProdutoUSA_PERC_IMP_INTERESTADUAL: TStringField
      FieldName = 'USA_PERC_IMP_INTERESTADUAL'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object cdsProdutoPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object cdsProdutoPERC_ICMS_IMP: TFloatField
      FieldName = 'PERC_ICMS_IMP'
    end
    object cdsProdutoPERC_IPI_IMP: TFloatField
      FieldName = 'PERC_IPI_IMP'
    end
    object cdsProdutoID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
    object cdsProdutoUSA_PRECO_COR: TStringField
      FieldName = 'USA_PRECO_COR'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsProdutoPICTOGRAMA: TStringField
      FieldName = 'PICTOGRAMA'
      Size = 150
    end
    object cdsProdutoPERC_DESC_MAX: TFloatField
      FieldName = 'PERC_DESC_MAX'
    end
    object cdsProdutoID_CFOP_NFCE: TIntegerField
      FieldName = 'ID_CFOP_NFCE'
    end
    object cdsProdutoSPED_TIPO_ITEM: TStringField
      FieldName = 'SPED_TIPO_ITEM'
      Size = 2
    end
    object cdsProdutoID_CSTICMS_BRED: TIntegerField
      FieldName = 'ID_CSTICMS_BRED'
    end
    object cdsProdutoPERC_MARGEMLUCRO: TFloatField
      FieldName = 'PERC_MARGEMLUCRO'
    end
    object cdsProdutoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 3
    end
    object cdsProdutoQTD_EMBALAGEM: TFloatField
      FieldName = 'QTD_EMBALAGEM'
    end
    object cdsProdutoQTD_PECA_EMB: TIntegerField
      FieldName = 'QTD_PECA_EMB'
    end
    object cdsProdutoREF2: TStringField
      FieldName = 'REF2'
    end
    object cdsProdutoFATOR_CALCULO: TFloatField
      FieldName = 'FATOR_CALCULO'
    end
    object cdsProdutoID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 424
    Top = 408
  end
  object sdsUnidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT UNIDADE, CONVERSOR, NOME'#13#10'FROM UNIDADE'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 368
    Top = 451
  end
  object dspUnidade: TDataSetProvider
    DataSet = sdsUnidade
    Left = 384
    Top = 451
  end
  object cdsUnidade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UNIDADE'
    Params = <>
    ProviderName = 'dspUnidade'
    Left = 400
    Top = 451
    object cdsUnidadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 6
    end
    object cdsUnidadeCONVERSOR: TFloatField
      FieldName = 'CONVERSOR'
    end
    object cdsUnidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsUnidade: TDataSource
    DataSet = cdsUnidade
    Left = 424
    Top = 451
  end
  object sdsParametros: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PARAMETROS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 368
    Top = 498
  end
  object dspParametros: TDataSetProvider
    DataSet = sdsParametros
    Left = 384
    Top = 498
  end
  object cdsParametros: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspParametros'
    Left = 400
    Top = 498
    object cdsParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsParametrosEMAILRESPONSAVELSISTEMA: TStringField
      FieldName = 'EMAILRESPONSAVELSISTEMA'
      Size = 200
    end
    object cdsParametrosTIPOLOGONFE: TStringField
      FieldName = 'TIPOLOGONFE'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosAPLICARDESCONTONOICMS: TStringField
      FieldName = 'APLICARDESCONTONOICMS'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosAPLICARDESCONTONOIPI: TStringField
      FieldName = 'APLICARDESCONTONOIPI'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosSOMARNOPROD_FRETE: TStringField
      FieldName = 'SOMARNOPROD_FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosSOMARNOPROD_OUTRASDESP: TStringField
      FieldName = 'SOMARNOPROD_OUTRASDESP'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosSOMARNOPROD_SEGURO: TStringField
      FieldName = 'SOMARNOPROD_SEGURO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosAJUSTELOGONFEAUTOMATICO: TStringField
      FieldName = 'AJUSTELOGONFEAUTOMATICO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosINFNUMNOTAMANUAL: TStringField
      FieldName = 'INFNUMNOTAMANUAL'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosOPCAO_DTENTREGAPEDIDO: TStringField
      FieldName = 'OPCAO_DTENTREGAPEDIDO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosVERSAO_BANCO: TIntegerField
      FieldName = 'VERSAO_BANCO'
    end
    object cdsParametrosATUALIZAR_PRECO: TStringField
      FieldName = 'ATUALIZAR_PRECO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_VENDEDOR: TStringField
      FieldName = 'USA_VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_CONSUMO: TStringField
      FieldName = 'USA_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosCONFECCAO: TStringField
      FieldName = 'CONFECCAO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_COD_BARRAS: TStringField
      FieldName = 'USA_COD_BARRAS'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_ID_PRODUTO: TStringField
      FieldName = 'USA_ID_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_TAB_PRECO: TStringField
      FieldName = 'USA_TAB_PRECO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosPERMITE_MESMA_OC: TStringField
      FieldName = 'PERMITE_MESMA_OC'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosID_CFOP_REQ: TIntegerField
      FieldName = 'ID_CFOP_REQ'
    end
    object cdsParametrosID_CFOP_REQ2: TIntegerField
      FieldName = 'ID_CFOP_REQ2'
    end
    object cdsParametrosUSA_PROJETO_OC: TStringField
      FieldName = 'USA_PROJETO_OC'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_GRADE: TStringField
      FieldName = 'USA_GRADE'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosTIPO_GRADE_REG: TStringField
      FieldName = 'TIPO_GRADE_REG'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosINFORMA_MAT_PEDIDO: TStringField
      FieldName = 'INFORMA_MAT_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosMOSTRAR_NOME_ETIQUETA: TStringField
      FieldName = 'MOSTRAR_NOME_ETIQUETA'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosMOSTRAR_MATERIAL_PED: TStringField
      FieldName = 'MOSTRAR_MATERIAL_PED'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosMOSTRAR_CFOP_PEDIDO: TStringField
      FieldName = 'MOSTRAR_CFOP_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosDIGITACAO_PED_ITENS: TStringField
      FieldName = 'DIGITACAO_PED_ITENS'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosID_CLIENTE_ESTOQUE: TIntegerField
      FieldName = 'ID_CLIENTE_ESTOQUE'
    end
    object cdsParametrosUSA_LOTE: TStringField
      FieldName = 'USA_LOTE'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_AMOSTRA_GRATIS: TStringField
      FieldName = 'USA_AMOSTRA_GRATIS'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosNOTA_ENTRADA_MOSTRAR_PROD: TStringField
      FieldName = 'NOTA_ENTRADA_MOSTRAR_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosTIPO_REL_PEDIDO: TStringField
      FieldName = 'TIPO_REL_PEDIDO'
      FixedChar = True
      Size = 2
    end
    object cdsParametrosUSA_CARIMBO: TStringField
      FieldName = 'USA_CARIMBO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosEMPRESA_INJETADO: TStringField
      FieldName = 'EMPRESA_INJETADO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosEMPRESA_CARTONAGEM: TStringField
      FieldName = 'EMPRESA_CARTONAGEM'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_DTPRODUCAO: TStringField
      FieldName = 'USA_DTPRODUCAO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosEMPRESA_NAVALHA: TStringField
      FieldName = 'EMPRESA_NAVALHA'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosIMP_PRECO_PED: TStringField
      FieldName = 'IMP_PRECO_PED'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_PRECO_FORN: TStringField
      FieldName = 'USA_PRECO_FORN'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosEND_IMPRESSORA_DOS: TStringField
      FieldName = 'END_IMPRESSORA_DOS'
      Size = 200
    end
    object cdsParametrosIMP_PESO_PED: TStringField
      FieldName = 'IMP_PESO_PED'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosEMPRESA_SUCATA: TStringField
      FieldName = 'EMPRESA_SUCATA'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_PEDIDO_CONTROLE_MOBRA: TStringField
      FieldName = 'USA_PEDIDO_CONTROLE_MOBRA'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosIMP_MEIA_FOLHA_PED: TStringField
      FieldName = 'IMP_MEIA_FOLHA_PED'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosARREDONDAR_5: TStringField
      FieldName = 'ARREDONDAR_5'
      Size = 1
    end
    object cdsParametrosID_CLIENTE_CONSUMIDOR: TIntegerField
      FieldName = 'ID_CLIENTE_CONSUMIDOR'
    end
    object cdsParametrosSENHA_PEDIDO: TStringField
      FieldName = 'SENHA_PEDIDO'
      Size = 10
    end
    object cdsParametrosTIPO_REL_OC: TStringField
      FieldName = 'TIPO_REL_OC'
      FixedChar = True
      Size = 2
    end
    object cdsParametrosCONTROLAR_NOTIFICACAO: TStringField
      FieldName = 'CONTROLAR_NOTIFICACAO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_CONTA_ORCAMENTO: TStringField
      FieldName = 'USA_CONTA_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosEMPRESA_AMBIENTES: TStringField
      FieldName = 'EMPRESA_AMBIENTES'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosINFORMAR_COR_MATERIAL: TStringField
      FieldName = 'INFORMAR_COR_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosINFORMAR_COR_PROD: TStringField
      FieldName = 'INFORMAR_COR_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosCONTROLAR_DUP_PEDIDO: TStringField
      FieldName = 'CONTROLAR_DUP_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosID_CONTA_PADRAO: TIntegerField
      FieldName = 'ID_CONTA_PADRAO'
    end
    object cdsParametrosID_TIPO_COBRANCA_PADRAO: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA_PADRAO'
    end
    object cdsParametrosMOSTRAR_EMBALAGEM: TStringField
      FieldName = 'MOSTRAR_EMBALAGEM'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosTIPO_ESTOQUE: TStringField
      FieldName = 'TIPO_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosGERAR_ROTULO_EMB: TStringField
      FieldName = 'GERAR_ROTULO_EMB'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosCONTROLAR_ESTOQUE_SAIDA: TStringField
      FieldName = 'CONTROLAR_ESTOQUE_SAIDA'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosSENHA_LIBERA_ESTOQUE: TStringField
      FieldName = 'SENHA_LIBERA_ESTOQUE'
      Size = 10
    end
    object cdsParametrosOPCAO_ESCOLHER_PRECO_COR: TStringField
      FieldName = 'OPCAO_ESCOLHER_PRECO_COR'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosALERTA_VALE: TStringField
      FieldName = 'ALERTA_VALE'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosALERTA_VLR_ATRASO: TStringField
      FieldName = 'ALERTA_VLR_ATRASO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_LIMITE_CREDITO: TStringField
      FieldName = 'USA_LIMITE_CREDITO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosSENHA_CREDITO: TStringField
      FieldName = 'SENHA_CREDITO'
      Size = 15
    end
    object cdsParametrosOPCAO_REL_PED_AGRUPADO: TStringField
      FieldName = 'OPCAO_REL_PED_AGRUPADO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_COPIA_PEDIDO_ITEM: TStringField
      FieldName = 'USA_COPIA_PEDIDO_ITEM'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_COPIA_PEDIDO: TStringField
      FieldName = 'USA_COPIA_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosREPETIR_ULTIMO_ITEM_PED: TStringField
      FieldName = 'REPETIR_ULTIMO_ITEM_PED'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_LOCAL_ESTOQUE: TStringField
      FieldName = 'USA_LOCAL_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_APROVACAO_PED: TStringField
      FieldName = 'USA_APROVACAO_PED'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_APROVACAO_OC_FORN: TStringField
      FieldName = 'USA_APROVACAO_OC_FORN'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_PERC_ORGAO_PUBLICO: TStringField
      FieldName = 'USA_PERC_ORGAO_PUBLICO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_PERC_ORGAO_PUBLICO_IMP: TStringField
      FieldName = 'USA_PERC_ORGAO_PUBLICO_IMP'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_ADIANTAMENTO_PEDIDO: TStringField
      FieldName = 'USA_ADIANTAMENTO_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosTIPO_COMISSAO_PROD: TStringField
      FieldName = 'TIPO_COMISSAO_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosID_CONTA_PADRAO_ADI: TIntegerField
      FieldName = 'ID_CONTA_PADRAO_ADI'
    end
    object cdsParametrosID_TIPO_COBRANCA_PADRAO_ADI: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA_PADRAO_ADI'
    end
    object cdsParametrosUSA_OBS_PEDIDO_NOTA: TStringField
      FieldName = 'USA_OBS_PEDIDO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosIMP_NFE_REF_PROD: TStringField
      FieldName = 'IMP_NFE_REF_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_PRODUTO_CLIENTE: TStringField
      FieldName = 'USA_PRODUTO_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_SPED: TStringField
      FieldName = 'USA_SPED'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosID_OPERACAO_VENDA: TIntegerField
      FieldName = 'ID_OPERACAO_VENDA'
    end
  end
  object sdsTab_CSTICMS: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CSTICMS'#13#10'WHERE TIPO = :TIPO'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 529
    Top = 12
  end
  object dspTab_CSTICMS: TDataSetProvider
    DataSet = sdsTab_CSTICMS
    Left = 552
    Top = 12
  end
  object cdsTab_CSTICMS: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_CSTICMS'
    Left = 576
    Top = 12
    object cdsTab_CSTICMSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_CSTICMSPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
    object cdsTab_CSTICMSHISTORICO: TMemoField
      FieldName = 'HISTORICO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsTab_CSTICMSTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsTab_CSTICMSNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object cdsTab_CSTICMSCOD_CST: TStringField
      FieldName = 'COD_CST'
      Size = 3
    end
    object cdsTab_CSTICMSPERC_DIFERIMENTO: TFloatField
      FieldName = 'PERC_DIFERIMENTO'
    end
  end
  object dsTab_CSTICMS: TDataSource
    DataSet = cdsTab_CSTICMS
    Left = 600
    Top = 12
  end
  object sdsTab_CSTIPI: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CSTIPI'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 529
    Top = 54
  end
  object dspTab_CSTIPI: TDataSetProvider
    DataSet = sdsTab_CSTIPI
    Left = 552
    Top = 54
  end
  object cdsTab_CSTIPI: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_CSTIPI'
    Left = 576
    Top = 54
    object cdsTab_CSTIPIID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_CSTIPICOD_IPI: TStringField
      FieldName = 'COD_IPI'
      Size = 2
    end
    object cdsTab_CSTIPINOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsTab_CSTIPIGERAR_IPI: TStringField
      FieldName = 'GERAR_IPI'
      FixedChar = True
      Size = 1
    end
  end
  object dsTab_CSTIPI: TDataSource
    DataSet = cdsTab_CSTIPI
    Left = 600
    Top = 54
  end
  object sdsOrigem_Prod: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM ORIGEM_PROD'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 529
    Top = 97
  end
  object dspOrigem_Prod: TDataSetProvider
    DataSet = sdsOrigem_Prod
    Left = 552
    Top = 97
  end
  object cdsOrigem_Prod: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ORIGEM'
    Params = <>
    ProviderName = 'dspOrigem_Prod'
    Left = 576
    Top = 97
    object cdsOrigem_ProdORIGEM: TStringField
      FieldName = 'ORIGEM'
      Required = True
      Size = 1
    end
    object cdsOrigem_ProdNOME: TStringField
      FieldName = 'NOME'
      Size = 90
    end
  end
  object dsOrigem_Prod: TDataSource
    DataSet = cdsOrigem_Prod
    Left = 600
    Top = 97
  end
  object sdsTab_NCM: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT N.ID, N.NCM, N.NOME, N.PERC_RED_STRIB, N.GERAR_ST,'#13#10'N.USA' +
      'R_MVA_UF_DESTINO, N.perc_ipi, N.id_cstipi, N.ID_CST_ICMS'#13#10'FROM T' +
      'AB_NCM N'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 529
    Top = 139
  end
  object dspTab_NCM: TDataSetProvider
    DataSet = sdsTab_NCM
    Left = 552
    Top = 139
  end
  object cdsTab_NCM: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_NCM'
    Left = 576
    Top = 139
    object cdsTab_NCMID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_NCMNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsTab_NCMNOME: TStringField
      FieldName = 'NOME'
      Size = 250
    end
    object cdsTab_NCMPERC_RED_STRIB: TFloatField
      FieldName = 'PERC_RED_STRIB'
    end
    object cdsTab_NCMGERAR_ST: TStringField
      FieldName = 'GERAR_ST'
      FixedChar = True
      Size = 1
    end
    object cdsTab_NCMUSAR_MVA_UF_DESTINO: TStringField
      FieldName = 'USAR_MVA_UF_DESTINO'
      FixedChar = True
      Size = 1
    end
    object cdsTab_NCMPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsTab_NCMID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsTab_NCMID_CST_ICMS: TIntegerField
      FieldName = 'ID_CST_ICMS'
    end
  end
  object dsTab_NCM: TDataSource
    DataSet = cdsTab_NCM
    Left = 600
    Top = 139
  end
  object qNatOper: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT DISTINCT TC.CODCFOP'
      'FROM NOTAFISCAL_ITENS NI'
      'INNER JOIN TAB_CFOP TC'
      'ON NI.ID_CFOP = TC.ID'
      'WHERE NI.ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 1241
    Top = 438
    object qNatOperCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
  end
  object qPercentual_Simples: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ANO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MES'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM PERCENTUAL_SIMPLES'
      'WHERE FILIAL = :FILIAL'
      '   AND ANO = :ANO'
      '   AND MES = :MES'
      ''
      ''
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 1243
    Top = 488
    object qPercentual_SimplesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qPercentual_SimplesFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object qPercentual_SimplesANO: TIntegerField
      FieldName = 'ANO'
    end
    object qPercentual_SimplesMES: TIntegerField
      FieldName = 'MES'
    end
    object qPercentual_SimplesPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
  end
  object qRegime_Trib: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM REGIME_TRIB'
      'WHERE ID = :ID'
      ''
      ''
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 1142
    Top = 438
    object qRegime_TribID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qRegime_TribCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object qRegime_TribNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object qVerificaNota: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'SERIE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMNOTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_CLIENTE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT SERIE, NUMNOTA, ID_CLIENTE, ID'
      'FROM NOTAFISCAL'
      'WHERE SERIE = :SERIE'
      '  AND NUMNOTA = :NUMNOTA'
      '  AND ID_CLIENTE = :ID_CLIENTE'
      '  AND TIPO_REG = '#39'NTE'#39)
    SQLConnection = dmDatabase.scoDados
    Left = 1219
    Top = 488
    object qVerificaNotaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object qVerificaNotaNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object qVerificaNotaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object qVerificaNotaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object qCFOP_Variacao: TSQLQuery
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
      'SELECT *'
      'FROM TAB_CFOP_VARIACAO'
      'WHERE ID = :ID'
      '  AND ITEM = :ITEM')
    SQLConnection = dmDatabase.scoDados
    Left = 1195
    Top = 488
    object qCFOP_VariacaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCFOP_VariacaoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qCFOP_VariacaoID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object qCFOP_VariacaoID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
  end
  object dsPedido_Mestre: TDataSource
    DataSet = sdsPedido
    Left = 102
    Top = 9
  end
  object sdsPedido_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PI.*, CFOP.CODCFOP,  CSTICMS.COD_CST, CSTIPI.COD_IPI, NCM' +
      '.NCM,'#13#10'COMB.NOME NOME_COR_COMBINACAO, (PI.vlr_desconto + PI.vlr_' +
      'descontorateio) VLR_DESCONTO_CALC'#13#10'FROM PEDIDO_ITEM PI'#13#10'LEFT JOI' +
      'N TAB_CFOP CFOP ON (PI.ID_CFOP = CFOP.ID)'#13#10'LEFT JOIN TAB_CSTICMS' +
      ' CSTICMS ON (PI.ID_CSTICMS = CSTICMS.ID)'#13#10'LEFT JOIN TAB_CSTIPI C' +
      'STIPI ON (PI.ID_CSTIPI = CSTIPI.ID)'#13#10'LEFT JOIN TAB_NCM NCM ON (P' +
      'I.ID_NCM = NCM.ID)'#13#10'LEFT JOIN COMBINACAO COMB ON (PI.ID_COR = CO' +
      'MB.ID)'#13#10'WHERE PI.ID = :ID'#13#10' AND ((PI.TIPO_ACESSORIO = '#39'N'#39') OR (P' +
      'I.TIPO_ACESSORIO IS NULL))'#13#10
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
    Left = 24
    Top = 57
    object sdsPedido_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedido_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object sdsPedido_ItensDTPRODUCAO: TDateField
      FieldName = 'DTPRODUCAO'
    end
    object sdsPedido_ItensID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object sdsPedido_ItensNCM: TStringField
      FieldName = 'NCM'
      ProviderFlags = []
      Size = 10
    end
    object sdsPedido_ItensNUM_TALAO: TStringField
      FieldName = 'NUM_TALAO'
      Size = 15
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
    object sdsPedido_ItensID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object sdsPedido_ItensID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object sdsPedido_ItensGERAR_ESTOQUE: TStringField
      FieldName = 'GERAR_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_ItensTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
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
    object sdsPedido_ItensNOME_COR_COMBINACAO: TStringField
      FieldName = 'NOME_COR_COMBINACAO'
      ProviderFlags = []
      Size = 60
    end
    object sdsPedido_ItensTIPO_ACESSORIO: TStringField
      FieldName = 'TIPO_ACESSORIO'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_ItensCOMPRIMENTO_VOLUME: TFloatField
      FieldName = 'COMPRIMENTO_VOLUME'
    end
    object sdsPedido_ItensQTD_LANCAR_ESTOQUE: TFloatField
      FieldName = 'QTD_LANCAR_ESTOQUE'
    end
    object sdsPedido_ItensPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsPedido_ItensDTEXPEDICAO: TDateField
      FieldName = 'DTEXPEDICAO'
    end
    object sdsPedido_ItensDTFATURA: TDateField
      FieldName = 'DTFATURA'
    end
    object sdsPedido_ItensPERC_ICMS_FCP: TFloatField
      FieldName = 'PERC_ICMS_FCP'
    end
    object sdsPedido_ItensPERC_ICMS_UF_DEST: TFloatField
      FieldName = 'PERC_ICMS_UF_DEST'
    end
    object sdsPedido_ItensPERC_ICMS_PARTILHA: TFloatField
      FieldName = 'PERC_ICMS_PARTILHA'
    end
    object sdsPedido_ItensVLR_ICMS_FCP: TFloatField
      FieldName = 'VLR_ICMS_FCP'
    end
    object sdsPedido_ItensVLR_ICMS_UF_DEST: TFloatField
      FieldName = 'VLR_ICMS_UF_DEST'
    end
    object sdsPedido_ItensVLR_ICMS_UF_REMET: TFloatField
      FieldName = 'VLR_ICMS_UF_REMET'
    end
    object sdsPedido_ItensPERC_ICMS_INTER: TFloatField
      FieldName = 'PERC_ICMS_INTER'
    end
    object sdsPedido_ItensVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object sdsPedido_ItensGERAR_DUPLICATA: TStringField
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_ItensVLR_DESCONTO_CALC: TFloatField
      FieldName = 'VLR_DESCONTO_CALC'
      ProviderFlags = []
    end
    object sdsPedido_ItensDTCONFERENCIA: TDateField
      FieldName = 'DTCONFERENCIA'
    end
    object sdsPedido_ItensHRCONFERENCIA: TTimeField
      FieldName = 'HRCONFERENCIA'
    end
    object sdsPedido_ItensUSUARIO_CONF: TStringField
      FieldName = 'USUARIO_CONF'
      Size = 15
    end
    object sdsPedido_ItensVLR_ICMSFRETE: TFloatField
      FieldName = 'VLR_ICMSFRETE'
    end
    object sdsPedido_ItensQTD_SOBRA_OC: TFloatField
      FieldName = 'QTD_SOBRA_OC'
    end
    object sdsPedido_ItensTIPO_SERVICO: TStringField
      FieldName = 'TIPO_SERVICO'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_ItensID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object sdsPedido_ItensNOME_SERVICO_INT: TStringField
      FieldName = 'NOME_SERVICO_INT'
      Size = 150
    end
    object sdsPedido_ItensPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object sdsPedido_ItensPERC_MARGEM: TFloatField
      FieldName = 'PERC_MARGEM'
    end
    object sdsPedido_ItensPERC_MARGEM2: TFloatField
      FieldName = 'PERC_MARGEM2'
    end
    object sdsPedido_ItensID_OS_SERV: TIntegerField
      FieldName = 'ID_OS_SERV'
    end
    object sdsPedido_ItensNUM_OS_SERV: TIntegerField
      FieldName = 'NUM_OS_SERV'
    end
    object sdsPedido_ItensID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object sdsPedido_ItensNUM_NOTA_ENT: TIntegerField
      FieldName = 'NUM_NOTA_ENT'
    end
    object sdsPedido_ItensSERIE_NOTA_ENT: TStringField
      FieldName = 'SERIE_NOTA_ENT'
      Size = 3
    end
    object sdsPedido_ItensENCERADO: TStringField
      FieldName = 'ENCERADO'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_ItensCONV_UNIDADE: TFloatField
      FieldName = 'CONV_UNIDADE'
    end
    object sdsPedido_ItensUNIDADE_PROD: TStringField
      FieldName = 'UNIDADE_PROD'
      Size = 6
    end
    object sdsPedido_ItensOBS_ETIQUETA: TStringField
      FieldName = 'OBS_ETIQUETA'
      Size = 30
    end
    object sdsPedido_ItensQTD_CAIXA: TIntegerField
      FieldName = 'QTD_CAIXA'
    end
    object sdsPedido_ItensNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object sdsPedido_ItensCOD_COR_CLIENTE: TStringField
      FieldName = 'COD_COR_CLIENTE'
      Size = 10
    end
    object sdsPedido_ItensNOME_COR_CLIENTE: TStringField
      FieldName = 'NOME_COR_CLIENTE'
      Size = 100
    end
    object sdsPedido_ItensTAMANHO_CLIENTE: TStringField
      FieldName = 'TAMANHO_CLIENTE'
      Size = 10
    end
    object sdsPedido_ItensFOTO: TStringField
      FieldName = 'FOTO'
      Size = 250
    end
    object sdsPedido_ItensVLR_MATERIAL: TFloatField
      FieldName = 'VLR_MATERIAL'
    end
    object sdsPedido_ItensTEMPO: TFloatField
      FieldName = 'TEMPO'
    end
    object sdsPedido_ItensDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object sdsPedido_ItensTEMPO_REAL: TFloatField
      FieldName = 'TEMPO_REAL'
    end
    object sdsPedido_ItensVLR_UNITARIO_REAL: TFloatField
      FieldName = 'VLR_UNITARIO_REAL'
    end
    object sdsPedido_ItensFATOR_CALCULO_REAL: TFloatField
      FieldName = 'FATOR_CALCULO_REAL'
    end
    object sdsPedido_ItensTIPO_OS: TStringField
      FieldName = 'TIPO_OS'
      Size = 2
    end
    object sdsPedido_ItensDIFERENCA_ICMS: TStringField
      FieldName = 'DIFERENCA_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_ItensCAIXINHA: TStringField
      FieldName = 'CAIXINHA'
      Size = 30
    end
    object sdsPedido_ItensBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
    end
    object sdsPedido_ItensATUALIZA_PRECO_CUSTO: TStringField
      FieldName = 'ATUALIZA_PRECO_CUSTO'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_ItensFABRICA: TStringField
      FieldName = 'FABRICA'
      Size = 10
    end
  end
  object cdsPedido_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPedidosdsPedido_Itens
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    BeforePost = cdsPedido_ItensBeforePost
    OnCalcFields = cdsPedido_ItensCalcFields
    OnNewRecord = cdsPedido_ItensNewRecord
    Left = 40
    Top = 57
    object cdsPedido_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedido_ItensITEM: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
      DisplayFormat = '0.000#'
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
      Size = 6
    end
    object cdsPedido_ItensNUMOS: TStringField
      DisplayLabel = 'N'#186' OS'
      FieldName = 'NUMOS'
      Size = 30
    end
    object cdsPedido_ItensPERC_DESCONTO: TFloatField
      DisplayLabel = '% Desconto'
      FieldName = 'PERC_DESCONTO'
      DisplayFormat = '0.00###'
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
    object cdsPedido_ItenssdsPedido_Cli: TDataSetField
      Tag = 1
      FieldName = 'sdsPedido_Cli'
    end
    object cdsPedido_ItenssdsPedido_Material: TDataSetField
      Tag = 1
      FieldName = 'sdsPedido_Material'
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
    object cdsPedido_ItensNCM: TStringField
      FieldName = 'NCM'
      ProviderFlags = []
      Size = 10
    end
    object cdsPedido_ItensID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsPedido_ItensNUM_TALAO: TStringField
      FieldName = 'NUM_TALAO'
      Size = 15
    end
    object cdsPedido_ItensTIPO_ORCAMENTO: TStringField
      FieldName = 'TIPO_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ItenssdsPedido_Item_Tipo: TDataSetField
      Tag = 1
      FieldName = 'sdsPedido_Item_Tipo'
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
    object cdsPedido_ItensID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object cdsPedido_ItensID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object cdsPedido_ItensGERAR_ESTOQUE: TStringField
      FieldName = 'GERAR_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ItensTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
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
    object cdsPedido_ItensNOME_COR_COMBINACAO: TStringField
      FieldName = 'NOME_COR_COMBINACAO'
      ProviderFlags = []
      Size = 60
    end
    object cdsPedido_ItensTIPO_ACESSORIO: TStringField
      Tag = 1
      FieldName = 'TIPO_ACESSORIO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ItensCOMPRIMENTO_VOLUME: TFloatField
      Tag = 1
      FieldName = 'COMPRIMENTO_VOLUME'
    end
    object cdsPedido_ItensQTD_LANCAR_ESTOQUE: TFloatField
      Tag = 1
      FieldName = 'QTD_LANCAR_ESTOQUE'
    end
    object cdsPedido_ItensPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsPedido_ItensDTEXPEDICAO: TDateField
      Tag = 1
      FieldName = 'DTEXPEDICAO'
    end
    object cdsPedido_ItensDTFATURA: TDateField
      Tag = 1
      FieldName = 'DTFATURA'
    end
    object cdsPedido_ItensPERC_ICMS_FCP: TFloatField
      Tag = 1
      FieldName = 'PERC_ICMS_FCP'
    end
    object cdsPedido_ItensPERC_ICMS_UF_DEST: TFloatField
      Tag = 1
      FieldName = 'PERC_ICMS_UF_DEST'
    end
    object cdsPedido_ItensPERC_ICMS_PARTILHA: TFloatField
      Tag = 1
      FieldName = 'PERC_ICMS_PARTILHA'
    end
    object cdsPedido_ItensVLR_ICMS_FCP: TFloatField
      Tag = 1
      FieldName = 'VLR_ICMS_FCP'
    end
    object cdsPedido_ItensVLR_ICMS_UF_DEST: TFloatField
      Tag = 1
      FieldName = 'VLR_ICMS_UF_DEST'
    end
    object cdsPedido_ItensVLR_ICMS_UF_REMET: TFloatField
      Tag = 1
      FieldName = 'VLR_ICMS_UF_REMET'
    end
    object cdsPedido_ItensPERC_ICMS_INTER: TFloatField
      Tag = 1
      FieldName = 'PERC_ICMS_INTER'
    end
    object cdsPedido_ItensVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object cdsPedido_ItensGERAR_DUPLICATA: TStringField
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ItensVLR_DESCONTO_CALC: TFloatField
      Tag = 1
      FieldName = 'VLR_DESCONTO_CALC'
      ProviderFlags = []
    end
    object cdsPedido_ItensDTCONFERENCIA: TDateField
      Tag = 1
      FieldName = 'DTCONFERENCIA'
    end
    object cdsPedido_ItensHRCONFERENCIA: TTimeField
      Tag = 1
      FieldName = 'HRCONFERENCIA'
    end
    object cdsPedido_ItensUSUARIO_CONF: TStringField
      Tag = 1
      FieldName = 'USUARIO_CONF'
      Size = 15
    end
    object cdsPedido_ItensVLR_ICMSFRETE: TFloatField
      Tag = 1
      FieldName = 'VLR_ICMSFRETE'
    end
    object cdsPedido_ItensQTD_SOBRA_OC: TFloatField
      Tag = 1
      FieldName = 'QTD_SOBRA_OC'
    end
    object cdsPedido_ItensTIPO_SERVICO: TStringField
      Tag = 1
      FieldName = 'TIPO_SERVICO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ItensID_SERVICO_INT: TIntegerField
      Tag = 1
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsPedido_ItensNOME_SERVICO_INT: TStringField
      Tag = 1
      FieldName = 'NOME_SERVICO_INT'
      Size = 150
    end
    object cdsPedido_ItensPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
      DisplayFormat = '##0.00'
    end
    object cdsPedido_ItensPERC_MARGEM: TFloatField
      FieldName = 'PERC_MARGEM'
    end
    object cdsPedido_ItensPERC_MARGEM2: TFloatField
      FieldName = 'PERC_MARGEM2'
    end
    object cdsPedido_ItensID_OS_SERV: TIntegerField
      Tag = 1
      FieldName = 'ID_OS_SERV'
    end
    object cdsPedido_ItensNUM_OS_SERV: TIntegerField
      Tag = 1
      FieldName = 'NUM_OS_SERV'
    end
    object cdsPedido_ItensID_SERVICO: TIntegerField
      Tag = 1
      FieldName = 'ID_SERVICO'
    end
    object cdsPedido_ItensNUM_NOTA_ENT: TIntegerField
      Tag = 1
      FieldName = 'NUM_NOTA_ENT'
    end
    object cdsPedido_ItensSERIE_NOTA_ENT: TStringField
      Tag = 1
      FieldName = 'SERIE_NOTA_ENT'
      Size = 3
    end
    object cdsPedido_ItensENCERADO: TStringField
      FieldName = 'ENCERADO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ItensCONV_UNIDADE: TFloatField
      FieldName = 'CONV_UNIDADE'
    end
    object cdsPedido_ItensUNIDADE_PROD: TStringField
      FieldName = 'UNIDADE_PROD'
      Size = 6
    end
    object cdsPedido_ItensOBS_ETIQUETA: TStringField
      FieldName = 'OBS_ETIQUETA'
      Size = 30
    end
    object cdsPedido_ItensQTD_CAIXA: TIntegerField
      Tag = 1
      FieldName = 'QTD_CAIXA'
    end
    object cdsPedido_ItensNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object cdsPedido_ItensclVlr_Total_Custo: TFloatField
      Tag = 1
      FieldKind = fkCalculated
      FieldName = 'clVlr_Total_Custo'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object cdsPedido_ItensclVlr_Diferenca: TFloatField
      Tag = 1
      FieldKind = fkCalculated
      FieldName = 'clVlr_Diferenca'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object cdsPedido_ItensCOD_COR_CLIENTE: TStringField
      Tag = 1
      FieldName = 'COD_COR_CLIENTE'
      Size = 10
    end
    object cdsPedido_ItensNOME_COR_CLIENTE: TStringField
      Tag = 1
      FieldName = 'NOME_COR_CLIENTE'
      Size = 100
    end
    object cdsPedido_ItensTAMANHO_CLIENTE: TStringField
      Tag = 1
      FieldName = 'TAMANHO_CLIENTE'
      Size = 10
    end
    object cdsPedido_ItensFOTO: TStringField
      Tag = 1
      FieldName = 'FOTO'
      Size = 250
    end
    object cdsPedido_ItensVLR_MATERIAL: TFloatField
      Tag = 1
      FieldName = 'VLR_MATERIAL'
    end
    object cdsPedido_ItensTEMPO: TFloatField
      Tag = 1
      FieldName = 'TEMPO'
    end
    object cdsPedido_ItensDTBAIXA: TDateField
      Tag = 1
      FieldName = 'DTBAIXA'
    end
    object cdsPedido_ItensTEMPO_REAL: TFloatField
      Tag = 1
      FieldName = 'TEMPO_REAL'
    end
    object cdsPedido_ItensVLR_UNITARIO_REAL: TFloatField
      Tag = 1
      FieldName = 'VLR_UNITARIO_REAL'
    end
    object cdsPedido_ItensFATOR_CALCULO_REAL: TFloatField
      Tag = 1
      FieldName = 'FATOR_CALCULO_REAL'
    end
    object cdsPedido_ItensTIPO_OS: TStringField
      FieldName = 'TIPO_OS'
      Size = 2
    end
    object cdsPedido_ItensDIFERENCA_ICMS: TStringField
      FieldName = 'DIFERENCA_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ItensCAIXINHA: TStringField
      FieldName = 'CAIXINHA'
      Size = 30
    end
    object cdsPedido_ItensBASE_IPI: TFloatField
      Tag = 1
      FieldName = 'BASE_IPI'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ItensATUALIZA_PRECO_CUSTO: TStringField
      FieldName = 'ATUALIZA_PRECO_CUSTO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_ItensFABRICA: TStringField
      FieldName = 'FABRICA'
      Size = 10
    end
  end
  object dsPedido_Itens: TDataSource
    DataSet = cdsPedido_Itens
    Left = 56
    Top = 57
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
    Left = 24
    Top = 280
    object sdsPedido_DescontoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedido_DescontoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    BeforeInsert = cdsPedido_DescontoBeforeInsert
    AfterInsert = cdsPedido_DescontoAfterInsert
    AfterPost = cdsPedido_DescontoAfterPost
    Left = 40
    Top = 280
    object cdsPedido_DescontoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedido_DescontoITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedido_DescontoPERC_DESCONTO: TFloatField
      DisplayLabel = '% Desconto'
      FieldName = 'PERC_DESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsPedido_DescontoVLR_DESCONTO: TIntegerField
      DisplayLabel = 'Vlr. Desconto'
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '0.00'
    end
  end
  object dsPedido_Desconto: TDataSource
    DataSet = cdsPedido_Desconto
    Left = 56
    Top = 280
  end
  object sdsPedidoImp: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PED.*, CLI.NOME NOME_CLI, CLI.ENDERECO END_CLIENTE, CLI.N' +
      'UM_END NUM_END_CLIENTE,'#13#10'       CLI.COMPLEMENTO_END COMPL_END_CL' +
      'IENTE, CLI.BAIRRO BAIRRO_CLIENTE, CLI.CIDADE CIDADE_CLIENTE, CLI' +
      '.UF,'#13#10'       CLI.DDDFONE1 DDD_CLIENTE, CLI.TELEFONE1 FONE_CLIENT' +
      'E, CLI.DDDFAX DDD_FAX_CLIENTE, CLI.FAX FAX_CLIENTE,'#13#10'       CLI.' +
      'CNPJ_CPF CNPJ_CPF_CLIENTE, CLI.INSCR_EST INSCR_EST_CLIENTE, CLI.' +
      'CEP CEP_CLIENTE,'#13#10'       CLI.EMAIL_NFE EMAIL_NFE_CLIENTE, CLI.NO' +
      'ME_ENTREGA NOMECLIENT, CLI.ENDERECO_ENT, CLI.NUM_END_ENT, CLI.BA' +
      'IRRO_ENT,'#13#10'       CLI.CIDADE_ENT, CLI.UF_ENT, CLI.DDD_ENT, CLI.F' +
      'ONE_ENT, CLI.CNPJ_CPF_ENT, CLI.INSC_EST_ENT, CLI.CEP_ENT,'#13#10'     ' +
      '  CLI.EMAIL_COMPRAS EMAIL_COMPRAS_FORN, CLI.CONTATO_COMPRAS, CLI' +
      '.ENDERECO_PGTO, CLI.CIDADE_PGTO, CLI.UF_PGTO,'#13#10'       CLI.BAIRRO' +
      '_PGTO, CLI.CEP_PGTO, CLI.NUM_END_PGTO, CLI.FANTASIA FANTASIA_CLI' +
      ','#13#10'       CLI.NOME || '#39' - '#39' || COALESCE(PED.NOME_CONSUMIDOR, '#39#39')' +
      ' NOME_CLI_CONS, CLI.PESSOA,'#13#10#13#10'       FIL.NOME NOME_FILIAL, FIL.' +
      'ENDERECO END_FILIAL, FIL.BAIRRO BAIRRO_FILIAL, FIL.CIDADE CIDADE' +
      '_FILIAL,'#13#10'       FIL.DDD1 DDD_FILIAL, FIL.FONE FONE_FILIAL, FIL.' +
      'FAX FONE1_FILIAL, FIL.CEP CEP_FILIAL, FIL.UF UF_FILIAL,'#13#10'       ' +
      'FIL.CNPJ_CPF CNPJ_CPF_FILIAL, FIL.INSCR_EST INSCR_EST_FILIAL, FI' +
      'L.NUM_END NUM_END_FILIAL, FIL.ENDLOGO,'#13#10'       FIL.NOME_INTERNO ' +
      'NOME_INTERNO_FIL,FIL.EMAIL EMAIL_FIL, FIL.DDDFAX DDDFAX_FIL, FIL' +
      '.FAX FAX_FIL,'#13#10'       FIL.complemento_end COMPL_END_FILIAL,'#13#10#13#10' ' +
      '      TRA.NOME NOME_TRA, TRA.ENDERECO END_TRA, TRA.NUM_END NUM_E' +
      'ND_TRA, TRA.BAIRRO BAIRRO_TRA, TRA.CIDADE CIDADE_TRA,'#13#10'       TR' +
      'A.UF UF_TRA, TRA.DDDFONE1 DDD_TRA, TRA.TELEFONE1 FONE_TRA, TRA.D' +
      'DDFAX DDD_FAX_TRA, TRA.FAX FAX_TRA,'#13#10'       TRA.CNPJ_CPF CNPJ_CP' +
      'F_TRA, TRA.INSCR_EST INSCR_EST_TRA, TRA.CEP CEP_TRA,'#13#10#13#10'       R' +
      'ED.NOME NOME_RED, COND.NOME NOME_CONDPGTO,'#13#10'       (PED.VLR_TOTA' +
      'L + PED.VLR_DESCONTO) VLR_ITENS2, VEND.NOME NOME_VENDEDOR, VEND.' +
      'DDDFONE1 VENDEDOR_DDD,'#13#10'       VEND.TELEFONE1 VENDEDOR_FONE, TRA' +
      '.NOME NOME_TRANSPORTADORA, FUN.CODIGO ID_FUNCIONARIO, FUN.NOME N' +
      'OME_FUNCIONARIO,'#13#10'       FUN.EMAIL EMAIL_FUNCIONARIO,'#13#10#13#10'       ' +
      'MAPA.NUM_MAPA, MAPA.NOME NOME_MAPA, ATE.NOME NOME_ATELIER, OPN.N' +
      'OME NOME_OPERACAO, OPN.TIPO_NOTA,'#13#10'       GP.NOME NOME_GRUPO_PES' +
      'SOA, CLI.IMP_COR_CLIENTE, CAST(PED.DDD AS VARCHAR(02)) DDD_PEDID' +
      'O, PED.FONE FONE_PEDIDO,'#13#10'       CLI.OBS_AVISO, CLI.MOSTRAR_AVIS' +
      'O, ATE.CNPJ_CPF CNPJ_CPF_ATELIER, ATE.PESSOA PESSOA_ATELIER, CLI' +
      '.NOME_CONTATO,'#13#10'       CLI.IMP_ETIQUETA_ROT,'#13#10'       CASE'#13#10'     ' +
      '    WHEN PED.ID_CLIENTE = (SELECT PA2.ID_CLIENTE_CONSUMIDOR'#13#10'   ' +
      '                             FROM PARAMETROS PA2) THEN PED.NOME_' +
      'CONSUMIDOR'#13#10'         ELSE PED.NOME_CLIENTE'#13#10'       END NOME_CLIE' +
      'NTE2,'#13#10'       CASE'#13#10'         WHEN PED.TIPO_FRETE = '#39'1'#39' THEN '#39'1 E' +
      'mitente'#39#13#10'         WHEN PED.TIPO_FRETE = '#39'2'#39' THEN '#39' 2 Destinat'#225'r' +
      'io'#39#13#10'         WHEN PED.TIPO_FRETE = '#39'3'#39' THEN '#39' 3 Terceiros'#39#13#10'   ' +
      '      WHEN PED.TIPO_FRETE = '#39'4'#39' THEN '#39' 4 Transporte Pr'#243'prio por ' +
      'conta do Remetente'#39#13#10'         WHEN PED.TIPO_FRETE = '#39'5'#39' THEN '#39' 5' +
      ' Transporte Pr'#243'prio por conta do Destinat'#225'rio'#39#13#10'         WHEN PE' +
      'D.TIPO_FRETE = '#39'9'#39' THEN '#39' 9 Sem Frete'#39#13#10'       END DESC_TIPO_FRE' +
      'TE'#13#10#13#10'FROM PEDIDO PED'#13#10'LEFT JOIN PESSOA CLI ON PED.ID_CLIENTE = ' +
      'CLI.CODIGO'#13#10'INNER JOIN FILIAL FIL ON (PED.FILIAL = FIL.ID)'#13#10'LEFT' +
      ' JOIN PESSOA TRA ON (PED.ID_TRANSPORTADORA = TRA.CODIGO)'#13#10'LEFT J' +
      'OIN PESSOA RED ON (PED.ID_REDESPACHO = RED.CODIGO)'#13#10'LEFT JOIN CO' +
      'NDPGTO COND ON (PED.ID_CONDPGTO = COND.ID)'#13#10'LEFT JOIN PESSOA VEN' +
      'D ON (PED.ID_VENDEDOR = VEND.CODIGO)'#13#10'LEFT JOIN FUNCIONARIO FUN ' +
      'ON (PED.ID_FUNCIONARIO = FUN.CODIGO)'#13#10'LEFT JOIN MAPA_COMPRAS MAP' +
      'A ON (PED.ID_MAPA = MAPA.ID)'#13#10'LEFT JOIN PESSOA ATE ON (PED.ID_AT' +
      'ELIER = ATE.CODIGO)'#13#10'LEFT JOIN OPERACAO_NOTA OPN ON (PED.ID_OPER' +
      'ACAO_NOTA = OPN.ID)'#13#10'LEFT JOIN GRUPO_PESSOA GP ON PED.ID_GRUPO_P' +
      'ESSOA = GP.ID'#13#10'WHERE PED.ID = :ID'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 216
    Top = 374
  end
  object dspPedidoImp: TDataSetProvider
    DataSet = sdsPedidoImp
    Left = 232
    Top = 374
  end
  object cdsPedidoImp: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspPedidoImp'
    OnCalcFields = pedidoImpCalcFields
    Left = 248
    Top = 374
    object cdsPedidoImpID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedidoImpFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsPedidoImpDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsPedidoImpPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsPedidoImpID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsPedidoImpID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsPedidoImpID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object cdsPedidoImpID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsPedidoImpID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsPedidoImpID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsPedidoImpTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
    object cdsPedidoImpPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsPedidoImpQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedidoImpQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsPedidoImpQTD_CANCELADO: TFloatField
      FieldName = 'QTD_CANCELADO'
    end
    object cdsPedidoImpQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsPedidoImpVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedidoImpVLR_ITENS: TFloatField
      FieldName = 'VLR_ITENS'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedidoImpVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedidoImpCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImpDOLAR: TStringField
      FieldName = 'DOLAR'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImpDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsPedidoImpPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object cdsPedidoImpOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPedidoImpVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedidoImpBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object cdsPedidoImpVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedidoImpBASE_ICMSTRANSF: TFloatField
      FieldName = 'BASE_ICMSTRANSF'
    end
    object cdsPedidoImpPERC_TRANSF: TFloatField
      FieldName = 'PERC_TRANSF'
    end
    object cdsPedidoImpVLR_TRANSF: TFloatField
      FieldName = 'VLR_TRANSF'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedidoImpVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedidoImpBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
    end
    object cdsPedidoImpVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
    end
    object cdsPedidoImpPERC_ICMSSIMPLES: TFloatField
      FieldName = 'PERC_ICMSSIMPLES'
    end
    object cdsPedidoImpBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedidoImpVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedidoImpID_CONFIG_CFOP: TIntegerField
      FieldName = 'ID_CONFIG_CFOP'
    end
    object cdsPedidoImpTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      Size = 1
    end
    object cdsPedidoImpLOCALENTREGA: TStringField
      FieldName = 'LOCALENTREGA'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImpPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
      DisplayFormat = '0.000'
    end
    object cdsPedidoImpPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
      DisplayFormat = '0.000'
    end
    object cdsPedidoImpCALCULARICMSSOBREIPI: TStringField
      FieldName = 'CALCULARICMSSOBREIPI'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImpID_REGIMETRIB: TIntegerField
      FieldName = 'ID_REGIMETRIB'
    end
    object cdsPedidoImpSIMPLES_FILIAL: TStringField
      FieldName = 'SIMPLES_FILIAL'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImpDESCRICAO_DESC: TStringField
      FieldName = 'DESCRICAO_DESC'
      Size = 70
    end
    object cdsPedidoImpNOME_CLI: TStringField
      FieldName = 'NOME_CLI'
      Size = 60
    end
    object cdsPedidoImpEND_CLIENTE: TStringField
      FieldName = 'END_CLIENTE'
      Size = 60
    end
    object cdsPedidoImpNUM_END_CLIENTE: TStringField
      FieldName = 'NUM_END_CLIENTE'
    end
    object cdsPedidoImpBAIRRO_CLIENTE: TStringField
      FieldName = 'BAIRRO_CLIENTE'
      Size = 30
    end
    object cdsPedidoImpCIDADE_CLIENTE: TStringField
      FieldName = 'CIDADE_CLIENTE'
      Size = 40
    end
    object cdsPedidoImpUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsPedidoImpDDD_CLIENTE: TIntegerField
      FieldName = 'DDD_CLIENTE'
    end
    object cdsPedidoImpFONE_CLIENTE: TStringField
      FieldName = 'FONE_CLIENTE'
      Size = 15
    end
    object cdsPedidoImpDDD_FAX_CLIENTE: TIntegerField
      FieldName = 'DDD_FAX_CLIENTE'
    end
    object cdsPedidoImpFAX_CLIENTE: TStringField
      FieldName = 'FAX_CLIENTE'
      Size = 15
    end
    object cdsPedidoImpCNPJ_CPF_CLIENTE: TStringField
      FieldName = 'CNPJ_CPF_CLIENTE'
      Size = 18
    end
    object cdsPedidoImpINSCR_EST_CLIENTE: TStringField
      FieldName = 'INSCR_EST_CLIENTE'
      Size = 18
    end
    object cdsPedidoImpCEP_CLIENTE: TStringField
      FieldName = 'CEP_CLIENTE'
      Size = 10
    end
    object cdsPedidoImpEMAIL_NFE_CLIENTE: TStringField
      FieldName = 'EMAIL_NFE_CLIENTE'
      Size = 250
    end
    object cdsPedidoImpNOMECLIENT: TStringField
      FieldName = 'NOMECLIENT'
      Size = 60
    end
    object cdsPedidoImpENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 40
    end
    object cdsPedidoImpNUM_END_ENT: TStringField
      FieldName = 'NUM_END_ENT'
    end
    object cdsPedidoImpBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 26
    end
    object cdsPedidoImpCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 40
    end
    object cdsPedidoImpUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object cdsPedidoImpDDD_ENT: TIntegerField
      FieldName = 'DDD_ENT'
    end
    object cdsPedidoImpFONE_ENT: TStringField
      FieldName = 'FONE_ENT'
      Size = 15
    end
    object cdsPedidoImpCNPJ_CPF_ENT: TStringField
      FieldName = 'CNPJ_CPF_ENT'
      Size = 18
    end
    object cdsPedidoImpINSC_EST_ENT: TStringField
      FieldName = 'INSC_EST_ENT'
      Size = 18
    end
    object cdsPedidoImpCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 10
    end
    object cdsPedidoImpNOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object cdsPedidoImpEND_FILIAL: TStringField
      FieldName = 'END_FILIAL'
      Size = 60
    end
    object cdsPedidoImpBAIRRO_FILIAL: TStringField
      FieldName = 'BAIRRO_FILIAL'
      Size = 30
    end
    object cdsPedidoImpCIDADE_FILIAL: TStringField
      FieldName = 'CIDADE_FILIAL'
      Size = 40
    end
    object cdsPedidoImpDDD_FILIAL: TIntegerField
      FieldName = 'DDD_FILIAL'
    end
    object cdsPedidoImpFONE_FILIAL: TStringField
      FieldName = 'FONE_FILIAL'
      Size = 15
    end
    object cdsPedidoImpCEP_FILIAL: TStringField
      FieldName = 'CEP_FILIAL'
      Size = 9
    end
    object cdsPedidoImpUF_FILIAL: TStringField
      FieldName = 'UF_FILIAL'
      Size = 2
    end
    object cdsPedidoImpCNPJ_CPF_FILIAL: TStringField
      FieldName = 'CNPJ_CPF_FILIAL'
      Size = 18
    end
    object cdsPedidoImpINSCR_EST_FILIAL: TStringField
      FieldName = 'INSCR_EST_FILIAL'
      Size = 18
    end
    object cdsPedidoImpNOME_TRA: TStringField
      FieldName = 'NOME_TRA'
      Size = 60
    end
    object cdsPedidoImpEND_TRA: TStringField
      FieldName = 'END_TRA'
      Size = 60
    end
    object cdsPedidoImpNUM_END_TRA: TStringField
      FieldName = 'NUM_END_TRA'
    end
    object cdsPedidoImpBAIRRO_TRA: TStringField
      FieldName = 'BAIRRO_TRA'
      Size = 30
    end
    object cdsPedidoImpCIDADE_TRA: TStringField
      FieldName = 'CIDADE_TRA'
      Size = 40
    end
    object cdsPedidoImpUF_TRA: TStringField
      FieldName = 'UF_TRA'
      FixedChar = True
      Size = 2
    end
    object cdsPedidoImpDDD_TRA: TIntegerField
      FieldName = 'DDD_TRA'
    end
    object cdsPedidoImpFONE_TRA: TStringField
      FieldName = 'FONE_TRA'
      Size = 15
    end
    object cdsPedidoImpDDD_FAX_TRA: TIntegerField
      FieldName = 'DDD_FAX_TRA'
    end
    object cdsPedidoImpFAX_TRA: TStringField
      FieldName = 'FAX_TRA'
      Size = 15
    end
    object cdsPedidoImpCNPJ_CPF_TRA: TStringField
      FieldName = 'CNPJ_CPF_TRA'
      Size = 18
    end
    object cdsPedidoImpINSCR_EST_TRA: TStringField
      FieldName = 'INSCR_EST_TRA'
      Size = 18
    end
    object cdsPedidoImpCEP_TRA: TStringField
      FieldName = 'CEP_TRA'
      Size = 10
    end
    object cdsPedidoImpNOME_RED: TStringField
      FieldName = 'NOME_RED'
      Size = 60
    end
    object cdsPedidoImpNOME_CONDPGTO: TStringField
      FieldName = 'NOME_CONDPGTO'
      Size = 40
    end
    object cdsPedidoImpNUM_END_FILIAL: TStringField
      FieldName = 'NUM_END_FILIAL'
      Size = 15
    end
    object cdsPedidoImpENDLOGO: TStringField
      FieldName = 'ENDLOGO'
      Size = 250
    end
    object cdsPedidoImpIMP_OC_NOTA: TStringField
      FieldName = 'IMP_OC_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImpNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsPedidoImpTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImpVALIDADE: TStringField
      FieldName = 'VALIDADE'
      Size = 30
    end
    object cdsPedidoImpNUM_ORCAMENTO: TIntegerField
      FieldName = 'NUM_ORCAMENTO'
    end
    object cdsPedidoImpNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPedidoImpNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 60
    end
    object cdsPedidoImpVLR_ADIANTAMENTO: TFloatField
      FieldName = 'VLR_ADIANTAMENTO'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImpEMAIL_COMPRAS: TStringField
      FieldName = 'EMAIL_COMPRAS'
      Size = 200
    end
    object cdsPedidoImpCONTATO_COMPRAS: TStringField
      FieldName = 'CONTATO_COMPRAS'
      Size = 60
    end
    object cdsPedidoImpFONE1_FILIAL: TStringField
      FieldName = 'FONE1_FILIAL'
      Size = 15
    end
    object cdsPedidoImpNOME_INTERNO_FIL: TStringField
      FieldName = 'NOME_INTERNO_FIL'
      Size = 30
    end
    object cdsPedidoImpVLR_ITENS2: TFloatField
      FieldName = 'VLR_ITENS2'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedidoImpNOME_CONSUMIDOR: TStringField
      FieldName = 'NOME_CONSUMIDOR'
      Size = 30
    end
    object cdsPedidoImpclTIPO_FRETE: TStringField
      FieldKind = fkCalculated
      FieldName = 'clTIPO_FRETE'
      Size = 15
      Calculated = True
    end
    object cdsPedidoImpNOME_PRODUTO_PROPOSTA: TStringField
      FieldName = 'NOME_PRODUTO_PROPOSTA'
      Size = 100
    end
    object cdsPedidoImpNOME_FUNCIONARIO: TStringField
      FieldName = 'NOME_FUNCIONARIO'
      Size = 50
    end
    object cdsPedidoImpEMAIL_FUNCIONARIO: TStringField
      FieldName = 'EMAIL_FUNCIONARIO'
      Size = 100
    end
    object cdsPedidoImpID_OPERACAO_NOTA: TIntegerField
      FieldName = 'ID_OPERACAO_NOTA'
    end
    object cdsPedidoImpFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImpFATURADO: TStringField
      FieldName = 'FATURADO'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImpID_SOLICITANTE: TIntegerField
      FieldName = 'ID_SOLICITANTE'
    end
    object cdsPedidoImpID_PROJETO: TIntegerField
      FieldName = 'ID_PROJETO'
    end
    object cdsPedidoImpAPROVADO_ORC: TStringField
      FieldName = 'APROVADO_ORC'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImpAMOSTRA_GRATIS: TStringField
      FieldName = 'AMOSTRA_GRATIS'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImpID_CLIENTE_TRIANGULAR: TIntegerField
      FieldName = 'ID_CLIENTE_TRIANGULAR'
    end
    object cdsPedidoImpNUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object cdsPedidoImpFRETE_SOMAR: TStringField
      FieldName = 'FRETE_SOMAR'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImpROMANEIO: TStringField
      FieldName = 'ROMANEIO'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImpTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImpID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsPedidoImpNOME_TRANSPORTADORA: TStringField
      FieldName = 'NOME_TRANSPORTADORA'
      Size = 60
    end
    object cdsPedidoImpVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedidoImpVENDEDOR_DDD: TIntegerField
      FieldName = 'VENDEDOR_DDD'
    end
    object cdsPedidoImpVENDEDOR_FONE: TStringField
      FieldName = 'VENDEDOR_FONE'
      Size = 15
    end
    object cdsPedidoImpVLR_TOTAL_TRILHOS: TFloatField
      FieldName = 'VLR_TOTAL_TRILHOS'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImpVLR_TOTAL_ROLDANAS: TFloatField
      FieldName = 'VLR_TOTAL_ROLDANAS'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImpENDERECO_PGTO: TStringField
      FieldName = 'ENDERECO_PGTO'
      Size = 40
    end
    object cdsPedidoImpCIDADE_PGTO: TStringField
      FieldName = 'CIDADE_PGTO'
      Size = 40
    end
    object cdsPedidoImpUF_PGTO: TStringField
      FieldName = 'UF_PGTO'
      FixedChar = True
      Size = 2
    end
    object cdsPedidoImpBAIRRO_PGTO: TStringField
      FieldName = 'BAIRRO_PGTO'
      Size = 26
    end
    object cdsPedidoImpCEP_PGTO: TStringField
      FieldName = 'CEP_PGTO'
      Size = 10
    end
    object cdsPedidoImpNUM_END_PGTO: TStringField
      FieldName = 'NUM_END_PGTO'
    end
    object cdsPedidoImpFANTASIA_CLI: TStringField
      FieldName = 'FANTASIA_CLI'
      Size = 30
    end
    object cdsPedidoImpID_MAPA: TIntegerField
      FieldName = 'ID_MAPA'
    end
    object cdsPedidoImpNUM_MAPA: TIntegerField
      FieldName = 'NUM_MAPA'
    end
    object cdsPedidoImpNOME_MAPA: TStringField
      FieldName = 'NOME_MAPA'
      Size = 40
    end
    object cdsPedidoImpAPROVADO_PED: TStringField
      FieldName = 'APROVADO_PED'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImpVLR_ICMS_FCP: TFloatField
      FieldName = 'VLR_ICMS_FCP'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedidoImpVLR_ICMS_UF_DEST: TFloatField
      FieldName = 'VLR_ICMS_UF_DEST'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedidoImpVLR_ICMS_UF_REMET: TFloatField
      FieldName = 'VLR_ICMS_UF_REMET'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPedidoImpNOME_ATELIER: TStringField
      FieldName = 'NOME_ATELIER'
      Size = 60
    end
    object cdsPedidoImpID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object cdsPedidoImpOBS_ROTULO: TStringField
      FieldName = 'OBS_ROTULO'
      Size = 50
    end
    object cdsPedidoImpROTULO_IMP: TStringField
      FieldName = 'ROTULO_IMP'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImpUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsPedidoImpVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object cdsPedidoImpNOME_CLI_CONS: TStringField
      FieldName = 'NOME_CLI_CONS'
      Size = 93
    end
    object cdsPedidoImpNOME_OPERACAO: TStringField
      FieldName = 'NOME_OPERACAO'
      Size = 40
    end
    object cdsPedidoImpTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImpDTRECEBIMENTO: TDateField
      FieldName = 'DTRECEBIMENTO'
    end
    object cdsPedidoImpHRUSUARIO: TTimeField
      FieldName = 'HRUSUARIO'
    end
    object cdsPedidoImpID_FUNCIONARIO_1: TIntegerField
      FieldName = 'ID_FUNCIONARIO_1'
    end
    object cdsPedidoImpNOME_GRUPO_PESSOA: TStringField
      FieldName = 'NOME_GRUPO_PESSOA'
      Size = 40
    end
    object cdsPedidoImpPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImpIMP_COR_CLIENTE: TStringField
      FieldName = 'IMP_COR_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImpDDD_PEDIDO: TStringField
      FieldName = 'DDD_PEDIDO'
      Size = 2
    end
    object cdsPedidoImpFONE_PEDIDO: TStringField
      FieldName = 'FONE_PEDIDO'
      Size = 10
    end
    object cdsPedidoImpOBS_AVISO: TStringField
      FieldName = 'OBS_AVISO'
      Size = 150
    end
    object cdsPedidoImpMOSTRAR_AVISO: TStringField
      FieldName = 'MOSTRAR_AVISO'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImpVLR_MAO_OBRA: TFloatField
      FieldName = 'VLR_MAO_OBRA'
    end
    object cdsPedidoImpCNPJ_CPF_ATELIER: TStringField
      FieldName = 'CNPJ_CPF_ATELIER'
    end
    object cdsPedidoImpPESSOA_ATELIER: TStringField
      FieldName = 'PESSOA_ATELIER'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImpEMAIL_COMPRAS_FORN: TStringField
      FieldName = 'EMAIL_COMPRAS_FORN'
      Size = 200
    end
    object cdsPedidoImpNOME_CLIENTE2: TStringField
      FieldName = 'NOME_CLIENTE2'
      Size = 60
    end
    object cdsPedidoImpNOME_CONTATO: TStringField
      FieldName = 'NOME_CONTATO'
      Size = 40
    end
    object cdsPedidoImpDESC_TIPO_FRETE: TStringField
      FieldName = 'DESC_TIPO_FRETE'
      FixedChar = True
      Size = 47
    end
    object cdsPedidoImpCOMPL_END_CLIENTE: TStringField
      FieldName = 'COMPL_END_CLIENTE'
      Size = 60
    end
    object cdsPedidoImpEMAIL_FIL: TStringField
      FieldName = 'EMAIL_FIL'
      Size = 40
    end
    object cdsPedidoImpDDDFAX_FIL: TIntegerField
      FieldName = 'DDDFAX_FIL'
    end
    object cdsPedidoImpFAX_FIL: TStringField
      FieldName = 'FAX_FIL'
      Size = 15
    end
    object cdsPedidoImpCOMPL_END_FILIAL: TStringField
      FieldName = 'COMPL_END_FILIAL'
      Size = 60
    end
    object cdsPedidoImpIMP_ETIQUETA_ROT: TStringField
      FieldName = 'IMP_ETIQUETA_ROT'
      FixedChar = True
      Size = 1
    end
  end
  object dsPedidoImp: TDataSource
    DataSet = cdsPedidoImp
    Left = 264
    Top = 374
  end
  object sdsPedidoImp_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ((PI.vlr_total / PI.qtd) * PI.qtd_restante) VLR_TOTAL_PAR' +
      'CIAL,'#13#10'((PI.vlr_duplicata / PI.qtd) * PI.qtd_restante) VLR_DUPLI' +
      'CATA_PARCIAL,'#13#10'((PI.vlr_desconto / PI.qtd) * PI.qtd_restante) VL' +
      'R_DESCONTO_PARCIAL,'#13#10'((PI.vlr_descontorateio / PI.qtd) * PI.qtd_' +
      'restante) VLR_DESCONTORATEIO_PARCIAL,'#13#10'((PI.vlr_frete / PI.qtd) ' +
      '* PI.qtd_restante) VLR_FRETE_PARCIAL,'#13#10'((PI.vlr_icms / PI.qtd) *' +
      ' PI.qtd_restante) VLR_ICMS_PARCIAL,'#13#10'((PI.vlr_transf / PI.qtd) *' +
      ' PI.qtd_restante) VLR_TRANSF_PARCIAL,'#13#10'((PI.vlr_ipi / PI.qtd) * ' +
      'PI.qtd_restante) VLR_IPI_PARCIAL,'#13#10'((PI.vlr_icmssimples / PI.qtd' +
      ') * PI.qtd_restante) VLR_ICMSSIMPLES_PARCIAL,'#13#10'((PI.vlr_icmssubs' +
      't / PI.qtd) * PI.qtd_restante) VLR_ICMSSUBST_PARCIAL,'#13#10'((PI.vlr_' +
      'descontorateio / PI.qtd) * PI.qtd_restante) VLR_DESCONTO_RATEIO_' +
      'PARCIAL,'#13#10'((PI.vlr_icmsdiferido / PI.qtd) * PI.qtd_restante) VLR' +
      '_ICMSDIFERIDO_PARCIAL,'#13#10'((PI.vlr_icms_fcp / PI.qtd) * PI.qtd_res' +
      'tante) VLR_ICMS_FCP_PARCIAL,'#13#10'((PI.vlr_icms_uf_dest / PI.qtd) * ' +
      'PI.qtd_restante) VLR_ICMS_UF_DEST_PARCIAL,'#13#10'((PI.vlr_icms_uf_rem' +
      'et / PI.qtd) * PI.qtd_restante) VLR_ICMS_UF_REMET_PARCIAL,'#13#10'((PI' +
      '.base_icmssubst / PI.qtd) * PI.qtd_restante) BASE_ICMSSUBST_PARC' +
      'IAL'#13#10' , PI.*, MARCA.NOME NOME_MARCA, PT.comprimento, PT.largura,' +
      ' PT.altura,'#13#10'PT.vlr_kg, PT.qtd QTD_TIPO, PT.vlr_unitario VLR_UNI' +
      'TARIO_TIPO, PT.VLR_TOTAL VLR_TOTAL_TIPO,'#13#10'PT.diametro, PT.diamet' +
      'ro_ext, PT.diametro_int, PT.parede, PT.peso, PT.complemento_nome' +
      ','#13#10'PT.tipo_orcamento, PT.descricao_tipo, NCM.NCM, PT.QTD_FUROS, ' +
      'PRO.PICTOGRAMA,'#13#10'COMB.NOME NOME_COR_COMBINACAO, PRO.FOTO, PTAM.t' +
      'am_matriz,'#13#10'ATE.nome NOME_ATELIER, PRO.imp_rotulo IMP_ROTULO_PRO' +
      'D,'#13#10'(pi.vlr_total + pi.vlr_desconto + pi.vlr_descontorateio) Vlr' +
      '_Total_Calc,'#13#10'(pi.vlr_desconto + pi.vlr_descontorateio) Vlr_Desc' +
      'onto_Calc,'#13#10'(pro.pesobruto * pi.qtd_caixa) peso_varejo, PT.ID_MA' +
      'TERIAL,'#13#10'PT.ID_TIPO_MATERIAL, TMAT.NOME NOME_TIPO_MATERIAL, PT.E' +
      'SPESSURA, PT.DENSIDADE, PT.ALTURA_CORTE, PT.LARGURA_CORTE,MP.NOM' +
      'E NOME_ACABAMENTO,'#13#10'PT.CAMINHO_ARQUIVO_PDF,'#13#10#13#10'CASE'#13#10'  WHEN (PLO' +
      'TE.LOCALIZACAO IS NOT NULL) AND (PLOTE.LOCALIZACAO <> '#39#39') THEN P' +
      'LOTE.LOCALIZACAO'#13#10'  WHEN (PRO.LOCALIZACAO IS NOT NULL) AND (PRO.' +
      'LOCALIZACAO <> '#39#39') THEN PRO.LOCALIZACAO'#13#10'  ELSE NULL'#13#10'  END LOCA' +
      'LIZACAO,'#13#10'case '#13#10'  WHEN PI.TIPO_OS = '#39'OC'#39' THEN PI.TIPO_OS'#13#10'  WHE' +
      'N PI.TIPO_OS = '#39'OP'#39' THEN PI.TIPO_OS'#13#10'  WHEN PI.TIPO_OS = '#39'RE'#39' TH' +
      'EN PI.TIPO_OS'#13#10'  ELSE '#39#39#13#10'  END DESC_TIPO_OS, PRO.QTD_POR_ROTULO' +
      ' QTD_POR_ROTULO_PROD, PRO.QTD_EMBALAGEM QTD_EMBALAGEM_PROD, PRO.' +
      'MEDIDA'#13#10#13#10'FROM PEDIDO_ITEM PI'#13#10'LEFT JOIN PRODUTO PRO ON (PI.ID_P' +
      'RODUTO = PRO.ID)'#13#10'LEFT JOIN MARCA ON (PRO.ID_MARCA = MARCA.ID)'#13#10 +
      'LEFT JOIN PEDIDO_ITEM_TIPO PT ON (PI.ID = PT.ID AND PI.ITEM = PT' +
      '.ITEM)'#13#10'LEFT JOIN TAB_NCM NCM ON (PRO.ID_NCM = NCM.ID)'#13#10'LEFT JOI' +
      'N COMBINACAO COMB ON (PI.ID_COR = COMB.ID)'#13#10'LEFT JOIN PRODUTO_TA' +
      'M PTAM ON (PI.id_produto = PTAM.id AND PI.tamanho = PTAM.tamanho' +
      ')'#13#10'LEFT JOIN PESSOA ATE ON (PI.id_atelier = ATE.CODIGO )'#13#10'LEFT J' +
      'OIN PRODUTO_LOTE PLOTE ON (PI.ID_PRODUTO = PLOTE.ID AND PI.NUM_L' +
      'OTE_CONTROLE = PLOTE.NUM_LOTE_CONTROLE)'#13#10'LEFT JOIN TIPO_MATERIAL' +
      ' TMAT ON (PT.ID_TIPO_MATERIAL = TMAT.ID)'#13#10'LEFT JOIN MATRIZ_PRECO' +
      ' MP ON MP.ID = PT.ID_ACABAMENTO'#13#10'WHERE PI.ID = :ID'#13#10'AND ((PI.TIP' +
      'O_ACESSORIO = '#39'N'#39') OR (PI.TIPO_ACESSORIO IS NULL))'#13#10' AND (PI.QTD' +
      ' > 0)'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 216
    Top = 418
  end
  object cdsPedidoImp_Itens: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspPedidoImp_Itens'
    AfterScroll = cdsPedidoImp_ItensAfterScroll
    OnCalcFields = cdsPedidoImp_ItensCalcFields
    Left = 248
    Top = 417
    object cdsPedidoImp_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedidoImp_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPedidoImp_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsPedidoImp_ItensID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object cdsPedidoImp_ItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsPedidoImp_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedidoImp_ItensQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsPedidoImp_ItensQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsPedidoImp_ItensQTD_CANCELADO: TFloatField
      FieldName = 'QTD_CANCELADO'
    end
    object cdsPedidoImp_ItensVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '0.00####'
    end
    object cdsPedidoImp_ItensCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImp_ItensDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsPedidoImp_ItensFATURADO: TStringField
      FieldName = 'FATURADO'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImp_ItensDTFATURADO: TDateField
      FieldName = 'DTFATURADO'
    end
    object cdsPedidoImp_ItensCOD_PRODUTO_CLIENTE: TStringField
      FieldName = 'COD_PRODUTO_CLIENTE'
      Size = 15
    end
    object cdsPedidoImp_ItensTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object cdsPedidoImp_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsPedidoImp_ItensNUMOS: TStringField
      FieldName = 'NUMOS'
      Size = 30
    end
    object cdsPedidoImp_ItensPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object cdsPedidoImp_ItensVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImp_ItensBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object cdsPedidoImp_ItensVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImp_ItensBASE_ICMSTRANSF: TFloatField
      FieldName = 'BASE_ICMSTRANSF'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImp_ItensPERC_TRANSF: TFloatField
      FieldName = 'PERC_TRANSF'
    end
    object cdsPedidoImp_ItensVLR_TRANSF: TFloatField
      FieldName = 'VLR_TRANSF'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImp_ItensVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImp_ItensBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImp_ItensVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImp_ItensPERC_ICMSSIMPLES: TFloatField
      FieldName = 'PERC_ICMSSIMPLES'
    end
    object cdsPedidoImp_ItensBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImp_ItensVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImp_ItensVLR_DESCONTORATEIO: TFloatField
      FieldName = 'VLR_DESCONTORATEIO'
      DisplayFormat = '0.00####'
    end
    object cdsPedidoImp_ItensID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsPedidoImp_ItensID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsPedidoImp_ItensID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object cdsPedidoImp_ItensPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
      DisplayFormat = '0.00##'
    end
    object cdsPedidoImp_ItensPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
      DisplayFormat = '0.00##'
    end
    object cdsPedidoImp_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsPedidoImp_ItensNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsPedidoImp_ItensOBS_COMPLEMENTAR: TStringField
      FieldName = 'OBS_COMPLEMENTAR'
      Size = 250
    end
    object cdsPedidoImp_ItensCALCULARICMSSOBREIPI: TStringField
      FieldName = 'CALCULARICMSSOBREIPI'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImp_ItensVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.00####'
    end
    object cdsPedidoImp_ItensID_CONFIG_CFOP: TIntegerField
      FieldName = 'ID_CONFIG_CFOP'
    end
    object cdsPedidoImp_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImp_ItensQTD_AFATURAR: TFloatField
      FieldName = 'QTD_AFATURAR'
    end
    object cdsPedidoImp_ItensID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
    object cdsPedidoImp_ItensOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPedidoImp_ItensPERC_TRIBICMS: TFloatField
      FieldName = 'PERC_TRIBICMS'
    end
    object cdsPedidoImp_ItensID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object cdsPedidoImp_ItensVLR_UNITARIO_ATELIER: TFloatField
      FieldName = 'VLR_UNITARIO_ATELIER'
    end
    object cdsPedidoImp_ItensVLR_TOTAL_ATELIER: TFloatField
      FieldName = 'VLR_TOTAL_ATELIER'
    end
    object cdsPedidoImp_ItensDT_ENVIO_ATELIER: TDateField
      FieldName = 'DT_ENVIO_ATELIER'
    end
    object cdsPedidoImp_ItensDT_RETORNO_ATELIER: TDateField
      FieldName = 'DT_RETORNO_ATELIER'
    end
    object cdsPedidoImp_ItensVLR_PAGTO_ATELIER: TFloatField
      FieldName = 'VLR_PAGTO_ATELIER'
    end
    object cdsPedidoImp_ItensDT_PAGTO_ATELIER: TDateField
      FieldName = 'DT_PAGTO_ATELIER'
    end
    object cdsPedidoImp_ItensAPROVADO_ORC: TStringField
      FieldName = 'APROVADO_ORC'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImp_ItensMOTIVO_NAO_APROV: TMemoField
      FieldName = 'MOTIVO_NAO_APROV'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPedidoImp_ItensDTAPROVADO_NAO: TDateField
      FieldName = 'DTAPROVADO_NAO'
    end
    object cdsPedidoImp_ItensID_ORCAMENTO: TIntegerField
      FieldName = 'ID_ORCAMENTO'
    end
    object cdsPedidoImp_ItensITEM_ORCAMENTO: TIntegerField
      FieldName = 'ITEM_ORCAMENTO'
    end
    object cdsPedidoImp_ItensQTD_LIBERADA: TFloatField
      FieldName = 'QTD_LIBERADA'
    end
    object cdsPedidoImp_ItensQTD_PRODUZIDA: TFloatField
      FieldName = 'QTD_PRODUZIDA'
    end
    object cdsPedidoImp_ItensNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object cdsPedidoImp_ItensNUM_TALAO: TStringField
      FieldName = 'NUM_TALAO'
      Size = 15
    end
    object cdsPedidoImp_ItensGERAR_LOTE: TStringField
      FieldName = 'GERAR_LOTE'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImp_ItensCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object cdsPedidoImp_ItensDTPRODUCAO: TDateField
      FieldName = 'DTPRODUCAO'
    end
    object cdsPedidoImp_ItensID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsPedidoImp_ItensTIPO_ORCAMENTO: TStringField
      FieldName = 'TIPO_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImp_ItensEND_FOTO: TStringField
      FieldName = 'END_FOTO'
      Size = 200
    end
    object cdsPedidoImp_ItensITEM_CLIENTE: TIntegerField
      FieldName = 'ITEM_CLIENTE'
    end
    object cdsPedidoImp_ItensQTD_PECA: TIntegerField
      FieldName = 'QTD_PECA'
    end
    object cdsPedidoImp_ItensGRAVACAO_COM_ERRO: TStringField
      FieldName = 'GRAVACAO_COM_ERRO'
      Size = 3
    end
    object cdsPedidoImp_ItensQTD_FUT: TFloatField
      FieldName = 'QTD_FUT'
    end
    object cdsPedidoImp_ItensITEM_COMBINACAO: TIntegerField
      FieldName = 'ITEM_COMBINACAO'
    end
    object cdsPedidoImp_ItensTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImp_ItensID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object cdsPedidoImp_ItensGERAR_ESTOQUE: TStringField
      FieldName = 'GERAR_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImp_ItensITEM_ORIGINAL: TIntegerField
      FieldName = 'ITEM_ORIGINAL'
    end
    object cdsPedidoImp_ItensPERC_DIFERIMENTO: TFloatField
      FieldName = 'PERC_DIFERIMENTO'
    end
    object cdsPedidoImp_ItensVLR_ICMSDIFERIDO: TFloatField
      FieldName = 'VLR_ICMSDIFERIDO'
    end
    object cdsPedidoImp_ItensLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 30
    end
    object cdsPedidoImp_ItensNOME_MARCA: TStringField
      FieldName = 'NOME_MARCA'
      Size = 40
    end
    object cdsPedidoImp_ItensCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object cdsPedidoImp_ItensLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object cdsPedidoImp_ItensALTURA: TFloatField
      FieldName = 'ALTURA'
    end
    object cdsPedidoImp_ItensVLR_KG: TFloatField
      FieldName = 'VLR_KG'
    end
    object cdsPedidoImp_ItensQTD_TIPO: TFloatField
      FieldName = 'QTD_TIPO'
    end
    object cdsPedidoImp_ItensVLR_UNITARIO_TIPO: TFloatField
      FieldName = 'VLR_UNITARIO_TIPO'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImp_ItensVLR_TOTAL_TIPO: TFloatField
      FieldName = 'VLR_TOTAL_TIPO'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImp_ItensDIAMETRO: TFloatField
      FieldName = 'DIAMETRO'
    end
    object cdsPedidoImp_ItensDIAMETRO_EXT: TFloatField
      FieldName = 'DIAMETRO_EXT'
    end
    object cdsPedidoImp_ItensDIAMETRO_INT: TFloatField
      FieldName = 'DIAMETRO_INT'
    end
    object cdsPedidoImp_ItensPAREDE: TFloatField
      FieldName = 'PAREDE'
    end
    object cdsPedidoImp_ItensPESO: TFloatField
      FieldName = 'PESO'
    end
    object cdsPedidoImp_ItensCOMPLEMENTO_NOME: TStringField
      FieldName = 'COMPLEMENTO_NOME'
      Size = 50
    end
    object cdsPedidoImp_ItensTIPO_ORCAMENTO_1: TStringField
      FieldName = 'TIPO_ORCAMENTO_1'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImp_ItensDESCRICAO_TIPO: TStringField
      FieldName = 'DESCRICAO_TIPO'
      Size = 12
    end
    object cdsPedidoImp_ItensNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsPedidoImp_ItensQTD_FUROS: TIntegerField
      FieldName = 'QTD_FUROS'
    end
    object cdsPedidoImp_ItensNOME_COR_COMBINACAO: TStringField
      FieldName = 'NOME_COR_COMBINACAO'
      Size = 60
    end
    object cdsPedidoImp_ItenssdsPedidoImp_Cli: TDataSetField
      FieldName = 'sdsPedidoImp_Cli'
    end
    object cdsPedidoImp_ItensFOTO: TStringField
      FieldName = 'FOTO'
      Size = 150
    end
    object cdsPedidoImp_ItensTAM_MATRIZ: TStringField
      FieldName = 'TAM_MATRIZ'
      Size = 10
    end
    object cdsPedidoImp_ItensPICTOGRAMA: TStringField
      FieldName = 'PICTOGRAMA'
      Size = 150
    end
    object cdsPedidoImp_ItensVLR_TOTAL_PARCIAL: TFloatField
      FieldName = 'VLR_TOTAL_PARCIAL'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImp_ItensVLR_DESCONTO_PARCIAL: TFloatField
      FieldName = 'VLR_DESCONTO_PARCIAL'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImp_ItensVLR_FRETE_PARCIAL: TFloatField
      FieldName = 'VLR_FRETE_PARCIAL'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImp_ItensVLR_ICMS_PARCIAL: TFloatField
      FieldName = 'VLR_ICMS_PARCIAL'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImp_ItensVLR_TRANSF_PARCIAL: TFloatField
      FieldName = 'VLR_TRANSF_PARCIAL'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImp_ItensVLR_IPI_PARCIAL: TFloatField
      FieldName = 'VLR_IPI_PARCIAL'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImp_ItensVLR_ICMSSIMPLES_PARCIAL: TFloatField
      FieldName = 'VLR_ICMSSIMPLES_PARCIAL'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImp_ItensVLR_ICMSSUBST_PARCIAL: TFloatField
      FieldName = 'VLR_ICMSSUBST_PARCIAL'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImp_ItensVLR_DESCONTO_RATEIO_PARCIAL: TFloatField
      FieldName = 'VLR_DESCONTO_RATEIO_PARCIAL'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImp_ItensVLR_ICMSDIFERIDO_PARCIAL: TFloatField
      FieldName = 'VLR_ICMSDIFERIDO_PARCIAL'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImp_ItensVLR_ICMS_FCP_PARCIAL: TFloatField
      FieldName = 'VLR_ICMS_FCP_PARCIAL'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImp_ItensVLR_ICMS_UF_DEST_PARCIAL: TFloatField
      FieldName = 'VLR_ICMS_UF_DEST_PARCIAL'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImp_ItensVLR_ICMS_UF_REMET_PARCIAL: TFloatField
      FieldName = 'VLR_ICMS_UF_REMET_PARCIAL'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImp_ItensVLR_DESCONTORATEIO_PARCIAL: TFloatField
      FieldName = 'VLR_DESCONTORATEIO_PARCIAL'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImp_ItensBASE_ICMSSUBST_PARCIAL: TFloatField
      FieldName = 'BASE_ICMSSUBST_PARCIAL'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImp_ItensVLR_ICMS_FCP: TFloatField
      FieldName = 'VLR_ICMS_FCP'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImp_ItensVLR_ICMS_UF_DEST: TFloatField
      FieldName = 'VLR_ICMS_UF_DEST'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImp_ItensVLR_ICMS_UF_REMET: TFloatField
      FieldName = 'VLR_ICMS_UF_REMET'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImp_ItensNOME_ATELIER: TStringField
      FieldName = 'NOME_ATELIER'
      Size = 60
    end
    object cdsPedidoImp_ItensVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object cdsPedidoImp_ItensGERAR_DUPLICATA: TStringField
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImp_ItensVLR_DUPLICATA_PARCIAL: TFloatField
      FieldName = 'VLR_DUPLICATA_PARCIAL'
    end
    object cdsPedidoImp_ItensIMP_ROTULO_PROD: TStringField
      FieldName = 'IMP_ROTULO_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImp_ItensVLR_TOTAL_CALC: TFloatField
      FieldName = 'VLR_TOTAL_CALC'
    end
    object cdsPedidoImp_ItensVLR_DESCONTO_CALC: TFloatField
      FieldName = 'VLR_DESCONTO_CALC'
    end
    object cdsPedidoImp_ItensNUM_OS_SERV: TIntegerField
      FieldName = 'NUM_OS_SERV'
    end
    object cdsPedidoImp_ItensNOME_SERVICO_INT: TStringField
      FieldName = 'NOME_SERVICO_INT'
      Size = 150
    end
    object cdsPedidoImp_ItensNUM_NOTA_ENT: TIntegerField
      FieldName = 'NUM_NOTA_ENT'
    end
    object cdsPedidoImp_ItensSERIE_NOTA_ENT: TStringField
      FieldName = 'SERIE_NOTA_ENT'
      Size = 3
    end
    object cdsPedidoImp_ItensCONV_UNIDADE: TFloatField
      FieldName = 'CONV_UNIDADE'
    end
    object cdsPedidoImp_ItensUNIDADE_PROD: TStringField
      FieldName = 'UNIDADE_PROD'
      Size = 6
    end
    object cdsPedidoImp_ItensENCERADO: TStringField
      FieldName = 'ENCERADO'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImp_ItensQTD_CAIXA: TIntegerField
      FieldName = 'QTD_CAIXA'
    end
    object cdsPedidoImp_ItensNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object cdsPedidoImp_ItensPESO_VAREJO: TFloatField
      FieldName = 'PESO_VAREJO'
    end
    object cdsPedidoImp_ItensCOD_COR_CLIENTE: TStringField
      FieldName = 'COD_COR_CLIENTE'
      Size = 10
    end
    object cdsPedidoImp_ItensNOME_COR_CLIENTE: TStringField
      FieldName = 'NOME_COR_CLIENTE'
      Size = 100
    end
    object cdsPedidoImp_ItensTAMANHO_CLIENTE: TStringField
      FieldName = 'TAMANHO_CLIENTE'
      Size = 10
    end
    object cdsPedidoImp_ItensFOTO_1: TStringField
      FieldName = 'FOTO_1'
      Size = 150
    end
    object cdsPedidoImp_ItensID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsPedidoImp_ItensID_TIPO_MATERIAL: TIntegerField
      FieldName = 'ID_TIPO_MATERIAL'
    end
    object cdsPedidoImp_ItensNOME_TIPO_MATERIAL: TStringField
      FieldName = 'NOME_TIPO_MATERIAL'
      Size = 30
    end
    object cdsPedidoImp_ItensESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
    end
    object cdsPedidoImp_ItensDENSIDADE: TFloatField
      FieldName = 'DENSIDADE'
    end
    object cdsPedidoImp_ItensTIPO_OS: TStringField
      FieldName = 'TIPO_OS'
      Size = 2
    end
    object cdsPedidoImp_ItensDESC_TIPO_OS: TStringField
      FieldName = 'DESC_TIPO_OS'
      Size = 2
    end
    object cdsPedidoImp_ItensALTURA_CORTE: TFloatField
      FieldName = 'ALTURA_CORTE'
    end
    object cdsPedidoImp_ItensLARGURA_CORTE: TFloatField
      FieldName = 'LARGURA_CORTE'
    end
    object cdsPedidoImp_ItensCOD_BARRAS: TStringField
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'COD_BARRAS'
      Calculated = True
    end
    object cdsPedidoImp_ItensNOME_ACABAMENTO: TStringField
      FieldName = 'NOME_ACABAMENTO'
      Size = 30
    end
    object cdsPedidoImp_ItensQTD_POR_ROTULO_PROD: TFloatField
      FieldName = 'QTD_POR_ROTULO_PROD'
    end
    object cdsPedidoImp_ItensQTD_EMBALAGEM_PROD: TFloatField
      FieldName = 'QTD_EMBALAGEM_PROD'
    end
    object cdsPedidoImp_ItensFABRICA: TStringField
      FieldName = 'FABRICA'
      Size = 10
    end
    object cdsPedidoImp_ItensMEDIDA: TStringField
      FieldName = 'MEDIDA'
    end
    object cdsPedidoImp_ItensCAMINHO_ARQUIVO_PDF: TStringField
      FieldName = 'CAMINHO_ARQUIVO_PDF'
      Size = 150
    end
  end
  object dsPedidoImp_Itens: TDataSource
    DataSet = cdsPedidoImp_Itens
    Left = 272
    Top = 418
  end
  object dspPedidoImp_Itens: TDataSetProvider
    DataSet = sdsPedidoImp_Itens
    Left = 233
    Top = 418
  end
  object sdsOperacao_Nota: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM OPERACAO_NOTA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 697
    Top = 504
  end
  object dspOperacao_Nota: TDataSetProvider
    DataSet = sdsOperacao_Nota
    Left = 712
    Top = 504
  end
  object cdsOperacao_Nota: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspOperacao_Nota'
    Left = 728
    Top = 503
    object cdsOperacao_NotaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOperacao_NotaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsOperacao_NotaPEDIR_FINALIDADE: TStringField
      FieldName = 'PEDIR_FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object cdsOperacao_NotaTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
  end
  object dsOperacao_Nota: TDataSource
    DataSet = cdsOperacao_Nota
    Left = 744
    Top = 503
  end
  object sdsCFOP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT T.id, T.codcfop, T.nome, T.nome_interno, T.gerar_ipi, T.g' +
      'erar_icms, T.gerar_duplicata,'#13#10'T.gerar_icms_simples, T.gerar_tri' +
      'buto, T.gerar_estoque_mp, T.somar_vlrtotalproduto, T.id_csticms,' +
      #13#10'T.id_cstipi, T.id_pis, T.id_cofins, T.id_obs_lei, T.copiarnota' +
      'triangular, T.tipo_pis, T.tipo_cofins,'#13#10'T.tipo_empresa, T.tipo_i' +
      'nd_ven, T.substituicao_trib, T.mva, T.beneficiamento, T.maoobra,' +
      ' T.perc_tributo,'#13#10'T.perc_cofins, T.perc_pis, T.ENTRADASAIDA, T.U' +
      'SA_REGRA_ORGAO_PUBLICO'#13#10'FROM TAB_CFOP T'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 696
    Top = 19
  end
  object dspCFOP: TDataSetProvider
    DataSet = sdsCFOP
    Left = 712
    Top = 19
  end
  object cdsCFOP: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODCFOP;ID'
    Params = <>
    ProviderName = 'dspCFOP'
    Left = 728
    Top = 19
    object cdsCFOPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCFOPCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsCFOPNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsCFOPENTRADASAIDA: TStringField
      FieldName = 'ENTRADASAIDA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPGERAR_IPI: TStringField
      FieldName = 'GERAR_IPI'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPGERAR_ICMS: TStringField
      FieldName = 'GERAR_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPGERAR_DUPLICATA: TStringField
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPSOMAR_VLRTOTALPRODUTO: TStringField
      FieldName = 'SOMAR_VLRTOTALPRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object cdsCFOPID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object cdsCFOPID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsCFOPCOPIARNOTATRIANGULAR: TStringField
      FieldName = 'COPIARNOTATRIANGULAR'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object cdsCFOPID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object cdsCFOPTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object cdsCFOPTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object cdsCFOPGERAR_ICMS_SIMPLES: TStringField
      FieldName = 'GERAR_ICMS_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPTIPO_EMPRESA: TStringField
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPSUBSTITUICAO_TRIB: TStringField
      FieldName = 'SUBSTITUICAO_TRIB'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPMVA: TStringField
      FieldName = 'MVA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object cdsCFOPPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object cdsCFOPsdsCFOP_Variacao: TDataSetField
      FieldName = 'sdsCFOP_Variacao'
    end
    object cdsCFOPMAOOBRA: TStringField
      FieldName = 'MAOOBRA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPUSA_REGRA_ORGAO_PUBLICO: TStringField
      FieldName = 'USA_REGRA_ORGAO_PUBLICO'
      FixedChar = True
      Size = 1
    end
  end
  object dsCFOP: TDataSource
    DataSet = cdsCFOP
    Left = 744
    Top = 19
  end
  object sdsCFOP_Variacao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT V.ID, V.ITEM, V.ID_CSTICMS, V.ID_CSTIPI, V.ID_PIS, V.ID_C' +
      'OFINS, V.ID_OPERACAO_NOTA, V.NOME'#13#10'FROM TAB_CFOP_VARIACAO V'#13#10'WHE' +
      'RE V.ID = :ID'#13#10
    DataSource = dsCFOP_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 696
    Top = 553
    object sdsCFOP_VariacaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCFOP_VariacaoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsCFOP_VariacaoID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object sdsCFOP_VariacaoID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object sdsCFOP_VariacaoID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object sdsCFOP_VariacaoID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object sdsCFOP_VariacaoID_OPERACAO_NOTA: TIntegerField
      FieldName = 'ID_OPERACAO_NOTA'
    end
    object sdsCFOP_VariacaoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object cdsCFOP_Variacao: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCFOPsdsCFOP_Variacao
    IndexFieldNames = 'NOME'
    Params = <>
    Left = 720
    Top = 553
    object cdsCFOP_VariacaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCFOP_VariacaoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsCFOP_VariacaoID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object cdsCFOP_VariacaoID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsCFOP_VariacaoID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object cdsCFOP_VariacaoID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object cdsCFOP_VariacaoID_OPERACAO_NOTA: TIntegerField
      FieldName = 'ID_OPERACAO_NOTA'
    end
    object cdsCFOP_VariacaoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dsCFOP_Variacao: TDataSource
    DataSet = cdsCFOP_Variacao
    Left = 744
    Top = 553
  end
  object dsCFOP_Mestre: TDataSource
    DataSet = sdsCFOP
    Left = 784
    Top = 19
  end
  object qRegra_Variacao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_OPERACAO_NOTA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO_EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'UF_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FINALIDADE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CONTROLAR_ICMS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CONTROLAR_REDUCAO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CONTROLAR_IPI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CONTROLAR_SUBSTICMS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CONTROLAR_DIFERIMENTO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM TAB_CFOP_VARIACAO V'
      'WHERE ID_OPERACAO_NOTA = :ID_OPERACAO_NOTA'
      '  AND TIPO_EMPRESA = :TIPO_EMPRESA'
      '  AND TIPO_CLIENTE = :TIPO_CLIENTE'
      '  AND UF_CLIENTE = :UF_CLIENTE'
      '  AND FINALIDADE = :FINALIDADE'
      '  AND CONTROLAR_ICMS = :CONTROLAR_ICMS'
      '  AND CONTROLAR_REDUCAO = :CONTROLAR_REDUCAO'
      '  AND CONTROLAR_IPI = :CONTROLAR_IPI'
      '  AND CONTROLAR_SUBSTICMS = :CONTROLAR_SUBSTICMS'
      '  AND CONTROLAR_DIFERIMENTO = :CONTROLAR_DIFERIMENTO'
      ''
      ''
      ''
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 1118
    Top = 438
    object qRegra_VariacaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qRegra_VariacaoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qRegra_VariacaoID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object qRegra_VariacaoID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object qRegra_VariacaoID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object qRegra_VariacaoID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object qRegra_VariacaoID_OPERACAO_NOTA: TIntegerField
      FieldName = 'ID_OPERACAO_NOTA'
    end
    object qRegra_VariacaoTIPO_EMPRESA: TStringField
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object qRegra_VariacaoTIPO_CLIENTE: TStringField
      FieldName = 'TIPO_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object qRegra_VariacaoUF_CLIENTE: TStringField
      FieldName = 'UF_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object qRegra_VariacaoFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object qRegra_VariacaoCONTROLAR_ICMS: TStringField
      FieldName = 'CONTROLAR_ICMS'
      FixedChar = True
      Size = 1
    end
    object qRegra_VariacaoCONTROLAR_REDUCAO: TStringField
      FieldName = 'CONTROLAR_REDUCAO'
      FixedChar = True
      Size = 1
    end
    object qRegra_VariacaoCONTROLAR_IPI: TStringField
      FieldName = 'CONTROLAR_IPI'
      FixedChar = True
      Size = 1
    end
    object qRegra_VariacaoCONTROLAR_SUBSTICMS: TStringField
      FieldName = 'CONTROLAR_SUBSTICMS'
      FixedChar = True
      Size = 1
    end
    object qRegra_VariacaoCONTROLAR_DIFERIMENTO: TStringField
      FieldName = 'CONTROLAR_DIFERIMENTO'
      FixedChar = True
      Size = 1
    end
    object qRegra_VariacaoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qRegra_VariacaoPESSOA_CLIENTE: TStringField
      FieldName = 'PESSOA_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object qRegra_VariacaoLEI: TMemoField
      FieldName = 'LEI'
      BlobType = ftMemo
      Size = 1
    end
    object qRegra_VariacaoPERC_TRIBUTO: TFloatField
      FieldName = 'PERC_TRIBUTO'
    end
    object qRegra_VariacaoPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object qRegra_VariacaoPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object qRegra_VariacaoTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object qRegra_VariacaoTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object qRegra_VariacaoID_OBS_LEI: TIntegerField
      FieldName = 'ID_OBS_LEI'
    end
  end
  object sdsAtelier: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME '#13#10'FROM PESSOA'#13#10'WHERE INATIVO = '#39'N'#39#13#10'      AN' +
      'D TP_ATELIER = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 368
    Top = 139
  end
  object dspAtelier: TDataSetProvider
    DataSet = sdsAtelier
    Left = 384
    Top = 139
  end
  object cdsAtelier: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspAtelier'
    Left = 400
    Top = 139
    object cdsAtelierCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsAtelierNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsAtelier: TDataSource
    DataSet = cdsAtelier
    Left = 424
    Top = 139
  end
  object qVerifica_OC: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PEDIDO_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_CLIENTE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT P.PEDIDO_CLIENTE, P.ID_CLIENTE, P.ID, P.NUM_PEDIDO'
      'FROM PEDIDO P'
      'WHERE P.PEDIDO_CLIENTE = :PEDIDO_CLIENTE'
      '  AND P.ID_CLIENTE = :ID_CLIENTE')
    SQLConnection = dmDatabase.scoDados
    Left = 1091
    Top = 438
    object qVerifica_OCPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object qVerifica_OCID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object qVerifica_OCID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qVerifica_OCNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
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
    Left = 1186
    Top = 63
  end
  object sdsFuncionario: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT CODIGO, NOME '#13#10'FROM FUNCIONARIO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 528
    Top = 272
  end
  object dspFuncionario: TDataSetProvider
    DataSet = sdsFuncionario
    Left = 552
    Top = 272
  end
  object cdsFuncionario: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFuncionario'
    Left = 576
    Top = 272
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
    Left = 600
    Top = 272
  end
  object sdsObs_Aux: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM OBS_AUX'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 528
    Top = 228
  end
  object dspObs_Aux: TDataSetProvider
    DataSet = sdsObs_Aux
    Left = 552
    Top = 228
  end
  object cdsObs_Aux: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspObs_Aux'
    Left = 576
    Top = 228
    object cdsObs_AuxID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsObs_AuxNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsObs_AuxOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
    object cdsObs_AuxOBS_PEDIDO: TMemoField
      FieldName = 'OBS_PEDIDO'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dsObs_Aux: TDataSource
    DataSet = cdsObs_Aux
    Left = 600
    Top = 227
  end
  object sdsPedido_Cli: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PED.*, CC.DESCRICAO NOME_CENTROCUSTO'#13#10'FROM PEDIDO_CLI PED' +
      #13#10'INNER JOIN CENTROCUSTO CC'#13#10'ON PED.ID_CENTROCUSTO = CC.ID'#13#10'WHER' +
      'E PED.ID = :ID'#13#10'   AND PED.ITEM = :ITEM'
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
    Left = 24
    Top = 106
    object sdsPedido_CliID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedido_CliITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedido_CliQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsPedido_CliID_CENTROCUSTO: TIntegerField
      FieldName = 'ID_CENTROCUSTO'
      Required = True
    end
    object sdsPedido_CliNOME_CENTROCUSTO: TStringField
      FieldName = 'NOME_CENTROCUSTO'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsPedido_Item_Mestre: TDataSource
    DataSet = sdsPedido_Itens
    Left = 73
    Top = 56
  end
  object cdsPedido_Cli: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPedido_ItenssdsPedido_Cli
    IndexFieldNames = 'ID;ITEM;ID_CENTROCUSTO'
    Params = <>
    Left = 40
    Top = 106
    object cdsPedido_CliID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedido_CliITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedido_CliID_CENTROCUSTO: TIntegerField
      FieldName = 'ID_CENTROCUSTO'
      Required = True
    end
    object cdsPedido_CliQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedido_CliNOME_CENTROCUSTO: TStringField
      FieldName = 'NOME_CENTROCUSTO'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsPedido_Cli: TDataSource
    DataSet = cdsPedido_Cli
    Left = 56
    Top = 106
  end
  object sdsProjeto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, DESCRICAO NOME, CODIGO'#13#10'FROM CENTROCUSTO'#13#10'WHERE TIPO ' +
      '= '#39'A'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 368
    Top = 273
  end
  object dspProjeto: TDataSetProvider
    DataSet = sdsProjeto
    Left = 384
    Top = 273
  end
  object cdsProjeto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspProjeto'
    Left = 400
    Top = 273
    object cdsProjetoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProjetoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsProjetoCODIGO: TStringField
      FieldName = 'CODIGO'
    end
  end
  object dsProjeto: TDataSource
    DataSet = cdsProjeto
    Left = 424
    Top = 273
  end
  object sdsPedidoImp_Cli: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PED.*, CC.DESCRICAO NOME_CENTROCUSTO'#13#10'FROM PEDIDO_CLI PED' +
      #13#10'INNER JOIN CENTROCUSTO CC'#13#10'ON PED.ID_CENTROCUSTO = CC.ID'#13#10'WHER' +
      'E PED.ID = :ID'#13#10'   AND PED.ITEM = :ITEM'
    DataSource = dsPedidoImp_Itens_Mestre
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
    Left = 368
    Top = 588
    object sdsPedidoImp_CliID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPedidoImp_CliITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsPedidoImp_CliQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsPedidoImp_CliID_CENTROCUSTO: TIntegerField
      FieldName = 'ID_CENTROCUSTO'
      Required = True
    end
    object sdsPedidoImp_CliNOME_CENTROCUSTO: TStringField
      FieldName = 'NOME_CENTROCUSTO'
      ProviderFlags = []
      Size = 50
    end
  end
  object cdsPedidoImp_Cli: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 392
    Top = 588
    object cdsPedidoImp_CliID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedidoImp_CliITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPedidoImp_CliQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedidoImp_CliID_CENTROCUSTO: TIntegerField
      FieldName = 'ID_CENTROCUSTO'
      Required = True
    end
    object cdsPedidoImp_CliNOME_CENTROCUSTO: TStringField
      FieldName = 'NOME_CENTROCUSTO'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsPedidoImp_Cli: TDataSource
    DataSet = cdsPedidoImp_Cli
    Left = 416
    Top = 588
  end
  object dsPedidoImp_Itens_Mestre: TDataSource
    DataSet = sdsPedidoImp_Itens
    Left = 448
    Top = 589
  end
  object mOrcamento_Itens: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Orcamento'
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
        Name = 'Nome_Produto'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Unitario'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Total'
        DataType = ftFloat
      end
      item
        Name = 'Aprovar'
        DataType = ftBoolean
      end
      item
        Name = 'Reprovar'
        DataType = ftBoolean
      end
      item
        Name = 'DtEntrega'
        DataType = ftDate
      end
      item
        Name = 'Copiado'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_CFOP'
        DataType = ftInteger
      end
      item
        Name = 'Qtd_Peca'
        DataType = ftInteger
      end
      item
        Name = 'ID_NCM'
        DataType = ftInteger
      end
      item
        Name = 'Tipo_Orcamento'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Nome_Grupo'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Vlr_Desconto'
        DataType = ftFloat
      end
      item
        Name = 'Perc_Desconto'
        DataType = ftFloat
      end
      item
        Name = 'Perc_Comissao'
        DataType = ftFloat
      end
      item
        Name = 'Foto'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'Motivo_Nao_Aprov'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Data_Nao_Aprov'
        DataType = ftDate
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'ID_ORCAMENTO;ITEM'
    Params = <>
    StoreDefs = True
    BeforePost = mOrcamento_ItensBeforePost
    OnNewRecord = mOrcamento_ItensNewRecord
    Left = 1008
    Top = 153
    Data = {
      100200009619E0BD01000000180000001600000000000300000010020C49445F
      4F7263616D656E746F0400010000000000044974656D04000100000000000A49
      445F50726F6475746F04000100000000000C4E6F6D655F50726F6475746F0100
      490000000100055749445448020002003C000351746408000400000000000C56
      6C725F556E69746172696F080004000000000009566C725F546F74616C080004
      0000000000074170726F766172020003000000000008526570726F7661720200
      030000000000094474456E7472656761040006000000000007436F706961646F
      01004900000001000557494454480200020001000749445F43464F5004000100
      00000000085174645F5065636104000100000000000649445F4E434D04000100
      000000000E5469706F5F4F7263616D656E746F01004900000001000557494454
      480200020001000A4E6F6D655F477275706F0100490000000100055749445448
      020002001E000C566C725F446573636F6E746F08000400000000000D50657263
      5F446573636F6E746F08000400000000000D506572635F436F6D697373616F08
      0004000000000004466F746F010049000000010005574944544802000200FA00
      104D6F7469766F5F4E616F5F4170726F76010049000000010005574944544802
      00020064000E446174615F4E616F5F4170726F76040006000000000001000D44
      454641554C545F4F524445520200820000000000}
    object mOrcamento_ItensID_Orcamento: TIntegerField
      FieldName = 'ID_Orcamento'
    end
    object mOrcamento_ItensItem: TIntegerField
      FieldName = 'Item'
    end
    object mOrcamento_ItensID_Produto: TIntegerField
      FieldName = 'ID_Produto'
    end
    object mOrcamento_ItensNome_Produto: TStringField
      FieldName = 'Nome_Produto'
      Size = 60
    end
    object mOrcamento_ItensQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mOrcamento_ItensVlr_Unitario: TFloatField
      FieldName = 'Vlr_Unitario'
      DisplayFormat = '0.00'
    end
    object mOrcamento_ItensVlr_Total: TFloatField
      FieldName = 'Vlr_Total'
      DisplayFormat = '0.00'
    end
    object mOrcamento_ItensAprovar: TBooleanField
      FieldName = 'Aprovar'
    end
    object mOrcamento_ItensReprovar: TBooleanField
      FieldName = 'Reprovar'
    end
    object mOrcamento_ItensDtEntrega: TDateField
      FieldName = 'DtEntrega'
    end
    object mOrcamento_ItensCopiado: TStringField
      FieldName = 'Copiado'
      Size = 1
    end
    object mOrcamento_ItensID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object mOrcamento_ItensQtd_Peca: TIntegerField
      FieldName = 'Qtd_Peca'
    end
    object mOrcamento_ItensID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object mOrcamento_ItensTipo_Orcamento: TStringField
      FieldName = 'Tipo_Orcamento'
      Size = 1
    end
    object mOrcamento_ItensNome_Grupo: TStringField
      FieldName = 'Nome_Grupo'
      Size = 30
    end
    object mOrcamento_ItensVlr_Desconto: TFloatField
      FieldName = 'Vlr_Desconto'
    end
    object mOrcamento_ItensPerc_Desconto: TFloatField
      FieldName = 'Perc_Desconto'
    end
    object mOrcamento_ItensPerc_Comissao: TFloatField
      FieldName = 'Perc_Comissao'
    end
    object mOrcamento_ItensFoto: TStringField
      FieldName = 'Foto'
      Size = 250
    end
    object mOrcamento_ItensMotivo_Nao_Aprov: TStringField
      FieldName = 'Motivo_Nao_Aprov'
      Size = 100
    end
    object mOrcamento_ItensData_Nao_Aprov: TDateField
      FieldName = 'Data_Nao_Aprov'
    end
  end
  object dsmOrcamento_Itens: TDataSource
    DataSet = mOrcamento_Itens
    Left = 1024
    Top = 153
  end
  object sdsOrcamento: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PEDIDO'#13#10'WHERE ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 216
    Top = 68
  end
  object dspOrcamento: TDataSetProvider
    DataSet = sdsOrcamento
    OnUpdateError = dspPedidoUpdateError
    Left = 232
    Top = 68
  end
  object cdsOrcamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrcamento'
    Left = 250
    Top = 68
    object cdsOrcamentoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOrcamentoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsOrcamentoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsOrcamentoPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsOrcamentoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsOrcamentoID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsOrcamentoID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object cdsOrcamentoID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsOrcamentoID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsOrcamentoID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsOrcamentoTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
    object cdsOrcamentoPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsOrcamentoQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsOrcamentoQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsOrcamentoQTD_CANCELADO: TFloatField
      FieldName = 'QTD_CANCELADO'
    end
    object cdsOrcamentoQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsOrcamentoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsOrcamentoVLR_ITENS: TFloatField
      FieldName = 'VLR_ITENS'
      DisplayFormat = '0.00'
    end
    object cdsOrcamentoVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsOrcamentoCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsOrcamentoDOLAR: TStringField
      FieldName = 'DOLAR'
      FixedChar = True
      Size = 1
    end
    object cdsOrcamentoDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsOrcamentoPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object cdsOrcamentoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOrcamentoVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
      DisplayFormat = '0.00'
    end
    object cdsOrcamentoBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object cdsOrcamentoVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      DisplayFormat = '0.00'
    end
    object cdsOrcamentoBASE_ICMSTRANSF: TFloatField
      FieldName = 'BASE_ICMSTRANSF'
    end
    object cdsOrcamentoPERC_TRANSF: TFloatField
      FieldName = 'PERC_TRANSF'
    end
    object cdsOrcamentoVLR_TRANSF: TFloatField
      FieldName = 'VLR_TRANSF'
      DisplayFormat = '0.00'
    end
    object cdsOrcamentoVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      DisplayFormat = '0.00'
    end
    object cdsOrcamentoBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
    end
    object cdsOrcamentoVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
      DisplayFormat = '0.00'
    end
    object cdsOrcamentoPERC_ICMSSIMPLES: TFloatField
      FieldName = 'PERC_ICMSSIMPLES'
    end
    object cdsOrcamentoBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
      DisplayFormat = '0.00'
    end
    object cdsOrcamentoVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '0.00'
    end
    object cdsOrcamentoID_CONFIG_CFOP: TIntegerField
      FieldName = 'ID_CONFIG_CFOP'
    end
    object cdsOrcamentoTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      Size = 1
    end
    object cdsOrcamentoLOCALENTREGA: TStringField
      FieldName = 'LOCALENTREGA'
      FixedChar = True
      Size = 1
    end
    object cdsOrcamentoPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object cdsOrcamentoPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object cdsOrcamentoCALCULARICMSSOBREIPI: TStringField
      FieldName = 'CALCULARICMSSOBREIPI'
      FixedChar = True
      Size = 1
    end
    object cdsOrcamentoID_REGIMETRIB: TIntegerField
      FieldName = 'ID_REGIMETRIB'
    end
    object cdsOrcamentoSIMPLES_FILIAL: TStringField
      FieldName = 'SIMPLES_FILIAL'
      FixedChar = True
      Size = 1
    end
    object cdsOrcamentoDESCRICAO_DESC: TStringField
      FieldName = 'DESCRICAO_DESC'
      Size = 70
    end
    object cdsOrcamentoIMP_OC_NOTA: TStringField
      FieldName = 'IMP_OC_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsOrcamentoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsOrcamentoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsOrcamentoVALIDADE: TStringField
      FieldName = 'VALIDADE'
      Size = 30
    end
    object cdsOrcamentoNUM_ORCAMENTO: TIntegerField
      FieldName = 'NUM_ORCAMENTO'
    end
    object cdsOrcamentoNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsOrcamentoID_OPERACAO_NOTA: TIntegerField
      FieldName = 'ID_OPERACAO_NOTA'
    end
    object cdsOrcamentoFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object cdsOrcamentoVLR_ADIANTAMENTO: TFloatField
      FieldName = 'VLR_ADIANTAMENTO'
    end
    object cdsOrcamentoFATURADO: TStringField
      FieldName = 'FATURADO'
      FixedChar = True
      Size = 1
    end
    object cdsOrcamentoID_SOLICITANTE: TIntegerField
      FieldName = 'ID_SOLICITANTE'
    end
    object cdsOrcamentoID_PROJETO: TIntegerField
      FieldName = 'ID_PROJETO'
    end
    object cdsOrcamentoAPROVADO_ORC: TStringField
      FieldName = 'APROVADO_ORC'
      FixedChar = True
      Size = 1
    end
    object cdsOrcamentoNOME_CONSUMIDOR: TStringField
      FieldName = 'NOME_CONSUMIDOR'
      Size = 30
    end
    object cdsOrcamentoEMAIL_COMPRAS: TStringField
      FieldName = 'EMAIL_COMPRAS'
      Size = 100
    end
    object cdsOrcamentoDDD: TIntegerField
      FieldName = 'DDD'
    end
    object cdsOrcamentoFONE: TStringField
      FieldName = 'FONE'
      Size = 10
    end
  end
  object dsOrcamento: TDataSource
    DataSet = cdsOrcamento
    Left = 264
    Top = 68
  end
  object sdsOrcamento_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PEDIDO_ITEM'#13#10'WHERE ID = :ID'#13#10'AND APROVADO_ORC <> ' +
      #39'A'#39#13#10'AND QTD > 0'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 216
    Top = 115
  end
  object dspOrcamento_Itens: TDataSetProvider
    DataSet = sdsOrcamento_Itens
    OnUpdateError = dspPedidoUpdateError
    Left = 232
    Top = 115
  end
  object cdsOrcamento_Itens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrcamento_Itens'
    Left = 250
    Top = 115
    object cdsOrcamento_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOrcamento_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsOrcamento_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsOrcamento_ItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsOrcamento_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsOrcamento_ItensQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsOrcamento_ItensQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsOrcamento_ItensQTD_CANCELADO: TFloatField
      FieldName = 'QTD_CANCELADO'
    end
    object cdsOrcamento_ItensVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object cdsOrcamento_ItensCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsOrcamento_ItensDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsOrcamento_ItensFATURADO: TStringField
      FieldName = 'FATURADO'
      FixedChar = True
      Size = 1
    end
    object cdsOrcamento_ItensDTFATURADO: TDateField
      FieldName = 'DTFATURADO'
    end
    object cdsOrcamento_ItensCOD_PRODUTO_CLIENTE: TStringField
      FieldName = 'COD_PRODUTO_CLIENTE'
      Size = 15
    end
    object cdsOrcamento_ItensTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object cdsOrcamento_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsOrcamento_ItensNUMOS: TStringField
      FieldName = 'NUMOS'
      Size = 30
    end
    object cdsOrcamento_ItensPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object cdsOrcamento_ItensVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
      DisplayFormat = '0.00'
    end
    object cdsOrcamento_ItensBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      DisplayFormat = '0.00'
    end
    object cdsOrcamento_ItensVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      DisplayFormat = '0.00'
    end
    object cdsOrcamento_ItensBASE_ICMSTRANSF: TFloatField
      FieldName = 'BASE_ICMSTRANSF'
      DisplayFormat = '0.00'
    end
    object cdsOrcamento_ItensPERC_TRANSF: TFloatField
      FieldName = 'PERC_TRANSF'
    end
    object cdsOrcamento_ItensVLR_TRANSF: TFloatField
      FieldName = 'VLR_TRANSF'
      DisplayFormat = '0.00'
    end
    object cdsOrcamento_ItensVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      DisplayFormat = '0.00'
    end
    object cdsOrcamento_ItensBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
      DisplayFormat = '0.00'
    end
    object cdsOrcamento_ItensVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
      DisplayFormat = '0.00'
    end
    object cdsOrcamento_ItensPERC_ICMSSIMPLES: TFloatField
      FieldName = 'PERC_ICMSSIMPLES'
    end
    object cdsOrcamento_ItensBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
    end
    object cdsOrcamento_ItensVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '0.00'
    end
    object cdsOrcamento_ItensVLR_DESCONTORATEIO: TFloatField
      FieldName = 'VLR_DESCONTORATEIO'
      DisplayFormat = '0.00'
    end
    object cdsOrcamento_ItensID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsOrcamento_ItensID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsOrcamento_ItensID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object cdsOrcamento_ItensPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsOrcamento_ItensPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsOrcamento_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsOrcamento_ItensNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsOrcamento_ItensOBS_COMPLEMENTAR: TStringField
      FieldName = 'OBS_COMPLEMENTAR'
      Size = 250
    end
    object cdsOrcamento_ItensCALCULARICMSSOBREIPI: TStringField
      FieldName = 'CALCULARICMSSOBREIPI'
      FixedChar = True
      Size = 1
    end
    object cdsOrcamento_ItensVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.00'
    end
    object cdsOrcamento_ItensID_CONFIG_CFOP: TIntegerField
      FieldName = 'ID_CONFIG_CFOP'
    end
    object cdsOrcamento_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsOrcamento_ItensQTD_AFATURAR: TFloatField
      FieldName = 'QTD_AFATURAR'
    end
    object cdsOrcamento_ItensID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
    object cdsOrcamento_ItensOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOrcamento_ItensPERC_TRIBICMS: TFloatField
      FieldName = 'PERC_TRIBICMS'
    end
    object cdsOrcamento_ItensID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object cdsOrcamento_ItensVLR_UNITARIO_ATELIER: TFloatField
      FieldName = 'VLR_UNITARIO_ATELIER'
      DisplayFormat = '0.00'
    end
    object cdsOrcamento_ItensVLR_TOTAL_ATELIER: TFloatField
      FieldName = 'VLR_TOTAL_ATELIER'
      DisplayFormat = '0.00'
    end
    object cdsOrcamento_ItensDT_ENVIO_ATELIER: TDateField
      FieldName = 'DT_ENVIO_ATELIER'
    end
    object cdsOrcamento_ItensDT_RETORNO_ATELIER: TDateField
      FieldName = 'DT_RETORNO_ATELIER'
    end
    object cdsOrcamento_ItensVLR_PAGTO_ATELIER: TFloatField
      FieldName = 'VLR_PAGTO_ATELIER'
    end
    object cdsOrcamento_ItensDT_PAGTO_ATELIER: TDateField
      FieldName = 'DT_PAGTO_ATELIER'
    end
    object cdsOrcamento_ItensAPROVADO_ORC: TStringField
      FieldName = 'APROVADO_ORC'
      FixedChar = True
      Size = 1
    end
    object cdsOrcamento_ItensMOTIVO_NAO_APROV: TMemoField
      FieldName = 'MOTIVO_NAO_APROV'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOrcamento_ItensDTAPROVADO_NAO: TDateField
      FieldName = 'DTAPROVADO_NAO'
    end
    object cdsOrcamento_ItensID_ORCAMENTO: TIntegerField
      FieldName = 'ID_ORCAMENTO'
    end
    object cdsOrcamento_ItensITEM_ORCAMENTO: TIntegerField
      FieldName = 'ITEM_ORCAMENTO'
    end
    object cdsOrcamento_ItensEND_FOTO: TStringField
      FieldName = 'END_FOTO'
      Size = 200
    end
    object cdsOrcamento_ItensQTD_PECA: TIntegerField
      FieldName = 'QTD_PECA'
    end
    object cdsOrcamento_ItensID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsOrcamento_ItensID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object cdsOrcamento_ItensTIPO_ORCAMENTO: TStringField
      FieldName = 'TIPO_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsOrcamento_ItensTIPO_ACESSORIO: TStringField
      FieldName = 'TIPO_ACESSORIO'
      FixedChar = True
      Size = 1
    end
    object cdsOrcamento_ItensCOMPRIMENTO_VOLUME: TFloatField
      FieldName = 'COMPRIMENTO_VOLUME'
    end
    object cdsOrcamento_ItensQTD_LANCAR_ESTOQUE: TFloatField
      FieldName = 'QTD_LANCAR_ESTOQUE'
    end
    object cdsOrcamento_ItensPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsOrcamento_ItensFOTO: TStringField
      FieldName = 'FOTO'
      Size = 250
    end
  end
  object dsOrcamento_Itens: TDataSource
    DataSet = cdsOrcamento_Itens
    Left = 264
    Top = 115
  end
  object qProximoItem: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT MAX(ITEM) ITEM'
      'FROM PEDIDO_ITEM'
      'WHERE ID = :ID'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 1067
    Top = 439
    object qProximoItemITEM: TIntegerField
      FieldName = 'ITEM'
    end
  end
  object qSituacao_Orc: TSQLQuery
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
      end
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
    SQL.Strings = (
      'SELECT DISTINCT (SELECT COUNT(aprovado_orc) NAO_APROVADO'
      '  FROM pedido_item'
      '  WHERE aprovado_orc = '#39'N'#39
      '    AND ID = :ID) NAO_APROVADO,'
      ''
      '  (SELECT COUNT(aprovado_orc) APROVADO'
      '  FROM pedido_item'
      '  WHERE aprovado_orc = '#39'A'#39
      '     AND ID = :ID) APROVADO,'
      ''
      '  (SELECT COUNT(aprovado_orc) PENDENTE'
      '  FROM pedido_item'
      '  WHERE aprovado_orc = '#39'P'#39
      '     AND ID = :ID)  PENDENTE'
      'FROM PEDIDO_ITEM PI'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 1171
    Top = 488
    object qSituacao_OrcNAO_APROVADO: TIntegerField
      FieldName = 'NAO_APROVADO'
    end
    object qSituacao_OrcAPROVADO: TIntegerField
      FieldName = 'APROVADO'
    end
    object qSituacao_OrcPENDENTE: TIntegerField
      FieldName = 'PENDENTE'
    end
  end
  object sdsPedidoImp_Tam: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PEDIDO_TAM'#13#10'WHERE ID = :ID'#13#10'      AND ITEM = :ITE' +
      'M'
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
    Left = 216
    Top = 462
  end
  object cdsPedidoImp_Tam: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM;TAMANHO'
    Params = <>
    ProviderName = 'dspPedidoImp_Tam'
    OnNewRecord = cdsPedido_ItensNewRecord
    Left = 248
    Top = 461
    object cdsPedidoImp_TamID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedidoImp_TamITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPedidoImp_TamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
    object cdsPedidoImp_TamQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 5
    end
    object cdsPedidoImp_TamQTD_FATURADO: TFMTBCDField
      FieldName = 'QTD_FATURADO'
      Precision = 15
      Size = 5
    end
    object cdsPedidoImp_TamQTD_RESTANTE: TFMTBCDField
      FieldName = 'QTD_RESTANTE'
      Precision = 15
      Size = 5
    end
    object cdsPedidoImp_TamQTD_CANCELADO: TFMTBCDField
      FieldName = 'QTD_CANCELADO'
      Precision = 15
      Size = 5
    end
  end
  object dsPedidoImp_Tam: TDataSource
    DataSet = cdsPedidoImp_Tam
    Left = 264
    Top = 462
  end
  object dspPedidoImp_Tam: TDataSetProvider
    DataSet = sdsPedidoImp_Tam
    Left = 232
    Top = 462
  end
  object sdsPedido_Material: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PM.*, PRO.NOME NOME_PRODUTO, REFERENCIA'#13#10'FROM PEDIDO_MATE' +
      'RIAL PM'#13#10'INNER JOIN PRODUTO PRO'#13#10'ON PM.ID_PRODUTO = PRO.ID'#13#10'WHER' +
      'E PM.ID = :ID'#13#10'  AND PM.ITEM = :ITEM'#13#10
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
    Left = 24
    Top = 190
    object sdsPedido_MaterialID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedido_MaterialITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedido_MaterialITEM_MAT: TIntegerField
      FieldName = 'ITEM_MAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedido_MaterialID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsPedido_MaterialQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object sdsPedido_MaterialVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsPedido_MaterialUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsPedido_MaterialNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      ProviderFlags = []
      Size = 100
    end
    object sdsPedido_MaterialREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      ProviderFlags = []
    end
    object sdsPedido_MaterialVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsPedido_MaterialQTD_PECA: TFloatField
      FieldName = 'QTD_PECA'
    end
    object sdsPedido_MaterialQTD_CONSUMO_TOTAL: TFloatField
      FieldName = 'QTD_CONSUMO_TOTAL'
    end
    object sdsPedido_MaterialNOME_ETIQUETA: TStringField
      FieldName = 'NOME_ETIQUETA'
      Size = 25
    end
  end
  object cdsPedido_Material: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPedido_ItenssdsPedido_Material
    IndexFieldNames = 'ID;ITEM;ITEM_MAT'
    Params = <>
    Left = 40
    Top = 190
    object cdsPedido_MaterialID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedido_MaterialITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedido_MaterialITEM_MAT: TIntegerField
      FieldName = 'ITEM_MAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '0.00'
    end
    object cdsPedido_MaterialID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsPedido_MaterialQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
      DisplayFormat = '0.0000##'
    end
    object cdsPedido_MaterialVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.000##'
    end
    object cdsPedido_MaterialUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsPedido_MaterialNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsPedido_MaterialREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      ProviderFlags = []
    end
    object cdsPedido_MaterialVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsPedido_MaterialQTD_PECA: TFloatField
      FieldName = 'QTD_PECA'
    end
    object cdsPedido_MaterialQTD_CONSUMO_TOTAL: TFloatField
      FieldName = 'QTD_CONSUMO_TOTAL'
    end
    object cdsPedido_MaterialNOME_ETIQUETA: TStringField
      FieldName = 'NOME_ETIQUETA'
      Size = 25
    end
    object cdsPedido_MaterialsdsPedido_Etiqueta: TDataSetField
      FieldName = 'sdsPedido_Etiqueta'
    end
  end
  object dsPedido_Material: TDataSource
    DataSet = cdsPedido_Material
    Left = 56
    Top = 190
  end
  object sdsMaterial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PRO.id, PRO.nome, PRO.preco_custo, PRO.preco_venda, PRO.r' +
      'eferencia, PRO.UNIDADE, IMPRIMIR_ETIQUETA_NAV'#13#10'FROM PRODUTO PRO'#13 +
      #10'WHERE INATIVO = '#39'N'#39#13#10'   AND TIPO_REG = '#39'M'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 528
    Top = 318
  end
  object dspMaterial: TDataSetProvider
    DataSet = sdsMaterial
    Left = 552
    Top = 318
  end
  object cdsMaterial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspMaterial'
    Left = 576
    Top = 318
    object cdsMaterialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMaterialNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsMaterialPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsMaterialPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object cdsMaterialREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsMaterialUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsMaterialIMPRIMIR_ETIQUETA_NAV: TStringField
      FieldName = 'IMPRIMIR_ETIQUETA_NAV'
      FixedChar = True
      Size = 1
    end
  end
  object dsMaterial: TDataSource
    DataSet = cdsMaterial
    Left = 600
    Top = 318
  end
  object mItensImp: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'ID_Produto'
        DataType = ftInteger
      end
      item
        Name = 'ID_Combinacao'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Produto'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Unitario'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Total'
        DataType = ftFloat
      end
      item
        Name = 'Unidade'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'NumOS'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'DtEntrega'
        DataType = ftDate
      end
      item
        Name = 'Vlr_Ipi'
        DataType = ftFloat
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'OBS'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'Nome_Combinacao'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Filial'
        DataType = ftInteger
      end
      item
        Name = 'Item_Original'
        DataType = ftInteger
      end
      item
        Name = 'Foto_End'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'Carimbo'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CarimboAux'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Nome_Material'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Imp_Continua'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Imp_Cabecalho'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Item_Imp'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Material2'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Cor_Mat1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Cor_Mat2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nome_Material1'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Nome_Produto2'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ID_Atelier'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Atelier'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'NaoImprimir'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Imp_Rotulo'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'Item'
    Params = <>
    StoreDefs = True
    OnNewRecord = mItensImpNewRecord
    Left = 1008
    Top = 194
    Data = {
      880300009619E0BD010000001800000020000000000003000000880304497465
      6D04000100000000000A49445F50726F6475746F04000100000000000D49445F
      436F6D62696E6163616F04000100000000000C4E6F6D655F50726F6475746F01
      004900000001000557494454480200020096000351746408000400000000000C
      566C725F556E69746172696F080004000000000009566C725F546F74616C0800
      04000000000007556E6964616465010049000000010005574944544802000200
      0600054E756D4F530100490000000100055749445448020002001E0009447445
      6E7472656761040006000000000007566C725F49706908000400000000000A52
      65666572656E6369610100490000000100055749445448020002001400034F42
      5304004B00000002000753554254595045020049000500546578740005574944
      54480200020001000F4E6F6D655F436F6D62696E6163616F0100490000000100
      055749445448020002003C000646696C69616C04000100000000000D4974656D
      5F4F726967696E616C040001000000000008466F746F5F456E64010049000000
      010005574944544802000200C80007436172696D626F01004900000001000557
      49445448020002001E000A436172696D626F4175780100490000000100055749
      445448020002001E000D4E6F6D655F4D6174657269616C010049000000010005
      57494454480200020064000C496D705F436F6E74696E75610100490000000100
      0557494454480200020001000D496D705F4361626563616C686F010049000000
      0100055749445448020002000100084974656D5F496D7004000100000000000E
      4E6F6D655F4D6174657269616C32010049000000010005574944544802000200
      3C0008436F725F4D617431010049000000010005574944544802000200140008
      436F725F4D61743201004900000001000557494454480200020014000E4E6F6D
      655F4D6174657269616C310100490000000100055749445448020002003C000D
      4E6F6D655F50726F6475746F320100490000000100055749445448020002003C
      000A49445F4174656C69657204000100000000000C4E6F6D655F4174656C6965
      720100490000000100055749445448020002003C000B4E616F496D7072696D69
      7201004900000001000557494454480200020001000A496D705F526F74756C6F
      010049000000010005574944544802000200010001000D44454641554C545F4F
      524445520200820000000000}
    object mItensImpItem: TIntegerField
      DisplayWidth = 15
      FieldName = 'Item'
    end
    object mItensImpID_Produto: TIntegerField
      DisplayWidth = 15
      FieldName = 'ID_Produto'
    end
    object mItensImpID_Combinacao: TIntegerField
      DisplayWidth = 15
      FieldName = 'ID_Combinacao'
    end
    object mItensImpNome_Produto: TStringField
      DisplayWidth = 42
      FieldName = 'Nome_Produto'
      Size = 150
    end
    object mItensImpQtd: TFloatField
      DisplayWidth = 15
      FieldName = 'Qtd'
    end
    object mItensImpVlr_Unitario: TFloatField
      DisplayWidth = 15
      FieldName = 'Vlr_Unitario'
    end
    object mItensImpVlr_Total: TFloatField
      DisplayWidth = 15
      FieldName = 'Vlr_Total'
    end
    object mItensImpUnidade: TStringField
      DisplayWidth = 10
      FieldName = 'Unidade'
      Size = 6
    end
    object mItensImpNumOS: TStringField
      DisplayWidth = 43
      FieldName = 'NumOS'
      Size = 30
    end
    object mItensImpDtEntrega: TDateField
      DisplayWidth = 15
      FieldName = 'DtEntrega'
    end
    object mItensImpVlr_Ipi: TFloatField
      DisplayWidth = 15
      FieldName = 'Vlr_Ipi'
    end
    object mItensImpReferencia: TStringField
      DisplayWidth = 29
      FieldName = 'Referencia'
    end
    object mItensImpOBS: TMemoField
      DisplayWidth = 15
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object mItensImpNome_Combinacao: TStringField
      DisplayWidth = 72
      FieldName = 'Nome_Combinacao'
      Size = 60
    end
    object mItensImpFilial: TIntegerField
      FieldName = 'Filial'
    end
    object mItensImpItem_Original: TIntegerField
      FieldName = 'Item_Original'
    end
    object mItensImpFoto_End: TStringField
      FieldName = 'Foto_End'
      Size = 200
    end
    object mItensImpCarimbo: TStringField
      FieldName = 'Carimbo'
      Size = 30
    end
    object mItensImpCarimboAux: TStringField
      FieldName = 'CarimboAux'
      Size = 30
    end
    object mItensImpNome_Material: TStringField
      FieldName = 'Nome_Material'
      Size = 100
    end
    object mItensImpImp_Continua: TStringField
      FieldName = 'Imp_Continua'
      Size = 1
    end
    object mItensImpImp_Cabecalho: TStringField
      FieldName = 'Imp_Cabecalho'
      Size = 1
    end
    object mItensImpItem_Imp: TIntegerField
      FieldName = 'Item_Imp'
    end
    object mItensImpNome_Material2: TStringField
      FieldName = 'Nome_Material2'
      Size = 60
    end
    object mItensImpCor_Mat1: TStringField
      FieldName = 'Cor_Mat1'
    end
    object mItensImpCor_Mat2: TStringField
      FieldName = 'Cor_Mat2'
    end
    object mItensImpNome_Material1: TStringField
      FieldName = 'Nome_Material1'
      Size = 60
    end
    object mItensImpNome_Produto2: TStringField
      FieldName = 'Nome_Produto2'
      Size = 60
    end
    object mItensImpID_Atelier: TIntegerField
      FieldName = 'ID_Atelier'
    end
    object mItensImpNome_Atelier: TStringField
      FieldName = 'Nome_Atelier'
      Size = 60
    end
    object mItensImpNaoImprimir: TStringField
      FieldName = 'NaoImprimir'
      Size = 1
    end
    object mItensImpImp_Rotulo: TStringField
      FieldName = 'Imp_Rotulo'
      Size = 1
    end
  end
  object dsmItensImp: TDataSource
    DataSet = mItensImp
    Left = 1024
    Top = 194
  end
  object mItensImp_Tam: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'Tamanho'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'Qtd_Rotulo'
        DataType = ftInteger
      end
      item
        Name = 'Tam_Matriz'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <>
    IndexFieldNames = 'Item;Tamanho'
    MasterFields = 'Item'
    MasterSource = dsmItensImp
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    OnNewRecord = mItensImp_TamNewRecord
    Left = 1064
    Top = 277
    Data = {
      810000009619E0BD010000001800000005000000000003000000810004497465
      6D04000100000000000754616D616E686F010049000000010005574944544802
      0002000A000351746408000400000000000A5174645F526F74756C6F04000100
      000000000A54616D5F4D617472697A0100490000000100055749445448020002
      000A000000}
    object mItensImp_TamItem: TIntegerField
      FieldName = 'Item'
    end
    object mItensImp_TamTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
    object mItensImp_TamQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mItensImp_TamQtd_Rotulo: TIntegerField
      FieldName = 'Qtd_Rotulo'
    end
    object mItensImp_TamTam_Matriz: TStringField
      FieldName = 'Tam_Matriz'
      Size = 10
    end
  end
  object dsmItensImp_Tam: TDataSource
    DataSet = mItensImp_Tam
    Left = 1080
    Top = 277
  end
  object mItensImp_Mat: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'ID_Material'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Material'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Qtd_Consumo'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Unitario'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Total'
        DataType = ftFloat
      end
      item
        Name = 'Qtd_Peca'
        DataType = ftFloat
      end
      item
        Name = 'Qtd_Consumo_Total'
        DataType = ftFloat
      end>
    IndexDefs = <>
    IndexFieldNames = 'Item'
    MasterFields = 'Item'
    MasterSource = dsmItensImp
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    Left = 1008
    Top = 235
    Data = {
      C30000009619E0BD010000001800000008000000000003000000C30004497465
      6D04000100000000000B49445F4D6174657269616C04000100000000000D4E6F
      6D655F4D6174657269616C01004900000001000557494454480200020064000B
      5174645F436F6E73756D6F08000400000000000C566C725F556E69746172696F
      080004000000000009566C725F546F74616C0800040000000000085174645F50
      6563610800040000000000115174645F436F6E73756D6F5F546F74616C080004
      00000000000000}
    object mItensImp_MatItem: TIntegerField
      FieldName = 'Item'
    end
    object mItensImp_MatID_Material: TIntegerField
      FieldName = 'ID_Material'
    end
    object mItensImp_MatNome_Material: TStringField
      FieldName = 'Nome_Material'
      Size = 100
    end
    object mItensImp_MatQtd_Consumo: TFloatField
      FieldName = 'Qtd_Consumo'
    end
    object mItensImp_MatVlr_Unitario: TFloatField
      FieldName = 'Vlr_Unitario'
      DisplayFormat = '0.000##'
    end
    object mItensImp_MatVlr_Total: TFloatField
      FieldName = 'Vlr_Total'
      DisplayFormat = '0.00'
    end
    object mItensImp_MatQtd_Peca: TFloatField
      FieldName = 'Qtd_Peca'
    end
    object mItensImp_MatQtd_Consumo_Total: TFloatField
      FieldName = 'Qtd_Consumo_Total'
      DisplayFormat = '.000###'
    end
  end
  object dsmItensImp_Mat: TDataSource
    DataSet = mItensImp_Mat
    Left = 1024
    Top = 235
  end
  object sdsPedidoImp_Mat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PM.*, PRO.NOME NOME_MATERIAL, PRO.REFERENCIA, PRO.IMPRIMI' +
      'R_ETIQUETA_NAV'#13#10'FROM PEDIDO_MATERIAL PM'#13#10'INNER JOIN PRODUTO PRO'#13 +
      #10'ON PM.ID_PRODUTO = PRO.ID'#13#10'WHERE PM.ID = :ID'#13#10'      AND PM.ITEM' +
      ' = :ITEM'
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
    Left = 216
    Top = 507
  end
  object cdsPedidoImp_Mat: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM;ITEM_MAT'
    Params = <>
    ProviderName = 'dspPedidoImp_Mat'
    OnNewRecord = cdsPedido_ItensNewRecord
    Left = 248
    Top = 507
    object cdsPedidoImp_MatID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedidoImp_MatITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPedidoImp_MatITEM_MAT: TIntegerField
      FieldName = 'ITEM_MAT'
      Required = True
    end
    object cdsPedidoImp_MatID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsPedidoImp_MatQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object cdsPedidoImp_MatVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsPedidoImp_MatUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsPedidoImp_MatVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsPedidoImp_MatNOME_MATERIAL: TStringField
      FieldName = 'NOME_MATERIAL'
      Size = 100
    end
    object cdsPedidoImp_MatREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsPedidoImp_MatQTD_PECA: TFloatField
      FieldName = 'QTD_PECA'
    end
    object cdsPedidoImp_MatQTD_CONSUMO_TOTAL: TFloatField
      FieldName = 'QTD_CONSUMO_TOTAL'
    end
    object cdsPedidoImp_MatNOME_ETIQUETA: TStringField
      FieldName = 'NOME_ETIQUETA'
      Size = 25
    end
    object cdsPedidoImp_MatIMPRIMIR_ETIQUETA_NAV: TStringField
      FieldName = 'IMPRIMIR_ETIQUETA_NAV'
      FixedChar = True
      Size = 1
    end
  end
  object dsPedidoImp_Mat: TDataSource
    DataSet = cdsPedidoImp_Mat
    Left = 264
    Top = 507
  end
  object dspPedidoImp_Mat: TDataSetProvider
    DataSet = sdsPedidoImp_Mat
    Left = 232
    Top = 507
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
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'Unidade_Prod'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'Qtd2'
        DataType = ftFloat
      end
      item
        Name = 'Nome_Cor'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Medida'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    IndexFieldNames = 'Nome_Etiqueta;Tamanho'
    Params = <>
    StoreDefs = True
    Left = 1008
    Top = 383
    Data = {
      400200009619E0BD01000000180000001400000000000300000040020C4E6F6D
      655F456D70726573610100490000000100055749445448020002000F0004466F
      6E650100490000000100055749445448020002000C000D4E6F6D655F45746971
      7565746101004900000001000557494454480200020019000754616D616E686F
      0100490000000100055749445448020002000A000A5265666572656E63696101
      004900000001000557494454480200020014000C4E6F6D655F50726F6475746F
      01004900000001000557494454480200020064000C4E6F6D655F436C69656E74
      650100490000000100055749445448020002003C000E50656469646F5F436C69
      656E746501004900000001000557494454480200020014000C46616E74617369
      615F436C690100490000000100055749445448020002002800094474456D6973
      73616F04000600000000000C50726F645F436C69656E74650100490000000100
      055749445448020002001400054E756D4F530100490000000100055749445448
      020002001E0008456E63657261646F0100490000000100055749445448020002
      000A00084974656D5F506564040001000000000007556E696461646501004900
      00000100055749445448020002000C000351746408000400000000000C556E69
      646164655F50726F640100490000000100055749445448020002000600045174
      64320800040000000000084E6F6D655F436F7201004900000001000557494454
      48020002002800064D6564696461010049000000010005574944544802000200
      14000000}
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
    object mEtiqueta_NavQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mEtiqueta_NavUnidade_Prod: TStringField
      FieldName = 'Unidade_Prod'
      Size = 6
    end
    object mEtiqueta_NavQtd2: TFloatField
      FieldName = 'Qtd2'
    end
    object mEtiqueta_NavNome_Cor: TStringField
      FieldName = 'Nome_Cor'
      Size = 40
    end
    object mEtiqueta_NavMedida: TStringField
      FieldName = 'Medida'
    end
  end
  object dsmEtiqueta_Nav: TDataSource
    DataSet = mEtiqueta_Nav
    Left = 1024
    Top = 383
  end
  object sdsOrcamento_Mat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PM.*, PRO.NOME NOME_PRODUTO, REFERENCIA'#13#10'FROM PEDIDO_MATE' +
      'RIAL PM'#13#10'INNER JOIN PRODUTO PRO'#13#10'ON PM.ID_PRODUTO = PRO.ID'#13#10'WHER' +
      'E PM.ID = :ID'#13#10'  AND PM.ITEM = :ITEM'#13#10
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
    Left = 216
    Top = 157
  end
  object dspOrcamento_Mat: TDataSetProvider
    DataSet = sdsOrcamento_Mat
    OnUpdateError = dspPedidoUpdateError
    Left = 232
    Top = 157
  end
  object cdsOrcamento_Mat: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrcamento_Mat'
    Left = 250
    Top = 157
    object cdsOrcamento_MatID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOrcamento_MatITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsOrcamento_MatITEM_MAT: TIntegerField
      FieldName = 'ITEM_MAT'
      Required = True
    end
    object cdsOrcamento_MatID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsOrcamento_MatQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object cdsOrcamento_MatVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsOrcamento_MatUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsOrcamento_MatVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsOrcamento_MatNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsOrcamento_MatREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      ProviderFlags = []
    end
    object cdsOrcamento_MatQTD_PECA: TFloatField
      FieldName = 'QTD_PECA'
    end
    object cdsOrcamento_MatQTD_CONSUMO_TOTAL: TFloatField
      FieldName = 'QTD_CONSUMO_TOTAL'
    end
    object cdsOrcamento_MatNOME_ETIQUETA: TStringField
      FieldName = 'NOME_ETIQUETA'
      Size = 25
    end
  end
  object dsOrcamento_Mat: TDataSource
    DataSet = cdsOrcamento_Mat
    Left = 264
    Top = 156
  end
  object sdsPedido_Etiqueta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PEDIDO_ETIQUETA'#13#10'WHERE ID = :ID'#13#10'  AND ITEM = :IT' +
      'EM'#13#10'  AND ITEM_MAT = :ITEM_MAT'#13#10
    DataSource = dsPedido_Material_Mestre
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
      end
      item
        DataType = ftInteger
        Name = 'ITEM_MAT'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 24
    Top = 237
    object sdsPedido_EtiquetaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedido_EtiquetaITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedido_EtiquetaITEM_MAT: TIntegerField
      FieldName = 'ITEM_MAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedido_EtiquetaTAMANHO: TStringField
      FieldName = 'TAMANHO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
  end
  object cdsPedido_Etiqueta: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPedido_MaterialsdsPedido_Etiqueta
    IndexFieldNames = 'ID;ITEM;ITEM_MAT;TAMANHO'
    Params = <>
    Left = 40
    Top = 237
    object cdsPedido_EtiquetaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedido_EtiquetaITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedido_EtiquetaTAMANHO: TStringField
      FieldName = 'TAMANHO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object cdsPedido_EtiquetaITEM_MAT: TIntegerField
      FieldName = 'ITEM_MAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsPedido_Etiqueta: TDataSource
    DataSet = cdsPedido_Etiqueta
    Left = 56
    Top = 237
  end
  object sdsPedidoImp_Etiqueta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PEDIDO_ETIQUETA'#13#10'WHERE ID = :ID'#13#10'   AND ITEM = :I' +
      'TEM'#13#10'   AND ITEM_MAT = :ITEM_MAT'
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
        DataType = ftInteger
        Name = 'ITEM_MAT'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 696
    Top = 598
  end
  object cdsPedidoImp_Etiqueta: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'TAMANHO'
    Params = <>
    ProviderName = 'dspPedidoImp_Etiqueta'
    OnNewRecord = cdsPedido_ItensNewRecord
    Left = 720
    Top = 598
    object cdsPedidoImp_EtiquetaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedidoImp_EtiquetaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPedidoImp_EtiquetaTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
  end
  object dspPedidoImp_Etiqueta: TDataSetProvider
    DataSet = sdsPedidoImp_Etiqueta
    Left = 744
    Top = 598
  end
  object sdsOrcamento_Etiqueta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PEDIDO_ETIQUETA'#13#10'WHERE ID = :ID'#13#10'  AND ITEM = :IT' +
      'EM'#13#10'  AND ITEM_MAT = :ITEM_MAT'
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
        DataType = ftInteger
        Name = 'ITEM_MAT'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 216
    Top = 200
  end
  object dspOrcamento_Etiqueta: TDataSetProvider
    DataSet = sdsOrcamento_Etiqueta
    OnUpdateError = dspPedidoUpdateError
    Left = 232
    Top = 200
  end
  object cdsOrcamento_Etiqueta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrcamento_Etiqueta'
    Left = 250
    Top = 200
    object cdsOrcamento_EtiquetaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOrcamento_EtiquetaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsOrcamento_EtiquetaTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
  end
  object dsOrcamento_Etiqueta: TDataSource
    DataSet = cdsOrcamento_Etiqueta
    Left = 264
    Top = 200
  end
  object dsPedido_Material_Mestre: TDataSource
    DataSet = sdsPedido_Material
    Left = 88
    Top = 191
  end
  object qRegra_CFOP: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO_EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PESSOA_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TIPO_CONSUMIDOR'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT tc.*'
      'FROM tab_cfop_variacao tc'
      'where TC.ID = :ID'
      '  and TC.TIPO_EMPRESA = :TIPO_EMPRESA'
      '  and TC.TIPO_CLIENTE = :TIPO_CLIENTE'
      '  AND TC.PESSOA_CLIENTE = :PESSOA_CLIENTE'
      '  AND ((TC.TIPO_CONSUMIDOR = :TIPO_CONSUMIDOR)'
      '     or (TC.tipo_consumidor IS NULL))')
    SQLConnection = dmDatabase.scoDados
    Left = 1043
    Top = 439
    object qRegra_CFOPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qRegra_CFOPITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qRegra_CFOPID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object qRegra_CFOPID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object qRegra_CFOPID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object qRegra_CFOPID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object qRegra_CFOPID_OPERACAO_NOTA: TIntegerField
      FieldName = 'ID_OPERACAO_NOTA'
    end
    object qRegra_CFOPTIPO_EMPRESA: TStringField
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object qRegra_CFOPTIPO_CLIENTE: TStringField
      FieldName = 'TIPO_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object qRegra_CFOPUF_CLIENTE: TStringField
      FieldName = 'UF_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object qRegra_CFOPFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object qRegra_CFOPCONTROLAR_ICMS: TStringField
      FieldName = 'CONTROLAR_ICMS'
      FixedChar = True
      Size = 1
    end
    object qRegra_CFOPCONTROLAR_REDUCAO: TStringField
      FieldName = 'CONTROLAR_REDUCAO'
      FixedChar = True
      Size = 1
    end
    object qRegra_CFOPCONTROLAR_IPI: TStringField
      FieldName = 'CONTROLAR_IPI'
      FixedChar = True
      Size = 1
    end
    object qRegra_CFOPCONTROLAR_SUBSTICMS: TStringField
      FieldName = 'CONTROLAR_SUBSTICMS'
      FixedChar = True
      Size = 1
    end
    object qRegra_CFOPCONTROLAR_DIFERIMENTO: TStringField
      FieldName = 'CONTROLAR_DIFERIMENTO'
      FixedChar = True
      Size = 1
    end
    object qRegra_CFOPNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qRegra_CFOPPESSOA_CLIENTE: TStringField
      FieldName = 'PESSOA_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object qRegra_CFOPLEI: TMemoField
      FieldName = 'LEI'
      BlobType = ftMemo
      Size = 1
    end
    object qRegra_CFOPPERC_TRIBUTO: TFloatField
      FieldName = 'PERC_TRIBUTO'
    end
  end
  object mTamanho_Mat: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Tamanho'
    Params = <>
    Left = 1008
    Top = 278
    Data = {
      360000009619E0BD01000000180000000100000000000300000036000754616D
      616E686F0100490000000100055749445448020002000A000000}
    object mTamanho_MatTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
  end
  object dsmTamanho_Mat: TDataSource
    DataSet = mTamanho_Mat
    Left = 1024
    Top = 278
  end
  object qProduto_Forn: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_FORNECEDOR'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT PFOR.*'
      'FROM PRODUTO_FORN PFOR'
      'WHERE ID = :ID'
      '  AND ID_FORNECEDOR = :ID_FORNECEDOR')
    SQLConnection = dmDatabase.scoDados
    Left = 1016
    Top = 439
    object qProduto_FornCOD_MATERIAL_FORN: TStringField
      FieldName = 'COD_MATERIAL_FORN'
    end
    object qProduto_FornNOME_MATERIAL_FORN: TStringField
      FieldName = 'NOME_MATERIAL_FORN'
      Size = 100
    end
    object qProduto_FornCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object qProduto_FornPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
  end
  object mRotulos: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'Qtd'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Cliente'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Endereco'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Num_Endereco'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Bairro'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Cep'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'Complemento_End'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Cidade'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Nome_Filial'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Nome_Filial_Interno'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Endereco_Filial'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Num_Filial'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Bairro_Filial'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Cidade_Filial'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'UF_Filial'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Pedido_Cliente'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Num_Pedido'
        DataType = ftInteger
      end
      item
        Name = 'ID_Transportadora'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Transportadora'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Num_Volume'
        DataType = ftInteger
      end
      item
        Name = 'Total_Volume'
        DataType = ftInteger
      end
      item
        Name = 'ID_Pedido'
        DataType = ftInteger
      end>
    IndexDefs = <>
    IndexFieldNames = 'ID'
    Params = <>
    StoreDefs = True
    Left = 1008
    Top = 23
    Data = {
      B80200009619E0BD010000001800000018000000000003000000B80202494404
      000100000000000351746404000100000000000C4E6F6D655F436C69656E7465
      0100490000000100055749445448020002003C0008456E64657265636F010049
      0000000100055749445448020002003C000C4E756D5F456E64657265636F0100
      490000000100055749445448020002000F000642616972726F01004900000001
      00055749445448020002001E0003436570010049000000010005574944544802
      00020009000F436F6D706C656D656E746F5F456E640100490000000100055749
      445448020002003C000643696461646501004900000001000557494454480200
      02001E0002554601004900000001000557494454480200020002000B4E6F6D65
      5F46696C69616C0100490000000100055749445448020002006400134E6F6D65
      5F46696C69616C5F496E7465726E6F0100490000000100055749445448020002
      003C000F456E64657265636F5F46696C69616C01004900000001000557494454
      480200020064000A4E756D5F46696C69616C0100490000000100055749445448
      020002000F000D42616972726F5F46696C69616C010049000000010005574944
      54480200020028000D4369646164655F46696C69616C01004900000001000557
      494454480200020028000955465F46696C69616C010049000000010005574944
      54480200020002000E50656469646F5F436C69656E7465010049000000010005
      57494454480200020014000A4E756D5F50656469646F04000100000000001149
      445F5472616E73706F727461646F72610400010000000000134E6F6D655F5472
      616E73706F727461646F72610100490000000100055749445448020002003C00
      0A4E756D5F566F6C756D6504000100000000000C546F74616C5F566F6C756D65
      04000100000000000949445F50656469646F04000100000000000000}
    object mRotulosID: TIntegerField
      DisplayWidth = 12
      FieldName = 'ID'
    end
    object mRotulosQtd: TIntegerField
      DisplayWidth = 12
      FieldName = 'Qtd'
    end
    object mRotulosNome_Cliente: TStringField
      DisplayWidth = 42
      FieldName = 'Nome_Cliente'
      Size = 60
    end
    object mRotulosEndereco: TStringField
      DisplayWidth = 72
      FieldName = 'Endereco'
      Size = 60
    end
    object mRotulosNum_Endereco: TStringField
      DisplayWidth = 18
      FieldName = 'Num_Endereco'
      Size = 15
    end
    object mRotulosBairro: TStringField
      DisplayWidth = 36
      FieldName = 'Bairro'
      Size = 30
    end
    object mRotulosCep: TStringField
      DisplayWidth = 11
      FieldName = 'Cep'
      Size = 9
    end
    object mRotulosComplemento_End: TStringField
      DisplayWidth = 72
      FieldName = 'Complemento_End'
      Size = 60
    end
    object mRotulosCidade: TStringField
      DisplayWidth = 36
      FieldName = 'Cidade'
      Size = 30
    end
    object mRotulosUF: TStringField
      DisplayWidth = 3
      FieldName = 'UF'
      Size = 2
    end
    object mRotulosNome_Filial: TStringField
      FieldName = 'Nome_Filial'
      Size = 100
    end
    object mRotulosNome_Filial_Interno: TStringField
      FieldName = 'Nome_Filial_Interno'
      Size = 60
    end
    object mRotulosEndereco_Filial: TStringField
      FieldName = 'Endereco_Filial'
      Size = 100
    end
    object mRotulosNum_Filial: TStringField
      FieldName = 'Num_Filial'
      Size = 15
    end
    object mRotulosBairro_Filial: TStringField
      FieldName = 'Bairro_Filial'
      Size = 40
    end
    object mRotulosCidade_Filial: TStringField
      FieldName = 'Cidade_Filial'
      Size = 40
    end
    object mRotulosUF_Filial: TStringField
      FieldName = 'UF_Filial'
      Size = 2
    end
    object mRotulosPedido_Cliente: TStringField
      FieldName = 'Pedido_Cliente'
    end
    object mRotulosNum_Pedido: TIntegerField
      FieldName = 'Num_Pedido'
    end
    object mRotulosID_Transportadora: TIntegerField
      FieldName = 'ID_Transportadora'
    end
    object mRotulosNome_Transportadora: TStringField
      FieldName = 'Nome_Transportadora'
      Size = 60
    end
    object mRotulosNum_Volume: TIntegerField
      FieldName = 'Num_Volume'
    end
    object mRotulosTotal_Volume: TIntegerField
      FieldName = 'Total_Volume'
    end
    object mRotulosID_Pedido: TIntegerField
      FieldName = 'ID_Pedido'
    end
  end
  object dsmRotulos: TDataSource
    DataSet = mRotulos
    Left = 1024
    Top = 23
  end
  object mRotulos_Prod: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'ID_Produto'
        DataType = ftInteger
      end
      item
        Name = 'ID_Combinacao'
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
        Name = 'Qtd'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Combiancao'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Tam1'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Qtd_Tam1'
        DataType = ftInteger
      end
      item
        Name = 'Tam2'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Tam3'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Tam4'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Tam5'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Tam6'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Tam7'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Tam8'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Tam9'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Qtd_Tam2'
        DataType = ftInteger
      end
      item
        Name = 'Qtd_Tam3'
        DataType = ftInteger
      end
      item
        Name = 'Qtd_Tam4'
        DataType = ftInteger
      end
      item
        Name = 'Qtd_Tam5'
        DataType = ftInteger
      end
      item
        Name = 'Qtd_Tam6'
        DataType = ftInteger
      end
      item
        Name = 'Qtd_Tam7'
        DataType = ftInteger
      end
      item
        Name = 'Qtd_Tam8'
        DataType = ftInteger
      end
      item
        Name = 'Qtd_Tam9'
        DataType = ftInteger
      end
      item
        Name = 'Carimbo'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CarimboAux'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Pictograma'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'Item_Original'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'ID;ID_PRODUTO;ID_COMBINACAO;CarimboAux'
    MasterFields = 'ID'
    MasterSource = dsmRotulos
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    Left = 1064
    Top = 23
    Data = {
      BE0200009619E0BD01000000180000001D000000000003000000BE0202494404
      000100000000000A49445F50726F6475746F04000100000000000D49445F436F
      6D62696E6163616F04000100000000000A5265666572656E6369610100490000
      0001000557494454480200020014000C4E6F6D655F50726F6475746F01004900
      00000100055749445448020002003C000351746404000100000000000F4E6F6D
      655F436F6D6269616E63616F0100490000000100055749445448020002006400
      0454616D310100490000000100055749445448020002000A00085174645F5461
      6D3104000100000000000454616D320100490000000100055749445448020002
      000A000454616D330100490000000100055749445448020002000A000454616D
      340100490000000100055749445448020002000A000454616D35010049000000
      0100055749445448020002000A000454616D3601004900000001000557494454
      48020002000A000454616D370100490000000100055749445448020002000A00
      0454616D380100490000000100055749445448020002000A000454616D390100
      490000000100055749445448020002000A00085174645F54616D320400010000
      000000085174645F54616D330400010000000000085174645F54616D34040001
      0000000000085174645F54616D350400010000000000085174645F54616D3604
      00010000000000085174645F54616D370400010000000000085174645F54616D
      380400010000000000085174645F54616D39040001000000000007436172696D
      626F0100490000000100055749445448020002001E000A436172696D626F4175
      780100490000000100055749445448020002001E000A506963746F6772616D61
      010049000000010005574944544802000200FA000D4974656D5F4F726967696E
      616C040001000000000001000D44454641554C545F4F52444552020082000000
      0000}
    object mRotulos_ProdID: TIntegerField
      FieldName = 'ID'
    end
    object mRotulos_ProdID_Produto: TIntegerField
      FieldName = 'ID_Produto'
    end
    object mRotulos_ProdID_Combinacao: TIntegerField
      FieldName = 'ID_Combinacao'
    end
    object mRotulos_ProdReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mRotulos_ProdNome_Produto: TStringField
      FieldName = 'Nome_Produto'
      Size = 60
    end
    object mRotulos_ProdQtd: TIntegerField
      FieldName = 'Qtd'
    end
    object mRotulos_ProdNome_Combiancao: TStringField
      FieldName = 'Nome_Combiancao'
      Size = 100
    end
    object mRotulos_ProdTam1: TStringField
      FieldName = 'Tam1'
      Size = 10
    end
    object mRotulos_ProdQtd_Tam1: TIntegerField
      FieldName = 'Qtd_Tam1'
    end
    object mRotulos_ProdTam2: TStringField
      FieldName = 'Tam2'
      Size = 10
    end
    object mRotulos_ProdTam3: TStringField
      FieldName = 'Tam3'
      Size = 10
    end
    object mRotulos_ProdTam4: TStringField
      FieldName = 'Tam4'
      Size = 10
    end
    object mRotulos_ProdTam5: TStringField
      FieldName = 'Tam5'
      Size = 10
    end
    object mRotulos_ProdTam6: TStringField
      FieldName = 'Tam6'
      Size = 10
    end
    object mRotulos_ProdTam7: TStringField
      FieldName = 'Tam7'
      Size = 10
    end
    object mRotulos_ProdTam8: TStringField
      FieldName = 'Tam8'
      Size = 10
    end
    object mRotulos_ProdTam9: TStringField
      FieldName = 'Tam9'
      Size = 10
    end
    object mRotulos_ProdQtd_Tam2: TIntegerField
      FieldName = 'Qtd_Tam2'
    end
    object mRotulos_ProdQtd_Tam3: TIntegerField
      FieldName = 'Qtd_Tam3'
    end
    object mRotulos_ProdQtd_Tam4: TIntegerField
      FieldName = 'Qtd_Tam4'
    end
    object mRotulos_ProdQtd_Tam5: TIntegerField
      FieldName = 'Qtd_Tam5'
    end
    object mRotulos_ProdQtd_Tam6: TIntegerField
      FieldName = 'Qtd_Tam6'
    end
    object mRotulos_ProdQtd_Tam7: TIntegerField
      FieldName = 'Qtd_Tam7'
    end
    object mRotulos_ProdQtd_Tam8: TIntegerField
      FieldName = 'Qtd_Tam8'
    end
    object mRotulos_ProdQtd_Tam9: TIntegerField
      FieldName = 'Qtd_Tam9'
    end
    object mRotulos_ProdCarimbo: TStringField
      FieldName = 'Carimbo'
      Size = 30
    end
    object mRotulos_ProdCarimboAux: TStringField
      FieldName = 'CarimboAux'
      Size = 30
    end
    object mRotulos_ProdPictograma: TStringField
      FieldName = 'Pictograma'
      Size = 250
    end
    object mRotulos_ProdItem_Original: TIntegerField
      FieldName = 'Item_Original'
    end
  end
  object dsmRotulos_Prod: TDataSource
    DataSet = mRotulos_Prod
    Left = 1080
    Top = 23
  end
  object mRotulos_Tam: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'ID_Produto'
        DataType = ftInteger
      end
      item
        Name = 'ID_Combinacao'
        DataType = ftInteger
      end
      item
        Name = 'Tamanho'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Qtd'
        DataType = ftInteger
      end
      item
        Name = 'Carimbo'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CarimboAux'
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
    IndexFieldNames = 'ID;ID_Produto;ID_Combinacao;CarimboAux;Tamanho'
    MasterFields = 'ID;ID_Produto;ID_Combinacao'
    MasterSource = dsmRotulos_Prod
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    Left = 1064
    Top = 157
    Data = {
      C70000009619E0BD010000001800000007000000000003000000C70002494404
      000100000000000A49445F50726F6475746F04000100000000000D49445F436F
      6D62696E6163616F04000100000000000754616D616E686F0100490000000100
      055749445448020002000A0003517464040001000000000007436172696D626F
      0100490000000100055749445448020002001E000A436172696D626F41757801
      00490000000100055749445448020002001E0001000D44454641554C545F4F52
      4445520200820000000000}
    object mRotulos_TamID: TIntegerField
      FieldName = 'ID'
    end
    object mRotulos_TamID_Produto: TIntegerField
      FieldName = 'ID_Produto'
    end
    object mRotulos_TamID_Combinacao: TIntegerField
      FieldName = 'ID_Combinacao'
    end
    object mRotulos_TamTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
    object mRotulos_TamQtd: TIntegerField
      FieldName = 'Qtd'
    end
    object mRotulos_TamCarimbo: TStringField
      FieldName = 'Carimbo'
      Size = 30
    end
    object mRotulos_TamCarimboAux: TStringField
      FieldName = 'CarimboAux'
      Size = 30
    end
  end
  object dsmRotulos_Tam: TDataSource
    DataSet = mRotulos_Tam
    Left = 1080
    Top = 157
  end
  object sdsCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select PES.CODIGO, PES.NOME, PES.FANTASIA, PES.ID_CIDADE, PES.CI' +
      'DADE, PES.UF, PES.ENDERECO_ENT, PES.CNPJ_CPF,'#13#10'       PES.ID_REG' +
      'IME_TRIB, PES.ID_PAIS, PES.PESSOA, PES.TIPO_ICMS, PES.ID_TAB_PRE' +
      'CO, PES.VLR_LIMITE_CREDITO,'#13#10'       PES.ID_CONDPGTO, PES.ID_VEND' +
      'EDOR, PES.PERC_COMISSAO, PES.ID_TRANSPORTADORA, PES.ID_REDESPACH' +
      'O, PES.EMAIL_COMPRAS,'#13#10'       PES.CARIMBO, PES.ORGAO_PUBLICO, PE' +
      'S.VLR_LIMITE_COMPRA, PES.TIPO_CONSUMIDOR, PES.TIPO_CONTRIBUINTE,' +
      ' USUARIO_LOG,'#13#10'       PES.INSC_SUFRAMA, PES.DDDCELULAR, PES.CELU' +
      'LAR, PES.ID_GRUPO, PES.IMP_COR_CLIENTE,'#13#10'       PES.MOSTRAR_AVIS' +
      'O,PES.OBS_AVISO, IPI_PAGO_FILIAL,'#13#10'PES.IMP_ETIQUETA_ROT'#13#10'from PE' +
      'SSOA PES'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 368
    Top = 10
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 384
    Top = 10
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCliente'
    Left = 400
    Top = 10
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
    object cdsClienteID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object cdsClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsClienteUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsClienteID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsClienteID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
    object cdsClientePESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsClienteTIPO_ICMS: TStringField
      FieldName = 'TIPO_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsClienteID_TAB_PRECO: TIntegerField
      FieldName = 'ID_TAB_PRECO'
    end
    object cdsClienteID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsClientePERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsClienteID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsClienteID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsClienteID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object cdsClienteCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsClienteENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 40
    end
    object cdsClienteEMAIL_COMPRAS: TStringField
      FieldName = 'EMAIL_COMPRAS'
      Size = 200
    end
    object cdsClienteVLR_LIMITE_CREDITO: TFloatField
      FieldName = 'VLR_LIMITE_CREDITO'
    end
    object cdsClienteCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object cdsClienteORGAO_PUBLICO: TStringField
      FieldName = 'ORGAO_PUBLICO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteVLR_LIMITE_COMPRA: TFloatField
      FieldName = 'VLR_LIMITE_COMPRA'
    end
    object cdsClienteTIPO_CONSUMIDOR: TSmallintField
      FieldName = 'TIPO_CONSUMIDOR'
    end
    object cdsClienteTIPO_CONTRIBUINTE: TSmallintField
      FieldName = 'TIPO_CONTRIBUINTE'
    end
    object cdsClienteUSUARIO_LOG: TStringField
      FieldName = 'USUARIO_LOG'
      Size = 15
    end
    object cdsClienteINSC_SUFRAMA: TStringField
      FieldName = 'INSC_SUFRAMA'
      Size = 9
    end
    object cdsClienteDDDCELULAR: TIntegerField
      FieldName = 'DDDCELULAR'
    end
    object cdsClienteCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 10
    end
    object cdsClienteID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
    object cdsClienteIMP_COR_CLIENTE: TStringField
      FieldName = 'IMP_COR_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsClienteMOSTRAR_AVISO: TStringField
      FieldName = 'MOSTRAR_AVISO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteOBS_AVISO: TStringField
      FieldName = 'OBS_AVISO'
      Size = 150
    end
    object cdsClienteIPI_PAGO_FILIAL: TStringField
      FieldName = 'IPI_PAGO_FILIAL'
      FixedChar = True
      Size = 1
    end
    object cdsClienteIMP_ETIQUETA_ROT: TStringField
      FieldName = 'IMP_ETIQUETA_ROT'
      FixedChar = True
      Size = 1
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 424
    Top = 10
  end
  object qPessoa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM PESSOA'
      'WHERE CODIGO = :CODIGO')
    SQLConnection = dmDatabase.scoDados
    Left = 1136
    Top = 586
    object qPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qPessoaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object qPessoaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object qPessoaCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object qPessoaNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object qPessoaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qPessoaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object qPessoaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qPessoaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object qPessoaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qPessoaDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object qPessoaTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
    object qPessoaDDDFONE2: TIntegerField
      FieldName = 'DDDFONE2'
    end
    object qPessoaTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object qPessoaDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object qPessoaFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object qPessoaPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object qPessoaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object qPessoaINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object qPessoaENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 40
    end
    object qPessoaCOMPLEMENTO_END_ENT: TStringField
      FieldName = 'COMPLEMENTO_END_ENT'
      Size = 60
    end
    object qPessoaNUM_END_ENT: TStringField
      FieldName = 'NUM_END_ENT'
    end
    object qPessoaBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 26
    end
    object qPessoaID_CIDADE_ENT: TIntegerField
      FieldName = 'ID_CIDADE_ENT'
    end
    object qPessoaCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 40
    end
    object qPessoaCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 10
    end
    object qPessoaUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object qPessoaPESSOA_ENT: TStringField
      FieldName = 'PESSOA_ENT'
      FixedChar = True
      Size = 1
    end
    object qPessoaCNPJ_CPF_ENT: TStringField
      FieldName = 'CNPJ_CPF_ENT'
      Size = 18
    end
    object qPessoaINSC_EST_ENT: TStringField
      FieldName = 'INSC_EST_ENT'
      Size = 18
    end
    object qPessoaENDERECO_PGTO: TStringField
      FieldName = 'ENDERECO_PGTO'
      Size = 40
    end
    object qPessoaCOMPLEMENTO_END_PGTO: TStringField
      FieldName = 'COMPLEMENTO_END_PGTO'
      Size = 60
    end
    object qPessoaNUM_END_PGTO: TStringField
      FieldName = 'NUM_END_PGTO'
    end
    object qPessoaBAIRRO_PGTO: TStringField
      FieldName = 'BAIRRO_PGTO'
      Size = 26
    end
    object qPessoaID_CIDADE_PGTO: TIntegerField
      FieldName = 'ID_CIDADE_PGTO'
    end
    object qPessoaCIDADE_PGTO: TStringField
      FieldName = 'CIDADE_PGTO'
      Size = 40
    end
    object qPessoaCEP_PGTO: TStringField
      FieldName = 'CEP_PGTO'
      Size = 10
    end
    object qPessoaUF_PGTO: TStringField
      FieldName = 'UF_PGTO'
      FixedChar = True
      Size = 2
    end
    object qPessoaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object qPessoaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object qPessoaHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
    object qPessoaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object qPessoaCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 10
    end
    object qPessoaRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object qPessoaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object qPessoaID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object qPessoaID_CONTABOLETO: TIntegerField
      FieldName = 'ID_CONTABOLETO'
    end
    object qPessoaID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object qPessoaID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object qPessoaID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object qPessoaID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
    object qPessoaID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object qPessoaPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object qPessoaDDD_ENT: TIntegerField
      FieldName = 'DDD_ENT'
    end
    object qPessoaFONE_ENT: TStringField
      FieldName = 'FONE_ENT'
      Size = 15
    end
    object qPessoaDDD_PGTO: TIntegerField
      FieldName = 'DDD_PGTO'
    end
    object qPessoaFONE_PGTO: TStringField
      FieldName = 'FONE_PGTO'
      Size = 15
    end
    object qPessoaINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object qPessoaHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 200
    end
    object qPessoaTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      FixedChar = True
      Size = 1
    end
    object qPessoaNOME_ENTREGA: TStringField
      FieldName = 'NOME_ENTREGA'
      Size = 60
    end
    object qPessoaEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 250
    end
    object qPessoaEMAIL_PGTO: TStringField
      FieldName = 'EMAIL_PGTO'
      Size = 150
    end
    object qPessoaEMAIL_NFE2: TStringField
      FieldName = 'EMAIL_NFE2'
      Size = 150
    end
    object qPessoaPESSOA_PGTO: TStringField
      FieldName = 'PESSOA_PGTO'
      FixedChar = True
      Size = 1
    end
    object qPessoaCNPJ_CPG_PGTO: TStringField
      FieldName = 'CNPJ_CPG_PGTO'
      Size = 18
    end
    object qPessoaINSC_EST_PGTO: TStringField
      FieldName = 'INSC_EST_PGTO'
      Size = 18
    end
    object qPessoaUF_PLACA: TStringField
      FieldName = 'UF_PLACA'
      Size = 2
    end
    object qPessoaPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object qPessoaTP_CLIENTE: TStringField
      FieldName = 'TP_CLIENTE'
      Size = 1
    end
    object qPessoaTP_FORNECEDOR: TStringField
      FieldName = 'TP_FORNECEDOR'
      Size = 1
    end
    object qPessoaTP_TRANSPORTADORA: TStringField
      FieldName = 'TP_TRANSPORTADORA'
      Size = 1
    end
    object qPessoaTP_VENDEDOR: TStringField
      FieldName = 'TP_VENDEDOR'
      Size = 1
    end
    object qPessoaTIPO_ICMS: TStringField
      FieldName = 'TIPO_ICMS'
      FixedChar = True
      Size = 1
    end
    object qPessoaID_TAB_PRECO: TIntegerField
      FieldName = 'ID_TAB_PRECO'
    end
    object qPessoaTP_ATELIER: TStringField
      FieldName = 'TP_ATELIER'
      Size = 1
    end
    object qPessoaTIPO_COMISSAO: TStringField
      FieldName = 'TIPO_COMISSAO'
      FixedChar = True
      Size = 1
    end
    object qPessoaPERC_COMISSAO_VEND: TFloatField
      FieldName = 'PERC_COMISSAO_VEND'
    end
    object qPessoaNOME_CONTATO: TStringField
      FieldName = 'NOME_CONTATO'
      Size = 40
    end
    object qPessoaINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object qPessoaDT_CONTRATO_INI: TDateField
      FieldName = 'DT_CONTRATO_INI'
    end
    object qPessoaDT_CONTRATO_FIN: TDateField
      FieldName = 'DT_CONTRATO_FIN'
    end
    object qPessoaID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object qPessoaID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object qPessoaVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object qPessoaCLIENTE_CONTA_ID: TIntegerField
      FieldName = 'CLIENTE_CONTA_ID'
    end
    object qPessoaFORNECEDOR_CONTA_ID: TIntegerField
      FieldName = 'FORNECEDOR_CONTA_ID'
    end
    object qPessoaVENDEDOR_CONTA_ID: TIntegerField
      FieldName = 'VENDEDOR_CONTA_ID'
    end
    object qPessoaTRANSPORTADORA_CONTA_ID: TIntegerField
      FieldName = 'TRANSPORTADORA_CONTA_ID'
    end
    object qPessoaATELIER_CONTA_ID: TIntegerField
      FieldName = 'ATELIER_CONTA_ID'
    end
    object qPessoaRETEM_ISS: TStringField
      FieldName = 'RETEM_ISS'
      FixedChar = True
      Size = 1
    end
    object qPessoaRETEM_CSLL: TStringField
      FieldName = 'RETEM_CSLL'
      FixedChar = True
      Size = 1
    end
    object qPessoaRETEM_PISCOFINS: TStringField
      FieldName = 'RETEM_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object qPessoaRETEM_INSS: TStringField
      FieldName = 'RETEM_INSS'
      FixedChar = True
      Size = 1
    end
    object qPessoaEMAIL_COMPRAS: TStringField
      FieldName = 'EMAIL_COMPRAS'
      Size = 200
    end
    object qPessoaCONTATO_COMPRAS: TStringField
      FieldName = 'CONTATO_COMPRAS'
      Size = 60
    end
    object qPessoaORGAO_PUBLICO: TStringField
      FieldName = 'ORGAO_PUBLICO'
      FixedChar = True
      Size = 1
    end
    object qPessoaID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
    end
    object qPessoaDIMINUIR_RETENCAO: TStringField
      FieldName = 'DIMINUIR_RETENCAO'
      FixedChar = True
      Size = 1
    end
    object qPessoaPERC_REDUCAO_INSS: TFloatField
      FieldName = 'PERC_REDUCAO_INSS'
    end
    object qPessoaUSA_TRANSFICMS: TStringField
      FieldName = 'USA_TRANSFICMS'
      FixedChar = True
      Size = 1
    end
    object qPessoaCLIENTE_ESTOQUE: TStringField
      FieldName = 'CLIENTE_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object qPessoaUSA_TAMANHO_AGRUPADO_NFE: TStringField
      FieldName = 'USA_TAMANHO_AGRUPADO_NFE'
      FixedChar = True
      Size = 1
    end
    object qPessoaCOD_ANT: TIntegerField
      FieldName = 'COD_ANT'
    end
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
    Left = 24
    Top = 149
    object sdsPedido_Item_TipoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedido_Item_TipoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object sdsPedido_Item_TipoID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object sdsPedido_Item_TipoTIPO_MAT: TStringField
      FieldName = 'TIPO_MAT'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_Item_TipoESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
    end
    object sdsPedido_Item_TipoDENSIDADE: TFloatField
      FieldName = 'DENSIDADE'
    end
    object sdsPedido_Item_TipoID_TIPO_MATERIAL: TIntegerField
      FieldName = 'ID_TIPO_MATERIAL'
    end
    object sdsPedido_Item_TipoFATOR_CALCULO: TFloatField
      FieldName = 'FATOR_CALCULO'
    end
    object sdsPedido_Item_TipoVLR_MAQUINA: TFloatField
      FieldName = 'VLR_MAQUINA'
    end
    object sdsPedido_Item_TipoALTURA_CORTE: TFloatField
      FieldName = 'ALTURA_CORTE'
    end
    object sdsPedido_Item_TipoLARGURA_CORTE: TFloatField
      FieldName = 'LARGURA_CORTE'
    end
    object sdsPedido_Item_TipoCAMINHO_ARQUIVO_PDF: TStringField
      FieldName = 'CAMINHO_ARQUIVO_PDF'
      Size = 150
    end
  end
  object cdsPedido_Item_Tipo: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPedido_ItenssdsPedido_Item_Tipo
    Params = <>
    BeforePost = cdsPedido_Item_TipoBeforePost
    OnCalcFields = cdsPedido_Item_TipoCalcFields
    OnNewRecord = cdsPedido_Item_TipoNewRecord
    Left = 40
    Top = 149
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
    object cdsPedido_Item_TipoID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsPedido_Item_TipoTIPO_MAT: TStringField
      FieldName = 'TIPO_MAT'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_Item_TipoESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
    end
    object cdsPedido_Item_TipoDENSIDADE: TFloatField
      FieldName = 'DENSIDADE'
    end
    object cdsPedido_Item_TipoID_TIPO_MATERIAL: TIntegerField
      FieldName = 'ID_TIPO_MATERIAL'
    end
    object cdsPedido_Item_TipoFATOR_CALCULO: TFloatField
      FieldName = 'FATOR_CALCULO'
    end
    object cdsPedido_Item_TipoclNomeTipo_Mat: TStringField
      FieldKind = fkCalculated
      FieldName = 'clNomeTipo_Mat'
      ProviderFlags = []
      Size = 40
      Calculated = True
    end
    object cdsPedido_Item_TipoVLR_MAQUINA: TFloatField
      FieldName = 'VLR_MAQUINA'
    end
    object cdsPedido_Item_TipoALTURA_CORTE: TFloatField
      FieldName = 'ALTURA_CORTE'
    end
    object cdsPedido_Item_TipoLARGURA_CORTE: TFloatField
      FieldName = 'LARGURA_CORTE'
    end
    object cdsPedido_Item_TipoCAMINHO_ARQUIVO_PDF: TStringField
      FieldName = 'CAMINHO_ARQUIVO_PDF'
      Size = 150
    end
  end
  object dsPedido_Item_Tipo: TDataSource
    DataSet = cdsPedido_Item_Tipo
    Left = 56
    Top = 149
  end
  object sdsOrcamento_Item_Tipo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PEDIDO_ITEM_TIPO'#13#10'WHERE ID = :ID'#13#10'  AND ITEM = :I' +
      'TEM'#13#10
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
    Left = 216
    Top = 245
  end
  object dspOrcamento_Item_Tipo: TDataSetProvider
    DataSet = sdsOrcamento_Item_Tipo
    OnUpdateError = dspPedidoUpdateError
    Left = 232
    Top = 245
  end
  object cdsOrcamento_Item_Tipo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrcamento_Item_Tipo'
    Left = 251
    Top = 245
    object cdsOrcamento_Item_TipoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOrcamento_Item_TipoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsOrcamento_Item_TipoCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object cdsOrcamento_Item_TipoLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object cdsOrcamento_Item_TipoALTURA: TFloatField
      FieldName = 'ALTURA'
    end
    object cdsOrcamento_Item_TipoVLR_KG: TFloatField
      FieldName = 'VLR_KG'
    end
    object cdsOrcamento_Item_TipoQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsOrcamento_Item_TipoVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsOrcamento_Item_TipoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsOrcamento_Item_TipoDIAMETRO: TFloatField
      FieldName = 'DIAMETRO'
    end
    object cdsOrcamento_Item_TipoDIAMETRO_EXT: TFloatField
      FieldName = 'DIAMETRO_EXT'
    end
    object cdsOrcamento_Item_TipoDIAMETRO_INT: TFloatField
      FieldName = 'DIAMETRO_INT'
    end
    object cdsOrcamento_Item_TipoPAREDE: TFloatField
      FieldName = 'PAREDE'
    end
    object cdsOrcamento_Item_TipoPESO: TFloatField
      FieldName = 'PESO'
    end
    object cdsOrcamento_Item_TipoCOMPLEMENTO_NOME: TStringField
      FieldName = 'COMPLEMENTO_NOME'
      Size = 50
    end
    object cdsOrcamento_Item_TipoTIPO_ORCAMENTO: TStringField
      FieldName = 'TIPO_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsOrcamento_Item_TipoDESCRICAO_TIPO: TStringField
      FieldName = 'DESCRICAO_TIPO'
      Size = 12
    end
    object cdsOrcamento_Item_TipoID_ACABAMENTO: TIntegerField
      FieldName = 'ID_ACABAMENTO'
    end
    object cdsOrcamento_Item_TipoID_REDONDO_MOD: TIntegerField
      FieldName = 'ID_REDONDO_MOD'
    end
    object cdsOrcamento_Item_TipoID_CMOEDA: TIntegerField
      FieldName = 'ID_CMOEDA'
    end
    object cdsOrcamento_Item_TipoID_FUROS: TIntegerField
      FieldName = 'ID_FUROS'
    end
    object cdsOrcamento_Item_TipoID_FURACAO: TIntegerField
      FieldName = 'ID_FURACAO'
    end
    object cdsOrcamento_Item_TipoID_PERFIL: TIntegerField
      FieldName = 'ID_PERFIL'
    end
    object cdsOrcamento_Item_TipoID_VIDRO: TIntegerField
      FieldName = 'ID_VIDRO'
    end
    object cdsOrcamento_Item_TipoQTD_FUROS: TIntegerField
      FieldName = 'QTD_FUROS'
    end
    object cdsOrcamento_Item_TipoID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsOrcamento_Item_TipoTIPO_MAT: TStringField
      FieldName = 'TIPO_MAT'
      FixedChar = True
      Size = 1
    end
    object cdsOrcamento_Item_TipoVLR_DOBRA: TFloatField
      FieldName = 'VLR_DOBRA'
    end
  end
  object dsOrcamento_Item_Tipo: TDataSource
    DataSet = cdsOrcamento_Item_Tipo
    Left = 264
    Top = 245
  end
  object mAuxExcel: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Cod_Produto'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Produto'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Embalagem'
        DataType = ftFloat
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Unitario'
        DataType = ftFloat
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ID_CFOP'
        DataType = ftInteger
      end
      item
        Name = 'CODCFOP'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ID_NCM'
        DataType = ftInteger
      end
      item
        Name = 'NCM'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1064
    Top = 329
    Data = {
      F40000009619E0BD01000000180000000A000000000003000000F4000B436F64
      5F50726F6475746F04000100000000000C4E6F6D655F50726F6475746F010049
      0000000100055749445448020002003C0009456D62616C6167656D0800040000
      0000000351746408000400000000000C566C725F556E69746172696F08000400
      000000000A5265666572656E6369610100490000000100055749445448020002
      0014000749445F43464F50040001000000000007434F4443464F500100490000
      0001000557494454480200020004000649445F4E434D0400010000000000034E
      434D0100490000000100055749445448020002000A000000}
    object mAuxExcelCod_Produto: TIntegerField
      FieldName = 'Cod_Produto'
    end
    object mAuxExcelNome_Produto: TStringField
      FieldName = 'Nome_Produto'
      Size = 60
    end
    object mAuxExcelEmbalagem: TFloatField
      FieldName = 'Embalagem'
    end
    object mAuxExcelQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mAuxExcelVlr_Unitario: TFloatField
      FieldName = 'Vlr_Unitario'
    end
    object mAuxExcelReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mAuxExcelID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object mAuxExcelCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 4
    end
    object mAuxExcelID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object mAuxExcelNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
  end
  object mRotulos_SGrade: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 1064
    Top = 383
    Data = {
      2C0100009619E0BD01000000180000000B0000000000030000002C0102494404
      000100000000000A49445F50726F6475746F0400010000000000044E6F6D6501
      00490000000100055749445448020002003C000A5265666572656E6369610100
      4900000001000557494454480200020014000C4E6F6D655F436C69656E746501
      00490000000100055749445448020002003C0008456E64657265636F01004900
      00000100055749445448020002003C00074E756D5F456E640100490000000100
      055749445448020002000F000643696461646501004900000001000557494454
      4802000200280002554601004900000001000557494454480200020002000F43
      6F6D706C656D656E746F5F456E64010049000000010005574944544802000200
      3C000351746408000400000000000000}
    object mRotulos_SGradeID: TIntegerField
      FieldName = 'ID'
    end
    object mRotulos_SGradeID_Produto: TIntegerField
      FieldName = 'ID_Produto'
    end
    object mRotulos_SGradeNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
    object mRotulos_SGradeReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mRotulos_SGradeNome_Cliente: TStringField
      FieldName = 'Nome_Cliente'
      Size = 60
    end
    object mRotulos_SGradeEndereco: TStringField
      FieldName = 'Endereco'
      Size = 60
    end
    object mRotulos_SGradeNum_End: TStringField
      FieldName = 'Num_End'
      Size = 15
    end
    object mRotulos_SGradeCidade: TStringField
      FieldName = 'Cidade'
      Size = 40
    end
    object mRotulos_SGradeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object mRotulos_SGradeComplemento_End: TStringField
      FieldName = 'Complemento_End'
      Size = 60
    end
    object mRotulos_SGradeQtd: TFloatField
      FieldName = 'Qtd'
    end
  end
  object dsmRotulos_SGrade: TDataSource
    DataSet = mRotulos_SGrade
    Left = 1080
    Top = 383
  end
  object qNCM_UF: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'UF'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO_PRODUTO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT T.ncm, T.perc_red_strib, TUF.*'
      'FROM TAB_NCM T'
      'INNER join TAB_NCM_UF TUF'
      'ON T.ID = TUF.ID'
      'WHERE TUF.ID = :ID'
      '     AND TUF.UF = :UF'
      '     AND TUF.TIPO_PRODUTO = :TIPO_PRODUTO')
    SQLConnection = dmDatabase.scoDados
    Left = 992
    Top = 439
    object qNCM_UFID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qNCM_UFITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qNCM_UFUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qNCM_UFMVAINTERNO: TFloatField
      FieldName = 'MVAINTERNO'
    end
    object qNCM_UFNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object qNCM_UFPERC_RED_STRIB: TFloatField
      FieldName = 'PERC_RED_STRIB'
    end
    object qNCM_UFPERC_RED_MVA: TFloatField
      FieldName = 'PERC_RED_MVA'
    end
    object qNCM_UFPERC_RED_MVA_GERAL: TFloatField
      FieldName = 'PERC_RED_MVA_GERAL'
    end
    object qNCM_UFTIPO_EMPRESA: TStringField
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object qNCM_UFTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object qNCM_UFAJUSTAR_MVA: TStringField
      FieldName = 'AJUSTAR_MVA'
      FixedChar = True
      Size = 1
    end
    object qNCM_UFPERC_ICMS_INTERNO: TFloatField
      FieldName = 'PERC_ICMS_INTERNO'
    end
    object qNCM_UFID_OBS_LEI: TIntegerField
      FieldName = 'ID_OBS_LEI'
    end
    object qNCM_UFPERC_RED_BASE_ST: TFloatField
      FieldName = 'PERC_RED_BASE_ST'
    end
    object qNCM_UFPERC_RED_BASE_ST_SIMPLES: TFloatField
      FieldName = 'PERC_RED_BASE_ST_SIMPLES'
    end
    object qNCM_UFPERC_RED_MVA_CLI_GERAL: TFloatField
      FieldName = 'PERC_RED_MVA_CLI_GERAL'
    end
    object qNCM_UFPERC_RED_MVA_CLI_SIMPLES: TFloatField
      FieldName = 'PERC_RED_MVA_CLI_SIMPLES'
    end
  end
  object qProduto_UF: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'UF'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM PRODUTO_UF'
      'WHERE ID = :ID'
      '  AND UF = :UF')
    SQLConnection = dmDatabase.scoDados
    Left = 1112
    Top = 586
    object qProduto_UFID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProduto_UFUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
    object qProduto_UFPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object qProduto_UFPERC_ICMS_INTERNO: TFloatField
      FieldName = 'PERC_ICMS_INTERNO'
    end
    object qProduto_UFPERC_REDUCAO_ST: TFloatField
      FieldName = 'PERC_REDUCAO_ST'
    end
    object qProduto_UFPERC_REDUCAO_ICMS: TFloatField
      FieldName = 'PERC_REDUCAO_ICMS'
    end
  end
  object frxReport1: TfrxReport
    Tag = 1
    Version = '5.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42052.436473541700000000
    ReportOptions.LastChange = 43623.469983842600000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnBeforePrint = frxReport1BeforePrint
    OnPreview = frxReport1Preview
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 1159
    Top = 111
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxPedidoImp'
    OnFirst = frxDBDataset1First
    OnNext = frxDBDataset1Next
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'FILIAL=FILIAL'
      'DTEMISSAO=DTEMISSAO'
      'PEDIDO_CLIENTE=PEDIDO_CLIENTE'
      'ID_CLIENTE=ID_CLIENTE'
      'ID_TRANSPORTADORA=ID_TRANSPORTADORA'
      'ID_REDESPACHO=ID_REDESPACHO'
      'ID_CONDPGTO=ID_CONDPGTO'
      'ID_VENDEDOR=ID_VENDEDOR'
      'ID_CFOP=ID_CFOP'
      'TIPO_FRETE=TIPO_FRETE'
      'PERC_COMISSAO=PERC_COMISSAO'
      'QTD=QTD'
      'QTD_RESTANTE=QTD_RESTANTE'
      'QTD_CANCELADO=QTD_CANCELADO'
      'QTD_FATURADO=QTD_FATURADO'
      'VLR_TOTAL=VLR_TOTAL'
      'VLR_ITENS=VLR_ITENS'
      'VLR_DESCONTO=VLR_DESCONTO'
      'CANCELADO=CANCELADO'
      'DOLAR=DOLAR'
      'DTENTREGA=DTENTREGA'
      'PERC_DESCONTO=PERC_DESCONTO'
      'OBS=OBS'
      'VLR_FRETE=VLR_FRETE'
      'BASE_ICMS=BASE_ICMS'
      'VLR_ICMS=VLR_ICMS'
      'BASE_ICMSTRANSF=BASE_ICMSTRANSF'
      'PERC_TRANSF=PERC_TRANSF'
      'VLR_TRANSF=VLR_TRANSF'
      'VLR_IPI=VLR_IPI'
      'BASE_ICMSSIMPLES=BASE_ICMSSIMPLES'
      'VLR_ICMSSIMPLES=VLR_ICMSSIMPLES'
      'PERC_ICMSSIMPLES=PERC_ICMSSIMPLES'
      'BASE_ICMSSUBST=BASE_ICMSSUBST'
      'VLR_ICMSSUBST=VLR_ICMSSUBST'
      'ID_CONFIG_CFOP=ID_CONFIG_CFOP'
      'TIPO_DESCONTO=TIPO_DESCONTO'
      'LOCALENTREGA=LOCALENTREGA'
      'PESOBRUTO=PESOBRUTO'
      'PESOLIQUIDO=PESOLIQUIDO'
      'CALCULARICMSSOBREIPI=CALCULARICMSSOBREIPI'
      'ID_REGIMETRIB=ID_REGIMETRIB'
      'SIMPLES_FILIAL=SIMPLES_FILIAL'
      'DESCRICAO_DESC=DESCRICAO_DESC'
      'NOME_CLI=NOME_CLI'
      'END_CLIENTE=END_CLIENTE'
      'NUM_END_CLIENTE=NUM_END_CLIENTE'
      'BAIRRO_CLIENTE=BAIRRO_CLIENTE'
      'CIDADE_CLIENTE=CIDADE_CLIENTE'
      'UF=UF'
      'DDD_CLIENTE=DDD_CLIENTE'
      'FONE_CLIENTE=FONE_CLIENTE'
      'DDD_FAX_CLIENTE=DDD_FAX_CLIENTE'
      'FAX_CLIENTE=FAX_CLIENTE'
      'CNPJ_CPF_CLIENTE=CNPJ_CPF_CLIENTE'
      'INSCR_EST_CLIENTE=INSCR_EST_CLIENTE'
      'CEP_CLIENTE=CEP_CLIENTE'
      'EMAIL_NFE_CLIENTE=EMAIL_NFE_CLIENTE'
      'NOMECLIENT=NOMECLIENT'
      'ENDERECO_ENT=ENDERECO_ENT'
      'NUM_END_ENT=NUM_END_ENT'
      'BAIRRO_ENT=BAIRRO_ENT'
      'CIDADE_ENT=CIDADE_ENT'
      'UF_ENT=UF_ENT'
      'DDD_ENT=DDD_ENT'
      'FONE_ENT=FONE_ENT'
      'CNPJ_CPF_ENT=CNPJ_CPF_ENT'
      'INSC_EST_ENT=INSC_EST_ENT'
      'CEP_ENT=CEP_ENT'
      'NOME_FILIAL=NOME_FILIAL'
      'END_FILIAL=END_FILIAL'
      'BAIRRO_FILIAL=BAIRRO_FILIAL'
      'CIDADE_FILIAL=CIDADE_FILIAL'
      'DDD_FILIAL=DDD_FILIAL'
      'FONE_FILIAL=FONE_FILIAL'
      'CEP_FILIAL=CEP_FILIAL'
      'UF_FILIAL=UF_FILIAL'
      'CNPJ_CPF_FILIAL=CNPJ_CPF_FILIAL'
      'INSCR_EST_FILIAL=INSCR_EST_FILIAL'
      'NOME_TRA=NOME_TRA'
      'END_TRA=END_TRA'
      'NUM_END_TRA=NUM_END_TRA'
      'BAIRRO_TRA=BAIRRO_TRA'
      'CIDADE_TRA=CIDADE_TRA'
      'UF_TRA=UF_TRA'
      'DDD_TRA=DDD_TRA'
      'FONE_TRA=FONE_TRA'
      'DDD_FAX_TRA=DDD_FAX_TRA'
      'FAX_TRA=FAX_TRA'
      'CNPJ_CPF_TRA=CNPJ_CPF_TRA'
      'INSCR_EST_TRA=INSCR_EST_TRA'
      'CEP_TRA=CEP_TRA'
      'NOME_RED=NOME_RED'
      'NOME_CONDPGTO=NOME_CONDPGTO'
      'NUM_END_FILIAL=NUM_END_FILIAL'
      'ENDLOGO=ENDLOGO'
      'IMP_OC_NOTA=IMP_OC_NOTA'
      'NOME_CLIENTE=NOME_CLIENTE'
      'TIPO_REG=TIPO_REG'
      'VALIDADE=VALIDADE'
      'NUM_ORCAMENTO=NUM_ORCAMENTO'
      'NUM_PEDIDO=NUM_PEDIDO'
      'NOME_VENDEDOR=NOME_VENDEDOR'
      'VLR_ADIANTAMENTO=VLR_ADIANTAMENTO'
      'EMAIL_COMPRAS=EMAIL_COMPRAS'
      'CONTATO_COMPRAS=CONTATO_COMPRAS'
      'FONE1_FILIAL=FONE1_FILIAL'
      'NOME_INTERNO_FIL=NOME_INTERNO_FIL'
      'VLR_ITENS2=VLR_ITENS2'
      'NOME_CONSUMIDOR=NOME_CONSUMIDOR'
      'clTIPO_FRETE=clTIPO_FRETE'
      'NOME_PRODUTO_PROPOSTA=NOME_PRODUTO_PROPOSTA'
      'NOME_FUNCIONARIO=NOME_FUNCIONARIO'
      'EMAIL_FUNCIONARIO=EMAIL_FUNCIONARIO'
      'ID_OPERACAO_NOTA=ID_OPERACAO_NOTA'
      'FINALIDADE=FINALIDADE'
      'FATURADO=FATURADO'
      'ID_SOLICITANTE=ID_SOLICITANTE'
      'ID_PROJETO=ID_PROJETO'
      'APROVADO_ORC=APROVADO_ORC'
      'AMOSTRA_GRATIS=AMOSTRA_GRATIS'
      'ID_CLIENTE_TRIANGULAR=ID_CLIENTE_TRIANGULAR'
      'NUM_DOC=NUM_DOC'
      'FRETE_SOMAR=FRETE_SOMAR'
      'ROMANEIO=ROMANEIO'
      'TIPO_VENDA=TIPO_VENDA'
      'ID_FUNCIONARIO=ID_FUNCIONARIO'
      'NOME_TRANSPORTADORA=NOME_TRANSPORTADORA'
      'VLR_SERVICO=VLR_SERVICO'
      'VENDEDOR_DDD=VENDEDOR_DDD'
      'VENDEDOR_FONE=VENDEDOR_FONE'
      'VLR_TOTAL_TRILHOS=VLR_TOTAL_TRILHOS'
      'VLR_TOTAL_ROLDANAS=VLR_TOTAL_ROLDANAS'
      'ENDERECO_PGTO=ENDERECO_PGTO'
      'CIDADE_PGTO=CIDADE_PGTO'
      'UF_PGTO=UF_PGTO'
      'BAIRRO_PGTO=BAIRRO_PGTO'
      'CEP_PGTO=CEP_PGTO'
      'NUM_END_PGTO=NUM_END_PGTO'
      'FANTASIA_CLI=FANTASIA_CLI'
      'ID_MAPA=ID_MAPA'
      'NUM_MAPA=NUM_MAPA'
      'NOME_MAPA=NOME_MAPA'
      'APROVADO_PED=APROVADO_PED'
      'VLR_ICMS_FCP=VLR_ICMS_FCP'
      'VLR_ICMS_UF_DEST=VLR_ICMS_UF_DEST'
      'VLR_ICMS_UF_REMET=VLR_ICMS_UF_REMET'
      'NOME_ATELIER=NOME_ATELIER'
      'ID_ATELIER=ID_ATELIER'
      'OBS_ROTULO=OBS_ROTULO'
      'ROTULO_IMP=ROTULO_IMP'
      'USUARIO=USUARIO'
      'VLR_DUPLICATA=VLR_DUPLICATA'
      'NOME_CLI_CONS=NOME_CLI_CONS'
      'NOME_OPERACAO=NOME_OPERACAO'
      'TIPO_NOTA=TIPO_NOTA'
      'DTRECEBIMENTO=DTRECEBIMENTO'
      'HRUSUARIO=HRUSUARIO'
      'ID_FUNCIONARIO_1=ID_FUNCIONARIO_1'
      'NOME_GRUPO_PESSOA=NOME_GRUPO_PESSOA'
      'PESSOA=PESSOA'
      'IMP_COR_CLIENTE=IMP_COR_CLIENTE'
      'DDD_PEDIDO=DDD_PEDIDO'
      'FONE_PEDIDO=FONE_PEDIDO'
      'OBS_AVISO=OBS_AVISO'
      'MOSTRAR_AVISO=MOSTRAR_AVISO'
      'VLR_MAO_OBRA=VLR_MAO_OBRA'
      'CNPJ_CPF_ATELIER=CNPJ_CPF_ATELIER'
      'PESSOA_ATELIER=PESSOA_ATELIER'
      'EMAIL_COMPRAS_FORN=EMAIL_COMPRAS_FORN'
      'NOME_CLIENTE2=NOME_CLIENTE2'
      'NOME_CONTATO=NOME_CONTATO'
      'DESC_TIPO_FRETE=DESC_TIPO_FRETE'
      'COMPL_END_CLIENTE=COMPL_END_CLIENTE'
      'EMAIL_FIL=EMAIL_FIL'
      'DDDFAX_FIL=DDDFAX_FIL'
      'FAX_FIL=FAX_FIL'
      'COMPL_END_FILIAL=COMPL_END_FILIAL')
    DataSource = dsPedidoImp
    BCDToCurrency = False
    Left = 1289
    Top = 292
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxPedidoImp_Cli'
    CloseDataSource = True
    DataSource = dsPedidoImp_Cli
    BCDToCurrency = False
    Left = 1264
    Top = 293
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
    Left = 1231
    Top = 111
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
    Left = 1200
    Top = 111
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxPedidoImp_Itens'
    OnFirst = frxDBDataset3First
    OnNext = frxDBDataset3Next
    CloseDataSource = True
    FieldAliases.Strings = (
      'ID=ID'
      'ITEM=ITEM'
      'ID_PRODUTO=ID_PRODUTO'
      'ID_COR=ID_COR'
      'TAMANHO=TAMANHO'
      'QTD=QTD'
      'QTD_FATURADO=QTD_FATURADO'
      'QTD_RESTANTE=QTD_RESTANTE'
      'QTD_CANCELADO=QTD_CANCELADO'
      'VLR_DESCONTO=VLR_DESCONTO'
      'CANCELADO=CANCELADO'
      'DTENTREGA=DTENTREGA'
      'FATURADO=FATURADO'
      'DTFATURADO=DTFATURADO'
      'COD_PRODUTO_CLIENTE=COD_PRODUTO_CLIENTE'
      'TIPO=TIPO'
      'UNIDADE=UNIDADE'
      'NUMOS=NUMOS'
      'PERC_DESCONTO=PERC_DESCONTO'
      'VLR_FRETE=VLR_FRETE'
      'BASE_ICMS=BASE_ICMS'
      'VLR_ICMS=VLR_ICMS'
      'BASE_ICMSTRANSF=BASE_ICMSTRANSF'
      'PERC_TRANSF=PERC_TRANSF'
      'VLR_TRANSF=VLR_TRANSF'
      'VLR_IPI=VLR_IPI'
      'BASE_ICMSSIMPLES=BASE_ICMSSIMPLES'
      'VLR_ICMSSIMPLES=VLR_ICMSSIMPLES'
      'PERC_ICMSSIMPLES=PERC_ICMSSIMPLES'
      'BASE_ICMSSUBST=BASE_ICMSSUBST'
      'VLR_ICMSSUBST=VLR_ICMSSUBST'
      'VLR_DESCONTORATEIO=VLR_DESCONTORATEIO'
      'ID_CFOP=ID_CFOP'
      'ID_CSTIPI=ID_CSTIPI'
      'ID_CSTICMS=ID_CSTICMS'
      'PERC_ICMS=PERC_ICMS'
      'PERC_IPI=PERC_IPI'
      'REFERENCIA=REFERENCIA'
      'NOMEPRODUTO=NOMEPRODUTO'
      'OBS_COMPLEMENTAR=OBS_COMPLEMENTAR'
      'CALCULARICMSSOBREIPI=CALCULARICMSSOBREIPI'
      'VLR_UNITARIO=VLR_UNITARIO'
      'ID_CONFIG_CFOP=ID_CONFIG_CFOP'
      'VLR_TOTAL=VLR_TOTAL'
      'QTD_AFATURAR=QTD_AFATURAR'
      'ID_VARIACAO=ID_VARIACAO'
      'OBS=OBS'
      'PERC_TRIBICMS=PERC_TRIBICMS'
      'ID_ATELIER=ID_ATELIER'
      'VLR_UNITARIO_ATELIER=VLR_UNITARIO_ATELIER'
      'VLR_TOTAL_ATELIER=VLR_TOTAL_ATELIER'
      'DT_ENVIO_ATELIER=DT_ENVIO_ATELIER'
      'DT_RETORNO_ATELIER=DT_RETORNO_ATELIER'
      'VLR_PAGTO_ATELIER=VLR_PAGTO_ATELIER'
      'DT_PAGTO_ATELIER=DT_PAGTO_ATELIER'
      'APROVADO_ORC=APROVADO_ORC'
      'MOTIVO_NAO_APROV=MOTIVO_NAO_APROV'
      'DTAPROVADO_NAO=DTAPROVADO_NAO'
      'ID_ORCAMENTO=ID_ORCAMENTO'
      'ITEM_ORCAMENTO=ITEM_ORCAMENTO'
      'QTD_LIBERADA=QTD_LIBERADA'
      'QTD_PRODUZIDA=QTD_PRODUZIDA'
      'NUM_LOTE=NUM_LOTE'
      'NUM_TALAO=NUM_TALAO'
      'GERAR_LOTE=GERAR_LOTE'
      'CARIMBO=CARIMBO'
      'DTPRODUCAO=DTPRODUCAO'
      'ID_NCM=ID_NCM'
      'TIPO_ORCAMENTO=TIPO_ORCAMENTO'
      'END_FOTO=END_FOTO'
      'ITEM_CLIENTE=ITEM_CLIENTE'
      'QTD_PECA=QTD_PECA'
      'GRAVACAO_COM_ERRO=GRAVACAO_COM_ERRO'
      'QTD_FUT=QTD_FUT'
      'ITEM_COMBINACAO=ITEM_COMBINACAO'
      'TIPO_REG=TIPO_REG'
      'ID_MOVESTOQUE=ID_MOVESTOQUE'
      'GERAR_ESTOQUE=GERAR_ESTOQUE'
      'ITEM_ORIGINAL=ITEM_ORIGINAL'
      'PERC_DIFERIMENTO=PERC_DIFERIMENTO'
      'VLR_ICMSDIFERIDO=VLR_ICMSDIFERIDO'
      'LOCALIZACAO=LOCALIZACAO'
      'NOME_MARCA=NOME_MARCA'
      'COMPRIMENTO=COMPRIMENTO'
      'LARGURA=LARGURA'
      'ALTURA=ALTURA'
      'VLR_KG=VLR_KG'
      'QTD_TIPO=QTD_TIPO'
      'VLR_UNITARIO_TIPO=VLR_UNITARIO_TIPO'
      'VLR_TOTAL_TIPO=VLR_TOTAL_TIPO'
      'DIAMETRO=DIAMETRO'
      'DIAMETRO_EXT=DIAMETRO_EXT'
      'DIAMETRO_INT=DIAMETRO_INT'
      'PAREDE=PAREDE'
      'PESO=PESO'
      'COMPLEMENTO_NOME=COMPLEMENTO_NOME'
      'TIPO_ORCAMENTO_1=TIPO_ORCAMENTO_1'
      'DESCRICAO_TIPO=DESCRICAO_TIPO'
      'NCM=NCM'
      'QTD_FUROS=QTD_FUROS'
      'NOME_COR_COMBINACAO=NOME_COR_COMBINACAO'
      'sdsPedidoImp_Cli=sdsPedidoImp_Cli'
      'FOTO=FOTO'
      'TAM_MATRIZ=TAM_MATRIZ'
      'PICTOGRAMA=PICTOGRAMA'
      'VLR_TOTAL_PARCIAL=VLR_TOTAL_PARCIAL'
      'VLR_DESCONTO_PARCIAL=VLR_DESCONTO_PARCIAL'
      'VLR_FRETE_PARCIAL=VLR_FRETE_PARCIAL'
      'VLR_ICMS_PARCIAL=VLR_ICMS_PARCIAL'
      'VLR_TRANSF_PARCIAL=VLR_TRANSF_PARCIAL'
      'VLR_IPI_PARCIAL=VLR_IPI_PARCIAL'
      'VLR_ICMSSIMPLES_PARCIAL=VLR_ICMSSIMPLES_PARCIAL'
      'VLR_ICMSSUBST_PARCIAL=VLR_ICMSSUBST_PARCIAL'
      'VLR_DESCONTO_RATEIO_PARCIAL=VLR_DESCONTO_RATEIO_PARCIAL'
      'VLR_ICMSDIFERIDO_PARCIAL=VLR_ICMSDIFERIDO_PARCIAL'
      'VLR_ICMS_FCP_PARCIAL=VLR_ICMS_FCP_PARCIAL'
      'VLR_ICMS_UF_DEST_PARCIAL=VLR_ICMS_UF_DEST_PARCIAL'
      'VLR_ICMS_UF_REMET_PARCIAL=VLR_ICMS_UF_REMET_PARCIAL'
      'VLR_DESCONTORATEIO_PARCIAL=VLR_DESCONTORATEIO_PARCIAL'
      'BASE_ICMSSUBST_PARCIAL=BASE_ICMSSUBST_PARCIAL'
      'VLR_ICMS_FCP=VLR_ICMS_FCP'
      'VLR_ICMS_UF_DEST=VLR_ICMS_UF_DEST'
      'VLR_ICMS_UF_REMET=VLR_ICMS_UF_REMET'
      'NOME_ATELIER=NOME_ATELIER'
      'VLR_DUPLICATA=VLR_DUPLICATA'
      'GERAR_DUPLICATA=GERAR_DUPLICATA'
      'VLR_DUPLICATA_PARCIAL=VLR_DUPLICATA_PARCIAL'
      'IMP_ROTULO_PROD=IMP_ROTULO_PROD'
      'VLR_TOTAL_CALC=VLR_TOTAL_CALC'
      'VLR_DESCONTO_CALC=VLR_DESCONTO_CALC'
      'NUM_OS_SERV=NUM_OS_SERV'
      'NOME_SERVICO_INT=NOME_SERVICO_INT'
      'NUM_NOTA_ENT=NUM_NOTA_ENT'
      'SERIE_NOTA_ENT=SERIE_NOTA_ENT'
      'CONV_UNIDADE=CONV_UNIDADE'
      'UNIDADE_PROD=UNIDADE_PROD'
      'ENCERADO=ENCERADO'
      'QTD_CAIXA=QTD_CAIXA'
      'NUM_LOTE_CONTROLE=NUM_LOTE_CONTROLE'
      'PESO_VAREJO=PESO_VAREJO'
      'COD_COR_CLIENTE=COD_COR_CLIENTE'
      'NOME_COR_CLIENTE=NOME_COR_CLIENTE'
      'TAMANHO_CLIENTE=TAMANHO_CLIENTE'
      'FOTO_1=FOTO_1'
      'ID_MATERIAL=ID_MATERIAL'
      'ID_TIPO_MATERIAL=ID_TIPO_MATERIAL'
      'NOME_TIPO_MATERIAL=NOME_TIPO_MATERIAL'
      'ESPESSURA=ESPESSURA'
      'DENSIDADE=DENSIDADE'
      'TIPO_OS=TIPO_OS'
      'DESC_TIPO_OS=DESC_TIPO_OS'
      'ALTURA_CORTE=ALTURA_CORTE'
      'LARGURA_CORTE=LARGURA_CORTE'
      'COD_BARRAS=COD_BARRAS'
      'NOME_ACABAMENTO=NOME_ACABAMENTO'
      'QTD_POR_ROTULO_PROD=QTD_POR_ROTULO_PROD'
      'QTD_EMBALAGEM_PROD=QTD_EMBALAGEM_PROD'
      'FABRICA=FABRICA'
      'MEDIDA=MEDIDA'
      'CAMINHO_ARQUIVO_PDF=CAMINHO_ARQUIVO_PDF')
    DataSource = dsPedidoImp_Itens
    BCDToCurrency = False
    Left = 1233
    Top = 293
  end
  object frxRichObject1: TfrxRichObject
    Left = 1264
    Top = 111
  end
  object sdsPedidoServico: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PS.*, SI.NOME NOMESERVICO'#13#10'FROM PEDIDO_SERVICO PS'#13#10'INNER ' +
      'JOIN SERVICO_INT SI ON (PS.ID_SERVICO_INT = SI.ID)'#13#10'WHERE PS.ID ' +
      '= :ID'
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
    Left = 24
    Top = 322
    object sdsPedidoServicoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedidoServicoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedidoServicoID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object sdsPedidoServicoNOME_SERVICO_INT: TStringField
      FieldName = 'NOME_SERVICO_INT'
      Size = 150
    end
    object sdsPedidoServicoQTD: TIntegerField
      FieldName = 'QTD'
    end
    object sdsPedidoServicoVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsPedidoServicoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsPedidoServicoCOMPLEMENTO_SERVICO: TStringField
      FieldName = 'COMPLEMENTO_SERVICO'
      Size = 80
    end
    object sdsPedidoServicoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsPedidoServicoAPROVADO_ORC: TStringField
      FieldName = 'APROVADO_ORC'
      FixedChar = True
      Size = 1
    end
  end
  object cdsPedidoServico: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPedidosdsPedidoServico
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 40
    Top = 322
    object cdsPedidoServicoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedidoServicoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedidoServicoID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsPedidoServicoNOME_SERVICO_INT: TStringField
      FieldName = 'NOME_SERVICO_INT'
      Size = 150
    end
    object cdsPedidoServicoQTD: TIntegerField
      FieldName = 'QTD'
    end
    object cdsPedidoServicoVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.00'
    end
    object cdsPedidoServicoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsPedidoServicoCOMPLEMENTO_SERVICO: TStringField
      FieldName = 'COMPLEMENTO_SERVICO'
      Size = 80
    end
    object cdsPedidoServicoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsPedidoServicoAPROVADO_ORC: TStringField
      FieldName = 'APROVADO_ORC'
      FixedChar = True
      Size = 1
    end
  end
  object dsPedidoServico: TDataSource
    DataSet = cdsPedidoServico
    Left = 56
    Top = 322
  end
  object sdsServico_Int: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM SERVICO_INT'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 529
    Top = 184
  end
  object dspServico_Int: TDataSetProvider
    DataSet = sdsServico_Int
    Left = 552
    Top = 184
  end
  object cdsServico_Int: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspServico_Int'
    Left = 576
    Top = 184
    object cdsServico_IntID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsServico_IntNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object cdsServico_IntVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.00'
    end
  end
  object dsServico_Int: TDataSource
    DataSet = cdsServico_Int
    Left = 600
    Top = 184
  end
  object qPessoa_Fiscal: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT PF.*, TI.cod_ipi, TP.codigo COD_PIS, TC.codigo COD_COFINS'
      'FROM PESSOA_FISCAL PF'
      'LEFT JOIN TAB_CSTIPI TI'
      'ON PF.ipi_id_cstipi = TI.id'
      'LEFT JOIN tab_pis TP'
      'ON PF.pis_id_pis = TP.id'
      'LEFT JOIN tab_cofins TC'
      'ON PF.pis_id_cofins = TC.id'
      'WHERE PF.CODIGO = :CODIGO')
    SQLConnection = dmDatabase.scoDados
    Left = 1215
    Top = 438
    object qPessoa_FiscalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qPessoa_FiscalIPI_SUSPENSO: TStringField
      FieldName = 'IPI_SUSPENSO'
      FixedChar = True
      Size = 1
    end
    object qPessoa_FiscalIPI_DT_INICIO: TDateField
      FieldName = 'IPI_DT_INICIO'
    end
    object qPessoa_FiscalIPI_DT_FINAL: TDateField
      FieldName = 'IPI_DT_FINAL'
    end
    object qPessoa_FiscalIPI_OBS: TStringField
      FieldName = 'IPI_OBS'
      Size = 250
    end
    object qPessoa_FiscalIPI_ID_CSTIPI: TIntegerField
      FieldName = 'IPI_ID_CSTIPI'
    end
    object qPessoa_FiscalPIS_SUSPENSO: TStringField
      FieldName = 'PIS_SUSPENSO'
      FixedChar = True
      Size = 1
    end
    object qPessoa_FiscalPIS_DT_INICIO: TDateField
      FieldName = 'PIS_DT_INICIO'
    end
    object qPessoa_FiscalPIS_DT_FINAL: TDateField
      FieldName = 'PIS_DT_FINAL'
    end
    object qPessoa_FiscalPIS_OBS: TStringField
      FieldName = 'PIS_OBS'
      Size = 250
    end
    object qPessoa_FiscalPIS_ID_PIS: TIntegerField
      FieldName = 'PIS_ID_PIS'
    end
    object qPessoa_FiscalPIS_ID_COFINS: TIntegerField
      FieldName = 'PIS_ID_COFINS'
    end
    object qPessoa_FiscalCOD_IPI: TStringField
      FieldName = 'COD_IPI'
      Size = 2
    end
    object qPessoa_FiscalCOD_PIS: TStringField
      FieldName = 'COD_PIS'
      Size = 2
    end
    object qPessoa_FiscalCOD_COFINS: TStringField
      FieldName = 'COD_COFINS'
      Size = 2
    end
    object qPessoa_FiscalDESC_SUFRAMA_PIS_COFINS: TStringField
      FieldName = 'DESC_SUFRAMA_PIS_COFINS'
      FixedChar = True
      Size = 1
    end
    object qPessoa_FiscalDESC_SUFRAMA_ICMS: TStringField
      FieldName = 'DESC_SUFRAMA_ICMS'
      FixedChar = True
      Size = 1
    end
    object qPessoa_FiscalDESC_SUFRAMA_IPI: TStringField
      FieldName = 'DESC_SUFRAMA_IPI'
      FixedChar = True
      Size = 1
    end
    object qPessoa_FiscalOBS_LEI_SUFRAMA: TStringField
      FieldName = 'OBS_LEI_SUFRAMA'
      Size = 250
    end
    object qPessoa_FiscalOBS_LEI_DADOS_ADICIONAIS: TStringField
      FieldName = 'OBS_LEI_DADOS_ADICIONAIS'
      Size = 250
    end
    object qPessoa_FiscalID_CST_ICMS_SUFRAMA: TIntegerField
      FieldName = 'ID_CST_ICMS_SUFRAMA'
    end
    object qPessoa_FiscalID_CST_PIS_COFINS_SUFRAMA: TIntegerField
      FieldName = 'ID_CST_PIS_COFINS_SUFRAMA'
    end
    object qPessoa_FiscalID_CST_IPI_SUFRAMA: TIntegerField
      FieldName = 'ID_CST_IPI_SUFRAMA'
    end
    object qPessoa_FiscalID_CST_ICMS_SUFRAMA_ST: TIntegerField
      FieldName = 'ID_CST_ICMS_SUFRAMA_ST'
    end
    object qPessoa_FiscalID_CST_ICMS: TIntegerField
      FieldName = 'ID_CST_ICMS'
    end
  end
  object dsmFilial: TDataSource
    DataSet = sdsFilial
    Left = 456
    Top = 181
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
    Left = 528
    Top = 366
    object sdsFilialRelatoriosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFilialRelatoriosITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsFilialRelatoriosTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object sdsFilialRelatoriosCAMINHO: TStringField
      FieldName = 'CAMINHO'
      Size = 150
    end
    object sdsFilialRelatoriosPOSICAO: TSmallintField
      FieldName = 'POSICAO'
    end
  end
  object cdsFilialRelatorios: TClientDataSet
    Aggregates = <>
    DataSetField = cdsFilialsdsFilialRelatorios
    Params = <>
    Left = 552
    Top = 366
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
  object dsFilialRelatorios: TDataSource
    DataSet = cdsFilialRelatorios
    Left = 576
    Top = 366
  end
  object sdsPedidoServicoImp: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT PS.*'#13#10'FROM PEDIDO_SERVICO PS'#13#10'WHERE PS.ID  = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 368
    Top = 542
  end
  object dspPedidoServicoImp: TDataSetProvider
    DataSet = sdsPedidoServicoImp
    Left = 384
    Top = 542
  end
  object cdsPedidoServicoImp: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspPedidoServicoImp'
    OnCalcFields = pedidoImpCalcFields
    Left = 400
    Top = 542
    object cdsPedidoServicoImpID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedidoServicoImpITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPedidoServicoImpID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsPedidoServicoImpNOME_SERVICO_INT: TStringField
      FieldName = 'NOME_SERVICO_INT'
      Size = 150
    end
    object cdsPedidoServicoImpQTD: TIntegerField
      FieldName = 'QTD'
    end
    object cdsPedidoServicoImpVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsPedidoServicoImpVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsPedidoServicoImpCOMPLEMENTO_SERVICO: TStringField
      FieldName = 'COMPLEMENTO_SERVICO'
      Size = 80
    end
    object cdsPedidoServicoImpUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsPedidoServicoImpAPROVADO_ORC: TStringField
      FieldName = 'APROVADO_ORC'
      FixedChar = True
      Size = 1
    end
  end
  object dsPedidoServicoImp: TDataSource
    DataSet = cdsPedidoServicoImp
    Left = 416
    Top = 542
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxPedidoServicoImp'
    CloseDataSource = True
    FieldAliases.Strings = (
      'ID=ID'
      'ITEM=ITEM'
      'ID_SERVICO_INT=ID_SERVICO_INT'
      'NOME_SERVICO_INT=NOME_SERVICO_INT'
      'QTD=QTD'
      'VLR_UNITARIO=VLR_UNITARIO'
      'VLR_TOTAL=VLR_TOTAL'
      'COMPLEMENTO_SERVICO=COMPLEMENTO_SERVICO'
      'UNIDADE=UNIDADE'
      'APROVADO_ORC=APROVADO_ORC')
    DataSource = dsPedidoServicoImp
    BCDToCurrency = False
    Left = 1202
    Top = 293
  end
  object sdsContaOrcamento: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT C.ID, C.DESCRICAO, C.TIPO, C.CODIGO, CASE NIVEL'#13#10'        ' +
      '   WHEN 5 THEN '#39'          '#39' ||  DESCRICAO'#13#10'           WHEN 4 THE' +
      'N '#39'        '#39' ||  DESCRICAO'#13#10'           WHEN 3 THEN '#39'      '#39' ||  ' +
      'DESCRICAO'#13#10'           WHEN 2 THEN '#39'    '#39' ||  DESCRICAO'#13#10'        ' +
      '   WHEN 1 THEN DESCRICAO'#13#10'           ELSE DESCRICAO'#13#10'           ' +
      'END AS NOME_AUX'#13#10'FROM CONTA_ORCAMENTO C '#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 529
    Top = 411
    object sdsContaOrcamentoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsContaOrcamentoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsContaOrcamentoCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object sdsContaOrcamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object sdsContaOrcamentoNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      Size = 60
    end
  end
  object dspContaOrcamento: TDataSetProvider
    DataSet = sdsContaOrcamento
    Left = 553
    Top = 413
  end
  object cdsContaOrcamento: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'DESCRICAO'
    Params = <>
    ProviderName = 'dspContaOrcamento'
    Left = 577
    Top = 413
    object cdsContaOrcamentoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsContaOrcamentoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsContaOrcamentoCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsContaOrcamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsContaOrcamentoNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      Size = 60
    end
  end
  object dsContaOrcamento: TDataSource
    DataSet = cdsContaOrcamento
    Left = 601
    Top = 413
  end
  object sdsAcabamento: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT M.id, M.nome, M.tipo_reg, M.vlr_unitario, M.TIPO_PRECO, M' +
      '.TIPO_VP, M.CALCULA_MEDIDAS'#13#10'FROM MATRIZ_PRECO M'#13#10'WHERE M.TIPO_R' +
      'EG = '#39'ACB'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 697
    Top = 237
  end
  object dspAcabamento: TDataSetProvider
    DataSet = sdsAcabamento
    Left = 713
    Top = 237
  end
  object cdsAcabamento: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspAcabamento'
    Left = 729
    Top = 237
    object cdsAcabamentoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsAcabamentoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsAcabamentoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsAcabamentoVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsAcabamentoTIPO_PRECO: TStringField
      FieldName = 'TIPO_PRECO'
      FixedChar = True
      Size = 1
    end
    object cdsAcabamentoTIPO_VP: TStringField
      FieldName = 'TIPO_VP'
      FixedChar = True
      Size = 1
    end
    object cdsAcabamentoCALCULA_MEDIDAS: TStringField
      FieldName = 'CALCULA_MEDIDAS'
      FixedChar = True
      Size = 1
    end
  end
  object dsAcabamento: TDataSource
    DataSet = cdsAcabamento
    Left = 745
    Top = 237
  end
  object qGrupo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT G.ID, G.NOME, G.TIPO_PROD'
      'FROM GRUPO G'
      'WHERE G.ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 1088
    Top = 587
    object qGrupoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qGrupoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qGrupoTIPO_PROD: TStringField
      FieldName = 'TIPO_PROD'
      FixedChar = True
      Size = 1
    end
  end
  object sdsRedondoMod: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT M.id, M.nome, M.tipo_reg, M.vlr_unitario, M.TIPO_PRECO, M' +
      '.TIPO_VP'#13#10'FROM MATRIZ_PRECO M'#13#10'WHERE M.TIPO_REG = '#39'RMO'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 697
    Top = 279
  end
  object dspRedondoMod: TDataSetProvider
    DataSet = sdsRedondoMod
    Left = 713
    Top = 279
  end
  object cdsRedondoMod: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspRedondoMod'
    Left = 729
    Top = 279
    object cdsRedondoModID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsRedondoModNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsRedondoModTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsRedondoModVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsRedondoModTIPO_PRECO: TStringField
      FieldName = 'TIPO_PRECO'
      FixedChar = True
      Size = 1
    end
    object cdsRedondoModTIPO_VP: TStringField
      FieldName = 'TIPO_VP'
      FixedChar = True
      Size = 1
    end
  end
  object dsRedondoMod: TDataSource
    DataSet = cdsRedondoMod
    Left = 745
    Top = 279
  end
  object sdsCMoeda: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT M.id, M.nome, M.tipo_reg, M.vlr_unitario, M.TIPO_PRECO, M' +
      '.TIPO_VP'#13#10'FROM MATRIZ_PRECO M'#13#10'WHERE M.TIPO_REG = '#39'CMO'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 697
    Top = 319
  end
  object dspCMoeda: TDataSetProvider
    DataSet = sdsCMoeda
    Left = 713
    Top = 319
  end
  object cdsCMoeda: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCMoeda'
    Left = 729
    Top = 319
    object cdsCMoedaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCMoedaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsCMoedaTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsCMoedaVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsCMoedaTIPO_PRECO: TStringField
      FieldName = 'TIPO_PRECO'
      FixedChar = True
      Size = 1
    end
    object cdsCMoedaTIPO_VP: TStringField
      FieldName = 'TIPO_VP'
      FixedChar = True
      Size = 1
    end
  end
  object dsCMoeda: TDataSource
    DataSet = cdsCMoeda
    Left = 745
    Top = 319
  end
  object sdsFuros: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT M.id, M.nome, M.tipo_reg, M.vlr_unitario, M.TIPO_PRECO, M' +
      '.TIPO_VP'#13#10'FROM MATRIZ_PRECO M'#13#10'WHERE M.TIPO_REG = '#39'FRS'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 697
    Top = 368
  end
  object dspFuros: TDataSetProvider
    DataSet = sdsFuros
    Left = 713
    Top = 368
  end
  object cdsFuros: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFuros'
    Left = 729
    Top = 368
    object cdsFurosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFurosNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsFurosTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsFurosVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsFurosTIPO_PRECO: TStringField
      FieldName = 'TIPO_PRECO'
      FixedChar = True
      Size = 1
    end
    object cdsFurosTIPO_VP: TStringField
      FieldName = 'TIPO_VP'
      FixedChar = True
      Size = 1
    end
  end
  object dsFuros: TDataSource
    DataSet = cdsFuros
    Left = 745
    Top = 368
  end
  object sdsFuracao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT M.id, M.nome, M.tipo_reg, M.vlr_unitario, M.TIPO_PRECO, M' +
      '.TIPO_VP'#13#10'FROM MATRIZ_PRECO M'#13#10'WHERE M.TIPO_REG = '#39'FRC'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 697
    Top = 413
  end
  object dspFuracao: TDataSetProvider
    DataSet = sdsFuracao
    Left = 713
    Top = 413
  end
  object cdsFuracao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFuracao'
    Left = 729
    Top = 413
    object cdsFuracaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFuracaoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsFuracaoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsFuracaoVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsFuracaoTIPO_PRECO: TStringField
      FieldName = 'TIPO_PRECO'
      FixedChar = True
      Size = 1
    end
    object cdsFuracaoTIPO_VP: TStringField
      FieldName = 'TIPO_VP'
      FixedChar = True
      Size = 1
    end
  end
  object dsFuracao: TDataSource
    DataSet = cdsFuracao
    Left = 745
    Top = 413
  end
  object sdsPerfil: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.id, P.nome, P.preco_custo, P.preco_venda, P.id_grupo, G' +
      '.tipo_prod, P.CALCULAR_2_LADOS'#13#10'FROM PRODUTO P'#13#10'INNER JOIN GRUPO' +
      ' G'#13#10'ON P.id_grupo = G.ID'#13#10'WHERE G.TIPO_PROD = '#39'R'#39#13#10'   AND P.INAT' +
      'IVO = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 697
    Top = 455
  end
  object dspPerfil: TDataSetProvider
    DataSet = sdsPerfil
    Left = 713
    Top = 455
  end
  object cdsPerfil: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspPerfil'
    Left = 729
    Top = 455
    object cdsPerfilID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPerfilNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsPerfilPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsPerfilPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object cdsPerfilID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
    object cdsPerfilTIPO_PROD: TStringField
      FieldName = 'TIPO_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsPerfilCALCULAR_2_LADOS: TStringField
      FieldName = 'CALCULAR_2_LADOS'
      FixedChar = True
      Size = 1
    end
  end
  object dsPerfil: TDataSource
    DataSet = cdsPerfil
    Left = 745
    Top = 455
  end
  object sdsVidro: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.id, P.nome, P.preco_custo, P.preco_venda, P.id_grupo, G' +
      '.tipo_prod, P.PERC_VIDRO'#13#10'FROM PRODUTO P'#13#10'INNER JOIN GRUPO G'#13#10'ON' +
      ' P.id_grupo = G.ID'#13#10'WHERE G.TIPO_PROD = '#39'V'#39#13#10'  AND P.INATIVO = '#39 +
      'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 1160
    Top = 29
  end
  object dspVidro: TDataSetProvider
    DataSet = sdsVidro
    Left = 857
    Top = 23
  end
  object cdsVidro: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspVidro'
    Left = 881
    Top = 23
    object cdsVidroID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsVidroNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsVidroPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsVidroPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object cdsVidroID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
    object cdsVidroTIPO_PROD: TStringField
      FieldName = 'TIPO_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsVidroPERC_VIDRO: TFloatField
      FieldName = 'PERC_VIDRO'
    end
  end
  object dsVidro: TDataSource
    DataSet = cdsVidro
    Left = 905
    Top = 22
  end
  object sdsPedido_Ace: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PEDIDO_ITEM'#13#10'WHERE ID = :ID'#13#10'   AND TIPO_ACESSORI' +
      'O = '#39'T'#39#13#10
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
    Left = 24
    Top = 366
    object sdsPedido_AceID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedido_AceITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedido_AceID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsPedido_AceVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsPedido_AceVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsPedido_AceCOMPRIMENTO_VOLUME: TFloatField
      FieldName = 'COMPRIMENTO_VOLUME'
    end
    object sdsPedido_AceTIPO_ACESSORIO: TStringField
      FieldName = 'TIPO_ACESSORIO'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_AceQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsPedido_AceQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object sdsPedido_AceQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object sdsPedido_AceCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_AceREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsPedido_AceNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object sdsPedido_AceTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object sdsPedido_AceTIPO_ORCAMENTO: TStringField
      FieldName = 'TIPO_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_AceTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_AceUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsPedido_AceID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object sdsPedido_AceAPROVADO_ORC: TStringField
      FieldName = 'APROVADO_ORC'
      FixedChar = True
      Size = 1
    end
  end
  object cdsPedido_Ace: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPedidosdsPedido_Ace
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 40
    Top = 366
    object cdsPedido_AceID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedido_AceITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedido_AceID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsPedido_AceVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.00##'
    end
    object cdsPedido_AceVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsPedido_AceCOMPRIMENTO_VOLUME: TFloatField
      FieldName = 'COMPRIMENTO_VOLUME'
    end
    object cdsPedido_AceTIPO_ACESSORIO: TStringField
      FieldName = 'TIPO_ACESSORIO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_AceQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedido_AceQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsPedido_AceQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsPedido_AceCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_AceREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsPedido_AceNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsPedido_AceTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object cdsPedido_AceTIPO_ORCAMENTO: TStringField
      FieldName = 'TIPO_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_AceTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_AceUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsPedido_AceID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsPedido_AceAPROVADO_ORC: TStringField
      FieldName = 'APROVADO_ORC'
      FixedChar = True
      Size = 1
    end
  end
  object dsPedido_Ace: TDataSource
    DataSet = cdsPedido_Ace
    Left = 56
    Top = 366
  end
  object sdsPedido_Rol: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PEDIDO_ITEM'#13#10'WHERE ID = :ID'#13#10'   AND TIPO_ACESSORI' +
      'O = '#39'R'#39#13#10
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
    Left = 24
    Top = 409
    object sdsPedido_RolID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedido_RolITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedido_RolID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsPedido_RolVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsPedido_RolVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsPedido_RolCOMPRIMENTO_VOLUME: TFloatField
      FieldName = 'COMPRIMENTO_VOLUME'
    end
    object sdsPedido_RolTIPO_ACESSORIO: TStringField
      FieldName = 'TIPO_ACESSORIO'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_RolQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsPedido_RolQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object sdsPedido_RolQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object sdsPedido_RolCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_RolDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object sdsPedido_RolTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object sdsPedido_RolUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsPedido_RolREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsPedido_RolNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object sdsPedido_RolID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object sdsPedido_RolAPROVADO_ORC: TStringField
      FieldName = 'APROVADO_ORC'
      FixedChar = True
      Size = 1
    end
  end
  object cdsPedido_Rol: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPedidosdsPedido_Rol
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 40
    Top = 409
    object cdsPedido_RolID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedido_RolITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedido_RolID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsPedido_RolVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsPedido_RolVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsPedido_RolCOMPRIMENTO_VOLUME: TFloatField
      FieldName = 'COMPRIMENTO_VOLUME'
    end
    object cdsPedido_RolTIPO_ACESSORIO: TStringField
      FieldName = 'TIPO_ACESSORIO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_RolQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsPedido_RolQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsPedido_RolQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedido_RolCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_RolDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsPedido_RolTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object cdsPedido_RolUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsPedido_RolREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsPedido_RolNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsPedido_RolID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsPedido_RolAPROVADO_ORC: TStringField
      FieldName = 'APROVADO_ORC'
      FixedChar = True
      Size = 1
    end
  end
  object dsPedido_Rol: TDataSource
    DataSet = cdsPedido_Rol
    Left = 56
    Top = 409
  end
  object sdsAcessorios: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.id, P.nome, P.preco_custo, P.preco_venda, P.id_grupo, G' +
      '.tipo_prod, P.REFERENCIA, P.UNIDADE, P.ID_NCM'#13#10'FROM PRODUTO P'#13#10'I' +
      'NNER JOIN GRUPO G'#13#10'ON P.id_grupo = G.ID'#13#10'WHERE G.TIPO_PROD = :TI' +
      'PO_PROD'#13#10'    AND P.INATIVO = '#39'N'#39#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TIPO_PROD'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 857
    Top = 65
  end
  object dspAcessorios: TDataSetProvider
    DataSet = sdsAcessorios
    Left = 873
    Top = 65
  end
  object cdsAcessorios: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspAcessorios'
    Left = 889
    Top = 65
    object cdsAcessoriosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsAcessoriosNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsAcessoriosPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsAcessoriosPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object cdsAcessoriosID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
    object cdsAcessoriosTIPO_PROD: TStringField
      FieldName = 'TIPO_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsAcessoriosREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsAcessoriosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsAcessoriosID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
  end
  object dsAcessorios: TDataSource
    DataSet = cdsAcessorios
    Left = 905
    Top = 65
  end
  object qProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT P.ID, P.NOME, P.ID_GRUPO, P.PRECO_CUSTO, G.NOME NOME_GRUP' +
        'O'
      'FROM PRODUTO P'
      'LEFT JOIN GRUPO G'
      'ON P.ID_GRUPO = G.ID'
      'WHERE P.ID = :ID'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 1064
    Top = 586
    object qProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qProdutoID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
    object qProdutoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object qProdutoNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      Size = 40
    end
  end
  object sdsPedidoImp_Tipo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PT.*, ACB.NOME NOME_ACABAMENTO, RED.NOME NOME_REDONDO_MOD' +
      ', CMO.NOME NOME_CMOEDA, FRS.NOME NOME_FUROS, '#13#10'FRC.NOME NOME_FUR' +
      'ACAO, PERFIL.NOME NOME_PERFIL, VIDRO.NOME NOME_VIDRO '#13#10'FROM pedi' +
      'do_item_tipo PT'#13#10'LEFT JOIN MATRIZ_PRECO ACB ON (PT.id_acabamento' +
      ' = ACB.id)'#13#10'LEFT JOIN MATRIZ_PRECO RED ON (PT.id_redondo_mod = R' +
      'ED.id)'#13#10'LEFT JOIN MATRIZ_PRECO CMO ON (PT.id_cmoeda = CMO.id)'#13#10'L' +
      'EFT JOIN MATRIZ_PRECO FRS ON (PT.id_furos = FRS.id)'#13#10'LEFT JOIN M' +
      'ATRIZ_PRECO FRC ON (PT.id_furacao = FRC.id)'#13#10'LEFT JOIN PRODUTO P' +
      'ERFIL ON (PT.id_perfil = PERFIL.ID)'#13#10'LEFT JOIN PRODUTO VIDRO ON ' +
      '(PT.id_vidro = VIDRO.ID)'#13#10'WHERE PT.ID = :ID'#13#10'  AND PT.ITEM = :IT' +
      'EM'#13#10
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
    Left = 216
    Top = 551
  end
  object cdsPedidoImp_Tipo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspPedidoImp_Tipo'
    OnNewRecord = cdsPedido_ItensNewRecord
    Left = 248
    Top = 551
    object cdsPedidoImp_TipoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedidoImp_TipoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPedidoImp_TipoCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object cdsPedidoImp_TipoLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object cdsPedidoImp_TipoALTURA: TFloatField
      FieldName = 'ALTURA'
    end
    object cdsPedidoImp_TipoVLR_KG: TFloatField
      FieldName = 'VLR_KG'
    end
    object cdsPedidoImp_TipoQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedidoImp_TipoVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsPedidoImp_TipoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsPedidoImp_TipoDIAMETRO: TFloatField
      FieldName = 'DIAMETRO'
    end
    object cdsPedidoImp_TipoDIAMETRO_EXT: TFloatField
      FieldName = 'DIAMETRO_EXT'
    end
    object cdsPedidoImp_TipoDIAMETRO_INT: TFloatField
      FieldName = 'DIAMETRO_INT'
    end
    object cdsPedidoImp_TipoPAREDE: TFloatField
      FieldName = 'PAREDE'
    end
    object cdsPedidoImp_TipoPESO: TFloatField
      FieldName = 'PESO'
    end
    object cdsPedidoImp_TipoCOMPLEMENTO_NOME: TStringField
      FieldName = 'COMPLEMENTO_NOME'
      Size = 50
    end
    object cdsPedidoImp_TipoTIPO_ORCAMENTO: TStringField
      FieldName = 'TIPO_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImp_TipoDESCRICAO_TIPO: TStringField
      FieldName = 'DESCRICAO_TIPO'
      Size = 12
    end
    object cdsPedidoImp_TipoID_ACABAMENTO: TIntegerField
      FieldName = 'ID_ACABAMENTO'
    end
    object cdsPedidoImp_TipoID_REDONDO_MOD: TIntegerField
      FieldName = 'ID_REDONDO_MOD'
    end
    object cdsPedidoImp_TipoID_CMOEDA: TIntegerField
      FieldName = 'ID_CMOEDA'
    end
    object cdsPedidoImp_TipoID_FUROS: TIntegerField
      FieldName = 'ID_FUROS'
    end
    object cdsPedidoImp_TipoID_FURACAO: TIntegerField
      FieldName = 'ID_FURACAO'
    end
    object cdsPedidoImp_TipoID_PERFIL: TIntegerField
      FieldName = 'ID_PERFIL'
    end
    object cdsPedidoImp_TipoID_VIDRO: TIntegerField
      FieldName = 'ID_VIDRO'
    end
    object cdsPedidoImp_TipoNOME_ACABAMENTO: TStringField
      FieldName = 'NOME_ACABAMENTO'
      Size = 30
    end
    object cdsPedidoImp_TipoNOME_REDONDO_MOD: TStringField
      FieldName = 'NOME_REDONDO_MOD'
      Size = 30
    end
    object cdsPedidoImp_TipoNOME_CMOEDA: TStringField
      FieldName = 'NOME_CMOEDA'
      Size = 30
    end
    object cdsPedidoImp_TipoNOME_FUROS: TStringField
      FieldName = 'NOME_FUROS'
      Size = 30
    end
    object cdsPedidoImp_TipoNOME_FURACAO: TStringField
      FieldName = 'NOME_FURACAO'
      Size = 30
    end
    object cdsPedidoImp_TipoNOME_PERFIL: TStringField
      FieldName = 'NOME_PERFIL'
      Size = 100
    end
    object cdsPedidoImp_TipoNOME_VIDRO: TStringField
      FieldName = 'NOME_VIDRO'
      Size = 100
    end
    object cdsPedidoImp_TipoQTD_FUROS: TIntegerField
      FieldName = 'QTD_FUROS'
    end
  end
  object dsPedidoImp_Tipo: TDataSource
    DataSet = cdsPedidoImp_Tipo
    Left = 264
    Top = 551
  end
  object dspPedidoImp_Tipo: TDataSetProvider
    DataSet = sdsPedidoImp_Tipo
    Left = 232
    Top = 551
  end
  object sdsPedidoImp_Ace: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ACE.*, PRO.nome NOME_PRODUTO'#13#10'FROM PEDIDO_ITEM ACE'#13#10'LEFT ' +
      'JOIN PRODUTO PRO'#13#10'ON ACE.ID_PRODUTO = PRO.ID'#13#10'WHERE ACE.ID = :ID' +
      #13#10'   AND ACE.TIPO_ACESSORIO = '#39'T'#39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 216
    Top = 594
  end
  object cdsPedidoImp_Ace: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspPedidoImp_Ace'
    OnNewRecord = cdsPedido_ItensNewRecord
    Left = 248
    Top = 594
    object cdsPedidoImp_AceID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedidoImp_AceITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPedidoImp_AceID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsPedidoImp_AceCOMPRIMENTO_VOLUME: TFloatField
      FieldName = 'COMPRIMENTO_VOLUME'
    end
    object cdsPedidoImp_AceVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsPedidoImp_AceVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsPedidoImp_AceNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsPedidoImp_AceQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedidoImp_AceQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsPedidoImp_AceQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsPedidoImp_AceCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImp_AceUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsPedidoImp_AceREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsPedidoImp_AceNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsPedidoImp_AceTIPO_ACESSORIO: TStringField
      FieldName = 'TIPO_ACESSORIO'
      FixedChar = True
      Size = 1
    end
  end
  object dsPedidoImp_Ace: TDataSource
    DataSet = cdsPedidoImp_Ace
    Left = 264
    Top = 594
  end
  object dspPedidoImp_Ace: TDataSetProvider
    DataSet = sdsPedidoImp_Ace
    Left = 232
    Top = 594
  end
  object sdsPedidoImp_Rol: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ACE.*, PRO.nome NOME_PRODUTO'#13#10'FROM PEDIDO_ITEM ACE'#13#10'LEFT ' +
      'JOIN PRODUTO PRO'#13#10'ON ACE.ID_PRODUTO = PRO.ID'#13#10'WHERE ACE.ID = :ID' +
      #13#10'   AND ACE.TIPO_ACESSORIO = '#39'R'#39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 856
    Top = 277
  end
  object cdsPedidoImp_Rol: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspPedidoImp_Rol'
    OnNewRecord = cdsPedido_ItensNewRecord
    Left = 888
    Top = 277
    object cdsPedidoImp_RolID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedidoImp_RolITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPedidoImp_RolID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsPedidoImp_RolQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedidoImp_RolQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsPedidoImp_RolQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsPedidoImp_RolTIPO_ACESSORIO: TStringField
      FieldName = 'TIPO_ACESSORIO'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoImp_RolCOMPRIMENTO_VOLUME: TFloatField
      FieldName = 'COMPRIMENTO_VOLUME'
    end
    object cdsPedidoImp_RolNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsPedidoImp_RolVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsPedidoImp_RolVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
  end
  object dsPedidoImp_Rol: TDataSource
    DataSet = cdsPedidoImp_Rol
    Left = 904
    Top = 277
  end
  object dspPedidoImp_Rol: TDataSetProvider
    DataSet = sdsPedidoImp_Rol
    Left = 872
    Top = 277
  end
  object frxDBDataset5: TfrxDBDataset
    UserName = 'frxPedidoImp_Tipo'
    CloseDataSource = True
    FieldAliases.Strings = (
      'ID=ID'
      'ITEM=ITEM'
      'COMPRIMENTO=COMPRIMENTO'
      'LARGURA=LARGURA'
      'ALTURA=ALTURA'
      'VLR_KG=VLR_KG'
      'QTD=QTD'
      'VLR_UNITARIO=VLR_UNITARIO'
      'VLR_TOTAL=VLR_TOTAL'
      'DIAMETRO=DIAMETRO'
      'DIAMETRO_EXT=DIAMETRO_EXT'
      'DIAMETRO_INT=DIAMETRO_INT'
      'PAREDE=PAREDE'
      'PESO=PESO'
      'COMPLEMENTO_NOME=COMPLEMENTO_NOME'
      'TIPO_ORCAMENTO=TIPO_ORCAMENTO'
      'DESCRICAO_TIPO=DESCRICAO_TIPO'
      'ID_ACABAMENTO=ID_ACABAMENTO'
      'ID_REDONDO_MOD=ID_REDONDO_MOD'
      'ID_CMOEDA=ID_CMOEDA'
      'ID_FUROS=ID_FUROS'
      'ID_FURACAO=ID_FURACAO'
      'ID_PERFIL=ID_PERFIL'
      'ID_VIDRO=ID_VIDRO'
      'NOME_ACABAMENTO=NOME_ACABAMENTO'
      'NOME_REDONDO_MOD=NOME_REDONDO_MOD'
      'NOME_CMOEDA=NOME_CMOEDA'
      'NOME_FUROS=NOME_FUROS'
      'NOME_FURACAO=NOME_FURACAO'
      'NOME_PERFIL=NOME_PERFIL'
      'NOME_VIDRO=NOME_VIDRO'
      'QTD_FUROS=QTD_FUROS')
    DataSource = dsPedidoImp_Tipo
    BCDToCurrency = False
    Left = 1176
    Top = 293
  end
  object frxDBDataset6: TfrxDBDataset
    UserName = 'frxPedidoImp_Ace'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ITEM=ITEM'
      'ID_PRODUTO=ID_PRODUTO'
      'COMPRIMENTO_VOLUME=COMPRIMENTO_VOLUME'
      'VLR_UNITARIO=VLR_UNITARIO'
      'VLR_TOTAL=VLR_TOTAL'
      'NOME_PRODUTO=NOME_PRODUTO'
      'QTD=QTD'
      'QTD_FATURADO=QTD_FATURADO'
      'QTD_RESTANTE=QTD_RESTANTE')
    DataSource = dsPedidoImp_Ace
    BCDToCurrency = False
    Left = 1151
    Top = 293
  end
  object frxDBDataset7: TfrxDBDataset
    UserName = 'frxPedidoImp_Rol'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ITEM=ITEM'
      'ID_PRODUTO=ID_PRODUTO'
      'QTD=QTD'
      'QTD_FATURADO=QTD_FATURADO'
      'QTD_RESTANTE=QTD_RESTANTE'
      'TIPO_ACESSORIO=TIPO_ACESSORIO'
      'COMPRIMENTO_VOLUME=COMPRIMENTO_VOLUME'
      'NOME_PRODUTO=NOME_PRODUTO'
      'VLR_UNITARIO=VLR_UNITARIO'
      'VLR_TOTAL=VLR_TOTAL')
    DataSource = dsPedidoImp_Rol
    BCDToCurrency = False
    Left = 1288
    Top = 245
  end
  object qProduto_Matriz: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_MATRIZ_PRECO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT PM.vlr_unitario'
      'FROM PRODUTO_MATRIZ PM'
      'WHERE PM.id = :ID'
      '  AND PM.id_matriz_preco = :ID_MATRIZ_PRECO'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 1040
    Top = 586
    object qProduto_MatrizVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
  end
  object sdsCombinacao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.ID ID_PRODUTO, P.NOME, P.PRECO_CUSTO, P.id_cor_combinac' +
      'ao, p.preco_venda, P.OBSMATERIAL'#13#10'FROM PRODUTO_COMB P'#13#10'WHERE P.I' +
      'D = :ID'#13#10'  AND P.INATIVO = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 856
    Top = 108
  end
  object dspCombinacao: TDataSetProvider
    DataSet = sdsCombinacao
    Left = 872
    Top = 108
  end
  object cdsCombinacao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCombinacao'
    Left = 888
    Top = 108
    object cdsCombinacaoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cdsCombinacaoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsCombinacaoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsCombinacaoID_COR_COMBINACAO: TIntegerField
      FieldName = 'ID_COR_COMBINACAO'
    end
    object cdsCombinacaoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object cdsCombinacaoOBSMATERIAL: TStringField
      FieldName = 'OBSMATERIAL'
      Size = 100
    end
  end
  object dsCombinacao: TDataSource
    DataSet = cdsCombinacao
    Left = 904
    Top = 108
  end
  object sdsPedido_Parc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PEDIDO_PARC'#13#10'WHERE ID = :ID'#13#10
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
    Left = 24
    Top = 495
    object sdsPedido_ParcID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedido_ParcITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedido_ParcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object sdsPedido_ParcID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object sdsPedido_ParcID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object sdsPedido_ParcVLR_VENCIMENTO: TFloatField
      FieldName = 'VLR_VENCIMENTO'
    end
  end
  object cdsPedido_Parc: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPedidosdsPedido_Parc
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 40
    Top = 495
    object cdsPedido_ParcID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedido_ParcITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedido_ParcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object cdsPedido_ParcID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsPedido_ParcID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsPedido_ParclkNome_TipoCobranca: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNome_TipoCobranca'
      LookupDataSet = cdsTipoCobranca
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'ID_TIPOCOBRANCA'
      Size = 40
      Lookup = True
    end
    object cdsPedido_ParclkNome_Conta: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNome_Conta'
      LookupDataSet = cdsContas
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'ID_CONTA'
      Size = 40
      Lookup = True
    end
    object cdsPedido_ParcVLR_VENCIMENTO: TFloatField
      FieldName = 'VLR_VENCIMENTO'
      DisplayFormat = '0.00'
    end
    object cdsPedido_ParclkDeposito: TStringField
      FieldKind = fkLookup
      FieldName = 'lkDeposito'
      LookupDataSet = cdsTipoCobranca
      LookupKeyFields = 'ID'
      LookupResultField = 'DEPOSITO'
      KeyFields = 'ID_TIPOCOBRANCA'
      Size = 1
      Lookup = True
    end
    object cdsPedido_ParclkGerarBoleto: TStringField
      FieldKind = fkLookup
      FieldName = 'lkGerarBoleto'
      LookupDataSet = cdsTipoCobranca
      LookupKeyFields = 'ID'
      LookupResultField = 'GERARBOLETO'
      KeyFields = 'ID_TIPOCOBRANCA'
      Size = 1
      Lookup = True
    end
  end
  object dsPedido_Parc: TDataSource
    DataSet = cdsPedido_Parc
    Left = 56
    Top = 495
  end
  object cdsCondPgto_Dia: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCondPgtosdsCondPgto_Dia
    Params = <>
    Left = 556
    Top = 498
    object cdsCondPgto_DiaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCondPgto_DiaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsCondPgto_DiaQTDDIAS: TIntegerField
      FieldName = 'QTDDIAS'
    end
  end
  object sdsCondPgto_Dia: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CONDPGTO_DIA'#13#10'WHERE ID = :ID'#13#10
    DataSource = dsCondPgto_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 532
    Top = 498
    object sdsCondPgto_DiaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCondPgto_DiaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsCondPgto_DiaQTDDIAS: TIntegerField
      FieldName = 'QTDDIAS'
    end
  end
  object dsCondPgto_Mestre: TDataSource
    DataSet = sdsCondPgto
    Left = 596
    Top = 499
  end
  object sdsCondPgto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CONDPGTO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 531
    Top = 456
    object sdsCondPgtoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCondPgtoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object sdsCondPgtoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsCondPgtoENTRADA: TStringField
      FieldName = 'ENTRADA'
      FixedChar = True
      Size = 1
    end
    object sdsCondPgtoTIPO_CONDICAO: TStringField
      FieldName = 'TIPO_CONDICAO'
      FixedChar = True
      Size = 1
    end
    object sdsCondPgtoQTD_PARCELA: TIntegerField
      FieldName = 'QTD_PARCELA'
    end
  end
  object dspCondPgto: TDataSetProvider
    DataSet = sdsCondPgto
    Left = 555
    Top = 456
  end
  object cdsCondPgto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCondPgto'
    Left = 579
    Top = 456
    object cdsCondPgtoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCondPgtoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsCondPgtoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsCondPgtoENTRADA: TStringField
      FieldName = 'ENTRADA'
      FixedChar = True
      Size = 1
    end
    object cdsCondPgtoTIPO_CONDICAO: TStringField
      FieldName = 'TIPO_CONDICAO'
      FixedChar = True
      Size = 1
    end
    object cdsCondPgtoQTD_PARCELA: TIntegerField
      FieldName = 'QTD_PARCELA'
    end
    object cdsCondPgtosdsCondPgto_Dia: TDataSetField
      FieldName = 'sdsCondPgto_Dia'
    end
  end
  object dsCondPgto: TDataSource
    DataSet = cdsCondPgto
    Left = 603
    Top = 456
  end
  object sdsDuplicata: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM DUPLICATA'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 529
    Top = 546
    object sdsDuplicataID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsDuplicataTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      Size = 1
    end
    object sdsDuplicataFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsDuplicataID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object sdsDuplicataPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object sdsDuplicataNUMDUPLICATA: TStringField
      FieldName = 'NUMDUPLICATA'
    end
    object sdsDuplicataNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object sdsDuplicataSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object sdsDuplicataDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object sdsDuplicataVLR_PARCELA: TFloatField
      FieldName = 'VLR_PARCELA'
    end
    object sdsDuplicataVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
    end
    object sdsDuplicataVLR_PAGO: TFloatField
      FieldName = 'VLR_PAGO'
    end
    object sdsDuplicataVLR_DEVOLUCAO: TFloatField
      FieldName = 'VLR_DEVOLUCAO'
    end
    object sdsDuplicataVLR_DESPESAS: TFloatField
      FieldName = 'VLR_DESPESAS'
    end
    object sdsDuplicataVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object sdsDuplicataVLR_JUROSPAGOS: TFloatField
      FieldName = 'VLR_JUROSPAGOS'
    end
    object sdsDuplicataVLR_COMISSAO: TFloatField
      FieldName = 'VLR_COMISSAO'
    end
    object sdsDuplicataPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsDuplicataDTULTPAGAMENTO: TDateField
      FieldName = 'DTULTPAGAMENTO'
    end
    object sdsDuplicataID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object sdsDuplicataID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object sdsDuplicataID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object sdsDuplicataID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsDuplicataID_CONTA_BOLETO: TIntegerField
      FieldName = 'ID_CONTA_BOLETO'
    end
    object sdsDuplicataID_COMISSAO: TIntegerField
      FieldName = 'ID_COMISSAO'
    end
    object sdsDuplicataQTD_DIASATRASO: TIntegerField
      FieldName = 'QTD_DIASATRASO'
    end
    object sdsDuplicataDTRECEBIMENTO_TITULO: TDateField
      FieldName = 'DTRECEBIMENTO_TITULO'
    end
    object sdsDuplicataDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsDuplicataPAGO_CARTORIO: TStringField
      FieldName = 'PAGO_CARTORIO'
      FixedChar = True
      Size = 1
    end
    object sdsDuplicataPROTESTADO: TStringField
      FieldName = 'PROTESTADO'
      FixedChar = True
      Size = 1
    end
    object sdsDuplicataTIPO_LANCAMENTO: TStringField
      FieldName = 'TIPO_LANCAMENTO'
      Size = 3
    end
    object sdsDuplicataTRANSFERENCIA_ICMS: TStringField
      FieldName = 'TRANSFERENCIA_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsDuplicataNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
    end
    object sdsDuplicataDTFINANCEIRO: TDateField
      FieldName = 'DTFINANCEIRO'
    end
    object sdsDuplicataNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
    object sdsDuplicataACEITE: TStringField
      FieldName = 'ACEITE'
      FixedChar = True
      Size = 1
    end
    object sdsDuplicataARQUIVO_GERADO: TStringField
      FieldName = 'ARQUIVO_GERADO'
      FixedChar = True
      Size = 1
    end
    object sdsDuplicataID_COB_ELETRONICA: TIntegerField
      FieldName = 'ID_COB_ELETRONICA'
    end
    object sdsDuplicataBOLETO_IMP: TStringField
      FieldName = 'BOLETO_IMP'
      FixedChar = True
      Size = 1
    end
    object sdsDuplicataID_CARTEIRA: TIntegerField
      FieldName = 'ID_CARTEIRA'
    end
    object sdsDuplicataID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object sdsDuplicataID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object sdsDuplicataTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      FixedChar = True
      Size = 1
    end
    object sdsDuplicataID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object sdsDuplicataTITULO_CARTORIO: TStringField
      FieldName = 'TITULO_CARTORIO'
      FixedChar = True
      Size = 1
    end
    object sdsDuplicataPERC_BASE_COMISSAO: TFloatField
      FieldName = 'PERC_BASE_COMISSAO'
    end
    object sdsDuplicataID_TERMINAL: TIntegerField
      FieldName = 'ID_TERMINAL'
    end
    object sdsDuplicataVLR_MULTA: TFloatField
      FieldName = 'VLR_MULTA'
    end
    object sdsDuplicataNGR: TStringField
      FieldName = 'NGR'
      FixedChar = True
      Size = 1
    end
    object sdsDuplicataAPROVADO: TStringField
      FieldName = 'APROVADO'
      FixedChar = True
      Size = 1
    end
  end
  object dspDuplicata: TDataSetProvider
    DataSet = sdsDuplicata
    Left = 553
    Top = 546
  end
  object cdsDuplicata: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspDuplicata'
    OnNewRecord = cdsDuplicataNewRecord
    Left = 577
    Top = 546
    object cdsDuplicataID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsDuplicataTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      Size = 1
    end
    object cdsDuplicataFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsDuplicataID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object cdsDuplicataPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object cdsDuplicataNUMDUPLICATA: TStringField
      FieldName = 'NUMDUPLICATA'
    end
    object cdsDuplicataNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsDuplicataSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsDuplicataDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object cdsDuplicataVLR_PARCELA: TFloatField
      FieldName = 'VLR_PARCELA'
      DisplayFormat = '0.00'
    end
    object cdsDuplicataVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
      DisplayFormat = '0.00'
    end
    object cdsDuplicataVLR_PAGO: TFloatField
      FieldName = 'VLR_PAGO'
      DisplayFormat = '0.00'
    end
    object cdsDuplicataVLR_DEVOLUCAO: TFloatField
      FieldName = 'VLR_DEVOLUCAO'
      DisplayFormat = '0.00'
    end
    object cdsDuplicataVLR_DESPESAS: TFloatField
      FieldName = 'VLR_DESPESAS'
      DisplayFormat = '0.00'
    end
    object cdsDuplicataVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsDuplicataVLR_JUROSPAGOS: TFloatField
      FieldName = 'VLR_JUROSPAGOS'
      DisplayFormat = '0.00'
    end
    object cdsDuplicataVLR_COMISSAO: TFloatField
      FieldName = 'VLR_COMISSAO'
      DisplayFormat = '0.00'
    end
    object cdsDuplicataPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsDuplicataDTULTPAGAMENTO: TDateField
      FieldName = 'DTULTPAGAMENTO'
    end
    object cdsDuplicataID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsDuplicataID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsDuplicataID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsDuplicataID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsDuplicataID_CONTA_BOLETO: TIntegerField
      FieldName = 'ID_CONTA_BOLETO'
    end
    object cdsDuplicataID_COMISSAO: TIntegerField
      FieldName = 'ID_COMISSAO'
    end
    object cdsDuplicataQTD_DIASATRASO: TIntegerField
      FieldName = 'QTD_DIASATRASO'
    end
    object cdsDuplicataDTRECEBIMENTO_TITULO: TDateField
      FieldName = 'DTRECEBIMENTO_TITULO'
    end
    object cdsDuplicataDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsDuplicataPAGO_CARTORIO: TStringField
      FieldName = 'PAGO_CARTORIO'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataPROTESTADO: TStringField
      FieldName = 'PROTESTADO'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataTIPO_LANCAMENTO: TStringField
      FieldName = 'TIPO_LANCAMENTO'
      Size = 3
    end
    object cdsDuplicataTRANSFERENCIA_ICMS: TStringField
      FieldName = 'TRANSFERENCIA_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
    end
    object cdsDuplicataDTFINANCEIRO: TDateField
      FieldName = 'DTFINANCEIRO'
    end
    object cdsDuplicataNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
    object cdsDuplicataACEITE: TStringField
      FieldName = 'ACEITE'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataARQUIVO_GERADO: TStringField
      FieldName = 'ARQUIVO_GERADO'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicatasdsDuplicata_Hist: TDataSetField
      FieldName = 'sdsDuplicata_Hist'
    end
    object cdsDuplicataID_COB_ELETRONICA: TIntegerField
      FieldName = 'ID_COB_ELETRONICA'
    end
    object cdsDuplicataBOLETO_IMP: TStringField
      FieldName = 'BOLETO_IMP'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataID_CARTEIRA: TIntegerField
      FieldName = 'ID_CARTEIRA'
    end
    object cdsDuplicataID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object cdsDuplicataID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsDuplicataTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsDuplicataTITULO_CARTORIO: TStringField
      FieldName = 'TITULO_CARTORIO'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataPERC_BASE_COMISSAO: TFloatField
      FieldName = 'PERC_BASE_COMISSAO'
    end
    object cdsDuplicataID_TERMINAL: TIntegerField
      FieldName = 'ID_TERMINAL'
    end
    object cdsDuplicataVLR_MULTA: TFloatField
      FieldName = 'VLR_MULTA'
    end
    object cdsDuplicataNGR: TStringField
      FieldName = 'NGR'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataAPROVADO: TStringField
      FieldName = 'APROVADO'
      FixedChar = True
      Size = 1
    end
  end
  object dsDuplicata_Mestre: TDataSource
    DataSet = sdsDuplicata
    Left = 609
    Top = 546
  end
  object sdsDuplicata_Hist: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM DUPLICATA_HIST'#13#10'WHERE ID = :ID'#13#10
    DataSource = dsDuplicata_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 857
    Top = 451
    object sdsDuplicata_HistID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsDuplicata_HistITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsDuplicata_HistID_HISTORICO: TIntegerField
      FieldName = 'ID_HISTORICO'
    end
    object sdsDuplicata_HistCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 250
    end
    object sdsDuplicata_HistVLR_PAGAMENTO: TFloatField
      FieldName = 'VLR_PAGAMENTO'
    end
    object sdsDuplicata_HistVLR_JUROSPAGOS: TFloatField
      FieldName = 'VLR_JUROSPAGOS'
    end
    object sdsDuplicata_HistVLR_DESCONTOS: TFloatField
      FieldName = 'VLR_DESCONTOS'
    end
    object sdsDuplicata_HistVLR_DESPESAS: TFloatField
      FieldName = 'VLR_DESPESAS'
    end
    object sdsDuplicata_HistVLR_DEVOLUCAO: TFloatField
      FieldName = 'VLR_DEVOLUCAO'
    end
    object sdsDuplicata_HistVLR_JUROSCALCULADO: TFloatField
      FieldName = 'VLR_JUROSCALCULADO'
    end
    object sdsDuplicata_HistNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
    object sdsDuplicata_HistDTPREVISAO_CHEQUE: TDateField
      FieldName = 'DTPREVISAO_CHEQUE'
    end
    object sdsDuplicata_HistID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object sdsDuplicata_HistID_COMISSAO: TIntegerField
      FieldName = 'ID_COMISSAO'
    end
    object sdsDuplicata_HistTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      Size = 1
    end
    object sdsDuplicata_HistTIPO_HISTORICO: TStringField
      FieldName = 'TIPO_HISTORICO'
      Size = 3
    end
    object sdsDuplicata_HistDTHISTORICO: TDateField
      FieldName = 'DTHISTORICO'
    end
    object sdsDuplicata_HistDTLANCAMENTO: TDateField
      FieldName = 'DTLANCAMENTO'
    end
    object sdsDuplicata_HistVLR_LANCAMENTO: TFloatField
      FieldName = 'VLR_LANCAMENTO'
    end
    object sdsDuplicata_HistID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object sdsDuplicata_HistVLR_MULTA: TFloatField
      FieldName = 'VLR_MULTA'
    end
  end
  object cdsDuplicata_Hist: TClientDataSet
    Aggregates = <>
    DataSetField = cdsDuplicatasdsDuplicata_Hist
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 889
    Top = 451
    object cdsDuplicata_HistID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsDuplicata_HistITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsDuplicata_HistID_HISTORICO: TIntegerField
      FieldName = 'ID_HISTORICO'
    end
    object cdsDuplicata_HistCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 250
    end
    object cdsDuplicata_HistVLR_PAGAMENTO: TFloatField
      FieldName = 'VLR_PAGAMENTO'
      DisplayFormat = '0.00'
    end
    object cdsDuplicata_HistVLR_JUROSPAGOS: TFloatField
      FieldName = 'VLR_JUROSPAGOS'
      DisplayFormat = '0.00'
    end
    object cdsDuplicata_HistVLR_DESCONTOS: TFloatField
      FieldName = 'VLR_DESCONTOS'
      DisplayFormat = '0.00'
    end
    object cdsDuplicata_HistVLR_DESPESAS: TFloatField
      FieldName = 'VLR_DESPESAS'
      DisplayFormat = '0.00'
    end
    object cdsDuplicata_HistVLR_DEVOLUCAO: TFloatField
      FieldName = 'VLR_DEVOLUCAO'
      DisplayFormat = '0.00'
    end
    object cdsDuplicata_HistVLR_JUROSCALCULADO: TFloatField
      FieldName = 'VLR_JUROSCALCULADO'
      DisplayFormat = '0.00'
    end
    object cdsDuplicata_HistNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
    object cdsDuplicata_HistDTPREVISAO_CHEQUE: TDateField
      FieldName = 'DTPREVISAO_CHEQUE'
    end
    object cdsDuplicata_HistID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsDuplicata_HistID_COMISSAO: TIntegerField
      FieldName = 'ID_COMISSAO'
    end
    object cdsDuplicata_HistTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      Size = 1
    end
    object cdsDuplicata_HistTIPO_HISTORICO: TStringField
      FieldName = 'TIPO_HISTORICO'
      Size = 3
    end
    object cdsDuplicata_HistDTHISTORICO: TDateField
      FieldName = 'DTHISTORICO'
    end
    object cdsDuplicata_HistDTLANCAMENTO: TDateField
      FieldName = 'DTLANCAMENTO'
    end
    object cdsDuplicata_HistVLR_LANCAMENTO: TFloatField
      FieldName = 'VLR_LANCAMENTO'
    end
    object cdsDuplicata_HistID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object cdsDuplicata_HistVLR_MULTA: TFloatField
      FieldName = 'VLR_MULTA'
    end
  end
  object sdsOrcamento_Ace: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PEDIDO_ITEM'#13#10'WHERE ID = :ID'#13#10'   AND TIPO_ACESSORI' +
      'O = '#39'T'#39#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 216
    Top = 286
  end
  object dspOrcamento_Ace: TDataSetProvider
    DataSet = sdsOrcamento_Ace
    OnUpdateError = dspPedidoUpdateError
    Left = 232
    Top = 286
  end
  object cdsOrcamento_Ace: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrcamento_Ace'
    Left = 250
    Top = 287
    object cdsOrcamento_AceID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOrcamento_AceITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsOrcamento_AceID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsOrcamento_AceCOMPRIMENTO_VOLUME: TFloatField
      FieldName = 'COMPRIMENTO_VOLUME'
    end
    object cdsOrcamento_AceVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsOrcamento_AceVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsOrcamento_AceTIPO_ACESSORIO: TStringField
      FieldName = 'TIPO_ACESSORIO'
      FixedChar = True
      Size = 1
    end
    object cdsOrcamento_AceQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsOrcamento_AceQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsOrcamento_AceQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsOrcamento_AceUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsOrcamento_AceID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsOrcamento_AceNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsOrcamento_AceREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
  end
  object dsOrcamento_Ace: TDataSource
    DataSet = cdsOrcamento_Ace
    Left = 264
    Top = 286
  end
  object sdsOrcamento_Rol: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PEDIDO_ITEM'#13#10'WHERE ID = :ID'#13#10'   AND TIPO_ACESSORI' +
      'O = '#39'R'#39#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 216
    Top = 329
  end
  object dspOrcamento_Rol: TDataSetProvider
    DataSet = sdsOrcamento_Rol
    OnUpdateError = dspPedidoUpdateError
    Left = 232
    Top = 329
  end
  object cdsOrcamento_Rol: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrcamento_Rol'
    Left = 250
    Top = 330
    object cdsOrcamento_RolID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOrcamento_RolITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsOrcamento_RolID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsOrcamento_RolCOMPRIMENTO_VOLUME: TFloatField
      FieldName = 'COMPRIMENTO_VOLUME'
    end
    object cdsOrcamento_RolVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsOrcamento_RolVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsOrcamento_RolQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsOrcamento_RolQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsOrcamento_RolQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsOrcamento_RolTIPO_ACESSORIO: TStringField
      FieldName = 'TIPO_ACESSORIO'
      FixedChar = True
      Size = 1
    end
    object cdsOrcamento_RolUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsOrcamento_RolID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsOrcamento_RolREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsOrcamento_RolNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
  end
  object dsOrcamento_Rol: TDataSource
    DataSet = cdsOrcamento_Rol
    Left = 264
    Top = 329
  end
  object frxDBDataset8: TfrxDBDataset
    UserName = 'frxPedidoImp_Tam'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ITEM=ITEM'
      'TAMANHO=TAMANHO'
      'QTD=QTD'
      'QTD_FATURADO=QTD_FATURADO'
      'QTD_RESTANTE=QTD_RESTANTE'
      'QTD_CANCELADO=QTD_CANCELADO')
    DataSource = dsPedidoImp_Tam
    BCDToCurrency = False
    Left = 1264
    Top = 245
  end
  object mEmbalagem: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 1064
    Top = 66
    Data = {
      8F0000009619E0BD0100000018000000050000000000030000008F000B49445F
      4D6174657269616C04000100000000000D4E6F6D655F4D6174657269616C0100
      490000000100055749445448020002003C000E5174645F436170616369646164
      6504000100000000000B5174645F436F6E73756D6F04000100000000000B5174
      645F50726F6475746F08000400000000000000}
    object mEmbalagemID_Material: TIntegerField
      FieldName = 'ID_Material'
    end
    object mEmbalagemNome_Material: TStringField
      FieldName = 'Nome_Material'
      Size = 60
    end
    object mEmbalagemQtd_Capacidade: TIntegerField
      FieldName = 'Qtd_Capacidade'
    end
    object mEmbalagemQtd_Consumo: TIntegerField
      FieldName = 'Qtd_Consumo'
    end
    object mEmbalagemQtd_Produto: TFloatField
      FieldName = 'Qtd_Produto'
    end
  end
  object dsmEmbalegem: TDataSource
    DataSet = mEmbalagem
    Left = 1080
    Top = 66
  end
  object qPedido_Emb: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT EMB.id_material ID_EMBALAGEM, EMB.qtd_emb QTD_CAPACIDADE,' +
        ' SUM(IT.QTD) QTD_PEDIDO'
      'FROM PEDIDO_ITEM IT'
      'INNER JOIN produto_emb EMB'
      'ON IT.id_produto = EMB.ID'
      'WHERE IT.ID = :ID'
      'GROUP BY EMB.id_material, EMB.qtd_emb')
    SQLConnection = dmDatabase.scoDados
    Left = 1016
    Top = 587
    object qPedido_EmbID_EMBALAGEM: TIntegerField
      FieldName = 'ID_EMBALAGEM'
    end
    object qPedido_EmbQTD_CAPACIDADE: TFloatField
      FieldName = 'QTD_CAPACIDADE'
    end
    object qPedido_EmbQTD_PEDIDO: TFloatField
      FieldName = 'QTD_PEDIDO'
    end
  end
  object frxDBDataset9: TfrxDBDataset
    UserName = 'frxmEmbalagem'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_Material=ID_Material'
      'Nome_Material=Nome_Material'
      'Qtd_Capacidade=Qtd_Capacidade'
      'Qtd_Consumo=Qtd_Consumo'
      'Qtd_Produto=Qtd_Produto')
    DataSource = dsmEmbalegem
    BCDToCurrency = False
    Left = 1233
    Top = 246
  end
  object mCarimbo: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Carimbo'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Referencia'
        DataType = ftWideString
        Size = 500
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    OnNewRecord = mCarimboNewRecord
    Left = 1064
    Top = 110
    Data = {
      550000009619E0BD010000001800000002000000000003000000550007436172
      696D626F0100490000000100055749445448020002001E000A5265666572656E
      63696102004A000000010005574944544802000200E8030000}
    object mCarimboCarimbo: TStringField
      FieldName = 'Carimbo'
      Size = 30
    end
    object mCarimboReferencia: TWideStringField
      FieldName = 'Referencia'
      Size = 500
    end
  end
  object dsmCarimbo: TDataSource
    DataSet = mCarimbo
    Left = 1080
    Top = 110
  end
  object frxDBDataset10: TfrxDBDataset
    UserName = 'frxmCarimbo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Carimbo=Carimbo'
      'Referencia=Referencia')
    DataSource = dsmCarimbo
    BCDToCurrency = False
    Left = 1208
    Top = 247
  end
  object sdsPedidoImp_Carimbo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT DISTINCT IT.CARIMBO'#13#10'FROM PEDIDO_ITEM IT'#13#10'WHERE ID = :ID'#13 +
      #10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 24
    Top = 455
  end
  object dspPedidoImp_Carimbo: TDataSetProvider
    DataSet = sdsPedidoImp_Carimbo
    Left = 40
    Top = 455
  end
  object cdsPedidoImp_Carimbo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedidoImp_Carimbo'
    Left = 56
    Top = 455
    object cdsPedidoImp_CarimboCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
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
      'Pedido_Cliente=Pedido_Cliente'
      'Fantasia_Cli=Fantasia_Cli'
      'DtEmissao=DtEmissao'
      'Prod_Cliente=Prod_Cliente'
      'NumOS=NumOS'
      'Encerado=Encerado'
      'Item_Ped=Item_Ped'
      'Unidade=Unidade'
      'Qtd=Qtd'
      'Unidade_Prod=Unidade_Prod'
      'Qtd2=Qtd2'
      'Nome_Cor=Nome_Cor'
      'Medida=Medida')
    DataSource = dsmEtiqueta_Nav
    BCDToCurrency = False
    Left = 1182
    Top = 246
  end
  object qFilial_Rel: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
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
      'SELECT *'
      'FROM FILIAL_RELATORIOS'
      'WHERE ID = :ID'
      '      AND TIPO = :TIPO'
      '      AND POSICAO = :POSICAO')
    SQLConnection = dmDatabase.scoDados
    Left = 992
    Top = 587
    object qFilial_RelID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qFilial_RelITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qFilial_RelTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object qFilial_RelCAMINHO: TStringField
      FieldName = 'CAMINHO'
      Size = 150
    end
    object qFilial_RelPOSICAO: TSmallintField
      FieldName = 'POSICAO'
    end
  end
  object frxDBDataset12: TfrxDBDataset
    UserName = 'frxmRotulos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'Qtd=Qtd'
      'Nome_Cliente=Nome_Cliente'
      'Endereco=Endereco'
      'Num_Endereco=Num_Endereco'
      'Bairro=Bairro'
      'Cep=Cep'
      'Complemento_End=Complemento_End'
      'Cidade=Cidade'
      'UF=UF'
      'Nome_Filial=Nome_Filial'
      'Nome_Filial_Interno=Nome_Filial_Interno'
      'Endereco_Filial=Endereco_Filial'
      'Num_Filial=Num_Filial'
      'Bairro_Filial=Bairro_Filial'
      'Cidade_Filial=Cidade_Filial'
      'UF_Filial=UF_Filial'
      'Pedido_Cliente=Pedido_Cliente'
      'Num_Pedido=Num_Pedido'
      'ID_Transportadora=ID_Transportadora'
      'Nome_Transportadora=Nome_Transportadora'
      'Num_Volume=Num_Volume'
      'Total_Volume=Total_Volume')
    DataSource = dsmRotulos
    BCDToCurrency = False
    Left = 1153
    Top = 247
  end
  object frxDBDataset13: TfrxDBDataset
    UserName = 'frxmRotulos_Prod'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_Produto=ID_Produto'
      'ID_Combinacao=ID_Combinacao'
      'Referencia=Referencia'
      'Nome_Produto=Nome_Produto'
      'Qtd=Qtd'
      'Nome_Combiancao=Nome_Combiancao'
      'Tam1=Tam1'
      'Qtd_Tam1=Qtd_Tam1'
      'Tam2=Tam2'
      'Tam3=Tam3'
      'Tam4=Tam4'
      'Tam5=Tam5'
      'Tam6=Tam6'
      'Tam7=Tam7'
      'Tam8=Tam8'
      'Tam9=Tam9'
      'Qtd_Tam2=Qtd_Tam2'
      'Qtd_Tam3=Qtd_Tam3'
      'Qtd_Tam4=Qtd_Tam4'
      'Qtd_Tam5=Qtd_Tam5'
      'Qtd_Tam6=Qtd_Tam6'
      'Qtd_Tam7=Qtd_Tam7'
      'Qtd_Tam8=Qtd_Tam8'
      'Qtd_Tam9=Qtd_Tam9'
      'Carimbo=Carimbo'
      'CarimboAux=CarimboAux'
      'Pictograma=Pictograma')
    DataSource = dsmRotulos_Prod
    BCDToCurrency = False
    Left = 1296
    Top = 206
  end
  object frxDBDataset14: TfrxDBDataset
    UserName = 'frxmRotulos_Tam'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_Produto=ID_Produto'
      'ID_Combinacao=ID_Combinacao'
      'Tamanho=Tamanho'
      'Qtd=Qtd')
    DataSource = dsmRotulos_Tam
    BCDToCurrency = False
    Left = 1272
    Top = 206
  end
  object frxDBDataset15: TfrxDBDataset
    UserName = 'frxmItensImp'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Item=Item'
      'ID_Produto=ID_Produto'
      'ID_Combinacao=ID_Combinacao'
      'Nome_Produto=Nome_Produto'
      'Qtd=Qtd'
      'Vlr_Unitario=Vlr_Unitario'
      'Vlr_Total=Vlr_Total'
      'Unidade=Unidade'
      'NumOS=NumOS'
      'DtEntrega=DtEntrega'
      'Vlr_Ipi=Vlr_Ipi'
      'Referencia=Referencia'
      'OBS=OBS'
      'Nome_Combinacao=Nome_Combinacao'
      'Filial=Filial'
      'Item_Original=Item_Original'
      'Foto_End=Foto_End'
      'Carimbo=Carimbo'
      'CarimboAux=CarimboAux'
      'Nome_Material=Nome_Material'
      'Imp_Continua=Imp_Continua'
      'Imp_Cabecalho=Imp_Cabecalho'
      'Item_Imp=Item_Imp'
      'Nome_Material2=Nome_Material2'
      'Cor_Mat1=Cor_Mat1'
      'Cor_Mat2=Cor_Mat2'
      'Nome_Material1=Nome_Material1'
      'Nome_Produto2=Nome_Produto2'
      'ID_Atelier=ID_Atelier'
      'Nome_Atelier=Nome_Atelier'
      'NaoImprimir=NaoImprimir')
    DataSource = dsmItensImp
    BCDToCurrency = False
    Left = 1244
    Top = 204
  end
  object frxDBDataset16: TfrxDBDataset
    UserName = 'frxmItensImp_Tam'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Item=Item'
      'Tamanho=Tamanho'
      'Qtd=Qtd'
      'Qtd_Rotulo=Qtd_Rotulo'
      'Tam_Matriz=Tam_Matriz')
    DataSource = dsmItensImp_Tam
    BCDToCurrency = False
    Left = 1216
    Top = 204
  end
  object sdsPedido_Itens2: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PEDIDO_ITEM'#13#10'WHERE ID = 0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 1189
    Top = 21
    object sdsPedido_Itens2ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPedido_Itens2ITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsPedido_Itens2ID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsPedido_Itens2ID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object sdsPedido_Itens2TAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsPedido_Itens2QTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsPedido_Itens2QTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object sdsPedido_Itens2QTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object sdsPedido_Itens2QTD_CANCELADO: TFloatField
      FieldName = 'QTD_CANCELADO'
    end
    object sdsPedido_Itens2VLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object sdsPedido_Itens2CANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_Itens2DTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object sdsPedido_Itens2FATURADO: TStringField
      FieldName = 'FATURADO'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_Itens2DTFATURADO: TDateField
      FieldName = 'DTFATURADO'
    end
    object sdsPedido_Itens2COD_PRODUTO_CLIENTE: TStringField
      FieldName = 'COD_PRODUTO_CLIENTE'
      Size = 15
    end
    object sdsPedido_Itens2TIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object sdsPedido_Itens2UNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsPedido_Itens2NUMOS: TStringField
      FieldName = 'NUMOS'
      Size = 30
    end
    object sdsPedido_Itens2PERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object sdsPedido_Itens2VLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object sdsPedido_Itens2BASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object sdsPedido_Itens2VLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object sdsPedido_Itens2BASE_ICMSTRANSF: TFloatField
      FieldName = 'BASE_ICMSTRANSF'
    end
    object sdsPedido_Itens2PERC_TRANSF: TFloatField
      FieldName = 'PERC_TRANSF'
    end
    object sdsPedido_Itens2VLR_TRANSF: TFloatField
      FieldName = 'VLR_TRANSF'
    end
    object sdsPedido_Itens2VLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object sdsPedido_Itens2BASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
    end
    object sdsPedido_Itens2VLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
    end
    object sdsPedido_Itens2PERC_ICMSSIMPLES: TFloatField
      FieldName = 'PERC_ICMSSIMPLES'
    end
    object sdsPedido_Itens2BASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
    end
    object sdsPedido_Itens2VLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
    end
    object sdsPedido_Itens2VLR_DESCONTORATEIO: TFloatField
      FieldName = 'VLR_DESCONTORATEIO'
    end
    object sdsPedido_Itens2ID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object sdsPedido_Itens2ID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object sdsPedido_Itens2ID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object sdsPedido_Itens2PERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object sdsPedido_Itens2PERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object sdsPedido_Itens2REFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsPedido_Itens2NOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object sdsPedido_Itens2OBS_COMPLEMENTAR: TStringField
      FieldName = 'OBS_COMPLEMENTAR'
      Size = 250
    end
    object sdsPedido_Itens2CALCULARICMSSOBREIPI: TStringField
      FieldName = 'CALCULARICMSSOBREIPI'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_Itens2VLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsPedido_Itens2ID_CONFIG_CFOP: TIntegerField
      FieldName = 'ID_CONFIG_CFOP'
    end
    object sdsPedido_Itens2VLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsPedido_Itens2QTD_AFATURAR: TFloatField
      FieldName = 'QTD_AFATURAR'
    end
    object sdsPedido_Itens2ID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
    object sdsPedido_Itens2OBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsPedido_Itens2PERC_TRIBICMS: TFloatField
      FieldName = 'PERC_TRIBICMS'
    end
    object sdsPedido_Itens2ID_ATELIER: TIntegerField
      FieldName = 'ID_ATELIER'
    end
    object sdsPedido_Itens2VLR_UNITARIO_ATELIER: TFloatField
      FieldName = 'VLR_UNITARIO_ATELIER'
    end
    object sdsPedido_Itens2VLR_TOTAL_ATELIER: TFloatField
      FieldName = 'VLR_TOTAL_ATELIER'
    end
    object sdsPedido_Itens2DT_ENVIO_ATELIER: TDateField
      FieldName = 'DT_ENVIO_ATELIER'
    end
    object sdsPedido_Itens2DT_RETORNO_ATELIER: TDateField
      FieldName = 'DT_RETORNO_ATELIER'
    end
    object sdsPedido_Itens2VLR_PAGTO_ATELIER: TFloatField
      FieldName = 'VLR_PAGTO_ATELIER'
    end
    object sdsPedido_Itens2DT_PAGTO_ATELIER: TDateField
      FieldName = 'DT_PAGTO_ATELIER'
    end
    object sdsPedido_Itens2APROVADO_ORC: TStringField
      FieldName = 'APROVADO_ORC'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_Itens2MOTIVO_NAO_APROV: TMemoField
      FieldName = 'MOTIVO_NAO_APROV'
      BlobType = ftMemo
      Size = 1
    end
    object sdsPedido_Itens2DTAPROVADO_NAO: TDateField
      FieldName = 'DTAPROVADO_NAO'
    end
    object sdsPedido_Itens2ID_ORCAMENTO: TIntegerField
      FieldName = 'ID_ORCAMENTO'
    end
    object sdsPedido_Itens2ITEM_ORCAMENTO: TIntegerField
      FieldName = 'ITEM_ORCAMENTO'
    end
    object sdsPedido_Itens2QTD_LIBERADA: TFloatField
      FieldName = 'QTD_LIBERADA'
    end
    object sdsPedido_Itens2QTD_PRODUZIDA: TFloatField
      FieldName = 'QTD_PRODUZIDA'
    end
    object sdsPedido_Itens2NUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object sdsPedido_Itens2NUM_TALAO: TStringField
      FieldName = 'NUM_TALAO'
      Size = 15
    end
    object sdsPedido_Itens2GERAR_LOTE: TStringField
      FieldName = 'GERAR_LOTE'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_Itens2CARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object sdsPedido_Itens2DTPRODUCAO: TDateField
      FieldName = 'DTPRODUCAO'
    end
    object sdsPedido_Itens2ID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object sdsPedido_Itens2TIPO_ORCAMENTO: TStringField
      FieldName = 'TIPO_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_Itens2END_FOTO: TStringField
      FieldName = 'END_FOTO'
      Size = 200
    end
    object sdsPedido_Itens2ITEM_CLIENTE: TIntegerField
      FieldName = 'ITEM_CLIENTE'
    end
    object sdsPedido_Itens2QTD_PECA: TIntegerField
      FieldName = 'QTD_PECA'
    end
    object sdsPedido_Itens2GRAVACAO_COM_ERRO: TStringField
      FieldName = 'GRAVACAO_COM_ERRO'
      Size = 3
    end
    object sdsPedido_Itens2QTD_FUT: TFloatField
      FieldName = 'QTD_FUT'
    end
    object sdsPedido_Itens2ITEM_COMBINACAO: TIntegerField
      FieldName = 'ITEM_COMBINACAO'
    end
    object sdsPedido_Itens2TIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_Itens2ID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object sdsPedido_Itens2GERAR_ESTOQUE: TStringField
      FieldName = 'GERAR_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object sdsPedido_Itens2ITEM_ORIGINAL: TIntegerField
      FieldName = 'ITEM_ORIGINAL'
    end
    object sdsPedido_Itens2PERC_DIFERIMENTO: TFloatField
      FieldName = 'PERC_DIFERIMENTO'
    end
    object sdsPedido_Itens2VLR_ICMSDIFERIDO: TFloatField
      FieldName = 'VLR_ICMSDIFERIDO'
    end
  end
  object sdsPrc_Atualiza_DtCompra: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'PRC_ATUALIZA_DTCOMPRA'
    CommandType = ctStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'C_ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 1218
    Top = 20
  end
  object sdsLocal_Estoque: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM LOCAL_ESTOQUE'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 856
    Top = 194
  end
  object dspLocal_Estoque: TDataSetProvider
    DataSet = sdsLocal_Estoque
    Left = 875
    Top = 194
  end
  object cdsLocal_Estoque: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspLocal_Estoque'
    Left = 891
    Top = 194
    object cdsLocal_EstoqueID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsLocal_EstoqueCOD_LOCAL: TIntegerField
      FieldName = 'COD_LOCAL'
    end
    object cdsLocal_EstoqueNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsLocal_EstoqueENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsLocal_EstoqueNUM_ENDERECO: TStringField
      FieldName = 'NUM_ENDERECO'
      Size = 15
    end
    object cdsLocal_EstoqueID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsLocal_EstoqueUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsLocal_EstoqueBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsLocal_EstoqueCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsLocal_EstoquePRINCIPAL: TStringField
      FieldName = 'PRINCIPAL'
      FixedChar = True
      Size = 1
    end
    object cdsLocal_EstoqueINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dsLocal_Estoque: TDataSource
    DataSet = cdsLocal_Estoque
    Left = 907
    Top = 194
  end
  object qParametros_Usuario: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'USUARIO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_USUARIO'
      'WHERE USUARIO = :USUARIO')
    SQLConnection = dmDatabase.scoDados
    Left = 1136
    Top = 536
    object qParametros_UsuarioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_UsuarioUSUARIO: TStringField
      FieldName = 'USUARIO'
      Required = True
      Size = 30
    end
    object qParametros_UsuarioTIPO_REG_PRODUTO_PADRAO: TStringField
      FieldName = 'TIPO_REG_PRODUTO_PADRAO'
      FixedChar = True
      Size = 1
    end
    object qParametros_UsuarioTIPO_CONSULTA_PRODUTO_PADRAO: TStringField
      FieldName = 'TIPO_CONSULTA_PRODUTO_PADRAO'
      FixedChar = True
      Size = 1
    end
    object qParametros_UsuarioMOSTRAR_CODIGO_PROD_ANT: TStringField
      FieldName = 'MOSTRAR_CODIGO_PROD_ANT'
      FixedChar = True
      Size = 1
    end
    object qParametros_UsuarioMOSTRAR_TOTAL_PEDIDO: TStringField
      FieldName = 'MOSTRAR_TOTAL_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object qParametros_UsuarioSENHA_PEDIDO: TStringField
      FieldName = 'SENHA_PEDIDO'
      Size = 10
    end
    object qParametros_UsuarioSENHA_CREDITO: TStringField
      FieldName = 'SENHA_CREDITO'
      Size = 15
    end
    object qParametros_UsuarioMOSTRAR_PED_USUARIO: TStringField
      FieldName = 'MOSTRAR_PED_USUARIO'
      FixedChar = True
      Size = 1
    end
    object qParametros_UsuarioALT_PRECO_PED: TStringField
      FieldName = 'ALT_PRECO_PED'
      FixedChar = True
      Size = 1
    end
    object qParametros_UsuarioALT_IT_PED_COM_OP: TStringField
      FieldName = 'ALT_IT_PED_COM_OP'
      FixedChar = True
      Size = 1
    end
    object qParametros_UsuarioALT_FINANCEIRO_CONF: TStringField
      FieldName = 'ALT_FINANCEIRO_CONF'
      FixedChar = True
      Size = 1
    end
    object qParametros_UsuarioCONFERE_FINANC: TStringField
      FieldName = 'CONFERE_FINANC'
      FixedChar = True
      Size = 1
    end
    object qParametros_UsuarioALT_PROD_CLIENTE: TStringField
      FieldName = 'ALT_PROD_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object qParametros_UsuarioPERMITE_CANC_PED_OP: TStringField
      FieldName = 'PERMITE_CANC_PED_OP'
      FixedChar = True
      Size = 1
    end
  end
  object qParametros_Ped: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_PED'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 1111
    Top = 536
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
    object qParametros_PedIMP_REF_COD_PEDIDO: TStringField
      FieldName = 'IMP_REF_COD_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSA_NUM_PEDIDO_POR_FILIAL: TStringField
      FieldName = 'USA_NUM_PEDIDO_POR_FILIAL'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedID_CONDPGTO_PRIMEIRO_PED: TIntegerField
      FieldName = 'ID_CONDPGTO_PRIMEIRO_PED'
    end
    object qParametros_PedUSA_PROCESSO: TStringField
      FieldName = 'USA_PROCESSO'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedCONTROLAR_ROT_IMPRESSO: TStringField
      FieldName = 'CONTROLAR_ROT_IMPRESSO'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedEXIGIR_NUM_PED_CLIENTE: TStringField
      FieldName = 'EXIGIR_NUM_PED_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedCONTROLAR_VLR_ENTRADA: TStringField
      FieldName = 'CONTROLAR_VLR_ENTRADA'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedMOSTRAR_TERCEIRO: TStringField
      FieldName = 'MOSTRAR_TERCEIRO'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedIMP_IPI_DEPOIS_VLR: TStringField
      FieldName = 'IMP_IPI_DEPOIS_VLR'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedCONS_PREENCHER_DTINI: TStringField
      FieldName = 'CONS_PREENCHER_DTINI'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSA_CONFERENCIA: TStringField
      FieldName = 'USA_CONFERENCIA'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedOPCAO_CONSULTA: TStringField
      FieldName = 'OPCAO_CONSULTA'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSA_DESC_VAREJO: TStringField
      FieldName = 'USA_DESC_VAREJO'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSA_OS_REMESSA: TStringField
      FieldName = 'USA_OS_REMESSA'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedDESABILITAR_OC_PED: TStringField
      FieldName = 'DESABILITAR_OC_PED'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedMOSTRAR_ALT_DT_ENTREGA: TStringField
      FieldName = 'MOSTRAR_ALT_DT_ENTREGA'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSAR_VEND_USUARIO: TStringField
      FieldName = 'USAR_VEND_USUARIO'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedINF_CONSUMIDOR_AUT: TStringField
      FieldName = 'INF_CONSUMIDOR_AUT'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedCONFERENCIA_SIMPLES: TStringField
      FieldName = 'CONFERENCIA_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSA_OPERACAO_SERV: TStringField
      FieldName = 'USA_OPERACAO_SERV'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedINF_LUCRATIVIDADE: TStringField
      FieldName = 'INF_LUCRATIVIDADE'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSA_NUM_TALAO: TStringField
      FieldName = 'USA_NUM_TALAO'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSA_COD_CLIENTE: TStringField
      FieldName = 'USA_COD_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSA_EMAIL_NO_PED: TStringField
      FieldName = 'USA_EMAIL_NO_PED'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedMOSTRAR_DT_REC: TStringField
      FieldName = 'MOSTRAR_DT_REC'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSAR_COPIA_OS: TStringField
      FieldName = 'USAR_COPIA_OS'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedENVIA_SMS: TStringField
      FieldName = 'ENVIA_SMS'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSA_UNIDADE_VENDA: TStringField
      FieldName = 'USA_UNIDADE_VENDA'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedMOSTRAR_FONE: TStringField
      FieldName = 'MOSTRAR_FONE'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedMOSTRAR_GRUPO_PESSOA: TStringField
      FieldName = 'MOSTRAR_GRUPO_PESSOA'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSA_OBS_ETIQUETA: TStringField
      FieldName = 'USA_OBS_ETIQUETA'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedPEDIDO_LOJA: TStringField
      FieldName = 'PEDIDO_LOJA'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSA_FINANCEIRO_CONF: TStringField
      FieldName = 'USA_FINANCEIRO_CONF'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSA_RETIRADA: TStringField
      FieldName = 'USA_RETIRADA'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSA_OPERACAO_AUT: TStringField
      FieldName = 'USA_OPERACAO_AUT'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSA_ITEM_RED: TStringField
      FieldName = 'USA_ITEM_RED'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedPERMITE_ALT_NOMEPROD: TStringField
      FieldName = 'PERMITE_ALT_NOMEPROD'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedACEITA_SEM_PRECO: TStringField
      FieldName = 'ACEITA_SEM_PRECO'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedIMP_ORDEM_ITEM_PED: TStringField
      FieldName = 'IMP_ORDEM_ITEM_PED'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedOBRIGA_USO_DTENTREGA: TStringField
      FieldName = 'OBRIGA_USO_DTENTREGA'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSA_DTVALIDADE: TStringField
      FieldName = 'USA_DTVALIDADE'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedOBS_PEDIDO: TMemoField
      FieldName = 'OBS_PEDIDO'
      BlobType = ftMemo
      Size = 1
    end
    object qParametros_PedUSA_TAB_PRECO: TStringField
      FieldName = 'USA_TAB_PRECO'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSA_NUM_PEDIDO_POR_VEND: TStringField
      FieldName = 'USA_NUM_PEDIDO_POR_VEND'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedIMP_MATERIAL: TStringField
      FieldName = 'IMP_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSA_AMOSTRA: TStringField
      FieldName = 'USA_AMOSTRA'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSA_CAIXINHA: TStringField
      FieldName = 'USA_CAIXINHA'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedINF_QTD_TALAO: TStringField
      FieldName = 'INF_QTD_TALAO'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedDTENTREGA_ZERADA_ORC: TStringField
      FieldName = 'DTENTREGA_ZERADA_ORC'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSA_FABRICA: TStringField
      FieldName = 'USA_FABRICA'
      FixedChar = True
      Size = 1
    end
  end
  object sdsMetas_Acum: TSQLDataSet
    CommandText = 
      'SELECT *'#13#10'FROM METAS_ACUM'#13#10'WHERE ID_VENDEDOR = :ID_VENDEDOR'#13#10'   ' +
      'AND ANO = :ANO'#13#10'   AND MES = :MES'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_VENDEDOR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ANO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MES'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 1160
    Top = 383
    object sdsMetas_AcumID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMetas_AcumANO: TIntegerField
      FieldName = 'ANO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMetas_AcumMES: TIntegerField
      FieldName = 'MES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMetas_AcumVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sdsMetas_AcumANO_MES: TStringField
      FieldName = 'ANO_MES'
      Size = 6
    end
  end
  object dspMetas_Acum: TDataSetProvider
    DataSet = sdsMetas_Acum
    UpdateMode = upWhereKeyOnly
    Left = 1080
    Top = 330
  end
  object cdsMetas_Acum: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMetas_Acum'
    Left = 1184
    Top = 383
    object cdsMetas_AcumID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMetas_AcumANO: TIntegerField
      FieldName = 'ANO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMetas_AcumMES: TIntegerField
      FieldName = 'MES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMetas_AcumVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsMetas_AcumANO_MES: TStringField
      FieldName = 'ANO_MES'
      Size = 6
    end
  end
  object qParametros_Fin: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_FIN'
      'WHERE ID = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 1088
    Top = 536
    object qParametros_FinID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_FinCONTROLAR_DUP_USUARIO: TStringField
      FieldName = 'CONTROLAR_DUP_USUARIO'
      FixedChar = True
      Size = 1
    end
    object qParametros_FinUSA_METAS_VENDEDOR: TStringField
      FieldName = 'USA_METAS_VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object qParametros_FinUSA_LIMITE_COMPRAS: TStringField
      FieldName = 'USA_LIMITE_COMPRAS'
      FixedChar = True
      Size = 1
    end
    object qParametros_FinCONTROLAR_BANCO_REM_DEP: TStringField
      FieldName = 'CONTROLAR_BANCO_REM_DEP'
      FixedChar = True
      Size = 1
    end
    object qParametros_FinSENHA_LIBERAR_DESC: TStringField
      FieldName = 'SENHA_LIBERAR_DESC'
      Size = 10
    end
    object qParametros_FinCONTROLE_DIG_PRECO: TStringField
      FieldName = 'CONTROLE_DIG_PRECO'
      FixedChar = True
      Size = 1
    end
    object qParametros_FinUSA_NGR: TStringField
      FieldName = 'USA_NGR'
      FixedChar = True
      Size = 1
    end
    object qParametros_FinUSA_END_CCUSTO: TStringField
      FieldName = 'USA_END_CCUSTO'
      FixedChar = True
      Size = 1
    end
  end
  object qParametros_NFe: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_NFE'
      'WHERE ID = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 1208
    Top = 586
    object qParametros_NFeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_NFeSOMAR_IPI_NO_ICMS: TStringField
      FieldName = 'SOMAR_IPI_NO_ICMS'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeSOMAR_IPI_NO_ICM_TC: TStringField
      FieldName = 'SOMAR_IPI_NO_ICM_TC'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeSOMAR_FRETE_ICMS_NAC: TStringField
      FieldName = 'SOMAR_FRETE_ICMS_NAC'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeSOMAR_FRETE_NO_ICMS_TC: TStringField
      FieldName = 'SOMAR_FRETE_NO_ICMS_TC'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeIMP_OC: TStringField
      FieldName = 'IMP_OC'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeSOMAR_FRETE_IPI: TStringField
      FieldName = 'SOMAR_FRETE_IPI'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeCALCULAR_DIFAL: TStringField
      FieldName = 'CALCULAR_DIFAL'
      FixedChar = True
      Size = 1
    end
  end
  object qIcmsPartilha: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ANO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT T.ano, T.perc_destino'
      'FROM TAB_PARTILHA_ICMS T'
      'WHERE T.ANO = :ANO')
    SQLConnection = dmDatabase.scoDados
    Left = 1232
    Top = 586
    object qIcmsPartilhaANO: TIntegerField
      FieldName = 'ANO'
      Required = True
    end
    object qIcmsPartilhaPERC_DESTINO: TFloatField
      FieldName = 'PERC_DESTINO'
    end
  end
  object qCarimbo: TSQLQuery
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
        Name = 'ID_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT P.carimbo, p.caixinha,'
      
        '(SELECT CARIMBO FROM PESSOA CLI WHERE CLI.CODIGO = :ID_CLIENTE) ' +
        'CARIMBO_CLI ,'
      
        '(SELECT CAIXINHA FROM PESSOA CLI WHERE CLI.CODIGO = :ID_CLIENTE)' +
        ' CAIXINHA_CLI ,'
      'CAR.CARIMBO CARIMBO_PRO_CLI, CAR.CAIXINHA CAIXINHA_PRO_CLI'
      'FROM PRODUTO P'
      'LEFT JOIN PRODUTO_CARIMBO CAR'
      'ON P.ID = CAR.id'
      'AND CAR.id_cliente = :ID_CLIENTE'
      'WHERE P.ID = :ID_PRODUTO')
    SQLConnection = dmDatabase.scoDados
    Left = 1064
    Top = 536
    object qCarimboCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object qCarimboCARIMBO_CLI: TStringField
      FieldName = 'CARIMBO_CLI'
      Size = 25
    end
    object qCarimboCARIMBO_PRO_CLI: TStringField
      FieldName = 'CARIMBO_PRO_CLI'
      Size = 25
    end
    object qCarimboCAIXINHA: TStringField
      FieldName = 'CAIXINHA'
      Size = 30
    end
    object qCarimboCAIXINHA_CLI: TStringField
      FieldName = 'CAIXINHA_CLI'
      Size = 30
    end
    object qCarimboCAIXINHA_PRO_CLI: TStringField
      FieldName = 'CAIXINHA_PRO_CLI'
      Size = 30
    end
  end
  object qConsumo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_COMBINACAO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT AUX.*, COR.NOME NOME_COR'
      'from ('
      
        'SELECT P.id, P.referencia, P.nome NOME_PRODUTO, PB.id_cor_combin' +
        'acao,'
      
        'PB.nome NOME_COMBINACAO, pc.id_material, pc.qtd_consumo, PC.TIPO' +
        '_CONSUMO,'
      
        'PC.ITEM ITEM_CONSUMO, MAT.NOME NOME_MATERIAL, MAT.TRANSFER, MAT.' +
        'ID_GRADE ID_GRADE_MAT,  MAT.ID_FORNECEDOR, '
      '  ( SELECT PMAT.id_cor'
      '    FROM PRODUTO_COMB_MAT PMAT'
      '    WHERE PMAT.id = PB.id'
      '      AND PMAT.item = PB.item'
      '      AND PMAT.id_material = PC.id_material) ID_COR_MAT'
      'FROM PRODUTO P'
      'INNER JOIN PRODUTO_CONSUMO PC'
      'ON P.id = PC.id'
      'LEFT JOIN PRODUTO_COMB PB'
      'ON PC.id = pb.ID'
      'AND PB.id_cor_combinacao = :ID_COMBINACAO'
      'LEFT JOIN PRODUTO MAT'
      'ON PC.id_material = MAT.id'
      ''
      'WHERE P.TIPO_REG = '#39'P'#39
      'and p.id = :ID_PRODUTO'
      'and pc.imp_rotulo = '#39'S'#39')'
      'AUX'
      'LEFT JOIN COMBINACAO COR'
      'ON AUX.ID_COR_MAT = COR.ID')
    SQLConnection = dmDatabase.scoDados
    Left = 1040
    Top = 537
    object qConsumoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qConsumoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object qConsumoNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object qConsumoID_COR_COMBINACAO: TIntegerField
      FieldName = 'ID_COR_COMBINACAO'
    end
    object qConsumoNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 50
    end
    object qConsumoID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object qConsumoQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object qConsumoTIPO_CONSUMO: TStringField
      FieldName = 'TIPO_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object qConsumoITEM_CONSUMO: TIntegerField
      FieldName = 'ITEM_CONSUMO'
      Required = True
    end
    object qConsumoNOME_MATERIAL: TStringField
      FieldName = 'NOME_MATERIAL'
      Size = 100
    end
    object qConsumoTRANSFER: TStringField
      FieldName = 'TRANSFER'
      FixedChar = True
      Size = 1
    end
    object qConsumoID_GRADE_MAT: TIntegerField
      FieldName = 'ID_GRADE_MAT'
    end
    object qConsumoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object qConsumoID_COR_MAT: TIntegerField
      FieldName = 'ID_COR_MAT'
    end
    object qConsumoNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 60
    end
  end
  object mRotulos2: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Nome_Filial'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DtEntrega'
        DataType = ftDate
      end
      item
        Name = 'Nome_Cliente'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Pedido_Cliente'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Num_OS'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nome_Cor'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Material'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Tamanho'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Tam_Matriz'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Qtd'
        DataType = ftInteger
      end
      item
        Name = 'Num_Rotulo'
        DataType = ftInteger
      end
      item
        Name = 'Qtd_Rotulo'
        DataType = ftInteger
      end
      item
        Name = 'Carimbo'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CarimboAux'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'EndLogo_Rotulo'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'Obs_Rotulo'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Item_Original'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'Item_Original;Referencia;Nome_Cor;Carimbo;Num_OS;Tamanho'
    Params = <>
    StoreDefs = True
    Left = 1064
    Top = 200
    Data = {
      040200009619E0BD01000000180000001200000000000300000004020B4E6F6D
      655F46696C69616C010049000000010005574944544802000200280009447445
      6E747265676104000600000000000C4E6F6D655F436C69656E74650100490000
      000100055749445448020002003C000E50656469646F5F436C69656E74650100
      490000000100055749445448020002001400064E756D5F4F5301004900000001
      000557494454480200020014000A5265666572656E6369610100490000000100
      055749445448020002001400084E6F6D655F436F720100490000000100055749
      445448020002002800084D6174657269616C0100490000000100055749445448
      020002003C000754616D616E686F010049000000010005574944544802000200
      0A000A54616D5F4D617472697A0100490000000100055749445448020002000A
      000351746404000100000000000A4E756D5F526F74756C6F0400010000000000
      0A5174645F526F74756C6F040001000000000007436172696D626F0100490000
      000100055749445448020002001E000A436172696D626F417578010049000000
      0100055749445448020002001E000E456E644C6F676F5F526F74756C6F010049
      000000010005574944544802000200C8000A4F62735F526F74756C6F01004900
      000001000557494454480200020032000D4974656D5F4F726967696E616C0400
      0100000000000000}
    object mRotulos2Nome_Filial: TStringField
      FieldName = 'Nome_Filial'
      Size = 40
    end
    object mRotulos2DtEntrega: TDateField
      FieldName = 'DtEntrega'
    end
    object mRotulos2Nome_Cliente: TStringField
      FieldName = 'Nome_Cliente'
      Size = 60
    end
    object mRotulos2Pedido_Cliente: TStringField
      FieldName = 'Pedido_Cliente'
    end
    object mRotulos2Num_OS: TStringField
      FieldName = 'Num_OS'
    end
    object mRotulos2Referencia: TStringField
      FieldName = 'Referencia'
    end
    object mRotulos2Nome_Cor: TStringField
      FieldName = 'Nome_Cor'
      Size = 40
    end
    object mRotulos2Material: TStringField
      FieldName = 'Material'
      Size = 60
    end
    object mRotulos2Tamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
    object mRotulos2Tam_Matriz: TStringField
      FieldName = 'Tam_Matriz'
      Size = 10
    end
    object mRotulos2Qtd: TIntegerField
      FieldName = 'Qtd'
    end
    object mRotulos2Num_Rotulo: TIntegerField
      FieldName = 'Num_Rotulo'
    end
    object mRotulos2Qtd_Rotulo: TIntegerField
      FieldName = 'Qtd_Rotulo'
    end
    object mRotulos2Carimbo: TStringField
      FieldName = 'Carimbo'
      Size = 30
    end
    object mRotulos2CarimboAux: TStringField
      FieldName = 'CarimboAux'
      Size = 30
    end
    object mRotulos2EndLogo_Rotulo: TStringField
      FieldName = 'EndLogo_Rotulo'
      Size = 200
    end
    object mRotulos2Obs_Rotulo: TStringField
      FieldName = 'Obs_Rotulo'
      Size = 50
    end
    object mRotulos2Item_Original: TIntegerField
      FieldName = 'Item_Original'
    end
  end
  object dsmRotulos2: TDataSource
    DataSet = mRotulos2
    Left = 1080
    Top = 200
  end
  object frxDBDataset17: TfrxDBDataset
    UserName = 'frxmRotulos2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Nome_Filial=Nome_Filial'
      'DtEntrega=DtEntrega'
      'Nome_Cliente=Nome_Cliente'
      'Pedido_Cliente=Pedido_Cliente'
      'Num_OS=Num_OS'
      'Referencia=Referencia'
      'Nome_Cor=Nome_Cor'
      'Material=Material'
      'Tamanho=Tamanho'
      'Tam_Matriz=Tam_Matriz'
      'Qtd=Qtd'
      'Num_Rotulo=Num_Rotulo'
      'Qtd_Rotulo=Qtd_Rotulo'
      'Carimbo=Carimbo'
      'CarimboAux=CarimboAux'
      'EndLogo_Rotulo=EndLogo_Rotulo'
      'Obs_Rotulo=Obs_Rotulo'
      'Item_Original=Item_Original')
    DataSource = dsmRotulos2
    BCDToCurrency = False
    Left = 1184
    Top = 204
  end
  object mAuxImp: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Pedido'
        DataType = ftInteger
      end
      item
        Name = 'TotalItens'
        DataType = ftInteger
      end
      item
        Name = 'ItemAux'
        DataType = ftInteger
      end
      item
        Name = 'Num_Pedido'
        DataType = ftInteger
      end
      item
        Name = 'EndLogo_Rotulo'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'Rotulo_Imp'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    IndexFieldNames = 'ID_Pedido'
    Params = <>
    StoreDefs = True
    Left = 1008
    Top = 328
    Data = {
      A40000009619E0BD010000001800000006000000000003000000A4000949445F
      50656469646F04000100000000000A546F74616C4974656E7304000100000000
      00074974656D41757804000100000000000A4E756D5F50656469646F04000100
      000000000E456E644C6F676F5F526F74756C6F01004900000001000557494454
      4802000200C8000A526F74756C6F5F496D700100490000000100055749445448
      0200020001000000}
    object mAuxImpID_Pedido: TIntegerField
      FieldName = 'ID_Pedido'
    end
    object mAuxImpTotalItens: TIntegerField
      FieldName = 'TotalItens'
    end
    object mAuxImpItemAux: TIntegerField
      FieldName = 'ItemAux'
    end
    object mAuxImpNum_Pedido: TIntegerField
      FieldName = 'Num_Pedido'
    end
    object mAuxImpEndLogo_Rotulo: TStringField
      FieldName = 'EndLogo_Rotulo'
      Size = 200
    end
    object mAuxImpRotulo_Imp: TStringField
      FieldName = 'Rotulo_Imp'
      Size = 1
    end
  end
  object dsmAuxImp: TDataSource
    DataSet = mAuxImp
    Left = 1024
    Top = 328
  end
  object frxDBDataset18: TfrxDBDataset
    UserName = 'frxmAuxImp'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_Pedido=ID_Pedido'
      'TotalItens=TotalItens'
      'ItemAux=ItemAux'
      'Num_Pedido=Num_Pedido'
      'EndLogo_Rotulo=EndLogo_Rotulo')
    DataSource = dsmAuxImp
    BCDToCurrency = False
    Left = 1152
    Top = 204
  end
  object sdsConsumo: TSQLDataSet
    CommandText = 
      'SELECT AUX.*, COR.NOME NOME_COR'#13#10'from ('#13#10'SELECT P.id, P.referenc' +
      'ia, P.nome NOME_PRODUTO, PB.id_cor_combinacao,'#13#10'PB.nome NOME_COM' +
      'BINACAO, pc.id_material, pc.qtd_consumo, PC.TIPO_CONSUMO,'#13#10'PC.IT' +
      'EM ITEM_CONSUMO, MAT.NOME NOME_MATERIAL, MAT.TRANSFER, MAT.ID_GR' +
      'ADE ID_GRADE_MAT,  MAT.ID_FORNECEDOR, '#13#10'  ( SELECT PMAT.id_cor'#13#10 +
      '    FROM PRODUTO_COMB_MAT PMAT'#13#10'    WHERE PMAT.id = PB.id'#13#10'     ' +
      ' AND PMAT.item = PB.item'#13#10'      AND PMAT.id_material = PC.id_mat' +
      'erial) ID_COR_MAT'#13#10#13#10'FROM PRODUTO P'#13#10'INNER JOIN PRODUTO_CONSUMO ' +
      'PC'#13#10'ON P.id = PC.id'#13#10'LEFT JOIN PRODUTO_COMB PB'#13#10'ON PC.id = pb.ID' +
      #13#10'AND PB.id_cor_combinacao = :ID_COMBINACAO'#13#10'LEFT JOIN PRODUTO M' +
      'AT'#13#10'ON PC.id_material = MAT.id'#13#10#13#10'WHERE P.TIPO_REG = '#39'P'#39#13#10'and p.' +
      'id = :ID_PRODUTO)'#13#10'AUX'#13#10'LEFT JOIN COMBINACAO COR'#13#10'ON AUX.ID_COR_' +
      'MAT = COR.ID'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_COMBINACAO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 536
    Top = 591
  end
  object dspConsumo: TDataSetProvider
    DataSet = sdsConsumo
    Left = 560
    Top = 591
  end
  object cdsConsumo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_MATERIAL;ID_COR_MAT'
    Params = <>
    ProviderName = 'dspConsumo'
    Left = 576
    Top = 591
    object cdsConsumoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsumoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsConsumoNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsConsumoID_COR_COMBINACAO: TIntegerField
      FieldName = 'ID_COR_COMBINACAO'
    end
    object cdsConsumoNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 50
    end
    object cdsConsumoID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsConsumoQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object cdsConsumoTIPO_CONSUMO: TStringField
      FieldName = 'TIPO_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object cdsConsumoITEM_CONSUMO: TIntegerField
      FieldName = 'ITEM_CONSUMO'
      Required = True
    end
    object cdsConsumoNOME_MATERIAL: TStringField
      FieldName = 'NOME_MATERIAL'
      Size = 100
    end
    object cdsConsumoTRANSFER: TStringField
      FieldName = 'TRANSFER'
      FixedChar = True
      Size = 1
    end
    object cdsConsumoID_GRADE_MAT: TIntegerField
      FieldName = 'ID_GRADE_MAT'
    end
    object cdsConsumoID_COR_MAT: TIntegerField
      FieldName = 'ID_COR_MAT'
    end
    object cdsConsumoNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 60
    end
    object cdsConsumoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
  end
  object qConsumo_Tam: TSQLQuery
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
    SQL.Strings = (
      'SELECT CT.qtd_consumo'
      'FROM produto_consumo_tam CT'
      'WHERE CT.id = :ID'
      '  AND CT.item = :ITEM'
      '  AND CT.tamanho = :TAMANHO')
    SQLConnection = dmDatabase.scoDados
    Left = 1257
    Top = 587
    object qConsumo_TamQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
  end
  object dsmConsumo_Mat: TDataSource
    DataSet = mConsumo_Mat
    Left = 1025
    Top = 111
  end
  object mConsumo_Mat: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Nome_Material;Nome_Cor;Tamanho'
    Params = <>
    Left = 1009
    Top = 111
    Data = {
      C20000009619E0BD010000001800000006000000000003000000C2000B49445F
      4D6174657269616C04000100000000000649445F436F7204000100000000000D
      4E6F6D655F4D6174657269616C0100490000000100055749445448020002003C
      00084E6F6D655F436F7201004900000001000557494454480200020028000B51
      74645F436F6E73756D6F08000400000000000754616D616E686F010049000000
      0100055749445448020002000A0001000D44454641554C545F4F524445520200
      820000000000}
    object mConsumo_MatID_Material: TIntegerField
      FieldName = 'ID_Material'
    end
    object mConsumo_MatID_Cor: TIntegerField
      FieldName = 'ID_Cor'
    end
    object mConsumo_MatNome_Material: TStringField
      FieldName = 'Nome_Material'
      Size = 60
    end
    object mConsumo_MatNome_Cor: TStringField
      FieldName = 'Nome_Cor'
      Size = 40
    end
    object mConsumo_MatQtd_Consumo: TFloatField
      FieldName = 'Qtd_Consumo'
      DisplayFormat = '0.0000#'
    end
    object mConsumo_MatTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
  end
  object frxDBDataset19: TfrxDBDataset
    UserName = 'frxmConsumo_Mat'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_Material=ID_Material'
      'ID_Cor=ID_Cor'
      'Nome_Material=Nome_Material'
      'Nome_Cor=Nome_Cor'
      'Qtd_Consumo=Qtd_Consumo'
      'Tamanho=Tamanho')
    DataSource = dsmConsumo_Mat
    BCDToCurrency = False
    Left = 1294
    Top = 156
  end
  object sdsPedido_Cancelado: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PEDIDO_CANCELADO'#13#10'WHERE ID = :ID'#13#10'      AND ITEM ' +
      '= :ITEM'
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
    Left = 24
    Top = 542
    object sdsPedido_CanceladoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedido_CanceladoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedido_CanceladoITEM_CANC: TIntegerField
      FieldName = 'ITEM_CANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedido_CanceladoDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsPedido_CanceladoMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 200
    end
    object sdsPedido_CanceladoQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsPedido_CanceladoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsPedido_CanceladoDTUSUARIO: TDateField
      FieldName = 'DTUSUARIO'
    end
    object sdsPedido_CanceladoHRUSUARIO: TTimeField
      FieldName = 'HRUSUARIO'
    end
    object sdsPedido_CanceladoID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
  end
  object dspPedido_Cancelado: TDataSetProvider
    DataSet = sdsPedido_Cancelado
    UpdateMode = upWhereKeyOnly
    Left = 40
    Top = 542
  end
  object cdsPedido_Cancelado: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM;ITEM_CANC'
    Params = <>
    ProviderName = 'dspPedido_Cancelado'
    Left = 58
    Top = 542
    object cdsPedido_CanceladoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedido_CanceladoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedido_CanceladoITEM_CANC: TIntegerField
      FieldName = 'ITEM_CANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedido_CanceladoDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsPedido_CanceladoMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 200
    end
    object cdsPedido_CanceladoQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedido_CanceladoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsPedido_CanceladoDTUSUARIO: TDateField
      FieldName = 'DTUSUARIO'
    end
    object cdsPedido_CanceladoHRUSUARIO: TTimeField
      FieldName = 'HRUSUARIO'
    end
    object cdsPedido_CanceladoID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
  end
  object dsPedido_Cancelado: TDataSource
    DataSet = cdsPedido_Cancelado
    Left = 72
    Top = 542
  end
  object mItensImp_Rot: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'Item_Rot'
        DataType = ftInteger
      end
      item
        Name = 'Qtd1'
        DataType = ftInteger
      end
      item
        Name = 'Qtd2'
        DataType = ftInteger
      end
      item
        Name = 'Qtd3'
        DataType = ftInteger
      end
      item
        Name = 'Qtd4'
        DataType = ftInteger
      end
      item
        Name = 'Qtd5'
        DataType = ftInteger
      end
      item
        Name = 'Qtd6'
        DataType = ftInteger
      end
      item
        Name = 'Qtd7'
        DataType = ftInteger
      end
      item
        Name = 'Qtd8'
        DataType = ftInteger
      end
      item
        Name = 'Qtd9'
        DataType = ftInteger
      end
      item
        Name = 'Qtd10'
        DataType = ftInteger
      end
      item
        Name = 'Qtd11'
        DataType = ftInteger
      end
      item
        Name = 'Qtd12'
        DataType = ftInteger
      end
      item
        Name = 'Qtd13'
        DataType = ftInteger
      end
      item
        Name = 'Qtd14'
        DataType = ftInteger
      end
      item
        Name = 'Qtd15'
        DataType = ftInteger
      end
      item
        Name = 'Qtd16'
        DataType = ftInteger
      end
      item
        Name = 'Qtd17'
        DataType = ftInteger
      end
      item
        Name = 'QtdTotal'
        DataType = ftInteger
      end
      item
        Name = 'Qtd_Folha'
        DataType = ftInteger
      end
      item
        Name = 'Num_Folha'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'Item;Item_Rot;Num_Folha'
    MasterFields = 'Item'
    MasterSource = dsmItensImp
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    Left = 1009
    Top = 68
    Data = {
      520100009619E0BD010000001800000016000000000003000000520104497465
      6D0400010000000000084974656D5F526F740400010000000000045174643104
      0001000000000004517464320400010000000000045174643304000100000000
      0004517464340400010000000000045174643504000100000000000451746436
      0400010000000000045174643704000100000000000451746438040001000000
      0000045174643904000100000000000551746431300400010000000000055174
      6431310400010000000000055174643132040001000000000005517464313304
      0001000000000005517464313404000100000000000551746431350400010000
      0000000551746431360400010000000000055174643137040001000000000008
      517464546F74616C0400010000000000095174645F466F6C6861040001000000
      0000094E756D5F466F6C686104000100000000000000}
    object mItensImp_RotItem: TIntegerField
      FieldName = 'Item'
    end
    object mItensImp_RotItem_Rot: TIntegerField
      FieldName = 'Item_Rot'
    end
    object mItensImp_RotNum_Folha: TIntegerField
      FieldName = 'Num_Folha'
    end
    object mItensImp_RotQtd1: TIntegerField
      FieldName = 'Qtd1'
    end
    object mItensImp_RotQtd2: TIntegerField
      FieldName = 'Qtd2'
    end
    object mItensImp_RotQtd3: TIntegerField
      FieldName = 'Qtd3'
    end
    object mItensImp_RotQtd4: TIntegerField
      FieldName = 'Qtd4'
    end
    object mItensImp_RotQtd5: TIntegerField
      FieldName = 'Qtd5'
    end
    object mItensImp_RotQtd6: TIntegerField
      FieldName = 'Qtd6'
    end
    object mItensImp_RotQtd7: TIntegerField
      FieldName = 'Qtd7'
    end
    object mItensImp_RotQtd8: TIntegerField
      FieldName = 'Qtd8'
    end
    object mItensImp_RotQtd9: TIntegerField
      FieldName = 'Qtd9'
    end
    object mItensImp_RotQtd10: TIntegerField
      FieldName = 'Qtd10'
    end
    object mItensImp_RotQtd11: TIntegerField
      FieldName = 'Qtd11'
    end
    object mItensImp_RotQtd12: TIntegerField
      FieldName = 'Qtd12'
    end
    object mItensImp_RotQtd13: TIntegerField
      FieldName = 'Qtd13'
    end
    object mItensImp_RotQtd14: TIntegerField
      FieldName = 'Qtd14'
    end
    object mItensImp_RotQtd15: TIntegerField
      FieldName = 'Qtd15'
    end
    object mItensImp_RotQtd16: TIntegerField
      FieldName = 'Qtd16'
    end
    object mItensImp_RotQtd17: TIntegerField
      FieldName = 'Qtd17'
    end
    object mItensImp_RotQtdTotal: TIntegerField
      FieldName = 'QtdTotal'
    end
    object mItensImp_RotQtd_Folha: TIntegerField
      FieldName = 'Qtd_Folha'
    end
  end
  object dsmItensImp_Rot: TDataSource
    DataSet = mItensImp_Rot
    Left = 1025
    Top = 68
  end
  object frxDBDataset20: TfrxDBDataset
    UserName = 'frxmItensImp_Rot'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Item=Item'
      'Item_Rot=Item_Rot'
      'Num_Folha=Num_Folha'
      'Qtd1=Qtd1'
      'Qtd2=Qtd2'
      'Qtd3=Qtd3'
      'Qtd4=Qtd4'
      'Qtd5=Qtd5'
      'Qtd6=Qtd6'
      'Qtd7=Qtd7'
      'Qtd8=Qtd8'
      'Qtd9=Qtd9'
      'Qtd10=Qtd10'
      'Qtd11=Qtd11'
      'Qtd12=Qtd12'
      'Qtd13=Qtd13'
      'Qtd14=Qtd14'
      'Qtd15=Qtd15'
      'Qtd16=Qtd16'
      'Qtd17=Qtd17'
      'QtdTotal=QtdTotal'
      'Qtd_Folha=Qtd_Folha')
    DataSource = dsmItensImp_Rot
    BCDToCurrency = False
    Left = 1270
    Top = 156
  end
  object qParametros_OC: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_OC'
      'WHERE ID = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 1016
    Top = 536
    object qParametros_OCID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_OCOBS_OC: TMemoField
      FieldName = 'OBS_OC'
      BlobType = ftMemo
      Size = 1
    end
    object qParametros_OCUSAR_GERAR_COBRANCA: TStringField
      FieldName = 'USAR_GERAR_COBRANCA'
      Size = 1
    end
    object qParametros_OCUSA_NOMEPROD_FORN_OC: TStringField
      FieldName = 'USA_NOMEPROD_FORN_OC'
      FixedChar = True
      Size = 1
    end
    object qParametros_OCUSA_NUM_DOC: TStringField
      FieldName = 'USA_NUM_DOC'
      FixedChar = True
      Size = 1
    end
  end
  object sdsPrc_Atualiza_DtEntrega: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'PRC_ATUALIZA_DTENTREGA'
    CommandType = ctStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'P_DATA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P_ID_ATELIER'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 1217
    Top = 62
  end
  object qParametros_Prod: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_PROD')
    SQLConnection = dmDatabase.scoDados
    Left = 1184
    Top = 586
    object qParametros_ProdUSA_PRODUTO_FILIAL: TStringField
      FieldName = 'USA_PRODUTO_FILIAL'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdUSA_DESC_MAXIMO: TStringField
      FieldName = 'USA_DESC_MAXIMO'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdID_PRODUTO_GENERICO: TIntegerField
      FieldName = 'ID_PRODUTO_GENERICO'
    end
    object qParametros_ProdPRODUTO_PRECO_COR: TStringField
      FieldName = 'PRODUTO_PRECO_COR'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdUSA_TAM_INDIVIDUAL: TStringField
      FieldName = 'USA_TAM_INDIVIDUAL'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdUSA_LOTE_PROD: TStringField
      FieldName = 'USA_LOTE_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdMOSTRA_PROD_TPRECO: TStringField
      FieldName = 'MOSTRA_PROD_TPRECO'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdUSA_REF2: TStringField
      FieldName = 'USA_REF2'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdPERC_CALCULO_PED: TFloatField
      FieldName = 'PERC_CALCULO_PED'
    end
    object qParametros_ProdGRAVAR_PRIMEIRO_MAT: TStringField
      FieldName = 'GRAVAR_PRIMEIRO_MAT'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdMATERIAL_FORNECEDOR_OC: TStringField
      FieldName = 'MATERIAL_FORNECEDOR_OC'
      FixedChar = True
      Size = 1
    end
  end
  object qParametros_Geral: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_GERAL'
      'WHERE ID = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 1160
    Top = 586
    object qParametros_GeralUSAR_PESSOA_FILIAL: TStringField
      FieldName = 'USAR_PESSOA_FILIAL'
      FixedChar = True
      Size = 1
    end
    object qParametros_GeralGRAVAR_HIST_SENHA: TStringField
      FieldName = 'GRAVAR_HIST_SENHA'
      FixedChar = True
      Size = 1
    end
    object qParametros_GeralEMPRESA_VAREJO: TStringField
      FieldName = 'EMPRESA_VAREJO'
      FixedChar = True
      Size = 1
    end
    object qParametros_GeralEND_ASSINATURA: TStringField
      FieldName = 'END_ASSINATURA'
      Size = 200
    end
    object qParametros_GeralUSA_TRIANGULAR: TStringField
      FieldName = 'USA_TRIANGULAR'
      FixedChar = True
      Size = 1
    end
    object qParametros_GeralUSA_TIPO_MATERIAL: TStringField
      FieldName = 'USA_TIPO_MATERIAL'
      FixedChar = True
      Size = 1
    end
  end
  object mSenha: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Senha'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'Tipo_Alt'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Tipo_Doc'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Senha_Pertence'
        DataType = ftString
        Size = 15
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1232
    Top = 381
    Data = {
      9E0000009619E0BD0100000018000000050000000000030000009E000553656E
      68610100490000000100055749445448020002000A00044974656D0400010000
      000000085469706F5F416C740100490000000100055749445448020002000300
      085469706F5F446F6301004900000001000557494454480200020003000E5365
      6E68615F50657274656E63650100490000000100055749445448020002000F00
      0000}
    object mSenhaSenha: TStringField
      FieldName = 'Senha'
      Size = 10
    end
    object mSenhaItem: TIntegerField
      FieldName = 'Item'
    end
    object mSenhaTipo_Alt: TStringField
      FieldName = 'Tipo_Alt'
      Size = 3
    end
    object mSenhaTipo_Doc: TStringField
      FieldName = 'Tipo_Doc'
      Size = 3
    end
    object mSenhaSenha_Pertence: TStringField
      FieldName = 'Senha_Pertence'
      Size = 15
    end
  end
  object sdsHist_Senha: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM HIST_SENHA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 24
    Top = 584
    object sdsHist_SenhaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsHist_SenhaID_DOC: TIntegerField
      FieldName = 'ID_DOC'
    end
    object sdsHist_SenhaITEM_DOC: TIntegerField
      FieldName = 'ITEM_DOC'
    end
    object sdsHist_SenhaNUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object sdsHist_SenhaTIPO_ARQ: TStringField
      FieldName = 'TIPO_ARQ'
      Size = 3
    end
    object sdsHist_SenhaTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      Size = 3
    end
    object sdsHist_SenhaTIPO_HIST: TStringField
      FieldName = 'TIPO_HIST'
      Size = 3
    end
    object sdsHist_SenhaSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object sdsHist_SenhaSENHA_PERTENCE_AO_USUARIO: TStringField
      FieldName = 'SENHA_PERTENCE_AO_USUARIO'
      Size = 15
    end
    object sdsHist_SenhaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsHist_SenhaDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsHist_SenhaHORA: TTimeField
      FieldName = 'HORA'
    end
  end
  object dspHist_Senha: TDataSetProvider
    DataSet = sdsHist_Senha
    UpdateMode = upWhereKeyOnly
    Left = 40
    Top = 584
  end
  object cdsHist_Senha: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspHist_Senha'
    Left = 56
    Top = 584
    object cdsHist_SenhaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsHist_SenhaID_DOC: TIntegerField
      FieldName = 'ID_DOC'
    end
    object cdsHist_SenhaITEM_DOC: TIntegerField
      FieldName = 'ITEM_DOC'
    end
    object cdsHist_SenhaNUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object cdsHist_SenhaTIPO_ARQ: TStringField
      FieldName = 'TIPO_ARQ'
      Size = 3
    end
    object cdsHist_SenhaTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      Size = 3
    end
    object cdsHist_SenhaTIPO_HIST: TStringField
      FieldName = 'TIPO_HIST'
      Size = 3
    end
    object cdsHist_SenhaSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object cdsHist_SenhaSENHA_PERTENCE_AO_USUARIO: TStringField
      FieldName = 'SENHA_PERTENCE_AO_USUARIO'
      Size = 15
    end
    object cdsHist_SenhaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsHist_SenhaDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsHist_SenhaHORA: TTimeField
      FieldName = 'HORA'
    end
  end
  object dsHist_Senha: TDataSource
    DataSet = cdsHist_Senha
    Left = 72
    Top = 584
  end
  object sdsChapa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT M.id, M.nome, M.tipo_reg, M.vlr_unitario'#13#10'FROM MATRIZ_PRE' +
      'CO M'#13#10'WHERE M.TIPO_REG = '#39'CHP'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 857
    Top = 320
  end
  object dspChapa: TDataSetProvider
    DataSet = sdsChapa
    Left = 873
    Top = 320
  end
  object cdsChapa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspChapa'
    Left = 897
    Top = 320
    object cdsChapaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsChapaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsChapaTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsChapaVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
  end
  object dsChapa: TDataSource
    DataSet = cdsChapa
    Left = 913
    Top = 320
  end
  object sdsPedido_Item_Qtd: TSQLDataSet
    CommandText = 
      'SELECT *'#13#10'FROM PEDIDO_ITEM_QTD'#13#10'WHERE ID = :ID'#13#10'  AND ITEM = :IT' +
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
    Left = 856
    Top = 365
    object sdsPedido_Item_QtdID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedido_Item_QtdITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPedido_Item_QtdQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsPedido_Item_QtdMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 250
    end
    object sdsPedido_Item_QtdDTUSUARIO: TDateField
      FieldName = 'DTUSUARIO'
    end
    object sdsPedido_Item_QtdUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
  end
  object dspPedido_Item_Qtd: TDataSetProvider
    DataSet = sdsPedido_Item_Qtd
    Left = 872
    Top = 365
  end
  object cdsPedido_Item_Qtd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido_Item_Qtd'
    OnNewRecord = cdsPedido_Item_QtdNewRecord
    Left = 888
    Top = 365
    object cdsPedido_Item_QtdID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedido_Item_QtdITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedido_Item_QtdQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedido_Item_QtdMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 250
    end
    object cdsPedido_Item_QtdDTUSUARIO: TDateField
      FieldName = 'DTUSUARIO'
    end
    object cdsPedido_Item_QtdUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
  end
  object dsPedido_Item_Qtd: TDataSource
    DataSet = cdsPedido_Item_Qtd
    Left = 904
    Top = 365
  end
  object sdsPedido_Cupom: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PEDIDO_CUPOM'#13#10'WHERE ID = :ID'
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
    Left = 856
    Top = 496
    object sdsPedido_CupomID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPedido_CupomENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object sdsPedido_CupomNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object sdsPedido_CupomBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object sdsPedido_CupomID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object sdsPedido_CupomDDD: TStringField
      FieldName = 'DDD'
      Size = 4
    end
    object sdsPedido_CupomFONE: TStringField
      FieldName = 'FONE'
      Size = 12
    end
    object sdsPedido_CupomCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object sdsPedido_CupomEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 150
    end
    object sdsPedido_CupomPLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object sdsPedido_CupomUFPLACA: TStringField
      FieldName = 'UFPLACA'
      Size = 2
    end
    object sdsPedido_CupomTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
    object sdsPedido_CupomCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 60
    end
  end
  object cdsPedido_Cupom: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPedidosdsPedido_Cupom
    Params = <>
    Left = 872
    Top = 496
    object cdsPedido_CupomID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedido_CupomENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsPedido_CupomNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object cdsPedido_CupomBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object cdsPedido_CupomID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsPedido_CupomDDD: TStringField
      FieldName = 'DDD'
      Size = 4
    end
    object cdsPedido_CupomFONE: TStringField
      FieldName = 'FONE'
      Size = 12
    end
    object cdsPedido_CupomCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsPedido_CupomEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 150
    end
    object cdsPedido_CupomPLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object cdsPedido_CupomUFPLACA: TStringField
      FieldName = 'UFPLACA'
      Size = 2
    end
    object cdsPedido_CupomTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
    object cdsPedido_CupomCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 60
    end
  end
  object dsPedido_Cupom: TDataSource
    DataSet = cdsPedido_Cupom
    Left = 889
    Top = 497
  end
  object sdsCidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CIDADE'#13#10'WHERE UF = :UF'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'UF'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 697
    Top = 63
  end
  object dspCidade: TDataSetProvider
    DataSet = sdsCidade
    Left = 712
    Top = 63
  end
  object cdsCidade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCidade'
    Left = 728
    Top = 63
    object cdsCidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsCidadeCODMUNICIPIO: TStringField
      FieldName = 'CODMUNICIPIO'
      Size = 7
    end
    object cdsCidadeID_PROVEDOR: TIntegerField
      FieldName = 'ID_PROVEDOR'
    end
    object cdsCidadeLINKNFSE: TStringField
      FieldName = 'LINKNFSE'
      Size = 200
    end
    object cdsCidadeFONE_PREFEITURA: TStringField
      FieldName = 'FONE_PREFEITURA'
      Size = 15
    end
    object cdsCidadeSITE_PREFEITURA: TStringField
      FieldName = 'SITE_PREFEITURA'
      Size = 200
    end
    object cdsCidadeEND_LOGO_PREFEITURA: TStringField
      FieldName = 'END_LOGO_PREFEITURA'
      Size = 250
    end
  end
  object dsCidade: TDataSource
    DataSet = cdsCidade
    Left = 744
    Top = 63
  end
  object qUsuario: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'USUARIO_LOG'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT P.CODIGO'
      'FROM PESSOA P'
      'WHERE P.USUARIO_LOG = :USUARIO_LOG')
    SQLConnection = dmDatabase.scoDados
    Left = 992
    Top = 537
    object qUsuarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
  end
  object sdsPedidoImp_Serv: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT PS.*'#13#10'FROM PEDIDO_SERVICO PS'#13#10'WHERE PS.ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 856
    Top = 409
  end
  object dspPedidoImp_Serv: TDataSetProvider
    DataSet = sdsPedidoImp_Serv
    Left = 872
    Top = 410
  end
  object cdsPedidoImp_Serv: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedidoImp_Serv'
    Left = 888
    Top = 410
    object cdsPedidoImp_ServID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedidoImp_ServITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPedidoImp_ServID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsPedidoImp_ServNOME_SERVICO_INT: TStringField
      FieldName = 'NOME_SERVICO_INT'
      Size = 150
    end
    object cdsPedidoImp_ServQTD: TIntegerField
      FieldName = 'QTD'
    end
    object cdsPedidoImp_ServVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.00##'
    end
    object cdsPedidoImp_ServVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsPedidoImp_ServCOMPLEMENTO_SERVICO: TStringField
      FieldName = 'COMPLEMENTO_SERVICO'
      Size = 80
    end
    object cdsPedidoImp_ServUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsPedidoImp_ServAPROVADO_ORC: TStringField
      FieldName = 'APROVADO_ORC'
      FixedChar = True
      Size = 1
    end
  end
  object dsPedidoImp_Serv: TDataSource
    DataSet = cdsPedidoImp_Serv
    Left = 904
    Top = 410
  end
  object sdsServico: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, CODIGO, NOME, TIPO_AS , CODIGO || '#39'-'#39' || NOME AS NOME' +
      '_SERVICO, CNAE, PERC_ISS, ID_ATIVIDADE_CID, CODIGO_NBS'#13#10'FROM SER' +
      'VICO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 848
    Top = 544
  end
  object dspServico: TDataSetProvider
    DataSet = sdsServico
    Left = 864
    Top = 544
  end
  object cdsServico: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspServico'
    Left = 888
    Top = 544
    object cdsServicoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsServicoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 5
    end
    object cdsServicoNOME: TStringField
      FieldName = 'NOME'
      Size = 500
    end
    object cdsServicoTIPO_AS: TStringField
      FieldName = 'TIPO_AS'
      FixedChar = True
      Size = 1
    end
    object cdsServicoNOME_SERVICO: TStringField
      FieldName = 'NOME_SERVICO'
      Size = 506
    end
    object cdsServicoCNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object cdsServicoPERC_ISS: TFloatField
      FieldName = 'PERC_ISS'
    end
    object cdsServicoID_ATIVIDADE_CID: TIntegerField
      FieldName = 'ID_ATIVIDADE_CID'
    end
    object cdsServicoCODIGO_NBS: TStringField
      FieldName = 'CODIGO_NBS'
      Size = 10
    end
  end
  object dsServico: TDataSource
    DataSet = cdsServico
    Left = 904
    Top = 544
  end
  object qProduto_Cli: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'COD_MATERIAL_FORN'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_FORNECEDOR'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select PF.id, PF.cod_material_forn, PF.id_fornecedor, PF.NOME_MA' +
        'TERIAL_FORN'
      'from produto_forn PF'
      'WHERE PF.cod_material_forn = :COD_MATERIAL_FORN'
      '  AND PF.ID_FORNECEDOR = :ID_FORNECEDOR')
    SQLConnection = dmDatabase.scoDados
    Left = 1190
    Top = 438
    object qProduto_CliID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProduto_CliCOD_MATERIAL_FORN: TStringField
      FieldName = 'COD_MATERIAL_FORN'
      Size = 60
    end
    object qProduto_CliID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object qProduto_CliNOME_MATERIAL_FORN: TStringField
      FieldName = 'NOME_MATERIAL_FORN'
      Size = 100
    end
  end
  object qParametros_Lote: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_LOTE')
    SQLConnection = dmDatabase.scoDados
    Left = 1144
    Top = 488
    object qParametros_LoteLOTE_TEXTIL: TStringField
      FieldName = 'LOTE_TEXTIL'
      FixedChar = True
      Size = 1
    end
    object qParametros_LoteUSA_LOTE_PED_SPROC: TStringField
      FieldName = 'USA_LOTE_PED_SPROC'
      FixedChar = True
      Size = 1
    end
    object qParametros_LoteLOTE_CALCADO_NOVO: TStringField
      FieldName = 'LOTE_CALCADO_NOVO'
      FixedChar = True
      Size = 1
    end
  end
  object qParametros_Est: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_EST')
    SQLConnection = dmDatabase.scoDados
    Left = 1256
    Top = 536
    object qParametros_EstID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_EstUSA_RESERVA: TStringField
      FieldName = 'USA_RESERVA'
      FixedChar = True
      Size = 1
    end
    object qParametros_EstVERIFICA_ESTOQUE_ENT_PEDIDO: TStringField
      FieldName = 'VERIFICA_ESTOQUE_ENT_PEDIDO'
      FixedChar = True
      Size = 1
    end
  end
  object dsPedidoImp_Acu: TDataSource
    DataSet = cdsPedidoImp_Acu
    Left = 744
    Top = 148
  end
  object cdsPedidoImp_Acu: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_PRODUTO'
    Params = <>
    ProviderName = 'dspPedidoImp_Acu'
    OnCalcFields = pedidoImpCalcFields
    Left = 728
    Top = 148
    object cdsPedidoImp_AcuID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsPedidoImp_AcuID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object cdsPedidoImp_AcuREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsPedidoImp_AcuQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsPedidoImp_AcuQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object dspPedidoImp_Acu: TDataSetProvider
    DataSet = sdsPedidoImp_Acu
    Left = 712
    Top = 148
  end
  object sdsPedidoImp_Acu: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PI.ID_PRODUTO, PI.id_cor, pi.referencia, SUM(PI.qtd_resta' +
      'nte) QTD_RESTANTE, SUM(PI.qtd) QTD'#13#10'FROM PEDIDO_ITEM PI'#13#10'WHERE P' +
      'I.ID = :ID'#13#10'AND (PI.QTD > 0)'#13#10'GROUP BY PI.ID_PRODUTO, PI.id_cor,' +
      ' pi.referencia'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 696
    Top = 148
  end
  object qGrupoPessoa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID1'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT NOME'
      'FROM GRUPO_PESSOA'
      'WHERE ID = :ID1')
    SQLConnection = dmDatabase.scoDados
    Left = 1120
    Top = 487
    object qGrupoPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object sdsGrupo_Pessoa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM GRUPO_PESSOA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 697
    Top = 104
  end
  object dspGrupo_Pessoa: TDataSetProvider
    DataSet = sdsGrupo_Pessoa
    Left = 712
    Top = 104
  end
  object cdsGrupo_Pessoa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspGrupo_Pessoa'
    Left = 728
    Top = 104
    object cdsGrupo_PessoaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsGrupo_PessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dsGrupo_Pessoa: TDataSource
    DataSet = cdsGrupo_Pessoa
    Left = 744
    Top = 104
  end
  object qProduto_Lote: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NUM_LOTE_CONTROLE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT PL.num_lote_controle, PL.preco_custo, PL.preco_venda,'
      '  (SELECT sum(L.qtd) QTD'
      '    FROM ESTOQUE_LOTE L'
      '   WHERE L.ID_PRODUTO = PL.ID'
      '     AND L.NUM_LOTE_CONTROLE = PL.num_lote_controle) QTD'
      'FROM PRODUTO_LOTE PL'
      'WHERE PL.ID = :ID'
      '  AND PL.NUM_LOTE_CONTROLE = :NUM_LOTE_CONTROLE')
    SQLConnection = dmDatabase.scoDados
    Left = 1232
    Top = 536
    object qProduto_LoteNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object qProduto_LotePRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object qProduto_LotePRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object qProduto_LoteQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 8
    end
  end
  object mImpPed: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 1064
    Top = 240
    Data = {
      7A0000009619E0BD0100000018000000040000000000030000007A000949445F
      50656469646F04000100000000000A4E756D5F50656469646F04000100000000
      00084E6F6D655F56696101004900000001000557494454480200020014000949
      6D705F507265636F01004900000001000557494454480200020001000000}
    object mImpPedID_Pedido: TIntegerField
      FieldName = 'ID_Pedido'
    end
    object mImpPedNum_Pedido: TIntegerField
      FieldName = 'Num_Pedido'
    end
    object mImpPedNome_Via: TStringField
      FieldName = 'Nome_Via'
    end
    object mImpPedImp_Preco: TStringField
      FieldName = 'Imp_Preco'
      Size = 1
    end
  end
  object dsmImpPed: TDataSource
    DataSet = mImpPed
    Left = 1080
    Top = 240
  end
  object frxImpPed: TfrxDBDataset
    UserName = 'frxImpPed'
    OnFirst = frxImpPedFirst
    OnNext = frxImpPedNext
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_Pedido=ID_Pedido'
      'Num_Pedido=Num_Pedido'
      'Nome_Via=Nome_Via'
      'Imp_Preco=Imp_Preco')
    DataSource = dsmImpPed
    BCDToCurrency = False
    Left = 1242
    Top = 156
  end
  object qEtiqImp: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT COUNT(1) CONTADOR'
      'FROM PEDIDO_ITEM I'
      'WHERE I.ID = :ID'
      '  AND I.talao_impresso = '#39'S'#39)
    SQLConnection = dmDatabase.scoDados
    Left = 1208
    Top = 536
    object qEtiqImpCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      Required = True
    end
  end
  object qProdForn2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_FORNECEDOR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_COR'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT PFOR.*'
      'FROM PRODUTO_FORN PFOR'
      'WHERE PFOR.ID = :ID'
      '  AND PFOR.ID_FORNECEDOR = :ID_FORNECEDOR'
      '  AND PFOR.ID_COR = :ID_COR')
    SQLConnection = dmDatabase.scoDados
    Left = 1184
    Top = 536
    object qProdForn2TAMANHO_CLIENTE: TStringField
      FieldName = 'TAMANHO_CLIENTE'
      Size = 10
    end
    object qProdForn2COD_COR_FORN: TStringField
      FieldName = 'COD_COR_FORN'
      Size = 10
    end
    object qProdForn2NOME_COR_FORN: TStringField
      FieldName = 'NOME_COR_FORN'
      Size = 100
    end
    object qProdForn2COD_MATERIAL_FORN: TStringField
      FieldName = 'COD_MATERIAL_FORN'
      Size = 60
    end
    object qProdForn2NOME_MATERIAL_FORN: TStringField
      FieldName = 'NOME_MATERIAL_FORN'
      Size = 100
    end
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select OPCAO_DTENTREGAPEDIDO'
      'from PARAMETROS ')
    SQLConnection = dmDatabase.scoDados
    Left = 1093
    Top = 487
    object qParametrosOPCAO_DTENTREGAPEDIDO: TStringField
      FieldName = 'OPCAO_DTENTREGAPEDIDO'
      FixedChar = True
      Size = 1
    end
  end
  object frxDuplicata: TfrxDBDataset
    UserName = 'frxDuplicata'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      '-TIPO_ES=TIPO_ES'
      '-FILIAL=FILIAL'
      '-ID_NOTA=ID_NOTA'
      'PARCELA=PARCELA'
      '-NUMDUPLICATA=NUMDUPLICATA'
      '-NUMNOTA=NUMNOTA'
      '-SERIE=SERIE'
      'DTVENCIMENTO=DTVENCIMENTO'
      'VLR_PARCELA=VLR_PARCELA'
      '-VLR_RESTANTE=VLR_RESTANTE'
      '-VLR_PAGO=VLR_PAGO'
      '-VLR_DEVOLUCAO=VLR_DEVOLUCAO'
      '-VLR_DESPESAS=VLR_DESPESAS'
      '-VLR_DESCONTO=VLR_DESCONTO'
      '-VLR_JUROSPAGOS=VLR_JUROSPAGOS'
      '-VLR_COMISSAO=VLR_COMISSAO'
      '-PERC_COMISSAO=PERC_COMISSAO'
      '-DTULTPAGAMENTO=DTULTPAGAMENTO'
      '-ID_PESSOA=ID_PESSOA'
      '-ID_CONTA=ID_CONTA'
      '-ID_TIPOCOBRANCA=ID_TIPOCOBRANCA'
      '-ID_VENDEDOR=ID_VENDEDOR'
      '-ID_CONTA_BOLETO=ID_CONTA_BOLETO'
      '-ID_COMISSAO=ID_COMISSAO'
      '-QTD_DIASATRASO=QTD_DIASATRASO'
      '-DTRECEBIMENTO_TITULO=DTRECEBIMENTO_TITULO'
      '-DTEMISSAO=DTEMISSAO'
      '-PAGO_CARTORIO=PAGO_CARTORIO'
      '-PROTESTADO=PROTESTADO'
      '-TIPO_LANCAMENTO=TIPO_LANCAMENTO'
      '-TRANSFERENCIA_ICMS=TRANSFERENCIA_ICMS'
      '-NOSSONUMERO=NOSSONUMERO'
      '-DTFINANCEIRO=DTFINANCEIRO'
      '-NUMCHEQUE=NUMCHEQUE'
      '-ACEITE=ACEITE'
      '-ARQUIVO_GERADO=ARQUIVO_GERADO'
      '-sdsDuplicata_Hist=sdsDuplicata_Hist'
      '-ID_COB_ELETRONICA=ID_COB_ELETRONICA'
      '-BOLETO_IMP=BOLETO_IMP'
      '-ID_CARTEIRA=ID_CARTEIRA'
      '-ID_BANCO=ID_BANCO'
      '-ID_CONTA_ORCAMENTO=ID_CONTA_ORCAMENTO'
      '-TIPO_MOV=TIPO_MOV'
      '-ID_PEDIDO=ID_PEDIDO'
      '-TITULO_CARTORIO=TITULO_CARTORIO'
      '-PERC_BASE_COMISSAO=PERC_BASE_COMISSAO'
      '-ID_TERMINAL=ID_TERMINAL'
      '-VLR_MULTA=VLR_MULTA')
    DataSet = cdsDuplicata
    BCDToCurrency = False
    Left = 1213
    Top = 155
  end
  object sdsTipo_Material: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TIPO_MATERIAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 856
    Top = 236
  end
  object dspTipo_Material: TDataSetProvider
    DataSet = sdsTipo_Material
    Left = 872
    Top = 236
  end
  object cdsTipo_Material: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTipo_Material'
    Left = 888
    Top = 236
    object cdsTipo_MaterialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTipo_MaterialNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsTipo_MaterialDENSIDADE: TFloatField
      FieldName = 'DENSIDADE'
    end
    object cdsTipo_MaterialVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsTipo_MaterialUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
  end
  object dsTipo_Material: TDataSource
    DataSet = cdsTipo_Material
    Left = 904
    Top = 236
  end
  object qPessoa_TipoMat: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_TIPO_MATERIAL'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM PESSOA_TIPOMAT'
      'WHERE CODIGO = :CODIGO'
      '  AND ID_TIPO_MATERIAL = :ID_TIPO_MATERIAL')
    SQLConnection = dmDatabase.scoDados
    Left = 1160
    Top = 536
    object qPessoa_TipoMatCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qPessoa_TipoMatITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qPessoa_TipoMatID_TIPO_MATERIAL: TIntegerField
      FieldName = 'ID_TIPO_MATERIAL'
    end
    object qPessoa_TipoMatESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
    end
  end
  object qTipoMat: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM TIPO_MATERIAL'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 1166
    Top = 438
    object qTipoMatID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qTipoMatNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object qTipoMatDENSIDADE: TFloatField
      FieldName = 'DENSIDADE'
    end
    object qTipoMatVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qTipoMatUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
  end
  object sdsTab_Preco: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_PRECO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 696
    Top = 192
  end
  object dspTab_Preco: TDataSetProvider
    DataSet = sdsTab_Preco
    Left = 712
    Top = 192
  end
  object cdsTab_Preco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTab_Preco'
    Left = 728
    Top = 192
    object cdsTab_PrecoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_PrecoNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object cdsTab_PrecoDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object cdsTab_PrecoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsTab_PrecoDTINICIAL: TDateField
      FieldName = 'DTINICIAL'
    end
    object cdsTab_PrecoDTFINAL: TDateField
      FieldName = 'DTFINAL'
    end
    object cdsTab_PrecoTABPROMOCIONAL: TStringField
      FieldName = 'TABPROMOCIONAL'
      FixedChar = True
      Size = 1
    end
  end
  object dsTab_Preco: TDataSource
    DataSet = cdsTab_Preco
    Left = 744
    Top = 192
  end
  object sdsConsumo_Comb: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT it.id_produto, it.id_cor, it.referencia, vf.nome_combinac' +
      'ao, VF.id_material,'#13#10'VF.id_cor_mat, VF.material, VF.nome_cor, SU' +
      'M(VF.qtd_consumo * IT.qtd_restante) QTD_CONSUMO,'#13#10'it.referencia ' +
      '|| '#39' '#39' || vf.nome_combinacao REF_COMB'#13#10'FROM PEDIDO_ITEM IT'#13#10'INNE' +
      'R JOIN vficha_tecnica_comb VF'#13#10'ON IT.ID_PRODUTO = VF.id'#13#10'AND IT.' +
      'id_cor = VF.id_cor_combinacao'#13#10'WHERE IT.ID = :ID'#13#10'GROUP BY it.id' +
      '_produto, it.id_cor, it.referencia, vf.nome_combinacao,'#13#10'VF.id_m' +
      'aterial, VF.id_cor_mat, VF.material, VF.nome_cor'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 848
    Top = 594
  end
  object dspConsumo_Comb: TDataSetProvider
    DataSet = sdsConsumo_Comb
    Left = 872
    Top = 594
  end
  object cdsConsumo_Comb: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'REFERENCIA;NOME_COMBINACAO;MATERIAL;NOME_COR'
    Params = <>
    ProviderName = 'dspConsumo_Comb'
    Left = 888
    Top = 594
    object cdsConsumo_CombID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsConsumo_CombID_COR_MAT: TFMTBCDField
      FieldName = 'ID_COR_MAT'
      Precision = 15
      Size = 0
    end
    object cdsConsumo_CombMATERIAL: TStringField
      FieldName = 'MATERIAL'
      Size = 100
    end
    object cdsConsumo_CombNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 60
    end
    object cdsConsumo_CombQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object cdsConsumo_CombID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsConsumo_CombID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object cdsConsumo_CombREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsConsumo_CombNOME_COMBINACAO: TStringField
      FieldName = 'NOME_COMBINACAO'
      Size = 50
    end
    object cdsConsumo_CombREF_COMB: TStringField
      FieldName = 'REF_COMB'
      Size = 71
    end
  end
  object dsConsumo_Comb: TDataSource
    DataSet = cdsConsumo_Comb
    Left = 904
    Top = 592
  end
  object frxConsumo_Comb: TfrxDBDataset
    UserName = 'frxConsumo_Comb'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_MATERIAL=ID_MATERIAL'
      'ID_COR_MAT=ID_COR_MAT'
      'MATERIAL=MATERIAL'
      'NOME_COR=NOME_COR'
      'QTD_CONSUMO=QTD_CONSUMO'
      'ID_PRODUTO=ID_PRODUTO'
      'ID_COR=ID_COR'
      'REFERENCIA=REFERENCIA'
      'NOME_COMBINACAO=NOME_COMBINACAO'
      'REF_COMB=REF_COMB')
    DataSource = dsConsumo_Comb
    BCDToCurrency = False
    Left = 1184
    Top = 156
  end
  object sdsprc_Atualiza_OS_Fat: TSQLDataSet
    CommandText = 'PRC_ATUALIZA_OS_FAT'
    CommandType = ctStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 1160
    Top = 63
  end
  object qPedOS: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT distinct i.id_os_serv'
      'FROM pedido_item I'
      'where I.ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 1069
    Top = 488
    object qPedOSID_OS_SERV: TIntegerField
      FieldName = 'ID_OS_SERV'
    end
  end
  object qFilial_Relatorio_Menu: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TIPO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT ID,ITEM,TIPO,CAMINHO,POSICAO,COALESCE(DESCRICAO,'#39'Personal' +
        'izado '#39' || posicao)DESCRICAO, GERAR_TAMANHO'
      'FROM FILIAL_RELATORIOS'
      'WHERE ID = :ID'
      '      AND TIPO = :TIPO'
      'ORDER BY POSICAO')
    SQLConnection = dmDatabase.scoDados
    Left = 1042
    Top = 487
    object qFilial_Relatorio_MenuID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qFilial_Relatorio_MenuITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qFilial_Relatorio_MenuTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object qFilial_Relatorio_MenuCAMINHO: TStringField
      FieldName = 'CAMINHO'
      Size = 150
    end
    object qFilial_Relatorio_MenuPOSICAO: TSmallintField
      FieldName = 'POSICAO'
    end
    object qFilial_Relatorio_MenuDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object qFilial_Relatorio_MenuGERAR_TAMANHO: TStringField
      FieldName = 'GERAR_TAMANHO'
      FixedChar = True
      Size = 1
    end
  end
  object qParametros_Ser: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT LIB_QTD_PEDIDO'
      'FROM PARAMETROS_SER')
    SQLConnection = dmDatabase.scoDados
    Left = 1016
    Top = 488
    object qParametros_SerLIB_QTD_PEDIDO: TStringField
      FieldName = 'LIB_QTD_PEDIDO'
      FixedChar = True
      Size = 1
    end
  end
  object qNCM_CST: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'UF'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT NCM.*, ICM.cod_cst'
      'FROM TAB_NCM_CST NCM'
      'LEFT JOIN TAB_CSTICMS ICM'
      'ON NCM.id_cst_icms = ICM.id'
      'WHERE NCM.ID = :ID'
      '  AND NCM.UF = :UF')
    SQLConnection = dmDatabase.scoDados
    Left = 992
    Top = 488
    object qNCM_CSTID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qNCM_CSTITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qNCM_CSTUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qNCM_CSTID_CST_ICMS: TIntegerField
      FieldName = 'ID_CST_ICMS'
    end
    object qNCM_CSTPERC_FCP: TFloatField
      FieldName = 'PERC_FCP'
    end
    object qNCM_CSTCOD_CST: TStringField
      FieldName = 'COD_CST'
      Size = 3
    end
  end
  object sdsTriCCusto: TSQLDataSet
    CommandText = 
      'SELECT P.ID, P.num_pedido, P.pedido_cliente, P.id_cliente_triang' +
      'ular,'#13#10'TRI.NOME NOME_TRIANGULAR, TRI.endereco END_TRI, TRI.compl' +
      'emento_end COMPL_TRI,'#13#10'TRI.bairro BAIRRO_TRI, TRI.cidade CID_TRI' +
      ', TRI.cep CEP_TRI, TRI.uf UF_TRI,'#13#10'TRI.num_end NUM_END_TRI, TRI.' +
      'nome_contato CONTATO_TRI, TRI.cnpj_cpf CNPJ_TRI,'#13#10'TRI.email_nfe ' +
      'EMAL_TRI, TRI.dddfone1 DDD_TRI, TRI.telefone1 FONE_TRI,'#13#10'TRI.ins' +
      'cr_est INSC_TRI,'#13#10'CASE'#13#10'  WHEN coalesce(TRI.endereco_pgto,'#39#39') = ' +
      #39#39' THEN tri.endereco'#13#10'  else TRI.endereco_pgto'#13#10'  end END_TRI_CO' +
      'B,'#13#10'CASE'#13#10'  WHEN coalesce(TRI.bairro_pgto,'#39#39') = '#39#39' THEN tri.bair' +
      'ro'#13#10'  else TRI.bairro_pgto'#13#10'  end BAIRRO_TRI_COB,'#13#10'CASE'#13#10'  WHEN ' +
      'coalesce(TRI.cidade_pgto,'#39#39') = '#39#39' THEN tri.cidade'#13#10'  else TRI.ci' +
      'dade_pgto'#13#10'  end CID_TRI_COB,'#13#10'CASE'#13#10'  WHEN coalesce(TRI.cep_pgt' +
      'o,'#39#39') = '#39#39' THEN tri.cep'#13#10'  else TRI.cep_pgto'#13#10'  end CEP_TRI_COB,' +
      #13#10'CASE'#13#10'  WHEN coalesce(TRI.num_end_pgto,'#39#39') = '#39#39' THEN TRI.num_e' +
      'nd'#13#10'  else TRI.num_end_pgto'#13#10'  end num_end_COB,'#13#10'CASE'#13#10'  WHEN co' +
      'alesce(TRI.complemento_end_pgto,'#39#39') = '#39#39' THEN TRI.complemento_en' +
      'd'#13#10'  else TRI.complemento_end_pgto'#13#10'  end COMPL_TRI_COB,'#13#10'CASE'#13#10 +
      '  WHEN coalesce(TRI.uf_pgto,'#39#39') = '#39#39' THEN TRI.uf'#13#10'  else TRI.uf_' +
      'pgto'#13#10'  end UF_TRI_COB,'#13#10#13#10'CC.descricao NOME_CCUSTO, CC.endereco' +
      ' END_CCUSTO, CC.complemento_end COMPL_CCUSTO,'#13#10'CC.bairro BAIRRO_' +
      'CCUSTO, CC.ID_CIDADE ID_CIDADE_CCUSTO, CC.cep CEP_CCUSTO,'#13#10'CC.uf' +
      ' UF_CCUSTO, CC.num_end NUM_END_CCUSTO, CID.NOME CID_CCUSTO, CC.N' +
      'UM_CONTRATO,'#13#10'CC.contato CONTATO_CCUSTO, CC.cnpj CNPJ_CCUSTO,'#13#10'C' +
      'C.email EMAIL_CCUSTO, CC.ddd DDD_CCUSTO , CC.fone FONE_CCUSTO , ' +
      'CC.email_comras, CC.contato_compras'#13#10'FROM PEDIDO P'#13#10'LEFT JOIN PE' +
      'SSOA TRI'#13#10'ON P.id_atelier = TRI.CODIGO'#13#10'LEFT JOIN CENTROCUSTO CC' +
      #13#10'ON P.ID_PROJETO = CC.ID'#13#10'LEFT JOIN CIDADE CID'#13#10'ON CC.ID_CIDADE' +
      ' = CID.ID'#13#10'WHERE P.ID = :ID'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 856
    Top = 152
  end
  object dspTriCCusto: TDataSetProvider
    DataSet = sdsTriCCusto
    Left = 872
    Top = 152
  end
  object cdsTriCCusto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTriCCusto'
    Left = 888
    Top = 152
    object cdsTriCCustoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTriCCustoNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsTriCCustoPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsTriCCustoID_CLIENTE_TRIANGULAR: TIntegerField
      FieldName = 'ID_CLIENTE_TRIANGULAR'
    end
    object cdsTriCCustoNOME_TRIANGULAR: TStringField
      FieldName = 'NOME_TRIANGULAR'
      Size = 60
    end
    object cdsTriCCustoEND_TRI: TStringField
      FieldName = 'END_TRI'
      Size = 60
    end
    object cdsTriCCustoCOMPL_TRI: TStringField
      FieldName = 'COMPL_TRI'
      Size = 60
    end
    object cdsTriCCustoBAIRRO_TRI: TStringField
      FieldName = 'BAIRRO_TRI'
      Size = 30
    end
    object cdsTriCCustoCID_TRI: TStringField
      FieldName = 'CID_TRI'
      Size = 40
    end
    object cdsTriCCustoCEP_TRI: TStringField
      FieldName = 'CEP_TRI'
      Size = 10
    end
    object cdsTriCCustoUF_TRI: TStringField
      FieldName = 'UF_TRI'
      FixedChar = True
      Size = 2
    end
    object cdsTriCCustoNUM_END_TRI: TStringField
      FieldName = 'NUM_END_TRI'
    end
    object cdsTriCCustoNOME_CCUSTO: TStringField
      FieldName = 'NOME_CCUSTO'
      Size = 50
    end
    object cdsTriCCustoEND_CCUSTO: TStringField
      FieldName = 'END_CCUSTO'
      Size = 60
    end
    object cdsTriCCustoCOMPL_CCUSTO: TStringField
      FieldName = 'COMPL_CCUSTO'
      Size = 40
    end
    object cdsTriCCustoBAIRRO_CCUSTO: TStringField
      FieldName = 'BAIRRO_CCUSTO'
      Size = 30
    end
    object cdsTriCCustoID_CIDADE_CCUSTO: TIntegerField
      FieldName = 'ID_CIDADE_CCUSTO'
    end
    object cdsTriCCustoCEP_CCUSTO: TStringField
      FieldName = 'CEP_CCUSTO'
      Size = 9
    end
    object cdsTriCCustoUF_CCUSTO: TStringField
      FieldName = 'UF_CCUSTO'
      Size = 2
    end
    object cdsTriCCustoNUM_END_CCUSTO: TStringField
      FieldName = 'NUM_END_CCUSTO'
      Size = 15
    end
    object cdsTriCCustoCID_CCUSTO: TStringField
      FieldName = 'CID_CCUSTO'
      Size = 40
    end
    object cdsTriCCustoNUM_CONTRATO: TStringField
      FieldName = 'NUM_CONTRATO'
      Size = 30
    end
    object cdsTriCCustoCONTATO_TRI: TStringField
      FieldName = 'CONTATO_TRI'
      Size = 40
    end
    object cdsTriCCustoCNPJ_TRI: TStringField
      FieldName = 'CNPJ_TRI'
    end
    object cdsTriCCustoEMAL_TRI: TStringField
      FieldName = 'EMAL_TRI'
      Size = 250
    end
    object cdsTriCCustoDDD_TRI: TIntegerField
      FieldName = 'DDD_TRI'
    end
    object cdsTriCCustoFONE_TRI: TStringField
      FieldName = 'FONE_TRI'
      Size = 15
    end
    object cdsTriCCustoCONTATO_CCUSTO: TStringField
      FieldName = 'CONTATO_CCUSTO'
      Size = 60
    end
    object cdsTriCCustoCNPJ_CCUSTO: TStringField
      FieldName = 'CNPJ_CCUSTO'
      Size = 18
    end
    object cdsTriCCustoEMAIL_CCUSTO: TStringField
      FieldName = 'EMAIL_CCUSTO'
      Size = 150
    end
    object cdsTriCCustoDDD_CCUSTO: TIntegerField
      FieldName = 'DDD_CCUSTO'
    end
    object cdsTriCCustoFONE_CCUSTO: TStringField
      FieldName = 'FONE_CCUSTO'
      Size = 10
    end
    object cdsTriCCustoINSC_TRI: TStringField
      FieldName = 'INSC_TRI'
      Size = 18
    end
    object cdsTriCCustoEND_TRI_COB: TStringField
      FieldName = 'END_TRI_COB'
      Size = 60
    end
    object cdsTriCCustoBAIRRO_TRI_COB: TStringField
      FieldName = 'BAIRRO_TRI_COB'
      Size = 30
    end
    object cdsTriCCustoCID_TRI_COB: TStringField
      FieldName = 'CID_TRI_COB'
      Size = 40
    end
    object cdsTriCCustoCEP_TRI_COB: TStringField
      FieldName = 'CEP_TRI_COB'
      Size = 10
    end
    object cdsTriCCustoNUM_END_COB: TStringField
      FieldName = 'NUM_END_COB'
    end
    object cdsTriCCustoCOMPL_TRI_COB: TStringField
      FieldName = 'COMPL_TRI_COB'
      Size = 60
    end
    object cdsTriCCustoUF_TRI_COB: TStringField
      FieldName = 'UF_TRI_COB'
      FixedChar = True
      Size = 2
    end
    object cdsTriCCustoCONTATO_COMPRAS: TStringField
      FieldName = 'CONTATO_COMPRAS'
      Size = 60
    end
    object cdsTriCCustoEMAIL_COMRAS: TStringField
      FieldName = 'EMAIL_COMRAS'
      Size = 150
    end
  end
  object dsTriCCusto: TDataSource
    DataSet = cdsTriCCusto
    Left = 904
    Top = 152
  end
  object frxTriCCusto: TfrxDBDataset
    UserName = 'frxTriCCusto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NUM_PEDIDO=NUM_PEDIDO'
      'PEDIDO_CLIENTE=PEDIDO_CLIENTE'
      'ID_CLIENTE_TRIANGULAR=ID_CLIENTE_TRIANGULAR'
      'NOME_TRIANGULAR=NOME_TRIANGULAR'
      'END_TRI=END_TRI'
      'COMPL_TRI=COMPL_TRI'
      'BAIRRO_TRI=BAIRRO_TRI'
      'CID_TRI=CID_TRI'
      'CEP_TRI=CEP_TRI'
      'UF_TRI=UF_TRI'
      'NUM_END_TRI=NUM_END_TRI'
      'NOME_CCUSTO=NOME_CCUSTO'
      'END_CCUSTO=END_CCUSTO'
      'COMPL_CCUSTO=COMPL_CCUSTO'
      'BAIRRO_CCUSTO=BAIRRO_CCUSTO'
      'ID_CIDADE_CCUSTO=ID_CIDADE_CCUSTO'
      'CEP_CCUSTO=CEP_CCUSTO'
      'UF_CCUSTO=UF_CCUSTO'
      'NUM_END_CCUSTO=NUM_END_CCUSTO'
      'CID_CCUSTO=CID_CCUSTO'
      'NUM_CONTRATO=NUM_CONTRATO'
      'CONTATO_TRI=CONTATO_TRI'
      'CNPJ_TRI=CNPJ_TRI'
      'EMAL_TRI=EMAL_TRI'
      'DDD_TRI=DDD_TRI'
      'FONE_TRI=FONE_TRI'
      'CONTATO_CCUSTO=CONTATO_CCUSTO'
      'CNPJ_CCUSTO=CNPJ_CCUSTO'
      'EMAIL_CCUSTO=EMAIL_CCUSTO'
      'DDD_CCUSTO=DDD_CCUSTO'
      'FONE_CCUSTO=FONE_CCUSTO'
      'INSC_TRI=INSC_TRI'
      'END_TRI_COB=END_TRI_COB'
      'BAIRRO_TRI_COB=BAIRRO_TRI_COB'
      'CID_TRI_COB=CID_TRI_COB'
      'CEP_TRI_COB=CEP_TRI_COB'
      'NUM_END_COB=NUM_END_COB'
      'COMPL_TRI_COB=COMPL_TRI_COB'
      'UF_TRI_COB=UF_TRI_COB'
      'EMAIL_COMRAS=EMAIL_COMRAS'
      'CONTATO_COMPRAS=CONTATO_COMPRAS')
    DataSource = dsTriCCusto
    BCDToCurrency = False
    Left = 1152
    Top = 156
  end
end
