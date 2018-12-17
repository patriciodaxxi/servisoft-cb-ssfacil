object DMCadNotaFiscal: TDMCadNotaFiscal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 57
  Top = 6
  Height = 728
  Width = 1296
  object sdsNotaFiscal: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NOTAFISCAL'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 27
    object sdsNotaFiscalID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscalFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsNotaFiscalSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object sdsNotaFiscalNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object sdsNotaFiscalDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsNotaFiscalID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object sdsNotaFiscalID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsNotaFiscalID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object sdsNotaFiscalID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsNotaFiscalVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object sdsNotaFiscalVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object sdsNotaFiscalVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
    end
    object sdsNotaFiscalVLR_ITENS: TFloatField
      FieldName = 'VLR_ITENS'
    end
    object sdsNotaFiscalVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object sdsNotaFiscalVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object sdsNotaFiscalPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object sdsNotaFiscalVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object sdsNotaFiscalVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object sdsNotaFiscalVLR_SEGURO: TFloatField
      FieldName = 'VLR_SEGURO'
    end
    object sdsNotaFiscalVLR_OUTRASDESP: TFloatField
      FieldName = 'VLR_OUTRASDESP'
    end
    object sdsNotaFiscalBASE_ICMSTRANSF: TFloatField
      FieldName = 'BASE_ICMSTRANSF'
    end
    object sdsNotaFiscalPERC_TRANSF: TFloatField
      FieldName = 'PERC_TRANSF'
    end
    object sdsNotaFiscalVLR_TRANSF: TFloatField
      FieldName = 'VLR_TRANSF'
    end
    object sdsNotaFiscalVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
    end
    object sdsNotaFiscalVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
    end
    object sdsNotaFiscalVLR_TAXACISCOMEX: TFloatField
      FieldName = 'VLR_TAXACISCOMEX'
    end
    object sdsNotaFiscalVLR_OUTROS: TFloatField
      FieldName = 'VLR_OUTROS'
    end
    object sdsNotaFiscalBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
    end
    object sdsNotaFiscalVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
    end
    object sdsNotaFiscalPERC_ICMSSIMPLES: TFloatField
      FieldName = 'PERC_ICMSSIMPLES'
    end
    object sdsNotaFiscalVLR_IMPORTACAO: TFloatField
      FieldName = 'VLR_IMPORTACAO'
    end
    object sdsNotaFiscalBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
    end
    object sdsNotaFiscalVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
    end
    object sdsNotaFiscalBASE_ICMSOUTROS: TFloatField
      FieldName = 'BASE_ICMSOUTROS'
    end
    object sdsNotaFiscalVLR_ICMSOUTROS: TFloatField
      FieldName = 'VLR_ICMSOUTROS'
    end
    object sdsNotaFiscalVLR_DUPLICATAOUTROS: TFloatField
      FieldName = 'VLR_DUPLICATAOUTROS'
    end
    object sdsNotaFiscalVLR_ADUANEIRA: TFloatField
      FieldName = 'VLR_ADUANEIRA'
    end
    object sdsNotaFiscalPERC_ICMS_PISCOFINS: TFloatField
      FieldName = 'PERC_ICMS_PISCOFINS'
    end
    object sdsNotaFiscalPERC_ICMS_OUTROSVALORES: TFloatField
      FieldName = 'PERC_ICMS_OUTROSVALORES'
    end
    object sdsNotaFiscalPERC_ICMS_FRETE: TFloatField
      FieldName = 'PERC_ICMS_FRETE'
    end
    object sdsNotaFiscalPERC_DESCONTOORIG: TFloatField
      FieldName = 'PERC_DESCONTOORIG'
    end
    object sdsNotaFiscalQTDVOLUME: TIntegerField
      FieldName = 'QTDVOLUME'
    end
    object sdsNotaFiscalESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 30
    end
    object sdsNotaFiscalMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object sdsNotaFiscalNUMEROVOLUME: TStringField
      FieldName = 'NUMEROVOLUME'
      Size = 30
    end
    object sdsNotaFiscalPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object sdsNotaFiscalPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object sdsNotaFiscalPLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object sdsNotaFiscalUFPLACA: TStringField
      FieldName = 'UFPLACA'
      Size = 2
    end
    object sdsNotaFiscalTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
    object sdsNotaFiscalID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object sdsNotaFiscalID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object sdsNotaFiscalCANCELADA: TStringField
      FieldName = 'CANCELADA'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalMOTIVO_CANCELADA: TStringField
      FieldName = 'MOTIVO_CANCELADA'
      Size = 100
    end
    object sdsNotaFiscalDTSAIDAENTRADA: TDateField
      FieldName = 'DTSAIDAENTRADA'
    end
    object sdsNotaFiscalHRSAIDAENTRADA: TTimeField
      FieldName = 'HRSAIDAENTRADA'
    end
    object sdsNotaFiscalID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object sdsNotaFiscalLOCALENTREGA: TStringField
      FieldName = 'LOCALENTREGA'
      Size = 1
    end
    object sdsNotaFiscalID_EXTCOMISSAO: TIntegerField
      FieldName = 'ID_EXTCOMISSAO'
    end
    object sdsNotaFiscalDESCRICAO_DESC: TStringField
      FieldName = 'DESCRICAO_DESC'
      Size = 70
    end
    object sdsNotaFiscalID_CLIENTETRIANG: TIntegerField
      FieldName = 'ID_CLIENTETRIANG'
    end
    object sdsNotaFiscalQTDTOTAL_ITENS: TIntegerField
      FieldName = 'QTDTOTAL_ITENS'
    end
    object sdsNotaFiscalNFERECIBO: TStringField
      FieldName = 'NFERECIBO'
      Size = 45
    end
    object sdsNotaFiscalNFEPROTOCOLO: TStringField
      FieldName = 'NFEPROTOCOLO'
      Size = 45
    end
    object sdsNotaFiscalNFECHAVEACESSO: TStringField
      FieldName = 'NFECHAVEACESSO'
      Size = 44
    end
    object sdsNotaFiscalNFEPROTOCOLO_CANCELADA: TStringField
      FieldName = 'NFEPROTOCOLO_CANCELADA'
      Size = 45
    end
    object sdsNotaFiscalTIPO_ENVIONFE: TStringField
      FieldName = 'TIPO_ENVIONFE'
      Size = 25
    end
    object sdsNotaFiscalNFECODBARRA_CONTINGENCIA: TStringField
      FieldName = 'NFECODBARRA_CONTINGENCIA'
      Size = 44
    end
    object sdsNotaFiscalNFEVERSAO: TStringField
      FieldName = 'NFEVERSAO'
      Size = 10
    end
    object sdsNotaFiscalNFEFINALIDADE: TStringField
      FieldName = 'NFEFINALIDADE'
      Size = 1
    end
    object sdsNotaFiscalNFEAMBIENTE: TStringField
      FieldName = 'NFEAMBIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalNUMNOTACOPIADA: TIntegerField
      FieldName = 'NUMNOTACOPIADA'
    end
    object sdsNotaFiscalSERIECOPIADA: TStringField
      FieldName = 'SERIECOPIADA'
      Size = 3
    end
    object sdsNotaFiscalDTCONTINGENCIA: TDateField
      FieldName = 'DTCONTINGENCIA'
    end
    object sdsNotaFiscalHRCONTINGENCIA: TTimeField
      FieldName = 'HRCONTINGENCIA'
    end
    object sdsNotaFiscalMOTIVO_CONTINGENCIA: TStringField
      FieldName = 'MOTIVO_CONTINGENCIA'
      Size = 250
    end
    object sdsNotaFiscalNFEVERSAOEMISSAO: TStringField
      FieldName = 'NFEVERSAOEMISSAO'
    end
    object sdsNotaFiscalID_REGIMETRIB: TIntegerField
      FieldName = 'ID_REGIMETRIB'
    end
    object sdsNotaFiscalRNTC: TStringField
      FieldName = 'RNTC'
    end
    object sdsNotaFiscalVAGAOBALSA_IDENTIF: TStringField
      FieldName = 'VAGAOBALSA_IDENTIF'
    end
    object sdsNotaFiscalVAGAOBALSA_TIPOIDENTIF: TStringField
      FieldName = 'VAGAOBALSA_TIPOIDENTIF'
      Size = 1
    end
    object sdsNotaFiscalUFEMBEXPORTACAO: TStringField
      FieldName = 'UFEMBEXPORTACAO'
      Size = 2
    end
    object sdsNotaFiscalLOCALEMBEXPORTACAO: TStringField
      FieldName = 'LOCALEMBEXPORTACAO'
      Size = 60
    end
    object sdsNotaFiscalPISCOFINS_SOMAROUTRASDESP: TStringField
      FieldName = 'PISCOFINS_SOMAROUTRASDESP'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalGERARDUPL_OUTROSVALORES: TStringField
      FieldName = 'GERARDUPL_OUTROSVALORES'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalGERARDUPL_FRETE: TStringField
      FieldName = 'GERARDUPL_FRETE'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalGERARDUPL_SEGURO: TStringField
      FieldName = 'GERARDUPL_SEGURO'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalINFORMADO_NUMNOTAMANUAL: TStringField
      FieldName = 'INFORMADO_NUMNOTAMANUAL'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalNFEDENEGADA: TStringField
      FieldName = 'NFEDENEGADA'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalMOTIVO_DENEGADA: TStringField
      FieldName = 'MOTIVO_DENEGADA'
      Size = 250
    end
    object sdsNotaFiscalDADOS_ADICIONAIS: TMemoField
      FieldName = 'DADOS_ADICIONAIS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsNotaFiscalBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object sdsNotaFiscalDTINICIO_DUPLICATA: TDateField
      FieldName = 'DTINICIO_DUPLICATA'
    end
    object sdsNotaFiscalTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      Size = 1
    end
    object sdsNotaFiscalTIPO_PRAZO: TStringField
      FieldName = 'TIPO_PRAZO'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsNotaFiscalTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalSIMPLES_FILIAL: TStringField
      FieldName = 'SIMPLES_FILIAL'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object sdsNotaFiscalID_OPERACAO_NOTA: TIntegerField
      FieldName = 'ID_OPERACAO_NOTA'
    end
    object sdsNotaFiscalFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
    object sdsNotaFiscalSTATUS_MANIFESTO: TStringField
      FieldName = 'STATUS_MANIFESTO'
      Size = 3
    end
    object sdsNotaFiscalID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object sdsNotaFiscalID_TIPO_COBRANCA: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA'
    end
    object sdsNotaFiscalCALCULAR_IMP_ITEM: TStringField
      FieldName = 'CALCULAR_IMP_ITEM'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalGRAVOU_DADOSADICIONAIS: TStringField
      FieldName = 'GRAVOU_DADOSADICIONAIS'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalVLR_TRIBUTOS: TFloatField
      FieldName = 'VLR_TRIBUTOS'
    end
    object sdsNotaFiscalUSA_TRANSFICMS: TStringField
      FieldName = 'USA_TRANSFICMS'
      Size = 1
    end
    object sdsNotaFiscalID_NOTACOPIADA: TIntegerField
      FieldName = 'ID_NOTACOPIADA'
    end
    object sdsNotaFiscalID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object sdsNotaFiscalNOTA_ESTORNO: TStringField
      FieldName = 'NOTA_ESTORNO'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalCOD_MODELO: TStringField
      FieldName = 'COD_MODELO'
      Size = 2
    end
    object sdsNotaFiscalCOD_CONS_EE: TStringField
      FieldName = 'COD_CONS_EE'
      Size = 2
    end
    object sdsNotaFiscalCOD_CONS_AGUA: TStringField
      FieldName = 'COD_CONS_AGUA'
      Size = 2
    end
    object sdsNotaFiscalVLR_ICMSSUBST_PROPRIO: TFloatField
      FieldName = 'VLR_ICMSSUBST_PROPRIO'
    end
    object sdsNotaFiscalBASE_ICMSSUBST_PROPRIO: TFloatField
      FieldName = 'BASE_ICMSSUBST_PROPRIO'
    end
    object sdsNotaFiscalHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object sdsNotaFiscalTIPO_DESTINO_OPERACAO: TSmallintField
      FieldName = 'TIPO_DESTINO_OPERACAO'
    end
    object sdsNotaFiscalTIPO_CONSUMIDOR: TSmallintField
      FieldName = 'TIPO_CONSUMIDOR'
    end
    object sdsNotaFiscalTIPO_ATENDIMENTO: TSmallintField
      FieldName = 'TIPO_ATENDIMENTO'
    end
    object sdsNotaFiscalLOCALDESPEXPORTACAO: TStringField
      FieldName = 'LOCALDESPEXPORTACAO'
      Size = 60
    end
    object sdsNotaFiscalVLR_ICMSDESONERADO: TFloatField
      FieldName = 'VLR_ICMSDESONERADO'
    end
    object sdsNotaFiscalVLR_TRIBUTOS_ESTADUAL: TFloatField
      FieldName = 'VLR_TRIBUTOS_ESTADUAL'
    end
    object sdsNotaFiscalVLR_TRIBUTOS_MUNICIPAL: TFloatField
      FieldName = 'VLR_TRIBUTOS_MUNICIPAL'
    end
    object sdsNotaFiscalFONTE_TRIBUTOS: TStringField
      FieldName = 'FONTE_TRIBUTOS'
      Size = 30
    end
    object sdsNotaFiscalVERSAO_TRIBUTOS: TStringField
      FieldName = 'VERSAO_TRIBUTOS'
      Size = 15
    end
    object sdsNotaFiscalVLR_TRIBUTOS_FEDERAL: TFloatField
      FieldName = 'VLR_TRIBUTOS_FEDERAL'
    end
    object sdsNotaFiscalPERC_COMISSAO_PAGAR_NOTA: TFloatField
      FieldName = 'PERC_COMISSAO_PAGAR_NOTA'
    end
    object sdsNotaFiscalNFEENVIADA: TStringField
      FieldName = 'NFEENVIADA'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object sdsNotaFiscalVLR_ADIANTAMENTO: TFloatField
      FieldName = 'VLR_ADIANTAMENTO'
    end
    object sdsNotaFiscalVLR_ICMS_FCP: TFloatField
      FieldName = 'VLR_ICMS_FCP'
    end
    object sdsNotaFiscalVLR_ICMS_UF_DEST: TFloatField
      FieldName = 'VLR_ICMS_UF_DEST'
    end
    object sdsNotaFiscalVLR_ICMS_UF_REMET: TFloatField
      FieldName = 'VLR_ICMS_UF_REMET'
    end
    object sdsNotaFiscalVLR_BASE_COMISSAO: TFloatField
      FieldName = 'VLR_BASE_COMISSAO'
    end
    object sdsNotaFiscalNOTIFICACAO: TIntegerField
      FieldName = 'NOTIFICACAO'
    end
    object sdsNotaFiscalVLR_PIS_COFINS_SUFRAMA: TFloatField
      FieldName = 'VLR_PIS_COFINS_SUFRAMA'
    end
    object sdsNotaFiscalVLR_DESC_SUFRAMA: TFloatField
      FieldName = 'VLR_DESC_SUFRAMA'
    end
    object sdsNotaFiscalIBPT_CHAVE: TStringField
      FieldName = 'IBPT_CHAVE'
    end
    object sdsNotaFiscalVLR_AFRMM: TFloatField
      FieldName = 'VLR_AFRMM'
    end
    object sdsNotaFiscalQTD_TOTAL_PRODUTOS: TFloatField
      FieldName = 'QTD_TOTAL_PRODUTOS'
    end
    object sdsNotaFiscalVLR_AJUSTE_CUSTO: TFloatField
      FieldName = 'VLR_AJUSTE_CUSTO'
    end
    object sdsNotaFiscalTIPO_AJUSTE_CUSTO: TStringField
      FieldName = 'TIPO_AJUSTE_CUSTO'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalVLR_FRETE_CUSTO: TFloatField
      FieldName = 'VLR_FRETE_CUSTO'
    end
    object sdsNotaFiscalUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsNotaFiscalNGR: TStringField
      FieldName = 'NGR'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalID_TAB_PRECO: TIntegerField
      FieldName = 'ID_TAB_PRECO'
    end
    object sdsNotaFiscalID_PREFAT: TIntegerField
      FieldName = 'ID_PREFAT'
    end
    object sdsNotaFiscalBASE_ICMS_FCP: TFloatField
      FieldName = 'BASE_ICMS_FCP'
    end
    object sdsNotaFiscalBASE_FCP_ST: TFloatField
      FieldName = 'BASE_FCP_ST'
    end
    object sdsNotaFiscalVLR_FCP_ST: TFloatField
      FieldName = 'VLR_FCP_ST'
    end
    object sdsNotaFiscalPERC_FCP_ST: TFloatField
      FieldName = 'PERC_FCP_ST'
    end
    object sdsNotaFiscalVLR_ICMS_FCP_DEST: TFloatField
      FieldName = 'VLR_ICMS_FCP_DEST'
    end
    object sdsNotaFiscalBASE_ICMS_FCP_DEST: TFloatField
      FieldName = 'BASE_ICMS_FCP_DEST'
    end
    object sdsNotaFiscalSOMAR_FRETE_II: TStringField
      FieldName = 'SOMAR_FRETE_II'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalVLR_IPI_DEVOL: TFloatField
      FieldName = 'VLR_IPI_DEVOL'
    end
    object sdsNotaFiscalBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
    end
  end
  object dspNotaFiscal: TDataSetProvider
    DataSet = sdsNotaFiscal
    Options = [poCascadeDeletes, poCascadeUpdates]
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspNotaFiscalUpdateError
    Left = 59
  end
  object cdsNotaFiscal: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspNotaFiscal'
    BeforePost = cdsNotaFiscalBeforePost
    OnNewRecord = cdsNotaFiscalNewRecord
    Left = 91
    object cdsNotaFiscalID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscalFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object cdsNotaFiscalSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsNotaFiscalNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsNotaFiscalDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsNotaFiscalID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsNotaFiscalID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsNotaFiscalID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsNotaFiscalID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsNotaFiscalVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_ITENS: TFloatField
      FieldName = 'VLR_ITENS'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_SEGURO: TFloatField
      FieldName = 'VLR_SEGURO'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_OUTRASDESP: TFloatField
      FieldName = 'VLR_OUTRASDESP'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalBASE_ICMSTRANSF: TFloatField
      FieldName = 'BASE_ICMSTRANSF'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalPERC_TRANSF: TFloatField
      FieldName = 'PERC_TRANSF'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_TRANSF: TFloatField
      FieldName = 'VLR_TRANSF'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_TAXACISCOMEX: TFloatField
      FieldName = 'VLR_TAXACISCOMEX'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_OUTROS: TFloatField
      FieldName = 'VLR_OUTROS'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalPERC_ICMSSIMPLES: TFloatField
      FieldName = 'PERC_ICMSSIMPLES'
      DisplayFormat = '0.0000'
    end
    object cdsNotaFiscalVLR_IMPORTACAO: TFloatField
      FieldName = 'VLR_IMPORTACAO'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalBASE_ICMSOUTROS: TFloatField
      FieldName = 'BASE_ICMSOUTROS'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_ICMSOUTROS: TFloatField
      FieldName = 'VLR_ICMSOUTROS'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_DUPLICATAOUTROS: TFloatField
      FieldName = 'VLR_DUPLICATAOUTROS'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_ADUANEIRA: TFloatField
      FieldName = 'VLR_ADUANEIRA'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalPERC_ICMS_PISCOFINS: TFloatField
      FieldName = 'PERC_ICMS_PISCOFINS'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalPERC_ICMS_OUTROSVALORES: TFloatField
      FieldName = 'PERC_ICMS_OUTROSVALORES'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalPERC_ICMS_FRETE: TFloatField
      FieldName = 'PERC_ICMS_FRETE'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalPERC_DESCONTOORIG: TFloatField
      FieldName = 'PERC_DESCONTOORIG'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalQTDVOLUME: TIntegerField
      FieldName = 'QTDVOLUME'
    end
    object cdsNotaFiscalESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 30
    end
    object cdsNotaFiscalMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object cdsNotaFiscalNUMEROVOLUME: TStringField
      FieldName = 'NUMEROVOLUME'
      Size = 30
    end
    object cdsNotaFiscalPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object cdsNotaFiscalPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object cdsNotaFiscalPLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object cdsNotaFiscalUFPLACA: TStringField
      FieldName = 'UFPLACA'
      Size = 2
    end
    object cdsNotaFiscalTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
    object cdsNotaFiscalID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsNotaFiscalID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object cdsNotaFiscalCANCELADA: TStringField
      FieldName = 'CANCELADA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalMOTIVO_CANCELADA: TStringField
      FieldName = 'MOTIVO_CANCELADA'
      Size = 100
    end
    object cdsNotaFiscalDTSAIDAENTRADA: TDateField
      FieldName = 'DTSAIDAENTRADA'
    end
    object cdsNotaFiscalHRSAIDAENTRADA: TTimeField
      FieldName = 'HRSAIDAENTRADA'
    end
    object cdsNotaFiscalID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object cdsNotaFiscalLOCALENTREGA: TStringField
      FieldName = 'LOCALENTREGA'
      Size = 1
    end
    object cdsNotaFiscalID_EXTCOMISSAO: TIntegerField
      FieldName = 'ID_EXTCOMISSAO'
    end
    object cdsNotaFiscalDESCRICAO_DESC: TStringField
      FieldName = 'DESCRICAO_DESC'
      Size = 70
    end
    object cdsNotaFiscalID_CLIENTETRIANG: TIntegerField
      FieldName = 'ID_CLIENTETRIANG'
    end
    object cdsNotaFiscalQTDTOTAL_ITENS: TIntegerField
      FieldName = 'QTDTOTAL_ITENS'
    end
    object cdsNotaFiscalNFERECIBO: TStringField
      FieldName = 'NFERECIBO'
      Size = 45
    end
    object cdsNotaFiscalNFEPROTOCOLO: TStringField
      FieldName = 'NFEPROTOCOLO'
      Size = 45
    end
    object cdsNotaFiscalNFECHAVEACESSO: TStringField
      FieldName = 'NFECHAVEACESSO'
      Size = 44
    end
    object cdsNotaFiscalNFEPROTOCOLO_CANCELADA: TStringField
      FieldName = 'NFEPROTOCOLO_CANCELADA'
      Size = 45
    end
    object cdsNotaFiscalTIPO_ENVIONFE: TStringField
      FieldName = 'TIPO_ENVIONFE'
      Size = 25
    end
    object cdsNotaFiscalNFECODBARRA_CONTINGENCIA: TStringField
      FieldName = 'NFECODBARRA_CONTINGENCIA'
      Size = 44
    end
    object cdsNotaFiscalNFEVERSAO: TStringField
      FieldName = 'NFEVERSAO'
      Size = 10
    end
    object cdsNotaFiscalNFEFINALIDADE: TStringField
      FieldName = 'NFEFINALIDADE'
      Size = 1
    end
    object cdsNotaFiscalNFEAMBIENTE: TStringField
      FieldName = 'NFEAMBIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalNUMNOTACOPIADA: TIntegerField
      FieldName = 'NUMNOTACOPIADA'
    end
    object cdsNotaFiscalSERIECOPIADA: TStringField
      FieldName = 'SERIECOPIADA'
      Size = 3
    end
    object cdsNotaFiscalDTCONTINGENCIA: TDateField
      FieldName = 'DTCONTINGENCIA'
    end
    object cdsNotaFiscalHRCONTINGENCIA: TTimeField
      FieldName = 'HRCONTINGENCIA'
    end
    object cdsNotaFiscalMOTIVO_CONTINGENCIA: TStringField
      FieldName = 'MOTIVO_CONTINGENCIA'
      Size = 250
    end
    object cdsNotaFiscalNFEVERSAOEMISSAO: TStringField
      FieldName = 'NFEVERSAOEMISSAO'
    end
    object cdsNotaFiscalID_REGIMETRIB: TIntegerField
      FieldName = 'ID_REGIMETRIB'
    end
    object cdsNotaFiscalRNTC: TStringField
      FieldName = 'RNTC'
    end
    object cdsNotaFiscalVAGAOBALSA_IDENTIF: TStringField
      FieldName = 'VAGAOBALSA_IDENTIF'
    end
    object cdsNotaFiscalVAGAOBALSA_TIPOIDENTIF: TStringField
      FieldName = 'VAGAOBALSA_TIPOIDENTIF'
      Size = 1
    end
    object cdsNotaFiscalUFEMBEXPORTACAO: TStringField
      FieldName = 'UFEMBEXPORTACAO'
      Size = 2
    end
    object cdsNotaFiscalLOCALEMBEXPORTACAO: TStringField
      FieldName = 'LOCALEMBEXPORTACAO'
      Size = 60
    end
    object cdsNotaFiscalPISCOFINS_SOMAROUTRASDESP: TStringField
      FieldName = 'PISCOFINS_SOMAROUTRASDESP'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalGERARDUPL_OUTROSVALORES: TStringField
      FieldName = 'GERARDUPL_OUTROSVALORES'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalGERARDUPL_FRETE: TStringField
      FieldName = 'GERARDUPL_FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalGERARDUPL_SEGURO: TStringField
      FieldName = 'GERARDUPL_SEGURO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalINFORMADO_NUMNOTAMANUAL: TStringField
      FieldName = 'INFORMADO_NUMNOTAMANUAL'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalNFEDENEGADA: TStringField
      FieldName = 'NFEDENEGADA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalMOTIVO_DENEGADA: TStringField
      FieldName = 'MOTIVO_DENEGADA'
      Size = 250
    end
    object cdsNotaFiscalDADOS_ADICIONAIS: TMemoField
      FieldName = 'DADOS_ADICIONAIS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsNotaFiscalBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalDTINICIO_DUPLICATA: TDateField
      FieldName = 'DTINICIO_DUPLICATA'
    end
    object cdsNotaFiscalTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      Size = 1
    end
    object cdsNotaFiscalTIPO_PRAZO: TStringField
      FieldName = 'TIPO_PRAZO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsNotaFiscalTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalSIMPLES_FILIAL: TStringField
      FieldName = 'SIMPLES_FILIAL'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsNotaFiscalID_OPERACAO_NOTA: TIntegerField
      FieldName = 'ID_OPERACAO_NOTA'
    end
    object cdsNotaFiscalsdsNotaFiscal_Itens: TDataSetField
      FieldName = 'sdsNotaFiscal_Itens'
    end
    object cdsNotaFiscalsdsNotaFiscal_Desconto: TDataSetField
      FieldName = 'sdsNotaFiscal_Desconto'
    end
    object cdsNotaFiscalsdsNotaFiscal_Lacre: TDataSetField
      FieldName = 'sdsNotaFiscal_Lacre'
    end
    object cdsNotaFiscalsdsNotaFiscal_NFe: TDataSetField
      FieldName = 'sdsNotaFiscal_NFe'
    end
    object cdsNotaFiscalsdsNotaFiscal_Parc: TDataSetField
      FieldName = 'sdsNotaFiscal_Parc'
    end
    object cdsNotaFiscalsdsNotaFiscal_Reboque: TDataSetField
      FieldName = 'sdsNotaFiscal_Reboque'
    end
    object cdsNotaFiscalsdsNotaFiscal_Ref: TDataSetField
      FieldName = 'sdsNotaFiscal_Ref'
    end
    object cdsNotaFiscalFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
    object cdsNotaFiscalSTATUS_MANIFESTO: TStringField
      FieldName = 'STATUS_MANIFESTO'
      Size = 3
    end
    object cdsNotaFiscalID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsNotaFiscalID_TIPO_COBRANCA: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA'
    end
    object cdsNotaFiscalCALCULAR_IMP_ITEM: TStringField
      FieldName = 'CALCULAR_IMP_ITEM'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalGRAVOU_DADOSADICIONAIS: TStringField
      FieldName = 'GRAVOU_DADOSADICIONAIS'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalVLR_TRIBUTOS: TFloatField
      FieldName = 'VLR_TRIBUTOS'
    end
    object cdsNotaFiscalUSA_TRANSFICMS: TStringField
      FieldName = 'USA_TRANSFICMS'
      Size = 1
    end
    object cdsNotaFiscalID_NOTACOPIADA: TIntegerField
      FieldName = 'ID_NOTACOPIADA'
    end
    object cdsNotaFiscalID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsNotaFiscalsdsNotaFiscal_Imp_Aux: TDataSetField
      FieldName = 'sdsNotaFiscal_Imp_Aux'
    end
    object cdsNotaFiscalNOTA_ESTORNO: TStringField
      FieldName = 'NOTA_ESTORNO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalsdsNotaFiscal_Lei: TDataSetField
      FieldName = 'sdsNotaFiscal_Lei'
    end
    object cdsNotaFiscalCOD_MODELO: TStringField
      FieldName = 'COD_MODELO'
      Size = 2
    end
    object cdsNotaFiscalCOD_CONS_EE: TStringField
      FieldName = 'COD_CONS_EE'
      Size = 2
    end
    object cdsNotaFiscalCOD_CONS_AGUA: TStringField
      FieldName = 'COD_CONS_AGUA'
      Size = 2
    end
    object cdsNotaFiscalVLR_ICMSSUBST_PROPRIO: TFloatField
      FieldName = 'VLR_ICMSSUBST_PROPRIO'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalBASE_ICMSSUBST_PROPRIO: TFloatField
      FieldName = 'BASE_ICMSSUBST_PROPRIO'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object cdsNotaFiscalTIPO_DESTINO_OPERACAO: TSmallintField
      FieldName = 'TIPO_DESTINO_OPERACAO'
    end
    object cdsNotaFiscalTIPO_CONSUMIDOR: TSmallintField
      FieldName = 'TIPO_CONSUMIDOR'
    end
    object cdsNotaFiscalTIPO_ATENDIMENTO: TSmallintField
      FieldName = 'TIPO_ATENDIMENTO'
    end
    object cdsNotaFiscalLOCALDESPEXPORTACAO: TStringField
      FieldName = 'LOCALDESPEXPORTACAO'
      Size = 60
    end
    object cdsNotaFiscalVLR_ICMSDESONERADO: TFloatField
      FieldName = 'VLR_ICMSDESONERADO'
    end
    object cdsNotaFiscalVLR_TRIBUTOS_ESTADUAL: TFloatField
      FieldName = 'VLR_TRIBUTOS_ESTADUAL'
    end
    object cdsNotaFiscalVLR_TRIBUTOS_MUNICIPAL: TFloatField
      FieldName = 'VLR_TRIBUTOS_MUNICIPAL'
    end
    object cdsNotaFiscalFONTE_TRIBUTOS: TStringField
      FieldName = 'FONTE_TRIBUTOS'
      Size = 30
    end
    object cdsNotaFiscalVERSAO_TRIBUTOS: TStringField
      FieldName = 'VERSAO_TRIBUTOS'
      Size = 15
    end
    object cdsNotaFiscalVLR_TRIBUTOS_FEDERAL: TFloatField
      FieldName = 'VLR_TRIBUTOS_FEDERAL'
    end
    object cdsNotaFiscalPERC_COMISSAO_PAGAR_NOTA: TFloatField
      FieldName = 'PERC_COMISSAO_PAGAR_NOTA'
    end
    object cdsNotaFiscalNFEENVIADA: TStringField
      FieldName = 'NFEENVIADA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object cdsNotaFiscalVLR_ADIANTAMENTO: TFloatField
      FieldName = 'VLR_ADIANTAMENTO'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_ICMS_FCP: TFloatField
      FieldName = 'VLR_ICMS_FCP'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_ICMS_UF_DEST: TFloatField
      FieldName = 'VLR_ICMS_UF_DEST'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_ICMS_UF_REMET: TFloatField
      FieldName = 'VLR_ICMS_UF_REMET'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalVLR_BASE_COMISSAO: TFloatField
      FieldName = 'VLR_BASE_COMISSAO'
    end
    object cdsNotaFiscalNOTIFICACAO: TIntegerField
      FieldName = 'NOTIFICACAO'
    end
    object cdsNotaFiscalVLR_PIS_COFINS_SUFRAMA: TFloatField
      FieldName = 'VLR_PIS_COFINS_SUFRAMA'
    end
    object cdsNotaFiscalVLR_DESC_SUFRAMA: TFloatField
      FieldName = 'VLR_DESC_SUFRAMA'
    end
    object cdsNotaFiscalIBPT_CHAVE: TStringField
      FieldName = 'IBPT_CHAVE'
    end
    object cdsNotaFiscalVLR_AFRMM: TFloatField
      FieldName = 'VLR_AFRMM'
    end
    object cdsNotaFiscalQTD_TOTAL_PRODUTOS: TFloatField
      FieldName = 'QTD_TOTAL_PRODUTOS'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalsdsNotaFiscal_Custo: TDataSetField
      FieldName = 'sdsNotaFiscal_Custo'
    end
    object cdsNotaFiscalVLR_AJUSTE_CUSTO: TFloatField
      FieldName = 'VLR_AJUSTE_CUSTO'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalTIPO_AJUSTE_CUSTO: TStringField
      FieldName = 'TIPO_AJUSTE_CUSTO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalVLR_FRETE_CUSTO: TFloatField
      FieldName = 'VLR_FRETE_CUSTO'
    end
    object cdsNotaFiscalUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsNotaFiscalNGR: TStringField
      FieldName = 'NGR'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalID_TAB_PRECO: TIntegerField
      FieldName = 'ID_TAB_PRECO'
    end
    object cdsNotaFiscalID_PREFAT: TIntegerField
      FieldName = 'ID_PREFAT'
    end
    object cdsNotaFiscalBASE_ICMS_FCP: TFloatField
      FieldName = 'BASE_ICMS_FCP'
    end
    object cdsNotaFiscalBASE_FCP_ST: TFloatField
      FieldName = 'BASE_FCP_ST'
    end
    object cdsNotaFiscalVLR_FCP_ST: TFloatField
      FieldName = 'VLR_FCP_ST'
    end
    object cdsNotaFiscalPERC_FCP_ST: TFloatField
      FieldName = 'PERC_FCP_ST'
    end
    object cdsNotaFiscalVLR_ICMS_FCP_DEST: TFloatField
      FieldName = 'VLR_ICMS_FCP_DEST'
    end
    object cdsNotaFiscalBASE_ICMS_FCP_DEST: TFloatField
      FieldName = 'BASE_ICMS_FCP_DEST'
    end
    object cdsNotaFiscalSOMAR_FRETE_II: TStringField
      FieldName = 'SOMAR_FRETE_II'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalVLR_IPI_DEVOL: TFloatField
      FieldName = 'VLR_IPI_DEVOL'
    end
    object cdsNotaFiscalBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
      DisplayFormat = '0.00'
    end
  end
  object dsNotaFiscal: TDataSource
    DataSet = cdsNotaFiscal
    Left = 123
  end
  object dsNotaFiscal_Mestre: TDataSource
    DataSet = sdsNotaFiscal
    Left = 153
  end
  object sdsNotaFiscal_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT NI.*, NCM.NCM, CFOP.CODCFOP, CSTICMS.COD_CST, CSTIPI.COD_' +
      'IPI, '#13#10' COFINS.CODIGO CODCOFINS, PIS.CODIGO CODPIS, CSTICMS.PERC' +
      'ENTUAL PERC_TABCSTICMS, '#13#10' CFOP.MAOOBRA, COMB.NOME NOME_COR_COMB' +
      'INACAO'#13#10'FROM NOTAFISCAL_ITENS NI'#13#10'LEFT JOIN TAB_NCM NCM ON (NI.I' +
      'D_NCM = NCM.ID)'#13#10'LEFT JOIN TAB_CFOP CFOP ON (NI.ID_CFOP = CFOP.I' +
      'D)'#13#10'LEFT JOIN TAB_CSTICMS CSTICMS ON (NI.ID_CSTICMS = CSTICMS.ID' +
      ')'#13#10'LEFT JOIN TAB_CSTIPI CSTIPI ON (NI.ID_CSTIPI = CSTIPI.ID)'#13#10'LE' +
      'FT JOIN TAB_COFINS COFINS ON (NI.ID_COFINS = COFINS.ID)'#13#10'LEFT JO' +
      'IN TAB_PIS PIS ON (NI.ID_PIS = PIS.ID)'#13#10'LEFT JOIN COMBINACAO COM' +
      'B ON (NI.ID_COR = COMB.ID)'#13#10'WHERE NI.ID = :ID'#13#10
    DataSource = dsNotaFiscal_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 27
    Top = 42
    object sdsNotaFiscal_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsNotaFiscal_ItensID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsNotaFiscal_ItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsNotaFiscal_ItensID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object sdsNotaFiscal_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsNotaFiscal_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsNotaFiscal_ItensID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object sdsNotaFiscal_ItensID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object sdsNotaFiscal_ItensID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object sdsNotaFiscal_ItensID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object sdsNotaFiscal_ItensID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object sdsNotaFiscal_ItensPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object sdsNotaFiscal_ItensPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object sdsNotaFiscal_ItensVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsNotaFiscal_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsNotaFiscal_ItensPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object sdsNotaFiscal_ItensVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object sdsNotaFiscal_ItensBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object sdsNotaFiscal_ItensVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object sdsNotaFiscal_ItensVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object sdsNotaFiscal_ItensPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object sdsNotaFiscal_ItensPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object sdsNotaFiscal_ItensVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
    end
    object sdsNotaFiscal_ItensVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
    end
    object sdsNotaFiscal_ItensORIGEM_PROD: TStringField
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
    end
    object sdsNotaFiscal_ItensVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
    end
    object sdsNotaFiscal_ItensCALCULARICMSSOBREIPI: TStringField
      FieldName = 'CALCULARICMSSOBREIPI'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object sdsNotaFiscal_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsNotaFiscal_ItensID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object sdsNotaFiscal_ItensGERAR_DUPLICATA: TStringField
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensNUMERO_OC: TStringField
      FieldName = 'NUMERO_OC'
    end
    object sdsNotaFiscal_ItensNUMERO_OS: TStringField
      FieldName = 'NUMERO_OS'
      Size = 30
    end
    object sdsNotaFiscal_ItensITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object sdsNotaFiscal_ItensPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsNotaFiscal_ItensQTDRESTANTE: TFloatField
      FieldName = 'QTDRESTANTE'
    end
    object sdsNotaFiscal_ItensQTDDEVOLVIDA: TFloatField
      FieldName = 'QTDDEVOLVIDA'
    end
    object sdsNotaFiscal_ItensSOMAR_TRANSF_ICMS: TStringField
      FieldName = 'SOMAR_TRANSF_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensOBS_COMPLEMENTAR: TStringField
      FieldName = 'OBS_COMPLEMENTAR'
      Size = 250
    end
    object sdsNotaFiscal_ItensSOMAR_VLRTOTALPRODUTO: TStringField
      FieldName = 'SOMAR_VLRTOTALPRODUTO'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object sdsNotaFiscal_ItensVLR_OUTRASDESPESAS: TFloatField
      FieldName = 'VLR_OUTRASDESPESAS'
    end
    object sdsNotaFiscal_ItensVLR_SEGURO: TFloatField
      FieldName = 'VLR_SEGURO'
    end
    object sdsNotaFiscal_ItensVLR_ICMSFRETE: TFloatField
      FieldName = 'VLR_ICMSFRETE'
    end
    object sdsNotaFiscal_ItensVLR_ICMSOUTRASDESPESAS: TFloatField
      FieldName = 'VLR_ICMSOUTRASDESPESAS'
    end
    object sdsNotaFiscal_ItensBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
    end
    object sdsNotaFiscal_ItensVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
    end
    object sdsNotaFiscal_ItensVLR_IMPORTACAO: TFloatField
      FieldName = 'VLR_IMPORTACAO'
    end
    object sdsNotaFiscal_ItensVLR_ADUANEIRA: TFloatField
      FieldName = 'VLR_ADUANEIRA'
    end
    object sdsNotaFiscal_ItensGERAR_ESTOQUE: TStringField
      FieldName = 'GERAR_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensVLR_DESCONTORATEIO: TFloatField
      FieldName = 'VLR_DESCONTORATEIO'
    end
    object sdsNotaFiscal_ItensNCM: TStringField
      FieldName = 'NCM'
      ProviderFlags = []
      Size = 10
    end
    object sdsNotaFiscal_ItensTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensCODCFOP: TStringField
      FieldName = 'CODCFOP'
      ProviderFlags = []
      Size = 5
    end
    object sdsNotaFiscal_ItensCOD_CST: TStringField
      FieldName = 'COD_CST'
      ProviderFlags = []
      Size = 3
    end
    object sdsNotaFiscal_ItensCOD_IPI: TStringField
      FieldName = 'COD_IPI'
      ProviderFlags = []
      Size = 2
    end
    object sdsNotaFiscal_ItensCODCOFINS: TStringField
      FieldName = 'CODCOFINS'
      ProviderFlags = []
      Size = 2
    end
    object sdsNotaFiscal_ItensCODPIS: TStringField
      FieldName = 'CODPIS'
      ProviderFlags = []
      Size = 2
    end
    object sdsNotaFiscal_ItensQTD_ADEVOLVER: TFloatField
      FieldName = 'QTD_ADEVOLVER'
    end
    object sdsNotaFiscal_ItensQTD_PACOTE: TFloatField
      FieldName = 'QTD_PACOTE'
    end
    object sdsNotaFiscal_ItensITEM_DEVOL: TStringField
      FieldName = 'ITEM_DEVOL'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object sdsNotaFiscal_ItensID_OPERACAO_NOTA: TIntegerField
      FieldName = 'ID_OPERACAO_NOTA'
    end
    object sdsNotaFiscal_ItensFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
    object sdsNotaFiscal_ItensPERC_TRIBICMS: TFloatField
      FieldName = 'PERC_TRIBICMS'
    end
    object sdsNotaFiscal_ItensPERC_TABCSTICMS: TFloatField
      FieldName = 'PERC_TABCSTICMS'
      ProviderFlags = []
    end
    object sdsNotaFiscal_ItensMAOOBRA: TStringField
      FieldName = 'MAOOBRA'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensCOD_PRODUTO_FORN: TStringField
      FieldName = 'COD_PRODUTO_FORN'
    end
    object sdsNotaFiscal_ItensCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object sdsNotaFiscal_ItensIMP_OC_NOTA: TStringField
      FieldName = 'IMP_OC_NOTA'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object sdsNotaFiscal_ItensID_NTE: TIntegerField
      FieldName = 'ID_NTE'
    end
    object sdsNotaFiscal_ItensITEM_NTE: TIntegerField
      FieldName = 'ITEM_NTE'
    end
    object sdsNotaFiscal_ItensQTD_NOTAATUAL: TFloatField
      FieldName = 'QTD_NOTAATUAL'
    end
    object sdsNotaFiscal_ItensVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object sdsNotaFiscal_ItensTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      Size = 1
    end
    object sdsNotaFiscal_ItensPERC_IMPORTACAO: TFloatField
      FieldName = 'PERC_IMPORTACAO'
    end
    object sdsNotaFiscal_ItensCONTA_ORCAMENTO_ID: TIntegerField
      FieldName = 'CONTA_ORCAMENTO_ID'
    end
    object sdsNotaFiscal_ItensCENTRO_CUSTO_ID: TIntegerField
      FieldName = 'CENTRO_CUSTO_ID'
    end
    object sdsNotaFiscal_ItensTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object sdsNotaFiscal_ItensPERC_MVA: TFloatField
      FieldName = 'PERC_MVA'
    end
    object sdsNotaFiscal_ItensPERC_REDUCAO_ICMSSUBST: TFloatField
      FieldName = 'PERC_REDUCAO_ICMSSUBST'
    end
    object sdsNotaFiscal_ItensID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
    end
    object sdsNotaFiscal_ItensVLR_TRIBUTOS: TFloatField
      FieldName = 'VLR_TRIBUTOS'
    end
    object sdsNotaFiscal_ItensPOSSUI_VALE: TStringField
      FieldName = 'POSSUI_VALE'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensITEM_CLIENTE: TIntegerField
      FieldName = 'ITEM_CLIENTE'
    end
    object sdsNotaFiscal_ItensNUM_FCI: TStringField
      FieldName = 'NUM_FCI'
      Size = 40
    end
    object sdsNotaFiscal_ItensPERC_USADO_FCI: TFloatField
      FieldName = 'PERC_USADO_FCI'
    end
    object sdsNotaFiscal_ItensID_OBS_LEI_NCM: TIntegerField
      FieldName = 'ID_OBS_LEI_NCM'
    end
    object sdsNotaFiscal_ItensID_VALE: TIntegerField
      FieldName = 'ID_VALE'
    end
    object sdsNotaFiscal_ItensITEM_VALE: TIntegerField
      FieldName = 'ITEM_VALE'
    end
    object sdsNotaFiscal_ItensNUM_VALE: TIntegerField
      FieldName = 'NUM_VALE'
    end
    object sdsNotaFiscal_ItensPERC_ICMSSUBST_INTERNO: TFloatField
      FieldName = 'PERC_ICMSSUBST_INTERNO'
    end
    object sdsNotaFiscal_ItensVLR_ICMSSUBST_INTERNO: TFloatField
      FieldName = 'VLR_ICMSSUBST_INTERNO'
    end
    object sdsNotaFiscal_ItensPERC_ICMSSUBST_PROPRIO: TFloatField
      FieldName = 'PERC_ICMSSUBST_PROPRIO'
    end
    object sdsNotaFiscal_ItensVLR_ICMSSUBST_PROPRIO: TFloatField
      FieldName = 'VLR_ICMSSUBST_PROPRIO'
    end
    object sdsNotaFiscal_ItensBASE_ICMSSUBST_PROPRIO: TFloatField
      FieldName = 'BASE_ICMSSUBST_PROPRIO'
    end
    object sdsNotaFiscal_ItensGRAVACAO_COM_ERRO: TStringField
      FieldName = 'GRAVACAO_COM_ERRO'
      Size = 3
    end
    object sdsNotaFiscal_ItensVLR_ICMSDESONERADO: TFloatField
      FieldName = 'VLR_ICMSDESONERADO'
    end
    object sdsNotaFiscal_ItensCOD_DESONERACAO: TSmallintField
      FieldName = 'COD_DESONERACAO'
    end
    object sdsNotaFiscal_ItensVLR_ICMSOPERACAO: TFloatField
      FieldName = 'VLR_ICMSOPERACAO'
    end
    object sdsNotaFiscal_ItensID_PEDIDO_FUT: TIntegerField
      FieldName = 'ID_PEDIDO_FUT'
    end
    object sdsNotaFiscal_ItensITEM_PEDIDO_FUT: TIntegerField
      FieldName = 'ITEM_PEDIDO_FUT'
    end
    object sdsNotaFiscal_ItensID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
    object sdsNotaFiscal_ItensITEM_OS: TIntegerField
      FieldName = 'ITEM_OS'
    end
    object sdsNotaFiscal_ItensITEM_OS_MAT: TIntegerField
      FieldName = 'ITEM_OS_MAT'
    end
    object sdsNotaFiscal_ItensNUM_OSERVICO: TIntegerField
      FieldName = 'NUM_OSERVICO'
    end
    object sdsNotaFiscal_ItensVERSAO_TRIBUTO: TStringField
      FieldName = 'VERSAO_TRIBUTO'
      Size = 15
    end
    object sdsNotaFiscal_ItensFONTE_TRIBUTO: TStringField
      FieldName = 'FONTE_TRIBUTO'
      Size = 30
    end
    object sdsNotaFiscal_ItensVLR_TRIBUTOS_ESTADUAL: TFloatField
      FieldName = 'VLR_TRIBUTOS_ESTADUAL'
    end
    object sdsNotaFiscal_ItensVLR_TRIBUTOS_MUNICIPAL: TFloatField
      FieldName = 'VLR_TRIBUTOS_MUNICIPAL'
    end
    object sdsNotaFiscal_ItensPERC_TRIBUTO_ESTADUAL: TFloatField
      FieldName = 'PERC_TRIBUTO_ESTADUAL'
    end
    object sdsNotaFiscal_ItensPERC_TRIBUTO_MUNICIPAL: TFloatField
      FieldName = 'PERC_TRIBUTO_MUNICIPAL'
    end
    object sdsNotaFiscal_ItensPERC_TRIBUTO_FEDERAL: TFloatField
      FieldName = 'PERC_TRIBUTO_FEDERAL'
    end
    object sdsNotaFiscal_ItensVLR_TRIBUTOS_FEDERAL: TFloatField
      FieldName = 'VLR_TRIBUTOS_FEDERAL'
    end
    object sdsNotaFiscal_ItensQTD_DESC_ESTOQUE: TFloatField
      FieldName = 'QTD_DESC_ESTOQUE'
    end
    object sdsNotaFiscal_ItensITEM_ORIGINAL: TIntegerField
      FieldName = 'ITEM_ORIGINAL'
    end
    object sdsNotaFiscal_ItensPERC_DIFERIMENTO: TFloatField
      FieldName = 'PERC_DIFERIMENTO'
    end
    object sdsNotaFiscal_ItensVLR_ICMSDIFERIDO: TFloatField
      FieldName = 'VLR_ICMSDIFERIDO'
    end
    object sdsNotaFiscal_ItensNOME_COR_COMBINACAO: TStringField
      FieldName = 'NOME_COR_COMBINACAO'
      ProviderFlags = []
      Size = 60
    end
    object sdsNotaFiscal_ItensVLR_TAXACISCOMEX: TFloatField
      FieldName = 'VLR_TAXACISCOMEX'
    end
    object sdsNotaFiscal_ItensDIFERENCA_ICMS: TStringField
      FieldName = 'DIFERENCA_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensQTD_LANCAR_ESTOQUE: TFloatField
      FieldName = 'QTD_LANCAR_ESTOQUE'
    end
    object sdsNotaFiscal_ItensNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object sdsNotaFiscal_ItensID_ENQIPI: TIntegerField
      FieldName = 'ID_ENQIPI'
    end
    object sdsNotaFiscal_ItensPERC_ICMS_FCP: TFloatField
      FieldName = 'PERC_ICMS_FCP'
    end
    object sdsNotaFiscal_ItensPERC_ICMS_UF_DEST: TFloatField
      FieldName = 'PERC_ICMS_UF_DEST'
    end
    object sdsNotaFiscal_ItensPERC_ICMS_PARTILHA: TFloatField
      FieldName = 'PERC_ICMS_PARTILHA'
    end
    object sdsNotaFiscal_ItensVLR_ICMS_FCP: TFloatField
      FieldName = 'VLR_ICMS_FCP'
    end
    object sdsNotaFiscal_ItensVLR_ICMS_UF_DEST: TFloatField
      FieldName = 'VLR_ICMS_UF_DEST'
    end
    object sdsNotaFiscal_ItensVLR_ICMS_UF_REMET: TFloatField
      FieldName = 'VLR_ICMS_UF_REMET'
    end
    object sdsNotaFiscal_ItensPERC_ICMS_INTER: TFloatField
      FieldName = 'PERC_ICMS_INTER'
    end
    object sdsNotaFiscal_ItensGRAVOU_TAB_TAMANHO: TStringField
      FieldName = 'GRAVOU_TAB_TAMANHO'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensVLR_OUTROS: TFloatField
      FieldName = 'VLR_OUTROS'
    end
    object sdsNotaFiscal_ItensID_MOVESTOQUE_PED: TIntegerField
      FieldName = 'ID_MOVESTOQUE_PED'
    end
    object sdsNotaFiscal_ItensPERC_ICMS_DESON: TFloatField
      FieldName = 'PERC_ICMS_DESON'
    end
    object sdsNotaFiscal_ItensPERC_PIS_COFINS_SUFRAMA: TFloatField
      FieldName = 'PERC_PIS_COFINS_SUFRAMA'
    end
    object sdsNotaFiscal_ItensVLR_PIS_COFINS_SUFRAMA: TFloatField
      FieldName = 'VLR_PIS_COFINS_SUFRAMA'
    end
    object sdsNotaFiscal_ItensPERC_DESC_SUFRAMA: TFloatField
      FieldName = 'PERC_DESC_SUFRAMA'
    end
    object sdsNotaFiscal_ItensVLR_DESC_SUFRAMA: TFloatField
      FieldName = 'VLR_DESC_SUFRAMA'
    end
    object sdsNotaFiscal_ItensIBPT_CHAVE: TStringField
      FieldName = 'IBPT_CHAVE'
    end
    object sdsNotaFiscal_ItensVLR_AFRMM: TFloatField
      FieldName = 'VLR_AFRMM'
    end
    object sdsNotaFiscal_ItensPERC_ISSQN: TFloatField
      FieldName = 'PERC_ISSQN'
    end
    object sdsNotaFiscal_ItensVLR_ISSQN: TFloatField
      FieldName = 'VLR_ISSQN'
    end
    object sdsNotaFiscal_ItensNUM_TALAO: TStringField
      FieldName = 'NUM_TALAO'
      Size = 15
    end
    object sdsNotaFiscal_ItensQTD_TRIB: TFloatField
      FieldName = 'QTD_TRIB'
    end
    object sdsNotaFiscal_ItensVLR_UNITARIO_TRIB: TFloatField
      FieldName = 'VLR_UNITARIO_TRIB'
    end
    object sdsNotaFiscal_ItensUNIDADE_TRIB: TStringField
      FieldName = 'UNIDADE_TRIB'
      Size = 6
    end
    object sdsNotaFiscal_ItensPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
    object sdsNotaFiscal_ItensVLR_AJUSTE_CUSTO: TFloatField
      FieldName = 'VLR_AJUSTE_CUSTO'
    end
    object sdsNotaFiscal_ItensTIPO_ESCALA: TStringField
      FieldName = 'TIPO_ESCALA'
      Size = 1
    end
    object sdsNotaFiscal_ItensBASE_ICMS_FCP: TFloatField
      FieldName = 'BASE_ICMS_FCP'
    end
    object sdsNotaFiscal_ItensBASE_FCP_ST: TFloatField
      FieldName = 'BASE_FCP_ST'
    end
    object sdsNotaFiscal_ItensVLR_FCP_ST: TFloatField
      FieldName = 'VLR_FCP_ST'
    end
    object sdsNotaFiscal_ItensPERC_FCP_ST: TFloatField
      FieldName = 'PERC_FCP_ST'
    end
    object sdsNotaFiscal_ItensVLR_ICMS_FCP_DEST: TFloatField
      FieldName = 'VLR_ICMS_FCP_DEST'
    end
    object sdsNotaFiscal_ItensBASE_ICMS_FCP_DEST: TFloatField
      FieldName = 'BASE_ICMS_FCP_DEST'
    end
    object sdsNotaFiscal_ItensPERC_ICMS_SUFRAMA: TFloatField
      FieldName = 'PERC_ICMS_SUFRAMA'
    end
    object sdsNotaFiscal_ItensPERC_IPI_SUFRAMA: TFloatField
      FieldName = 'PERC_IPI_SUFRAMA'
    end
    object sdsNotaFiscal_ItensREC_COPIADO: TStringField
      FieldName = 'REC_COPIADO'
      Size = 1
    end
    object sdsNotaFiscal_ItensVLR_IPI_DEVOL: TFloatField
      FieldName = 'VLR_IPI_DEVOL'
    end
    object sdsNotaFiscal_ItensPERC_DEVOL: TFloatField
      FieldName = 'PERC_DEVOL'
    end
    object sdsNotaFiscal_ItensBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
    end
  end
  object cdsNotaFiscal_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNotaFiscalsdsNotaFiscal_Itens
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    BeforePost = cdsNotaFiscal_ItensBeforePost
    OnNewRecord = cdsNotaFiscal_ItensNewRecord
    Left = 67
    Top = 42
    object cdsNotaFiscal_ItensCONTA_ORCAMENTO_ID: TIntegerField
      FieldName = 'CONTA_ORCAMENTO_ID'
    end
    object cdsNotaFiscal_ItensCENTRO_CUSTO_ID: TIntegerField
      FieldName = 'CENTRO_CUSTO_ID'
    end
    object cdsNotaFiscal_ItensID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_ItensITEM: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_ItensID_PRODUTO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'ID_PRODUTO'
    end
    object cdsNotaFiscal_ItensID_COR: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C'#243'd. Cor'
      FieldName = 'ID_COR'
    end
    object cdsNotaFiscal_ItensTAMANHO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Tamanho'
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsNotaFiscal_ItensID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsNotaFiscal_ItensUNIDADE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsNotaFiscal_ItensQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '0.0000'
    end
    object cdsNotaFiscal_ItensID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsNotaFiscal_ItensID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object cdsNotaFiscal_ItensID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsNotaFiscal_ItensID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object cdsNotaFiscal_ItensID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object cdsNotaFiscal_ItensPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.000#######'
    end
    object cdsNotaFiscal_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensORIGEM_PROD: TStringField
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensCALCULARICMSSOBREIPI: TStringField
      FieldName = 'CALCULARICMSSOBREIPI'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsNotaFiscal_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsNotaFiscal_ItensID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object cdsNotaFiscal_ItensGERAR_DUPLICATA: TStringField
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensNUMERO_OC: TStringField
      FieldName = 'NUMERO_OC'
    end
    object cdsNotaFiscal_ItensNUMERO_OS: TStringField
      FieldName = 'NUMERO_OS'
      Size = 30
    end
    object cdsNotaFiscal_ItensITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object cdsNotaFiscal_ItensPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensQTDRESTANTE: TFloatField
      FieldName = 'QTDRESTANTE'
      DisplayFormat = '0.0000'
    end
    object cdsNotaFiscal_ItensQTDDEVOLVIDA: TFloatField
      FieldName = 'QTDDEVOLVIDA'
      DisplayFormat = '0.0000'
    end
    object cdsNotaFiscal_ItensSOMAR_TRANSF_ICMS: TStringField
      FieldName = 'SOMAR_TRANSF_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensOBS_COMPLEMENTAR: TStringField
      FieldName = 'OBS_COMPLEMENTAR'
      Size = 250
    end
    object cdsNotaFiscal_ItensSOMAR_VLRTOTALPRODUTO: TStringField
      FieldName = 'SOMAR_VLRTOTALPRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensVLR_OUTRASDESPESAS: TFloatField
      FieldName = 'VLR_OUTRASDESPESAS'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensVLR_SEGURO: TFloatField
      FieldName = 'VLR_SEGURO'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensVLR_ICMSFRETE: TFloatField
      FieldName = 'VLR_ICMSFRETE'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensVLR_IMPORTACAO: TFloatField
      FieldName = 'VLR_IMPORTACAO'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensVLR_ADUANEIRA: TFloatField
      FieldName = 'VLR_ADUANEIRA'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensVLR_ICMSOUTRASDESPESAS: TFloatField
      FieldName = 'VLR_ICMSOUTRASDESPESAS'
    end
    object cdsNotaFiscal_ItensGERAR_ESTOQUE: TStringField
      FieldName = 'GERAR_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensVLR_DESCONTORATEIO: TFloatField
      FieldName = 'VLR_DESCONTORATEIO'
    end
    object cdsNotaFiscal_ItensNCM: TStringField
      FieldName = 'NCM'
      ProviderFlags = []
      Size = 10
    end
    object cdsNotaFiscal_ItensTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensCODCFOP: TStringField
      FieldName = 'CODCFOP'
      ProviderFlags = []
      Size = 5
    end
    object cdsNotaFiscal_ItensCOD_CST: TStringField
      FieldName = 'COD_CST'
      ProviderFlags = []
      Size = 3
    end
    object cdsNotaFiscal_ItensCOD_IPI: TStringField
      FieldName = 'COD_IPI'
      ProviderFlags = []
      Size = 2
    end
    object cdsNotaFiscal_ItensCODCOFINS: TStringField
      FieldName = 'CODCOFINS'
      ProviderFlags = []
      Size = 2
    end
    object cdsNotaFiscal_ItensCODPIS: TStringField
      FieldName = 'CODPIS'
      ProviderFlags = []
      Size = 2
    end
    object cdsNotaFiscal_ItensQTD_ADEVOLVER: TFloatField
      FieldName = 'QTD_ADEVOLVER'
      DisplayFormat = '0.0000'
    end
    object cdsNotaFiscal_ItensQTD_PACOTE: TFloatField
      FieldName = 'QTD_PACOTE'
      DisplayFormat = '0.0000'
    end
    object cdsNotaFiscal_ItensITEM_DEVOL: TStringField
      FieldName = 'ITEM_DEVOL'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsNotaFiscal_ItensID_OPERACAO_NOTA: TIntegerField
      FieldName = 'ID_OPERACAO_NOTA'
    end
    object cdsNotaFiscal_ItenssdsNotaFiscal_Ped: TDataSetField
      FieldName = 'sdsNotaFiscal_Ped'
    end
    object cdsNotaFiscal_ItenssdsNotaFiscal_NDevolvida: TDataSetField
      FieldName = 'sdsNotaFiscal_NDevolvida'
    end
    object cdsNotaFiscal_ItensFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
    object cdsNotaFiscal_ItensPERC_TRIBICMS: TFloatField
      FieldName = 'PERC_TRIBICMS'
    end
    object cdsNotaFiscal_ItensPERC_TABCSTICMS: TFloatField
      FieldName = 'PERC_TABCSTICMS'
      ProviderFlags = []
    end
    object cdsNotaFiscal_ItensMAOOBRA: TStringField
      FieldName = 'MAOOBRA'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensCOD_PRODUTO_FORN: TStringField
      FieldName = 'COD_PRODUTO_FORN'
    end
    object cdsNotaFiscal_ItensCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object cdsNotaFiscal_ItenssdsNotaFiscal_Imp: TDataSetField
      FieldName = 'sdsNotaFiscal_Imp'
    end
    object cdsNotaFiscal_ItensIMP_OC_NOTA: TStringField
      FieldName = 'IMP_OC_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsNotaFiscal_ItensID_NTE: TIntegerField
      FieldName = 'ID_NTE'
    end
    object cdsNotaFiscal_ItensITEM_NTE: TIntegerField
      FieldName = 'ITEM_NTE'
    end
    object cdsNotaFiscal_ItensQTD_NOTAATUAL: TFloatField
      FieldName = 'QTD_NOTAATUAL'
      DisplayFormat = '0.0000'
    end
    object cdsNotaFiscal_ItensVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object cdsNotaFiscal_ItensTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      Size = 1
    end
    object cdsNotaFiscal_ItensPERC_IMPORTACAO: TFloatField
      FieldName = 'PERC_IMPORTACAO'
    end
    object cdsNotaFiscal_ItensTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsNotaFiscal_ItensPERC_MVA: TFloatField
      FieldName = 'PERC_MVA'
    end
    object cdsNotaFiscal_ItensPERC_REDUCAO_ICMSSUBST: TFloatField
      FieldName = 'PERC_REDUCAO_ICMSSUBST'
    end
    object cdsNotaFiscal_ItensVLR_TRIBUTOS: TFloatField
      FieldName = 'VLR_TRIBUTOS'
    end
    object cdsNotaFiscal_ItensID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
    end
    object cdsNotaFiscal_ItensPOSSUI_VALE: TStringField
      FieldName = 'POSSUI_VALE'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensITEM_CLIENTE: TIntegerField
      FieldName = 'ITEM_CLIENTE'
    end
    object cdsNotaFiscal_ItensNUM_FCI: TStringField
      FieldName = 'NUM_FCI'
      Size = 40
    end
    object cdsNotaFiscal_ItensPERC_USADO_FCI: TFloatField
      FieldName = 'PERC_USADO_FCI'
    end
    object cdsNotaFiscal_ItensID_OBS_LEI_NCM: TIntegerField
      FieldName = 'ID_OBS_LEI_NCM'
    end
    object cdsNotaFiscal_ItensID_VALE: TIntegerField
      FieldName = 'ID_VALE'
    end
    object cdsNotaFiscal_ItensITEM_VALE: TIntegerField
      FieldName = 'ITEM_VALE'
    end
    object cdsNotaFiscal_ItensNUM_VALE: TIntegerField
      FieldName = 'NUM_VALE'
    end
    object cdsNotaFiscal_ItensPERC_ICMSSUBST_INTERNO: TFloatField
      FieldName = 'PERC_ICMSSUBST_INTERNO'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensVLR_ICMSSUBST_INTERNO: TFloatField
      FieldName = 'VLR_ICMSSUBST_INTERNO'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensPERC_ICMSSUBST_PROPRIO: TFloatField
      FieldName = 'PERC_ICMSSUBST_PROPRIO'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensVLR_ICMSSUBST_PROPRIO: TFloatField
      FieldName = 'VLR_ICMSSUBST_PROPRIO'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensBASE_ICMSSUBST_PROPRIO: TFloatField
      FieldName = 'BASE_ICMSSUBST_PROPRIO'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensGRAVACAO_COM_ERRO: TStringField
      FieldName = 'GRAVACAO_COM_ERRO'
      Size = 3
    end
    object cdsNotaFiscal_ItenssdsNotaFiscal_DrawBack: TDataSetField
      FieldName = 'sdsNotaFiscal_DrawBack'
    end
    object cdsNotaFiscal_ItensVLR_ICMSDESONERADO: TFloatField
      FieldName = 'VLR_ICMSDESONERADO'
    end
    object cdsNotaFiscal_ItensCOD_DESONERACAO: TSmallintField
      FieldName = 'COD_DESONERACAO'
    end
    object cdsNotaFiscal_ItensVLR_ICMSOPERACAO: TFloatField
      FieldName = 'VLR_ICMSOPERACAO'
    end
    object cdsNotaFiscal_ItenssdsNotaFiscal_Fut: TDataSetField
      FieldName = 'sdsNotaFiscal_Fut'
    end
    object cdsNotaFiscal_ItensID_PEDIDO_FUT: TIntegerField
      FieldName = 'ID_PEDIDO_FUT'
    end
    object cdsNotaFiscal_ItensITEM_PEDIDO_FUT: TIntegerField
      FieldName = 'ITEM_PEDIDO_FUT'
    end
    object cdsNotaFiscal_ItensID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
    object cdsNotaFiscal_ItensITEM_OS: TIntegerField
      FieldName = 'ITEM_OS'
    end
    object cdsNotaFiscal_ItensITEM_OS_MAT: TIntegerField
      FieldName = 'ITEM_OS_MAT'
    end
    object cdsNotaFiscal_ItensNUM_OSERVICO: TIntegerField
      FieldName = 'NUM_OSERVICO'
    end
    object cdsNotaFiscal_ItenssdsNotaFiscal_OS: TDataSetField
      FieldName = 'sdsNotaFiscal_OS'
    end
    object cdsNotaFiscal_ItensVERSAO_TRIBUTO: TStringField
      FieldName = 'VERSAO_TRIBUTO'
      Size = 15
    end
    object cdsNotaFiscal_ItensFONTE_TRIBUTO: TStringField
      FieldName = 'FONTE_TRIBUTO'
      Size = 30
    end
    object cdsNotaFiscal_ItensVLR_TRIBUTOS_ESTADUAL: TFloatField
      FieldName = 'VLR_TRIBUTOS_ESTADUAL'
    end
    object cdsNotaFiscal_ItensVLR_TRIBUTOS_MUNICIPAL: TFloatField
      FieldName = 'VLR_TRIBUTOS_MUNICIPAL'
    end
    object cdsNotaFiscal_ItensPERC_TRIBUTO_ESTADUAL: TFloatField
      FieldName = 'PERC_TRIBUTO_ESTADUAL'
    end
    object cdsNotaFiscal_ItensPERC_TRIBUTO_MUNICIPAL: TFloatField
      FieldName = 'PERC_TRIBUTO_MUNICIPAL'
    end
    object cdsNotaFiscal_ItensPERC_TRIBUTO_FEDERAL: TFloatField
      FieldName = 'PERC_TRIBUTO_FEDERAL'
    end
    object cdsNotaFiscal_ItensVLR_TRIBUTOS_FEDERAL: TFloatField
      FieldName = 'VLR_TRIBUTOS_FEDERAL'
    end
    object cdsNotaFiscal_ItensQTD_DESC_ESTOQUE: TFloatField
      FieldName = 'QTD_DESC_ESTOQUE'
    end
    object cdsNotaFiscal_ItensITEM_ORIGINAL: TIntegerField
      FieldName = 'ITEM_ORIGINAL'
    end
    object cdsNotaFiscal_ItensPERC_DIFERIMENTO: TFloatField
      FieldName = 'PERC_DIFERIMENTO'
    end
    object cdsNotaFiscal_ItensVLR_ICMSDIFERIDO: TFloatField
      FieldName = 'VLR_ICMSDIFERIDO'
    end
    object cdsNotaFiscal_ItensNOME_COR_COMBINACAO: TStringField
      FieldName = 'NOME_COR_COMBINACAO'
      ProviderFlags = []
      Size = 60
    end
    object cdsNotaFiscal_ItensVLR_TAXACISCOMEX: TFloatField
      FieldName = 'VLR_TAXACISCOMEX'
    end
    object cdsNotaFiscal_ItensDIFERENCA_ICMS: TStringField
      FieldName = 'DIFERENCA_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensQTD_LANCAR_ESTOQUE: TFloatField
      FieldName = 'QTD_LANCAR_ESTOQUE'
    end
    object cdsNotaFiscal_ItensNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object cdsNotaFiscal_ItensID_ENQIPI: TIntegerField
      FieldName = 'ID_ENQIPI'
    end
    object cdsNotaFiscal_ItensPERC_ICMS_FCP: TFloatField
      FieldName = 'PERC_ICMS_FCP'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensPERC_ICMS_UF_DEST: TFloatField
      FieldName = 'PERC_ICMS_UF_DEST'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensPERC_ICMS_PARTILHA: TFloatField
      FieldName = 'PERC_ICMS_PARTILHA'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensVLR_ICMS_FCP: TFloatField
      FieldName = 'VLR_ICMS_FCP'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensVLR_ICMS_UF_DEST: TFloatField
      FieldName = 'VLR_ICMS_UF_DEST'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensVLR_ICMS_UF_REMET: TFloatField
      FieldName = 'VLR_ICMS_UF_REMET'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensPERC_ICMS_INTER: TFloatField
      FieldName = 'PERC_ICMS_INTER'
    end
    object cdsNotaFiscal_ItensGRAVOU_TAB_TAMANHO: TStringField
      FieldName = 'GRAVOU_TAB_TAMANHO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensVLR_OUTROS: TFloatField
      FieldName = 'VLR_OUTROS'
    end
    object cdsNotaFiscal_ItenssdsNotaFiscal_Tam: TDataSetField
      FieldName = 'sdsNotaFiscal_Tam'
    end
    object cdsNotaFiscal_ItensID_MOVESTOQUE_PED: TIntegerField
      FieldName = 'ID_MOVESTOQUE_PED'
    end
    object cdsNotaFiscal_ItensPERC_ICMS_DESON: TFloatField
      FieldName = 'PERC_ICMS_DESON'
    end
    object cdsNotaFiscal_ItensPERC_PIS_COFINS_SUFRAMA: TFloatField
      FieldName = 'PERC_PIS_COFINS_SUFRAMA'
    end
    object cdsNotaFiscal_ItensVLR_PIS_COFINS_SUFRAMA: TFloatField
      FieldName = 'VLR_PIS_COFINS_SUFRAMA'
    end
    object cdsNotaFiscal_ItensPERC_DESC_SUFRAMA: TFloatField
      FieldName = 'PERC_DESC_SUFRAMA'
    end
    object cdsNotaFiscal_ItensVLR_DESC_SUFRAMA: TFloatField
      FieldName = 'VLR_DESC_SUFRAMA'
    end
    object cdsNotaFiscal_ItensIBPT_CHAVE: TStringField
      FieldName = 'IBPT_CHAVE'
    end
    object cdsNotaFiscal_ItensVLR_AFRMM: TFloatField
      FieldName = 'VLR_AFRMM'
    end
    object cdsNotaFiscal_ItensPERC_ISSQN: TFloatField
      FieldName = 'PERC_ISSQN'
    end
    object cdsNotaFiscal_ItensVLR_ISSQN: TFloatField
      FieldName = 'VLR_ISSQN'
    end
    object cdsNotaFiscal_ItensNUM_TALAO: TStringField
      FieldName = 'NUM_TALAO'
      Size = 15
    end
    object cdsNotaFiscal_ItensQTD_TRIB: TFloatField
      FieldName = 'QTD_TRIB'
    end
    object cdsNotaFiscal_ItensVLR_UNITARIO_TRIB: TFloatField
      FieldName = 'VLR_UNITARIO_TRIB'
    end
    object cdsNotaFiscal_ItensUNIDADE_TRIB: TStringField
      FieldName = 'UNIDADE_TRIB'
      Size = 6
    end
    object cdsNotaFiscal_ItensPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
      DisplayFormat = '0.000##'
    end
    object cdsNotaFiscal_ItensVLR_AJUSTE_CUSTO: TFloatField
      FieldName = 'VLR_AJUSTE_CUSTO'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ItensTIPO_ESCALA: TStringField
      FieldName = 'TIPO_ESCALA'
      Size = 1
    end
    object cdsNotaFiscal_ItensBASE_ICMS_FCP: TFloatField
      FieldName = 'BASE_ICMS_FCP'
    end
    object cdsNotaFiscal_ItensBASE_FCP_ST: TFloatField
      FieldName = 'BASE_FCP_ST'
    end
    object cdsNotaFiscal_ItensVLR_FCP_ST: TFloatField
      FieldName = 'VLR_FCP_ST'
    end
    object cdsNotaFiscal_ItensPERC_FCP_ST: TFloatField
      FieldName = 'PERC_FCP_ST'
    end
    object cdsNotaFiscal_ItensVLR_ICMS_FCP_DEST: TFloatField
      FieldName = 'VLR_ICMS_FCP_DEST'
    end
    object cdsNotaFiscal_ItensBASE_ICMS_FCP_DEST: TFloatField
      FieldName = 'BASE_ICMS_FCP_DEST'
    end
    object cdsNotaFiscal_ItensPERC_ICMS_SUFRAMA: TFloatField
      FieldName = 'PERC_ICMS_SUFRAMA'
    end
    object cdsNotaFiscal_ItensPERC_IPI_SUFRAMA: TFloatField
      FieldName = 'PERC_IPI_SUFRAMA'
    end
    object cdsNotaFiscal_ItensREC_COPIADO: TStringField
      FieldName = 'REC_COPIADO'
      Size = 1
    end
    object cdsNotaFiscal_ItenssdsNotaFiscal_Copia: TDataSetField
      FieldName = 'sdsNotaFiscal_Copia'
    end
    object cdsNotaFiscal_ItensVLR_IPI_DEVOL: TFloatField
      FieldName = 'VLR_IPI_DEVOL'
    end
    object cdsNotaFiscal_ItensPERC_DEVOL: TFloatField
      FieldName = 'PERC_DEVOL'
    end
    object cdsNotaFiscal_ItensBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
    end
  end
  object dsNotaFiscal_Itens: TDataSource
    DataSet = cdsNotaFiscal_Itens
    Left = 107
    Top = 42
  end
  object sdsNotaFiscal_Desconto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NOTAFISCAL_DESCONTO'#13#10'WHERE ID = :ID'
    DataSource = dsNotaFiscal_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 67
    Top = 309
    object sdsNotaFiscal_DescontoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_DescontoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_DescontoPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
  end
  object cdsNotaFiscal_Desconto: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNotaFiscalsdsNotaFiscal_Desconto
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 107
    Top = 309
    object cdsNotaFiscal_DescontoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_DescontoITEM: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_DescontoPERC_DESCONTO: TFloatField
      DisplayLabel = '% Desconto'
      FieldName = 'PERC_DESCONTO'
      DisplayFormat = '0.00'
    end
  end
  object dsNotaFiscal_Desconto: TDataSource
    DataSet = cdsNotaFiscal_Desconto
    Left = 147
    Top = 309
  end
  object sdsNotaFiscal_Lacre: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NOTAFISCAL_LACRE'#13#10'WHERE ID = :ID'
    DataSource = dsNotaFiscal_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 67
    Top = 350
    object sdsNotaFiscal_LacreID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_LacreITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_LacreNUMLACRE: TStringField
      FieldName = 'NUMLACRE'
      Size = 60
    end
  end
  object cdsNotaFiscal_Lacre: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNotaFiscalsdsNotaFiscal_Lacre
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 107
    Top = 350
    object cdsNotaFiscal_LacreID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_LacreITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_LacreNUMLACRE: TStringField
      FieldName = 'NUMLACRE'
      Size = 60
    end
  end
  object dsNotaFiscal_Lacre: TDataSource
    DataSet = cdsNotaFiscal_Lacre
    Left = 147
    Top = 350
  end
  object sdsNotaFiscal_NFe: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NOTAFISCAL_NFE'#13#10'WHERE ID = :ID'
    DataSource = dsNotaFiscal_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 67
    Top = 391
    object sdsNotaFiscal_NFeID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_NFeITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_NFeTIPO: TStringField
      FieldName = 'TIPO'
      Size = 3
    end
    object sdsNotaFiscal_NFeITEMTIPO: TIntegerField
      FieldName = 'ITEMTIPO'
    end
    object sdsNotaFiscal_NFeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object sdsNotaFiscal_NFeMOTIVO: TMemoField
      FieldName = 'MOTIVO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsNotaFiscal_NFeNFEPROTOCOLO: TStringField
      FieldName = 'NFEPROTOCOLO'
      Size = 45
    end
    object sdsNotaFiscal_NFeNFERECIBO: TStringField
      FieldName = 'NFERECIBO'
      Size = 45
    end
    object sdsNotaFiscal_NFeDATAHORAAUT: TSQLTimeStampField
      FieldName = 'DATAHORAAUT'
    end
    object sdsNotaFiscal_NFeXML: TMemoField
      FieldName = 'XML'
      BlobType = ftMemo
      Size = 1
    end
    object sdsNotaFiscal_NFeDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object sdsNotaFiscal_NFeHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
  end
  object cdsNotaFiscal_NFe: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNotaFiscalsdsNotaFiscal_NFe
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 107
    Top = 391
    object cdsNotaFiscal_NFeID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_NFeITEM: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_NFeTIPO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Size = 3
    end
    object cdsNotaFiscal_NFeITEMTIPO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Item Tipo'
      FieldName = 'ITEMTIPO'
    end
    object cdsNotaFiscal_NFeDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object cdsNotaFiscal_NFeMOTIVO: TMemoField
      DisplayLabel = 'Motivo'
      FieldName = 'MOTIVO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsNotaFiscal_NFeNFEPROTOCOLO: TStringField
      DisplayLabel = 'NFe Protocolo'
      FieldName = 'NFEPROTOCOLO'
      Size = 45
    end
    object cdsNotaFiscal_NFeNFERECIBO: TStringField
      DisplayLabel = 'NFe Recibo'
      FieldName = 'NFERECIBO'
      Size = 45
    end
    object cdsNotaFiscal_NFeDATAHORAAUT: TSQLTimeStampField
      DisplayLabel = 'Data Hora Autorizado'
      FieldName = 'DATAHORAAUT'
    end
    object cdsNotaFiscal_NFeXML: TMemoField
      FieldName = 'XML'
      BlobType = ftMemo
      Size = 1
    end
    object cdsNotaFiscal_NFeDTCADASTRO: TDateField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'DTCADASTRO'
    end
    object cdsNotaFiscal_NFeHRCADASTRO: TTimeField
      DisplayLabel = 'Hr. Cadastro'
      FieldName = 'HRCADASTRO'
    end
  end
  object dsNotaFiscal_NFe: TDataSource
    DataSet = cdsNotaFiscal_NFe
    Left = 147
    Top = 391
  end
  object sdsNotaFiscal_Parc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * '#13#10'FROM NOTAFISCAL_PARC '#13#10'WHERE ID = :ID'#13#10#13#10
    DataSource = dsNotaFiscal_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 67
    Top = 432
    object sdsNotaFiscal_ParcID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_ParcITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_ParcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object sdsNotaFiscal_ParcVLR_VENCIMENTO: TFloatField
      FieldName = 'VLR_VENCIMENTO'
    end
    object sdsNotaFiscal_ParcID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object sdsNotaFiscal_ParcID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object sdsNotaFiscal_ParcPERC_BASE_COMISSAO: TFloatField
      FieldName = 'PERC_BASE_COMISSAO'
    end
  end
  object cdsNotaFiscal_Parc: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNotaFiscalsdsNotaFiscal_Parc
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    BeforePost = cdsNotaFiscal_ParcBeforePost
    Left = 107
    Top = 432
    object cdsNotaFiscal_ParcID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_ParcITEM: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Parcela'
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_ParcDTVENCIMENTO: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data Vencimento'
      FieldName = 'DTVENCIMENTO'
    end
    object cdsNotaFiscal_ParcVLR_VENCIMENTO: TFloatField
      DisplayLabel = 'Valor Vencimento'
      FieldName = 'VLR_VENCIMENTO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscal_ParcID_TIPOCOBRANCA: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C'#243'd. Tipo Cobran'#231'a'
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsNotaFiscal_ParcID_CONTA: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C'#243'd. Conta'
      FieldName = 'ID_CONTA'
    end
    object cdsNotaFiscal_ParcPERC_BASE_COMISSAO: TFloatField
      FieldName = 'PERC_BASE_COMISSAO'
    end
    object cdsNotaFiscal_ParclkNome_TipoCobranca: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNome_TipoCobranca'
      LookupDataSet = cdsTipoCobranca
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'ID_TIPOCOBRANCA'
      Size = 40
      Lookup = True
    end
    object cdsNotaFiscal_ParclkNome_Conta: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNome_Conta'
      LookupDataSet = cdsContas
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'ID_CONTA'
      ProviderFlags = []
      Size = 40
      Lookup = True
    end
  end
  object dsNotaFiscal_Parc: TDataSource
    DataSet = cdsNotaFiscal_Parc
    Left = 147
    Top = 432
  end
  object sdsNotaFiscal_Reboque: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NOTAFISCAL_REBOQUE'#13#10'WHERE ID = :ID'#13#10
    DataSource = dsNotaFiscal_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 67
    Top = 473
    object sdsNotaFiscal_ReboqueID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_ReboqueITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_ReboquePLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object sdsNotaFiscal_ReboqueUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sdsNotaFiscal_ReboqueRNTC: TStringField
      FieldName = 'RNTC'
    end
  end
  object cdsNotaFiscal_Reboque: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNotaFiscalsdsNotaFiscal_Reboque
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 107
    Top = 473
    object cdsNotaFiscal_ReboqueID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_ReboqueITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_ReboquePLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object cdsNotaFiscal_ReboqueUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsNotaFiscal_ReboqueRNTC: TStringField
      FieldName = 'RNTC'
    end
  end
  object dsNotaFiscal_Reboque: TDataSource
    DataSet = cdsNotaFiscal_Reboque
    Left = 147
    Top = 473
  end
  object sdsNotaFiscal_Ref: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NOTAFISCAL_REF'#13#10'WHERE ID = :ID'#13#10
    DataSource = dsNotaFiscal_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 67
    Top = 516
    object sdsNotaFiscal_RefID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_RefITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_RefTIPO: TStringField
      FieldName = 'TIPO'
      Size = 3
    end
    object sdsNotaFiscal_RefID_NOTAREF: TIntegerField
      FieldName = 'ID_NOTAREF'
    end
    object sdsNotaFiscal_RefNUMNOTA_REF: TIntegerField
      FieldName = 'NUMNOTA_REF'
    end
    object sdsNotaFiscal_RefSERIE_REF: TStringField
      FieldName = 'SERIE_REF'
      Size = 3
    end
    object sdsNotaFiscal_RefUF_REF: TStringField
      FieldName = 'UF_REF'
      Size = 2
    end
    object sdsNotaFiscal_RefANO_REF: TIntegerField
      FieldName = 'ANO_REF'
    end
    object sdsNotaFiscal_RefMES_REF: TIntegerField
      FieldName = 'MES_REF'
    end
    object sdsNotaFiscal_RefCNPJ_REF: TStringField
      FieldName = 'CNPJ_REF'
      Size = 18
    end
    object sdsNotaFiscal_RefMODELO_REF: TStringField
      FieldName = 'MODELO_REF'
      Size = 2
    end
    object sdsNotaFiscal_RefNFECHAVEACESSO_REF: TStringField
      FieldName = 'NFECHAVEACESSO_REF'
      Size = 44
    end
    object sdsNotaFiscal_RefID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object sdsNotaFiscal_RefDESCRICAO_TIPO: TStringField
      FieldName = 'DESCRICAO_TIPO'
      Size = 15
    end
    object sdsNotaFiscal_RefCUPOM_NUMECF: TIntegerField
      FieldName = 'CUPOM_NUMECF'
    end
    object sdsNotaFiscal_RefCUPOM_NUMCOO: TIntegerField
      FieldName = 'CUPOM_NUMCOO'
    end
    object sdsNotaFiscal_RefCUPOM_MODELO: TStringField
      FieldName = 'CUPOM_MODELO'
      Size = 2
    end
    object sdsNotaFiscal_RefINSCESTADUAL_REF: TStringField
      FieldName = 'INSCESTADUAL_REF'
      Size = 14
    end
    object sdsNotaFiscal_RefCTECHAVEACESSO_REF: TStringField
      FieldName = 'CTECHAVEACESSO_REF'
      Size = 44
    end
  end
  object cdsNotaFiscal_Ref: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNotaFiscalsdsNotaFiscal_Ref
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 107
    Top = 516
    object cdsNotaFiscal_RefID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_RefITEM: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_RefTIPO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Size = 3
    end
    object cdsNotaFiscal_RefID_NOTAREF: TIntegerField
      FieldName = 'ID_NOTAREF'
    end
    object cdsNotaFiscal_RefNUMNOTA_REF: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'N'#186' Nota Referenciada'
      FieldName = 'NUMNOTA_REF'
    end
    object cdsNotaFiscal_RefSERIE_REF: TStringField
      Alignment = taCenter
      DisplayLabel = 'S'#233'rie Referenciada'
      FieldName = 'SERIE_REF'
      Size = 3
    end
    object cdsNotaFiscal_RefUF_REF: TStringField
      Alignment = taCenter
      DisplayLabel = 'UF'
      FieldName = 'UF_REF'
      Size = 2
    end
    object cdsNotaFiscal_RefANO_REF: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Ano'
      FieldName = 'ANO_REF'
    end
    object cdsNotaFiscal_RefMES_REF: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'M'#234's'
      FieldName = 'MES_REF'
    end
    object cdsNotaFiscal_RefCNPJ_REF: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'CNPJ_REF'
      Size = 18
    end
    object cdsNotaFiscal_RefINSCESTADUAL_REF: TStringField
      DisplayLabel = 'Inscri'#231#227'o Estadual'
      FieldName = 'INSCESTADUAL_REF'
      Size = 14
    end
    object cdsNotaFiscal_RefMODELO_REF: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'MODELO_REF'
      Size = 2
    end
    object cdsNotaFiscal_RefNFECHAVEACESSO_REF: TStringField
      DisplayLabel = 'Chave Acesso NFe'
      FieldName = 'NFECHAVEACESSO_REF'
      Size = 44
    end
    object cdsNotaFiscal_RefID_FORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Fornecedor'
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsNotaFiscal_RefDESCRICAO_TIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'DESCRICAO_TIPO'
      Size = 15
    end
    object cdsNotaFiscal_RefCUPOM_NUMECF: TIntegerField
      DisplayLabel = 'N'#186' ECF'
      FieldName = 'CUPOM_NUMECF'
    end
    object cdsNotaFiscal_RefCUPOM_NUMCOO: TIntegerField
      DisplayLabel = 'N'#186' COO'
      FieldName = 'CUPOM_NUMCOO'
    end
    object cdsNotaFiscal_RefCUPOM_MODELO: TStringField
      DisplayLabel = 'Modelo Cupom'
      FieldName = 'CUPOM_MODELO'
      Size = 2
    end
    object cdsNotaFiscal_RefCTECHAVEACESSO_REF: TStringField
      FieldName = 'CTECHAVEACESSO_REF'
      Size = 44
    end
  end
  object dsNotaFiscal_Ref: TDataSource
    DataSet = cdsNotaFiscal_Ref
    Left = 147
    Top = 516
  end
  object dsNotaFiscal_Mestre_Item: TDataSource
    DataSet = sdsNotaFiscal_Itens
    Left = 153
    Top = 44
  end
  object sdsNotaFiscal_Ped: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM NOTAFISCAL_PED'#13#10'WHERE ID = :ID'#13#10'   AND ITEM = :IT' +
      'EM'#13#10
    DataSource = dsNotaFiscal_Mestre_Item
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
    Left = 51
    Top = 84
    object sdsNotaFiscal_PedID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_PedITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_PedITEM_NOTAPED: TIntegerField
      FieldName = 'ITEM_NOTAPED'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_PedITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object sdsNotaFiscal_PedQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsNotaFiscal_PedID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object sdsNotaFiscal_PedNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object sdsNotaFiscal_PedTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      Size = 1
    end
  end
  object cdsNotaFiscal_Ped: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNotaFiscal_ItenssdsNotaFiscal_Ped
    IndexFieldNames = 'ID;ITEM;ITEM_NOTAPED'
    Params = <>
    OnNewRecord = cdsNotaFiscal_PedNewRecord
    Left = 91
    Top = 86
    object cdsNotaFiscal_PedID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_PedITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_PedITEM_NOTAPED: TIntegerField
      FieldName = 'ITEM_NOTAPED'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_PedITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object cdsNotaFiscal_PedQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsNotaFiscal_PedID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsNotaFiscal_PedNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsNotaFiscal_PedTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      Size = 1
    end
  end
  object dsNotaFiscal_Ped: TDataSource
    DataSet = cdsNotaFiscal_Ped
    Left = 131
    Top = 86
  end
  object sdsNotaFiscal_NDevolvida: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ND.*, PESSOA.NOME NOMEFORNECEDOR, PESSOA.CNPJ_CPF, PESSOA' +
      '.UF'#13#10'FROM NOTAFISCAL_NDEVOLVIDA ND'#13#10'INNER JOIN PESSOA '#13#10'  ON ND.' +
      'ID_FORNECEDOR = PESSOA.CODIGO'#13#10'WHERE ND.ID = :ID'#13#10'   AND ND.ITEM' +
      ' = :ITEM'
    DataSource = dsNotaFiscal_Mestre_Item
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
    Left = 51
    Top = 130
    object sdsNotaFiscal_NDevolvidaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_NDevolvidaITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_NDevolvidaITEM_NDEV: TIntegerField
      FieldName = 'ITEM_NDEV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_NDevolvidaID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object sdsNotaFiscal_NDevolvidaFILIAL_NTE: TIntegerField
      FieldName = 'FILIAL_NTE'
    end
    object sdsNotaFiscal_NDevolvidaID_NTE: TIntegerField
      FieldName = 'ID_NTE'
    end
    object sdsNotaFiscal_NDevolvidaITEM_NTE: TIntegerField
      FieldName = 'ITEM_NTE'
    end
    object sdsNotaFiscal_NDevolvidaQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsNotaFiscal_NDevolvidaNFECHAVEACESSO_NTE: TStringField
      FieldName = 'NFECHAVEACESSO_NTE'
      Size = 44
    end
    object sdsNotaFiscal_NDevolvidaNUMNOTA_ENTRADA: TIntegerField
      FieldName = 'NUMNOTA_ENTRADA'
    end
    object sdsNotaFiscal_NDevolvidaSERIE_ENTRADA: TStringField
      FieldName = 'SERIE_ENTRADA'
      Size = 3
    end
    object sdsNotaFiscal_NDevolvidaMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object sdsNotaFiscal_NDevolvidaNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      ProviderFlags = []
      Size = 60
    end
    object sdsNotaFiscal_NDevolvidaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = []
      Size = 18
    end
    object sdsNotaFiscal_NDevolvidaUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object sdsNotaFiscal_NDevolvidaDTEMISSAO_NTE: TDateField
      FieldName = 'DTEMISSAO_NTE'
    end
    object sdsNotaFiscal_NDevolvidaTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      Size = 1
    end
  end
  object cdsNotaFiscal_NDevolvida: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNotaFiscal_ItenssdsNotaFiscal_NDevolvida
    IndexFieldNames = 'ID;ITEM;ITEM_NDEV'
    Params = <>
    OnNewRecord = cdsNotaFiscal_NDevolvidaNewRecord
    Left = 91
    Top = 130
    object cdsNotaFiscal_NDevolvidaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_NDevolvidaITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_NDevolvidaITEM_NDEV: TIntegerField
      FieldName = 'ITEM_NDEV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_NDevolvidaID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsNotaFiscal_NDevolvidaFILIAL_NTE: TIntegerField
      FieldName = 'FILIAL_NTE'
    end
    object cdsNotaFiscal_NDevolvidaID_NTE: TIntegerField
      FieldName = 'ID_NTE'
    end
    object cdsNotaFiscal_NDevolvidaITEM_NTE: TIntegerField
      FieldName = 'ITEM_NTE'
    end
    object cdsNotaFiscal_NDevolvidaQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsNotaFiscal_NDevolvidaNFECHAVEACESSO_NTE: TStringField
      FieldName = 'NFECHAVEACESSO_NTE'
      Size = 44
    end
    object cdsNotaFiscal_NDevolvidaNUMNOTA_ENTRADA: TIntegerField
      FieldName = 'NUMNOTA_ENTRADA'
    end
    object cdsNotaFiscal_NDevolvidaSERIE_ENTRADA: TStringField
      FieldName = 'SERIE_ENTRADA'
      Size = 3
    end
    object cdsNotaFiscal_NDevolvidaMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object cdsNotaFiscal_NDevolvidaNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      ProviderFlags = []
      Size = 60
    end
    object cdsNotaFiscal_NDevolvidaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = []
      Size = 18
    end
    object cdsNotaFiscal_NDevolvidaUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object cdsNotaFiscal_NDevolvidaDTEMISSAO_NTE: TDateField
      FieldName = 'DTEMISSAO_NTE'
    end
    object cdsNotaFiscal_NDevolvidaTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      Size = 1
    end
  end
  object dsNotaFiscal_NDevolvida: TDataSource
    DataSet = cdsNotaFiscal_NDevolvida
    Left = 131
    Top = 130
  end
  object sdsNotaFiscal_Imp: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM NOTAFISCAL_IMP'#13#10'WHERE ID = :ID'#13#10'      AND ITEM = ' +
      ':ITEM'#13#10
    DataSource = dsNotaFiscal_Mestre_Item
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
    Left = 51
    Top = 174
    object sdsNotaFiscal_ImpID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_ImpITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_ImpITEM_IMP: TIntegerField
      FieldName = 'ITEM_IMP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_ImpNUMDI: TStringField
      FieldName = 'NUMDI'
      Size = 12
    end
    object sdsNotaFiscal_ImpDTREGISTRO: TDateField
      FieldName = 'DTREGISTRO'
    end
    object sdsNotaFiscal_ImpDTDESEMBARACO: TDateField
      FieldName = 'DTDESEMBARACO'
    end
    object sdsNotaFiscal_ImpCODEXPORTADOR: TStringField
      FieldName = 'CODEXPORTADOR'
      Size = 60
    end
    object sdsNotaFiscal_ImpLOCAL_DESEMBARACO: TStringField
      FieldName = 'LOCAL_DESEMBARACO'
      Size = 60
    end
    object sdsNotaFiscal_ImpUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sdsNotaFiscal_ImpNUMFATURA: TStringField
      FieldName = 'NUMFATURA'
      Size = 15
    end
    object sdsNotaFiscal_ImpTIPO_VIA_TRANSORTE: TSmallintField
      FieldName = 'TIPO_VIA_TRANSORTE'
    end
    object sdsNotaFiscal_ImpVLR_AFRMM: TFloatField
      FieldName = 'VLR_AFRMM'
    end
    object sdsNotaFiscal_ImpTIPO_INTERMEDIO: TSmallintField
      FieldName = 'TIPO_INTERMEDIO'
    end
    object sdsNotaFiscal_ImpCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object sdsNotaFiscal_ImpUF_TERCEIRO: TStringField
      FieldName = 'UF_TERCEIRO'
      Size = 2
    end
  end
  object cdsNotaFiscal_Imp: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNotaFiscal_ItenssdsNotaFiscal_Imp
    IndexFieldNames = 'ID;ITEM;ITEM_IMP'
    Params = <>
    Left = 91
    Top = 175
    object cdsNotaFiscal_ImpID: TIntegerField
      DisplayLabel = 'ID Nota'
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_ImpITEM: TIntegerField
      DisplayLabel = 'Item Nota'
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_ImpITEM_IMP: TIntegerField
      DisplayLabel = 'Item Importa'#231#227'o'
      FieldName = 'ITEM_IMP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_ImpNUMDI: TStringField
      DisplayLabel = 'N'#186' DI'
      FieldName = 'NUMDI'
      Size = 12
    end
    object cdsNotaFiscal_ImpDTREGISTRO: TDateField
      DisplayLabel = 'Data Registro'
      FieldName = 'DTREGISTRO'
    end
    object cdsNotaFiscal_ImpDTDESEMBARACO: TDateField
      DisplayLabel = 'Data Desembara'#231'o'
      FieldName = 'DTDESEMBARACO'
    end
    object cdsNotaFiscal_ImpCODEXPORTADOR: TStringField
      DisplayLabel = 'C'#243'd. Exportador'
      FieldName = 'CODEXPORTADOR'
      Size = 60
    end
    object cdsNotaFiscal_ImpLOCAL_DESEMBARACO: TStringField
      FieldName = 'LOCAL_DESEMBARACO'
      Size = 60
    end
    object cdsNotaFiscal_ImpUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsNotaFiscal_ImpNUMFATURA: TStringField
      FieldName = 'NUMFATURA'
      Size = 15
    end
    object cdsNotaFiscal_ImpTIPO_VIA_TRANSORTE: TSmallintField
      FieldName = 'TIPO_VIA_TRANSORTE'
    end
    object cdsNotaFiscal_ImpVLR_AFRMM: TFloatField
      FieldName = 'VLR_AFRMM'
    end
    object cdsNotaFiscal_ImpTIPO_INTERMEDIO: TSmallintField
      FieldName = 'TIPO_INTERMEDIO'
    end
    object cdsNotaFiscal_ImpCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsNotaFiscal_ImpUF_TERCEIRO: TStringField
      FieldName = 'UF_TERCEIRO'
      Size = 2
    end
    object cdsNotaFiscal_ImpsdsNotaFiscal_Imp_Ad: TDataSetField
      FieldName = 'sdsNotaFiscal_Imp_Ad'
    end
  end
  object dsNotaFiscal_Imp: TDataSource
    DataSet = cdsNotaFiscal_Imp
    Left = 131
    Top = 175
  end
  object dsNotaFiscal_Mestre_Imp: TDataSource
    DataSet = sdsNotaFiscal_Imp
    Left = 19
    Top = 207
  end
  object cdsNotaFiscal_Imp_Ad: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNotaFiscal_ImpsdsNotaFiscal_Imp_Ad
    IndexFieldNames = 'ID;ITEM;ITEM_IMP;ITEM_AD'
    Params = <>
    Left = 91
    Top = 230
    object cdsNotaFiscal_Imp_AdID: TIntegerField
      DisplayLabel = 'ID Nota'
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_Imp_AdITEM: TIntegerField
      DisplayLabel = 'Item Nota'
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_Imp_AdITEM_IMP: TIntegerField
      DisplayLabel = 'Item Importa'#231#227'o'
      FieldName = 'ITEM_IMP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_Imp_AdITEM_AD: TIntegerField
      DisplayLabel = 'Item Adi'#231#227'o'
      FieldName = 'ITEM_AD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_Imp_AdNUMADICAO: TIntegerField
      DisplayLabel = 'N'#186' Adi'#231#227'o'
      FieldName = 'NUMADICAO'
    end
    object cdsNotaFiscal_Imp_AdCODFABRICANTE: TStringField
      DisplayLabel = 'C'#243'd. Fabricante'
      FieldName = 'CODFABRICANTE'
      Size = 60
    end
    object cdsNotaFiscal_Imp_AdVLR_DESCONTO_DI: TFloatField
      DisplayLabel = 'Valor Desconto DI'
      FieldName = 'VLR_DESCONTO_DI'
    end
    object cdsNotaFiscal_Imp_AdNUM_SEQ: TIntegerField
      FieldName = 'NUM_SEQ'
    end
    object cdsNotaFiscal_Imp_AdNUM_DRAWBACK: TStringField
      FieldName = 'NUM_DRAWBACK'
      Size = 11
    end
  end
  object dsNotaFiscal_Imp_Ad: TDataSource
    DataSet = cdsNotaFiscal_Imp_Ad
    Left = 131
    Top = 230
  end
  object sdsCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PES.codigo, PES.nome, PES.fantasia, PES.endereco, PES.com' +
      'plemento_end, PES.num_end, PES.bairro,'#13#10'PES.id_cidade, PES.cidad' +
      'e, PES.uf, PES.bairro_ent, PES.bairro_pgto, pes.endereco_ent, pe' +
      's.endereco_pgto,'#13#10'pes.complemento_end_ent, pes.complemento_end_p' +
      'gto, pes.num_end_ent, pes.num_end_pgto, pes.cnpj_cpf, pes.cep, p' +
      'es.cep_ent, pes.cep_pgto, pes.id_cidade_ent, pes.id_cidade_pgto,' +
      ' pes.uf_ent, pes.fone_pgto, pes.cnpj_cpf_ent, PES.ID_REGIME_TRIB' +
      ', PES.ID_PAIS, PES.PESSOA, PES.TIPO_ICMS, PES.email_nfe, PES.ema' +
      'il_nfe2, PES.INSCR_EST, PES.DDDFONE1, PES.TELEFONE1, PES.PESSOA_' +
      'PGTO, PES.CNPJ_CPG_PGTO, PES.PESSOA_ENT, PES.USA_TAMANHO_AGRUPAD' +
      'O_NFE, PES.ID_TAB_PRECO, PES.VLR_LIMITE_CREDITO,  PES.usa_transf' +
      'icms, PES.id_tipocobranca, PES.id_contaboleto, PES.id_condpgto, ' +
      'PES.cliente_conta_id,'#13#10'PES.cliente_estoque, PES.id_vendedor, PES' +
      '.PERC_COMISSAO, PES.ID_TRANSPORTADORA, PES.ID_REDESPACHO, PES.TI' +
      'PO_FRETE, PES.EMAIL_PGTO, PES.FORNECEDOR_CONTA_ID,'#13#10'PES.TIPO_CON' +
      'SUMIDOR, PES.TIPO_CONTRIBUINTE, INSC_SUFRAMA, INSC_MUNICIPAL, PE' +
      'S.CARIMBO, PES.PERC_DESC_SUFRAMA, PES.ORGAO_PUBLICO, PES.IMP_COD' +
      '_PRODUTO_CLI,'#13#10'IMP_COR_CLIENTE, PES.MDIA1, PES.MDIA2, PES.insc_s' +
      'uframa'#13#10'FROM PESSOA PES'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 601
    Top = 40
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 633
    Top = 40
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCliente'
    Left = 673
    Top = 40
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
    object cdsClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsClienteCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsClienteNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object cdsClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsClienteID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
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
    object cdsClienteBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 26
    end
    object cdsClienteBAIRRO_PGTO: TStringField
      FieldName = 'BAIRRO_PGTO'
      Size = 26
    end
    object cdsClienteENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 40
    end
    object cdsClienteENDERECO_PGTO: TStringField
      FieldName = 'ENDERECO_PGTO'
      Size = 40
    end
    object cdsClienteCOMPLEMENTO_END_ENT: TStringField
      FieldName = 'COMPLEMENTO_END_ENT'
      Size = 60
    end
    object cdsClienteCOMPLEMENTO_END_PGTO: TStringField
      FieldName = 'COMPLEMENTO_END_PGTO'
      Size = 60
    end
    object cdsClienteNUM_END_ENT: TStringField
      FieldName = 'NUM_END_ENT'
    end
    object cdsClienteNUM_END_PGTO: TStringField
      FieldName = 'NUM_END_PGTO'
    end
    object cdsClienteCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsClienteCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsClienteCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 10
    end
    object cdsClienteCEP_PGTO: TStringField
      FieldName = 'CEP_PGTO'
      Size = 10
    end
    object cdsClienteID_CIDADE_ENT: TIntegerField
      FieldName = 'ID_CIDADE_ENT'
    end
    object cdsClienteID_CIDADE_PGTO: TIntegerField
      FieldName = 'ID_CIDADE_PGTO'
    end
    object cdsClienteUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object cdsClienteFONE_PGTO: TStringField
      FieldName = 'FONE_PGTO'
      Size = 15
    end
    object cdsClienteCNPJ_CPF_ENT: TStringField
      FieldName = 'CNPJ_CPF_ENT'
      Size = 18
    end
    object cdsClienteID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
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
    object cdsClienteEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 250
    end
    object cdsClienteEMAIL_NFE2: TStringField
      FieldName = 'EMAIL_NFE2'
      Size = 150
    end
    object cdsClienteINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object cdsClienteDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object cdsClienteTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
    object cdsClientePESSOA_PGTO: TStringField
      FieldName = 'PESSOA_PGTO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCNPJ_CPG_PGTO: TStringField
      FieldName = 'CNPJ_CPG_PGTO'
      Size = 18
    end
    object cdsClientePESSOA_ENT: TStringField
      FieldName = 'PESSOA_ENT'
      FixedChar = True
      Size = 1
    end
    object cdsClienteUSA_TAMANHO_AGRUPADO_NFE: TStringField
      FieldName = 'USA_TAMANHO_AGRUPADO_NFE'
      FixedChar = True
      Size = 1
    end
    object cdsClienteID_TAB_PRECO: TIntegerField
      FieldName = 'ID_TAB_PRECO'
    end
    object cdsClienteVLR_LIMITE_CREDITO: TFloatField
      FieldName = 'VLR_LIMITE_CREDITO'
    end
    object cdsClienteUSA_TRANSFICMS: TStringField
      FieldName = 'USA_TRANSFICMS'
      FixedChar = True
      Size = 1
    end
    object cdsClienteID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsClienteID_CONTABOLETO: TIntegerField
      FieldName = 'ID_CONTABOLETO'
    end
    object cdsClienteID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsClienteCLIENTE_CONTA_ID: TIntegerField
      FieldName = 'CLIENTE_CONTA_ID'
    end
    object cdsClienteCLIENTE_ESTOQUE: TStringField
      FieldName = 'CLIENTE_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsClienteID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsClientePERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsClienteID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsClienteID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object cdsClienteTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsClienteEMAIL_PGTO: TStringField
      FieldName = 'EMAIL_PGTO'
      Size = 150
    end
    object cdsClienteFORNECEDOR_CONTA_ID: TIntegerField
      FieldName = 'FORNECEDOR_CONTA_ID'
    end
    object cdsClienteTIPO_CONSUMIDOR: TSmallintField
      FieldName = 'TIPO_CONSUMIDOR'
    end
    object cdsClienteTIPO_CONTRIBUINTE: TSmallintField
      FieldName = 'TIPO_CONTRIBUINTE'
    end
    object cdsClienteINSC_SUFRAMA: TStringField
      FieldName = 'INSC_SUFRAMA'
      Size = 9
    end
    object cdsClienteINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object cdsClienteCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object cdsClientePERC_DESC_SUFRAMA: TFloatField
      FieldName = 'PERC_DESC_SUFRAMA'
    end
    object cdsClienteORGAO_PUBLICO: TStringField
      FieldName = 'ORGAO_PUBLICO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteIMP_COD_PRODUTO_CLI: TStringField
      FieldName = 'IMP_COD_PRODUTO_CLI'
      FixedChar = True
      Size = 1
    end
    object cdsClienteIMP_COR_CLIENTE: TStringField
      FieldName = 'IMP_COR_CLIENTE'
      FixedChar = True
      Size = 1
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
    Left = 713
    Top = 40
  end
  object sdsVendedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME, PERC_COMISSAO, TIPO_COMISSAO, PERC_COMISSAO' +
      '_VEND'#13#10'FROM PESSOA'#13#10'WHERE INATIVO = '#39'N'#39#13#10'      AND TP_VENDEDOR =' +
      ' '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 601
    Top = 88
  end
  object dspVendedor: TDataSetProvider
    DataSet = sdsVendedor
    Left = 633
    Top = 88
  end
  object cdsVendedor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspVendedor'
    Left = 673
    Top = 88
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
    object cdsVendedorTIPO_COMISSAO: TStringField
      FieldName = 'TIPO_COMISSAO'
      FixedChar = True
      Size = 1
    end
    object cdsVendedorPERC_COMISSAO_VEND: TFloatField
      FieldName = 'PERC_COMISSAO_VEND'
    end
  end
  object dsVendedor: TDataSource
    DataSet = cdsVendedor
    Left = 713
    Top = 88
  end
  object sdsTransportadora: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME, EMAIL_NFE, ENDERECO, NUM_END, COMPLEMENTO_E' +
      'ND, BAIRRO, ID_CIDADE, UF, CNPJ_CPF, INSCR_EST, CEP, PLACA, UF_P' +
      'LACA'#13#10'FROM PESSOA'#13#10'WHERE INATIVO = '#39'N'#39#13#10'      AND TP_TRANSPORTAD' +
      'ORA = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 601
    Top = 132
  end
  object dspTransportadora: TDataSetProvider
    DataSet = sdsTransportadora
    Left = 633
    Top = 132
  end
  object cdsTransportadora: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspTransportadora'
    Left = 673
    Top = 132
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
    object cdsTransportadoraCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsTransportadoraPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object cdsTransportadoraUF_PLACA: TStringField
      FieldName = 'UF_PLACA'
      Size = 2
    end
  end
  object dsTransportadora: TDataSource
    DataSet = cdsTransportadora
    Left = 713
    Top = 132
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
      ' T.perc_tributo,'#13#10'T.perc_cofins, T.perc_pis, T.ENTRADASAIDA, T.G' +
      'ERAR_DESONERACAO_ICMS, T.GERAR_ESTOQUE, T.BAIXAR_FUT,'#13#10'CALCULAR_' +
      'ICMS_DIFERIDO, T.USA_REGRA_ORGAO_PUBLICO, t.id_cofins_simp, t.id' +
      '_pis_simp,'#13#10't.perc_pis_simp, t.perc_cofins_simp, t.tipo_pis_simp' +
      ', t.tipo_cofins_simp,'#13#10'T.NFEFINALIDADE, T.GERAR_CUSTO_MEDIO, T.D' +
      'EVOLUCAO, t.usa_unidade_trib, T.ALT_NCM_CUSTO'#13#10'FROM TAB_CFOP T'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 377
    Top = 480
  end
  object dspCFOP: TDataSetProvider
    DataSet = sdsCFOP
    Left = 409
    Top = 480
  end
  object cdsCFOP: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODCFOP;ID'
    Params = <>
    ProviderName = 'dspCFOP'
    Left = 449
    Top = 480
    object cdsCFOPsdsCFOP_Variacao: TDataSetField
      FieldName = 'sdsCFOP_Variacao'
    end
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
    object cdsCFOPNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
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
    object cdsCFOPGERAR_ICMS_SIMPLES: TStringField
      FieldName = 'GERAR_ICMS_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPGERAR_TRIBUTO: TStringField
      FieldName = 'GERAR_TRIBUTO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPGERAR_ESTOQUE_MP: TStringField
      FieldName = 'GERAR_ESTOQUE_MP'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPSOMAR_VLRTOTALPRODUTO: TStringField
      FieldName = 'SOMAR_VLRTOTALPRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object cdsCFOPID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsCFOPID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object cdsCFOPID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object cdsCFOPID_OBS_LEI: TIntegerField
      FieldName = 'ID_OBS_LEI'
    end
    object cdsCFOPCOPIARNOTATRIANGULAR: TStringField
      FieldName = 'COPIARNOTATRIANGULAR'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object cdsCFOPTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object cdsCFOPTIPO_EMPRESA: TStringField
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPTIPO_IND_VEN: TStringField
      FieldName = 'TIPO_IND_VEN'
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
    object cdsCFOPBENEFICIAMENTO: TStringField
      FieldName = 'BENEFICIAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPMAOOBRA: TStringField
      FieldName = 'MAOOBRA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPPERC_TRIBUTO: TFloatField
      FieldName = 'PERC_TRIBUTO'
    end
    object cdsCFOPPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object cdsCFOPPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object cdsCFOPENTRADASAIDA: TStringField
      FieldName = 'ENTRADASAIDA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPGERAR_DESONERACAO_ICMS: TStringField
      FieldName = 'GERAR_DESONERACAO_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPGERAR_ESTOQUE: TStringField
      FieldName = 'GERAR_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPBAIXAR_FUT: TStringField
      FieldName = 'BAIXAR_FUT'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPCALCULAR_ICMS_DIFERIDO: TStringField
      FieldName = 'CALCULAR_ICMS_DIFERIDO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPUSA_REGRA_ORGAO_PUBLICO: TStringField
      FieldName = 'USA_REGRA_ORGAO_PUBLICO'
      FixedChar = True
      Size = 10
    end
    object cdsCFOPID_COFINS_SIMP: TIntegerField
      FieldName = 'ID_COFINS_SIMP'
    end
    object cdsCFOPID_PIS_SIMP: TIntegerField
      FieldName = 'ID_PIS_SIMP'
    end
    object cdsCFOPPERC_PIS_SIMP: TFloatField
      FieldName = 'PERC_PIS_SIMP'
    end
    object cdsCFOPPERC_COFINS_SIMP: TFloatField
      FieldName = 'PERC_COFINS_SIMP'
    end
    object cdsCFOPTIPO_PIS_SIMP: TStringField
      FieldName = 'TIPO_PIS_SIMP'
      Size = 2
    end
    object cdsCFOPTIPO_COFINS_SIMP: TStringField
      FieldName = 'TIPO_COFINS_SIMP'
      Size = 2
    end
    object cdsCFOPNFEFINALIDADE: TStringField
      FieldName = 'NFEFINALIDADE'
      Size = 1
    end
    object cdsCFOPGERAR_CUSTO_MEDIO: TStringField
      FieldName = 'GERAR_CUSTO_MEDIO'
      Size = 1
    end
    object cdsCFOPDEVOLUCAO: TStringField
      FieldName = 'DEVOLUCAO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPUSA_UNIDADE_TRIB: TStringField
      FieldName = 'USA_UNIDADE_TRIB'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPALT_NCM_CUSTO: TStringField
      FieldName = 'ALT_NCM_CUSTO'
      FixedChar = True
      Size = 1
    end
  end
  object dsCFOP: TDataSource
    DataSet = cdsCFOP
    Left = 489
    Top = 480
  end
  object sdsNotaFiscal_Consulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT NT.id, NT.numnota, NT.filial, NT.serie, NT.dtemissao, NT.' +
      'dtsaidaentrada, NT.id_cfop,'#13#10'NT.id_cliente, NT.id_clientetriang,' +
      ' NT.vlr_nota, NT.vlr_duplicata, NT.cancelada, NT.nfedenegada,'#13#10'N' +
      'T.nfechaveacesso, NT.nferecibo, NT.nfeprotocolo, NT.nfeprotocolo' +
      '_cancelada, NT.tipo_prazo,'#13#10'NT.id_condpgto, NT.id_vendedor, NT.s' +
      'tatus_manifesto, NT.vlr_entrada,'#13#10'NT.NFEFINALIDADE, NT.NFEVERSAO' +
      ', NT.NFEAMBIENTE,'#13#10'NT.TIPO_NOTA, NT.TIPO_REG, NT.NFECODBARRA_CON' +
      'TINGENCIA,'#13#10'NT.NFEENVIADA,  NT.VLR_BASE_COMISSAO, CLI.UF UF_CLIE' +
      'NTE, NT.USUARIO,'#13#10'CLI.NOME NOMECLIENTE, CFOP.CODCFOP, CLI.FANTAS' +
      'IA, VEND.NOME NOME_VENDEDOR, NT.REC_COPIADO, '#13#10'CLI.cnpj_cpf CNPJ' +
      '_CPF_CLIENTE,  NT.ID_TRANSPORTADORA,  CLI.insc_suframa INSC_SUFR' +
      'AMA_CLIENTE, '#13#10'case'#13#10'  WHEN NT.tipo_prazo = '#39'P'#39' then '#39'A PRAZO'#39#13#10 +
      '  WHEN NT.tipo_prazo = '#39'V'#39' then '#39'A VISTA'#39#13#10'  else '#39#39#13#10'  end DESC' +
      'RICAO_PRAZO'#13#10'FROM NOTAFISCAL NT'#13#10'INNER JOIN PESSOA CLI'#13#10'  ON NT.' +
      'ID_CLIENTE = CLI.CODIGO'#13#10'LEFT JOIN TAB_CFOP CFOP'#13#10'  ON NT.ID_CFO' +
      'P = CFOP.ID'#13#10'LEFT JOIN PESSOA VEND'#13#10'ON NT.id_vendedor = VEND.COD' +
      'IGO'#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 401
    Top = 16
  end
  object dspNotaFiscal_Consulta: TDataSetProvider
    DataSet = sdsNotaFiscal_Consulta
    Left = 433
    Top = 16
  end
  object cdsNotaFiscal_Consulta: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'FILIAL;SERIE;NUMNOTA'
    Params = <>
    ProviderName = 'dspNotaFiscal_Consulta'
    OnCalcFields = cdsNotaFiscal_ConsultaCalcFields
    Left = 473
    Top = 16
    object cdsNotaFiscal_ConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscal_ConsultaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsNotaFiscal_ConsultaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsNotaFiscal_ConsultaNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsNotaFiscal_ConsultaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsNotaFiscal_ConsultaID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsNotaFiscal_ConsultaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsNotaFiscal_ConsultaID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsNotaFiscal_ConsultaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsNotaFiscal_ConsultaVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ConsultaVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ConsultaVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ConsultaCANCELADA: TStringField
      FieldName = 'CANCELADA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ConsultaDTSAIDAENTRADA: TDateField
      FieldName = 'DTSAIDAENTRADA'
    end
    object cdsNotaFiscal_ConsultaID_CLIENTETRIANG: TIntegerField
      FieldName = 'ID_CLIENTETRIANG'
    end
    object cdsNotaFiscal_ConsultaNFERECIBO: TStringField
      FieldName = 'NFERECIBO'
      Size = 45
    end
    object cdsNotaFiscal_ConsultaNFEPROTOCOLO: TStringField
      FieldName = 'NFEPROTOCOLO'
      Size = 45
    end
    object cdsNotaFiscal_ConsultaNFECHAVEACESSO: TStringField
      FieldName = 'NFECHAVEACESSO'
      Size = 44
    end
    object cdsNotaFiscal_ConsultaNFEPROTOCOLO_CANCELADA: TStringField
      FieldName = 'NFEPROTOCOLO_CANCELADA'
      Size = 45
    end
    object cdsNotaFiscal_ConsultaNFEVERSAO: TStringField
      FieldName = 'NFEVERSAO'
      Size = 10
    end
    object cdsNotaFiscal_ConsultaNFEFINALIDADE: TStringField
      FieldName = 'NFEFINALIDADE'
      Size = 1
    end
    object cdsNotaFiscal_ConsultaNFEAMBIENTE: TStringField
      FieldName = 'NFEAMBIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ConsultaNFEDENEGADA: TStringField
      FieldName = 'NFEDENEGADA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ConsultaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 60
    end
    object cdsNotaFiscal_ConsultaCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsNotaFiscal_ConsultaTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ConsultaTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsNotaFiscal_ConsultaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsNotaFiscal_ConsultasdsNotaFiscal_Eventos: TDataSetField
      FieldName = 'sdsNotaFiscal_Eventos'
    end
    object cdsNotaFiscal_ConsultaSTATUS_MANIFESTO: TStringField
      DisplayLabel = 'Tipo Manifesto'
      FieldName = 'STATUS_MANIFESTO'
      Size = 3
    end
    object cdsNotaFiscal_ConsultaDESCRICAO_MANIFESTO: TStringField
      DisplayLabel = 'Manifesto'
      FieldKind = fkCalculated
      FieldName = 'DESCRICAO_MANIFESTO'
      Size = 40
      Calculated = True
    end
    object cdsNotaFiscal_ConsultaTIPO_PRAZO: TStringField
      FieldName = 'TIPO_PRAZO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ConsultaNFECODBARRA_CONTINGENCIA: TStringField
      FieldName = 'NFECODBARRA_CONTINGENCIA'
      Size = 44
    end
    object cdsNotaFiscal_ConsultaNFEENVIADA: TStringField
      FieldName = 'NFEENVIADA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ConsultaVLR_BASE_COMISSAO: TFloatField
      FieldName = 'VLR_BASE_COMISSAO'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscal_ConsultaNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 60
    end
    object cdsNotaFiscal_ConsultaDESCRICAO_PRAZO: TStringField
      FieldName = 'DESCRICAO_PRAZO'
      Required = True
      FixedChar = True
      Size = 7
    end
    object cdsNotaFiscal_ConsultaUF_CLIENTE: TStringField
      FieldName = 'UF_CLIENTE'
      FixedChar = True
      Size = 2
    end
    object cdsNotaFiscal_ConsultaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsNotaFiscal_ConsultaREC_COPIADO: TStringField
      FieldName = 'REC_COPIADO'
      Size = 1
    end
    object cdsNotaFiscal_ConsultaCNPJ_CPF_CLIENTE: TStringField
      FieldName = 'CNPJ_CPF_CLIENTE'
    end
    object cdsNotaFiscal_ConsultaID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsNotaFiscal_ConsultaINSC_SUFRAMA_CLIENTE: TStringField
      FieldName = 'INSC_SUFRAMA_CLIENTE'
      Size = 9
    end
  end
  object dsNotaFiscal_Consulta: TDataSource
    DataSet = cdsNotaFiscal_Consulta
    Left = 513
    Top = 16
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
      'FROM NOTAFISCAL'
      'WHERE FILIAL = :FILIAL'
      '    AND SERIE = :SERIE'
      '    AND TIPO_REG = '#39'NTS'#39)
    SQLConnection = dmDatabase.scoDados
    Left = 233
    Top = 139
    object qProximaNotaNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FILIAL'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 601
    Top = 177
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 633
    Top = 177
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 673
    Top = 177
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
    object cdsFilialPERC_TRIB_NTS_IND: TFloatField
      FieldName = 'PERC_TRIB_NTS_IND'
    end
    object cdsFilialPERC_TRIB_NTS_VEN: TFloatField
      FieldName = 'PERC_TRIB_NTS_VEN'
    end
    object cdsFilialPERC_TRIB_NTS_IND_EXP: TFloatField
      FieldName = 'PERC_TRIB_NTS_IND_EXP'
    end
    object cdsFilialPERC_TRIB_NTS_VEN_EXP: TFloatField
      FieldName = 'PERC_TRIB_NTS_VEN_EXP'
    end
    object cdsFilialPERC_LISTA_CAMEX: TFloatField
      FieldName = 'PERC_LISTA_CAMEX'
    end
    object cdsFilialID_ENQIPI: TIntegerField
      FieldName = 'ID_ENQIPI'
    end
    object cdsFilialCALCULAR_DIFAL: TStringField
      FieldName = 'CALCULAR_DIFAL'
      FixedChar = True
      Size = 1
    end
    object cdsFilialLOCALSERVIDORNFE: TStringField
      FieldName = 'LOCALSERVIDORNFE'
      Size = 100
    end
    object cdsFilialDIFAL_GERAR_VALORES: TStringField
      FieldName = 'DIFAL_GERAR_VALORES'
      FixedChar = True
      Size = 1
    end
    object cdsFilialOBS_DIFAL: TStringField
      FieldName = 'OBS_DIFAL'
      Size = 250
    end
    object cdsFilialNUM_NOTA_RAMIRO: TIntegerField
      FieldName = 'NUM_NOTA_RAMIRO'
    end
    object cdsFilialFINALIDADE_PADRAO: TStringField
      FieldName = 'FINALIDADE_PADRAO'
      FixedChar = True
      Size = 1
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 713
    Top = 177
  end
  object sdsUF: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM UF'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 601
    Top = 220
  end
  object dspUF: TDataSetProvider
    DataSet = sdsUF
    Left = 633
    Top = 220
  end
  object cdsUF: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UF'
    Params = <>
    ProviderName = 'dspUF'
    Left = 673
    Top = 220
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
    object cdsUFEXIGE_CBENEF: TStringField
      FieldName = 'EXIGE_CBENEF'
      FixedChar = True
      Size = 1
    end
    object cdsUFACEITA_ISENTO: TStringField
      FieldName = 'ACEITA_ISENTO'
      FixedChar = True
      Size = 1
    end
    object cdsUFPOSSUI_FCP: TStringField
      FieldName = 'POSSUI_FCP'
      FixedChar = True
      Size = 1
    end
  end
  object dsUF: TDataSource
    DataSet = cdsUF
    Left = 713
    Top = 220
  end
  object sdsObs_Aux: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM OBS_AUX'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 601
    Top = 263
  end
  object dspObs_Aux: TDataSetProvider
    DataSet = sdsObs_Aux
    Left = 633
    Top = 263
  end
  object cdsObs_Aux: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspObs_Aux'
    Left = 673
    Top = 263
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
    Left = 713
    Top = 263
  end
  object sdsTipoCobranca: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TIPOCOBRANCA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 601
    Top = 311
  end
  object dspTipoCobranca: TDataSetProvider
    DataSet = sdsTipoCobranca
    Left = 633
    Top = 311
  end
  object cdsTipoCobranca: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspTipoCobranca'
    Left = 673
    Top = 311
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
    object cdsTipoCobrancaCOD_IMP_FISCAL: TStringField
      FieldName = 'COD_IMP_FISCAL'
      Size = 2
    end
  end
  object dsTipoCobranca: TDataSource
    DataSet = cdsTipoCobranca
    Left = 713
    Top = 311
  end
  object sdsContas: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, NOME, GERAR_BOLETO, GERAR_DEPOSITO'#13#10'FROM CONTAS'#13#10'WHER' +
      'E INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 601
    Top = 358
  end
  object dspContas: TDataSetProvider
    DataSet = sdsContas
    Left = 633
    Top = 358
  end
  object cdsContas: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspContas'
    Left = 673
    Top = 358
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
    Left = 713
    Top = 358
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.ID'#13#10', P.REFERENCIA'#13#10', P.NOME'#13#10', P.UNIDADE'#13#10', P.PESOLIQU' +
      'IDO'#13#10', P.PESOBRUTO'#13#10', P.INATIVO'#13#10', P.ID_CSTIPI'#13#10', P.PERC_IPI'#13#10', ' +
      'P.PRECO_CUSTO'#13#10', P.PRECO_VENDA, P.TIPO_REG'#13#10', P.ESTOQUE'#13#10', P.MAT' +
      'ERIAL_OUTROS'#13#10', P.CA'#13#10', P.COMPLEMENTO'#13#10', P.ID_NCM'#13#10', P.ORIGEM_PR' +
      'OD'#13#10', P.CODSITCF'#13#10', P.PERC_REDUCAOICMS'#13#10', P.TIPO_VENDA'#13#10', P.COD_' +
      'BARRA'#13#10', P.PERC_IMPORTACAO'#13#10', P.DT_ALTPRECO'#13#10', P.PERC_REDUCAOICM' +
      'SSUBST'#13#10', P.USA_GRADE'#13#10', P.ID_GRADE'#13#10', P.USA_PERC_IMP_INTERESTAD' +
      'UAL'#13#10', P.PERC_PIS'#13#10', P.PERC_COFINS'#13#10', P.PERC_ICMS_IMP'#13#10', P.PERC_' +
      'IPI_IMP'#13#10',P.NUM_FCI'#13#10',P.NCM_EX, P.ID_CLIENTE'#13#10',PRECO_REVENDA'#13#10',P' +
      'RECO_INDUSTRIALIZACAO'#13#10',PRECO_CONSUMO'#13#10',ID_CONTA_ORCAMENTO'#13#10',ID_' +
      'ENQIPI'#13#10',ID_CFOP_NFCE'#13#10',LANCA_LOTE_CONTROLE'#13#10',COD_CEST'#13#10',P.COD_P' +
      'RODUTO_CLI'#13#10',P.NUM_MS'#13#10',IMP_CONSUMO_NFE'#13#10',DT_ALT_PRECOCUSTO'#13#10',PR' +
      'ECO_CUSTO_TOTAL'#13#10',PERC_MARGEMLUCRO'#13#10',PERC_DESC_MAX'#13#10',SPED_TIPO_I' +
      'TEM'#13#10',ID_CSTICMS_BRED'#13#10',USA_PRECO_COR'#13#10',TAMANHO'#13#10',COD_BARRA2'#13#10',Q' +
      'TD_EMBALAGEM'#13#10',ID_MARCA'#13#10',UNIDADE2'#13#10',ID_CSTICMS'#13#10'FROM PRODUTO P'#13 +
      #10'WHERE INATIVO = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 601
    Top = 406
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 633
    Top = 406
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspProduto'
    Left = 673
    Top = 406
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
    end
    object cdsProdutoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsProdutoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
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
    object cdsProdutoTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object cdsProdutoPERC_IMPORTACAO: TFloatField
      FieldName = 'PERC_IMPORTACAO'
    end
    object cdsProdutoDT_ALTPRECO: TDateField
      FieldName = 'DT_ALTPRECO'
    end
    object cdsProdutoPERC_REDUCAOICMSSUBST: TFloatField
      FieldName = 'PERC_REDUCAOICMSSUBST'
    end
    object cdsProdutoUSA_GRADE: TStringField
      FieldName = 'USA_GRADE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoID_GRADE: TIntegerField
      FieldName = 'ID_GRADE'
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
    object cdsProdutoNUM_FCI: TStringField
      FieldName = 'NUM_FCI'
      Size = 40
    end
    object cdsProdutoNCM_EX: TStringField
      FieldName = 'NCM_EX'
      Size = 2
    end
    object cdsProdutoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsProdutoPRECO_REVENDA: TFMTBCDField
      FieldName = 'PRECO_REVENDA'
      Precision = 15
      Size = 10
    end
    object cdsProdutoPRECO_INDUSTRIALIZACAO: TFMTBCDField
      FieldName = 'PRECO_INDUSTRIALIZACAO'
      Precision = 15
      Size = 10
    end
    object cdsProdutoPRECO_CONSUMO: TFMTBCDField
      FieldName = 'PRECO_CONSUMO'
      Precision = 15
      Size = 10
    end
    object cdsProdutoID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsProdutoID_ENQIPI: TIntegerField
      FieldName = 'ID_ENQIPI'
    end
    object cdsProdutoID_CFOP_NFCE: TIntegerField
      FieldName = 'ID_CFOP_NFCE'
    end
    object cdsProdutoLANCA_LOTE_CONTROLE: TStringField
      FieldName = 'LANCA_LOTE_CONTROLE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCOD_CEST: TStringField
      FieldName = 'COD_CEST'
      Size = 7
    end
    object cdsProdutoCOD_PRODUTO_CLI: TStringField
      FieldName = 'COD_PRODUTO_CLI'
      Size = 15
    end
    object cdsProdutoNUM_MS: TStringField
      FieldName = 'NUM_MS'
    end
    object cdsProdutoIMP_CONSUMO_NFE: TStringField
      FieldName = 'IMP_CONSUMO_NFE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoDT_ALT_PRECOCUSTO: TDateField
      FieldName = 'DT_ALT_PRECOCUSTO'
    end
    object cdsProdutoPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
    object cdsProdutoPERC_MARGEMLUCRO: TFloatField
      FieldName = 'PERC_MARGEMLUCRO'
    end
    object cdsProdutoPERC_DESC_MAX: TFloatField
      FieldName = 'PERC_DESC_MAX'
    end
    object cdsProdutoSPED_TIPO_ITEM: TStringField
      FieldName = 'SPED_TIPO_ITEM'
      Size = 2
    end
    object cdsProdutoID_CSTICMS_BRED: TIntegerField
      FieldName = 'ID_CSTICMS_BRED'
    end
    object cdsProdutoUSA_PRECO_COR: TStringField
      FieldName = 'USA_PRECO_COR'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 3
    end
    object cdsProdutoQTD_EMBALAGEM: TFloatField
      FieldName = 'QTD_EMBALAGEM'
    end
    object cdsProdutoCOD_BARRA2: TStringField
      FieldName = 'COD_BARRA2'
      Size = 14
    end
    object cdsProdutoUNIDADE2: TStringField
      FieldName = 'UNIDADE2'
      Size = 6
    end
    object cdsProdutoID_MARCA: TIntegerField
      FieldName = 'ID_MARCA'
    end
    object cdsProdutoID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 713
    Top = 406
  end
  object sdsUnidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT UNIDADE, CONVERSOR, NOME'#13#10'FROM UNIDADE'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 601
    Top = 451
  end
  object dspUnidade: TDataSetProvider
    DataSet = sdsUnidade
    Left = 633
    Top = 451
  end
  object cdsUnidade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UNIDADE'
    Params = <>
    ProviderName = 'dspUnidade'
    Left = 673
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
    Left = 713
    Top = 451
  end
  object sdsParametros: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select ID, ENDXMLNFE'#13#10',ENDPDFNFE'#13#10',SERIENORMAL'#13#10',SERIECONTINGENC' +
      'IA'#13#10',LOCALSERVIDORNFE'#13#10',EMAILRESPONSAVELSISTEMA'#13#10',NFEPRODUCAO'#13#10',' +
      'ANEXARDANFE'#13#10',VERSAONFE'#13#10',VERSAOEMISSAONFE'#13#10',TIPOLOGONFE'#13#10',APLIC' +
      'ARDESCONTONOICMS'#13#10',APLICARDESCONTONOIPI'#13#10',SOMARNOPROD_FRETE'#13#10',SO' +
      'MARNOPROD_OUTRASDESP'#13#10',SOMARNOPROD_SEGURO'#13#10',AJUSTELOGONFEAUTOMAT' +
      'ICO'#13#10',INFNUMNOTAMANUAL'#13#10',OPCAO_DTENTREGAPEDIDO'#13#10',OBS_SIMPLES'#13#10',I' +
      'MP_OBSSIMPLES'#13#10',IMP_REFERENCIANANOTA'#13#10',ENVIARNOTABENEF_NANFE'#13#10',E' +
      'SPECIE_NOTA'#13#10',MARCA_NOTA'#13#10',USA_VENDEDOR'#13#10',USA_CONSUMO'#13#10',ID_OPERA' +
      'CAO_BENEF_RET'#13#10',ID_OPERACAO_MAOOBRA'#13#10',ID_OPERACAO_TRIANGULAR'#13#10',U' +
      'SA_COD_BARRAS'#13#10',USA_ID_PRODUTO'#13#10',EMPRESA_VEICULO'#13#10',ID_CONTA_PADR' +
      'AO'#13#10',ID_TIPO_COBRANCA_PADRAO'#13#10',PERMITE_QTDMAIOR_PEDIDO'#13#10',QUITAR_' +
      'AVISTA_AUT'#13#10',ATUALIZAR_PRECO'#13#10',NOTA_ENTRADA_MOSTRAR_PROD'#13#10',DESTA' +
      'CAR_IMPOSTO_NOTA'#13#10',CONTROLAR_PEDIDO_LIBERACAO'#13#10',USA_GRADE'#13#10',MOST' +
      'RAR_CFOP_PEDIDO'#13#10',GRAVAR_INF_ADICIONAIS_NTE'#13#10',CALCULAR_PESO_CONS' +
      'UMO'#13#10',USA_TAMANHO_AGRUPADO_NFE'#13#10',EMPRESA_NAVALHA'#13#10',USA_CONTA_ORC' +
      'AMENTO'#13#10',TIPO_LEI_TRANSPARENCIA'#13#10',USA_FAIXA_SIMPLES'#13#10',BAIXA_ESTO' +
      'QUE_MP'#13#10',USA_LIMITE_CREDITO'#13#10',SENHA_CREDITO'#13#10',EMPRESA_INJETADO'#13#10 +
      ',USA_PEDIDO_CONTROLE_MOBRA'#13#10',IMP_NFE_REF_PROD'#13#10',USA_SPED'#13#10',ID_OB' +
      'S_LEI_SIMPLES'#13#10',EMPRESA_SUCATA'#13#10',USA_FCI'#13#10',ARREDONDAR_5'#13#10',LEI_TR' +
      'ANSPARENCIA_IMP_ITEM'#13#10',LEI_TRANSPARENCIA_TEXTO_ITEM'#13#10',LEI_TRANSP' +
      'ARENCIA_PERC_ADIC'#13#10',USA_VALE'#13#10',USA_PRODUTO_CLIENTE'#13#10',SOMAR_PIS_C' +
      'OFINS_IMP'#13#10',ALERTA_VALE'#13#10',PRODUTO_PRECO_POR_FINALIDADE'#13#10',USA_BOL' +
      'ETO_ACBR'#13#10',USA_DESONERACAO'#13#10',USA_ICMSOPERACAO_CST51'#13#10',ABRIR_NFEC' +
      'ONFIG'#13#10',CONTROLAR_NOTIFICACAO'#13#10',USA_PEDIDO_FUT'#13#10',ID_OPERACAO_PED' +
      '_FUT'#13#10',USA_SERVICO'#13#10',USA_COPIA_OS_NOTA'#13#10',IMP_TIPO_TRIBUTOS_ITENS' +
      #13#10',IMP_TIPO_TRIBUTOS'#13#10',IMP_PERC_TRIB_DADOS_ADIC'#13#10',IMP_PERC_TRIB_' +
      'ITENS'#13#10',INFORMAR_COR_MATERIAL'#13#10',INFORMAR_COR_PROD'#13#10',CONTROLAR_DU' +
      'P_PEDIDO'#13#10',OBS_SIMPLES2'#13#10',PERC_COMISSAO_PAGA_NOTA'#13#10',CALC_VOLUME_' +
      'EMB'#13#10',MOSTRAR_EMBALAGEM'#13#10',CONTROLAR_ESTOQUE_SAIDA'#13#10',SENHA_LIBERA' +
      '_ESTOQUE'#13#10',ALERTA_VLR_ATRASO'#13#10',SOMAR_SISCOMEX_IMP'#13#10',SOMAR_IPI_IM' +
      'P'#13#10',SOMAR_II_IMP'#13#10',SOMAR_SEGURO_IMP'#13#10',SOMAR_ADUANEIRA_IMP'#13#10',GRAV' +
      'AR_CONSUMO_NOTA'#13#10',EMPRESA_AMBIENTES'#13#10',UNIDADE_PECA'#13#10',USA_LOCAL_E' +
      'STOQUE'#13#10',FUSOHORARIO'#13#10',FUSOHORARIO_VERAO'#13#10',USA_APROVACAO_PED'#13#10',U' +
      'SA_LOTE_CONTROLE'#13#10',USA_PERC_ORGAO_PUBLICO'#13#10',USA_PERC_ORGAO_PUBLI' +
      'CO_IMP'#13#10',USA_APROVACAO_OC_FORN'#13#10',ID_LOCAL_ESTOQUE_NTE'#13#10',USA_ADIA' +
      'NTAMENTO_PEDIDO'#13#10',TIPO_COMISSAO_PROD'#13#10',SOMAR_BASE_ICMS_SISCOMEX'#13 +
      #10',CONTROLAR_SERIE_OPERACAO'#13#10',MOSTRAR_END_ENTREGA_DADOS_ADI'#13#10',MSG' +
      '_PADRAO_NOTA'#13#10',ALERTA_FRETE_DEST'#13#10',SENHA_PEDIDO'#13#10',USA_OBS_PEDIDO' +
      '_NOTA'#13#10',TIPO_ESTOQUE'#13#10',ID_OPERACAO_VENDA'#13#10'from parametros'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 601
    Top = 501
  end
  object dspParametros: TDataSetProvider
    DataSet = sdsParametros
    Left = 633
    Top = 501
  end
  object cdsParametros: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspParametros'
    Left = 673
    Top = 501
    object cdsParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsParametrosENDXMLNFE: TStringField
      FieldName = 'ENDXMLNFE'
      Size = 250
    end
    object cdsParametrosENDPDFNFE: TStringField
      FieldName = 'ENDPDFNFE'
      Size = 250
    end
    object cdsParametrosSERIENORMAL: TStringField
      FieldName = 'SERIENORMAL'
      Size = 3
    end
    object cdsParametrosSERIECONTINGENCIA: TStringField
      FieldName = 'SERIECONTINGENCIA'
      Size = 3
    end
    object cdsParametrosLOCALSERVIDORNFE: TStringField
      FieldName = 'LOCALSERVIDORNFE'
      Size = 100
    end
    object cdsParametrosEMAILRESPONSAVELSISTEMA: TStringField
      FieldName = 'EMAILRESPONSAVELSISTEMA'
      Size = 200
    end
    object cdsParametrosNFEPRODUCAO: TStringField
      FieldName = 'NFEPRODUCAO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosANEXARDANFE: TStringField
      FieldName = 'ANEXARDANFE'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosVERSAONFE: TStringField
      FieldName = 'VERSAONFE'
      Size = 10
    end
    object cdsParametrosVERSAOEMISSAONFE: TStringField
      FieldName = 'VERSAOEMISSAONFE'
      Size = 10
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
    object cdsParametrosOBS_SIMPLES: TStringField
      FieldName = 'OBS_SIMPLES'
      Size = 250
    end
    object cdsParametrosIMP_OBSSIMPLES: TStringField
      FieldName = 'IMP_OBSSIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosIMP_REFERENCIANANOTA: TStringField
      FieldName = 'IMP_REFERENCIANANOTA'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosENVIARNOTABENEF_NANFE: TStringField
      FieldName = 'ENVIARNOTABENEF_NANFE'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosESPECIE_NOTA: TStringField
      FieldName = 'ESPECIE_NOTA'
    end
    object cdsParametrosMARCA_NOTA: TStringField
      FieldName = 'MARCA_NOTA'
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
    object cdsParametrosID_OPERACAO_BENEF_RET: TIntegerField
      FieldName = 'ID_OPERACAO_BENEF_RET'
    end
    object cdsParametrosID_OPERACAO_MAOOBRA: TIntegerField
      FieldName = 'ID_OPERACAO_MAOOBRA'
    end
    object cdsParametrosID_OPERACAO_TRIANGULAR: TIntegerField
      FieldName = 'ID_OPERACAO_TRIANGULAR'
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
    object cdsParametrosEMPRESA_VEICULO: TStringField
      FieldName = 'EMPRESA_VEICULO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosID_CONTA_PADRAO: TIntegerField
      FieldName = 'ID_CONTA_PADRAO'
    end
    object cdsParametrosID_TIPO_COBRANCA_PADRAO: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA_PADRAO'
    end
    object cdsParametrosPERMITE_QTDMAIOR_PEDIDO: TStringField
      FieldName = 'PERMITE_QTDMAIOR_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosQUITAR_AVISTA_AUT: TStringField
      FieldName = 'QUITAR_AVISTA_AUT'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosATUALIZAR_PRECO: TStringField
      FieldName = 'ATUALIZAR_PRECO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosNOTA_ENTRADA_MOSTRAR_PROD: TStringField
      FieldName = 'NOTA_ENTRADA_MOSTRAR_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosDESTACAR_IMPOSTO_NOTA: TStringField
      FieldName = 'DESTACAR_IMPOSTO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosCONTROLAR_PEDIDO_LIBERACAO: TStringField
      FieldName = 'CONTROLAR_PEDIDO_LIBERACAO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_GRADE: TStringField
      FieldName = 'USA_GRADE'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosMOSTRAR_CFOP_PEDIDO: TStringField
      FieldName = 'MOSTRAR_CFOP_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosGRAVAR_INF_ADICIONAIS_NTE: TStringField
      FieldName = 'GRAVAR_INF_ADICIONAIS_NTE'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosCALCULAR_PESO_CONSUMO: TStringField
      FieldName = 'CALCULAR_PESO_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_TAMANHO_AGRUPADO_NFE: TStringField
      FieldName = 'USA_TAMANHO_AGRUPADO_NFE'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosEMPRESA_NAVALHA: TStringField
      FieldName = 'EMPRESA_NAVALHA'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_CONTA_ORCAMENTO: TStringField
      FieldName = 'USA_CONTA_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosTIPO_LEI_TRANSPARENCIA: TStringField
      FieldName = 'TIPO_LEI_TRANSPARENCIA'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_FAIXA_SIMPLES: TStringField
      FieldName = 'USA_FAIXA_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosBAIXA_ESTOQUE_MP: TStringField
      FieldName = 'BAIXA_ESTOQUE_MP'
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
    object cdsParametrosEMPRESA_INJETADO: TStringField
      FieldName = 'EMPRESA_INJETADO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_PEDIDO_CONTROLE_MOBRA: TStringField
      FieldName = 'USA_PEDIDO_CONTROLE_MOBRA'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosIMP_NFE_REF_PROD: TStringField
      FieldName = 'IMP_NFE_REF_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_SPED: TStringField
      FieldName = 'USA_SPED'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosID_OBS_LEI_SIMPLES: TIntegerField
      FieldName = 'ID_OBS_LEI_SIMPLES'
    end
    object cdsParametrosEMPRESA_SUCATA: TStringField
      FieldName = 'EMPRESA_SUCATA'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_FCI: TStringField
      FieldName = 'USA_FCI'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosARREDONDAR_5: TStringField
      FieldName = 'ARREDONDAR_5'
      Size = 1
    end
    object cdsParametrosLEI_TRANSPARENCIA_IMP_ITEM: TStringField
      FieldName = 'LEI_TRANSPARENCIA_IMP_ITEM'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosLEI_TRANSPARENCIA_TEXTO_ITEM: TStringField
      FieldName = 'LEI_TRANSPARENCIA_TEXTO_ITEM'
      Size = 150
    end
    object cdsParametrosLEI_TRANSPARENCIA_PERC_ADIC: TStringField
      FieldName = 'LEI_TRANSPARENCIA_PERC_ADIC'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_VALE: TStringField
      FieldName = 'USA_VALE'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_PRODUTO_CLIENTE: TStringField
      FieldName = 'USA_PRODUTO_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosSOMAR_PIS_COFINS_IMP: TStringField
      FieldName = 'SOMAR_PIS_COFINS_IMP'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosALERTA_VALE: TStringField
      FieldName = 'ALERTA_VALE'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosPRODUTO_PRECO_POR_FINALIDADE: TStringField
      FieldName = 'PRODUTO_PRECO_POR_FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_BOLETO_ACBR: TStringField
      FieldName = 'USA_BOLETO_ACBR'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_DESONERACAO: TStringField
      FieldName = 'USA_DESONERACAO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_ICMSOPERACAO_CST51: TStringField
      FieldName = 'USA_ICMSOPERACAO_CST51'
      FixedChar = True
      Size = 10
    end
    object cdsParametrosABRIR_NFECONFIG: TStringField
      FieldName = 'ABRIR_NFECONFIG'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosCONTROLAR_NOTIFICACAO: TStringField
      FieldName = 'CONTROLAR_NOTIFICACAO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_PEDIDO_FUT: TStringField
      FieldName = 'USA_PEDIDO_FUT'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosID_OPERACAO_PED_FUT: TIntegerField
      FieldName = 'ID_OPERACAO_PED_FUT'
    end
    object cdsParametrosUSA_SERVICO: TStringField
      FieldName = 'USA_SERVICO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_COPIA_OS_NOTA: TStringField
      FieldName = 'USA_COPIA_OS_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosIMP_TIPO_TRIBUTOS_ITENS: TStringField
      FieldName = 'IMP_TIPO_TRIBUTOS_ITENS'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosIMP_TIPO_TRIBUTOS: TStringField
      FieldName = 'IMP_TIPO_TRIBUTOS'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosIMP_PERC_TRIB_DADOS_ADIC: TStringField
      FieldName = 'IMP_PERC_TRIB_DADOS_ADIC'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosIMP_PERC_TRIB_ITENS: TStringField
      FieldName = 'IMP_PERC_TRIB_ITENS'
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
    object cdsParametrosOBS_SIMPLES2: TStringField
      FieldName = 'OBS_SIMPLES2'
      Size = 250
    end
    object cdsParametrosPERC_COMISSAO_PAGA_NOTA: TFloatField
      FieldName = 'PERC_COMISSAO_PAGA_NOTA'
    end
    object cdsParametrosCALC_VOLUME_EMB: TStringField
      FieldName = 'CALC_VOLUME_EMB'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosMOSTRAR_EMBALAGEM: TStringField
      FieldName = 'MOSTRAR_EMBALAGEM'
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
    object cdsParametrosALERTA_VLR_ATRASO: TStringField
      FieldName = 'ALERTA_VLR_ATRASO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosSOMAR_SISCOMEX_IMP: TStringField
      FieldName = 'SOMAR_SISCOMEX_IMP'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosSOMAR_IPI_IMP: TStringField
      FieldName = 'SOMAR_IPI_IMP'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosSOMAR_II_IMP: TStringField
      FieldName = 'SOMAR_II_IMP'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosSOMAR_SEGURO_IMP: TStringField
      FieldName = 'SOMAR_SEGURO_IMP'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosSOMAR_ADUANEIRA_IMP: TStringField
      FieldName = 'SOMAR_ADUANEIRA_IMP'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosGRAVAR_CONSUMO_NOTA: TStringField
      FieldName = 'GRAVAR_CONSUMO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosEMPRESA_AMBIENTES: TStringField
      FieldName = 'EMPRESA_AMBIENTES'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUNIDADE_PECA: TStringField
      FieldName = 'UNIDADE_PECA'
      Size = 6
    end
    object cdsParametrosUSA_LOCAL_ESTOQUE: TStringField
      FieldName = 'USA_LOCAL_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosFUSOHORARIO: TStringField
      FieldName = 'FUSOHORARIO'
      Size = 6
    end
    object cdsParametrosFUSOHORARIO_VERAO: TStringField
      FieldName = 'FUSOHORARIO_VERAO'
      Size = 6
    end
    object cdsParametrosUSA_APROVACAO_PED: TStringField
      FieldName = 'USA_APROVACAO_PED'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_LOTE_CONTROLE: TStringField
      FieldName = 'USA_LOTE_CONTROLE'
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
    object cdsParametrosUSA_APROVACAO_OC_FORN: TStringField
      FieldName = 'USA_APROVACAO_OC_FORN'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosID_LOCAL_ESTOQUE_NTE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE_NTE'
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
    object cdsParametrosSOMAR_BASE_ICMS_SISCOMEX: TStringField
      FieldName = 'SOMAR_BASE_ICMS_SISCOMEX'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosCONTROLAR_SERIE_OPERACAO: TStringField
      FieldName = 'CONTROLAR_SERIE_OPERACAO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosMOSTRAR_END_ENTREGA_DADOS_ADI: TStringField
      FieldName = 'MOSTRAR_END_ENTREGA_DADOS_ADI'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosMSG_PADRAO_NOTA: TMemoField
      FieldName = 'MSG_PADRAO_NOTA'
      BlobType = ftMemo
      Size = 1
    end
    object cdsParametrosALERTA_FRETE_DEST: TStringField
      FieldName = 'ALERTA_FRETE_DEST'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosSENHA_PEDIDO: TStringField
      FieldName = 'SENHA_PEDIDO'
      Size = 10
    end
    object cdsParametrosUSA_OBS_PEDIDO_NOTA: TStringField
      FieldName = 'USA_OBS_PEDIDO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosTIPO_ESTOQUE: TStringField
      FieldName = 'TIPO_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosID_OPERACAO_VENDA: TIntegerField
      FieldName = 'ID_OPERACAO_VENDA'
    end
  end
  object qTotalItem: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT SUM(  QTD * VLR_UNITARIO  ) VlrTotal, COUNT( GERAR_DUPLIC' +
        'ATA ) QTDITENS , GERAR_DUPLICATA'
      'FROM NOTAFISCAL_ITENS'
      'WHERE  (ID = :ID)'
      'GROUP BY GERAR_DUPLICATA'
      'ORDER BY GERAR_DUPLICATA'
      ''
      ' '
      ' '
      ' ')
    SQLConnection = dmDatabase.scoDados
    Left = 401
    Top = 179
    object qTotalItemVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
    end
    object qTotalItemQTDITENS: TIntegerField
      FieldName = 'QTDITENS'
      Required = True
    end
    object qTotalItemGERAR_DUPLICATA: TStringField
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
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
    Left = 817
    Top = 4
  end
  object dspTab_CSTICMS: TDataSetProvider
    DataSet = sdsTab_CSTICMS
    Left = 849
    Top = 4
  end
  object cdsTab_CSTICMS: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_CSTICMS'
    Left = 889
    Top = 4
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
    object cdsTab_CSTICMSCOD_DESONERACAO: TSmallintField
      FieldName = 'COD_DESONERACAO'
    end
    object cdsTab_CSTICMSPERC_DIFERIMENTO: TFloatField
      FieldName = 'PERC_DIFERIMENTO'
    end
    object cdsTab_CSTICMSCALCULA_FCP: TStringField
      FieldName = 'CALCULA_FCP'
      FixedChar = True
      Size = 1
    end
  end
  object dsTab_CSTICMS: TDataSource
    DataSet = cdsTab_CSTICMS
    Left = 929
    Top = 4
  end
  object sdsTab_CSTIPI: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CSTIPI'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 819
    Top = 48
  end
  object dspTab_CSTIPI: TDataSetProvider
    DataSet = sdsTab_CSTIPI
    Left = 851
    Top = 48
  end
  object cdsTab_CSTIPI: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_CSTIPI'
    Left = 891
    Top = 48
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
    Left = 931
    Top = 48
  end
  object sdsOrigem_Prod: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM ORIGEM_PROD'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 819
    Top = 96
  end
  object dspOrigem_Prod: TDataSetProvider
    DataSet = sdsOrigem_Prod
    Left = 851
    Top = 96
  end
  object cdsOrigem_Prod: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ORIGEM'
    Params = <>
    ProviderName = 'dspOrigem_Prod'
    Left = 891
    Top = 96
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
    Left = 931
    Top = 96
  end
  object sdsTab_NCM: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT N.ID, N.NCM, N.NOME, N.PERC_RED_STRIB, N.GERAR_ST,'#13#10'USAR_' +
      'MVA_UF_DESTINO, COD_CEST, n.unidade_trib, N.ID_CFOP, N.ID_PIS, N' +
      '.ID_COFINS,'#13#10'N.ID_CST_ICMS, N.PERC_PIS, N.PERC_COFINS, N.PERC_BA' +
      'SE_ICMS, N.ID_OBS_LEI,'#13#10'N.ID_CSTIPI, N.PERC_IPI, N.TIPO_ESCALA, ' +
      'N.CALCULA_FCP'#13#10'FROM TAB_NCM N'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 819
    Top = 144
  end
  object dspTab_NCM: TDataSetProvider
    DataSet = sdsTab_NCM
    Left = 851
    Top = 144
  end
  object cdsTab_NCM: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_NCM'
    Left = 891
    Top = 144
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
    object cdsTab_NCMCOD_CEST: TStringField
      FieldName = 'COD_CEST'
      Size = 7
    end
    object cdsTab_NCMUNIDADE_TRIB: TStringField
      FieldName = 'UNIDADE_TRIB'
      Size = 6
    end
    object cdsTab_NCMID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsTab_NCMID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object cdsTab_NCMID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object cdsTab_NCMID_CST_ICMS: TIntegerField
      FieldName = 'ID_CST_ICMS'
    end
    object cdsTab_NCMPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object cdsTab_NCMPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object cdsTab_NCMPERC_BASE_ICMS: TFloatField
      FieldName = 'PERC_BASE_ICMS'
    end
    object cdsTab_NCMID_OBS_LEI: TIntegerField
      FieldName = 'ID_OBS_LEI'
    end
    object cdsTab_NCMID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsTab_NCMPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsTab_NCMTIPO_ESCALA: TStringField
      FieldName = 'TIPO_ESCALA'
      FixedChar = True
      Size = 1
    end
    object cdsTab_NCMCALCULA_FCP: TStringField
      FieldName = 'CALCULA_FCP'
      FixedChar = True
      Size = 1
    end
  end
  object dsTab_NCM: TDataSource
    DataSet = cdsTab_NCM
    Left = 931
    Top = 144
  end
  object sdsTab_Pis: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_PIS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 819
    Top = 186
  end
  object dspTab_Pis: TDataSetProvider
    DataSet = sdsTab_Pis
    Left = 851
    Top = 186
  end
  object cdsTab_Pis: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_Pis'
    Left = 891
    Top = 186
    object cdsTab_PisID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_PisCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 2
    end
    object cdsTab_PisNOME: TStringField
      FieldName = 'NOME'
      Size = 150
    end
    object cdsTab_PisGERAR: TStringField
      FieldName = 'GERAR'
      FixedChar = True
      Size = 1
    end
  end
  object dsTab_Pis: TDataSource
    DataSet = cdsTab_Pis
    Left = 931
    Top = 186
  end
  object sdsTab_Cofins: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_COFINS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 819
    Top = 231
  end
  object dspTab_Cofins: TDataSetProvider
    DataSet = sdsTab_Cofins
    Left = 851
    Top = 232
  end
  object cdsTab_Cofins: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_Cofins'
    Left = 891
    Top = 232
    object cdsTab_CofinsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_CofinsCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 2
    end
    object cdsTab_CofinsNOME: TStringField
      FieldName = 'NOME'
      Size = 150
    end
    object cdsTab_CofinsGERAR: TStringField
      FieldName = 'GERAR'
      FixedChar = True
      Size = 1
    end
  end
  object dsTab_Cofins: TDataSource
    DataSet = cdsTab_Cofins
    Left = 931
    Top = 232
  end
  object sdsCondPgto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CONDPGTO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 819
    Top = 280
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
    object sdsCondPgtoPERC_ENTRADA: TFloatField
      FieldName = 'PERC_ENTRADA'
    end
    object sdsCondPgtoIMPOSTOS: TStringField
      FieldName = 'IMPOSTOS'
      FixedChar = True
      Size = 1
    end
    object sdsCondPgtoFRETE: TStringField
      FieldName = 'FRETE'
      FixedChar = True
      Size = 1
    end
  end
  object dspCondPgto: TDataSetProvider
    DataSet = sdsCondPgto
    Left = 851
    Top = 280
  end
  object cdsCondPgto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCondPgto'
    Left = 891
    Top = 280
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
    object cdsCondPgtoPERC_ENTRADA: TFloatField
      FieldName = 'PERC_ENTRADA'
    end
    object cdsCondPgtoIMPOSTOS: TStringField
      FieldName = 'IMPOSTOS'
      FixedChar = True
      Size = 1
    end
    object cdsCondPgtoFRETE: TStringField
      FieldName = 'FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsCondPgtosdsCondPgto_Dia: TDataSetField
      FieldName = 'sdsCondPgto_Dia'
    end
  end
  object dsCondPgto: TDataSource
    DataSet = cdsCondPgto
    Left = 931
    Top = 280
  end
  object dsCondPgto_Mestre: TDataSource
    DataSet = sdsCondPgto
    Left = 801
    Top = 321
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
    Left = 841
    Top = 340
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
    Left = 905
    Top = 340
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
    Left = 825
    Top = 446
  end
  object dspNFe_Email: TDataSetProvider
    DataSet = sdsNFe_Email
    Left = 857
    Top = 446
  end
  object cdsNFe_Email: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspNFe_Email'
    Left = 897
    Top = 446
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
    Left = 937
    Top = 446
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
    Left = 497
    Top = 180
    object qNatOperCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
  end
  object mCCe: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NumSequencial'
        DataType = ftInteger
      end
      item
        Name = 'Obs'
        DataType = ftWideString
        Size = 1000
      end
      item
        Name = 'NumProtocolo'
        DataType = ftString
        Size = 45
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 985
    Top = 613
    Data = {
      690000009619E0BD01000000180000000300000000000300000069000D4E756D
      53657175656E6369616C0400010000000000034F627302004A00000001000557
      4944544802000200D0070C4E756D50726F746F636F6C6F010049000000010005
      5749445448020002002D000000}
    object mCCeNumSequencial: TIntegerField
      FieldName = 'NumSequencial'
    end
    object mCCeObs: TWideStringField
      FieldName = 'Obs'
      Size = 1000
    end
    object mCCeNumProtocolo: TStringField
      FieldName = 'NumProtocolo'
      Size = 45
    end
  end
  object dsmCCe: TDataSource
    DataSet = mCCe
    Left = 1025
    Top = 613
  end
  object sdsNotaFiscal_CCe: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM NOTAFISCAL_NFE'#13#10'WHERE ID = :ID'#13#10'  AND TIPO = '#39'CCE' +
      #39#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 377
    Top = 294
    object sdsNotaFiscal_CCeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNotaFiscal_CCeITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsNotaFiscal_CCeTIPO: TStringField
      FieldName = 'TIPO'
      Size = 3
    end
    object sdsNotaFiscal_CCeITEMTIPO: TIntegerField
      FieldName = 'ITEMTIPO'
    end
    object sdsNotaFiscal_CCeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object sdsNotaFiscal_CCeMOTIVO: TMemoField
      FieldName = 'MOTIVO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsNotaFiscal_CCeNFEPROTOCOLO: TStringField
      FieldName = 'NFEPROTOCOLO'
      Size = 45
    end
    object sdsNotaFiscal_CCeNFERECIBO: TStringField
      FieldName = 'NFERECIBO'
      Size = 45
    end
    object sdsNotaFiscal_CCeDATAHORAAUT: TSQLTimeStampField
      FieldName = 'DATAHORAAUT'
    end
    object sdsNotaFiscal_CCeXML: TMemoField
      FieldName = 'XML'
      BlobType = ftMemo
      Size = 1
    end
    object sdsNotaFiscal_CCeDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object sdsNotaFiscal_CCeHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
  end
  object cdsNotaFiscal_CCe: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspNotaFiscal_CCe'
    Left = 449
    Top = 294
    object cdsNotaFiscal_CCeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscal_CCeITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsNotaFiscal_CCeTIPO: TStringField
      FieldName = 'TIPO'
      Size = 3
    end
    object cdsNotaFiscal_CCeITEMTIPO: TIntegerField
      FieldName = 'ITEMTIPO'
    end
    object cdsNotaFiscal_CCeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object cdsNotaFiscal_CCeMOTIVO: TMemoField
      FieldName = 'MOTIVO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsNotaFiscal_CCeNFEPROTOCOLO: TStringField
      FieldName = 'NFEPROTOCOLO'
      Size = 45
    end
    object cdsNotaFiscal_CCeNFERECIBO: TStringField
      FieldName = 'NFERECIBO'
      Size = 45
    end
    object cdsNotaFiscal_CCeDATAHORAAUT: TSQLTimeStampField
      FieldName = 'DATAHORAAUT'
    end
    object cdsNotaFiscal_CCeXML: TMemoField
      FieldName = 'XML'
      BlobType = ftMemo
      Size = 1
    end
    object cdsNotaFiscal_CCeDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object cdsNotaFiscal_CCeHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
  end
  object dsNotaFical_CCe: TDataSource
    DataSet = cdsNotaFiscal_CCe
    Left = 489
    Top = 294
  end
  object dspNotaFiscal_CCe: TDataSetProvider
    DataSet = sdsNotaFiscal_CCe
    Left = 409
    Top = 293
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
    Left = 449
    Top = 179
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
    Left = 985
    Top = 320
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
    Left = 825
    Top = 492
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
    object sdsDuplicataPERC_COMISSAO_PAGAR_NOTA: TFloatField
      FieldName = 'PERC_COMISSAO_PAGAR_NOTA'
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
    object sdsDuplicataDTAPROVADO: TDateField
      FieldName = 'DTAPROVADO'
    end
  end
  object dspDuplicata: TDataSetProvider
    DataSet = sdsDuplicata
    Left = 865
    Top = 492
  end
  object cdsDuplicata: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspDuplicata'
    BeforePost = cdsDuplicataBeforePost
    OnNewRecord = cdsDuplicataNewRecord
    OnReconcileError = cdsDuplicataReconcileError
    Left = 905
    Top = 492
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
    object cdsDuplicataPERC_COMISSAO_PAGAR_NOTA: TFloatField
      FieldName = 'PERC_COMISSAO_PAGAR_NOTA'
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
    object cdsDuplicataDTAPROVADO: TDateField
      FieldName = 'DTAPROVADO'
    end
  end
  object dsDuplicata_Mestre: TDataSource
    DataSet = sdsDuplicata
    Left = 825
    Top = 532
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
    Left = 897
    Top = 548
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
    OnReconcileError = cdsDuplicata_HistReconcileError
    Left = 969
    Top = 548
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
    Left = 553
    Top = 227
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
  object sdsOperacao_Nota: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM OPERACAO_NOTA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 601
    Top = 549
  end
  object dspOperacao_Nota: TDataSetProvider
    DataSet = sdsOperacao_Nota
    Left = 633
    Top = 549
  end
  object cdsOperacao_Nota: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspOperacao_Nota'
    Left = 673
    Top = 549
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
    object cdsOperacao_NotaNATUREZA_NOTA: TStringField
      FieldName = 'NATUREZA_NOTA'
      Size = 60
    end
    object cdsOperacao_NotaSERIE_NFE: TStringField
      FieldName = 'SERIE_NFE'
      Size = 3
    end
    object cdsOperacao_NotaMOSTRAR_CLI_TRIANG2: TStringField
      FieldName = 'MOSTRAR_CLI_TRIANG2'
      FixedChar = True
      Size = 1
    end
  end
  object dsOperacao_Nota: TDataSource
    DataSet = cdsOperacao_Nota
    Left = 713
    Top = 549
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
    Left = 1145
    Top = 144
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
  object sdsNotaEntrada: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT NT.SERIE, NT.NUMNOTA, NT.ID_CLIENTE, NT.ID, NI.ID_PRODUTO' +
      ', NI.QTD, NI.QTDRESTANTE,'#13#10'NI.QTDDEVOLVIDA, NI.VLR_UNITARIO, NI.' +
      'ID_CSTIPI, NI.ID_CSTICMS, NI.PERC_ICMS, NI.PERC_IPI, NI.NOME_PRO' +
      'DUTO, NI.REFERENCIA,'#13#10'CFOP.CODCFOP, CFOP.BENEFICIAMENTO, NT.DTEM' +
      'ISSAO, NT.DTSAIDAENTRADA, CLI.NOME NOMECLIENTE,'#13#10'NI.UNIDADE, NI.' +
      'QTD_ADEVOLVER, NI.ID_NCM, NT.FILIAL, NI.ITEM,'#13#10'NT.NFECHAVEACESSO' +
      ', CLI.CNPJ_CPF, NI.QTD_NOTAATUAL, NI.OBS_COMPLEMENTAR, NT.ID_CLI' +
      'ENTETRIANG,'#13#10'TRI.NOME NOME_CLIENTETRIANG, NI.ID_CFOP, NI.NUM_LOT' +
      'E_CONTROLE, NI.PERC_TRIBICMS,'#13#10'NI.ID_COR, COMB.NOME NOME_COR'#13#10'FR' +
      'OM NOTAFISCAL NT'#13#10'INNER JOIN NOTAFISCAL_ITENS NI'#13#10'ON NT.ID = NI.' +
      'ID'#13#10'INNER JOIN TAB_CFOP CFOP'#13#10'ON NI.ID_CFOP = CFOP.ID'#13#10'INNER JOI' +
      'N PESSOA CLI'#13#10'ON NT.ID_CLIENTE = CLI.CODIGO'#13#10'LEFT JOIN PESSOA TR' +
      'I'#13#10'ON NT.ID_CLIENTETRIANG = TRI.CODIGO'#13#10'LEFT JOIN COMBINACAO COM' +
      'B'#13#10'ON NI.ID_COR = COMB.ID'#13#10'WHERE NT.TIPO_REG = '#39'NTE'#39#13#10'  AND NI.Q' +
      'TDRESTANTE > 0'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 377
    Top = 341
  end
  object dspNotaEntrada: TDataSetProvider
    DataSet = sdsNotaEntrada
    Left = 409
    Top = 341
  end
  object cdsNotaEntrada: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspNotaEntrada'
    Left = 449
    Top = 333
    object cdsNotaEntradaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsNotaEntradaNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsNotaEntradaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsNotaEntradaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaEntradaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsNotaEntradaQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '###,##0.0000#'
    end
    object cdsNotaEntradaQTDRESTANTE: TFloatField
      FieldName = 'QTDRESTANTE'
      DisplayFormat = '###,##0.0000#'
    end
    object cdsNotaEntradaQTDDEVOLVIDA: TFloatField
      FieldName = 'QTDDEVOLVIDA'
      DisplayFormat = '###,##0.0000#'
    end
    object cdsNotaEntradaVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '###,##0.000##'
    end
    object cdsNotaEntradaID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsNotaEntradaID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object cdsNotaEntradaPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsNotaEntradaPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsNotaEntradaCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsNotaEntradaBENEFICIAMENTO: TStringField
      FieldName = 'BENEFICIAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaEntradaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsNotaEntradaDTSAIDAENTRADA: TDateField
      FieldName = 'DTSAIDAENTRADA'
    end
    object cdsNotaEntradaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 60
    end
    object cdsNotaEntradaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsNotaEntradaQTD_ADEVOLVER: TFloatField
      FieldName = 'QTD_ADEVOLVER'
      DisplayFormat = '###,##0.0000'
    end
    object cdsNotaEntradaID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsNotaEntradaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsNotaEntradaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsNotaEntradaNFECHAVEACESSO: TStringField
      FieldName = 'NFECHAVEACESSO'
      Size = 44
    end
    object cdsNotaEntradaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsNotaEntradaNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsNotaEntradaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsNotaEntradaQTD_NOTAATUAL: TFloatField
      FieldName = 'QTD_NOTAATUAL'
      DisplayFormat = '###,##0.0000#'
    end
    object cdsNotaEntradaOBS_COMPLEMENTAR: TStringField
      FieldName = 'OBS_COMPLEMENTAR'
      Size = 250
    end
    object cdsNotaEntradaID_CLIENTETRIANG: TIntegerField
      FieldName = 'ID_CLIENTETRIANG'
    end
    object cdsNotaEntradaNOME_CLIENTETRIANG: TStringField
      FieldName = 'NOME_CLIENTETRIANG'
      Size = 60
    end
    object cdsNotaEntradaID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsNotaEntradaNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object cdsNotaEntradaPERC_TRIBICMS: TFloatField
      FieldName = 'PERC_TRIBICMS'
    end
    object cdsNotaEntradaID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsNotaEntradaNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 60
    end
  end
  object dsNotaEntrada: TDataSource
    DataSet = cdsNotaEntrada
    Left = 489
    Top = 341
  end
  object sdsFornecedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME, CNPJ_CPF'#13#10'FROM PESSOA'#13#10'WHERE INATIVO = '#39'N'#39#13 +
      #10'      AND TP_FORNECEDOR = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 833
    Top = 636
  end
  object dspFornecedor: TDataSetProvider
    DataSet = sdsFornecedor
    Left = 865
    Top = 636
  end
  object cdsFornecedor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFornecedor'
    Left = 905
    Top = 636
    object cdsFornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsFornecedorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsFornecedorCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
  end
  object dsFornecedor: TDataSource
    DataSet = cdsFornecedor
    Left = 945
    Top = 636
  end
  object sdsPedido: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PE.ID, PE.PEDIDO_CLIENTE, PE.id_cliente, PE.DTEMISSAO, PI' +
      '.id_produto, PI.id_cfop, PE.NUM_PEDIDO,'#13#10'PI.vlr_unitario, PI.qtd' +
      ', PI.qtd_faturado, PI.qtd_restante, PI.qtd_afaturar, PI.ID_NCM I' +
      'D_NCM_PED,'#13#10'PI.REFERENCIA, PI.ITEM_CLIENTE,'#13#10'CLI.nome NOMECLIENT' +
      'E, PRO.REFERENCIA REFERENCIA_PRO, PRO.NOME NOMEPRODUTO, CLI.cnpj' +
      '_cpf,'#13#10'PI.dtentrega, PI.item, PI.VLR_DESCONTO, PRO.ID_NCM, PI.UN' +
      'IDADE, PI.PERC_IPI, PI.OBS_COMPLEMENTAR,'#13#10'PI.NUMOS, PE.TIPO_FRET' +
      'E, PE.ID_CONDPGTO, PE.IMP_OC_NOTA, PI.ID_VARIACAO, PI.QTD_LIBERA' +
      'DA,'#13#10'PI.QTD_PRODUZIDA, PE.TIPO_REG, PI.TAMANHO, PE.ID_TRANSPORTA' +
      'DORA, PE.NUM_DOC,'#13#10'PI.NUM_TALAO, PI.VLR_DESCONTORATEIO, PI.QTD_P' +
      'ECA, PI.QTD_FUT, PI.ID_COR, COMB.nome NOME_COR,'#13#10'PI.ID_MOVESTOQU' +
      'E, PI.TIPO_ACESSORIO, PI.QTD_LANCAR_ESTOQUE,'#13#10'GR.nome NOME_GRUPO' +
      ', PE.NOME_CONSUMIDOR, PE.VLR_ADIANTAMENTO, PI.PERC_COMISSAO PERC' +
      '_COMISSAO_ITEM,'#13#10'PE.PERC_COMISSAO, PI.NUM_LOTE_CONTROLE,'#13#10'PE.ID_' +
      'TIPO_COBRANCA, PE.ID_CONTA, PE.LOCALENTREGA, PRO.LANCA_LOTE_CONT' +
      'ROLE, PI.COPIAR_SELECIONADO, PE.NOTIFICACAO, PE.ID_VENDEDOR, PE.' +
      'VLR_ENTRADA,'#13#10'PE.GERA_ENTRADA_NO_PEDIDO, PI.ITEM_ORIGINAL, PRO.i' +
      'd_grade, PE.VLR_FRETE, PE.OBS_NOTA,'#13#10'PE.id_cliente_triangular, P' +
      'E.perc_icms_frete, PI.nomeproduto NOME_PRODUTO_PED, PE.NGR, PE.I' +
      'D_TAB_PRECO, PI.TIPO_OS,'#13#10'PF.desc_suframa_pis_cofins, PF.desc_su' +
      'frama_icms'#13#10'FROM PEDIDO PE'#13#10'INNER JOIN PEDIDO_ITEM PI ON (PE.ID ' +
      '= PI.ID)'#13#10'INNER JOIN PESSOA CLI ON (PE.ID_CLIENTE = CLI.CODIGO)'#13 +
      #10'INNER JOIN PRODUTO PRO ON (PI.ID_PRODUTO = PRO.ID)'#13#10'LEFT JOIN C' +
      'OMBINACAO COMB ON (PI.ID_COR = COMB.ID)'#13#10'LEFT JOIN GRUPO GR'#13#10'lef' +
      't join pessoa_fiscal PF'#13#10'ON PE.ID_CLIENTE = PF.codigo'#13#10'ON PRO.id' +
      '_grupo = GR.id'#13#10'WHERE PI.qtd_restante > 0'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 377
    Top = 389
  end
  object dspPedido: TDataSetProvider
    DataSet = sdsPedido
    Left = 409
    Top = 389
  end
  object cdsPedido: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspPedido'
    OnCalcFields = cdsPedidoCalcFields
    Left = 449
    Top = 389
    object cdsPedidoID: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Pedido'
      FieldName = 'ID'
      Required = True
    end
    object cdsPedidoPEDIDO_CLIENTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Pedido Cliente'
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsPedidoITEM: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPedidoNOMECLIENTE: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOMECLIENTE'
      Size = 60
    end
    object cdsPedidoDTEMISSAO: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DTEMISSAO'
    end
    object cdsPedidoNOMEPRODUTO: TStringField
      DisplayLabel = 'Nome Produto'
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsPedidoQTD_FATURADO: TFloatField
      DisplayLabel = 'Qtd. Faturado'
      FieldName = 'QTD_FATURADO'
      DisplayFormat = '0.0000##'
    end
    object cdsPedidoQTD_RESTANTE: TFloatField
      DisplayLabel = 'Qtd. Pendente'
      FieldName = 'QTD_RESTANTE'
      DisplayFormat = '0.0000##'
    end
    object cdsPedidoQTD_AFATURAR: TFloatField
      DisplayLabel = 'Qtd. A Faturar'
      FieldName = 'QTD_AFATURAR'
      DisplayFormat = '0.0000##'
    end
    object cdsPedidoVLR_UNITARIO: TFloatField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      FieldName = 'VLR_UNITARIO'
    end
    object cdsPedidoQTD: TFloatField
      DisplayLabel = 'Qtd. Pedido'
      FieldName = 'QTD'
      DisplayFormat = '0.0000##'
    end
    object cdsPedidoID_PRODUTO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Produto'
      FieldName = 'ID_PRODUTO'
    end
    object cdsPedidoVLR_DESCONTO: TFloatField
      DisplayLabel = 'Vlr. Desconto'
      FieldName = 'VLR_DESCONTO'
    end
    object cdsPedidoID_CLIENTE: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Cliente'
      FieldName = 'ID_CLIENTE'
    end
    object cdsPedidoCNPJ_CPF: TStringField
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsPedidoDTENTREGA: TDateField
      DisplayLabel = 'Data Entrega'
      FieldName = 'DTENTREGA'
    end
    object cdsPedidoID_CFOP: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID CFOP'
      FieldName = 'ID_CFOP'
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
    object cdsPedidoNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPedidoID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
    object cdsPedidoQTD_LIBERADA: TFloatField
      FieldName = 'QTD_LIBERADA'
      DisplayFormat = '0.0000##'
    end
    object cdsPedidoQTD_PRODUZIDA: TFloatField
      FieldName = 'QTD_PRODUZIDA'
      DisplayFormat = '0.0000##'
    end
    object cdsPedidoclQtd_Restante: TFloatField
      DisplayLabel = 'Qtd. Pendente'
      FieldKind = fkCalculated
      FieldName = 'clQtd_Restante'
      DisplayFormat = '0.0000##'
      Calculated = True
    end
    object cdsPedidoclQtd_NaoLiberada: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clQtd_NaoLiberada'
      DisplayFormat = '0.0000##'
      Calculated = True
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
    object cdsPedidoID_NCM_PED: TIntegerField
      FieldName = 'ID_NCM_PED'
    end
    object cdsPedidoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsPedidoREFERENCIA_PRO: TStringField
      FieldName = 'REFERENCIA_PRO'
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
    object cdsPedidoITEM_CLIENTE: TIntegerField
      FieldName = 'ITEM_CLIENTE'
    end
    object cdsPedidoQTD_PECA: TIntegerField
      FieldName = 'QTD_PECA'
    end
    object cdsPedidoQTD_FUT: TFloatField
      FieldName = 'QTD_FUT'
    end
    object cdsPedidoID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object cdsPedidoNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 60
    end
    object cdsPedidoID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object cdsPedidoTIPO_ACESSORIO: TStringField
      FieldName = 'TIPO_ACESSORIO'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      Size = 40
    end
    object cdsPedidoNOME_CONSUMIDOR: TStringField
      FieldName = 'NOME_CONSUMIDOR'
      Size = 30
    end
    object cdsPedidoQTD_LANCAR_ESTOQUE: TFloatField
      FieldName = 'QTD_LANCAR_ESTOQUE'
    end
    object cdsPedidoVLR_ADIANTAMENTO: TFloatField
      FieldName = 'VLR_ADIANTAMENTO'
      DisplayFormat = '0.00'
    end
    object cdsPedidoPERC_COMISSAO_ITEM: TFloatField
      FieldName = 'PERC_COMISSAO_ITEM'
      DisplayFormat = '0.00'
    end
    object cdsPedidoPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
      DisplayFormat = '0.00'
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
    object cdsPedidoLOCALENTREGA: TStringField
      FieldName = 'LOCALENTREGA'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoLANCA_LOTE_CONTROLE: TStringField
      FieldName = 'LANCA_LOTE_CONTROLE'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoCOPIAR_SELECIONADO: TStringField
      FieldName = 'COPIAR_SELECIONADO'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoNOTIFICACAO: TIntegerField
      FieldName = 'NOTIFICACAO'
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
    object cdsPedidoID_GRADE: TIntegerField
      FieldName = 'ID_GRADE'
    end
    object cdsPedidoVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object cdsPedidoOBS_NOTA: TStringField
      FieldName = 'OBS_NOTA'
      Size = 250
    end
    object cdsPedidoID_CLIENTE_TRIANGULAR: TIntegerField
      FieldName = 'ID_CLIENTE_TRIANGULAR'
    end
    object cdsPedidoPERC_ICMS_FRETE: TFloatField
      FieldName = 'PERC_ICMS_FRETE'
    end
    object cdsPedidoNOME_PRODUTO_PED: TStringField
      FieldName = 'NOME_PRODUTO_PED'
      Size = 100
    end
    object cdsPedidoNGR: TStringField
      FieldName = 'NGR'
      Size = 1
    end
    object cdsPedidoID_TAB_PRECO: TIntegerField
      FieldName = 'ID_TAB_PRECO'
    end
    object cdsPedidoTIPO_OS: TStringField
      FieldName = 'TIPO_OS'
      Size = 2
    end
    object cdsPedidoExiste_PreFat: TStringField
      FieldKind = fkCalculated
      FieldName = 'Existe_PreFat'
      Size = 1
      Calculated = True
    end
    object cdsPedidoDESC_SUFRAMA_PIS_COFINS: TStringField
      FieldName = 'DESC_SUFRAMA_PIS_COFINS'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoDESC_SUFRAMA_ICMS: TStringField
      FieldName = 'DESC_SUFRAMA_ICMS'
      FixedChar = True
      Size = 1
    end
  end
  object dsPedido: TDataSource
    DataSet = cdsPedido
    Left = 489
    Top = 389
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
    Left = 1065
    Top = 239
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
  end
  object sdsCFOP_Variacao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CFOP_VARIACAO'#13#10'WHERE ID = :ID'#13#10
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
    Left = 377
    Top = 552
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
    object sdsCFOP_VariacaoTIPO_EMPRESA: TStringField
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object sdsCFOP_VariacaoTIPO_CLIENTE: TStringField
      FieldName = 'TIPO_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsCFOP_VariacaoUF_CLIENTE: TStringField
      FieldName = 'UF_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsCFOP_VariacaoFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object sdsCFOP_VariacaoCONTROLAR_ICMS: TStringField
      FieldName = 'CONTROLAR_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsCFOP_VariacaoCONTROLAR_REDUCAO: TStringField
      FieldName = 'CONTROLAR_REDUCAO'
      FixedChar = True
      Size = 1
    end
    object sdsCFOP_VariacaoCONTROLAR_IPI: TStringField
      FieldName = 'CONTROLAR_IPI'
      FixedChar = True
      Size = 1
    end
    object sdsCFOP_VariacaoCONTROLAR_SUBSTICMS: TStringField
      FieldName = 'CONTROLAR_SUBSTICMS'
      FixedChar = True
      Size = 1
    end
    object sdsCFOP_VariacaoCONTROLAR_DIFERIMENTO: TStringField
      FieldName = 'CONTROLAR_DIFERIMENTO'
      FixedChar = True
      Size = 1
    end
    object sdsCFOP_VariacaoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object sdsCFOP_VariacaoPESSOA_CLIENTE: TStringField
      FieldName = 'PESSOA_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsCFOP_VariacaoLEI: TMemoField
      FieldName = 'LEI'
      BlobType = ftMemo
      Size = 1
    end
    object sdsCFOP_VariacaoPERC_TRIBUTO: TFloatField
      FieldName = 'PERC_TRIBUTO'
    end
    object sdsCFOP_VariacaoPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object sdsCFOP_VariacaoPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object sdsCFOP_VariacaoTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object sdsCFOP_VariacaoTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object sdsCFOP_VariacaoID_ENQIPI: TIntegerField
      FieldName = 'ID_ENQIPI'
    end
    object sdsCFOP_VariacaoCALCULAR_ST: TStringField
      FieldName = 'CALCULAR_ST'
      FixedChar = True
      Size = 1
    end
  end
  object cdsCFOP_Variacao: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCFOPsdsCFOP_Variacao
    IndexFieldNames = 'NOME'
    Params = <>
    Left = 449
    Top = 552
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
    object cdsCFOP_VariacaoTIPO_EMPRESA: TStringField
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOP_VariacaoTIPO_CLIENTE: TStringField
      FieldName = 'TIPO_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsCFOP_VariacaoUF_CLIENTE: TStringField
      FieldName = 'UF_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsCFOP_VariacaoFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object cdsCFOP_VariacaoCONTROLAR_ICMS: TStringField
      FieldName = 'CONTROLAR_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsCFOP_VariacaoCONTROLAR_REDUCAO: TStringField
      FieldName = 'CONTROLAR_REDUCAO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOP_VariacaoCONTROLAR_IPI: TStringField
      FieldName = 'CONTROLAR_IPI'
      FixedChar = True
      Size = 1
    end
    object cdsCFOP_VariacaoCONTROLAR_SUBSTICMS: TStringField
      FieldName = 'CONTROLAR_SUBSTICMS'
      FixedChar = True
      Size = 1
    end
    object cdsCFOP_VariacaoCONTROLAR_DIFERIMENTO: TStringField
      FieldName = 'CONTROLAR_DIFERIMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOP_VariacaoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsCFOP_VariacaoPESSOA_CLIENTE: TStringField
      FieldName = 'PESSOA_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsCFOP_VariacaoLEI: TMemoField
      FieldName = 'LEI'
      BlobType = ftMemo
      Size = 1
    end
    object cdsCFOP_VariacaoPERC_TRIBUTO: TFloatField
      FieldName = 'PERC_TRIBUTO'
    end
    object cdsCFOP_VariacaoPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object cdsCFOP_VariacaoPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object cdsCFOP_VariacaoTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object cdsCFOP_VariacaoTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object cdsCFOP_VariacaoID_ENQIPI: TIntegerField
      FieldName = 'ID_ENQIPI'
    end
    object cdsCFOP_VariacaoCALCULAR_ST: TStringField
      FieldName = 'CALCULAR_ST'
      FixedChar = True
      Size = 1
    end
  end
  object dsCFOP_Variacao: TDataSource
    DataSet = cdsCFOP_Variacao
    Left = 489
    Top = 552
  end
  object dsCFOP_Mestre: TDataSource
    DataSet = sdsCFOP
    Left = 353
    Top = 520
  end
  object mMaterialConsumo: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Material'
        DataType = ftInteger
      end
      item
        Name = 'NomeMaterial'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'QtdProduto'
        DataType = ftFloat
      end
      item
        Name = 'QtdConsumo'
        DataType = ftFloat
      end
      item
        Name = 'QtdJaInformada'
        DataType = ftFloat
      end
      item
        Name = 'QtdAutomatica'
        DataType = ftFloat
      end
      item
        Name = 'QtdAutomatica2'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'NomeMaterial'
    Params = <>
    StoreDefs = True
    Left = 625
    Top = 592
    Data = {
      CF0000009619E0BD010000001800000007000000000003000000CF000B49445F
      4D6174657269616C04000100000000000C4E6F6D654D6174657269616C010049
      00000001000557494454480200020064000A51746450726F6475746F08000400
      000000000A517464436F6E73756D6F08000400000000000E5174644A61496E66
      6F726D61646108000400000000000D5174644175746F6D617469636108000400
      000000000E5174644175746F6D617469636132080004000000000001000D4445
      4641554C545F4F524445520200820000000000}
    object mMaterialConsumoID_Material: TIntegerField
      FieldName = 'ID_Material'
    end
    object mMaterialConsumoNomeMaterial: TStringField
      FieldName = 'NomeMaterial'
      Size = 100
    end
    object mMaterialConsumoQtdProduto: TFloatField
      FieldName = 'QtdProduto'
    end
    object mMaterialConsumoQtdConsumo: TFloatField
      FieldName = 'QtdConsumo'
    end
    object mMaterialConsumoQtdJaInformada: TFloatField
      FieldName = 'QtdJaInformada'
    end
    object mMaterialConsumoQtdAutomatica: TFloatField
      FieldName = 'QtdAutomatica'
    end
    object mMaterialConsumoQtdAutomatica2: TFloatField
      FieldName = 'QtdAutomatica2'
    end
  end
  object dsmMaterialConsumo: TDataSource
    DataSet = mMaterialConsumo
    Left = 681
    Top = 592
  end
  object qProduto_Consumo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT PC.*, PRO.NOME NOMEMATERIAL'
      'FROM PRODUTO_CONSUMO PC'
      'INNER JOIN PRODUTO PRO'
      'ON PC.ID_MATERIAL = PRO.ID'
      'WHERE PC.ID = :ID'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 1169
    Top = 191
    object qProduto_ConsumoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProduto_ConsumoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qProduto_ConsumoID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object qProduto_ConsumoQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object qProduto_ConsumoQTD_UNIDADE: TFloatField
      FieldName = 'QTD_UNIDADE'
    end
    object qProduto_ConsumoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object qProduto_ConsumoNOMEMATERIAL: TStringField
      FieldName = 'NOMEMATERIAL'
      Size = 100
    end
    object qProduto_ConsumoTIPO_CONSUMO: TStringField
      FieldName = 'TIPO_CONSUMO'
      FixedChar = True
      Size = 1
    end
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
      end
      item
        DataType = ftInteger
        Name = 'ID_COR'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT PFOR.*'
      'FROM PRODUTO_FORN PFOR'
      'WHERE ID = :ID'
      '  AND ID_FORNECEDOR = :ID_FORNECEDOR'
      '  AND ID_COR = :ID_COR'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 985
    Top = 237
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
    object qProduto_FornNUM_FCI: TStringField
      FieldName = 'NUM_FCI'
      Size = 40
    end
  end
  object sdsCidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CIDADE'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 827
    Top = 592
  end
  object dspCidade: TDataSetProvider
    DataSet = sdsCidade
    Left = 867
    Top = 592
  end
  object cdsCidade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCidade'
    Left = 907
    Top = 592
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
  end
  object dsCidade: TDataSource
    DataSet = cdsCidade
    Left = 947
    Top = 592
  end
  object sdsNotaFiscal_Imp_Ad: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM NOTAFISCAL_IMP_AD'#13#10'WHERE ID = :ID'#13#10'   AND ITEM = ' +
      ':ITEM'#13#10'  AND ITEM_IMP = :ITEM_IMP'
    DataSource = dsNotaFiscal_Mestre_Imp
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
        Name = 'ITEM_IMP'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 51
    Top = 230
    object sdsNotaFiscal_Imp_AdID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_Imp_AdITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_Imp_AdITEM_IMP: TIntegerField
      FieldName = 'ITEM_IMP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_Imp_AdITEM_AD: TIntegerField
      FieldName = 'ITEM_AD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_Imp_AdNUMADICAO: TIntegerField
      FieldName = 'NUMADICAO'
    end
    object sdsNotaFiscal_Imp_AdCODFABRICANTE: TStringField
      FieldName = 'CODFABRICANTE'
      Size = 60
    end
    object sdsNotaFiscal_Imp_AdVLR_DESCONTO_DI: TFloatField
      FieldName = 'VLR_DESCONTO_DI'
    end
    object sdsNotaFiscal_Imp_AdNUM_SEQ: TIntegerField
      FieldName = 'NUM_SEQ'
    end
    object sdsNotaFiscal_Imp_AdNUM_DRAWBACK: TStringField
      FieldName = 'NUM_DRAWBACK'
      Size = 11
    end
  end
  object mSelecionado: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 1193
    Top = 556
    Data = {
      3E0000009619E0BD0100000018000000020000000000030000003E000B49445F
      4D6174657269616C0400010000000000075174644E6F74610800040000000000
      0000}
    object mSelecionadoID_Material: TIntegerField
      FieldName = 'ID_Material'
    end
    object mSelecionadoQtdNota: TFloatField
      FieldName = 'QtdNota'
    end
  end
  object mAgrupaMat: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Agrupa'
        DataType = ftInteger
      end
      item
        Name = 'ID_Material'
        DataType = ftInteger
      end
      item
        Name = 'Unidade'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'Vlr_Unitario'
        DataType = ftFloat
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'NCM'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'ID_NCM'
        DataType = ftInteger
      end
      item
        Name = 'Perc_IPI'
        DataType = ftFloat
      end
      item
        Name = 'Nome_Material'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    IndexFieldNames = 'ID_Agrupa'
    Params = <>
    StoreDefs = True
    Left = 753
    Top = 120
    Data = {
      F60000009619E0BD01000000180000000A000000000003000000F6000949445F
      41677275706104000100000000000B49445F4D6174657269616C040001000000
      000007556E696461646501004900000001000557494454480200020006000C56
      6C725F556E69746172696F080004000000000003517464080004000000000003
      4E434D01004900000001000557494454480200020008000649445F4E434D0400
      01000000000008506572635F49504908000400000000000D4E6F6D655F4D6174
      657269616C01004900000001000557494454480200020064000A526566657265
      6E63696101004900000001000557494454480200020014000000}
    object mAgrupaMatID_Agrupa: TIntegerField
      FieldName = 'ID_Agrupa'
    end
    object mAgrupaMatID_Material: TIntegerField
      FieldName = 'ID_Material'
    end
    object mAgrupaMatUnidade: TStringField
      FieldName = 'Unidade'
      Size = 6
    end
    object mAgrupaMatVlr_Unitario: TFloatField
      FieldName = 'Vlr_Unitario'
    end
    object mAgrupaMatQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mAgrupaMatNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object mAgrupaMatID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object mAgrupaMatPerc_IPI: TFloatField
      FieldName = 'Perc_IPI'
    end
    object mAgrupaMatNome_Material: TStringField
      FieldName = 'Nome_Material'
      Size = 100
    end
    object mAgrupaMatReferencia: TStringField
      FieldName = 'Referencia'
    end
  end
  object mAgrupaMat_Nota: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Agrupa'
        DataType = ftInteger
      end
      item
        Name = 'ID_NTE'
        DataType = ftInteger
      end
      item
        Name = 'Item_NTE'
        DataType = ftInteger
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'NumNota_NTE'
        DataType = ftInteger
      end
      item
        Name = 'Serie_NTE'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'DtEmissao_NTE'
        DataType = ftDate
      end
      item
        Name = 'ID_Fornecedor'
        DataType = ftInteger
      end
      item
        Name = 'Filial'
        DataType = ftInteger
      end
      item
        Name = 'NFeChaveAcesso'
        DataType = ftString
        Size = 45
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'ID_Agrupa;ID_NTE'
    MasterFields = 'ID_Agrupa'
    MasterSource = dsmAgrupaMat
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    Left = 993
    Top = 56
    Data = {
      FE0000009619E0BD01000000180000000A000000000003000000FE000949445F
      41677275706104000100000000000649445F4E54450400010000000000084974
      656D5F4E544504000100000000000351746408000400000000000B4E756D4E6F
      74615F4E544504000100000000000953657269655F4E54450100490000000100
      0557494454480200020003000D4474456D697373616F5F4E5445040006000000
      00000D49445F466F726E656365646F7204000100000000000646696C69616C04
      000100000000000E4E4665436861766541636573736F01004900000001000557
      49445448020002002D0001000D44454641554C545F4F52444552020082000000
      0000}
    object mAgrupaMat_NotaID_Agrupa: TIntegerField
      FieldName = 'ID_Agrupa'
    end
    object mAgrupaMat_NotaID_NTE: TIntegerField
      FieldName = 'ID_NTE'
    end
    object mAgrupaMat_NotaItem_NTE: TIntegerField
      FieldName = 'Item_NTE'
    end
    object mAgrupaMat_NotaQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mAgrupaMat_NotaNumNota_NTE: TIntegerField
      FieldName = 'NumNota_NTE'
    end
    object mAgrupaMat_NotaSerie_NTE: TStringField
      FieldName = 'Serie_NTE'
      Size = 3
    end
    object mAgrupaMat_NotaDtEmissao_NTE: TDateField
      FieldName = 'DtEmissao_NTE'
    end
    object mAgrupaMat_NotaID_Fornecedor: TIntegerField
      FieldName = 'ID_Fornecedor'
    end
    object mAgrupaMat_NotaFilial: TIntegerField
      FieldName = 'Filial'
    end
    object mAgrupaMat_NotaNFeChaveAcesso: TStringField
      FieldName = 'NFeChaveAcesso'
      Size = 45
    end
  end
  object dsmAgrupaMat: TDataSource
    DataSet = mAgrupaMat
    Left = 777
    Top = 120
  end
  object mSelecionado_Nota: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_NTE'
        DataType = ftInteger
      end
      item
        Name = 'ITEM_NTE'
        DataType = ftInteger
      end
      item
        Name = 'QTD'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1113
    Top = 556
    Data = {
      460000009619E0BD01000000180000000300000000000300000046000649445F
      4E54450400010000000000084954454D5F4E5445040001000000000003515444
      08000400000000000000}
    object mSelecionado_NotaID_NTE: TIntegerField
      FieldName = 'ID_NTE'
    end
    object mSelecionado_NotaITEM_NTE: TIntegerField
      FieldName = 'ITEM_NTE'
    end
    object mSelecionado_NotaQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object qProximaItem_NFe: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT MAX(ITEM) ITEM'
      'FROM NOTAFISCAL_NFE'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 1009
    Top = 429
    object qProximaItem_NFeITEM: TIntegerField
      FieldName = 'ITEM'
    end
  end
  object sdsNotaFiscal_Eventos: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NOTAFISCAL_NFE'#13#10'WHERE ID = :ID'#13#10#13#10
    DataSource = dsNotaFiscal_Consulta_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 377
    Top = 65
    object sdsNotaFiscal_EventosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNotaFiscal_EventosITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsNotaFiscal_EventosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 3
    end
    object sdsNotaFiscal_EventosITEMTIPO: TIntegerField
      FieldName = 'ITEMTIPO'
    end
    object sdsNotaFiscal_EventosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object sdsNotaFiscal_EventosMOTIVO: TMemoField
      FieldName = 'MOTIVO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsNotaFiscal_EventosNFEPROTOCOLO: TStringField
      FieldName = 'NFEPROTOCOLO'
      Size = 45
    end
    object sdsNotaFiscal_EventosNFERECIBO: TStringField
      FieldName = 'NFERECIBO'
      Size = 45
    end
    object sdsNotaFiscal_EventosDATAHORAAUT: TSQLTimeStampField
      FieldName = 'DATAHORAAUT'
    end
    object sdsNotaFiscal_EventosXML: TMemoField
      FieldName = 'XML'
      BlobType = ftMemo
      Size = 1
    end
    object sdsNotaFiscal_EventosDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object sdsNotaFiscal_EventosHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
  end
  object cdsNotaFiscal_Eventos: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNotaFiscal_ConsultasdsNotaFiscal_Eventos
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 449
    Top = 65
    object cdsNotaFiscal_EventosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscal_EventosITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      Required = True
    end
    object cdsNotaFiscal_EventosTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Size = 3
    end
    object cdsNotaFiscal_EventosITEMTIPO: TIntegerField
      DisplayLabel = 'Item Tipo'
      FieldName = 'ITEMTIPO'
    end
    object cdsNotaFiscal_EventosDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object cdsNotaFiscal_EventosMOTIVO: TMemoField
      DisplayLabel = 'Motivo'
      FieldName = 'MOTIVO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsNotaFiscal_EventosNFEPROTOCOLO: TStringField
      DisplayLabel = 'Protocolo'
      FieldName = 'NFEPROTOCOLO'
      Size = 45
    end
    object cdsNotaFiscal_EventosNFERECIBO: TStringField
      DisplayLabel = 'Recibo'
      FieldName = 'NFERECIBO'
      Size = 45
    end
    object cdsNotaFiscal_EventosDATAHORAAUT: TSQLTimeStampField
      DisplayLabel = 'Data Hora Autoriza'#231#227'o'
      FieldName = 'DATAHORAAUT'
    end
    object cdsNotaFiscal_EventosXML: TMemoField
      FieldName = 'XML'
      BlobType = ftMemo
      Size = 1
    end
    object cdsNotaFiscal_EventosDTCADASTRO: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'DTCADASTRO'
    end
    object cdsNotaFiscal_EventosHRCADASTRO: TTimeField
      DisplayLabel = 'Hora Cadastro'
      FieldName = 'HRCADASTRO'
    end
  end
  object dsNotaFiscal_Eventos: TDataSource
    DataSet = cdsNotaFiscal_Eventos
    Left = 409
    Top = 65
  end
  object dsNotaFiscal_Consulta_Mestre: TDataSource
    DataSet = sdsNotaFiscal_Consulta
    Left = 545
    Top = 17
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
    Left = 537
    Top = 72
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
        Name = 'Vlr_Adiantamento'
        DataType = ftFloat
      end
      item
        Name = 'OBS_Nota'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'Vlr_Entrada'
        DataType = ftFloat
      end
      item
        Name = 'Num_OC'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'ID_Pedido'
    Params = <>
    StoreDefs = True
    OnNewRecord = mPedidoAuxNewRecord
    Left = 553
    Top = 184
    Data = {
      A70000009619E0BD010000001800000005000000000003000000A7000949445F
      50656469646F040001000000000010566C725F416469616E74616D656E746F08
      00040000000000084F42535F4E6F746101004900000001000557494454480200
      0200FA000B566C725F456E74726164610800040000000000064E756D5F4F4301
      0049000000010005574944544802000200140001000D44454641554C545F4F52
      4445520200820000000000}
    object mPedidoAuxID_Pedido: TIntegerField
      FieldName = 'ID_Pedido'
    end
    object mPedidoAuxVlr_Adiantamento: TFloatField
      FieldName = 'Vlr_Adiantamento'
    end
    object mPedidoAuxOBS_Nota: TStringField
      FieldName = 'OBS_Nota'
      Size = 250
    end
    object mPedidoAuxVlr_Entrada: TFloatField
      FieldName = 'Vlr_Entrada'
    end
    object mPedidoAuxNum_OC: TStringField
      FieldName = 'Num_OC'
    end
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
    Left = 1065
    Top = 144
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
    object qPessoa_FiscalID_ENQIPI_SUFRAMA: TIntegerField
      FieldName = 'ID_ENQIPI_SUFRAMA'
    end
    object qPessoa_FiscalID_ENQIPI: TIntegerField
      FieldName = 'ID_ENQIPI'
    end
    object qPessoa_FiscalID_CST_ICMS: TIntegerField
      FieldName = 'ID_CST_ICMS'
    end
    object qPessoa_FiscalID_CST_ICMS_SUFRAMA_ST: TIntegerField
      FieldName = 'ID_CST_ICMS_SUFRAMA_ST'
    end
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
    Left = 1073
    Top = 99
  end
  object dspPessoa_Contato: TDataSetProvider
    DataSet = sdsPessoa_Contato
    Left = 1105
    Top = 99
  end
  object cdsPessoa_Contato: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoa_Contato'
    Left = 1145
    Top = 99
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
    Left = 1081
    Top = 3
  end
  object dspContaOrcamento: TDataSetProvider
    DataSet = sdsContaOrcamento
    Left = 1113
    Top = 3
  end
  object cdsContaOrcamento: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'DESCRICAO'
    Params = <>
    ProviderName = 'dspContaOrcamento'
    Left = 1153
    Top = 3
    object cdsContaOrcamentoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsContaOrcamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsContaOrcamentoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsContaOrcamentoCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsContaOrcamentoNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      Size = 60
    end
  end
  object dsContaOrcamento: TDataSource
    DataSet = cdsContaOrcamento
    Left = 1193
    Top = 3
  end
  object sdsCentroCusto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM CENTROCUSTO'#13#10'WHERE TIPO = '#39'A'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 1073
    Top = 51
  end
  object dspCentroCusto: TDataSetProvider
    DataSet = sdsCentroCusto
    Left = 1105
    Top = 51
  end
  object cdsCentroCusto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'DESCRICAO'
    Params = <>
    ProviderName = 'dspCentroCusto'
    Left = 1145
    Top = 51
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
  end
  object dsCentroCusto: TDataSource
    DataSet = cdsCentroCusto
    Left = 1185
    Top = 51
  end
  object qVerificaNEDevol: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT N.QTDDEVOLVIDA, N.ID'
      'FROM NOTAFISCAL_ITENS N'
      'WHERE N.ID = :ID'
      ' AND N.QTDDEVOLVIDA > 0')
    SQLConnection = dmDatabase.scoDados
    Left = 1145
    Top = 239
    object qVerificaNEDevolQTDDEVOLVIDA: TFloatField
      FieldName = 'QTDDEVOLVIDA'
    end
    object qVerificaNEDevolID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object qVerificaDupl: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_NOTA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID'
      'FROM DUPLICATA'
      'WHERE ID_NOTA = :ID_NOTA'
      '   AND VLR_PAGO > 0')
    SQLConnection = dmDatabase.scoDados
    Left = 1105
    Top = 239
    object qVerificaDuplID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
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
    Left = 1105
    Top = 144
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
    Left = 1080
    Top = 191
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
    object qRegra_CFOPPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object qRegra_CFOPPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object qRegra_CFOPTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object qRegra_CFOPTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object qRegra_CFOPID_OBS_LEI: TIntegerField
      FieldName = 'ID_OBS_LEI'
    end
    object qRegra_CFOPID_ENQIPI: TIntegerField
      FieldName = 'ID_ENQIPI'
    end
    object qRegra_CFOPTIPO_CONSUMIDOR: TSmallintField
      FieldName = 'TIPO_CONSUMIDOR'
    end
    object qRegra_CFOPTIPO_CONTRIBUINTE: TSmallintField
      FieldName = 'TIPO_CONTRIBUINTE'
    end
    object qRegra_CFOPCALCULAR_ST: TStringField
      FieldName = 'CALCULAR_ST'
      FixedChar = True
      Size = 1
    end
  end
  object dsVale: TDataSource
    DataSet = cdsVale
    Left = 1177
    Top = 284
  end
  object cdsVale: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVale'
    OnCalcFields = cdsPedidoCalcFields
    Left = 1137
    Top = 284
    object cdsValeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsValeNUM_VALE: TIntegerField
      FieldName = 'NUM_VALE'
    end
    object cdsValeDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsValeID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsValeFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsValeITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsValeITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object cdsValeID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsValeTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsValeQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 5
    end
    object cdsValeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsValeVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsValeVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsValeID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsValeFATURADO: TStringField
      FieldName = 'FATURADO'
      FixedChar = True
      Size = 1
    end
    object cdsValeNUMERO_OS: TStringField
      FieldName = 'NUMERO_OS'
      Size = 30
    end
    object cdsValeNUMERO_OC: TStringField
      FieldName = 'NUMERO_OC'
    end
    object cdsValeNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsValeCOMPLEMENTO_PROD: TStringField
      FieldName = 'COMPLEMENTO_PROD'
      Size = 80
    end
    object cdsValeQTD_PECA: TIntegerField
      FieldName = 'QTD_PECA'
    end
    object cdsValePERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsValeNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsValeREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsValeID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object cdsValeVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsValeQTD_LANCAR_ESTOQUE: TFloatField
      FieldName = 'QTD_LANCAR_ESTOQUE'
    end
  end
  object dspVale: TDataSetProvider
    DataSet = sdsVale
    Left = 1105
    Top = 284
  end
  object sdsVale: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select V.ID, V.NUM_VALE, V.DTEMISSAO, V.ID_CLIENTE, V.FILIAL, VI' +
      '.ITEM, VI.ITEM_PEDIDO, VI.ID_PRODUTO, VI.TAMANHO,'#13#10'       VI.QTD' +
      ', VI.UNIDADE, VI.VLR_UNITARIO, VI.VLR_TOTAL, VI.ID_PEDIDO, VI.FA' +
      'TURADO, VI.NUMERO_OS, VI.NUMERO_OC,'#13#10'       VI.NUM_PEDIDO, VI.CO' +
      'MPLEMENTO_PROD, VI.QTD_PECA, VI.PERC_IPI, P.NOME NOME_PRODUTO, P' +
      '.REFERENCIA,'#13#10'       VI.ID_MOVESTOQUE, VI.VLR_DESCONTO, VI.QTD_L' +
      'ANCAR_ESTOQUE'#13#10'from VALE V'#13#10'inner join VALE_ITENS VI on V.ID = V' +
      'I.ID'#13#10'inner join PRODUTO P on VI.ID_PRODUTO = P.ID'#13#10'where VI.FAT' +
      'URADO = '#39'N'#39'   '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 1065
    Top = 284
  end
  object sdsProduto_Consumo_Tam: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT SUM(QTD_CONSUMO) QTD_CONSUMO, TAMANHO'#13#10'FROM PRODUTO_CONSU' +
      'MO_TAM'#13#10'WHERE ID = :ID'#13#10'   AND TAMANHO = :TAMANHO'#13#10'   AND ITEM =' +
      ' :ITEM'#13#10'GROUP BY TAMANHO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TAMANHO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 1075
    Top = 424
  end
  object dspProduto_Consumo_Tam: TDataSetProvider
    DataSet = sdsProduto_Consumo_Tam
    Left = 1107
    Top = 424
  end
  object cdsProduto_Consumo_Tam: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto_Consumo_Tam'
    Left = 1147
    Top = 424
    object cdsProduto_Consumo_TamQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
    object cdsProduto_Consumo_TamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
  end
  object sdsProduto_Consumo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PC.*, MAT.referencia, MAT.num_ms'#13#10'FROM PRODUTO_CONSUMO PC' +
      #13#10'INNER JOIN PRODUTO MAT'#13#10'ON PC.id_material = MAT.id'#13#10'WHERE PC.I' +
      'D = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 1075
    Top = 376
  end
  object dspProduto_Consumo: TDataSetProvider
    DataSet = sdsProduto_Consumo
    Left = 1107
    Top = 376
  end
  object cdsProduto_Consumo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto_Consumo'
    Left = 1147
    Top = 376
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
    object cdsProduto_ConsumoQTD_UNIDADE: TFloatField
      FieldName = 'QTD_UNIDADE'
    end
    object cdsProduto_ConsumoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsProduto_ConsumoID_POSICAO: TIntegerField
      FieldName = 'ID_POSICAO'
    end
    object cdsProduto_ConsumoTIPO_CONSUMO: TStringField
      FieldName = 'TIPO_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_ConsumoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsProduto_ConsumoNUM_MS: TStringField
      FieldName = 'NUM_MS'
    end
  end
  object mAux_Imp: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'ITEM'
        DataType = ftInteger
      end
      item
        Name = 'ITEM_IMP'
        DataType = ftInteger
      end
      item
        Name = 'NUMDI'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'DTREGISTRO'
        DataType = ftDate
      end
      item
        Name = 'DTDESEMBARACO'
        DataType = ftDate
      end
      item
        Name = 'CODEXPORTADOR'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'NUMFATURA'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'LOCAL_DESEMBARACO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'TIPO_VIA_TRANSORTE'
        DataType = ftInteger
      end
      item
        Name = 'VLR_AFRMM'
        DataType = ftFloat
      end
      item
        Name = 'TIPO_INTERMEDIO'
        DataType = ftInteger
      end
      item
        Name = 'CNPJ'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'UF_TERCEIRO'
        DataType = ftString
        Size = 2
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1080
    Top = 468
    Data = {
      810100009619E0BD01000000180000000F000000000003000000810102494404
      00010000000000044954454D0400010000000000084954454D5F494D50040001
      0000000000054E554D44490100490000000100055749445448020002000C000A
      4454524547495354524F04000600000000000D4454444553454D42415241434F
      04000600000000000D434F444558504F525441444F5201004900000001000557
      49445448020002003C0002554601004900000001000557494454480200020002
      00094E554D4641545552410100490000000100055749445448020002000F0011
      4C4F43414C5F444553454D42415241434F010049000000010005574944544802
      0002003C00125449504F5F5649415F5452414E534F5254450400010000000000
      09564C525F4146524D4D08000400000000000F5449504F5F494E5445524D4544
      494F040001000000000004434E504A0100490000000100055749445448020002
      000E000B55465F544552434549524F0100490000000100055749445448020002
      0002000000}
    object mAux_ImpID: TIntegerField
      FieldName = 'ID'
    end
    object mAux_ImpITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object mAux_ImpITEM_IMP: TIntegerField
      FieldName = 'ITEM_IMP'
    end
    object mAux_ImpNUMDI: TStringField
      FieldName = 'NUMDI'
      Size = 12
    end
    object mAux_ImpDTREGISTRO: TDateField
      FieldName = 'DTREGISTRO'
    end
    object mAux_ImpDTDESEMBARACO: TDateField
      FieldName = 'DTDESEMBARACO'
    end
    object mAux_ImpCODEXPORTADOR: TStringField
      FieldName = 'CODEXPORTADOR'
      Size = 60
    end
    object mAux_ImpUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object mAux_ImpNUMFATURA: TStringField
      FieldName = 'NUMFATURA'
      Size = 15
    end
    object mAux_ImpLOCAL_DESEMBARACO: TStringField
      FieldName = 'LOCAL_DESEMBARACO'
      Size = 60
    end
    object mAux_ImpTIPO_VIA_TRANSORTE: TIntegerField
      FieldName = 'TIPO_VIA_TRANSORTE'
    end
    object mAux_ImpVLR_AFRMM: TFloatField
      FieldName = 'VLR_AFRMM'
    end
    object mAux_ImpTIPO_INTERMEDIO: TIntegerField
      FieldName = 'TIPO_INTERMEDIO'
    end
    object mAux_ImpCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object mAux_ImpUF_TERCEIRO: TStringField
      FieldName = 'UF_TERCEIRO'
      Size = 2
    end
  end
  object mAux_Imp_Ad: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'ITEM'
        DataType = ftInteger
      end
      item
        Name = 'ITEM_IMP'
        DataType = ftInteger
      end
      item
        Name = 'ITEM_AD'
        DataType = ftInteger
      end
      item
        Name = 'NUMADICAO'
        DataType = ftInteger
      end
      item
        Name = 'CODFABRICANTE'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'VLR_DESCONTO_DI'
        DataType = ftFloat
      end
      item
        Name = 'NUM_SEQ'
        DataType = ftInteger
      end
      item
        Name = 'NUM_DRAWBACK'
        DataType = ftString
        Size = 11
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1128
    Top = 468
    Data = {
      D00000009619E0BD010000001800000009000000000003000000D00002494404
      00010000000000044954454D0400010000000000084954454D5F494D50040001
      0000000000074954454D5F41440400010000000000094E554D41444943414F04
      000100000000000D434F44464142524943414E54450100490000000100055749
      445448020002003C000F564C525F444553434F4E544F5F444908000400000000
      00074E554D5F53455104000100000000000C4E554D5F445241574241434B0100
      490000000100055749445448020002000B000000}
    object mAux_Imp_AdID: TIntegerField
      FieldName = 'ID'
    end
    object mAux_Imp_AdITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object mAux_Imp_AdITEM_IMP: TIntegerField
      FieldName = 'ITEM_IMP'
    end
    object mAux_Imp_AdITEM_AD: TIntegerField
      FieldName = 'ITEM_AD'
    end
    object mAux_Imp_AdNUMADICAO: TIntegerField
      FieldName = 'NUMADICAO'
    end
    object mAux_Imp_AdCODFABRICANTE: TStringField
      FieldName = 'CODFABRICANTE'
      Size = 60
    end
    object mAux_Imp_AdVLR_DESCONTO_DI: TFloatField
      FieldName = 'VLR_DESCONTO_DI'
    end
    object mAux_Imp_AdNUM_SEQ: TIntegerField
      FieldName = 'NUM_SEQ'
    end
    object mAux_Imp_AdNUM_DRAWBACK: TStringField
      FieldName = 'NUM_DRAWBACK'
      Size = 11
    end
  end
  object qIBPT: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT I.perc_nacional, I.perc_importacao, N.ncm, N.ID,'
      'I.perc_estadual, I.perc_municipal, I.fonte, I.versao, I.CHAVE'
      'FROM TAB_IBPT I'
      'LEFT JOIN TAB_NCM N'
      'ON I.CODIGO = N.NCM')
    SQLConnection = dmDatabase.scoDados
    Left = 1144
    Top = 516
    object qIBPTPERC_NACIONAL: TFloatField
      FieldName = 'PERC_NACIONAL'
    end
    object qIBPTPERC_IMPORTACAO: TFloatField
      FieldName = 'PERC_IMPORTACAO'
    end
    object qIBPTNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object qIBPTID: TIntegerField
      FieldName = 'ID'
      Required = True
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
  object qPeso_Tam: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TAMANHO'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      
        'SELECT SUM(P.PESO_LIQUIDO) PESO_LIQUIDO, SUM(P.PESO_BRUTO) PESO_' +
        'BRUTO'
      'FROM PRODUTO_TAM P'
      'WHERE P.ID = :ID'
      '     AND P.TAMANHO = :TAMANHO'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 1096
    Top = 516
    object qPeso_TamPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
      DisplayFormat = '0.000000'
    end
    object qPeso_TamPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
      DisplayFormat = '0.000000'
    end
  end
  object mMObra_Ped: TClientDataSet
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
        Name = 'Nome_Produto'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'ID_CFOP'
        DataType = ftInteger
      end
      item
        Name = 'CODCFOP'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Pedido_Cliente'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Tamanho'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'Num_Pedido;ID_Produto;Tamanho'
    Params = <>
    StoreDefs = True
    Left = 1080
    Top = 332
    Data = {
      1D0100009619E0BD01000000180000000B0000000000030000001D010949445F
      50656469646F04000100000000000A4E756D5F50656469646F04000100000000
      000B4974656D5F50656469646F04000100000000000A49445F50726F6475746F
      04000100000000000A5265666572656E63696101004900000001000557494454
      480200020014000C4E6F6D655F50726F6475746F010049000000010005574944
      54480200020028000351746408000400000000000749445F43464F5004000100
      0000000007434F4443464F500100490000000100055749445448020002000500
      0E50656469646F5F436C69656E74650100490000000100055749445448020002
      001E000754616D616E686F0100490000000100055749445448020002000A0000
      00}
    object mMObra_PedID_Pedido: TIntegerField
      FieldName = 'ID_Pedido'
    end
    object mMObra_PedNum_Pedido: TIntegerField
      FieldName = 'Num_Pedido'
    end
    object mMObra_PedItem_Pedido: TIntegerField
      FieldName = 'Item_Pedido'
    end
    object mMObra_PedID_Produto: TIntegerField
      FieldName = 'ID_Produto'
    end
    object mMObra_PedReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mMObra_PedNome_Produto: TStringField
      FieldName = 'Nome_Produto'
      Size = 40
    end
    object mMObra_PedQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mMObra_PedID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object mMObra_PedCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object mMObra_PedPedido_Cliente: TStringField
      FieldName = 'Pedido_Cliente'
      Size = 30
    end
    object mMObra_PedTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
  end
  object dsmMObra_Ped: TDataSource
    DataSet = mMObra_Ped
    Left = 1112
    Top = 332
  end
  object mMObra_Nota: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Nota'
        DataType = ftInteger
      end
      item
        Name = 'Item_Nota'
        DataType = ftInteger
      end
      item
        Name = 'Num_Nota'
        DataType = ftInteger
      end
      item
        Name = 'ID_Material'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Material'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'ID_CFOP'
        DataType = ftInteger
      end
      item
        Name = 'CODCFOP'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'ID_CFOP_Ped'
        DataType = ftInteger
      end
      item
        Name = 'CODCFOP_Ped'
        DataType = ftString
        Size = 4
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1176
    Top = 332
    Data = {
      EF0000009619E0BD01000000180000000A000000000003000000EF000749445F
      4E6F74610400010000000000094974656D5F4E6F74610400010000000000084E
      756D5F4E6F746104000100000000000B49445F4D6174657269616C0400010000
      0000000D4E6F6D655F4D6174657269616C010049000000010005574944544802
      0002003C000351746408000400000000000749445F43464F5004000100000000
      0007434F4443464F5001004900000001000557494454480200020005000B4944
      5F43464F505F50656404000100000000000B434F4443464F505F506564010049
      00000001000557494454480200020004000000}
    object mMObra_NotaID_Nota: TIntegerField
      FieldName = 'ID_Nota'
    end
    object mMObra_NotaItem_Nota: TIntegerField
      FieldName = 'Item_Nota'
    end
    object mMObra_NotaNum_Nota: TIntegerField
      FieldName = 'Num_Nota'
    end
    object mMObra_NotaID_Material: TIntegerField
      FieldName = 'ID_Material'
    end
    object mMObra_NotaNome_Material: TStringField
      FieldName = 'Nome_Material'
      Size = 60
    end
    object mMObra_NotaQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mMObra_NotaID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object mMObra_NotaCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object mMObra_NotaID_CFOP_Ped: TIntegerField
      FieldName = 'ID_CFOP_Ped'
    end
    object mMObra_NotaCODCFOP_Ped: TStringField
      FieldName = 'CODCFOP_Ped'
      Size = 4
    end
  end
  object dsmMObra_Nota: TDataSource
    DataSet = mMObra_Nota
    Left = 1208
    Top = 332
  end
  object qDePara_CFOP: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'COD_CFOP_ENT'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT DE.*'
      'FROM DEPARA_CFOP DE'
      'WHERE DE.TIPO_PRODUTO = '#39'I'#39
      '  AND DE.COD_CFOP_ENT = :COD_CFOP_ENT')
    SQLConnection = dmDatabase.scoDados
    Left = 1192
    Top = 516
    object qDePara_CFOPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qDePara_CFOPID_CFOP_ENT: TIntegerField
      FieldName = 'ID_CFOP_ENT'
      Required = True
    end
    object qDePara_CFOPTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qDePara_CFOPID_CFOP_GRA: TIntegerField
      FieldName = 'ID_CFOP_GRA'
      Required = True
    end
    object qDePara_CFOPCOD_CFOP_ENT: TStringField
      FieldName = 'COD_CFOP_ENT'
      Size = 4
    end
    object qDePara_CFOPCOD_CFOP_GRA: TStringField
      FieldName = 'COD_CFOP_GRA'
      Size = 4
    end
    object qDePara_CFOPID_CFOP_PED: TIntegerField
      FieldName = 'ID_CFOP_PED'
    end
    object qDePara_CFOPCOD_CFOP_PED: TStringField
      FieldName = 'COD_CFOP_PED'
      Size = 4
    end
  end
  object qProduto_Consumo_Tam: TSQLQuery
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
      'SELECT *'
      'FROM PRODUTO_CONSUMO_TAM'
      'WHERE ID = :ID'
      '    AND ITEM = :ITEM'
      '   AND TAMANHO = :TAMANHO '
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 1193
    Top = 239
    object qProduto_Consumo_TamID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProduto_Consumo_TamITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qProduto_Consumo_TamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
    object qProduto_Consumo_TamQTD_CONSUMO: TFloatField
      FieldName = 'QTD_CONSUMO'
    end
  end
  object sdsNotaFiscal_Imp_Aux: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NOTAFISCAL_IMP_AUX'#13#10'WHERE ID = :ID'
    DataSource = dsNotaFiscal_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 67
    Top = 559
    object sdsNotaFiscal_Imp_AuxID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_Imp_AuxITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_Imp_AuxNUM_DI: TStringField
      FieldName = 'NUM_DI'
      Size = 12
    end
    object sdsNotaFiscal_Imp_AuxDTREGISTRO: TDateField
      FieldName = 'DTREGISTRO'
    end
    object sdsNotaFiscal_Imp_AuxDTDESEMBARACO: TDateField
      FieldName = 'DTDESEMBARACO'
    end
    object sdsNotaFiscal_Imp_AuxCOD_EXPORTADOR: TStringField
      FieldName = 'COD_EXPORTADOR'
      Size = 60
    end
    object sdsNotaFiscal_Imp_AuxLOCAL_DESEMBARACO: TStringField
      FieldName = 'LOCAL_DESEMBARACO'
      Size = 60
    end
    object sdsNotaFiscal_Imp_AuxUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sdsNotaFiscal_Imp_AuxNUM_FATURA: TStringField
      FieldName = 'NUM_FATURA'
      Size = 15
    end
    object sdsNotaFiscal_Imp_AuxNUM_ADICAO: TIntegerField
      FieldName = 'NUM_ADICAO'
    end
    object sdsNotaFiscal_Imp_AuxNUM_SEQ: TIntegerField
      FieldName = 'NUM_SEQ'
    end
    object sdsNotaFiscal_Imp_AuxCOD_FABRICANTE: TStringField
      FieldName = 'COD_FABRICANTE'
      Size = 60
    end
    object sdsNotaFiscal_Imp_AuxVLR_DESCONTO_DI: TFloatField
      FieldName = 'VLR_DESCONTO_DI'
    end
    object sdsNotaFiscal_Imp_AuxVLR_AFRMM: TFloatField
      FieldName = 'VLR_AFRMM'
    end
    object sdsNotaFiscal_Imp_AuxTIPO_INTERMEDIO: TSmallintField
      FieldName = 'TIPO_INTERMEDIO'
    end
    object sdsNotaFiscal_Imp_AuxUF_TERCEIRO: TStringField
      FieldName = 'UF_TERCEIRO'
      Size = 2
    end
    object sdsNotaFiscal_Imp_AuxCNPJ_TERCEIRO: TStringField
      FieldName = 'CNPJ_TERCEIRO'
      Size = 18
    end
    object sdsNotaFiscal_Imp_AuxNUM_DRAWBACK: TStringField
      FieldName = 'NUM_DRAWBACK'
      Size = 11
    end
    object sdsNotaFiscal_Imp_AuxTIPO_VIA_TRANSPORTE: TSmallintField
      FieldName = 'TIPO_VIA_TRANSPORTE'
    end
  end
  object cdsNotaFiscal_Imp_Aux: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNotaFiscalsdsNotaFiscal_Imp_Aux
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    BeforeInsert = cdsNotaFiscal_Imp_AuxBeforeInsert
    AfterInsert = cdsNotaFiscal_Imp_AuxAfterInsert
    BeforePost = cdsNotaFiscal_Imp_AuxBeforePost
    OnNewRecord = cdsNotaFiscal_Imp_AuxNewRecord
    Left = 107
    Top = 559
    object cdsNotaFiscal_Imp_AuxID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_Imp_AuxITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_Imp_AuxNUM_DI: TStringField
      FieldName = 'NUM_DI'
      Size = 12
    end
    object cdsNotaFiscal_Imp_AuxDTREGISTRO: TDateField
      FieldName = 'DTREGISTRO'
      EditMask = '99/99/9999'
    end
    object cdsNotaFiscal_Imp_AuxDTDESEMBARACO: TDateField
      FieldName = 'DTDESEMBARACO'
      EditMask = '99/99/9999'
    end
    object cdsNotaFiscal_Imp_AuxCOD_EXPORTADOR: TStringField
      FieldName = 'COD_EXPORTADOR'
      Size = 60
    end
    object cdsNotaFiscal_Imp_AuxLOCAL_DESEMBARACO: TStringField
      FieldName = 'LOCAL_DESEMBARACO'
      Size = 60
    end
    object cdsNotaFiscal_Imp_AuxUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsNotaFiscal_Imp_AuxNUM_FATURA: TStringField
      FieldName = 'NUM_FATURA'
      Size = 15
    end
    object cdsNotaFiscal_Imp_AuxNUM_ADICAO: TIntegerField
      FieldName = 'NUM_ADICAO'
    end
    object cdsNotaFiscal_Imp_AuxNUM_SEQ: TIntegerField
      FieldName = 'NUM_SEQ'
    end
    object cdsNotaFiscal_Imp_AuxCOD_FABRICANTE: TStringField
      FieldName = 'COD_FABRICANTE'
      Size = 60
    end
    object cdsNotaFiscal_Imp_AuxVLR_DESCONTO_DI: TFloatField
      FieldName = 'VLR_DESCONTO_DI'
    end
    object cdsNotaFiscal_Imp_AuxTIPO_INTERMEDIO: TSmallintField
      FieldName = 'TIPO_INTERMEDIO'
    end
    object cdsNotaFiscal_Imp_AuxUF_TERCEIRO: TStringField
      FieldName = 'UF_TERCEIRO'
      Size = 2
    end
    object cdsNotaFiscal_Imp_AuxCNPJ_TERCEIRO: TStringField
      FieldName = 'CNPJ_TERCEIRO'
      Size = 18
    end
    object cdsNotaFiscal_Imp_AuxNUM_DRAWBACK: TStringField
      FieldName = 'NUM_DRAWBACK'
      Size = 11
    end
    object cdsNotaFiscal_Imp_AuxVLR_AFRMM: TFloatField
      FieldName = 'VLR_AFRMM'
    end
    object cdsNotaFiscal_Imp_AuxTIPO_VIA_TRANSPORTE: TSmallintField
      FieldName = 'TIPO_VIA_TRANSPORTE'
    end
  end
  object dsNotaFiscal_Imp_Aux: TDataSource
    DataSet = cdsNotaFiscal_Imp_Aux
    Left = 147
    Top = 559
  end
  object sdsObs_Lei: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM OBS_LEI'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 400
    Top = 237
    object sdsObs_LeiID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsObs_LeiNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsObs_LeiOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
  end
  object dspObs_Lei: TDataSetProvider
    DataSet = sdsObs_Lei
    Left = 432
    Top = 237
  end
  object cdsObs_Lei: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspObs_Lei'
    Left = 472
    Top = 237
    object cdsObs_LeiID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsObs_LeiNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsObs_LeiOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
  end
  object dsObs_Lei: TDataSource
    DataSet = cdsObs_Lei
    Left = 512
    Top = 237
  end
  object sdsNotaFiscal_Lei: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NOTAFISCAL_LEI'#13#10'WHERE ID = :ID'#13#10
    DataSource = dsNotaFiscal_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 66
    Top = 602
    object sdsNotaFiscal_LeiID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_LeiID_OBS_LEI: TIntegerField
      FieldName = 'ID_OBS_LEI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_LeiOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
  end
  object cdsNotaFiscal_Lei: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNotaFiscalsdsNotaFiscal_Lei
    Params = <>
    Left = 114
    Top = 602
    object cdsNotaFiscal_LeiID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_LeiID_OBS_LEI: TIntegerField
      FieldName = 'ID_OBS_LEI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_LeiOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
  end
  object dsNotaFiscal_Lei: TDataSource
    DataSet = cdsNotaFiscal_Lei
    Left = 162
    Top = 602
  end
  object sdsPedido_Tipo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT I.*'#13#10'FROM PEDIDO_ITEM_TIPO I'#13#10'WHERE I.ID = :ID'#13#10'  AND I.I' +
      'TEM = :ITEM'#13#10#13#10#13#10
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
    Left = 377
    Top = 432
  end
  object dspPedido_Tipo: TDataSetProvider
    DataSet = sdsPedido_Tipo
    Left = 409
    Top = 432
  end
  object cdsPedido_Tipo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspPedido_Tipo'
    OnCalcFields = cdsPedidoCalcFields
    Left = 449
    Top = 432
    object cdsPedido_TipoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedido_TipoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPedido_TipoCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object cdsPedido_TipoLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object cdsPedido_TipoALTURA: TFloatField
      FieldName = 'ALTURA'
    end
    object cdsPedido_TipoVLR_KG: TFloatField
      FieldName = 'VLR_KG'
    end
    object cdsPedido_TipoQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedido_TipoVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsPedido_TipoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsPedido_TipoDIAMETRO: TFloatField
      FieldName = 'DIAMETRO'
    end
    object cdsPedido_TipoDIAMETRO_EXT: TFloatField
      FieldName = 'DIAMETRO_EXT'
    end
    object cdsPedido_TipoDIAMETRO_INT: TFloatField
      FieldName = 'DIAMETRO_INT'
    end
    object cdsPedido_TipoPAREDE: TFloatField
      FieldName = 'PAREDE'
    end
    object cdsPedido_TipoPESO: TFloatField
      FieldName = 'PESO'
    end
    object cdsPedido_TipoCOMPLEMENTO_NOME: TStringField
      FieldName = 'COMPLEMENTO_NOME'
      Size = 50
    end
    object cdsPedido_TipoTIPO_ORCAMENTO: TStringField
      FieldName = 'TIPO_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_TipoDESCRICAO_TIPO: TStringField
      FieldName = 'DESCRICAO_TIPO'
      Size = 12
    end
    object cdsPedido_TipoID_ACABAMENTO: TIntegerField
      FieldName = 'ID_ACABAMENTO'
    end
    object cdsPedido_TipoID_REDONDO_MOD: TIntegerField
      FieldName = 'ID_REDONDO_MOD'
    end
    object cdsPedido_TipoID_CMOEDA: TIntegerField
      FieldName = 'ID_CMOEDA'
    end
    object cdsPedido_TipoID_FUROS: TIntegerField
      FieldName = 'ID_FUROS'
    end
    object cdsPedido_TipoID_FURACAO: TIntegerField
      FieldName = 'ID_FURACAO'
    end
    object cdsPedido_TipoID_PERFIL: TIntegerField
      FieldName = 'ID_PERFIL'
    end
    object cdsPedido_TipoID_VIDRO: TIntegerField
      FieldName = 'ID_VIDRO'
    end
    object cdsPedido_TipoQTD_FUROS: TIntegerField
      FieldName = 'QTD_FUROS'
    end
  end
  object dsPedido_Tipo: TDataSource
    DataSet = cdsPedido_Tipo
    Left = 489
    Top = 432
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
    Left = 1208
    Top = 468
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
    object qProduto_UFID_CST_ICMS: TIntegerField
      FieldName = 'ID_CST_ICMS'
    end
  end
  object mValeAux: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'ID_Vale'
    Params = <>
    Left = 1040
    Top = 332
    Data = {
      2A0000009619E0BD0100000018000000010000000000030000002A000749445F
      56616C6504000100000000000000}
    object mValeAuxID_Vale: TIntegerField
      FieldName = 'ID_Vale'
    end
  end
  object sdsNotaFiscal_DrawBack: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM NOTAFISCAL_ITENS_DRAWBACK'#13#10'WHERE ID = :ID'#13#10'   AND' +
      ' ITEM = :ITEM'#13#10
    DataSource = dsNotaFiscal_Mestre_Item
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
    Left = 225
    Top = 528
    object sdsNotaFiscal_DrawBackID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_DrawBackITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_DrawBackITEM_DRAWBACK: TIntegerField
      FieldName = 'ITEM_DRAWBACK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_DrawBackNUM_DRAWBACK: TStringField
      FieldName = 'NUM_DRAWBACK'
      Size = 11
    end
    object sdsNotaFiscal_DrawBackNUM_REG_EXPORTACAO: TStringField
      FieldName = 'NUM_REG_EXPORTACAO'
      Size = 12
    end
    object sdsNotaFiscal_DrawBackNUM_CHAVE_ACESSO_NFE: TStringField
      FieldName = 'NUM_CHAVE_ACESSO_NFE'
      Size = 44
    end
    object sdsNotaFiscal_DrawBackQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object cdsNotaFiscal_DrawBack: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNotaFiscal_ItenssdsNotaFiscal_DrawBack
    IndexFieldNames = 'ID;ITEM;ITEM_DRAWBACK'
    Params = <>
    Left = 256
    Top = 528
    object cdsNotaFiscal_DrawBackID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_DrawBackITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_DrawBackITEM_DRAWBACK: TIntegerField
      FieldName = 'ITEM_DRAWBACK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_DrawBackNUM_DRAWBACK: TStringField
      FieldName = 'NUM_DRAWBACK'
      Size = 11
    end
    object cdsNotaFiscal_DrawBackNUM_REG_EXPORTACAO: TStringField
      FieldName = 'NUM_REG_EXPORTACAO'
      Size = 12
    end
    object cdsNotaFiscal_DrawBackNUM_CHAVE_ACESSO_NFE: TStringField
      FieldName = 'NUM_CHAVE_ACESSO_NFE'
      Size = 44
    end
    object cdsNotaFiscal_DrawBackQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object dsNotaFiscal_DrawBack: TDataSource
    DataSet = cdsNotaFiscal_DrawBack
    Left = 288
    Top = 528
  end
  object qUF: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'UF'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT U.perc_icms, U.idpais, U.coduf, U.perc_icms_interno, PERC' +
        '_CP'
      'FROM UF U'
      'WHERE U.UF = :UF')
    SQLConnection = dmDatabase.scoDados
    Left = 544
    Top = 408
    object qUFPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object qUFIDPAIS: TIntegerField
      FieldName = 'IDPAIS'
    end
    object qUFCODUF: TStringField
      FieldName = 'CODUF'
      Size = 2
    end
    object qUFPERC_ICMS_INTERNO: TFloatField
      FieldName = 'PERC_ICMS_INTERNO'
    end
    object qUFPERC_CP: TFloatField
      FieldName = 'PERC_CP'
    end
  end
  object sdsDesoneracao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM TAB_DESONERACAO_ICMS'#13#10'WHERE COD_CST_ICMS = :COD_C' +
      'ST_ICMS'#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'COD_CST_ICMS'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 1097
    Top = 601
  end
  object dspDesoneracao: TDataSetProvider
    DataSet = sdsDesoneracao
    Left = 1129
    Top = 600
  end
  object cdsDesoneracao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COD_DESONERACAO'
    Params = <>
    ProviderName = 'dspDesoneracao'
    Left = 1161
    Top = 600
    object cdsDesoneracaoCOD_CST_ICMS: TStringField
      FieldName = 'COD_CST_ICMS'
      Required = True
      Size = 3
    end
    object cdsDesoneracaoCOD_DESONERACAO: TSmallintField
      FieldName = 'COD_DESONERACAO'
      Required = True
    end
    object cdsDesoneracaoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dsDesoneracao: TDataSource
    DataSet = cdsDesoneracao
    Left = 1209
    Top = 600
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
    Top = 88
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
  object sdsNotaFiscal_Fut: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM NOTAFISCAL_FUT'#13#10'WHERE ID = :ID'#13#10'     AND ITEM = :' +
      'ITEM'
    DataSource = dsNotaFiscal_Mestre_Item
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
    Left = 225
    Top = 480
    object sdsNotaFiscal_FutID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_FutITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_FutITEM_NOTAFUT: TIntegerField
      FieldName = 'ITEM_NOTAFUT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_FutID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object sdsNotaFiscal_FutITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object sdsNotaFiscal_FutQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsNotaFiscal_FutNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object sdsNotaFiscal_FutTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      Size = 1
    end
  end
  object cdsNotaFiscal_Fut: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNotaFiscal_ItenssdsNotaFiscal_Fut
    IndexFieldNames = 'ID;ITEM;ITEM_NOTAFUT'
    Params = <>
    Left = 256
    Top = 480
    object cdsNotaFiscal_FutID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_FutITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_FutITEM_NOTAFUT: TIntegerField
      FieldName = 'ITEM_NOTAFUT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_FutID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsNotaFiscal_FutITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object cdsNotaFiscal_FutQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsNotaFiscal_FutNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsNotaFiscal_FutTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      Size = 1
    end
  end
  object dsNotaFiscal_Fut: TDataSource
    DataSet = cdsNotaFiscal_Fut
    Left = 288
    Top = 480
  end
  object sdsNotaFiscal_OS: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM NOTAFISCAL_OS'#13#10'WHERE ID = :ID'#13#10'     AND ITEM = :I' +
      'TEM'
    DataSource = dsNotaFiscal_Mestre_Item
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
    Left = 225
    Top = 432
    object sdsNotaFiscal_OSID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_OSITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_OSITEM_NOTAOS: TIntegerField
      FieldName = 'ITEM_NOTAOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_OSID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
    object sdsNotaFiscal_OSITEM_OS: TIntegerField
      FieldName = 'ITEM_OS'
    end
    object sdsNotaFiscal_OSITEM_OS_MAT: TIntegerField
      FieldName = 'ITEM_OS_MAT'
    end
    object sdsNotaFiscal_OSQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsNotaFiscal_OSNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object sdsNotaFiscal_OSTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      Size = 1
    end
  end
  object cdsNotaFiscal_OS: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNotaFiscal_ItenssdsNotaFiscal_OS
    IndexFieldNames = 'ID;ITEM;ITEM_NOTAOS'
    Params = <>
    Left = 256
    Top = 432
    object cdsNotaFiscal_OSID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_OSITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_OSITEM_NOTAOS: TIntegerField
      FieldName = 'ITEM_NOTAOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_OSID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
    object cdsNotaFiscal_OSITEM_OS: TIntegerField
      FieldName = 'ITEM_OS'
    end
    object cdsNotaFiscal_OSITEM_OS_MAT: TIntegerField
      FieldName = 'ITEM_OS_MAT'
    end
    object cdsNotaFiscal_OSQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsNotaFiscal_OSNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object cdsNotaFiscal_OSTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      Size = 1
    end
  end
  object dsNotaFiscal_OS: TDataSource
    DataSet = cdsNotaFiscal_OS
    Left = 288
    Top = 432
  end
  object sdsOS: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PE.ID, PE.NUM_OS, PE.id_cliente, PE.DTEMISSAO, PI.id_prod' +
      'uto,'#13#10'PI.vlr_unitario, PI.qtd, PI.qtd_faturado, PI.qtd_restante,' +
      ' PI.qtd_afaturar, PRO.ID_NCM,'#13#10'CLI.nome NOMECLIENTE, PRO.REFEREN' +
      'CIA, PRO.NOME NOMEPRODUTO, CLI.cnpj_cpf,  PI.item,'#13#10'PRO.UNIDADE,' +
      ' PE.ID_CONDPGTO, NCM.NCM,  CLI.ID_TRANSPORTADORA, PRO.PERC_IPI, ' +
      'PI.ITEM_MAT'#13#10'FROM ordemservico PE'#13#10'INNER JOIN ordemservico_mat P' +
      'I ON (PE.ID = PI.ID)'#13#10'INNER JOIN PESSOA CLI ON (PE.ID_CLIENTE = ' +
      'CLI.CODIGO)'#13#10'INNER JOIN PRODUTO PRO ON (PI.ID_PRODUTO = PRO.ID)'#13 +
      #10'LEFT JOIN TAB_NCM NCM ON (PRO.ID_NCM = NCM.ID)'#13#10'WHERE PI.qtd_re' +
      'stante > 0'#13#10'  and pi.faturar = '#39'S'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 601
    Top = 5
  end
  object dspOS: TDataSetProvider
    DataSet = sdsOS
    Left = 633
    Top = 5
  end
  object cdsOS: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspOS'
    OnCalcFields = cdsPedidoCalcFields
    Left = 673
    Top = 5
    object cdsOSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOSNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object cdsOSID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsOSDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsOSID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsOSVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsOSQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsOSQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsOSQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsOSQTD_AFATURAR: TFloatField
      FieldName = 'QTD_AFATURAR'
    end
    object cdsOSID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsOSNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 60
    end
    object cdsOSREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsOSNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsOSCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsOSITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsOSUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsOSID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsOSNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsOSID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsOSPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsOSITEM_MAT: TIntegerField
      FieldName = 'ITEM_MAT'
      Required = True
    end
  end
  object dsOS: TDataSource
    DataSet = cdsOS
    Left = 713
    Top = 5
  end
  object sdsCombinacao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.ID ID_PRODUTO, P.NOME, p.id_cor_combinacao,'#13#10'P.PRECO_VE' +
      'NDA, P.PRECO_CUSTO'#13#10'FROM PRODUTO_COMB P'#13#10'WHERE P.ID = :ID'#13#10'  AND' +
      ' P.INATIVO = '#39'N'#39#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 225
    Top = 280
  end
  object dspCombinacao: TDataSetProvider
    DataSet = sdsCombinacao
    Left = 257
    Top = 280
  end
  object cdsCombinacao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCombinacao'
    Left = 289
    Top = 280
    object cdsCombinacaoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cdsCombinacaoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsCombinacaoID_COR_COMBINACAO: TIntegerField
      FieldName = 'ID_COR_COMBINACAO'
    end
    object cdsCombinacaoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object cdsCombinacaoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
  end
  object dsCombinacao: TDataSource
    DataSet = cdsCombinacao
    Left = 320
    Top = 280
  end
  object qDupPedido: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PEDIDO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT D.ID, D.ID_PEDIDO, D.VLR_PARCELA'
      'FROM DUPLICATA D'
      'WHERE D.ID_PEDIDO = :ID_PEDIDO')
    SQLConnection = dmDatabase.scoDados
    Left = 544
    Top = 456
    object qDupPedidoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qDupPedidoID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object qDupPedidoVLR_PARCELA: TFloatField
      FieldName = 'VLR_PARCELA'
    end
  end
  object qEstoque_Descaa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM_PEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM_PEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TAMANHO'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ID_NOTA'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT SUM(I.QTD) QTD, N.TIPO_NOTA'
      'FROM NOTAFISCAL_ITENS I'
      'INNER JOIN NOTAFISCAL N'
      'ON I.ID = N.ID'
      'WHERE (N.FILIAL = :FILIAL)'
      '  AND (N.TIPO_REG = '#39'NTS'#39')'
      '  AND (N.CANCELADA = '#39'N'#39')'
      '  AND (N.NFEDENEGADA = '#39'N'#39')'
      '  AND (I.GERAR_ESTOQUE = '#39'S'#39')'
      '  AND (((I.ID_PEDIDO_FUT = :ID_PEDIDO)'
      '  AND (I.ITEM_PEDIDO_FUT = :ITEM_PEDIDO ))'
      '  AND ((I.ID_PEDIDO_FUT = :ID_PEDIDO)'
      '  AND (I.ITEM_PEDIDO_FUT = :ITEM_PEDIDO )))'
      '  AND (I.TAMANHO = :TAMANHO)'
      '  AND (I.ID <> :ID_NOTA)'
      'GROUP BY N.TIPO_NOTA')
    SQLConnection = dmDatabase.scoDados
    Left = 992
    Top = 184
    object qEstoque_DescaaQTD: TFloatField
      FieldName = 'QTD'
    end
    object qEstoque_DescaaTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
  end
  object sdsEstoque_Desc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT SUM(I.QTD) QTD, N.TIPO_NOTA'#13#10'FROM NOTAFISCAL_ITENS I'#13#10'INN' +
      'ER JOIN NOTAFISCAL N'#13#10'ON I.ID = N.ID'#13#10'WHERE (N.FILIAL = :FILIAL)' +
      #13#10'AND (N.TIPO_REG = '#39'NTS'#39')'#13#10'AND (N.CANCELADA = '#39'N'#39')'#13#10'AND (N.NFED' +
      'ENEGADA = '#39'N'#39')'#13#10'AND (I.GERAR_ESTOQUE = '#39'S'#39')'#13#10'AND (((I.ID_PEDIDO_' +
      'FUT = :ID_PEDIDO)'#13#10'AND (I.ITEM_PEDIDO_FUT = :ITEM_PEDIDO ))'#13#10#13#10' ' +
      'OR ((I.ID_PEDIDO = :ID_PEDIDO)'#13#10'AND (I.ITEM_PEDIDO = :ITEM_PEDID' +
      'O )))'#13#10#13#10'AND (I.TAMANHO = :TAMANHO)'#13#10'AND (I.ID <> :ID_NOTA)'#13#10' AN' +
      'D I.ID_COR IS NULL'#13#10' GROUP BY N.TIPO_NOTA'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ID_PEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ITEM_PEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ID_PEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ITEM_PEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'TAMANHO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ID_NOTA'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 225
    Top = 232
  end
  object dspEstoque_Desc: TDataSetProvider
    DataSet = sdsEstoque_Desc
    Left = 257
    Top = 232
  end
  object cdsEstoque_Desc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoque_Desc'
    Left = 289
    Top = 232
    object cdsEstoque_DescQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsEstoque_DescTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
  end
  object mEmbAux: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 544
    Top = 504
    Data = {
      840000009619E0BD01000000180000000500000000000300000084000B49445F
      4D6174657269616C04000100000000000E5174645F4361706163696461646504
      000100000000000B5174645F50726F6475746F04000100000000000C5174645F
      52657374616E746504000100000000000D5174645F456D62616C6167656D0400
      0100000000000000}
    object mEmbAuxID_Material: TIntegerField
      FieldName = 'ID_Material'
    end
    object mEmbAuxQtd_Capacidade: TIntegerField
      FieldName = 'Qtd_Capacidade'
    end
    object mEmbAuxQtd_Produto: TIntegerField
      FieldName = 'Qtd_Produto'
    end
    object mEmbAuxQtd_Restante: TIntegerField
      FieldName = 'Qtd_Restante'
    end
    object mEmbAuxQtd_Embalagem: TIntegerField
      FieldName = 'Qtd_Embalagem'
    end
  end
  object sdsPRC_Atualiza_DtNota: TSQLDataSet
    CommandText = 'PRC_ATUALIZA_DTNOTA'
    CommandType = ctStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'C_ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 1001
    Top = 488
  end
  object sdsNotaFiscal_ProdPrincipal: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NOTAFISCAL_PRODPRINCIPAL'#13#10'WHERE ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 225
    Top = 328
    object sdsNotaFiscal_ProdPrincipalID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNotaFiscal_ProdPrincipalITEM_ORIGINAL: TIntegerField
      FieldName = 'ITEM_ORIGINAL'
      Required = True
    end
    object sdsNotaFiscal_ProdPrincipalID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsNotaFiscal_ProdPrincipalVLR_PRODUTO: TFloatField
      FieldName = 'VLR_PRODUTO'
    end
    object sdsNotaFiscal_ProdPrincipalQTD: TIntegerField
      FieldName = 'QTD'
    end
    object sdsNotaFiscal_ProdPrincipalVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
  end
  object dspNotaFiscal_ProdPrincipal: TDataSetProvider
    DataSet = sdsNotaFiscal_ProdPrincipal
    UpdateMode = upWhereKeyOnly
    Left = 257
    Top = 328
  end
  object cdsNotaFiscal_ProdPrincipal: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM_ORIGINAL'
    Params = <>
    ProviderName = 'dspNotaFiscal_ProdPrincipal'
    Left = 289
    Top = 328
    object cdsNotaFiscal_ProdPrincipalID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscal_ProdPrincipalITEM_ORIGINAL: TIntegerField
      FieldName = 'ITEM_ORIGINAL'
      Required = True
    end
    object cdsNotaFiscal_ProdPrincipalID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsNotaFiscal_ProdPrincipalVLR_PRODUTO: TFloatField
      FieldName = 'VLR_PRODUTO'
    end
    object cdsNotaFiscal_ProdPrincipalQTD: TIntegerField
      FieldName = 'QTD'
    end
    object cdsNotaFiscal_ProdPrincipalVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
  end
  object dsNotaFiscal_ProdPrincipal: TDataSource
    DataSet = cdsNotaFiscal_ProdPrincipal
    Left = 320
    Top = 328
  end
  object mPedAmbientes: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Pedido'
        DataType = ftInteger
      end>
    IndexDefs = <>
    IndexFieldNames = 'ID_Pedido'
    Params = <>
    StoreDefs = True
    Left = 1185
    Top = 145
    Data = {
      2C0000009619E0BD0100000018000000010000000000030000002C000949445F
      50656469646F04000100000000000000}
    object mPedAmbientesID_Pedido: TIntegerField
      FieldName = 'ID_Pedido'
    end
  end
  object sdsLocal_Estoque: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM LOCAL_ESTOQUE'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 816
    Top = 393
  end
  object dspLocal_Estoque: TDataSetProvider
    DataSet = sdsLocal_Estoque
    Left = 851
    Top = 393
  end
  object cdsLocal_Estoque: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspLocal_Estoque'
    Left = 891
    Top = 393
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
    Left = 931
    Top = 393
  end
  object mLoteControle: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'ID_Pedido;Item_Pedido'
    MasterFields = 'ID;ITEM'
    MasterSource = dsPedido
    PacketRecords = 0
    Params = <>
    Left = 264
    Top = 8
    Data = {
      720000009619E0BD01000000180000000400000000000300000072000949445F
      50656469646F04000100000000000B4974656D5F50656469646F040001000000
      0000035174640800040000000000114E756D5F4C6F74655F436F6E74726F6C65
      01004900000001000557494454480200020014000000}
    object mLoteControleID_Pedido: TIntegerField
      FieldName = 'ID_Pedido'
    end
    object mLoteControleItem_Pedido: TIntegerField
      FieldName = 'Item_Pedido'
    end
    object mLoteControleQtd: TFloatField
      FieldName = 'Qtd'
      DisplayFormat = '0.####'
    end
    object mLoteControleNum_Lote_Controle: TStringField
      FieldName = 'Num_Lote_Controle'
    end
  end
  object dsmLoteConrole: TDataSource
    DataSet = mLoteControle
    Left = 296
    Top = 8
  end
  object mItensAlt: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'ID_Produto;ID_Cor;Tamanho'
    Params = <>
    Left = 328
    Top = 8
    Data = {
      640000009619E0BD01000000180000000400000000000300000064000A49445F
      50726F6475746F04000100000000000649445F436F7204000100000000000754
      616D616E686F0100490000000100055749445448020002000A00035174640800
      0400000000000000}
    object mItensAltID_Produto: TIntegerField
      FieldName = 'ID_Produto'
    end
    object mItensAltID_Cor: TIntegerField
      FieldName = 'ID_Cor'
    end
    object mItensAltTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 10
    end
    object mItensAltQtd: TFloatField
      FieldName = 'Qtd'
    end
  end
  object sdsNotaFiscal_ItensAux: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM NOTAFISCAL_ITENSAUX'#13#10'WHERE ID = :ID'#13#10'  AND ITEM =' +
      ' :ITEM'
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
    Left = 225
    Top = 376
    object sdsNotaFiscal_ItensAuxID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_ItensAuxITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_ItensAuxID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsNotaFiscal_ItensAuxID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsNotaFiscal_ItensAuxTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsNotaFiscal_ItensAuxQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object dspNotaFiscal_ItensAux: TDataSetProvider
    DataSet = sdsNotaFiscal_ItensAux
    Constraints = False
    UpdateMode = upWhereKeyOnly
    Left = 257
    Top = 376
  end
  object cdsNotaFiscal_ItensAux: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspNotaFiscal_ItensAux'
    Left = 289
    Top = 376
    object cdsNotaFiscal_ItensAuxID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_ItensAuxITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_ItensAuxID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsNotaFiscal_ItensAuxID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsNotaFiscal_ItensAuxTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsNotaFiscal_ItensAuxQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object sdsEnqIPI: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_ENQIPI'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 385
    Top = 596
  end
  object dspEnqIPI: TDataSetProvider
    DataSet = sdsEnqIPI
    Left = 417
    Top = 596
  end
  object cdsEnqIPI: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspEnqIPI'
    Left = 457
    Top = 596
    object cdsEnqIPIID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEnqIPICODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object cdsEnqIPITIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsEnqIPIDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
  end
  object dsEnqIPI: TDataSource
    DataSet = cdsEnqIPI
    Left = 497
    Top = 596
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
    Left = 544
    Top = 360
    object qIcmsPartilhaANO: TIntegerField
      FieldName = 'ANO'
      Required = True
    end
    object qIcmsPartilhaPERC_DESTINO: TFloatField
      FieldName = 'PERC_DESTINO'
    end
  end
  object qParametros_Est: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_EST'
      'WHERE ID = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 256
    Top = 576
    object qParametros_EstID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_EstUSA_RESERVA: TStringField
      FieldName = 'USA_RESERVA'
      FixedChar = True
      Size = 1
    end
    object qParametros_EstGERAR_LOTE_AUT: TStringField
      FieldName = 'GERAR_LOTE_AUT'
      FixedChar = True
      Size = 1
    end
    object qParametros_EstGERAR_LOTE_AUT_CONSUMO: TStringField
      FieldName = 'GERAR_LOTE_AUT_CONSUMO'
      FixedChar = True
      Size = 1
    end
  end
  object qParametros_Com: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_COM'
      'WHERE ID = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 288
    Top = 576
    object qParametros_ComID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_ComCOMISSAO_DESCONTAR: TStringField
      FieldName = 'COMISSAO_DESCONTAR'
      FixedChar = True
      Size = 1
    end
  end
  object qParametros_Imp: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_IMP'
      'WHERE ID = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 320
    Top = 576
    object qParametros_ImpID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_ImpSOMAR_VLR_II_NO_IPI: TStringField
      FieldName = 'SOMAR_VLR_II_NO_IPI'
      FixedChar = True
      Size = 1
    end
    object qParametros_ImpSOMAR_FRETE_ICMS: TStringField
      FieldName = 'SOMAR_FRETE_ICMS'
      FixedChar = True
      Size = 1
    end
    object qParametros_ImpSOMAR_VLR_AFRMM_ICMS: TStringField
      FieldName = 'SOMAR_VLR_AFRMM_ICMS'
      FixedChar = True
      Size = 1
    end
    object qParametros_ImpSOMAR_VLR_AFRMM_ODESP: TStringField
      FieldName = 'SOMAR_VLR_AFRMM_ODESP'
      FixedChar = True
      Size = 1
    end
    object qParametros_ImpSOMAR_FRETE_ODESP: TStringField
      FieldName = 'SOMAR_FRETE_ODESP'
      FixedChar = True
      Size = 1
    end
    object qParametros_ImpSOMAR_NO_ICMS_OUTROS_VLR: TStringField
      FieldName = 'SOMAR_NO_ICMS_OUTROS_VLR'
      FixedChar = True
      Size = 1
    end
    object qParametros_ImpCOFINS_SOMAR_SEG: TStringField
      FieldName = 'COFINS_SOMAR_SEG'
      FixedChar = True
      Size = 1
    end
    object qParametros_ImpCOFINS_SOMAR_FRETE: TStringField
      FieldName = 'COFINS_SOMAR_FRETE'
      FixedChar = True
      Size = 1
    end
    object qParametros_ImpICMS_SOMAR_SEG: TStringField
      FieldName = 'ICMS_SOMAR_SEG'
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
    Left = 224
    Top = 624
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
    object qParametros_NFeIMP_COMBINACAO_NFE: TStringField
      FieldName = 'IMP_COMBINACAO_NFE'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeUSA_OPCAO_IMP_COD_CLI: TStringField
      FieldName = 'USA_OPCAO_IMP_COD_CLI'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeIMP_END_COBRANCA: TStringField
      FieldName = 'IMP_END_COBRANCA'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeGRAVAR_TAB_TAMANHO: TStringField
      FieldName = 'GRAVAR_TAB_TAMANHO'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeUSA_SEL_PEDIDO_TAM: TStringField
      FieldName = 'USA_SEL_PEDIDO_TAM'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeCOPIAR_QTD_REST_ADEVOLVER: TStringField
      FieldName = 'COPIAR_QTD_REST_ADEVOLVER'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeIMP_CONSUMO_NOTA: TStringField
      FieldName = 'IMP_CONSUMO_NOTA'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeAJUSTA_VARIACAO: TStringField
      FieldName = 'AJUSTA_VARIACAO'
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
    object qParametros_NFeCOPIAR_VLR_FRETE_PED: TStringField
      FieldName = 'COPIAR_VLR_FRETE_PED'
      Size = 1
    end
    object qParametros_NFeALTERAR_NOME_PROD: TStringField
      FieldName = 'ALTERAR_NOME_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeMOSTRAR_OC_NO_ITEM: TStringField
      FieldName = 'MOSTRAR_OC_NO_ITEM'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeMOSTRAR_OS_NO_ITEM: TStringField
      FieldName = 'MOSTRAR_OS_NO_ITEM'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeUSA_NOMEPROD_FORN_NFE: TStringField
      FieldName = 'USA_NOMEPROD_FORN_NFE'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeIMP_QTDE_PRODUTO: TStringField
      FieldName = 'IMP_QTDE_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeUSA_PROD_NTE: TStringField
      FieldName = 'USA_PROD_NTE'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeUSA_PROD_CLI_PED: TStringField
      FieldName = 'USA_PROD_CLI_PED'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeENDERECO_ENTREGA_BRANCO: TStringField
      FieldName = 'ENDERECO_ENTREGA_BRANCO'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeAVISA_GNRE: TStringField
      FieldName = 'AVISA_GNRE'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFePERMITE_IMPORTAR_S_CLIENTE: TStringField
      FieldName = 'PERMITE_IMPORTAR_S_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeCOPIA_PED_IMPOSTO: TStringField
      FieldName = 'COPIA_PED_IMPOSTO'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeCALC_VOLUME_QTD: TStringField
      FieldName = 'CALC_VOLUME_QTD'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeUSA_PREFAT: TStringField
      FieldName = 'USA_PREFAT'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeTIPO_ATENDIMENTO: TSmallintField
      FieldName = 'TIPO_ATENDIMENTO'
    end
    object qParametros_NFeENVIAR_VPAG_SEM_VLR: TIntegerField
      FieldName = 'ENVIAR_VPAG_SEM_VLR'
    end
    object qParametros_NFeCOPIAR_RECNF: TStringField
      FieldName = 'COPIAR_RECNF'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeEND_ARQUIVO_SUFRAMA: TStringField
      FieldName = 'END_ARQUIVO_SUFRAMA'
      Size = 250
    end
    object qParametros_NFeVERSAO_SUFRAMA: TStringField
      FieldName = 'VERSAO_SUFRAMA'
      Size = 10
    end
    object qParametros_NFeDESCONTA_ICMS_DESON: TStringField
      FieldName = 'DESCONTA_ICMS_DESON'
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
  object sdsEstoqueLoteAux: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select aux.*'#13#10'from('#13#10' SELECT e.dtmovimento, e.num_lote_controle,' +
      ' sum(e.qtd2) qtd'#13#10'FROM estoque_mov E'#13#10'where e.id_produto = :id_p' +
      'roduto'#13#10'  and e.filial = :filial'#13#10'  and (e.num_lote_controle is ' +
      'not null)'#13#10'  and (e.num_lote_controle <> '#39#39')'#13#10'group by e.dtmovim' +
      'ento, e.num_lote_controle) aux'#13#10'where aux.Qtd > 0'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_produto'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'filial'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 1097
    Top = 642
  end
  object dspEstoqueLoteAux: TDataSetProvider
    DataSet = sdsEstoqueLoteAux
    Left = 1129
    Top = 641
  end
  object cdsEstoqueLoteAux: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'DTMOVIMENTO;NUM_LOTE_CONTROLE'
    Params = <>
    ProviderName = 'dspEstoqueLoteAux'
    Left = 1161
    Top = 641
    object cdsEstoqueLoteAuxDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object cdsEstoqueLoteAuxNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object cdsEstoqueLoteAuxQTD: TFloatField
      FieldName = 'QTD'
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
    Left = 224
    Top = 576
    object qParametros_FinCONTROLAR_BANCO_REM_DEP: TStringField
      FieldName = 'CONTROLAR_BANCO_REM_DEP'
      FixedChar = True
      Size = 1
    end
    object qParametros_FinSENHA_RECIBO: TStringField
      FieldName = 'SENHA_RECIBO'
      Size = 15
    end
    object qParametros_FinCOPIAR_DESC_VALE: TStringField
      FieldName = 'COPIAR_DESC_VALE'
      FixedChar = True
      Size = 1
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
    object qParametros_FinUSA_APROVA_DUP: TStringField
      FieldName = 'USA_APROVA_DUP'
      FixedChar = True
      Size = 1
    end
    object qParametros_FinUSA_PERC_CONDPGTO: TStringField
      FieldName = 'USA_PERC_CONDPGTO'
      FixedChar = True
      Size = 1
    end
    object qParametros_FinQTD_DIAS_MPAG: TIntegerField
      FieldName = 'QTD_DIAS_MPAG'
    end
    object qParametros_FinEXIGIR_CONTA_ORC_DUP: TStringField
      FieldName = 'EXIGIR_CONTA_ORC_DUP'
      FixedChar = True
      Size = 1
    end
    object qParametros_FinCONDPGTO_FRETE_IMP: TStringField
      FieldName = 'CONDPGTO_FRETE_IMP'
      FixedChar = True
      Size = 1
    end
  end
  object qParametros_Ped: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_PED')
    SQLConnection = dmDatabase.scoDados
    Left = 545
    Top = 292
    object qParametros_PedCONTROLAR_FILIAL_NA_COPIA_NOTA: TStringField
      FieldName = 'CONTROLAR_FILIAL_NA_COPIA_NOTA'
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
    object qParametros_PedUSA_CONFERENCIA: TStringField
      FieldName = 'USA_CONFERENCIA'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSA_OPERACAO_SERV: TStringField
      FieldName = 'USA_OPERACAO_SERV'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSA_NUM_TALAO: TStringField
      FieldName = 'USA_NUM_TALAO'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedIMP_ORDEM_ITEM_PED: TStringField
      FieldName = 'IMP_ORDEM_ITEM_PED'
      FixedChar = True
      Size = 1
    end
    object qParametros_PedUSA_TAB_PRECO: TStringField
      FieldName = 'USA_TAB_PRECO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsNotaFiscal_Tam: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM NOTAFISCAL_TAM'#13#10'WHERE ID = :ID'#13#10'   AND ITEM = :IT' +
      'EM'#13#10
    DataSource = dsNotaFiscal_Mestre_Item
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
    Left = 206
    Top = 96
    object sdsNotaFiscal_TamID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_TamITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_TamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object sdsNotaFiscal_TamQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 5
    end
    object sdsNotaFiscal_TamID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object sdsNotaFiscal_TamITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object sdsNotaFiscal_TamID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
  end
  object cdsNotaFiscal_Tam: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNotaFiscal_ItenssdsNotaFiscal_Tam
    Params = <>
    OnNewRecord = cdsNotaFiscal_TamNewRecord
    Left = 246
    Top = 96
    object cdsNotaFiscal_TamID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_TamITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_TamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object cdsNotaFiscal_TamQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 5
    end
    object cdsNotaFiscal_TamID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsNotaFiscal_TamITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object cdsNotaFiscal_TamID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
  end
  object dsNotaFiscal_Tam: TDataSource
    DataSet = cdsNotaFiscal_Tam
    Left = 286
    Top = 96
  end
  object sdsPedido_Tam: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PE.ID, PE.PEDIDO_CLIENTE, PE.id_cliente, PE.DTEMISSAO, PI' +
      '.id_produto, PI.id_cfop, PE.NUM_PEDIDO,'#13#10'PI.vlr_unitario, PI.ID_' +
      'NCM ID_NCM_PED,  PI.REFERENCIA,'#13#10'CLI.nome NOMECLIENTE, PRO.REFER' +
      'ENCIA REFERENCIA_PRO, PRO.NOME NOMEPRODUTO, CLI.cnpj_cpf,  PI.dt' +
      'entrega, PI.VLR_DESCONTO,'#13#10'PRO.ID_NCM, PI.UNIDADE, PI.PERC_IPI, ' +
      'PI.OBS_COMPLEMENTAR, PI.NUMOS, PE.TIPO_FRETE, PE.ID_CONDPGTO, PE' +
      '.IMP_OC_NOTA, PI.ID_VARIACAO,'#13#10'PE.TIPO_REG, PE.ID_TRANSPORTADORA' +
      ', PI.VLR_DESCONTORATEIO, PI.ID_COR, COMB.nome NOME_COR,'#13#10'PI.PERC' +
      '_COMISSAO PERC_COMISSAO_ITEM, PE.PERC_COMISSAO, PE.ID_TIPO_COBRA' +
      'NCA, PE.ID_CONTA, PE.LOCALENTREGA,'#13#10'PRO.LANCA_LOTE_CONTROLE, PI.' +
      'COPIAR_SELECIONADO, PE.NOTIFICACAO, PE.ID_VENDEDOR, PI.ITEM_ORIG' +
      'INAL, PRO.id_grade,'#13#10'sum(pi.qtd) qtd, sum(PI.qtd_faturado) qtd_f' +
      'aturado,'#13#10'sum(PI.qtd_restante) qtd_restante, sum(PI.qtd_afaturar' +
      ') qtd_afaturar,'#13#10'sum(PI.QTD_LIBERADA) QTD_LIBERADA'#13#10#13#10'FROM PEDID' +
      'O PE'#13#10'INNER JOIN PEDIDO_ITEM PI ON (PE.ID = PI.ID)'#13#10'INNER JOIN P' +
      'ESSOA CLI ON (PE.ID_CLIENTE = CLI.CODIGO)'#13#10'INNER JOIN PRODUTO PR' +
      'O ON (PI.ID_PRODUTO = PRO.ID)'#13#10'LEFT JOIN COMBINACAO COMB ON (PI.' +
      'ID_COR = COMB.ID)'#13#10'WHERE PI.qtd_restante > 0'#13#10#13#10'GROUP BY PE.ID, ' +
      'PE.PEDIDO_CLIENTE, PE.id_cliente, PE.DTEMISSAO, PI.id_produto, P' +
      'I.id_cfop, PE.NUM_PEDIDO,'#13#10'PI.vlr_unitario, PI.ID_NCM,  PI.REFER' +
      'ENCIA,'#13#10'CLI.nome, PRO.REFERENCIA, PRO.NOME, CLI.cnpj_cpf,  PI.dt' +
      'entrega, PI.VLR_DESCONTO,'#13#10'PRO.ID_NCM, PI.UNIDADE, PI.PERC_IPI, ' +
      'PI.OBS_COMPLEMENTAR, PI.NUMOS, PE.TIPO_FRETE, PE.ID_CONDPGTO, PE' +
      '.IMP_OC_NOTA, PI.ID_VARIACAO,'#13#10'PE.TIPO_REG, PE.ID_TRANSPORTADORA' +
      ', PI.VLR_DESCONTORATEIO, PI.ID_COR, COMB.nome,'#13#10'PI.PERC_COMISSAO' +
      ', PE.PERC_COMISSAO, PE.ID_TIPO_COBRANCA, PE.ID_CONTA, PE.LOCALEN' +
      'TREGA,'#13#10'PRO.LANCA_LOTE_CONTROLE, PI.COPIAR_SELECIONADO, PE.NOTIF' +
      'ICACAO, PE.ID_VENDEDOR, PI.ITEM_ORIGINAL, PRO.id_grade'#13#10#13#10'      '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 225
    Top = 181
  end
  object dspPedido_Tam: TDataSetProvider
    DataSet = sdsPedido_Tam
    Left = 257
    Top = 181
  end
  object cdsPedido_Tam: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspPedido_Tam'
    OnCalcFields = cdsPedido_TamCalcFields
    Left = 289
    Top = 181
    object cdsPedido_TamID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedido_TamPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsPedido_TamID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsPedido_TamDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsPedido_TamID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsPedido_TamID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsPedido_TamNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPedido_TamVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsPedido_TamID_NCM_PED: TIntegerField
      FieldName = 'ID_NCM_PED'
    end
    object cdsPedido_TamREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsPedido_TamNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 60
    end
    object cdsPedido_TamREFERENCIA_PRO: TStringField
      FieldName = 'REFERENCIA_PRO'
    end
    object cdsPedido_TamNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 100
    end
    object cdsPedido_TamCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsPedido_TamDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsPedido_TamVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object cdsPedido_TamID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsPedido_TamUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsPedido_TamPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsPedido_TamOBS_COMPLEMENTAR: TStringField
      FieldName = 'OBS_COMPLEMENTAR'
      Size = 250
    end
    object cdsPedido_TamNUMOS: TStringField
      FieldName = 'NUMOS'
      Size = 30
    end
    object cdsPedido_TamTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
    object cdsPedido_TamID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsPedido_TamIMP_OC_NOTA: TStringField
      FieldName = 'IMP_OC_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_TamID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
    object cdsPedido_TamTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_TamID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsPedido_TamVLR_DESCONTORATEIO: TFloatField
      FieldName = 'VLR_DESCONTORATEIO'
    end
    object cdsPedido_TamID_COR: TFMTBCDField
      FieldName = 'ID_COR'
      Precision = 15
      Size = 0
    end
    object cdsPedido_TamNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 60
    end
    object cdsPedido_TamPERC_COMISSAO_ITEM: TFloatField
      FieldName = 'PERC_COMISSAO_ITEM'
    end
    object cdsPedido_TamPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsPedido_TamID_TIPO_COBRANCA: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA'
    end
    object cdsPedido_TamID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsPedido_TamLOCALENTREGA: TStringField
      FieldName = 'LOCALENTREGA'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_TamLANCA_LOTE_CONTROLE: TStringField
      FieldName = 'LANCA_LOTE_CONTROLE'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_TamCOPIAR_SELECIONADO: TStringField
      FieldName = 'COPIAR_SELECIONADO'
      FixedChar = True
      Size = 1
    end
    object cdsPedido_TamNOTIFICACAO: TIntegerField
      FieldName = 'NOTIFICACAO'
    end
    object cdsPedido_TamID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsPedido_TamITEM_ORIGINAL: TIntegerField
      FieldName = 'ITEM_ORIGINAL'
    end
    object cdsPedido_TamID_GRADE: TIntegerField
      FieldName = 'ID_GRADE'
    end
    object cdsPedido_TamQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedido_TamQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsPedido_TamQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsPedido_TamQTD_AFATURAR: TFloatField
      FieldName = 'QTD_AFATURAR'
    end
    object cdsPedido_TamQTD_LIBERADA: TFloatField
      FieldName = 'QTD_LIBERADA'
    end
    object cdsPedido_TamclQtd_Restante: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clQtd_Restante'
      Calculated = True
    end
    object cdsPedido_TamclQtd_NaoLiberada: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clQtd_NaoLiberada'
      Calculated = True
    end
  end
  object dsPedido_Tam: TDataSource
    DataSet = cdsPedido_Tam
    Left = 321
    Top = 181
  end
  object qParametros_Prod: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_PROD')
    SQLConnection = dmDatabase.scoDados
    Left = 760
    Top = 208
    object qParametros_ProdUSA_PRODUTO_FILIAL: TStringField
      FieldName = 'USA_PRODUTO_FILIAL'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdOPCAO_APLICAR_MARGEM: TStringField
      FieldName = 'OPCAO_APLICAR_MARGEM'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdUSA_DESC_MAXIMO: TStringField
      FieldName = 'USA_DESC_MAXIMO'
      FixedChar = True
      Size = 1
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
  end
  object qParametros_Geral: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_GERAL'
      'WHERE ID = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 760
    Top = 263
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
    object qParametros_GeralUSA_ISENTO_PESSOA: TStringField
      FieldName = 'USA_ISENTO_PESSOA'
      FixedChar = True
      Size = 1
    end
    object qParametros_GeralUSA_TRIANGULAR: TStringField
      FieldName = 'USA_TRIANGULAR'
      FixedChar = True
      Size = 1
    end
    object qParametros_GeralUSA_AJUSTE_CUSTO: TStringField
      FieldName = 'USA_AJUSTE_CUSTO'
      FixedChar = True
      Size = 1
    end
  end
  object mEtiquetas: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ITEM'
        DataType = ftInteger
      end
      item
        Name = 'REFERENCIA'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'PRECO'
        DataType = ftCurrency
      end
      item
        Name = 'ID'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 288
    Top = 624
    Data = {
      8C0000009619E0BD0100000018000000050000000000030000008C0004495445
      4D04000100000000000A5245464552454E434941010049000000010005574944
      5448020002002800044E4F4D4501004900000001000557494454480200020064
      0005505245434F080004000000010007535542545950450200490006004D6F6E
      65790002494404000100000000000000}
    object mEtiquetasITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object mEtiquetasREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 40
    end
    object mEtiquetasNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object mEtiquetasPRECO: TCurrencyField
      FieldName = 'PRECO'
    end
    object mEtiquetasID: TIntegerField
      FieldName = 'ID'
    end
  end
  object dsmEtiquetas: TDataSource
    DataSet = mEtiquetas
    Left = 320
    Top = 624
  end
  object frxReport1: TfrxReport
    Version = '5.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43412.614886273100000000
    ReportOptions.LastChange = 43412.645099317130000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Left = 376
    Top = 640
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'mEiquetas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ITEM=ITEM'
      'REFERENCIA=REFERENCIA'
      'NOME=NOME'
      'PRECO=PRECO'
      'ID=ID')
    DataSource = dsmEtiquetas
    BCDToCurrency = False
    Left = 408
    Top = 640
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
    Left = 1032
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
  object sdsHist_Senha: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM HIST_SENHA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 368
    Top = 128
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
    Left = 408
    Top = 128
  end
  object cdsHist_Senha: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspHist_Senha'
    Left = 448
    Top = 128
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
    Left = 488
    Top = 128
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
    Left = 536
    Top = 128
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
  object qParametros_OC: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_OC'
      'WHERE ID = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 760
    Top = 319
    object qParametros_OCPERMITIR_ENT_MAIOR: TStringField
      FieldName = 'PERMITIR_ENT_MAIOR'
      FixedChar = True
      Size = 1
    end
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxNotaFiscal_Consulta'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'FILIAL=FILIAL'
      'SERIE=SERIE'
      'NUMNOTA=NUMNOTA'
      'DTEMISSAO=DTEMISSAO'
      'ID_CFOP=ID_CFOP'
      'ID_CLIENTE=ID_CLIENTE'
      'ID_CONDPGTO=ID_CONDPGTO'
      'ID_VENDEDOR=ID_VENDEDOR'
      'VLR_NOTA=VLR_NOTA'
      'VLR_DUPLICATA=VLR_DUPLICATA'
      'VLR_ENTRADA=VLR_ENTRADA'
      'CANCELADA=CANCELADA'
      'DTSAIDAENTRADA=DTSAIDAENTRADA'
      'ID_CLIENTETRIANG=ID_CLIENTETRIANG'
      'NFERECIBO=NFERECIBO'
      'NFEPROTOCOLO=NFEPROTOCOLO'
      'NFECHAVEACESSO=NFECHAVEACESSO'
      'NFEPROTOCOLO_CANCELADA=NFEPROTOCOLO_CANCELADA'
      'NFEVERSAO=NFEVERSAO'
      'NFEFINALIDADE=NFEFINALIDADE'
      'NFEAMBIENTE=NFEAMBIENTE'
      'NFEDENEGADA=NFEDENEGADA'
      'NOMECLIENTE=NOMECLIENTE'
      'CODCFOP=CODCFOP'
      'TIPO_NOTA=TIPO_NOTA'
      'TIPO_REG=TIPO_REG'
      'FANTASIA=FANTASIA'
      'sdsNotaFiscal_Eventos=sdsNotaFiscal_Eventos'
      'STATUS_MANIFESTO=STATUS_MANIFESTO'
      'DESCRICAO_MANIFESTO=DESCRICAO_MANIFESTO'
      'TIPO_PRAZO=TIPO_PRAZO'
      'NFECODBARRA_CONTINGENCIA=NFECODBARRA_CONTINGENCIA'
      'NFEENVIADA=NFEENVIADA'
      'VLR_BASE_COMISSAO=VLR_BASE_COMISSAO'
      'NOME_VENDEDOR=NOME_VENDEDOR'
      'DESCRICAO_PRAZO=DESCRICAO_PRAZO'
      'UF_CLIENTE=UF_CLIENTE'
      'USUARIO=USUARIO'
      'REC_COPIADO=REC_COPIADO'
      'CNPJ_CPF_CLIENTE=CNPJ_CPF_CLIENTE'
      'ID_TRANSPORTADORA=ID_TRANSPORTADORA'
      'INSC_SUFRAMA_CLIENTE=INSC_SUFRAMA_CLIENTE')
    DataSource = dsNotaFiscal_Consulta
    BCDToCurrency = False
    Left = 440
    Top = 640
  end
  object qParametros_NTE: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_NTE'
      'WHERE ID = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 760
    Top = 447
    object qParametros_NTEID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_NTESOMAR_IPI_NO_CUSTO: TStringField
      FieldName = 'SOMAR_IPI_NO_CUSTO'
      Size = 1
    end
    object qParametros_NTESOMAR_FRETE_NO_CUSTO: TStringField
      FieldName = 'SOMAR_FRETE_NO_CUSTO'
      Size = 1
    end
    object qParametros_NTEATUALIZAR_CUSTO: TStringField
      FieldName = 'ATUALIZAR_CUSTO'
      FixedChar = True
      Size = 1
    end
    object qParametros_NTESOMAR_ST_NO_CUSTO: TStringField
      FieldName = 'SOMAR_ST_NO_CUSTO'
      Size = 1
    end
    object qParametros_NTEMOSTRAR_FINALIDADE: TStringField
      FieldName = 'MOSTRAR_FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object qParametros_NTEUSA_CONTA_ORCAMENTO_ITENS: TStringField
      FieldName = 'USA_CONTA_ORCAMENTO_ITENS'
      FixedChar = True
      Size = 1
    end
    object qParametros_NTEUSA_CENTRO_CUSTO: TStringField
      FieldName = 'USA_CENTRO_CUSTO'
      FixedChar = True
      Size = 1
    end
  end
  object mVerReserva: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Material'
        DataType = ftInteger
      end
      item
        Name = 'ID_OC'
        DataType = ftInteger
      end
      item
        Name = 'Num_OC'
        DataType = ftInteger
      end
      item
        Name = 'ID_Cor'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Cor'
        DataType = ftString
        Size = 60
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 544
    Top = 552
    Data = {
      770000009619E0BD01000000180000000500000000000300000077000B49445F
      4D6174657269616C04000100000000000549445F4F430400010000000000064E
      756D5F4F4304000100000000000649445F436F720400010000000000084E6F6D
      655F436F720100490000000100055749445448020002003C000000}
    object mVerReservaID_Material: TIntegerField
      FieldName = 'ID_Material'
    end
    object mVerReservaID_OC: TIntegerField
      FieldName = 'ID_OC'
    end
    object mVerReservaNum_OC: TIntegerField
      FieldName = 'Num_OC'
    end
    object mVerReservaID_Cor: TIntegerField
      FieldName = 'ID_Cor'
    end
    object mVerReservaNome_Cor: TStringField
      FieldName = 'Nome_Cor'
      Size = 60
    end
  end
  object qProximaNotaRamiro: TSQLQuery
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
      end
      item
        DataType = ftInteger
        Name = 'NUM_NOTA_RAMIRO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT MAX(NUMNOTA) NUMNOTA'
      'FROM NOTAFISCAL'
      'WHERE FILIAL = :FILIAL'
      '    AND SERIE = :SERIE'
      '    AND TIPO_REG = '#39'NTS'#39
      '    AND NUMNOTA < :NUM_NOTA_RAMIRO')
    SQLConnection = dmDatabase.scoDados
    Left = 288
    Top = 144
    object qProximaNotaRamiroNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
  end
  object mPedidoAuxExcluir: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Pedido'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'ID_Pedido'
    Params = <>
    StoreDefs = True
    Left = 992
    Top = 288
    Data = {
      2C0000009619E0BD0100000018000000010000000000030000002C000949445F
      50656469646F04000100000000000000}
    object mPedidoAuxExcluirID_pedido: TIntegerField
      FieldName = 'ID_Pedido'
    end
  end
  object frxDBDuplicatas: TfrxDBDataset
    UserName = 'frxDBDuplicatas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      '-TIPO_ES=TIPO_ES'
      '-FILIAL=FILIAL'
      '-ID_NOTA=ID_NOTA'
      'PARCELA=PARCELA'
      '-NUMDUPLICATA=NUMDUPLICATA'
      'NUMNOTA=NUMNOTA'
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
      'DTEMISSAO=DTEMISSAO'
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
      '-PERC_COMISSAO_PAGAR_NOTA=PERC_COMISSAO_PAGAR_NOTA'
      '-ANO_REF=ANO_REF'
      '-MES_REF=MES_REF'
      '-TITULO_CARTORIO=TITULO_CARTORIO'
      '-PERC_BASE_COMISSAO=PERC_BASE_COMISSAO'
      '-ID_TERMINAL=ID_TERMINAL'
      '-VLR_MULTA=VLR_MULTA')
    DataSet = cdsDuplicata
    BCDToCurrency = False
    Left = 472
    Top = 640
  end
  object frxDBNota: TfrxDBDataset
    UserName = 'frxDBNota'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'FILIAL=FILIAL'
      'SERIE=SERIE'
      'NUMNOTA=NUMNOTA'
      'DTEMISSAO=DTEMISSAO'
      '-ID_CFOP=ID_CFOP'
      '-ID_CLIENTE=ID_CLIENTE'
      '-ID_CONDPGTO=ID_CONDPGTO'
      '-ID_VENDEDOR=ID_VENDEDOR'
      '-VLR_NOTA=VLR_NOTA'
      'VLR_DUPLICATA=VLR_DUPLICATA'
      'VLR_ENTRADA=VLR_ENTRADA'
      '-CANCELADA=CANCELADA'
      '-DTSAIDAENTRADA=DTSAIDAENTRADA'
      '-ID_CLIENTETRIANG=ID_CLIENTETRIANG'
      '-NFERECIBO=NFERECIBO'
      '-NFEPROTOCOLO=NFEPROTOCOLO'
      '-NFECHAVEACESSO=NFECHAVEACESSO'
      '-NFEPROTOCOLO_CANCELADA=NFEPROTOCOLO_CANCELADA'
      '-NFEVERSAO=NFEVERSAO'
      '-NFEFINALIDADE=NFEFINALIDADE'
      '-NFEAMBIENTE=NFEAMBIENTE'
      '-NFEDENEGADA=NFEDENEGADA'
      'NOMECLIENTE=NOMECLIENTE'
      '-CODCFOP=CODCFOP'
      '-TIPO_NOTA=TIPO_NOTA'
      '-TIPO_REG=TIPO_REG'
      '-FANTASIA=FANTASIA'
      '-sdsNotaFiscal_Eventos=sdsNotaFiscal_Eventos'
      '-STATUS_MANIFESTO=STATUS_MANIFESTO'
      '-DESCRICAO_MANIFESTO=DESCRICAO_MANIFESTO'
      '-TIPO_PRAZO=TIPO_PRAZO'
      '-NFECODBARRA_CONTINGENCIA=NFECODBARRA_CONTINGENCIA'
      '-NFEENVIADA=NFEENVIADA'
      '-VLR_BASE_COMISSAO=VLR_BASE_COMISSAO'
      'NOME_VENDEDOR=NOME_VENDEDOR'
      '-DESCRICAO_PRAZO=DESCRICAO_PRAZO'
      '-UF_CLIENTE=UF_CLIENTE')
    DataSet = cdsNotaFiscal_Consulta
    BCDToCurrency = False
    Left = 504
    Top = 640
  end
  object frxDBFilial: TfrxDBDataset
    UserName = 'frxDBFilial'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NOME=NOME'
      '-NOME_INTERNO=NOME_INTERNO'
      'ENDERECO=ENDERECO'
      'COMPLEMENTO_END=COMPLEMENTO_END'
      'NUM_END=NUM_END'
      'BAIRRO=BAIRRO'
      'CEP=CEP'
      '-ID_CIDADE=ID_CIDADE'
      'CIDADE=CIDADE'
      '-UF=UF'
      'DDD1=DDD1'
      'FONE1=FONE1'
      '-DDD2=DDD2'
      '-FONE=FONE'
      '-DDDFAX=DDDFAX'
      '-FAX=FAX'
      '-PESSOA=PESSOA'
      'CNPJ_CPF=CNPJ_CPF'
      '-INSCR_EST=INSCR_EST'
      '-SIMPLES=SIMPLES'
      '-ENDLOGO=ENDLOGO'
      '-CALCULAR_IPI=CALCULAR_IPI'
      '-INATIVO=INATIVO'
      '-INSCMUNICIPAL=INSCMUNICIPAL'
      '-CNAE=CNAE'
      '-HOMEPAGE=HOMEPAGE'
      '-ID_REGIME_TRIB=ID_REGIME_TRIB'
      '-ID_PIS=ID_PIS'
      '-ID_COFINS=ID_COFINS'
      '-TIPO_PIS=TIPO_PIS'
      '-TIPO_COFINS=TIPO_COFINS'
      '-PERC_PIS=PERC_PIS'
      '-PERC_COFINS=PERC_COFINS'
      '-ID_CSTICMS=ID_CSTICMS'
      '-ID_CSTIPI=ID_CSTIPI'
      '-EMAIL_NFE=EMAIL_NFE'
      '-DTESTOQUE=DTESTOQUE'
      '-PRINCIPAL=PRINCIPAL'
      '-LIBERADO_ATE=LIBERADO_ATE'
      '-ULTIMO_ACESSO=ULTIMO_ACESSO'
      '-USARICMSSIMPLES=USARICMSSIMPLES'
      '-SERIENORMAL=SERIENORMAL'
      '-PERC_TRIB_NTS_IND=PERC_TRIB_NTS_IND'
      '-PERC_TRIB_NTS_VEN=PERC_TRIB_NTS_VEN'
      '-PERC_TRIB_NTS_IND_EXP=PERC_TRIB_NTS_IND_EXP'
      '-PERC_TRIB_NTS_VEN_EXP=PERC_TRIB_NTS_VEN_EXP'
      '-PERC_LISTA_CAMEX=PERC_LISTA_CAMEX'
      '-ID_ENQIPI=ID_ENQIPI'
      '-CALCULAR_DIFAL=CALCULAR_DIFAL'
      '-LOCALSERVIDORNFE=LOCALSERVIDORNFE'
      '-DIFAL_GERAR_VALORES=DIFAL_GERAR_VALORES'
      '-OBS_DIFAL=OBS_DIFAL'
      '-NUM_NOTA_RAMIRO=NUM_NOTA_RAMIRO')
    DataSet = cdsFilial
    BCDToCurrency = False
    Left = 536
    Top = 640
  end
  object qParametros_Custo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_CUSTO'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 752
    Top = 504
    object qParametros_CustoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_CustoREV_SOMAR_IPI: TStringField
      FieldName = 'REV_SOMAR_IPI'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoREV_SOMAR_FRETE: TStringField
      FieldName = 'REV_SOMAR_FRETE'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoREV_SOMAR_ST: TStringField
      FieldName = 'REV_SOMAR_ST'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoREV_SUB_ICMS: TStringField
      FieldName = 'REV_SUB_ICMS'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoREV_SUB_PISCOFINS: TStringField
      FieldName = 'REV_SUB_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoIND_SOMAR_IPI: TStringField
      FieldName = 'IND_SOMAR_IPI'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoIND_SOMAR_FRETE: TStringField
      FieldName = 'IND_SOMAR_FRETE'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoIND_SOMAR_ST: TStringField
      FieldName = 'IND_SOMAR_ST'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoIND_SUB_ICMS: TStringField
      FieldName = 'IND_SUB_ICMS'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoIND_SUB_PISCOFINS: TStringField
      FieldName = 'IND_SUB_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoCON_SOMAR_IPI: TStringField
      FieldName = 'CON_SOMAR_IPI'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoCON_SOMAR_ST: TStringField
      FieldName = 'CON_SOMAR_ST'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoCON_SOMAR_FRETE: TStringField
      FieldName = 'CON_SOMAR_FRETE'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoCON_SUB_ICMS: TStringField
      FieldName = 'CON_SUB_ICMS'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoCON_SUB_PISCOFINS: TStringField
      FieldName = 'CON_SUB_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoCON_SUB_IPI: TStringField
      FieldName = 'CON_SUB_IPI'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoIND_SUB_IPI: TStringField
      FieldName = 'IND_SUB_IPI'
      FixedChar = True
      Size = 1
    end
    object qParametros_CustoREV_SUB_IPI: TStringField
      FieldName = 'REV_SUB_IPI'
      FixedChar = True
      Size = 1
    end
  end
  object sdsNotaFiscal_Custo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NOTAFISCAL_CUSTO'#13#10'WHERE ID = :ID'
    DataSource = dsNotaFiscal_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 64
    Top = 269
    object sdsNotaFiscal_CustoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_CustoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_CustoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object sdsNotaFiscal_CustoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sdsNotaFiscal_CustoSD: TStringField
      FieldName = 'SD'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_CustoFRETE: TStringField
      FieldName = 'FRETE'
      FixedChar = True
      Size = 1
    end
  end
  object cdsNotaFiscal_Custo: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNotaFiscalsdsNotaFiscal_Custo
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 104
    Top = 269
    object cdsNotaFiscal_CustoID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_CustoITEM: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_CustoDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object cdsNotaFiscal_CustoVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
    end
    object cdsNotaFiscal_CustoSD: TStringField
      Alignment = taCenter
      DisplayLabel = '+ -'
      FieldName = 'SD'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_CustoFRETE: TStringField
      FieldName = 'FRETE'
      FixedChar = True
      Size = 1
    end
  end
  object dsNotaFiscal_Custo: TDataSource
    DataSet = cdsNotaFiscal_Custo
    Left = 136
    Top = 269
  end
  object sdsNotaFiscal_Copia: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM NOTAFISCAL_COPIA'#13#10'WHERE ID = :ID'#13#10'   AND ITEM = :' +
      'ITEM'#13#10
    DataSource = dsNotaFiscal_Mestre_Item
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
    Left = 64
    Top = 648
    object sdsNotaFiscal_CopiaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_CopiaITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNotaFiscal_CopiaID_RECNF: TIntegerField
      FieldName = 'ID_RECNF'
    end
    object sdsNotaFiscal_CopiaITEM_RECNF: TIntegerField
      FieldName = 'ITEM_RECNF'
    end
  end
  object cdsNotaFiscal_Copia: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNotaFiscal_ItenssdsNotaFiscal_Copia
    Params = <>
    Left = 120
    Top = 648
    object cdsNotaFiscal_CopiaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_CopiaITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNotaFiscal_CopiaID_RECNF: TIntegerField
      FieldName = 'ID_RECNF'
    end
    object cdsNotaFiscal_CopiaITEM_RECNF: TIntegerField
      FieldName = 'ITEM_RECNF'
    end
  end
  object dsNotaFiscal_Copia: TDataSource
    DataSet = cdsNotaFiscal_Copia
    Left = 168
    Top = 648
  end
  object mRecNFAux: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'ID_RecNF'
    Params = <>
    Left = 1000
    Top = 376
    Data = {
      2B0000009619E0BD0100000018000000010000000000030000002B000849445F
      5265634E4604000100000000000000}
    object mRecNFAuxID_RecNF: TIntegerField
      FieldName = 'ID_RecNF'
    end
  end
  object qPreFat: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_pedido'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'item_pedido'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select count(1) CONTADOR'
      'from prefat_itens i'
      'where (i.id_pedido = :id_pedido)'
      '  and (i.item_pedido = :item_pedido)')
    SQLConnection = dmDatabase.scoDados
    Left = 312
    Top = 56
    object qPreFatCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      Required = True
    end
  end
  object sdsImpNota: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT NT.id, NT.numnota, NT.filial, NT.serie, NT.dtemissao, NT.' +
      'dtsaidaentrada, NT.id_cfop,'#13#10'NT.id_cliente, NT.id_clientetriang,' +
      ' NT.vlr_nota, NT.vlr_duplicata, NT.cancelada, NT.nfedenegada,'#13#10'N' +
      'T.nfechaveacesso, NT.nferecibo, NT.nfeprotocolo, NT.nfeprotocolo' +
      '_cancelada, NT.tipo_prazo,'#13#10'NT.id_condpgto, NT.id_vendedor, NT.s' +
      'tatus_manifesto, NT.vlr_entrada,'#13#10'NT.NFEFINALIDADE, NT.NFEVERSAO' +
      ', NT.NFEAMBIENTE,'#13#10'NT.TIPO_NOTA, NT.TIPO_REG, NT.NFECODBARRA_CON' +
      'TINGENCIA,'#13#10'NT.NFEENVIADA,  NT.VLR_BASE_COMISSAO, CLI.UF UF_CLIE' +
      'NTE, NT.USUARIO,'#13#10'CLI.NOME NOMECLIENTE, CFOP.CODCFOP, CLI.FANTAS' +
      'IA, VEND.NOME NOME_VENDEDOR, NT.REC_COPIADO, '#13#10'CLI.cnpj_cpf CNPJ' +
      '_CPF_CLIENTE,  NT.ID_TRANSPORTADORA,  CLI.insc_suframa INSC_SUFR' +
      'AMA_CLIENTE,'#13#10'nt.localentrega,'#13#10'case'#13#10'  WHEN NT.tipo_prazo = '#39'P'#39 +
      ' then '#39'A PRAZO'#39#13#10'  WHEN NT.tipo_prazo = '#39'V'#39' then '#39'A VISTA'#39#13#10'  el' +
      'se '#39#39#13#10'  end DESCRICAO_PRAZO,'#13#10'FIL.nome NOME_FILIAL, FIL.enderec' +
      'o END_FILIAL, FIL.num_end NUM_END_FIL,'#13#10'FIL.bairro BAIRRO_FIL, F' +
      'IL.CIDADE CIDADE_FIL, FIL.uf UF_FIL, FIL.email EMAIL_FIL,'#13#10'FIL.h' +
      'omepage SITE_FIL, TRANSP.NOME NOME_TRANSPORTADORA, NT.placa, NT.' +
      'ufplaca,'#13#10'FIL.CEP CEP_FIL, FIL.ddd1 DDDFone_Fil, FIL.fone Fone_F' +
      'il, fil.dddfax DDDFAX_FIL,'#13#10'FIL.fax FAX_FIL, CLI.id_cidade,'#13#10'cas' +
      'e'#13#10'  when nt.localentrega = '#39'E'#39' then CLI.cidade_ent'#13#10'  ELSE cli.' +
      'cidade'#13#10'  end cidade_cli,'#13#10'case'#13#10'  when nt.localentrega = '#39'E'#39' th' +
      'en CLI.uf_ent'#13#10'  ELSE cli.uf'#13#10'  end uf_Cli'#13#10#13#10'FROM NOTAFISCAL NT' +
      #13#10'INNER JOIN PESSOA CLI'#13#10'  ON NT.ID_CLIENTE = CLI.CODIGO'#13#10'INNER ' +
      'JOIN FILIAL FIL'#13#10'ON NT.FILIAL = FIL.ID'#13#10'LEFT JOIN TAB_CFOP CFOP'#13 +
      #10'  ON NT.ID_CFOP = CFOP.ID'#13#10'LEFT JOIN PESSOA VEND'#13#10'ON NT.id_vend' +
      'edor = VEND.CODIGO'#13#10'LEFT JOIN PESSOA TRANSP'#13#10'ON NT.id_transporta' +
      'dora = TRANSP.CODIGO'#13#10'WHERE NT.ID = :ID'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 609
    Top = 640
  end
  object dspImpNota: TDataSetProvider
    DataSet = sdsImpNota
    Left = 641
    Top = 640
  end
  object cdsImpNota: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspImpNota'
    OnCalcFields = cdsNotaFiscal_ConsultaCalcFields
    Left = 681
    Top = 640
    object cdsImpNotaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsImpNotaNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsImpNotaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsImpNotaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsImpNotaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsImpNotaDTSAIDAENTRADA: TDateField
      FieldName = 'DTSAIDAENTRADA'
    end
    object cdsImpNotaID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsImpNotaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsImpNotaID_CLIENTETRIANG: TIntegerField
      FieldName = 'ID_CLIENTETRIANG'
    end
    object cdsImpNotaVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
    end
    object cdsImpNotaVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object cdsImpNotaCANCELADA: TStringField
      FieldName = 'CANCELADA'
      FixedChar = True
      Size = 1
    end
    object cdsImpNotaNFEDENEGADA: TStringField
      FieldName = 'NFEDENEGADA'
      FixedChar = True
      Size = 1
    end
    object cdsImpNotaNFECHAVEACESSO: TStringField
      FieldName = 'NFECHAVEACESSO'
      Size = 44
    end
    object cdsImpNotaNFERECIBO: TStringField
      FieldName = 'NFERECIBO'
      Size = 45
    end
    object cdsImpNotaNFEPROTOCOLO: TStringField
      FieldName = 'NFEPROTOCOLO'
      Size = 45
    end
    object cdsImpNotaNFEPROTOCOLO_CANCELADA: TStringField
      FieldName = 'NFEPROTOCOLO_CANCELADA'
      Size = 45
    end
    object cdsImpNotaTIPO_PRAZO: TStringField
      FieldName = 'TIPO_PRAZO'
      FixedChar = True
      Size = 1
    end
    object cdsImpNotaID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsImpNotaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsImpNotaSTATUS_MANIFESTO: TStringField
      FieldName = 'STATUS_MANIFESTO'
      Size = 3
    end
    object cdsImpNotaVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object cdsImpNotaNFEFINALIDADE: TStringField
      FieldName = 'NFEFINALIDADE'
      Size = 1
    end
    object cdsImpNotaNFEVERSAO: TStringField
      FieldName = 'NFEVERSAO'
      Size = 10
    end
    object cdsImpNotaNFEAMBIENTE: TStringField
      FieldName = 'NFEAMBIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsImpNotaTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsImpNotaTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsImpNotaNFECODBARRA_CONTINGENCIA: TStringField
      FieldName = 'NFECODBARRA_CONTINGENCIA'
      Size = 44
    end
    object cdsImpNotaNFEENVIADA: TStringField
      FieldName = 'NFEENVIADA'
      FixedChar = True
      Size = 1
    end
    object cdsImpNotaVLR_BASE_COMISSAO: TFloatField
      FieldName = 'VLR_BASE_COMISSAO'
    end
    object cdsImpNotaUF_CLIENTE: TStringField
      FieldName = 'UF_CLIENTE'
      FixedChar = True
      Size = 2
    end
    object cdsImpNotaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsImpNotaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 60
    end
    object cdsImpNotaCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsImpNotaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsImpNotaNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 60
    end
    object cdsImpNotaREC_COPIADO: TStringField
      FieldName = 'REC_COPIADO'
      Size = 1
    end
    object cdsImpNotaCNPJ_CPF_CLIENTE: TStringField
      FieldName = 'CNPJ_CPF_CLIENTE'
    end
    object cdsImpNotaID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsImpNotaINSC_SUFRAMA_CLIENTE: TStringField
      FieldName = 'INSC_SUFRAMA_CLIENTE'
      Size = 9
    end
    object cdsImpNotaDESCRICAO_PRAZO: TStringField
      FieldName = 'DESCRICAO_PRAZO'
      Required = True
      FixedChar = True
      Size = 7
    end
    object cdsImpNotaNOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object cdsImpNotaEND_FILIAL: TStringField
      FieldName = 'END_FILIAL'
      Size = 60
    end
    object cdsImpNotaNUM_END_FIL: TStringField
      FieldName = 'NUM_END_FIL'
      Size = 15
    end
    object cdsImpNotaBAIRRO_FIL: TStringField
      FieldName = 'BAIRRO_FIL'
      Size = 30
    end
    object cdsImpNotaCIDADE_FIL: TStringField
      FieldName = 'CIDADE_FIL'
      Size = 40
    end
    object cdsImpNotaUF_FIL: TStringField
      FieldName = 'UF_FIL'
      Size = 2
    end
    object cdsImpNotaEMAIL_FIL: TStringField
      FieldName = 'EMAIL_FIL'
      Size = 40
    end
    object cdsImpNotaSITE_FIL: TStringField
      FieldName = 'SITE_FIL'
      Size = 250
    end
    object cdsImpNotaNOME_TRANSPORTADORA: TStringField
      FieldName = 'NOME_TRANSPORTADORA'
      Size = 60
    end
    object cdsImpNotaPLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object cdsImpNotaUFPLACA: TStringField
      FieldName = 'UFPLACA'
      Size = 2
    end
    object cdsImpNotaCEP_FIL: TStringField
      FieldName = 'CEP_FIL'
      Size = 9
    end
    object cdsImpNotaDDDFONE_FIL: TIntegerField
      FieldName = 'DDDFONE_FIL'
    end
    object cdsImpNotaFONE_FIL: TStringField
      FieldName = 'FONE_FIL'
      Size = 15
    end
    object cdsImpNotaDDDFAX_FIL: TIntegerField
      FieldName = 'DDDFAX_FIL'
    end
    object cdsImpNotaFAX_FIL: TStringField
      FieldName = 'FAX_FIL'
      Size = 15
    end
    object cdsImpNotaLOCALENTREGA: TStringField
      FieldName = 'LOCALENTREGA'
      Size = 1
    end
    object cdsImpNotaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsImpNotaCIDADE_CLI: TStringField
      FieldName = 'CIDADE_CLI'
      Size = 40
    end
    object cdsImpNotaUF_CLI: TStringField
      FieldName = 'UF_CLI'
      FixedChar = True
      Size = 2
    end
  end
  object dsImpNota: TDataSource
    DataSet = cdsImpNota
    Left = 721
    Top = 640
  end
  object frxImpNota: TfrxDBDataset
    UserName = 'frxImpNota'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NUMNOTA=NUMNOTA'
      'FILIAL=FILIAL'
      'SERIE=SERIE'
      'DTEMISSAO=DTEMISSAO'
      'DTSAIDAENTRADA=DTSAIDAENTRADA'
      'ID_CFOP=ID_CFOP'
      'ID_CLIENTE=ID_CLIENTE'
      'ID_CLIENTETRIANG=ID_CLIENTETRIANG'
      'VLR_NOTA=VLR_NOTA'
      'VLR_DUPLICATA=VLR_DUPLICATA'
      'CANCELADA=CANCELADA'
      'NFEDENEGADA=NFEDENEGADA'
      'NFECHAVEACESSO=NFECHAVEACESSO'
      'NFERECIBO=NFERECIBO'
      'NFEPROTOCOLO=NFEPROTOCOLO'
      'NFEPROTOCOLO_CANCELADA=NFEPROTOCOLO_CANCELADA'
      'TIPO_PRAZO=TIPO_PRAZO'
      'ID_CONDPGTO=ID_CONDPGTO'
      'ID_VENDEDOR=ID_VENDEDOR'
      'STATUS_MANIFESTO=STATUS_MANIFESTO'
      'VLR_ENTRADA=VLR_ENTRADA'
      'NFEFINALIDADE=NFEFINALIDADE'
      'NFEVERSAO=NFEVERSAO'
      'NFEAMBIENTE=NFEAMBIENTE'
      'TIPO_NOTA=TIPO_NOTA'
      'TIPO_REG=TIPO_REG'
      'NFECODBARRA_CONTINGENCIA=NFECODBARRA_CONTINGENCIA'
      'NFEENVIADA=NFEENVIADA'
      'VLR_BASE_COMISSAO=VLR_BASE_COMISSAO'
      'UF_CLIENTE=UF_CLIENTE'
      'USUARIO=USUARIO'
      'NOMECLIENTE=NOMECLIENTE'
      'CODCFOP=CODCFOP'
      'FANTASIA=FANTASIA'
      'NOME_VENDEDOR=NOME_VENDEDOR'
      'REC_COPIADO=REC_COPIADO'
      'CNPJ_CPF_CLIENTE=CNPJ_CPF_CLIENTE'
      'ID_TRANSPORTADORA=ID_TRANSPORTADORA'
      'INSC_SUFRAMA_CLIENTE=INSC_SUFRAMA_CLIENTE'
      'DESCRICAO_PRAZO=DESCRICAO_PRAZO'
      'NOME_FILIAL=NOME_FILIAL'
      'END_FILIAL=END_FILIAL'
      'NUM_END_FIL=NUM_END_FIL'
      'BAIRRO_FIL=BAIRRO_FIL'
      'CIDADE_FIL=CIDADE_FIL'
      'UF_FIL=UF_FIL'
      'EMAIL_FIL=EMAIL_FIL'
      'SITE_FIL=SITE_FIL'
      'NOME_TRANSPORTADORA=NOME_TRANSPORTADORA'
      'PLACA=PLACA'
      'UFPLACA=UFPLACA'
      'CEP_FIL=CEP_FIL'
      'DDDFONE_FIL=DDDFONE_FIL'
      'FONE_FIL=FONE_FIL'
      'DDDFAX_FIL=DDDFAX_FIL'
      'FAX_FIL=FAX_FIL'
      'LOCALENTREGA=LOCALENTREGA'
      'ID_CIDADE=ID_CIDADE'
      'CIDADE_CLI=CIDADE_CLI'
      'UF_CLI=UF_CLI')
    DataSet = cdsImpNota
    BCDToCurrency = False
    Left = 560
    Top = 640
  end
end
