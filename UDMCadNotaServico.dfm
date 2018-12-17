object DMCadNotaServico: TDMCadNotaServico
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 15
  Top = 32
  Height = 670
  Width = 1310
  object sdsNotaServico: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NOTASERVICO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 128
    Top = 5
    object sdsNotaServicoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNotaServicoNUMRPS: TIntegerField
      FieldName = 'NUMRPS'
    end
    object sdsNotaServicoSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object sdsNotaServicoTIPO_RPS: TStringField
      FieldName = 'TIPO_RPS'
      FixedChar = True
      Size = 1
    end
    object sdsNotaServicoID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
    end
    object sdsNotaServicoSTATUS_RPS: TStringField
      FieldName = 'STATUS_RPS'
      FixedChar = True
      Size = 1
    end
    object sdsNotaServicoNUMRPS_SUBSTITUIDO: TIntegerField
      FieldName = 'NUMRPS_SUBSTITUIDO'
    end
    object sdsNotaServicoSERIE_SUBSTITUIDO: TStringField
      FieldName = 'SERIE_SUBSTITUIDO'
      Size = 5
    end
    object sdsNotaServicoTIPO_SUBSTITUIDO: TStringField
      FieldName = 'TIPO_SUBSTITUIDO'
      FixedChar = True
      Size = 1
    end
    object sdsNotaServicoVLR_SERVICOS: TFloatField
      FieldName = 'VLR_SERVICOS'
    end
    object sdsNotaServicoVLR_DEDUCOES: TFloatField
      FieldName = 'VLR_DEDUCOES'
    end
    object sdsNotaServicoVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
    end
    object sdsNotaServicoVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
    end
    object sdsNotaServicoVLR_INSS: TFloatField
      FieldName = 'VLR_INSS'
    end
    object sdsNotaServicoVLR_IR: TFloatField
      FieldName = 'VLR_IR'
    end
    object sdsNotaServicoVLR_CSLL: TFloatField
      FieldName = 'VLR_CSLL'
    end
    object sdsNotaServicoISS_RETIDO: TStringField
      FieldName = 'ISS_RETIDO'
      FixedChar = True
      Size = 1
    end
    object sdsNotaServicoVLR_ISS: TFloatField
      FieldName = 'VLR_ISS'
    end
    object sdsNotaServicoVLR_ISS_RETIDO: TFloatField
      FieldName = 'VLR_ISS_RETIDO'
    end
    object sdsNotaServicoVLR_OUTRAS_RETENCOES: TFloatField
      FieldName = 'VLR_OUTRAS_RETENCOES'
    end
    object sdsNotaServicoBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object sdsNotaServicoPERC_ALIQUOTA: TFloatField
      FieldName = 'PERC_ALIQUOTA'
    end
    object sdsNotaServicoVLR_LIQUIDO_NFSE: TFloatField
      FieldName = 'VLR_LIQUIDO_NFSE'
    end
    object sdsNotaServicoVLR_DESCONTO_INC: TFloatField
      FieldName = 'VLR_DESCONTO_INC'
    end
    object sdsNotaServicoVLR_DESCONTO_COND: TFloatField
      FieldName = 'VLR_DESCONTO_COND'
    end
    object sdsNotaServicoID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object sdsNotaServicoDISCRIMINACAO: TMemoField
      FieldName = 'DISCRIMINACAO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsNotaServicoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsNotaServicoID_INTERMEDIARIO_SERVICO: TIntegerField
      FieldName = 'ID_INTERMEDIARIO_SERVICO'
    end
    object sdsNotaServicoCODIGO_OBRA: TStringField
      FieldName = 'CODIGO_OBRA'
      Size = 15
    end
    object sdsNotaServicoART: TStringField
      FieldName = 'ART'
      Size = 15
    end
    object sdsNotaServicoCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Size = 50
    end
    object sdsNotaServicoPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Size = 50
    end
    object sdsNotaServicoRECIBO: TStringField
      FieldName = 'RECIBO'
      Size = 50
    end
    object sdsNotaServicoID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object sdsNotaServicoPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object sdsNotaServicoVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object sdsNotaServicoID_TIPO_COBRANCA: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA'
    end
    object sdsNotaServicoTIPO_PRAZO: TStringField
      FieldName = 'TIPO_PRAZO'
      FixedChar = True
      Size = 1
    end
    object sdsNotaServicoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsNotaServicoID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object sdsNotaServicoDTINICIO_DUPLICATA: TDateField
      FieldName = 'DTINICIO_DUPLICATA'
    end
    object sdsNotaServicoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsNotaServicoHOMOLOGACAO: TStringField
      FieldName = 'HOMOLOGACAO'
      FixedChar = True
      Size = 1
    end
    object sdsNotaServicoNUMLOTE: TIntegerField
      FieldName = 'NUMLOTE'
    end
    object sdsNotaServicoDTRECEBIMENTO_RET: TStringField
      FieldName = 'DTRECEBIMENTO_RET'
    end
    object sdsNotaServicoCOD_CANCELAMENTO: TIntegerField
      FieldName = 'COD_CANCELAMENTO'
    end
    object sdsNotaServicoMOTIVO_CANCELAMENTO: TStringField
      FieldName = 'MOTIVO_CANCELAMENTO'
      Size = 100
    end
    object sdsNotaServicoID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object sdsNotaServicoDT_EMISSAO_RET: TStringField
      FieldName = 'DT_EMISSAO_RET'
    end
    object sdsNotaServicoCOD_AUTENCIDADE_RET: TStringField
      FieldName = 'COD_AUTENCIDADE_RET'
      Size = 15
    end
    object sdsNotaServicoCNAE_NFSE: TStringField
      FieldName = 'CNAE_NFSE'
      Size = 7
    end
    object sdsNotaServicoXML: TMemoField
      FieldName = 'XML'
      BlobType = ftMemo
      Size = 1
    end
    object sdsNotaServicoRETEM_CSLL: TStringField
      FieldName = 'RETEM_CSLL'
      FixedChar = True
      Size = 1
    end
    object sdsNotaServicoRETEM_PISCOFINS: TStringField
      FieldName = 'RETEM_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object sdsNotaServicoRETEM_INSS: TStringField
      FieldName = 'RETEM_INSS'
      FixedChar = True
      Size = 1
    end
    object sdsNotaServicoDTEMISSAO: TSQLTimeStampField
      FieldName = 'DTEMISSAO'
    end
    object sdsNotaServicoDTEMISSAO_CAD: TDateField
      FieldName = 'DTEMISSAO_CAD'
    end
    object sdsNotaServicoID_ATIVIDADE_CID: TIntegerField
      FieldName = 'ID_ATIVIDADE_CID'
    end
    object sdsNotaServicoPERC_INSS: TFloatField
      FieldName = 'PERC_INSS'
    end
    object sdsNotaServicoPERC_IR: TFloatField
      FieldName = 'PERC_IR'
    end
    object sdsNotaServicoVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object sdsNotaServicoBASE_INSS: TFloatField
      FieldName = 'BASE_INSS'
    end
    object sdsNotaServicoPERC_CSRF: TFloatField
      FieldName = 'PERC_CSRF'
    end
    object sdsNotaServicoVLR_CSRF: TFloatField
      FieldName = 'VLR_CSRF'
    end
    object sdsNotaServicoBASE_CSRF: TFloatField
      FieldName = 'BASE_CSRF'
    end
    object sdsNotaServicoDIMINUIR_RETENCAO: TStringField
      FieldName = 'DIMINUIR_RETENCAO'
      FixedChar = True
      Size = 1
    end
    object sdsNotaServicoID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
    end
    object sdsNotaServicoEMAIL_ENVIADO: TStringField
      FieldName = 'EMAIL_ENVIADO'
      FixedChar = True
      Size = 1
    end
    object sdsNotaServicoPERC_TRIBUTO: TFloatField
      FieldName = 'PERC_TRIBUTO'
    end
    object sdsNotaServicoVLR_TRIBUTO: TFloatField
      FieldName = 'VLR_TRIBUTO'
    end
    object sdsNotaServicoPERC_REDUCAO_INSS: TFloatField
      FieldName = 'PERC_REDUCAO_INSS'
    end
    object sdsNotaServicoANO_REF: TIntegerField
      FieldName = 'ANO_REF'
    end
    object sdsNotaServicoMES_REF: TIntegerField
      FieldName = 'MES_REF'
    end
    object sdsNotaServicoID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object sdsNotaServicoNUM_CONTRATO: TIntegerField
      FieldName = 'NUM_CONTRATO'
    end
    object sdsNotaServicoBASE_IR: TFloatField
      FieldName = 'BASE_IR'
    end
    object sdsNotaServicoBASE_PISCOFINS: TFloatField
      FieldName = 'BASE_PISCOFINS'
    end
    object sdsNotaServicoBASE_CSLL: TFloatField
      FieldName = 'BASE_CSLL'
    end
    object sdsNotaServicoID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object sdsNotaServicoID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsNotaServicoPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsNotaServicoVLR_OUTRAS_DESPESAS: TFloatField
      FieldName = 'VLR_OUTRAS_DESPESAS'
    end
    object sdsNotaServicoID_CIDADE_TRIB: TIntegerField
      FieldName = 'ID_CIDADE_TRIB'
    end
    object sdsNotaServicoPERC_TRIBUTO_ESTADUAL: TFloatField
      FieldName = 'PERC_TRIBUTO_ESTADUAL'
    end
    object sdsNotaServicoPERC_TRIBUTO_MUNICIPAL: TFloatField
      FieldName = 'PERC_TRIBUTO_MUNICIPAL'
    end
    object sdsNotaServicoVLR_TRIBUTO_ESTADUAL: TFloatField
      FieldName = 'VLR_TRIBUTO_ESTADUAL'
    end
    object sdsNotaServicoVLR_TRIBUTO_MUNICIPAL: TFloatField
      FieldName = 'VLR_TRIBUTO_MUNICIPAL'
    end
    object sdsNotaServicoVLR_TRIBUTO_FEDERAL: TFloatField
      FieldName = 'VLR_TRIBUTO_FEDERAL'
    end
    object sdsNotaServicoPERC_TRIBUTO_FEDERAL: TFloatField
      FieldName = 'PERC_TRIBUTO_FEDERAL'
    end
    object sdsNotaServicoVERSAO_TRIBUTO: TStringField
      FieldName = 'VERSAO_TRIBUTO'
      Size = 15
    end
    object sdsNotaServicoFONTE_TRIBUTO: TStringField
      FieldName = 'FONTE_TRIBUTO'
      Size = 30
    end
    object sdsNotaServicoNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object sdsNotaServicoANO_CONTRATO: TIntegerField
      FieldName = 'ANO_CONTRATO'
    end
    object sdsNotaServicoNOME_CLIENTE_CONS: TStringField
      FieldName = 'NOME_CLIENTE_CONS'
      Size = 60
    end
    object sdsNotaServicoIBPT_CHAVE: TStringField
      FieldName = 'IBPT_CHAVE'
    end
    object sdsNotaServicoDTCANCELAMENTO: TDateField
      FieldName = 'DTCANCELAMENTO'
    end
    object sdsNotaServicoTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object sdsNotaServicoTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      Size = 3
    end
    object sdsNotaServicoDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object sdsNotaServicoVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object sdsNotaServicoPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object sdsNotaServicoPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object sdsNotaServicoVLR_PIS_CALC: TFloatField
      FieldName = 'VLR_PIS_CALC'
    end
    object sdsNotaServicoVLR_COFINS_CALC: TFloatField
      FieldName = 'VLR_COFINS_CALC'
    end
  end
  object dspNotaServico: TDataSetProvider
    DataSet = sdsNotaServico
    OnUpdateError = dspNotaServicoUpdateError
    Left = 184
    Top = 5
  end
  object cdsNotaServico: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspNotaServico'
    BeforePost = cdsNotaServicoBeforePost
    OnNewRecord = cdsNotaServicoNewRecord
    Left = 232
    Top = 8
    object cdsNotaServicoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaServicoNUMRPS: TIntegerField
      FieldName = 'NUMRPS'
    end
    object cdsNotaServicoSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object cdsNotaServicoTIPO_RPS: TStringField
      FieldName = 'TIPO_RPS'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServicoID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
    end
    object cdsNotaServicoSTATUS_RPS: TStringField
      FieldName = 'STATUS_RPS'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServicoNUMRPS_SUBSTITUIDO: TIntegerField
      FieldName = 'NUMRPS_SUBSTITUIDO'
    end
    object cdsNotaServicoSERIE_SUBSTITUIDO: TStringField
      FieldName = 'SERIE_SUBSTITUIDO'
      Size = 5
    end
    object cdsNotaServicoTIPO_SUBSTITUIDO: TStringField
      FieldName = 'TIPO_SUBSTITUIDO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServicoVLR_SERVICOS: TFloatField
      FieldName = 'VLR_SERVICOS'
      DisplayFormat = '0.00'
    end
    object cdsNotaServicoVLR_DEDUCOES: TFloatField
      FieldName = 'VLR_DEDUCOES'
      DisplayFormat = '0.00'
    end
    object cdsNotaServicoVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
      DisplayFormat = '0.00'
    end
    object cdsNotaServicoVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
      DisplayFormat = '0.00'
    end
    object cdsNotaServicoVLR_INSS: TFloatField
      FieldName = 'VLR_INSS'
      DisplayFormat = '0.00'
    end
    object cdsNotaServicoVLR_IR: TFloatField
      FieldName = 'VLR_IR'
      DisplayFormat = '0.00'
    end
    object cdsNotaServicoVLR_CSLL: TFloatField
      FieldName = 'VLR_CSLL'
      DisplayFormat = '0.00'
    end
    object cdsNotaServicoISS_RETIDO: TStringField
      FieldName = 'ISS_RETIDO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServicoVLR_ISS: TFloatField
      FieldName = 'VLR_ISS'
      DisplayFormat = '0.00'
    end
    object cdsNotaServicoVLR_ISS_RETIDO: TFloatField
      FieldName = 'VLR_ISS_RETIDO'
      DisplayFormat = '0.00'
    end
    object cdsNotaServicoVLR_OUTRAS_RETENCOES: TFloatField
      FieldName = 'VLR_OUTRAS_RETENCOES'
      DisplayFormat = '0.00'
    end
    object cdsNotaServicoBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
      DisplayFormat = '0.00'
    end
    object cdsNotaServicoPERC_ALIQUOTA: TFloatField
      FieldName = 'PERC_ALIQUOTA'
      DisplayFormat = '0.00'
    end
    object cdsNotaServicoVLR_LIQUIDO_NFSE: TFloatField
      FieldName = 'VLR_LIQUIDO_NFSE'
      DisplayFormat = '0.00'
    end
    object cdsNotaServicoVLR_DESCONTO_INC: TFloatField
      FieldName = 'VLR_DESCONTO_INC'
      DisplayFormat = '0.00'
    end
    object cdsNotaServicoVLR_DESCONTO_COND: TFloatField
      FieldName = 'VLR_DESCONTO_COND'
      DisplayFormat = '0.00'
    end
    object cdsNotaServicoID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object cdsNotaServicoDISCRIMINACAO: TMemoField
      FieldName = 'DISCRIMINACAO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsNotaServicoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsNotaServicoID_INTERMEDIARIO_SERVICO: TIntegerField
      FieldName = 'ID_INTERMEDIARIO_SERVICO'
    end
    object cdsNotaServicoCODIGO_OBRA: TStringField
      FieldName = 'CODIGO_OBRA'
      Size = 15
    end
    object cdsNotaServicoART: TStringField
      FieldName = 'ART'
      Size = 15
    end
    object cdsNotaServicoCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Size = 50
    end
    object cdsNotaServicoPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Size = 50
    end
    object cdsNotaServicoRECIBO: TStringField
      FieldName = 'RECIBO'
      Size = 50
    end
    object cdsNotaServicoID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsNotaServicoPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object cdsNotaServicoVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
      DisplayFormat = '0.00'
    end
    object cdsNotaServicoID_TIPO_COBRANCA: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA'
    end
    object cdsNotaServicoTIPO_PRAZO: TStringField
      FieldName = 'TIPO_PRAZO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServicoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsNotaServicoID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object cdsNotaServicoDTINICIO_DUPLICATA: TDateField
      FieldName = 'DTINICIO_DUPLICATA'
    end
    object cdsNotaServicoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsNotaServicoHOMOLOGACAO: TStringField
      FieldName = 'HOMOLOGACAO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServicosdsNotaServico_Parc: TDataSetField
      FieldName = 'sdsNotaServico_Parc'
    end
    object cdsNotaServicosdsNotaServico_Itens: TDataSetField
      FieldName = 'sdsNotaServico_Itens'
    end
    object cdsNotaServicoNUMLOTE: TIntegerField
      FieldName = 'NUMLOTE'
    end
    object cdsNotaServicoDTRECEBIMENTO_RET: TStringField
      FieldName = 'DTRECEBIMENTO_RET'
    end
    object cdsNotaServicoCOD_CANCELAMENTO: TIntegerField
      FieldName = 'COD_CANCELAMENTO'
    end
    object cdsNotaServicoMOTIVO_CANCELAMENTO: TStringField
      FieldName = 'MOTIVO_CANCELAMENTO'
      Size = 100
    end
    object cdsNotaServicoID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsNotaServicoDT_EMISSAO_RET: TStringField
      FieldName = 'DT_EMISSAO_RET'
    end
    object cdsNotaServicoCOD_AUTENCIDADE_RET: TStringField
      FieldName = 'COD_AUTENCIDADE_RET'
      Size = 15
    end
    object cdsNotaServicoCNAE_NFSE: TStringField
      FieldName = 'CNAE_NFSE'
      Size = 7
    end
    object cdsNotaServicoXML: TMemoField
      FieldName = 'XML'
      BlobType = ftMemo
      Size = 1
    end
    object cdsNotaServicoRETEM_CSLL: TStringField
      FieldName = 'RETEM_CSLL'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServicoRETEM_PISCOFINS: TStringField
      FieldName = 'RETEM_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServicoRETEM_INSS: TStringField
      FieldName = 'RETEM_INSS'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServicoDTEMISSAO: TSQLTimeStampField
      FieldName = 'DTEMISSAO'
    end
    object cdsNotaServicoDTEMISSAO_CAD: TDateField
      FieldName = 'DTEMISSAO_CAD'
    end
    object cdsNotaServicoID_ATIVIDADE_CID: TIntegerField
      FieldName = 'ID_ATIVIDADE_CID'
    end
    object cdsNotaServicoPERC_INSS: TFloatField
      FieldName = 'PERC_INSS'
      DisplayFormat = '0.00'
    end
    object cdsNotaServicoPERC_IR: TFloatField
      FieldName = 'PERC_IR'
      DisplayFormat = '0.00'
    end
    object cdsNotaServicoVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
      DisplayFormat = '0.00'
    end
    object cdsNotaServicoBASE_INSS: TFloatField
      FieldName = 'BASE_INSS'
      DisplayFormat = '0.00'
    end
    object cdsNotaServicoPERC_CSRF: TFloatField
      FieldName = 'PERC_CSRF'
    end
    object cdsNotaServicoVLR_CSRF: TFloatField
      FieldName = 'VLR_CSRF'
    end
    object cdsNotaServicoBASE_CSRF: TFloatField
      FieldName = 'BASE_CSRF'
      DisplayFormat = '0.00'
    end
    object cdsNotaServicoDIMINUIR_RETENCAO: TStringField
      FieldName = 'DIMINUIR_RETENCAO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServicoID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
    end
    object cdsNotaServicoEMAIL_ENVIADO: TStringField
      FieldName = 'EMAIL_ENVIADO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServicoPERC_TRIBUTO: TFloatField
      FieldName = 'PERC_TRIBUTO'
      DisplayFormat = '0.00'
    end
    object cdsNotaServicoVLR_TRIBUTO: TFloatField
      FieldName = 'VLR_TRIBUTO'
      DisplayFormat = '0.00'
    end
    object cdsNotaServicoPERC_REDUCAO_INSS: TFloatField
      FieldName = 'PERC_REDUCAO_INSS'
    end
    object cdsNotaServicoANO_REF: TIntegerField
      FieldName = 'ANO_REF'
    end
    object cdsNotaServicoMES_REF: TIntegerField
      FieldName = 'MES_REF'
    end
    object cdsNotaServicoID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object cdsNotaServicoNUM_CONTRATO: TIntegerField
      FieldName = 'NUM_CONTRATO'
    end
    object cdsNotaServicoBASE_IR: TFloatField
      FieldName = 'BASE_IR'
      DisplayFormat = '0.00'
    end
    object cdsNotaServicoBASE_PISCOFINS: TFloatField
      FieldName = 'BASE_PISCOFINS'
      DisplayFormat = '0.00'
    end
    object cdsNotaServicoBASE_CSLL: TFloatField
      FieldName = 'BASE_CSLL'
      DisplayFormat = '0.00'
    end
    object cdsNotaServicoID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsNotaServicoID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsNotaServicoPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsNotaServicoVLR_OUTRAS_DESPESAS: TFloatField
      FieldName = 'VLR_OUTRAS_DESPESAS'
    end
    object cdsNotaServicoID_CIDADE_TRIB: TIntegerField
      FieldName = 'ID_CIDADE_TRIB'
    end
    object cdsNotaServicoPERC_TRIBUTO_ESTADUAL: TFloatField
      FieldName = 'PERC_TRIBUTO_ESTADUAL'
    end
    object cdsNotaServicoPERC_TRIBUTO_MUNICIPAL: TFloatField
      FieldName = 'PERC_TRIBUTO_MUNICIPAL'
    end
    object cdsNotaServicoVLR_TRIBUTO_ESTADUAL: TFloatField
      FieldName = 'VLR_TRIBUTO_ESTADUAL'
    end
    object cdsNotaServicoVLR_TRIBUTO_MUNICIPAL: TFloatField
      FieldName = 'VLR_TRIBUTO_MUNICIPAL'
    end
    object cdsNotaServicoVLR_TRIBUTO_FEDERAL: TFloatField
      FieldName = 'VLR_TRIBUTO_FEDERAL'
    end
    object cdsNotaServicoPERC_TRIBUTO_FEDERAL: TFloatField
      FieldName = 'PERC_TRIBUTO_FEDERAL'
    end
    object cdsNotaServicoVERSAO_TRIBUTO: TStringField
      FieldName = 'VERSAO_TRIBUTO'
      Size = 15
    end
    object cdsNotaServicoFONTE_TRIBUTO: TStringField
      FieldName = 'FONTE_TRIBUTO'
      Size = 30
    end
    object cdsNotaServicoNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsNotaServicoANO_CONTRATO: TIntegerField
      FieldName = 'ANO_CONTRATO'
    end
    object cdsNotaServicoNOME_CLIENTE_CONS: TStringField
      FieldName = 'NOME_CLIENTE_CONS'
      Size = 60
    end
    object cdsNotaServicosdsNotaServico_Contrato: TDataSetField
      FieldName = 'sdsNotaServico_Contrato'
    end
    object cdsNotaServicoIBPT_CHAVE: TStringField
      FieldName = 'IBPT_CHAVE'
    end
    object cdsNotaServicoDTCANCELAMENTO: TDateField
      FieldName = 'DTCANCELAMENTO'
    end
    object cdsNotaServicoTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServicoTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      Size = 3
    end
    object cdsNotaServicoDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object cdsNotaServicoVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object cdsNotaServicoPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object cdsNotaServicoPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object cdsNotaServicoVLR_PIS_CALC: TFloatField
      FieldName = 'VLR_PIS_CALC'
    end
    object cdsNotaServicoVLR_COFINS_CALC: TFloatField
      FieldName = 'VLR_COFINS_CALC'
    end
  end
  object dsNotaServico: TDataSource
    DataSet = cdsNotaServico
    Left = 280
    Top = 5
  end
  object dsNotaServico_Mestre: TDataSource
    DataSet = sdsNotaServico
    Left = 64
    Top = 41
  end
  object sdsNotaServico_Parc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NOTASERVICO_PARC'#13#10'WHERE ID = :ID'#13#10
    DataSource = dsNotaServico_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 120
    Top = 147
    object sdsNotaServico_ParcID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaServico_ParcITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaServico_ParcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object sdsNotaServico_ParcVLR_VENCIMENTO: TFloatField
      FieldName = 'VLR_VENCIMENTO'
    end
    object sdsNotaServico_ParcID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object sdsNotaServico_ParcID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
  end
  object CDSNotaServico_Parc: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNotaServicosdsNotaServico_Parc
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 176
    Top = 147
    object CDSNotaServico_ParcID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSNotaServico_ParcITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSNotaServico_ParcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object CDSNotaServico_ParcVLR_VENCIMENTO: TFloatField
      FieldName = 'VLR_VENCIMENTO'
      DisplayFormat = '0.00'
    end
    object CDSNotaServico_ParcID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object CDSNotaServico_ParcID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object CDSNotaServico_ParclkNome_TipoCobranca: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNome_TipoCobranca'
      LookupDataSet = cdsTipoCobranca
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'ID_TIPOCOBRANCA'
      Size = 40
      Lookup = True
    end
    object CDSNotaServico_ParclkNome_Conta: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNome_Conta'
      LookupDataSet = cdsContas
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'ID_CONTA'
      Size = 40
      Lookup = True
    end
  end
  object dsNotaServico_Parc: TDataSource
    DataSet = CDSNotaServico_Parc
    Left = 248
    Top = 147
  end
  object sdsCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PESSOA'#13#10'WHERE INATIVO = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 616
    Top = 8
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 648
    Top = 8
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCliente'
    Left = 688
    Top = 8
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
    object cdsClientePESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsClienteID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsClienteUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsClienteID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsClienteID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsClienteID_CONTABOLETO: TIntegerField
      FieldName = 'ID_CONTABOLETO'
    end
    object cdsClienteID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsClienteID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object cdsClientePERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsClienteTP_CLIENTE: TStringField
      FieldName = 'TP_CLIENTE'
      Size = 1
    end
    object cdsClienteRETEM_ISS: TStringField
      FieldName = 'RETEM_ISS'
      FixedChar = True
      Size = 1
    end
    object cdsClienteRETEM_CSLL: TStringField
      FieldName = 'RETEM_CSLL'
      FixedChar = True
      Size = 1
    end
    object cdsClienteRETEM_PISCOFINS: TStringField
      FieldName = 'RETEM_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object cdsClienteRETEM_INSS: TStringField
      FieldName = 'RETEM_INSS'
      FixedChar = True
      Size = 1
    end
    object cdsClienteORGAO_PUBLICO: TStringField
      FieldName = 'ORGAO_PUBLICO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
    end
    object cdsClienteDIMINUIR_RETENCAO: TStringField
      FieldName = 'DIMINUIR_RETENCAO'
      FixedChar = True
      Size = 1
    end
    object cdsClientePERC_REDUCAO_INSS: TFloatField
      FieldName = 'PERC_REDUCAO_INSS'
    end
    object cdsClienteID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object cdsClienteID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsClienteVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object cdsClienteCLIENTE_CONTA_ID: TIntegerField
      FieldName = 'CLIENTE_CONTA_ID'
    end
    object cdsClienteEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 250
    end
    object cdsClienteEMAIL_NFE2: TStringField
      FieldName = 'EMAIL_NFE2'
      Size = 150
    end
    object cdsClienteEMAIL_PGTO: TStringField
      FieldName = 'EMAIL_PGTO'
      Size = 150
    end
    object cdsClienteCOBRAR_TAXA_BANCO: TStringField
      FieldName = 'COBRAR_TAXA_BANCO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteVLR_LIMITE_CREDITO: TFloatField
      FieldName = 'VLR_LIMITE_CREDITO'
    end
    object cdsClienteMDIA1: TIntegerField
      FieldName = 'MDIA1'
    end
    object cdsClienteMDIA2: TIntegerField
      FieldName = 'MDIA2'
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 728
    Top = 8
  end
  object sdsNotaServico_Consulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT NS.*, CLI.NOME NOME_CLIENTE, FIL.NOME_INTERNO FANTASIA_FI' +
      'LIAL, PR.NOME NOME_PROVEDOR, CLI.CNPJ_CPF,'#13#10'CLI.PESSOA,'#13#10'  (SELE' +
      'CT MIN(P.dtvencimento) DTVENCIMENTO'#13#10'     FROM notaservico_parc ' +
      'P'#13#10'      WHERE P.ID = NS.ID)'#13#10'FROM NOTASERVICO NS'#13#10'INNER JOIN PE' +
      'SSOA CLI'#13#10'  ON NS.ID_CLIENTE = CLI.CODIGO'#13#10'INNER JOIN FILIAL FIL' +
      #13#10'ON NS.FILIAL = FIL.ID'#13#10'LEFT JOIN CIDADE CID'#13#10'ON CID.ID = FIL.I' +
      'D_CIDADE'#13#10'LEFT JOIN PROVEDOR PR'#13#10'ON CID.ID_PROVEDOR = PR.ID'#13#10#13#10#13 +
      #10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 400
    Top = 8
  end
  object dspNotaServico_Consulta: TDataSetProvider
    DataSet = sdsNotaServico_Consulta
    Left = 432
    Top = 8
  end
  object cdsNotaServico_Consulta: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'FILIAL;SERIE;NUMNOTA'
    Params = <>
    ProviderName = 'dspNotaServico_Consulta'
    Left = 472
    Top = 8
    object cdsNotaServico_ConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaServico_ConsultaNUMRPS: TIntegerField
      FieldName = 'NUMRPS'
    end
    object cdsNotaServico_ConsultaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object cdsNotaServico_ConsultaTIPO_RPS: TStringField
      FieldName = 'TIPO_RPS'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ConsultaNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsNotaServico_ConsultaID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
    end
    object cdsNotaServico_ConsultaSTATUS_RPS: TStringField
      FieldName = 'STATUS_RPS'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ConsultaNUMRPS_SUBSTITUIDO: TIntegerField
      FieldName = 'NUMRPS_SUBSTITUIDO'
    end
    object cdsNotaServico_ConsultaSERIE_SUBSTITUIDO: TStringField
      FieldName = 'SERIE_SUBSTITUIDO'
      Size = 5
    end
    object cdsNotaServico_ConsultaTIPO_SUBSTITUIDO: TStringField
      FieldName = 'TIPO_SUBSTITUIDO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ConsultaVLR_SERVICOS: TFloatField
      FieldName = 'VLR_SERVICOS'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ConsultaVLR_DEDUCOES: TFloatField
      FieldName = 'VLR_DEDUCOES'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ConsultaVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ConsultaVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ConsultaVLR_INSS: TFloatField
      FieldName = 'VLR_INSS'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ConsultaVLR_IR: TFloatField
      FieldName = 'VLR_IR'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ConsultaVLR_CSLL: TFloatField
      FieldName = 'VLR_CSLL'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ConsultaISS_RETIDO: TStringField
      FieldName = 'ISS_RETIDO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ConsultaVLR_ISS: TFloatField
      FieldName = 'VLR_ISS'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ConsultaVLR_ISS_RETIDO: TFloatField
      FieldName = 'VLR_ISS_RETIDO'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ConsultaVLR_OUTRAS_RETENCOES: TFloatField
      FieldName = 'VLR_OUTRAS_RETENCOES'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ConsultaBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object cdsNotaServico_ConsultaPERC_ALIQUOTA: TFloatField
      FieldName = 'PERC_ALIQUOTA'
    end
    object cdsNotaServico_ConsultaVLR_LIQUIDO_NFSE: TFloatField
      FieldName = 'VLR_LIQUIDO_NFSE'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ConsultaVLR_DESCONTO_INC: TFloatField
      FieldName = 'VLR_DESCONTO_INC'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ConsultaVLR_DESCONTO_COND: TFloatField
      FieldName = 'VLR_DESCONTO_COND'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ConsultaID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object cdsNotaServico_ConsultaDISCRIMINACAO: TMemoField
      FieldName = 'DISCRIMINACAO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsNotaServico_ConsultaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsNotaServico_ConsultaID_INTERMEDIARIO_SERVICO: TIntegerField
      FieldName = 'ID_INTERMEDIARIO_SERVICO'
    end
    object cdsNotaServico_ConsultaCODIGO_OBRA: TStringField
      FieldName = 'CODIGO_OBRA'
      Size = 15
    end
    object cdsNotaServico_ConsultaART: TStringField
      FieldName = 'ART'
      Size = 15
    end
    object cdsNotaServico_ConsultaCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Size = 50
    end
    object cdsNotaServico_ConsultaPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Size = 50
    end
    object cdsNotaServico_ConsultaRECIBO: TStringField
      FieldName = 'RECIBO'
      Size = 50
    end
    object cdsNotaServico_ConsultaID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsNotaServico_ConsultaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsNotaServico_ConsultaPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ConsultaVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ConsultaID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object cdsNotaServico_ConsultaID_TIPO_COBRANCA: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA'
    end
    object cdsNotaServico_ConsultaTIPO_PRAZO: TStringField
      FieldName = 'TIPO_PRAZO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ConsultaDTINICIO_DUPLICATA: TDateField
      FieldName = 'DTINICIO_DUPLICATA'
    end
    object cdsNotaServico_ConsultaVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ConsultaHOMOLOGACAO: TStringField
      FieldName = 'HOMOLOGACAO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ConsultaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsNotaServico_ConsultaNUMLOTE: TIntegerField
      FieldName = 'NUMLOTE'
    end
    object cdsNotaServico_ConsultaDTRECEBIMENTO_RET: TStringField
      FieldName = 'DTRECEBIMENTO_RET'
    end
    object cdsNotaServico_ConsultaCOD_CANCELAMENTO: TIntegerField
      FieldName = 'COD_CANCELAMENTO'
    end
    object cdsNotaServico_ConsultaMOTIVO_CANCELAMENTO: TStringField
      FieldName = 'MOTIVO_CANCELAMENTO'
      Size = 100
    end
    object cdsNotaServico_ConsultaID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsNotaServico_ConsultaDT_EMISSAO_RET: TStringField
      FieldName = 'DT_EMISSAO_RET'
    end
    object cdsNotaServico_ConsultaCOD_AUTENCIDADE_RET: TStringField
      FieldName = 'COD_AUTENCIDADE_RET'
      Size = 15
    end
    object cdsNotaServico_ConsultaDTEMISSAO: TSQLTimeStampField
      FieldName = 'DTEMISSAO'
    end
    object cdsNotaServico_ConsultaCNAE_NFSE: TStringField
      FieldName = 'CNAE_NFSE'
      Size = 7
    end
    object cdsNotaServico_ConsultaXML: TMemoField
      FieldName = 'XML'
      BlobType = ftMemo
      Size = 1
    end
    object cdsNotaServico_ConsultaRETEM_CSLL: TStringField
      FieldName = 'RETEM_CSLL'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ConsultaRETEM_PISCOFINS: TStringField
      FieldName = 'RETEM_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ConsultaRETEM_INSS: TStringField
      FieldName = 'RETEM_INSS'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ConsultaDTEMISSAO_CAD: TDateField
      FieldName = 'DTEMISSAO_CAD'
    end
    object cdsNotaServico_ConsultaVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ConsultaID_ATIVIDADE_CID: TIntegerField
      FieldName = 'ID_ATIVIDADE_CID'
    end
    object cdsNotaServico_ConsultaPERC_INSS: TFloatField
      FieldName = 'PERC_INSS'
    end
    object cdsNotaServico_ConsultaPERC_IR: TFloatField
      FieldName = 'PERC_IR'
    end
    object cdsNotaServico_ConsultaBASE_INSS: TFloatField
      FieldName = 'BASE_INSS'
    end
    object cdsNotaServico_ConsultaFANTASIA_FILIAL: TStringField
      FieldName = 'FANTASIA_FILIAL'
      Size = 30
    end
    object cdsNotaServico_ConsultaEMAIL_ENVIADO: TStringField
      FieldName = 'EMAIL_ENVIADO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ConsultaPERC_TRIBUTO: TFloatField
      FieldName = 'PERC_TRIBUTO'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ConsultaVLR_TRIBUTO: TFloatField
      FieldName = 'VLR_TRIBUTO'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ConsultaDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object cdsNotaServico_ConsultaNOME_PROVEDOR: TStringField
      FieldName = 'NOME_PROVEDOR'
      Size = 40
    end
    object cdsNotaServico_ConsultaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsNotaServico_ConsultaPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ConsultaDTCANCELAMENTO: TDateField
      FieldName = 'DTCANCELAMENTO'
    end
    object cdsNotaServico_ConsultaDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
  end
  object dsNotaServico_Consulta: TDataSource
    DataSet = cdsNotaServico_Consulta
    Left = 512
    Top = 8
  end
  object qProximaRPS: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SERIE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT MAX(NUMRPS) NUMRPS'
      'FROM NOTASERVICO'
      'WHERE FILIAL = :FILIAL'
      '    AND SERIE = :SERIE'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 1112
    Top = 160
    object qProximaRPSNUMRPS: TIntegerField
      FieldName = 'NUMRPS'
    end
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT FIL.*, NAT.CODIGO COD_NATUREZA, PRO.TIPO_NATUREZA, PRO.NO' +
      'ME NOME_PROVEDOR,'#13#10'SER.CODIGO COD_SERVICO_SINT, RT.CODIGO COD_RE' +
      'GIME_TIB_ESP, CID.CODMUNICIPIO, PRO.TIPO_RETORNO,'#13#10'PRO.mostrar_a' +
      'liquota_pd, PRO.inf_cod_servico, CID.LINKNFSE, CID.FONE_PREFEITU' +
      'RA, CID.SITE_PREFEITURA,'#13#10'CID.END_LOGO_PREFEITURA, PRO.usa_ativi' +
      'dade_cid_serv, CID.CANCELAMENTO_NFSE'#13#10'FROM FILIAL FIL'#13#10'LEFT JOIN' +
      ' NFSE_NATUREZA NAT ON (FIL.ID_NATUREZA = NAT.ID)'#13#10'LEFT JOIN SERV' +
      'ICO SER ON (FIL.ID_SERVICO_SINT = SER.ID)'#13#10'LEFT JOIN REGIME_TRIB' +
      ' RT ON (FIL.ID_REGIME_TRIB_NFSE = RT.ID)'#13#10'LEFT JOIN CIDADE CID O' +
      'N (FIL.ID_CIDADE = CID.ID)'#13#10'LEFT JOIN PROVEDOR PRO ON (CID.ID_PR' +
      'OVEDOR = PRO.ID)'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 608
    Top = 169
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 640
    Top = 169
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 680
    Top = 169
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
    object cdsFilialPRINCIPAL: TStringField
      FieldName = 'PRINCIPAL'
      FixedChar = True
      Size = 1
    end
    object cdsFilialLIBERADO_ATE: TStringField
      FieldName = 'LIBERADO_ATE'
      Size = 18
    end
    object cdsFilialULTIMO_ACESSO: TStringField
      FieldName = 'ULTIMO_ACESSO'
      Size = 18
    end
    object cdsFilialUSARICMSSIMPLES: TStringField
      FieldName = 'USARICMSSIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsFilialSERIENORMAL: TStringField
      FieldName = 'SERIENORMAL'
      Size = 3
    end
    object cdsFilialID_REGIME_TRIB_NFSE: TIntegerField
      FieldName = 'ID_REGIME_TRIB_NFSE'
    end
    object cdsFilialINCENTIVO_CULTURAL: TStringField
      FieldName = 'INCENTIVO_CULTURAL'
      FixedChar = True
      Size = 1
    end
    object cdsFilialSERIE_NFSE: TStringField
      FieldName = 'SERIE_NFSE'
      Size = 5
    end
    object cdsFilialID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
    end
    object cdsFilialCOD_NATUREZA: TStringField
      FieldName = 'COD_NATUREZA'
      FixedChar = True
      Size = 1
    end
    object cdsFilialTIPO_NATUREZA: TStringField
      FieldName = 'TIPO_NATUREZA'
      FixedChar = True
      Size = 1
    end
    object cdsFilialNOME_PROVEDOR: TStringField
      FieldName = 'NOME_PROVEDOR'
      Size = 40
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
    object cdsFilialPERC_IR: TFloatField
      FieldName = 'PERC_IR'
    end
    object cdsFilialVLR_IR_MINIMO: TFloatField
      FieldName = 'VLR_IR_MINIMO'
    end
    object cdsFilialPERC_ISS: TFloatField
      FieldName = 'PERC_ISS'
    end
    object cdsFilialCOD_REGIME_TIB_ESP: TIntegerField
      FieldName = 'COD_REGIME_TIB_ESP'
    end
    object cdsFilialCOD_TRIBUTACAO_MUNICIPIO: TStringField
      FieldName = 'COD_TRIBUTACAO_MUNICIPIO'
    end
    object cdsFilialCODMUNICIPIO: TStringField
      FieldName = 'CODMUNICIPIO'
      Size = 7
    end
    object cdsFilialNUMLOTE: TIntegerField
      FieldName = 'NUMLOTE'
    end
    object cdsFilialTIPO_RETORNO: TStringField
      FieldName = 'TIPO_RETORNO'
      Size = 1
    end
    object cdsFilialENDLOGO_NFSE: TStringField
      FieldName = 'ENDLOGO_NFSE'
      Size = 200
    end
    object cdsFilialPERC_CSLL: TFloatField
      FieldName = 'PERC_CSLL'
    end
    object cdsFilialMOSTRAR_ALIQUOTA_PD: TStringField
      FieldName = 'MOSTRAR_ALIQUOTA_PD'
      FixedChar = True
      Size = 1
    end
    object cdsFilialINF_COD_SERVICO: TStringField
      FieldName = 'INF_COD_SERVICO'
      FixedChar = True
      Size = 1
    end
    object cdsFilialCNAE_NFSE: TStringField
      FieldName = 'CNAE_NFSE'
      Size = 7
    end
    object cdsFilialLINKNFSE: TStringField
      FieldName = 'LINKNFSE'
      Size = 200
    end
    object cdsFilialFONE_PREFEITURA: TStringField
      FieldName = 'FONE_PREFEITURA'
      Size = 15
    end
    object cdsFilialSITE_PREFEITURA: TStringField
      FieldName = 'SITE_PREFEITURA'
      Size = 200
    end
    object cdsFilialEND_LOGO_PREFEITURA: TStringField
      FieldName = 'END_LOGO_PREFEITURA'
      Size = 250
    end
    object cdsFilialPERC_INSS: TFloatField
      FieldName = 'PERC_INSS'
    end
    object cdsFilialID_ATIVIDADE_CID: TIntegerField
      FieldName = 'ID_ATIVIDADE_CID'
    end
    object cdsFilialNFSE_HOMOLOGACAO: TStringField
      FieldName = 'NFSE_HOMOLOGACAO'
      FixedChar = True
      Size = 1
    end
    object cdsFilialPERC_CSRF: TFloatField
      FieldName = 'PERC_CSRF'
    end
    object cdsFilialVLR_FATURAMENTO_MES_CSRF: TFloatField
      FieldName = 'VLR_FATURAMENTO_MES_CSRF'
    end
    object cdsFilialPERC_TRIB_SERV: TFloatField
      FieldName = 'PERC_TRIB_SERV'
    end
    object cdsFilialIMPRESSAO_MATRICIAL: TStringField
      FieldName = 'IMPRESSAO_MATRICIAL'
      FixedChar = True
      Size = 1
    end
    object cdsFilialUSA_ATIVIDADE_CID_SERV: TStringField
      FieldName = 'USA_ATIVIDADE_CID_SERV'
      FixedChar = True
      Size = 1
    end
    object cdsFilialsdsFilialRelatorios: TDataSetField
      FieldName = 'sdsFilialRelatorios'
    end
    object cdsFilialVLR_CSRF_MINIMO: TFloatField
      FieldName = 'VLR_CSRF_MINIMO'
    end
    object cdsFilialLOCALSERVIDORNFE: TStringField
      FieldName = 'LOCALSERVIDORNFE'
      Size = 100
    end
    object cdsFilialINCENTIVO_FISCAL: TStringField
      FieldName = 'INCENTIVO_FISCAL'
      FixedChar = True
      Size = 1
    end
    object cdsFilialPERC_ISS_SIMPLES: TFloatField
      FieldName = 'PERC_ISS_SIMPLES'
    end
    object cdsFilialCANCELAMENTO_NFSE: TStringField
      FieldName = 'CANCELAMENTO_NFSE'
      FixedChar = True
      Size = 1
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 720
    Top = 169
  end
  object sdsTipoCobranca: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TIPOCOBRANCA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 616
    Top = 271
  end
  object dspTipoCobranca: TDataSetProvider
    DataSet = sdsTipoCobranca
    Left = 648
    Top = 271
  end
  object cdsTipoCobranca: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspTipoCobranca'
    Left = 688
    Top = 271
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
    Left = 728
    Top = 271
  end
  object sdsContas: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT C.ID, C.NOME, C.VLR_TAXA, C.agencia, C.numconta, C.dig_co' +
      'nta, C.dig_agencia'#13#10'FROM CONTAS C'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 616
    Top = 318
  end
  object dspContas: TDataSetProvider
    DataSet = sdsContas
    Left = 648
    Top = 318
  end
  object cdsContas: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspContas'
    Left = 688
    Top = 318
    object cdsContasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsContasNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsContasVLR_TAXA: TFloatField
      FieldName = 'VLR_TAXA'
    end
    object cdsContasAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 5
    end
    object cdsContasNUMCONTA: TStringField
      FieldName = 'NUMCONTA'
      Size = 12
    end
    object cdsContasDIG_CONTA: TStringField
      FieldName = 'DIG_CONTA'
      Size = 1
    end
    object cdsContasDIG_AGENCIA: TStringField
      FieldName = 'DIG_AGENCIA'
      Size = 1
    end
  end
  object dsContas: TDataSource
    DataSet = cdsContas
    Left = 728
    Top = 318
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
    Left = 128
    Top = 430
  end
  object dspServico: TDataSetProvider
    DataSet = sdsServico
    Left = 160
    Top = 430
  end
  object cdsServico: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspServico'
    Left = 200
    Top = 430
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
    Left = 240
    Top = 430
  end
  object sdsParametros: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT IMPRESSAO_MATRICIAL,'#13#10'USA_VENDEDOR,'#13#10'ID_CLIENTE_CONSUMIDO' +
      'R,'#13#10'NFSE_RETEN_PIS,'#13#10'DECISAO,'#13#10'CONTROLAR_MENSAL_CSRF,'#13#10'LEI_TRANS' +
      'PARENCIA_SERVICO,'#13#10'TIPO_LEI_TRANSPARENCIA,'#13#10'USA_ANO_CONTRATO,'#13#10'U' +
      'SA_RECIBO_NFSE,'#13#10'IMP_MESANO_REF_NOITEM_NFSE,'#13#10'OBS_SIMPLES,'#13#10'IMP_' +
      'TIPO_TRIBUTOS_SERVICO,'#13#10'IMP_PERC_TRIB_SERVICO,'#13#10'USA_COPIA_OS_NFS' +
      'E,'#13#10'ID_CONTA_PADRAO,'#13#10'ID_TIPO_COBRANCA_PADRAO,'#13#10'ALERTA_VLR_ATRAS' +
      'O,'#13#10'USA_LIMITE_CREDITO,'#13#10'SENHA_CREDITO,'#13#10'ID_CONTA_ORC_SERVICO,'#13#10 +
      'USA_CONTA_ORCAMENTO,'#13#10'USA_BOLETO_ACBR,'#13#10'USA_ENVIO_EMAIL_CATEGORI' +
      'A,'#13#10'ENDXMLNFSE,'#13#10'ENDPDFNFSE,'#13#10'IMPRESSORA_CAMINHO,'#13#10'CONTROLAR_ISS' +
      'QN_RET,'#13#10'LOCALSERVIDORNFE'#13#10'FROM PARAMETROS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 616
    Top = 373
  end
  object dspParametros: TDataSetProvider
    DataSet = sdsParametros
    Left = 648
    Top = 373
  end
  object cdsParametros: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspParametros'
    Left = 688
    Top = 376
    object cdsParametrosIMPRESSAO_MATRICIAL: TStringField
      FieldName = 'IMPRESSAO_MATRICIAL'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_VENDEDOR: TStringField
      FieldName = 'USA_VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosID_CLIENTE_CONSUMIDOR: TIntegerField
      FieldName = 'ID_CLIENTE_CONSUMIDOR'
    end
    object cdsParametrosNFSE_RETEN_PIS: TStringField
      FieldName = 'NFSE_RETEN_PIS'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosDECISAO: TStringField
      FieldName = 'DECISAO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosCONTROLAR_MENSAL_CSRF: TStringField
      FieldName = 'CONTROLAR_MENSAL_CSRF'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosLEI_TRANSPARENCIA_SERVICO: TStringField
      FieldName = 'LEI_TRANSPARENCIA_SERVICO'
      FixedChar = True
      Size = 2
    end
    object cdsParametrosTIPO_LEI_TRANSPARENCIA: TStringField
      FieldName = 'TIPO_LEI_TRANSPARENCIA'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_ANO_CONTRATO: TStringField
      FieldName = 'USA_ANO_CONTRATO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_RECIBO_NFSE: TStringField
      FieldName = 'USA_RECIBO_NFSE'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosIMP_MESANO_REF_NOITEM_NFSE: TStringField
      FieldName = 'IMP_MESANO_REF_NOITEM_NFSE'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosOBS_SIMPLES: TStringField
      FieldName = 'OBS_SIMPLES'
      Size = 250
    end
    object cdsParametrosIMP_TIPO_TRIBUTOS_SERVICO: TStringField
      FieldName = 'IMP_TIPO_TRIBUTOS_SERVICO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosIMP_PERC_TRIB_SERVICO: TStringField
      FieldName = 'IMP_PERC_TRIB_SERVICO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_COPIA_OS_NFSE: TStringField
      FieldName = 'USA_COPIA_OS_NFSE'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosID_CONTA_PADRAO: TIntegerField
      FieldName = 'ID_CONTA_PADRAO'
    end
    object cdsParametrosID_TIPO_COBRANCA_PADRAO: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA_PADRAO'
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
    object cdsParametrosID_CONTA_ORC_SERVICO: TIntegerField
      FieldName = 'ID_CONTA_ORC_SERVICO'
    end
    object cdsParametrosUSA_CONTA_ORCAMENTO: TStringField
      FieldName = 'USA_CONTA_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_BOLETO_ACBR: TStringField
      FieldName = 'USA_BOLETO_ACBR'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_ENVIO_EMAIL_CATEGORIA: TStringField
      FieldName = 'USA_ENVIO_EMAIL_CATEGORIA'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosENDXMLNFSE: TStringField
      FieldName = 'ENDXMLNFSE'
      Size = 250
    end
    object cdsParametrosENDPDFNFSE: TStringField
      FieldName = 'ENDPDFNFSE'
      Size = 250
    end
    object cdsParametrosIMPRESSORA_CAMINHO: TStringField
      FieldName = 'IMPRESSORA_CAMINHO'
      Size = 100
    end
    object cdsParametrosCONTROLAR_ISSQN_RET: TStringField
      FieldName = 'CONTROLAR_ISSQN_RET'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosLOCALSERVIDORNFE: TStringField
      FieldName = 'LOCALSERVIDORNFE'
      Size = 100
    end
  end
  object sdsCondPgto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CONDPGTO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 834
    Top = 124
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
    object sdsCondPgtoIMPRIMIR_NFSE: TStringField
      FieldName = 'IMPRIMIR_NFSE'
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
    object sdsCondPgtoENTRADA: TStringField
      FieldName = 'ENTRADA'
      FixedChar = True
      Size = 1
    end
    object sdsCondPgtoPERC_ENTRADA: TFloatField
      FieldName = 'PERC_ENTRADA'
    end
  end
  object dspCondPgto: TDataSetProvider
    DataSet = sdsCondPgto
    Left = 866
    Top = 124
  end
  object cdsCondPgto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCondPgto'
    Left = 906
    Top = 124
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
    object cdsCondPgtoIMPRIMIR_NFSE: TStringField
      FieldName = 'IMPRIMIR_NFSE'
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
    object cdsCondPgtoENTRADA: TStringField
      FieldName = 'ENTRADA'
      FixedChar = True
      Size = 1
    end
    object cdsCondPgtosdsCondPgto_Dia: TDataSetField
      FieldName = 'sdsCondPgto_Dia'
    end
    object cdsCondPgtoPERC_ENTRADA: TFloatField
      FieldName = 'PERC_ENTRADA'
    end
  end
  object dsCondPgto: TDataSource
    DataSet = cdsCondPgto
    Left = 946
    Top = 124
  end
  object dsCondPgto_Mestre: TDataSource
    DataSet = sdsCondPgto
    Left = 832
    Top = 168
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
    Left = 864
    Top = 224
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
    object sdsCondPgto_DiaPERC_PARCELA: TFloatField
      FieldName = 'PERC_PARCELA'
    end
  end
  object cdsCondPgto_Dia: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCondPgtosdsCondPgto_Dia
    Params = <>
    Left = 912
    Top = 224
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
    object cdsCondPgto_DiaPERC_PARCELA: TFloatField
      FieldName = 'PERC_PARCELA'
    end
  end
  object sdsNFe_Email: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NFE_EMAIL'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 840
    Top = 282
  end
  object dspNFe_Email: TDataSetProvider
    DataSet = sdsNFe_Email
    Left = 880
    Top = 282
  end
  object cdsNFe_Email: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspNFe_Email'
    Left = 912
    Top = 282
    object cdsNFe_EmailID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNFe_EmailNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsNFe_EmailEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 200
    end
  end
  object dsNFe_Email: TDataSource
    DataSet = cdsNFe_Email
    Left = 952
    Top = 282
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
    Left = 1112
    Top = 61
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
  object sdsDuplicata: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM DUPLICATA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 864
    Top = 336
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
    object sdsDuplicataIMP_BOLETO: TStringField
      FieldName = 'IMP_BOLETO'
      FixedChar = True
      Size = 1
    end
    object sdsDuplicataNUM_REMESSA: TIntegerField
      FieldName = 'NUM_REMESSA'
    end
    object sdsDuplicataID_NOTA_SERVICO: TIntegerField
      FieldName = 'ID_NOTA_SERVICO'
    end
    object sdsDuplicataDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object sdsDuplicataNUMRPS: TIntegerField
      FieldName = 'NUMRPS'
    end
    object sdsDuplicataID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object sdsDuplicataTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      FixedChar = True
      Size = 1
    end
    object sdsDuplicataANO_REF: TIntegerField
      FieldName = 'ANO_REF'
    end
    object sdsDuplicataMES_REF: TIntegerField
      FieldName = 'MES_REF'
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
    Left = 904
    Top = 336
  end
  object cdsDuplicata: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspDuplicata'
    BeforePost = cdsDuplicataBeforePost
    OnNewRecord = cdsDuplicataNewRecord
    OnReconcileError = cdsDuplicataReconcileError
    Left = 952
    Top = 336
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
    end
    object cdsDuplicataVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
    end
    object cdsDuplicataVLR_PAGO: TFloatField
      FieldName = 'VLR_PAGO'
    end
    object cdsDuplicataVLR_DEVOLUCAO: TFloatField
      FieldName = 'VLR_DEVOLUCAO'
    end
    object cdsDuplicataVLR_DESPESAS: TFloatField
      FieldName = 'VLR_DESPESAS'
    end
    object cdsDuplicataVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object cdsDuplicataVLR_JUROSPAGOS: TFloatField
      FieldName = 'VLR_JUROSPAGOS'
    end
    object cdsDuplicataVLR_COMISSAO: TFloatField
      FieldName = 'VLR_COMISSAO'
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
    object cdsDuplicataIMP_BOLETO: TStringField
      FieldName = 'IMP_BOLETO'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataNUM_REMESSA: TIntegerField
      FieldName = 'NUM_REMESSA'
    end
    object cdsDuplicataID_NOTA_SERVICO: TIntegerField
      FieldName = 'ID_NOTA_SERVICO'
    end
    object cdsDuplicataDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object cdsDuplicataNUMRPS: TIntegerField
      FieldName = 'NUMRPS'
    end
    object cdsDuplicataID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsDuplicataTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataANO_REF: TIntegerField
      FieldName = 'ANO_REF'
    end
    object cdsDuplicataMES_REF: TIntegerField
      FieldName = 'MES_REF'
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
    Left = 816
    Top = 376
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
    Left = 888
    Top = 392
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
      Size = 70
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
    OnReconcileError = cdsDuplicata_HistReconcileError
    Left = 960
    Top = 392
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
      Size = 70
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
  object qVerificaNota: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMRPS'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID, NUMNOTA, NUMRPS, STATUS_RPS'
      'FROM NOTASERVICO'
      'WHERE FILIAL = :FILIAL'
      '      AND NUMRPS = :NUMRPS')
    SQLConnection = dmDatabase.scoDados
    Left = 1112
    Top = 208
    object qVerificaNotaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qVerificaNotaNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object qVerificaNotaNUMRPS: TIntegerField
      FieldName = 'NUMRPS'
    end
    object qVerificaNotaSTATUS_RPS: TStringField
      FieldName = 'STATUS_RPS'
      FixedChar = True
      Size = 1
    end
  end
  object sdsCidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CID.*, PRO.TIPO_NATUREZA'#13#10'FROM CIDADE CID'#13#10'LEFT JOIN PROV' +
      'EDOR PRO'#13#10'ON CID.ID_PROVEDOR = PRO.ID'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 834
    Top = 60
  end
  object dspCidade: TDataSetProvider
    DataSet = sdsCidade
    Left = 866
    Top = 60
  end
  object cdsCidade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCidade'
    Left = 906
    Top = 60
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
    object cdsCidadeTIPO_NATUREZA: TStringField
      FieldName = 'TIPO_NATUREZA'
      FixedChar = True
      Size = 1
    end
    object cdsCidadeCANCELAMENTO_NFSE: TStringField
      FieldName = 'CANCELAMENTO_NFSE'
      FixedChar = True
      Size = 1
    end
  end
  object dsCidade: TDataSource
    DataSet = cdsCidade
    Left = 946
    Top = 60
  end
  object sdsNatureza: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NFSE_NATUREZA'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 386
    Top = 348
  end
  object dspNatureza: TDataSetProvider
    DataSet = sdsNatureza
    Left = 418
    Top = 348
  end
  object cdsNatureza: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspNatureza'
    Left = 458
    Top = 348
    object cdsNaturezaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNaturezaID_PROVEDOR: TIntegerField
      FieldName = 'ID_PROVEDOR'
    end
    object cdsNaturezaCODIGO: TStringField
      FieldName = 'CODIGO'
      FixedChar = True
      Size = 1
    end
    object cdsNaturezaNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object cdsNaturezaTRIBUTACAO_DF: TStringField
      FieldName = 'TRIBUTACAO_DF'
      FixedChar = True
      Size = 1
    end
    object cdsNaturezaRETER_ISSQN: TStringField
      FieldName = 'RETER_ISSQN'
      FixedChar = True
      Size = 1
    end
    object cdsNaturezaMOSTRAR_BASE_ISSQN: TStringField
      FieldName = 'MOSTRAR_BASE_ISSQN'
      FixedChar = True
      Size = 1
    end
    object cdsNaturezaUSA_CIDADE_CLI: TStringField
      FieldName = 'USA_CIDADE_CLI'
      FixedChar = True
      Size = 1
    end
  end
  object dsNatureza: TDataSource
    DataSet = cdsNatureza
    Left = 498
    Top = 348
  end
  object sdsServico_Int: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM SERVICO_INT'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 128
    Top = 382
  end
  object dspServico_Int: TDataSetProvider
    DataSet = sdsServico_Int
    Left = 160
    Top = 382
  end
  object cdsServico_Int: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspServico_Int'
    Left = 200
    Top = 382
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
    end
    object cdsServico_IntCODIGO_NBS: TStringField
      FieldName = 'CODIGO_NBS'
      Size = 10
    end
  end
  object dsServico_Int: TDataSource
    DataSet = cdsServico_Int
    Left = 240
    Top = 382
  end
  object sdsNotaServico_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NOTASERVICO_ITENS'#13#10'WHERE ID = :ID'
    DataSource = dsNotaServico_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 120
    Top = 99
    object sdsNotaServico_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaServico_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaServico_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsNotaServico_ItensVLR_DEDUCOES: TFloatField
      FieldName = 'VLR_DEDUCOES'
    end
    object sdsNotaServico_ItensVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
    end
    object sdsNotaServico_ItensVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
    end
    object sdsNotaServico_ItensVLR_INSS: TFloatField
      FieldName = 'VLR_INSS'
    end
    object sdsNotaServico_ItensVLR_IR: TFloatField
      FieldName = 'VLR_IR'
    end
    object sdsNotaServico_ItensVLR_CSLL: TFloatField
      FieldName = 'VLR_CSLL'
    end
    object sdsNotaServico_ItensISS_RETIDO: TStringField
      FieldName = 'ISS_RETIDO'
      FixedChar = True
      Size = 1
    end
    object sdsNotaServico_ItensVLR_ISS: TFloatField
      FieldName = 'VLR_ISS'
    end
    object sdsNotaServico_ItensVLR_ISS_RETIDO: TFloatField
      FieldName = 'VLR_ISS_RETIDO'
    end
    object sdsNotaServico_ItensVLR_OUTRAS_RETENCOES: TFloatField
      FieldName = 'VLR_OUTRAS_RETENCOES'
    end
    object sdsNotaServico_ItensBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object sdsNotaServico_ItensPERC_ALIQUOTA: TFloatField
      FieldName = 'PERC_ALIQUOTA'
    end
    object sdsNotaServico_ItensVLR_LIQUIDO_NFSE: TFloatField
      FieldName = 'VLR_LIQUIDO_NFSE'
    end
    object sdsNotaServico_ItensVLR_DESCONTO_INC: TFloatField
      FieldName = 'VLR_DESCONTO_INC'
    end
    object sdsNotaServico_ItensVLR_DESCONTO_COND: TFloatField
      FieldName = 'VLR_DESCONTO_COND'
    end
    object sdsNotaServico_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsNotaServico_ItensVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsNotaServico_ItensGERAR_DUPLICATA: TStringField
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object sdsNotaServico_ItensVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object sdsNotaServico_ItensID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object sdsNotaServico_ItensNOME_SERVICO_INT: TStringField
      FieldName = 'NOME_SERVICO_INT'
      Size = 300
    end
    object sdsNotaServico_ItensSOMAR_DIMINUIR: TStringField
      FieldName = 'SOMAR_DIMINUIR'
      FixedChar = True
      Size = 1
    end
    object sdsNotaServico_ItensCALCULAR_INSS: TStringField
      FieldName = 'CALCULAR_INSS'
      FixedChar = True
      Size = 1
    end
    object sdsNotaServico_ItensCALCULAR_ISSQN: TStringField
      FieldName = 'CALCULAR_ISSQN'
      FixedChar = True
      Size = 1
    end
    object sdsNotaServico_ItensCALCULAR_PISCOFINS: TStringField
      FieldName = 'CALCULAR_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object sdsNotaServico_ItensCALCULAR_CSLL: TStringField
      FieldName = 'CALCULAR_CSLL'
      FixedChar = True
      Size = 1
    end
    object sdsNotaServico_ItensCALCULAR_IR: TStringField
      FieldName = 'CALCULAR_IR'
      FixedChar = True
      Size = 1
    end
    object sdsNotaServico_ItensPERC_TRIBUTO: TFloatField
      FieldName = 'PERC_TRIBUTO'
    end
    object sdsNotaServico_ItensVLR_TRIBUTO: TFloatField
      FieldName = 'VLR_TRIBUTO'
    end
    object sdsNotaServico_ItensCODIGO_NBS: TStringField
      FieldName = 'CODIGO_NBS'
      Size = 10
    end
    object sdsNotaServico_ItensBASE_INSS: TFloatField
      FieldName = 'BASE_INSS'
    end
    object sdsNotaServico_ItensPERC_TRIBUTO_FEDERAL: TFloatField
      FieldName = 'PERC_TRIBUTO_FEDERAL'
    end
    object sdsNotaServico_ItensPERC_TRIBUTO_ESTADUAL: TFloatField
      FieldName = 'PERC_TRIBUTO_ESTADUAL'
    end
    object sdsNotaServico_ItensPERC_TRIBUTO_MUNICIPAL: TFloatField
      FieldName = 'PERC_TRIBUTO_MUNICIPAL'
    end
    object sdsNotaServico_ItensVLR_TRIBUTO_FEDERAL: TFloatField
      FieldName = 'VLR_TRIBUTO_FEDERAL'
    end
    object sdsNotaServico_ItensVLR_TRIBUTO_ESTADUAL: TFloatField
      FieldName = 'VLR_TRIBUTO_ESTADUAL'
    end
    object sdsNotaServico_ItensVLR_TRIBUTO_MUNICIPAL: TFloatField
      FieldName = 'VLR_TRIBUTO_MUNICIPAL'
    end
    object sdsNotaServico_ItensID_MOV_SERVICO_EXTRA: TIntegerField
      FieldName = 'ID_MOV_SERVICO_EXTRA'
    end
    object sdsNotaServico_ItensID_OS_SIMPLES: TIntegerField
      FieldName = 'ID_OS_SIMPLES'
    end
    object sdsNotaServico_ItensITEM_OS_SIMPLES: TIntegerField
      FieldName = 'ITEM_OS_SIMPLES'
    end
    object sdsNotaServico_ItensNUM_OS_SIMPLES: TIntegerField
      FieldName = 'NUM_OS_SIMPLES'
    end
    object sdsNotaServico_ItensID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object sdsNotaServico_ItensANO_CONTRATO: TIntegerField
      FieldName = 'ANO_CONTRATO'
    end
    object sdsNotaServico_ItensNUM_CONTRATO: TIntegerField
      FieldName = 'NUM_CONTRATO'
    end
    object sdsNotaServico_ItensID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object sdsNotaServico_ItensITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object sdsNotaServico_ItensPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object sdsNotaServico_ItensNUM_OS_PED: TStringField
      FieldName = 'NUM_OS_PED'
      Size = 30
    end
    object sdsNotaServico_ItensTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsNotaServico_ItensVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object sdsNotaServico_ItensVLR_PIS_CALC: TFloatField
      FieldName = 'VLR_PIS_CALC'
    end
    object sdsNotaServico_ItensVLR_COFINS_CALC: TFloatField
      FieldName = 'VLR_COFINS_CALC'
    end
  end
  object cdsNotaServico_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNotaServicosdsNotaServico_Itens
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    BeforePost = cdsNotaServico_ItensBeforePost
    OnNewRecord = cdsNotaServico_ItensNewRecord
    Left = 176
    Top = 99
    object cdsNotaServico_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaServico_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaServico_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ItensVLR_DEDUCOES: TFloatField
      FieldName = 'VLR_DEDUCOES'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ItensVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ItensVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ItensVLR_INSS: TFloatField
      FieldName = 'VLR_INSS'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ItensVLR_IR: TFloatField
      FieldName = 'VLR_IR'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ItensVLR_CSLL: TFloatField
      FieldName = 'VLR_CSLL'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ItensISS_RETIDO: TStringField
      FieldName = 'ISS_RETIDO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ItensVLR_ISS: TFloatField
      FieldName = 'VLR_ISS'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ItensVLR_ISS_RETIDO: TFloatField
      FieldName = 'VLR_ISS_RETIDO'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ItensVLR_OUTRAS_RETENCOES: TFloatField
      FieldName = 'VLR_OUTRAS_RETENCOES'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ItensBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ItensPERC_ALIQUOTA: TFloatField
      FieldName = 'PERC_ALIQUOTA'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ItensVLR_LIQUIDO_NFSE: TFloatField
      FieldName = 'VLR_LIQUIDO_NFSE'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ItensVLR_DESCONTO_INC: TFloatField
      FieldName = 'VLR_DESCONTO_INC'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ItensVLR_DESCONTO_COND: TFloatField
      FieldName = 'VLR_DESCONTO_COND'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsNotaServico_ItensVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ItensGERAR_DUPLICATA: TStringField
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ItensVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ItensID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsNotaServico_ItensNOME_SERVICO_INT: TStringField
      FieldName = 'NOME_SERVICO_INT'
      Size = 300
    end
    object cdsNotaServico_ItensSOMAR_DIMINUIR: TStringField
      FieldName = 'SOMAR_DIMINUIR'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ItensCALCULAR_INSS: TStringField
      FieldName = 'CALCULAR_INSS'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ItensCALCULAR_ISSQN: TStringField
      FieldName = 'CALCULAR_ISSQN'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ItensCALCULAR_PISCOFINS: TStringField
      FieldName = 'CALCULAR_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ItensCALCULAR_CSLL: TStringField
      FieldName = 'CALCULAR_CSLL'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ItensCALCULAR_IR: TStringField
      FieldName = 'CALCULAR_IR'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ItensPERC_TRIBUTO: TFloatField
      FieldName = 'PERC_TRIBUTO'
    end
    object cdsNotaServico_ItensVLR_TRIBUTO: TFloatField
      FieldName = 'VLR_TRIBUTO'
    end
    object cdsNotaServico_ItensCODIGO_NBS: TStringField
      FieldName = 'CODIGO_NBS'
      Size = 10
    end
    object cdsNotaServico_ItensBASE_INSS: TFloatField
      FieldName = 'BASE_INSS'
    end
    object cdsNotaServico_ItensPERC_TRIBUTO_FEDERAL: TFloatField
      FieldName = 'PERC_TRIBUTO_FEDERAL'
    end
    object cdsNotaServico_ItensPERC_TRIBUTO_ESTADUAL: TFloatField
      FieldName = 'PERC_TRIBUTO_ESTADUAL'
    end
    object cdsNotaServico_ItensPERC_TRIBUTO_MUNICIPAL: TFloatField
      FieldName = 'PERC_TRIBUTO_MUNICIPAL'
    end
    object cdsNotaServico_ItensVLR_TRIBUTO_FEDERAL: TFloatField
      FieldName = 'VLR_TRIBUTO_FEDERAL'
    end
    object cdsNotaServico_ItensVLR_TRIBUTO_ESTADUAL: TFloatField
      FieldName = 'VLR_TRIBUTO_ESTADUAL'
    end
    object cdsNotaServico_ItensVLR_TRIBUTO_MUNICIPAL: TFloatField
      FieldName = 'VLR_TRIBUTO_MUNICIPAL'
    end
    object cdsNotaServico_ItensID_MOV_SERVICO_EXTRA: TIntegerField
      FieldName = 'ID_MOV_SERVICO_EXTRA'
    end
    object cdsNotaServico_ItensID_OS_SIMPLES: TIntegerField
      FieldName = 'ID_OS_SIMPLES'
    end
    object cdsNotaServico_ItensITEM_OS_SIMPLES: TIntegerField
      FieldName = 'ITEM_OS_SIMPLES'
    end
    object cdsNotaServico_ItensNUM_OS_SIMPLES: TIntegerField
      FieldName = 'NUM_OS_SIMPLES'
    end
    object cdsNotaServico_ItensID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object cdsNotaServico_ItensANO_CONTRATO: TIntegerField
      FieldName = 'ANO_CONTRATO'
    end
    object cdsNotaServico_ItensNUM_CONTRATO: TIntegerField
      FieldName = 'NUM_CONTRATO'
    end
    object cdsNotaServico_ItensID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsNotaServico_ItensITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object cdsNotaServico_ItensPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsNotaServico_ItensNUM_OS_PED: TStringField
      FieldName = 'NUM_OS_PED'
      Size = 30
    end
    object cdsNotaServico_ItensTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ItensVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object cdsNotaServico_ItensVLR_PIS_CALC: TFloatField
      FieldName = 'VLR_PIS_CALC'
    end
    object cdsNotaServico_ItensVLR_COFINS_CALC: TFloatField
      FieldName = 'VLR_COFINS_CALC'
    end
  end
  object dsNotaServico_Itens: TDataSource
    DataSet = cdsNotaServico_Itens
    Left = 248
    Top = 99
  end
  object sdsNotaServico_Imp: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT NS.*, CLI.NOME NOME_CLIENTE, CLI.ENDERECO ENDERECO_CLI, C' +
      'LI.NUM_END NUM_END_CLI, CLI.CEP CEP_CLI,'#13#10'CLI.BAIRRO BAIRRO_CLI,' +
      ' CLI.CIDADE CIDADE_CLI, CLI.UF UF_CLI, CP.NOME CONDPGTO_NOME,'#13#10'C' +
      'LI.CNPJ_CPF CNPJ_CPF_CLI, CLI.PESSOA PESSOA_CLI, '#13#10'CLI.INSC_MUNI' +
      'CIPAL INSC_MUNICIPAL_CLI, CLI.COMPLEMENTO_END,'#13#10'SER.CODIGO COD_S' +
      'ERVICO, SER.NOME NOME_SERVICO,'#13#10'NAT.CODIGO COD_NATUREZA, NAT.NOM' +
      'E NOME_NATUREZA, FIL.NOME NOME_FIL, FIL.ENDERECO || '#39','#39' || FIL.N' +
      'UM_END ENDERECO_FIL,'#13#10'FIL.CEP CEP_FIL, FIL.BAIRRO BAIRRO_FIL, FI' +
      'L.CIDADE CIDADE_FIL, FIL.UF UF_FIL, FIL.CNPJ_CPF CNPJ_CPF_FIL, F' +
      'IL.complemento_end COMPLEMENTO_END_FIL,'#13#10'FIL.PESSOA PESSOA_FIL, ' +
      'FIL.CNAE, FIL.NUM_END NUM_END_FIL, CID.CODMUNICIPIO CODMUNICIPIO' +
      '_CLI, CLI.DDDFONE1 DDD_CLI, CLI.TELEFONE1 FONE_CLI,'#13#10'CLI.EMAIL_N' +
      'FE EMAIL_CLI, CLI.ORGAO_PUBLICO, FIL.ENDLOGO_NFSE, FIL.DDD1 DDD_' +
      'FIL, FIL.FONE FONE_FIL, FIL.INSCMUNICIPAL INSCMUNICIPAL_FIL, '#13#10'C' +
      'OD_TRIBUTACAO_MUNICIPIO, FIL.NOME_INTERNO FANTASIA_FIL,  '#13#10'FIL.E' +
      'MAIL_NFE EMAIL_FIL, ATI.CODIGO COD_ATIVIDADE_CID, ATI.NOME NOME_' +
      'ATIVIDADE_CID, CNAE.NOME NOME_CNAE,'#13#10'NAT.COD_TRIBUTO COD_NATUREZ' +
      'A_PROV, CLI.INSCR_EST INSC_ESTADUAL_CLI, CID_FIL.CODMUNICIPIO CO' +
      'DMUNICIPIO_FIL, PAIS.CODPAIS CODPAIS_CLI,'#13#10'FIL.INSCR_EST INSCR_E' +
      'ST_FIL, PAIS.NOME NOME_PAIS_CLI, FIL.PERC_PIS PERC_PIS_FIL, FIL.' +
      'PERC_COFINS PERC_COFINS_FIL, '#13#10'FIL.PERC_CSLL PERC_CSLL_FIL, CID_' +
      'TRIB.NOME CIDADE_TRIB, CID_TRIB.UF UF_TRIB, FIL.SIMPLES SIMPLES_' +
      'FILIAL, FIL.INCENTIVO_CULTURAL,'#13#10'RT.CODIGO CODREGIME_TRIBUTACAO,' +
      ' RT.NOME NOME_REGIME_TRIBUTACAO, FIL.email EMAIL_FIL_CADASTRO,'#13#10 +
      'CID_TRIB.codmunicipio COD_MUNICIPIO_TRIB, COND.nome NOME_CONDPGT' +
      'O, TCOB.nome NOME_TIPOCOBRANCA, SER.COD_SERVICO_EQUIV'#13#10'FROM NOTA' +
      'SERVICO NS'#13#10'INNER JOIN PESSOA CLI  ON (NS.ID_CLIENTE = CLI.CODIG' +
      'O)'#13#10'INNER JOIN SERVICO SER ON (NS.ID_SERVICO = SER.ID)'#13#10'INNER JO' +
      'IN FILIAL FIL ON (NS.FILIAL = FIL.ID)'#13#10'LEFT JOIN NFSE_NATUREZA N' +
      'AT ON (NS.ID_NATUREZA = NAT.ID)'#13#10'LEFT JOIN CIDADE CID ON (CLI.ID' +
      '_CIDADE = CID.ID)'#13#10'LEFT JOIN CIDADE CID_FIL ON (FIL.ID_CIDADE = ' +
      'CID_FIL.ID)'#13#10'LEFT JOIN CIDADE CID_TRIB ON (NS.ID_CIDADE_TRIB = C' +
      'ID_TRIB.ID)'#13#10'LEFT JOIN CONDPGTO CP ON (NS.ID_CONDPGTO = CP.ID)'#13#10 +
      'LEFT JOIN ATIVIDADE_CID ATI ON (NS.ID_ATIVIDADe_CID = ATI.ID)'#13#10'L' +
      'EFT JOIN CNAE ON (NS.CNAE_NFSE = CNAE.CODIGO)'#13#10'LEFT JOIN PAIS ON' +
      ' (PAIS.ID = CLI.ID_PAIS)'#13#10'LEFT JOIN REGIME_TRIB RT ON (FIL.id_re' +
      'gime_trib_nfse = RT.id)'#13#10'LEFT JOIN condpgto COND ON (NS.id_condp' +
      'gto = COND.id)'#13#10'LEFT JOIN tipocobranca TCOB ON (NS.id_tipo_cobra' +
      'nca = TCOB.id)'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 400
    Top = 72
  end
  object dspNotaServico_Imp: TDataSetProvider
    DataSet = sdsNotaServico_Imp
    Left = 432
    Top = 72
  end
  object cdsNotaServico_Imp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaServico_Imp'
    Left = 472
    Top = 72
    object cdsNotaServico_ImpID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaServico_ImpNUMRPS: TIntegerField
      FieldName = 'NUMRPS'
    end
    object cdsNotaServico_ImpSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object cdsNotaServico_ImpTIPO_RPS: TStringField
      FieldName = 'TIPO_RPS'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ImpNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsNotaServico_ImpID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
    end
    object cdsNotaServico_ImpSTATUS_RPS: TStringField
      FieldName = 'STATUS_RPS'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ImpNUMRPS_SUBSTITUIDO: TIntegerField
      FieldName = 'NUMRPS_SUBSTITUIDO'
    end
    object cdsNotaServico_ImpSERIE_SUBSTITUIDO: TStringField
      FieldName = 'SERIE_SUBSTITUIDO'
      Size = 5
    end
    object cdsNotaServico_ImpTIPO_SUBSTITUIDO: TStringField
      FieldName = 'TIPO_SUBSTITUIDO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ImpVLR_SERVICOS: TFloatField
      FieldName = 'VLR_SERVICOS'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaServico_ImpVLR_DEDUCOES: TFloatField
      FieldName = 'VLR_DEDUCOES'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaServico_ImpVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaServico_ImpVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaServico_ImpVLR_INSS: TFloatField
      FieldName = 'VLR_INSS'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaServico_ImpVLR_IR: TFloatField
      FieldName = 'VLR_IR'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaServico_ImpVLR_CSLL: TFloatField
      FieldName = 'VLR_CSLL'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaServico_ImpISS_RETIDO: TStringField
      FieldName = 'ISS_RETIDO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ImpVLR_ISS: TFloatField
      FieldName = 'VLR_ISS'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaServico_ImpVLR_ISS_RETIDO: TFloatField
      FieldName = 'VLR_ISS_RETIDO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaServico_ImpVLR_OUTRAS_RETENCOES: TFloatField
      FieldName = 'VLR_OUTRAS_RETENCOES'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaServico_ImpBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaServico_ImpPERC_ALIQUOTA: TFloatField
      FieldName = 'PERC_ALIQUOTA'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ImpVLR_LIQUIDO_NFSE: TFloatField
      FieldName = 'VLR_LIQUIDO_NFSE'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaServico_ImpVLR_DESCONTO_INC: TFloatField
      FieldName = 'VLR_DESCONTO_INC'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaServico_ImpVLR_DESCONTO_COND: TFloatField
      FieldName = 'VLR_DESCONTO_COND'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaServico_ImpID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object cdsNotaServico_ImpDISCRIMINACAO: TMemoField
      FieldName = 'DISCRIMINACAO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsNotaServico_ImpFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsNotaServico_ImpID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsNotaServico_ImpID_INTERMEDIARIO_SERVICO: TIntegerField
      FieldName = 'ID_INTERMEDIARIO_SERVICO'
    end
    object cdsNotaServico_ImpCODIGO_OBRA: TStringField
      FieldName = 'CODIGO_OBRA'
      Size = 15
    end
    object cdsNotaServico_ImpART: TStringField
      FieldName = 'ART'
      Size = 15
    end
    object cdsNotaServico_ImpCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Size = 50
    end
    object cdsNotaServico_ImpPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Size = 50
    end
    object cdsNotaServico_ImpRECIBO: TStringField
      FieldName = 'RECIBO'
      Size = 50
    end
    object cdsNotaServico_ImpID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsNotaServico_ImpPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaServico_ImpVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaServico_ImpID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object cdsNotaServico_ImpID_TIPO_COBRANCA: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA'
    end
    object cdsNotaServico_ImpTIPO_PRAZO: TStringField
      FieldName = 'TIPO_PRAZO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ImpDTINICIO_DUPLICATA: TDateField
      FieldName = 'DTINICIO_DUPLICATA'
    end
    object cdsNotaServico_ImpVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaServico_ImpHOMOLOGACAO: TStringField
      FieldName = 'HOMOLOGACAO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ImpNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsNotaServico_ImpCEP_CLI: TStringField
      FieldName = 'CEP_CLI'
      Size = 10
    end
    object cdsNotaServico_ImpBAIRRO_CLI: TStringField
      FieldName = 'BAIRRO_CLI'
      Size = 30
    end
    object cdsNotaServico_ImpCIDADE_CLI: TStringField
      FieldName = 'CIDADE_CLI'
      Size = 40
    end
    object cdsNotaServico_ImpUF_CLI: TStringField
      FieldName = 'UF_CLI'
      FixedChar = True
      Size = 2
    end
    object cdsNotaServico_ImpCNPJ_CPF_CLI: TStringField
      FieldName = 'CNPJ_CPF_CLI'
      Size = 18
    end
    object cdsNotaServico_ImpPESSOA_CLI: TStringField
      FieldName = 'PESSOA_CLI'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ImpCOD_SERVICO: TStringField
      FieldName = 'COD_SERVICO'
      Required = True
      Size = 5
    end
    object cdsNotaServico_ImpNOME_SERVICO: TStringField
      FieldName = 'NOME_SERVICO'
      Size = 500
    end
    object cdsNotaServico_ImpCOD_NATUREZA: TStringField
      FieldName = 'COD_NATUREZA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ImpNOME_NATUREZA: TStringField
      FieldName = 'NOME_NATUREZA'
      Size = 70
    end
    object cdsNotaServico_ImpNOME_FIL: TStringField
      FieldName = 'NOME_FIL'
      Size = 60
    end
    object cdsNotaServico_ImpENDERECO_FIL: TStringField
      FieldName = 'ENDERECO_FIL'
      Size = 76
    end
    object cdsNotaServico_ImpCEP_FIL: TStringField
      FieldName = 'CEP_FIL'
      Size = 9
    end
    object cdsNotaServico_ImpBAIRRO_FIL: TStringField
      FieldName = 'BAIRRO_FIL'
      Size = 30
    end
    object cdsNotaServico_ImpCIDADE_FIL: TStringField
      FieldName = 'CIDADE_FIL'
      Size = 40
    end
    object cdsNotaServico_ImpUF_FIL: TStringField
      FieldName = 'UF_FIL'
      Size = 2
    end
    object cdsNotaServico_ImpCNPJ_CPF_FIL: TStringField
      FieldName = 'CNPJ_CPF_FIL'
      Size = 18
    end
    object cdsNotaServico_ImpPESSOA_FIL: TStringField
      FieldName = 'PESSOA_FIL'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ImpCNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object cdsNotaServico_ImpINSC_MUNICIPAL_CLI: TStringField
      FieldName = 'INSC_MUNICIPAL_CLI'
      Size = 15
    end
    object cdsNotaServico_ImpENDERECO_CLI: TStringField
      FieldName = 'ENDERECO_CLI'
      Size = 60
    end
    object cdsNotaServico_ImpNUM_END_CLI: TStringField
      FieldName = 'NUM_END_CLI'
    end
    object cdsNotaServico_ImpCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsNotaServico_ImpCODMUNICIPIO_CLI: TStringField
      FieldName = 'CODMUNICIPIO_CLI'
      Size = 7
    end
    object cdsNotaServico_ImpDDD_CLI: TIntegerField
      FieldName = 'DDD_CLI'
    end
    object cdsNotaServico_ImpFONE_CLI: TStringField
      FieldName = 'FONE_CLI'
      Size = 15
    end
    object cdsNotaServico_ImpEMAIL_CLI: TStringField
      FieldName = 'EMAIL_CLI'
      Size = 250
    end
    object cdsNotaServico_ImpNUMLOTE: TIntegerField
      FieldName = 'NUMLOTE'
    end
    object cdsNotaServico_ImpDTRECEBIMENTO_RET: TStringField
      FieldName = 'DTRECEBIMENTO_RET'
    end
    object cdsNotaServico_ImpCOD_CANCELAMENTO: TIntegerField
      FieldName = 'COD_CANCELAMENTO'
    end
    object cdsNotaServico_ImpMOTIVO_CANCELAMENTO: TStringField
      FieldName = 'MOTIVO_CANCELAMENTO'
      Size = 100
    end
    object cdsNotaServico_ImpID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsNotaServico_ImpENDLOGO_NFSE: TStringField
      FieldName = 'ENDLOGO_NFSE'
      Size = 200
    end
    object cdsNotaServico_ImpDT_EMISSAO_RET: TStringField
      FieldName = 'DT_EMISSAO_RET'
    end
    object cdsNotaServico_ImpCOD_AUTENCIDADE_RET: TStringField
      FieldName = 'COD_AUTENCIDADE_RET'
      Size = 15
    end
    object cdsNotaServico_ImpCNAE_NFSE: TStringField
      FieldName = 'CNAE_NFSE'
      Size = 7
    end
    object cdsNotaServico_ImpXML: TMemoField
      FieldName = 'XML'
      BlobType = ftMemo
      Size = 1
    end
    object cdsNotaServico_ImpRETEM_CSLL: TStringField
      FieldName = 'RETEM_CSLL'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ImpRETEM_PISCOFINS: TStringField
      FieldName = 'RETEM_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ImpRETEM_INSS: TStringField
      FieldName = 'RETEM_INSS'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ImpDDD_FIL: TIntegerField
      FieldName = 'DDD_FIL'
    end
    object cdsNotaServico_ImpFONE_FIL: TStringField
      FieldName = 'FONE_FIL'
      Size = 15
    end
    object cdsNotaServico_ImpINSCMUNICIPAL_FIL: TStringField
      FieldName = 'INSCMUNICIPAL_FIL'
      Size = 18
    end
    object cdsNotaServico_ImpCOD_TRIBUTACAO_MUNICIPIO: TStringField
      FieldName = 'COD_TRIBUTACAO_MUNICIPIO'
    end
    object cdsNotaServico_ImpDTEMISSAO: TSQLTimeStampField
      FieldName = 'DTEMISSAO'
    end
    object cdsNotaServico_ImpDTEMISSAO_CAD: TDateField
      FieldName = 'DTEMISSAO_CAD'
    end
    object cdsNotaServico_ImpFANTASIA_FIL: TStringField
      FieldName = 'FANTASIA_FIL'
      Size = 30
    end
    object cdsNotaServico_ImpEMAIL_FIL: TStringField
      FieldName = 'EMAIL_FIL'
      Size = 200
    end
    object cdsNotaServico_ImpID_ATIVIDADE_CID: TIntegerField
      FieldName = 'ID_ATIVIDADE_CID'
    end
    object cdsNotaServico_ImpPERC_INSS: TFloatField
      FieldName = 'PERC_INSS'
    end
    object cdsNotaServico_ImpPERC_IR: TFloatField
      FieldName = 'PERC_IR'
    end
    object cdsNotaServico_ImpCOD_ATIVIDADE_CID: TStringField
      FieldName = 'COD_ATIVIDADE_CID'
      Size = 10
    end
    object cdsNotaServico_ImpNOME_ATIVIDADE_CID: TStringField
      FieldName = 'NOME_ATIVIDADE_CID'
      Size = 100
    end
    object cdsNotaServico_ImpORGAO_PUBLICO: TStringField
      FieldName = 'ORGAO_PUBLICO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ImpVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ImpCONDPGTO_NOME: TStringField
      FieldName = 'CONDPGTO_NOME'
      Size = 40
    end
    object cdsNotaServico_ImpPERC_TRIBUTO: TFloatField
      FieldName = 'PERC_TRIBUTO'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ImpVLR_TRIBUTO: TFloatField
      FieldName = 'VLR_TRIBUTO'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_ImpPERC_REDUCAO_INSS: TFloatField
      FieldName = 'PERC_REDUCAO_INSS'
    end
    object cdsNotaServico_ImpANO_REF: TIntegerField
      FieldName = 'ANO_REF'
    end
    object cdsNotaServico_ImpMES_REF: TIntegerField
      FieldName = 'MES_REF'
    end
    object cdsNotaServico_ImpCOMPLEMENTO_END_FIL: TStringField
      FieldName = 'COMPLEMENTO_END_FIL'
      Size = 60
    end
    object cdsNotaServico_ImpNOME_CNAE: TStringField
      FieldName = 'NOME_CNAE'
      Size = 250
    end
    object cdsNotaServico_ImpCOD_NATUREZA_PROV: TStringField
      FieldName = 'COD_NATUREZA_PROV'
      Size = 5
    end
    object cdsNotaServico_ImpINSC_ESTADUAL_CLI: TStringField
      FieldName = 'INSC_ESTADUAL_CLI'
      Size = 18
    end
    object cdsNotaServico_ImpNUM_END_FIL: TStringField
      FieldName = 'NUM_END_FIL'
      Size = 15
    end
    object cdsNotaServico_ImpCODPAIS_CLI: TStringField
      FieldName = 'CODPAIS_CLI'
      Size = 5
    end
    object cdsNotaServico_ImpINSCR_EST_FIL: TStringField
      FieldName = 'INSCR_EST_FIL'
      Size = 18
    end
    object cdsNotaServico_ImpNOME_PAIS_CLI: TStringField
      FieldName = 'NOME_PAIS_CLI'
      Size = 60
    end
    object cdsNotaServico_ImpVLR_OUTRAS_DESPESAS: TFloatField
      FieldName = 'VLR_OUTRAS_DESPESAS'
    end
    object cdsNotaServico_ImpPERC_PIS_FIL: TFloatField
      FieldName = 'PERC_PIS_FIL'
    end
    object cdsNotaServico_ImpPERC_COFINS_FIL: TFloatField
      FieldName = 'PERC_COFINS_FIL'
    end
    object cdsNotaServico_ImpPERC_CSLL_FIL: TFloatField
      FieldName = 'PERC_CSLL_FIL'
    end
    object cdsNotaServico_ImpCODMUNICIPIO_FIL: TStringField
      FieldName = 'CODMUNICIPIO_FIL'
      Size = 7
    end
    object cdsNotaServico_ImpCIDADE_TRIB: TStringField
      FieldName = 'CIDADE_TRIB'
      Size = 40
    end
    object cdsNotaServico_ImpUF_TRIB: TStringField
      FieldName = 'UF_TRIB'
      Size = 2
    end
    object cdsNotaServico_ImpID_CIDADE_TRIB: TIntegerField
      FieldName = 'ID_CIDADE_TRIB'
    end
    object cdsNotaServico_ImpPERC_TRIBUTO_ESTADUAL: TFloatField
      FieldName = 'PERC_TRIBUTO_ESTADUAL'
    end
    object cdsNotaServico_ImpPERC_TRIBUTO_MUNICIPAL: TFloatField
      FieldName = 'PERC_TRIBUTO_MUNICIPAL'
    end
    object cdsNotaServico_ImpVLR_TRIBUTO_ESTADUAL: TFloatField
      FieldName = 'VLR_TRIBUTO_ESTADUAL'
    end
    object cdsNotaServico_ImpVLR_TRIBUTO_MUNICIPAL: TFloatField
      FieldName = 'VLR_TRIBUTO_MUNICIPAL'
    end
    object cdsNotaServico_ImpVLR_TRIBUTO_FEDERAL: TFloatField
      FieldName = 'VLR_TRIBUTO_FEDERAL'
    end
    object cdsNotaServico_ImpPERC_TRIBUTO_FEDERAL: TFloatField
      FieldName = 'PERC_TRIBUTO_FEDERAL'
    end
    object cdsNotaServico_ImpVERSAO_TRIBUTO: TStringField
      FieldName = 'VERSAO_TRIBUTO'
      Size = 15
    end
    object cdsNotaServico_ImpFONTE_TRIBUTO: TStringField
      FieldName = 'FONTE_TRIBUTO'
      Size = 30
    end
    object cdsNotaServico_ImpSIMPLES_FILIAL: TStringField
      FieldName = 'SIMPLES_FILIAL'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ImpINCENTIVO_CULTURAL: TStringField
      FieldName = 'INCENTIVO_CULTURAL'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_ImpCODREGIME_TRIBUTACAO: TIntegerField
      FieldName = 'CODREGIME_TRIBUTACAO'
    end
    object cdsNotaServico_ImpNOME_REGIME_TRIBUTACAO: TStringField
      FieldName = 'NOME_REGIME_TRIBUTACAO'
      Size = 100
    end
    object cdsNotaServico_ImpEMAIL_FIL_CADASTRO: TStringField
      FieldName = 'EMAIL_FIL_CADASTRO'
      Size = 40
    end
    object cdsNotaServico_ImpCOD_MUNICIPIO_TRIB: TStringField
      FieldName = 'COD_MUNICIPIO_TRIB'
      Size = 7
    end
    object cdsNotaServico_ImpNOME_CLIENTE_CONS: TStringField
      FieldName = 'NOME_CLIENTE_CONS'
      Size = 60
    end
    object cdsNotaServico_ImpNOME_CONDPGTO: TStringField
      FieldName = 'NOME_CONDPGTO'
      Size = 40
    end
    object cdsNotaServico_ImpNOME_TIPOCOBRANCA: TStringField
      FieldName = 'NOME_TIPOCOBRANCA'
      Size = 30
    end
    object cdsNotaServico_ImpNUM_CONTRATO: TIntegerField
      FieldName = 'NUM_CONTRATO'
    end
    object cdsNotaServico_ImpANO_CONTRATO: TIntegerField
      FieldName = 'ANO_CONTRATO'
    end
    object cdsNotaServico_ImpCOD_SERVICO_EQUIV: TStringField
      FieldName = 'COD_SERVICO_EQUIV'
      Size = 5
    end
  end
  object dsNotaServico_Imp: TDataSource
    DataSet = cdsNotaServico_Imp
    Left = 512
    Top = 72
  end
  object sdsNotaServico_Imp_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NOTASERVICO_ITENS'#13#10'WHERE ID = :ID'#13#10#13#10#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 400
    Top = 128
  end
  object dspNotaServico_Imp_Itens: TDataSetProvider
    DataSet = sdsNotaServico_Imp_Itens
    Left = 432
    Top = 128
  end
  object cdsNotaServico_Imp_Itens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaServico_Imp_Itens'
    Left = 472
    Top = 128
    object cdsNotaServico_Imp_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaServico_Imp_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsNotaServico_Imp_ItensVLR_DEDUCOES: TFloatField
      FieldName = 'VLR_DEDUCOES'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_Imp_ItensVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_Imp_ItensVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_Imp_ItensVLR_INSS: TFloatField
      FieldName = 'VLR_INSS'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_Imp_ItensVLR_IR: TFloatField
      FieldName = 'VLR_IR'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_Imp_ItensVLR_CSLL: TFloatField
      FieldName = 'VLR_CSLL'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_Imp_ItensISS_RETIDO: TStringField
      FieldName = 'ISS_RETIDO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_Imp_ItensVLR_ISS: TFloatField
      FieldName = 'VLR_ISS'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_Imp_ItensVLR_ISS_RETIDO: TFloatField
      FieldName = 'VLR_ISS_RETIDO'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_Imp_ItensVLR_OUTRAS_RETENCOES: TFloatField
      FieldName = 'VLR_OUTRAS_RETENCOES'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_Imp_ItensBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object cdsNotaServico_Imp_ItensPERC_ALIQUOTA: TFloatField
      FieldName = 'PERC_ALIQUOTA'
    end
    object cdsNotaServico_Imp_ItensVLR_LIQUIDO_NFSE: TFloatField
      FieldName = 'VLR_LIQUIDO_NFSE'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_Imp_ItensVLR_DESCONTO_INC: TFloatField
      FieldName = 'VLR_DESCONTO_INC'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_Imp_ItensVLR_DESCONTO_COND: TFloatField
      FieldName = 'VLR_DESCONTO_COND'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_Imp_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsNotaServico_Imp_ItensVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_Imp_ItensGERAR_DUPLICATA: TStringField
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_Imp_ItensVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_Imp_ItensID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsNotaServico_Imp_ItensNOME_SERVICO_INT: TStringField
      FieldName = 'NOME_SERVICO_INT'
      Size = 300
    end
    object cdsNotaServico_Imp_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_Imp_ItensSOMAR_DIMINUIR: TStringField
      FieldName = 'SOMAR_DIMINUIR'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_Imp_ItensCALCULAR_INSS: TStringField
      FieldName = 'CALCULAR_INSS'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_Imp_ItensPERC_TRIBUTO: TFloatField
      FieldName = 'PERC_TRIBUTO'
    end
    object cdsNotaServico_Imp_ItensVLR_TRIBUTO: TFloatField
      FieldName = 'VLR_TRIBUTO'
      DisplayFormat = '0.00'
    end
    object cdsNotaServico_Imp_ItensNUM_OS_SIMPLES: TIntegerField
      FieldName = 'NUM_OS_SIMPLES'
    end
    object cdsNotaServico_Imp_ItensNUM_OS_PED: TStringField
      FieldName = 'NUM_OS_PED'
      Size = 30
    end
    object cdsNotaServico_Imp_ItensCALCULAR_ISSQN: TStringField
      FieldName = 'CALCULAR_ISSQN'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_Imp_ItensCALCULAR_PISCOFINS: TStringField
      FieldName = 'CALCULAR_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_Imp_ItensCALCULAR_CSLL: TStringField
      FieldName = 'CALCULAR_CSLL'
      FixedChar = True
      Size = 1
    end
    object cdsNotaServico_Imp_ItensCALCULAR_IR: TStringField
      FieldName = 'CALCULAR_IR'
      FixedChar = True
      Size = 1
    end
  end
  object dsNotaServico_Imp_Itens: TDataSource
    DataSet = cdsNotaServico_Imp_Itens
    Left = 512
    Top = 128
  end
  object xtrRetorno: TXMLTransformProvider
    TransformRead.TransformationFile = 'C:\Delphi7\SSFacil\EXE\NH-ConsultaLote.xtr'
    XMLDataFile = 'C:\A\XMLScorpio\143110089526210_v2.00-procNFe.xml'
    CacheData = True
    Left = 160
    Top = 560
  end
  object cdsRetorno_NH: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'XMLTransformProvider1'
    Left = 1048
    Top = 16
    object cdsRetorno_NHNumero1: TStringField
      FieldName = 'Numero1'
      Size = 15
    end
    object cdsRetorno_NHCodigoVerificacao: TStringField
      FieldName = 'CodigoVerificacao'
      Size = 9
    end
    object cdsRetorno_NHDataEmissao: TDateTimeField
      FieldName = 'DataEmissao'
    end
    object cdsRetorno_NHNfseSubstituida: TIntegerField
      FieldName = 'NfseSubstituida'
    end
    object cdsRetorno_NHOutrasInformacoes: TStringField
      FieldName = 'OutrasInformacoes'
      Size = 255
    end
    object cdsRetorno_NHValorCredito: TFloatField
      FieldName = 'ValorCredito'
    end
    object cdsRetorno_NHNumero2: TStringField
      FieldName = 'Numero2'
      Size = 15
    end
    object cdsRetorno_NHSerie: TStringField
      FieldName = 'Serie'
      Size = 5
    end
    object cdsRetorno_NHTipo: TIntegerField
      FieldName = 'Tipo'
    end
    object cdsRetorno_NHDataEmissaoRps: TDateTimeField
      FieldName = 'DataEmissaoRps'
    end
    object cdsRetorno_NHNaturezaOperacao: TStringField
      FieldName = 'NaturezaOperacao'
      Size = 1
    end
    object cdsRetorno_NHRegimeEspecialTributacao: TStringField
      FieldName = 'RegimeEspecialTributacao'
      Size = 1
    end
    object cdsRetorno_NHOptanteSimplesNacional: TStringField
      FieldName = 'OptanteSimplesNacional'
      Size = 1
    end
    object cdsRetorno_NHIncentivadorCultural: TStringField
      FieldName = 'IncentivadorCultural'
      Size = 1
    end
    object cdsRetorno_NHCompetencia: TStringField
      FieldName = 'Competencia'
      Size = 6
    end
    object cdsRetorno_NHItemListaServico: TStringField
      FieldName = 'ItemListaServico'
      Size = 5
    end
    object cdsRetorno_NHCodigoCnae: TStringField
      FieldName = 'CodigoCnae'
      Size = 7
    end
    object cdsRetorno_NHCodigoTributacaoMunicipio: TStringField
      FieldName = 'CodigoTributacaoMunicipio'
    end
    object cdsRetorno_NHDiscriminacao: TStringField
      FieldName = 'Discriminacao'
      Size = 2000
    end
    object cdsRetorno_NHMunicipioPrestacaoServico: TStringField
      FieldName = 'MunicipioPrestacaoServico'
      Size = 7
    end
    object cdsRetorno_NHValorServicos: TFloatField
      FieldName = 'ValorServicos'
    end
    object cdsRetorno_NHValorDeducoes: TFloatField
      FieldName = 'ValorDeducoes'
    end
    object cdsRetorno_NHValorPis: TFloatField
      FieldName = 'ValorPis'
    end
    object cdsRetorno_NHValorCofins: TFloatField
      FieldName = 'ValorCofins'
    end
    object cdsRetorno_NHValorInss: TFloatField
      FieldName = 'ValorInss'
    end
    object cdsRetorno_NHValorIr: TFloatField
      FieldName = 'ValorIr'
    end
    object cdsRetorno_NHValorCsll: TFloatField
      FieldName = 'ValorCsll'
    end
    object cdsRetorno_NHIssRetido: TIntegerField
      FieldName = 'IssRetido'
    end
    object cdsRetorno_NHValorIss: TFloatField
      FieldName = 'ValorIss'
    end
    object cdsRetorno_NHValorIssRetido: TFloatField
      FieldName = 'ValorIssRetido'
    end
    object cdsRetorno_NHOutrasRetencoes: TFloatField
      FieldName = 'OutrasRetencoes'
    end
    object cdsRetorno_NHBaseCalculo: TFloatField
      FieldName = 'BaseCalculo'
    end
    object cdsRetorno_NHAliquota: TBCDField
      FieldName = 'Aliquota'
      Precision = 5
    end
    object cdsRetorno_NHValorLiquidoNfse: TFloatField
      FieldName = 'ValorLiquidoNfse'
    end
    object cdsRetorno_NHDescontoCondicionado: TFloatField
      FieldName = 'DescontoCondicionado'
    end
    object cdsRetorno_NHDescontoIncondicionado: TFloatField
      FieldName = 'DescontoIncondicionado'
    end
    object cdsRetorno_NHCpfCnpj_Cnpj1: TStringField
      FieldName = 'CpfCnpj_Cnpj1'
      Size = 14
    end
    object cdsRetorno_NHCpfCnpj_Cpf1: TStringField
      FieldName = 'CpfCnpj_Cpf1'
      Size = 11
    end
    object cdsRetorno_NHInscricaoMunicipal: TStringField
      FieldName = 'InscricaoMunicipal'
      Size = 15
    end
    object cdsRetorno_NHPrestadorServico_RazaoSocial: TStringField
      FieldName = 'PrestadorServico_RazaoSocial'
      Size = 115
    end
    object cdsRetorno_NHNomeFantasia: TStringField
      FieldName = 'NomeFantasia'
      Size = 115
    end
    object cdsRetorno_NHEndereco_Endereco1: TStringField
      FieldName = 'Endereco_Endereco1'
      Size = 125
    end
    object cdsRetorno_NHEndereco_Numero1: TStringField
      FieldName = 'Endereco_Numero1'
      Size = 15
    end
    object cdsRetorno_NHEndereco_Complemento1: TStringField
      FieldName = 'Endereco_Complemento1'
      Size = 60
    end
    object cdsRetorno_NHEndereco_Bairro1: TStringField
      FieldName = 'Endereco_Bairro1'
      Size = 60
    end
    object cdsRetorno_NHEndereco_Cidade1: TStringField
      FieldName = 'Endereco_Cidade1'
      Size = 7
    end
    object cdsRetorno_NHEndereco_Estado1: TStringField
      FieldName = 'Endereco_Estado1'
      Size = 2
    end
    object cdsRetorno_NHEndereco_Cep1: TStringField
      FieldName = 'Endereco_Cep1'
      Size = 8
    end
    object cdsRetorno_NHCpfCnpj_Cnpj2: TStringField
      FieldName = 'CpfCnpj_Cnpj2'
      Size = 14
    end
    object cdsRetorno_NHCpfCnpj_Cpf2: TStringField
      FieldName = 'CpfCnpj_Cpf2'
      Size = 11
    end
    object cdsRetorno_NHTomadorServico_RazaoSocial: TStringField
      FieldName = 'TomadorServico_RazaoSocial'
      Size = 115
    end
    object cdsRetorno_NHEndereco_Endereco2: TStringField
      FieldName = 'Endereco_Endereco2'
      Size = 125
    end
    object cdsRetorno_NHEndereco_Numero2: TStringField
      FieldName = 'Endereco_Numero2'
      Size = 15
    end
    object cdsRetorno_NHEndereco_Complemento2: TStringField
      FieldName = 'Endereco_Complemento2'
      Size = 60
    end
    object cdsRetorno_NHEndereco_Bairro2: TStringField
      FieldName = 'Endereco_Bairro2'
      Size = 60
    end
    object cdsRetorno_NHEndereco_Cidade2: TStringField
      FieldName = 'Endereco_Cidade2'
      Size = 7
    end
    object cdsRetorno_NHEndereco_Estado2: TStringField
      FieldName = 'Endereco_Estado2'
      Size = 2
    end
    object cdsRetorno_NHEndereco_Cep2: TStringField
      FieldName = 'Endereco_Cep2'
      Size = 8
    end
    object cdsRetorno_NHTelefone: TStringField
      FieldName = 'Telefone'
      Size = 11
    end
    object cdsRetorno_NHEmail: TStringField
      FieldName = 'Email'
      Size = 80
    end
    object cdsRetorno_NHCodigoMunicipio: TStringField
      FieldName = 'CodigoMunicipio'
      Size = 7
    end
    object cdsRetorno_NHUf: TStringField
      FieldName = 'Uf'
      Size = 2
    end
  end
  object qTipoProvedor: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_CIDADE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT P.tipo_retorno, P.RETENCAO_ISSQN, C.ID'
      'FROM CIDADE C'
      'INNER JOIN PROVEDOR P'
      'ON C.ID_PROVEDOR = P.ID'
      'WHERE C.ID = :ID_CIDADE')
    SQLConnection = dmDatabase.scoDados
    Left = 152
    Top = 328
    object qTipoProvedorTIPO_RETORNO: TStringField
      FieldName = 'TIPO_RETORNO'
      Size = 1
    end
    object qTipoProvedorRETENCAO_ISSQN: TStringField
      FieldName = 'RETENCAO_ISSQN'
      FixedChar = True
      Size = 1
    end
    object qTipoProvedorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object qPessoa_Servico: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_SERVICO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT PERC_ISS'
      'FROM PESSOA_SERVICO'
      'WHERE CODIGO = :CODIGO'
      '   AND ID_SERVICO = :ID_SERVICO'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 1112
    Top = 112
    object qPessoa_ServicoPERC_ISS: TFloatField
      FieldName = 'PERC_ISS'
    end
  end
  object sdsNotaServico_Imp_Parc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NOTASERVICO_PARC'#13#10'WHERE ID = :ID'#13#10#13#10#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 400
    Top = 184
  end
  object dspNotaServico_Imp_Parc: TDataSetProvider
    DataSet = sdsNotaServico_Imp_Parc
    Left = 432
    Top = 184
  end
  object cdsNotaServico_Imp_Parc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaServico_Imp_Parc'
    Left = 472
    Top = 184
    object cdsNotaServico_Imp_ParcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaServico_Imp_ParcITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsNotaServico_Imp_ParcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object cdsNotaServico_Imp_ParcVLR_VENCIMENTO: TFloatField
      FieldName = 'VLR_VENCIMENTO'
    end
    object cdsNotaServico_Imp_ParcID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsNotaServico_Imp_ParcID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
  end
  object dsNotaServico_Imp_Parc: TDataSource
    DataSet = cdsNotaServico_Imp_Parc
    Left = 512
    Top = 184
  end
  object sdsNotaServico_Lote: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NOTASERVICO_LOTE'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 400
    Top = 455
    object sdsNotaServico_LoteID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNotaServico_LoteFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsNotaServico_LotePROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Size = 50
    end
    object sdsNotaServico_LoteNUMLOTE: TIntegerField
      FieldName = 'NUMLOTE'
    end
    object sdsNotaServico_LoteDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsNotaServico_LoteDTRECEBIMENTO: TStringField
      FieldName = 'DTRECEBIMENTO'
    end
  end
  object dspNotaServico_Lote: TDataSetProvider
    DataSet = sdsNotaServico_Lote
    Left = 432
    Top = 455
  end
  object cdsNotaServico_Lote: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaServico_Lote'
    Left = 472
    Top = 455
    object cdsNotaServico_LoteID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaServico_LoteFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsNotaServico_LotePROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Size = 50
    end
    object cdsNotaServico_LoteNUMLOTE: TIntegerField
      FieldName = 'NUMLOTE'
    end
    object cdsNotaServico_LoteDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsNotaServico_LoteDTRECEBIMENTO: TStringField
      FieldName = 'DTRECEBIMENTO'
    end
  end
  object dsNotaServico_Lote: TDataSource
    DataSet = cdsNotaServico_Lote
    Left = 512
    Top = 455
  end
  object qVerifica_Lote: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUMLOTE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT DISTINCT P.NUMLOTE, P.cod_autencidade_ret, P.dt_emissao_r' +
        'et'
      'FROM NOTASERVICO P'
      'WHERE P.NUMLOTE = :NUMLOTE'
      
        '  AND ((P.cod_autencidade_ret <> '#39#39') OR (P.cod_autencidade_ret I' +
        'S NOT null))'
      
        '  and ((P.dt_emissao_ret <> '#39#39') OR (P.dt_emissao_ret IS NOT null' +
        '))')
    SQLConnection = dmDatabase.scoDados
    Left = 1048
    Top = 112
    object qVerifica_LoteNUMLOTE: TIntegerField
      FieldName = 'NUMLOTE'
    end
    object qVerifica_LoteCOD_AUTENCIDADE_RET: TStringField
      FieldName = 'COD_AUTENCIDADE_RET'
      Size = 15
    end
    object qVerifica_LoteDT_EMISSAO_RET: TStringField
      FieldName = 'DT_EMISSAO_RET'
    end
  end
  object sdsAtividade_Cid: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM ATIVIDADE_CID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 400
    Top = 288
  end
  object dspAtividade_Cid: TDataSetProvider
    DataSet = sdsAtividade_Cid
    Left = 432
    Top = 288
  end
  object cdsAtividade_Cid: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAtividade_Cid'
    Left = 472
    Top = 288
    object cdsAtividade_CidID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsAtividade_CidCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object cdsAtividade_CidNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsAtividade_CidID_SERVICO_PADRAO: TIntegerField
      FieldName = 'ID_SERVICO_PADRAO'
    end
    object cdsAtividade_CidPERC_ISSQN: TFloatField
      FieldName = 'PERC_ISSQN'
    end
    object cdsAtividade_CidDT_INICIO_VIGENCIA: TDateField
      FieldName = 'DT_INICIO_VIGENCIA'
    end
    object cdsAtividade_CidDT_FINAL_VIGENCIA: TDateField
      FieldName = 'DT_FINAL_VIGENCIA'
    end
    object cdsAtividade_CidCOD_SERVICO: TStringField
      FieldName = 'COD_SERVICO'
      Size = 10
    end
  end
  object dsAtividade_Cid: TDataSource
    DataSet = cdsAtividade_Cid
    Left = 512
    Top = 288
  end
  object sdsPessoa_Contato: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PESSOA_CONTATO'#13#10'WHERE CODIGO = :CODIGO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 624
    Top = 56
  end
  object dspPessoa_Contato: TDataSetProvider
    DataSet = sdsPessoa_Contato
    Left = 656
    Top = 56
  end
  object cdsPessoa_Contato: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoa_Contato'
    Left = 696
    Top = 56
    object cdsPessoa_ContatoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsPessoa_ContatoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPessoa_ContatoCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 50
    end
    object cdsPessoa_ContatoEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 200
    end
    object cdsPessoa_ContatoENVIAR_NFE: TStringField
      FieldName = 'ENVIAR_NFE'
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_ContatoFONE: TStringField
      FieldName = 'FONE'
    end
    object cdsPessoa_ContatoSETOR: TStringField
      FieldName = 'SETOR'
      Size = 30
    end
  end
  object sdsPessoa_Servico_Int: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PESSOA_SERVICO_INT'#13#10'WHERE CODIGO = :CODIGO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 624
    Top = 106
  end
  object dspPessoa_Servico_Int: TDataSetProvider
    DataSet = sdsPessoa_Servico_Int
    Left = 656
    Top = 106
  end
  object cdsPessoa_Servico_Int: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoa_Servico_Int'
    Left = 696
    Top = 106
    object cdsPessoa_Servico_IntCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsPessoa_Servico_IntITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPessoa_Servico_IntID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsPessoa_Servico_IntCALCULAR_INSS: TStringField
      FieldName = 'CALCULAR_INSS'
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_Servico_IntSOMAR_DIMINUIR: TStringField
      FieldName = 'SOMAR_DIMINUIR'
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_Servico_IntVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object cdsPessoa_Servico_IntCALCULAR_ISSQN: TStringField
      FieldName = 'CALCULAR_ISSQN'
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_Servico_IntCALCULAR_PISCOFINS: TStringField
      FieldName = 'CALCULAR_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_Servico_IntCALCULAR_CSLL: TStringField
      FieldName = 'CALCULAR_CSLL'
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_Servico_IntCALCULAR_IR: TStringField
      FieldName = 'CALCULAR_IR'
      FixedChar = True
      Size = 1
    end
  end
  object qProximaNota: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SERIE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT MAX(NUMNOTA) NUMNOTA'
      'FROM NOTASERVICO'
      'WHERE FILIAL = :FILIAL'
      '    AND SERIE = :SERIE'
      ''
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 1112
    Top = 16
    object qProximaNotaNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
  end
  object qFat_Mensal_Cli: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CNPJ_CPF'
        ParamType = ptInput
      end
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
      end
      item
        DataType = ftInteger
        Name = 'NUMRPS'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT SUM(NS.BASE_CSRF) VLR_SERVICO'
      'FROM NOTASERVICO NS'
      'INNER JOIN PESSOA P'
      'ON NS.ID_CLIENTE = P.CODIGO'
      'WHERE P.CNPJ_CPF LIKE :CNPJ_CPF'
      '      AND NS.FILIAL = :FILIAL'
      '      AND EXTRACT(YEAR FROM NS.DTEMISSAO_CAD) = :ANO'
      '      AND EXTRACT(MONTH FROM NS.DTEMISSAO_CAD) = :MES'
      '      AND NS.NUMRPS < :NUMRPS'
      '      AND NS.STATUS_RPS = '#39'1'#39)
    SQLConnection = dmDatabase.scoDados
    Left = 1048
    Top = 160
    object qFat_Mensal_CliVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
  end
  object qServico: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM SERVICO'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 1048
    Top = 256
    object qServicoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qServicoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 5
    end
    object qServicoNOME: TStringField
      FieldName = 'NOME'
      Size = 500
    end
  end
  object mImpNota: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 56
    Top = 456
    Data = {
      2A0000009619E0BD0100000018000000010000000000030000002A000749445F
      4E6F746104000100000000000000}
    object mImpNotaID_Nota: TIntegerField
      FieldName = 'ID_Nota'
    end
  end
  object dsmImpNota: TDataSource
    DataSet = mImpNota
    Left = 80
    Top = 456
  end
  object qNotaServico_Lote: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PROTOCOLO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM NOTASERVICO_LOTE'
      'WHERE PROTOCOLO = :PROTOCOLO')
    SQLConnection = dmDatabase.scoDados
    Left = 1048
    Top = 208
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 44
    Top = 560
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 80
    Top = 560
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport v0.3.04a \251 Copyright '#169' 1999-2003 Fortes Inform'#225't' +
      'ica'
    DisplayName = 'Documento PDF'
    Left = 116
    Top = 560
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
    Left = 833
    Top = 8
  end
  object dspContaOrcamento: TDataSetProvider
    DataSet = sdsContaOrcamento
    Left = 865
    Top = 8
  end
  object cdsContaOrcamento: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'DESCRICAO'
    Params = <>
    ProviderName = 'dspContaOrcamento'
    Left = 905
    Top = 8
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
    Left = 945
    Top = 8
  end
  object sdsVendedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PESSOA'#13#10'WHERE INATIVO = '#39'N'#39#13#10'      AND TP_VENDEDO' +
      'R = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 608
    Top = 424
    object sdsVendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsVendedorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsVendedorPERC_COMISSAO_VEND: TFloatField
      FieldName = 'PERC_COMISSAO_VEND'
    end
    object sdsVendedorTIPO_COMISSAO: TStringField
      FieldName = 'TIPO_COMISSAO'
      FixedChar = True
      Size = 1
    end
  end
  object dspVendedor: TDataSetProvider
    DataSet = sdsVendedor
    Left = 640
    Top = 424
  end
  object cdsVendedor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspVendedor'
    Left = 680
    Top = 424
    object cdsVendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsVendedorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsVendedorPERC_COMISSAO_VEND: TFloatField
      FieldName = 'PERC_COMISSAO_VEND'
    end
    object cdsVendedorTIPO_COMISSAO: TStringField
      FieldName = 'TIPO_COMISSAO'
      FixedChar = True
      Size = 1
    end
  end
  object dsVendedor: TDataSource
    DataSet = cdsVendedor
    Left = 720
    Top = 424
  end
  object sdsTab_IBPT: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_IBPT'#13#10'WHERE TABELA = '#39'1'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 392
    Top = 400
  end
  object dspTab_IBPT: TDataSetProvider
    DataSet = sdsTab_IBPT
    Left = 424
    Top = 400
  end
  object cdsTab_IBPT: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_IBPT'
    Left = 464
    Top = 400
    object cdsTab_IBPTID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_IBPTCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object cdsTab_IBPTEX: TStringField
      FieldName = 'EX'
      Size = 2
    end
    object cdsTab_IBPTTABELA: TStringField
      FieldName = 'TABELA'
      Size = 1
    end
    object cdsTab_IBPTNOME: TStringField
      FieldName = 'NOME'
      Size = 250
    end
    object cdsTab_IBPTPERC_NACIONAL: TFloatField
      FieldName = 'PERC_NACIONAL'
    end
    object cdsTab_IBPTPERC_IMPORTACAO: TFloatField
      FieldName = 'PERC_IMPORTACAO'
    end
  end
  object dsTab_IBPT: TDataSource
    DataSet = cdsTab_IBPT
    Left = 504
    Top = 400
  end
  object qIBPT: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT I.perc_nacional, I.perc_importacao, i.perc_estadual, i.pe' +
        'rc_municipal,'
      'i.fonte, i.versao, I.CHAVE'
      'FROM TAB_IBPT I'
      'WHERE I.CODIGO = :CODIGO')
    SQLConnection = dmDatabase.scoDados
    Left = 1048
    Top = 64
    object qIBPTPERC_NACIONAL: TFloatField
      FieldName = 'PERC_NACIONAL'
    end
    object qIBPTPERC_IMPORTACAO: TFloatField
      FieldName = 'PERC_IMPORTACAO'
    end
    object qIBPTPERC_ESTADUAL: TFloatField
      FieldName = 'PERC_ESTADUAL'
    end
    object qIBPTPERC_MUNICIPAL: TFloatField
      FieldName = 'PERC_MUNICIPAL'
    end
    object qIBPTFONTE: TStringField
      FieldName = 'FONTE'
      Size = 30
    end
    object qIBPTVERSAO: TStringField
      FieldName = 'VERSAO'
      Size = 15
    end
    object qIBPTCHAVE: TStringField
      FieldName = 'CHAVE'
    end
  end
  object sdsObs_Aux: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM OBS_AUX'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 617
    Top = 223
  end
  object dspObs_Aux: TDataSetProvider
    DataSet = sdsObs_Aux
    Left = 649
    Top = 223
  end
  object cdsObs_Aux: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspObs_Aux'
    Left = 689
    Top = 223
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
  end
  object dsObs_Aux: TDataSource
    DataSet = cdsObs_Aux
    Left = 729
    Top = 223
  end
  object qFilial_Email: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT FE.ID ID_FILIAL, FE.id_config_email, CE.nome_config, CE.r' +
        'emetente_nome, CE.remetente_email,'
      
        'CE.smtp_cliente, CE.smtp_porta, CE.smtp_requer_ssl, CE.smtp_usua' +
        'rio, CE.smtp_senha,'
      'CE.solicitar_confirmacao, CE.base, F.cnpj_cpf CNPJ_CPF_FILIAL'
      'FROM FILIAL_EMAIL FE'
      'INNER JOIN FILIAL F'
      'ON FE.ID = F.ID'
      'INNER JOIN CONFIG_EMAIL CE'
      'ON FE.id_config_email = CE.id'
      'WHERE FE.ID = :ID'
      '   AND FE.TIPO_REG = 2')
    SQLConnection = dmDatabase.scoDados
    Left = 1112
    Top = 256
    object qFilial_EmailID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
      Required = True
    end
    object qFilial_EmailID_CONFIG_EMAIL: TIntegerField
      FieldName = 'ID_CONFIG_EMAIL'
    end
    object qFilial_EmailNOME_CONFIG: TStringField
      FieldName = 'NOME_CONFIG'
      Required = True
      Size = 40
    end
    object qFilial_EmailREMETENTE_NOME: TStringField
      FieldName = 'REMETENTE_NOME'
      Size = 100
    end
    object qFilial_EmailREMETENTE_EMAIL: TStringField
      FieldName = 'REMETENTE_EMAIL'
      Size = 150
    end
    object qFilial_EmailSMTP_CLIENTE: TStringField
      FieldName = 'SMTP_CLIENTE'
      Size = 100
    end
    object qFilial_EmailSMTP_PORTA: TIntegerField
      FieldName = 'SMTP_PORTA'
    end
    object qFilial_EmailSMTP_REQUER_SSL: TStringField
      FieldName = 'SMTP_REQUER_SSL'
      FixedChar = True
      Size = 1
    end
    object qFilial_EmailSMTP_USUARIO: TStringField
      FieldName = 'SMTP_USUARIO'
      Size = 100
    end
    object qFilial_EmailSMTP_SENHA: TStringField
      FieldName = 'SMTP_SENHA'
      Size = 100
    end
    object qFilial_EmailSOLICITAR_CONFIRMACAO: TStringField
      FieldName = 'SOLICITAR_CONFIRMACAO'
      FixedChar = True
      Size = 1
    end
    object qFilial_EmailBASE: TSmallintField
      FieldName = 'BASE'
    end
    object qFilial_EmailCNPJ_CPF_FILIAL: TStringField
      FieldName = 'CNPJ_CPF_FILIAL'
      Size = 18
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
    ReportOptions.CreateDate = 42093.672986851900000000
    ReportOptions.LastChange = 42170.637900439800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 48
    Top = 504
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 216.000000000000000000
      PaperHeight = 160.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 15.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 5.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 260.787570000000000000
        Top = 18.897650000000000000
        Width = 721.890230000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 144.063080000000000000
          Top = 142.063080000000000000
          Width = 529.133858270000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            '[frxDBDataset1."NOME_CLIENTE"]')
        end
        object Memo2: TfrxMemoView
          Left = 465.323130000000000000
          Top = 168.519790000000000000
          Width = 207.873808270000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Cidade: Salvador / BA')
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo3: TfrxMemoView
          Left = 178.078850000000000000
          Top = 194.976500000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            '[frxDBDataset1."INSC_ESTADUAL_CLI"]')
        end
        object Memo4: TfrxMemoView
          Left = 476.661720000000000000
          Top = 194.976500000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            '[frxDBDataset1."CNPJ_CPF_CLI"]')
        end
        object Memo10: TfrxMemoView
          Left = 467.102660000000000000
          Top = 116.826840000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."DTEMISSAO"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 542.693260000000000000
          Top = 116.826840000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'MMMM'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."DTEMISSAO"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 646.740570000000000000
          Top = 116.826840000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."DTEMISSAO"]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 302.362400000000000000
        Width = 721.890230000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        Stretched = True
        object Memo5: TfrxMemoView
          Left = 64.252010000000000000
          Top = 3.779530000000000000
          Width = 464.882190000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset2."NOME_SERVICO_INT"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 529.134200000000000000
          Top = 3.779530000000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset2."VLR_TOTAL"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 147.401670000000000000
        Top = 385.512060000000000000
        Width = 721.890230000000000000
        object Memo7: TfrxMemoView
          Left = 102.047310000000000000
          Top = 37.574830000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'PIS:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 102.047310000000000000
          Top = 64.811070000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'COFINS:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 102.047310000000000000
          Top = 92.047310000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'IR:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 566.929500000000000000
          Top = 127.504020000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."VLR_LIQUIDO_NFSE"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 400.630180000000000000
          Top = 41.354360000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."PERC_PIS_FIL"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 400.630180000000000000
          Top = 68.590600000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."PERC_COFINS_FIL"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 400.630180000000000000
          Top = 95.826840000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."PERC_IR"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 400.630180000000000000
          Top = 14.118120000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."VLR_ISS_RETIDO"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 566.929500000000000000
          Top = 41.354360000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[<frxDBDataset1."VLR_PIS">]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 566.929500000000000000
          Top = 68.590600000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[<frxDBDataset1."VLR_COFINS">]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 566.929500000000000000
          Top = 95.826840000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."VLR_IR"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 566.929500000000000000
          Top = 14.118120000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDataset1."VLR_ISS_RETIDO"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NUMRPS=NUMRPS'
      'SERIE=SERIE'
      'TIPO_RPS=TIPO_RPS'
      'NUMNOTA=NUMNOTA'
      'ID_NATUREZA=ID_NATUREZA'
      'STATUS_RPS=STATUS_RPS'
      'NUMRPS_SUBSTITUIDO=NUMRPS_SUBSTITUIDO'
      'SERIE_SUBSTITUIDO=SERIE_SUBSTITUIDO'
      'TIPO_SUBSTITUIDO=TIPO_SUBSTITUIDO'
      'VLR_SERVICOS=VLR_SERVICOS'
      'VLR_DEDUCOES=VLR_DEDUCOES'
      'VLR_PIS=VLR_PIS'
      'VLR_COFINS=VLR_COFINS'
      'VLR_INSS=VLR_INSS'
      'VLR_IR=VLR_IR'
      'VLR_CSLL=VLR_CSLL'
      'ISS_RETIDO=ISS_RETIDO'
      'VLR_ISS=VLR_ISS'
      'VLR_ISS_RETIDO=VLR_ISS_RETIDO'
      'VLR_OUTRAS_RETENCOES=VLR_OUTRAS_RETENCOES'
      'BASE_CALCULO=BASE_CALCULO'
      'PERC_ALIQUOTA=PERC_ALIQUOTA'
      'VLR_LIQUIDO_NFSE=VLR_LIQUIDO_NFSE'
      'VLR_DESCONTO_INC=VLR_DESCONTO_INC'
      'VLR_DESCONTO_COND=VLR_DESCONTO_COND'
      'ID_SERVICO=ID_SERVICO'
      'DISCRIMINACAO=DISCRIMINACAO'
      'FILIAL=FILIAL'
      'ID_CLIENTE=ID_CLIENTE'
      'ID_INTERMEDIARIO_SERVICO=ID_INTERMEDIARIO_SERVICO'
      'CODIGO_OBRA=CODIGO_OBRA'
      'ART=ART'
      'CHAVE_ACESSO=CHAVE_ACESSO'
      'PROTOCOLO=PROTOCOLO'
      'RECIBO=RECIBO'
      'ID_CONDPGTO=ID_CONDPGTO'
      'PERC_DESCONTO=PERC_DESCONTO'
      'VLR_ENTRADA=VLR_ENTRADA'
      'ID_BANCO=ID_BANCO'
      'ID_TIPO_COBRANCA=ID_TIPO_COBRANCA'
      'TIPO_PRAZO=TIPO_PRAZO'
      'DTINICIO_DUPLICATA=DTINICIO_DUPLICATA'
      'VLR_TOTAL=VLR_TOTAL'
      'HOMOLOGACAO=HOMOLOGACAO'
      'NOME_CLIENTE=NOME_CLIENTE'
      'CEP_CLI=CEP_CLI'
      'BAIRRO_CLI=BAIRRO_CLI'
      'CIDADE_CLI=CIDADE_CLI'
      'UF_CLI=UF_CLI'
      'CNPJ_CPF_CLI=CNPJ_CPF_CLI'
      'PESSOA_CLI=PESSOA_CLI'
      'COD_SERVICO=COD_SERVICO'
      'NOME_SERVICO=NOME_SERVICO'
      'COD_NATUREZA=COD_NATUREZA'
      'NOME_NATUREZA=NOME_NATUREZA'
      'NOME_FIL=NOME_FIL'
      'ENDERECO_FIL=ENDERECO_FIL'
      'CEP_FIL=CEP_FIL'
      'BAIRRO_FIL=BAIRRO_FIL'
      'CIDADE_FIL=CIDADE_FIL'
      'UF_FIL=UF_FIL'
      'CNPJ_CPF_FIL=CNPJ_CPF_FIL'
      'PESSOA_FIL=PESSOA_FIL'
      'CNAE=CNAE'
      'INSC_MUNICIPAL_CLI=INSC_MUNICIPAL_CLI'
      'ENDERECO_CLI=ENDERECO_CLI'
      'NUM_END_CLI=NUM_END_CLI'
      'COMPLEMENTO_END=COMPLEMENTO_END'
      'CODMUNICIPIO_CLI=CODMUNICIPIO_CLI'
      'DDD_CLI=DDD_CLI'
      'FONE_CLI=FONE_CLI'
      'EMAIL_CLI=EMAIL_CLI'
      'NUMLOTE=NUMLOTE'
      'DTRECEBIMENTO_RET=DTRECEBIMENTO_RET'
      'COD_CANCELAMENTO=COD_CANCELAMENTO'
      'MOTIVO_CANCELAMENTO=MOTIVO_CANCELAMENTO'
      'ID_CONTA=ID_CONTA'
      'ENDLOGO_NFSE=ENDLOGO_NFSE'
      'DT_EMISSAO_RET=DT_EMISSAO_RET'
      'COD_AUTENCIDADE_RET=COD_AUTENCIDADE_RET'
      'CNAE_NFSE=CNAE_NFSE'
      'XML=XML'
      'RETEM_CSLL=RETEM_CSLL'
      'RETEM_PISCOFINS=RETEM_PISCOFINS'
      'RETEM_INSS=RETEM_INSS'
      'DDD_FIL=DDD_FIL'
      'FONE_FIL=FONE_FIL'
      'INSCMUNICIPAL_FIL=INSCMUNICIPAL_FIL'
      'COD_TRIBUTACAO_MUNICIPIO=COD_TRIBUTACAO_MUNICIPIO'
      'DTEMISSAO=DTEMISSAO'
      'DTEMISSAO_CAD=DTEMISSAO_CAD'
      'FANTASIA_FIL=FANTASIA_FIL'
      'EMAIL_FIL=EMAIL_FIL'
      'ID_ATIVIDADE_CID=ID_ATIVIDADE_CID'
      'PERC_INSS=PERC_INSS'
      'PERC_IR=PERC_IR'
      'COD_ATIVIDADE_CID=COD_ATIVIDADE_CID'
      'NOME_ATIVIDADE_CID=NOME_ATIVIDADE_CID'
      'ORGAO_PUBLICO=ORGAO_PUBLICO'
      'VLR_DUPLICATA=VLR_DUPLICATA'
      'CONDPGTO_NOME=CONDPGTO_NOME'
      'PERC_TRIBUTO=PERC_TRIBUTO'
      'VLR_TRIBUTO=VLR_TRIBUTO'
      'PERC_REDUCAO_INSS=PERC_REDUCAO_INSS'
      'ANO_REF=ANO_REF'
      'MES_REF=MES_REF'
      'COMPLEMENTO_END_FIL=COMPLEMENTO_END_FIL'
      'NOME_CNAE=NOME_CNAE'
      'COD_NATUREZA_PROV=COD_NATUREZA_PROV'
      'INSC_ESTADUAL_CLI=INSC_ESTADUAL_CLI'
      'NUM_END_FIL=NUM_END_FIL'
      'CODPAIS_CLI=CODPAIS_CLI'
      'INSCR_EST_FIL=INSCR_EST_FIL'
      'NOME_PAIS_CLI=NOME_PAIS_CLI'
      'VLR_OUTRAS_DESPESAS=VLR_OUTRAS_DESPESAS'
      'PERC_PIS_FIL=PERC_PIS_FIL'
      'PERC_COFINS_FIL=PERC_COFINS_FIL'
      'PERC_CSLL_FIL=PERC_CSLL_FIL'
      'CODMUNICIPIO_FIL=CODMUNICIPIO_FIL'
      'CIDADE_TRIB=CIDADE_TRIB'
      'UF_TRIB=UF_TRIB'
      'ID_CIDADE_TRIB=ID_CIDADE_TRIB'
      'PERC_TRIBUTO_ESTADUAL=PERC_TRIBUTO_ESTADUAL'
      'PERC_TRIBUTO_MUNICIPAL=PERC_TRIBUTO_MUNICIPAL'
      'VLR_TRIBUTO_ESTADUAL=VLR_TRIBUTO_ESTADUAL'
      'VLR_TRIBUTO_MUNICIPAL=VLR_TRIBUTO_MUNICIPAL'
      'VLR_TRIBUTO_FEDERAL=VLR_TRIBUTO_FEDERAL'
      'PERC_TRIBUTO_FEDERAL=PERC_TRIBUTO_FEDERAL'
      'VERSAO_TRIBUTO=VERSAO_TRIBUTO'
      'FONTE_TRIBUTO=FONTE_TRIBUTO'
      'SIMPLES_FILIAL=SIMPLES_FILIAL'
      'INCENTIVO_CULTURAL=INCENTIVO_CULTURAL'
      'CODREGIME_TRIBUTACAO=CODREGIME_TRIBUTACAO'
      'NOME_REGIME_TRIBUTACAO=NOME_REGIME_TRIBUTACAO')
    DataSource = dsNotaServico_Imp
    BCDToCurrency = False
    Left = 80
    Top = 504
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSource = dsNotaServico_Imp_Itens
    BCDToCurrency = False
    Left = 112
    Top = 504
  end
  object dsmFilial: TDataSource
    DataSet = sdsFilial
    Left = 760
    Top = 168
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
    Left = 616
    Top = 480
  end
  object cdsFilialRelatorios: TClientDataSet
    Aggregates = <>
    DataSetField = cdsFilialsdsFilialRelatorios
    Params = <>
    Left = 656
    Top = 480
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
    Left = 696
    Top = 480
  end
  object sdsOS_Simples: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT O.id, O.id_cliente, O.solicitante_nome, I.item, I.id_serv' +
      'ico,'#13#10'I.descricao, SI.nome NOME_SERVICO, SI.NOME || '#39' '#39' || I.des' +
      'cricao NOME_SERVICO_COMP,'#13#10'I.qtd, I.vlr_unitario, I.vlr_total, I' +
      '.concluido, o.dtconcluido, O.num_os'#13#10'FROM ORDEMSERVICO O'#13#10'INNER ' +
      'JOIN ordemservico_simples_item I'#13#10'ON O.id = I.id'#13#10'INNER JOIN SER' +
      'VICO_INT SI'#13#10'ON I.id_servico = SI.id'#13#10'WHERE ((I.faturado = '#39'N'#39') ' +
      'or (i.faturado is null))'#13#10'and (o.dtconcluido is not null)'#13#10'AND (' +
      'O.tp_simples = '#39'S'#39')'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 392
    Top = 503
  end
  object dspOS_Simples: TDataSetProvider
    DataSet = sdsOS_Simples
    Left = 424
    Top = 503
  end
  object cdsOS_Simples: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOS_Simples'
    Left = 464
    Top = 503
    object cdsOS_SimplesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOS_SimplesID_CLIENTE: TIntegerField
      DisplayLabel = 'ID Cliente'
      FieldName = 'ID_CLIENTE'
    end
    object cdsOS_SimplesSOLICITANTE_NOME: TStringField
      DisplayLabel = 'Nome Solicitante'
      FieldName = 'SOLICITANTE_NOME'
      Size = 60
    end
    object cdsOS_SimplesITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      Required = True
    end
    object cdsOS_SimplesID_SERVICO: TIntegerField
      DisplayLabel = 'ID Servi'#231'o'
      FieldName = 'ID_SERVICO'
    end
    object cdsOS_SimplesDESCRICAO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object cdsOS_SimplesNOME_SERVICO: TStringField
      DisplayLabel = 'Nome Servi'#231'o'
      FieldName = 'NOME_SERVICO'
      Size = 70
    end
    object cdsOS_SimplesNOME_SERVICO_COMP: TStringField
      DisplayLabel = 'Nome Servi'#231'o'
      FieldName = 'NOME_SERVICO_COMP'
      Size = 271
    end
    object cdsOS_SimplesQTD: TFloatField
      DisplayLabel = 'Qtde.'
      FieldName = 'QTD'
    end
    object cdsOS_SimplesVLR_UNITARIO: TFloatField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      FieldName = 'VLR_UNITARIO'
    end
    object cdsOS_SimplesVLR_TOTAL: TFloatField
      DisplayLabel = 'Vlr. Total'
      FieldName = 'VLR_TOTAL'
    end
    object cdsOS_SimplesCONCLUIDO: TStringField
      DisplayLabel = 'Conclu'#237'do'
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object cdsOS_SimplesDTCONCLUIDO: TDateField
      DisplayLabel = 'Data Conclu'#237'do'
      FieldName = 'DTCONCLUIDO'
    end
    object cdsOS_SimplesNUM_OS: TIntegerField
      DisplayLabel = 'N'#186' OS'
      FieldName = 'NUM_OS'
    end
  end
  object dsOS_Simples: TDataSource
    DataSet = cdsOS_Simples
    Left = 504
    Top = 503
  end
  object mOSAux: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'Tipo'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    IndexFieldNames = 'ID'
    Params = <>
    StoreDefs = True
    Left = 1064
    Top = 504
    Data = {
      3E0000009619E0BD0100000018000000020000000000030000003E0002494404
      00010000000000045469706F0100490000000100055749445448020002000100
      0000}
    object mOSAuxID: TIntegerField
      FieldName = 'ID'
    end
    object mOSAuxTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
  end
  object sdsNotaServico_Contrato: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NOTASERVICO_CONTRATO'#13#10'WHERE ID = :ID'#13#10
    DataSource = dsNotaServico_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 120
    Top = 195
    object sdsNotaServico_ContratoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNotaServico_ContratoID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
      Required = True
    end
    object sdsNotaServico_ContratoNUM_CONTRATO: TIntegerField
      FieldName = 'NUM_CONTRATO'
    end
    object sdsNotaServico_ContratoANO_CONTRATO: TIntegerField
      FieldName = 'ANO_CONTRATO'
    end
    object sdsNotaServico_ContratoANO_REF: TIntegerField
      FieldName = 'ANO_REF'
    end
    object sdsNotaServico_ContratoMES_REF: TIntegerField
      FieldName = 'MES_REF'
    end
    object sdsNotaServico_ContratoSTATUS_RPS: TStringField
      FieldName = 'STATUS_RPS'
      FixedChar = True
      Size = 1
    end
  end
  object cdsNotaServico_Contrato: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNotaServicosdsNotaServico_Contrato
    IndexFieldNames = 'ID;ID_CONTRATO'
    Params = <>
    Left = 176
    Top = 195
    object cdsNotaServico_ContratoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaServico_ContratoID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
      Required = True
    end
    object cdsNotaServico_ContratoNUM_CONTRATO: TIntegerField
      FieldName = 'NUM_CONTRATO'
    end
    object cdsNotaServico_ContratoANO_CONTRATO: TIntegerField
      FieldName = 'ANO_CONTRATO'
    end
    object cdsNotaServico_ContratoANO_REF: TIntegerField
      FieldName = 'ANO_REF'
    end
    object cdsNotaServico_ContratoMES_REF: TIntegerField
      FieldName = 'MES_REF'
    end
    object cdsNotaServico_ContratoSTATUS_RPS: TStringField
      FieldName = 'STATUS_RPS'
      FixedChar = True
      Size = 1
    end
  end
  object dsNotaServico_Contrato: TDataSource
    DataSet = cdsNotaServico_Contrato
    Left = 248
    Top = 195
  end
  object qParametros_Ser: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_SER'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 840
    Top = 440
    object qParametros_SerID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_SerAGRUPA_CONTRATO_NFSE: TStringField
      FieldName = 'AGRUPA_CONTRATO_NFSE'
      FixedChar = True
      Size = 1
    end
    object qParametros_SerIMP_CONTRATO_NFSE: TStringField
      FieldName = 'IMP_CONTRATO_NFSE'
      FixedChar = True
      Size = 1
    end
    object qParametros_SerCID_PRESTACAO_SERV: TStringField
      FieldName = 'CID_PRESTACAO_SERV'
      FixedChar = True
      Size = 1
    end
    object qParametros_SerUSA_NATUREZA_CID_NFSE: TStringField
      FieldName = 'USA_NATUREZA_CID_NFSE'
      FixedChar = True
      Size = 1
    end
    object qParametros_SerUSA_CALC_PISCOFINS: TStringField
      FieldName = 'USA_CALC_PISCOFINS'
      FixedChar = True
      Size = 1
    end
  end
  object sdsNotaServico_Imp_Contrato: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NOTASERVICO_CONTRATO'#13#10'WHERE ID = :ID'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 400
    Top = 232
  end
  object dspNotaServico_Imp_Contrato: TDataSetProvider
    DataSet = sdsNotaServico_Imp_Contrato
    Left = 432
    Top = 232
  end
  object cdsNotaServico_Imp_Contrato: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaServico_Imp_Contrato'
    Left = 472
    Top = 232
    object cdsNotaServico_Imp_ContratoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaServico_Imp_ContratoID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
      Required = True
    end
    object cdsNotaServico_Imp_ContratoNUM_CONTRATO: TIntegerField
      FieldName = 'NUM_CONTRATO'
    end
    object cdsNotaServico_Imp_ContratoANO_CONTRATO: TIntegerField
      FieldName = 'ANO_CONTRATO'
    end
    object cdsNotaServico_Imp_ContratoANO_REF: TIntegerField
      FieldName = 'ANO_REF'
    end
    object cdsNotaServico_Imp_ContratoMES_REF: TIntegerField
      FieldName = 'MES_REF'
    end
    object cdsNotaServico_Imp_ContratoSTATUS_RPS: TStringField
      FieldName = 'STATUS_RPS'
      FixedChar = True
      Size = 1
    end
  end
  object dsNotaServico_Imp_Contrato: TDataSource
    DataSet = cdsNotaServico_Imp_Contrato
    Left = 512
    Top = 232
  end
  object dsPedido: TDataSource
    DataSet = cdsPedido
    Left = 721
    Top = 541
  end
  object cdsPedido: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspPedido'
    Left = 681
    Top = 541
    object cdsPedidoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedidoPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsPedidoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsPedidoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsPedidoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsPedidoID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsPedidoNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPedidoVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsPedidoQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedidoQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsPedidoQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsPedidoQTD_AFATURAR: TFloatField
      FieldName = 'QTD_AFATURAR'
    end
    object cdsPedidoID_NCM_PED: TIntegerField
      FieldName = 'ID_NCM_PED'
    end
    object cdsPedidoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsPedidoITEM_CLIENTE: TIntegerField
      FieldName = 'ITEM_CLIENTE'
    end
    object cdsPedidoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 60
    end
    object cdsPedidoREFERENCIA_PRO: TStringField
      FieldName = 'REFERENCIA_PRO'
    end
    object cdsPedidoNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsPedidoCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsPedidoDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsPedidoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPedidoVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object cdsPedidoID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsPedidoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsPedidoPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsPedidoOBS_COMPLEMENTAR: TStringField
      FieldName = 'OBS_COMPLEMENTAR'
      Size = 250
    end
    object cdsPedidoNUMOS: TStringField
      FieldName = 'NUMOS'
      Size = 30
    end
    object cdsPedidoTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
    object cdsPedidoID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsPedidoIMP_OC_NOTA: TStringField
      FieldName = 'IMP_OC_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
    object cdsPedidoQTD_LIBERADA: TFloatField
      FieldName = 'QTD_LIBERADA'
    end
    object cdsPedidoQTD_PRODUZIDA: TFloatField
      FieldName = 'QTD_PRODUZIDA'
    end
    object cdsPedidoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsPedidoID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsPedidoNUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object cdsPedidoNUM_TALAO: TStringField
      FieldName = 'NUM_TALAO'
      Size = 15
    end
    object cdsPedidoVLR_DESCONTORATEIO: TFloatField
      FieldName = 'VLR_DESCONTORATEIO'
    end
    object cdsPedidoID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object cdsPedidoID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object cdsPedidoQTD_LANCAR_ESTOQUE: TFloatField
      FieldName = 'QTD_LANCAR_ESTOQUE'
    end
    object cdsPedidoNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      Size = 40
    end
    object cdsPedidoNOME_CONSUMIDOR: TStringField
      FieldName = 'NOME_CONSUMIDOR'
      Size = 30
    end
    object cdsPedidoVLR_ADIANTAMENTO: TFloatField
      FieldName = 'VLR_ADIANTAMENTO'
    end
    object cdsPedidoPERC_COMISSAO_ITEM: TFloatField
      FieldName = 'PERC_COMISSAO_ITEM'
    end
    object cdsPedidoPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsPedidoNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object cdsPedidoID_TIPO_COBRANCA: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA'
    end
    object cdsPedidoID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsPedidoCOPIAR_SELECIONADO: TStringField
      FieldName = 'COPIAR_SELECIONADO'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsPedidoVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object cdsPedidoGERA_ENTRADA_NO_PEDIDO: TStringField
      FieldName = 'GERA_ENTRADA_NO_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoITEM_ORIGINAL: TIntegerField
      FieldName = 'ITEM_ORIGINAL'
    end
    object cdsPedidoVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object cdsPedidoOBS_NOTA: TStringField
      FieldName = 'OBS_NOTA'
      Size = 250
    end
    object cdsPedidoID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsPedidoTIPO_SERVICO: TStringField
      FieldName = 'TIPO_SERVICO'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoNOME_SERVICO_INT: TStringField
      FieldName = 'NOME_SERVICO_INT'
      Size = 150
    end
    object cdsPedidoNOME_PRODUTO_PED: TStringField
      FieldName = 'NOME_PRODUTO_PED'
      Size = 100
    end
  end
  object dspPedido: TDataSetProvider
    DataSet = sdsPedido
    Left = 641
    Top = 541
  end
  object sdsPedido: TSQLDataSet
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
      'ORA, PE.NUM_DOC,'#13#10'PI.NUM_TALAO, PI.VLR_DESCONTORATEIO, PI.ID_COR' +
      ', PI.ID_MOVESTOQUE, PI.QTD_LANCAR_ESTOQUE,'#13#10'GR.nome NOME_GRUPO, ' +
      'PE.NOME_CONSUMIDOR, PE.VLR_ADIANTAMENTO, PI.PERC_COMISSAO PERC_C' +
      'OMISSAO_ITEM, PE.PERC_COMISSAO, PI.NUM_LOTE_CONTROLE,'#13#10'PE.ID_TIP' +
      'O_COBRANCA, PE.ID_CONTA, PI.COPIAR_SELECIONADO, PE.ID_VENDEDOR, ' +
      'PE.VLR_ENTRADA,'#13#10'PE.GERA_ENTRADA_NO_PEDIDO, PI.ITEM_ORIGINAL, PE' +
      '.VLR_FRETE, PE.OBS_NOTA,'#13#10'PI.id_servico_int, PI.tipo_servico, PI' +
      '.nome_servico_int, PI.NOMEPRODUTO NOME_PRODUTO_PED'#13#10'FROM PEDIDO ' +
      'PE'#13#10'INNER JOIN PEDIDO_ITEM PI ON (PE.ID = PI.ID)'#13#10'INNER JOIN PES' +
      'SOA CLI ON (PE.ID_CLIENTE = CLI.CODIGO)'#13#10'INNER JOIN PRODUTO PRO ' +
      'ON (PI.ID_PRODUTO = PRO.ID)'#13#10'LEFT JOIN GRUPO GR'#13#10'ON PRO.id_grupo' +
      ' = GR.id'#13#10'WHERE PI.qtd_restante > 0'#13#10'  AND PI.TIPO_SERVICO = '#39'S'#39 +
      #13#10'  AND PE.TIPO_REG = '#39'P'#39#13#10'      '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 609
    Top = 541
  end
  object qParametros_Ped: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT CONTROLAR_FILIAL_NA_COPIA_NOTA, USA_OPERACAO_SERV'
      'FROM PARAMETROS_PED')
    SQLConnection = dmDatabase.scoDados
    Left = 1120
    Top = 328
    object qParametros_PedCONTROLAR_FILIAL_NA_COPIA_NOTA: TStringField
      FieldName = 'CONTROLAR_FILIAL_NA_COPIA_NOTA'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSA_OPERACAO_SERV: TStringField
      FieldName = 'USA_OPERACAO_SERV'
      FixedChar = True
      Size = 1
    end
  end
  object mPedidoAux: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Pedido'
        DataType = ftInteger
      end
      item
        Name = 'OBS_Nota'
        DataType = ftString
        Size = 250
      end>
    IndexDefs = <>
    IndexFieldNames = 'ID_Pedido'
    Params = <>
    StoreDefs = True
    Left = 1121
    Top = 504
    Data = {
      490000009619E0BD01000000180000000200000000000300000049000949445F
      50656469646F0400010000000000084F42535F4E6F7461010049000000010005
      574944544802000200FA000000}
    object mPedidoAuxID_Pedido: TIntegerField
      FieldName = 'ID_Pedido'
    end
    object mPedidoAuxOBS_Nota: TStringField
      FieldName = 'OBS_Nota'
      Size = 250
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
    Left = 1185
    Top = 424
  end
  object sdsOS_Serv: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT OS.ID, OS.NUM_OS, OSS.ITEM, SI.ID ID_SERVICO, SI.NOME, OS' +
      'S.TEMPO_TOTAL, OSS.VLR_TOTAL'#13#10'FROM ORDEMSERVICO OS'#13#10'INNER JOIN O' +
      'RDEMSERVICO_SERV OSS ON (OS.ID = OSS.ID)'#13#10'INNER JOIN SERVICO_INT' +
      ' SI ON (OSS.ID_SERVICO_INT = SI.ID)'#13#10'WHERE (OS.DTCONCLUIDO IS NO' +
      'T NULL)'#13#10' AND (OS.STATUS <> '#39'9'#39')'#13#10' AND ((OSS.FATURADO IS NULL) O' +
      'R (OSS.FATURADO <> '#39'S'#39'))'#13#10' AND (OSS.VLR_TOTAL > 0)'#13#10' AND OS.ID_C' +
      'LIENTE = :C1'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'C1'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 392
    Top = 551
  end
  object dspOS_Serv: TDataSetProvider
    DataSet = sdsOS_Serv
    Left = 424
    Top = 551
  end
  object cdsOS_Serv: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOS_Serv'
    Left = 464
    Top = 551
    object cdsOS_ServID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOS_ServITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsOS_ServNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object cdsOS_ServID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
      Required = True
    end
    object cdsOS_ServNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object cdsOS_ServTEMPO_TOTAL: TFloatField
      FieldName = 'TEMPO_TOTAL'
    end
    object cdsOS_ServVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
  end
  object dsOS_Serv: TDataSource
    DataSet = cdsOS_Serv
    Left = 504
    Top = 551
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
    Left = 840
    Top = 488
    object qParametros_UsuarioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_UsuarioUSUARIO: TStringField
      FieldName = 'USUARIO'
      Required = True
      Size = 30
    end
    object qParametros_UsuarioSENHA_PEDIDO: TStringField
      FieldName = 'SENHA_PEDIDO'
      Size = 10
    end
    object qParametros_UsuarioSENHA_CREDITO: TStringField
      FieldName = 'SENHA_CREDITO'
      Size = 15
    end
    object qParametros_UsuarioALT_PRECO_PED: TStringField
      FieldName = 'ALT_PRECO_PED'
      FixedChar = True
      Size = 1
    end
    object qParametros_UsuarioCONFIRMA_ENVIO_NFE: TStringField
      FieldName = 'CONFIRMA_ENVIO_NFE'
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
    Left = 840
    Top = 535
    object qParametros_GeralGRAVAR_HIST_SENHA: TStringField
      FieldName = 'GRAVAR_HIST_SENHA'
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
    Left = 888
    Top = 440
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
  object qParametros_Fin: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_FIN'
      'WHERE ID = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 1088
    Top = 384
    object qParametros_FinUSA_PERC_CONDPGTO: TStringField
      FieldName = 'USA_PERC_CONDPGTO'
      FixedChar = True
      Size = 1
    end
    object qParametros_FinQTD_DIAS_MPAG: TIntegerField
      FieldName = 'QTD_DIAS_MPAG'
    end
  end
  object qVerDup: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_NOTA_SERVICO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select COUNT(1) CONTADOR'
      'from duplicata D'
      'where D.ID_NOTA_SERVICO = :ID_NOTA_SERVICO'
      
        '  AND ((D.vlr_pago > 0) or ((D.nossonumero <> '#39#39') AND (D.nossonu' +
        'mero IS NOT NULL)))')
    SQLConnection = dmDatabase.scoDados
    Left = 960
    Top = 560
    object qVerDupCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      Required = True
    end
  end
end
