object DMCopiarNota: TDMCopiarNota
  OldCreateOrder = False
  Left = 47
  Top = 16
  Height = 720
  Width = 1157
  object sdsNotaFiscal: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NOTAFISCAL'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 128
    Top = 5
    object sdsNotaFiscalID: TIntegerField
      FieldName = 'ID'
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
    object sdsNotaFiscalID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object sdsNotaFiscalID_TIPO_COBRANCA: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA'
    end
    object sdsNotaFiscalID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
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
    object sdsNotaFiscalSTATUS_MANIFESTO: TStringField
      FieldName = 'STATUS_MANIFESTO'
      Size = 3
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
    object sdsNotaFiscalID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object sdsNotaFiscalVLR_ADIANTAMENTO: TFloatField
      FieldName = 'VLR_ADIANTAMENTO'
    end
    object sdsNotaFiscalPERC_COMISSAO_PAGAR_NOTA: TFloatField
      FieldName = 'PERC_COMISSAO_PAGAR_NOTA'
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
    object sdsNotaFiscalQTD_TOTAL_PRODUTOS: TFloatField
      FieldName = 'QTD_TOTAL_PRODUTOS'
    end
  end
  object dspNotaFiscal: TDataSetProvider
    DataSet = sdsNotaFiscal
    Left = 184
    Top = 5
  end
  object cdsNotaFiscal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaFiscal'
    Left = 232
    Top = 5
    object cdsNotaFiscalFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object cdsNotaFiscalID: TIntegerField
      FieldName = 'ID'
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
      DisplayFormat = '0.00'
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
    object cdsNotaFiscalID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsNotaFiscalID_TIPO_COBRANCA: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA'
    end
    object cdsNotaFiscalID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsNotaFiscalVLR_ICMSSUBST_PROPRIO: TFloatField
      FieldName = 'VLR_ICMSSUBST_PROPRIO'
    end
    object cdsNotaFiscalBASE_ICMSSUBST_PROPRIO: TFloatField
      FieldName = 'BASE_ICMSSUBST_PROPRIO'
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
    object cdsNotaFiscalSTATUS_MANIFESTO: TStringField
      FieldName = 'STATUS_MANIFESTO'
      Size = 3
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
    object cdsNotaFiscalNOTA_ESTORNO: TStringField
      FieldName = 'NOTA_ESTORNO'
      FixedChar = True
      Size = 1
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
    object cdsNotaFiscalID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object cdsNotaFiscalVLR_ADIANTAMENTO: TFloatField
      FieldName = 'VLR_ADIANTAMENTO'
    end
    object cdsNotaFiscalPERC_COMISSAO_PAGAR_NOTA: TFloatField
      FieldName = 'PERC_COMISSAO_PAGAR_NOTA'
    end
    object cdsNotaFiscalVLR_ICMS_FCP: TFloatField
      FieldName = 'VLR_ICMS_FCP'
    end
    object cdsNotaFiscalVLR_ICMS_UF_DEST: TFloatField
      FieldName = 'VLR_ICMS_UF_DEST'
    end
    object cdsNotaFiscalVLR_ICMS_UF_REMET: TFloatField
      FieldName = 'VLR_ICMS_UF_REMET'
    end
    object cdsNotaFiscalVLR_BASE_COMISSAO: TFloatField
      FieldName = 'VLR_BASE_COMISSAO'
    end
    object cdsNotaFiscalQTD_TOTAL_PRODUTOS: TFloatField
      FieldName = 'QTD_TOTAL_PRODUTOS'
    end
  end
  object dsNotaFiscal: TDataSource
    DataSet = cdsNotaFiscal
    Left = 280
    Top = 5
  end
  object dsNotaFiscal_Mestre: TDataSource
    DataSet = sdsNotaFiscal
    Left = 64
    Top = 41
  end
  object sdsNotaFiscal_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT NI.*, NCM.NCM, CFOP.CODCFOP, CSTICMS.COD_CST, CSTIPI.COD_' +
      'IPI, COFINS.CODIGO CODCOFINS, PIS.CODIGO CODPIS, CSTICMS.PERCENT' +
      'UAL PERC_TABCSTICMS, CFOP.MAOOBRA'#13#10'FROM NOTAFISCAL_ITENS NI'#13#10'INN' +
      'ER JOIN TAB_NCM NCM'#13#10'ON NI.ID_NCM = NCM.ID'#13#10'INNER JOIN TAB_CFOP ' +
      'CFOP'#13#10'ON NI.ID_CFOP = CFOP.ID'#13#10'LEFT JOIN TAB_CSTICMS CSTICMS'#13#10'ON' +
      ' NI.ID_CSTICMS = CSTICMS.ID'#13#10'LEFT JOIN TAB_CSTIPI CSTIPI'#13#10'ON NI.' +
      'ID_CSTIPI = CSTIPI.ID'#13#10'LEFT JOIN TAB_COFINS COFINS'#13#10'ON NI.ID_COF' +
      'INS = COFINS.ID'#13#10'LEFT JOIN TAB_PIS PIS'#13#10'ON NI.ID_PIS = PIS.ID'#13#10'W' +
      'HERE NI.ID = :ID'#13#10
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
    Left = 128
    Top = 72
    object sdsNotaFiscal_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNotaFiscal_ItensITEM: TIntegerField
      FieldName = 'ITEM'
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
    object sdsNotaFiscal_ItensPERC_IMPORTACAO: TFloatField
      FieldName = 'PERC_IMPORTACAO'
    end
    object sdsNotaFiscal_ItensPERC_MVA: TFloatField
      FieldName = 'PERC_MVA'
    end
    object sdsNotaFiscal_ItensPERC_REDUCAO_ICMSSUBST: TFloatField
      FieldName = 'PERC_REDUCAO_ICMSSUBST'
    end
    object sdsNotaFiscal_ItensCONTA_ORCAMENTO_ID: TIntegerField
      FieldName = 'CONTA_ORCAMENTO_ID'
    end
    object sdsNotaFiscal_ItensCENTRO_CUSTO_ID: TIntegerField
      FieldName = 'CENTRO_CUSTO_ID'
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
    object sdsNotaFiscal_ItensTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      Size = 1
    end
    object sdsNotaFiscal_ItensTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object sdsNotaFiscal_ItensVLR_TRIBUTOS: TFloatField
      FieldName = 'VLR_TRIBUTOS'
    end
    object sdsNotaFiscal_ItensPOSSUI_VALE: TStringField
      FieldName = 'POSSUI_VALE'
      FixedChar = True
      Size = 1
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
    object sdsNotaFiscal_ItensVLR_ICMSDESONERADO: TFloatField
      FieldName = 'VLR_ICMSDESONERADO'
    end
    object sdsNotaFiscal_ItensCOD_DESONERACAO: TSmallintField
      FieldName = 'COD_DESONERACAO'
    end
    object sdsNotaFiscal_ItensVLR_ICMSOPERACAO: TFloatField
      FieldName = 'VLR_ICMSOPERACAO'
    end
    object sdsNotaFiscal_ItensPERC_TRIBUTO_FEDERAL: TFloatField
      FieldName = 'PERC_TRIBUTO_FEDERAL'
    end
    object sdsNotaFiscal_ItensITEM_PEDIDO_FUT: TIntegerField
      FieldName = 'ITEM_PEDIDO_FUT'
    end
    object sdsNotaFiscal_ItensNUM_OSERVICO: TIntegerField
      FieldName = 'NUM_OSERVICO'
    end
    object sdsNotaFiscal_ItensPERC_TRIBUTO_ESTADUAL: TFloatField
      FieldName = 'PERC_TRIBUTO_ESTADUAL'
    end
    object sdsNotaFiscal_ItensPERC_TRIBUTO_MUNICIPAL: TFloatField
      FieldName = 'PERC_TRIBUTO_MUNICIPAL'
    end
    object sdsNotaFiscal_ItensVLR_TRIBUTOS_ESTADUAL: TFloatField
      FieldName = 'VLR_TRIBUTOS_ESTADUAL'
    end
    object sdsNotaFiscal_ItensVLR_TRIBUTOS_MUNICIPAL: TFloatField
      FieldName = 'VLR_TRIBUTOS_MUNICIPAL'
    end
    object sdsNotaFiscal_ItensVERSAO_TRIBUTO: TStringField
      FieldName = 'VERSAO_TRIBUTO'
      Size = 15
    end
    object sdsNotaFiscal_ItensFONTE_TRIBUTO: TStringField
      FieldName = 'FONTE_TRIBUTO'
      Size = 30
    end
    object sdsNotaFiscal_ItensVLR_TRIBUTOS_FEDERAL: TFloatField
      FieldName = 'VLR_TRIBUTOS_FEDERAL'
    end
    object sdsNotaFiscal_ItensITEM_ORIGINAL: TIntegerField
      FieldName = 'ITEM_ORIGINAL'
    end
    object sdsNotaFiscal_ItensPERC_DIFERIMENTO: TFloatField
      FieldName = 'PERC_DIFERIMENTO'
    end
    object sdsNotaFiscal_ItensDIFERENCA_ICMS: TStringField
      FieldName = 'DIFERENCA_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_ItensNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object sdsNotaFiscal_ItensID_ENQIPI: TIntegerField
      FieldName = 'ID_ENQIPI'
    end
    object sdsNotaFiscal_ItensVLR_ICMSDIFERIDO: TFloatField
      FieldName = 'VLR_ICMSDIFERIDO'
    end
    object sdsNotaFiscal_ItensVLR_TAXACISCOMEX: TFloatField
      FieldName = 'VLR_TAXACISCOMEX'
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
    object sdsNotaFiscal_ItensGRAVACAO_COM_ERRO: TStringField
      FieldName = 'GRAVACAO_COM_ERRO'
      Size = 3
    end
    object sdsNotaFiscal_ItensGRAVOU_TAB_TAMANHO: TStringField
      FieldName = 'GRAVOU_TAB_TAMANHO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsNotaFiscal_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNotaFiscalsdsNotaFiscal_Itens
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 184
    Top = 72
    object cdsNotaFiscal_ItensID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscal_ItensITEM: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
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
    object cdsNotaFiscal_ItensID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object cdsNotaFiscal_ItensID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
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
      DisplayFormat = '0.000'
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
    end
    object cdsNotaFiscal_ItensQTDDEVOLVIDA: TFloatField
      FieldName = 'QTDDEVOLVIDA'
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
    end
    object cdsNotaFiscal_ItensQTD_PACOTE: TFloatField
      FieldName = 'QTD_PACOTE'
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
    end
    object cdsNotaFiscal_ItensVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object cdsNotaFiscal_ItensPERC_IMPORTACAO: TFloatField
      FieldName = 'PERC_IMPORTACAO'
    end
    object cdsNotaFiscal_ItensPERC_MVA: TFloatField
      FieldName = 'PERC_MVA'
    end
    object cdsNotaFiscal_ItensPERC_REDUCAO_ICMSSUBST: TFloatField
      FieldName = 'PERC_REDUCAO_ICMSSUBST'
    end
    object cdsNotaFiscal_ItensCONTA_ORCAMENTO_ID: TIntegerField
      FieldName = 'CONTA_ORCAMENTO_ID'
    end
    object cdsNotaFiscal_ItensCENTRO_CUSTO_ID: TIntegerField
      FieldName = 'CENTRO_CUSTO_ID'
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
    object cdsNotaFiscal_ItensTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      Size = 1
    end
    object cdsNotaFiscal_ItensTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsNotaFiscal_ItensVLR_TRIBUTOS: TFloatField
      FieldName = 'VLR_TRIBUTOS'
    end
    object cdsNotaFiscal_ItensPOSSUI_VALE: TStringField
      FieldName = 'POSSUI_VALE'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensPERC_ICMSSUBST_INTERNO: TFloatField
      FieldName = 'PERC_ICMSSUBST_INTERNO'
    end
    object cdsNotaFiscal_ItensVLR_ICMSSUBST_INTERNO: TFloatField
      FieldName = 'VLR_ICMSSUBST_INTERNO'
    end
    object cdsNotaFiscal_ItensPERC_ICMSSUBST_PROPRIO: TFloatField
      FieldName = 'PERC_ICMSSUBST_PROPRIO'
    end
    object cdsNotaFiscal_ItensVLR_ICMSSUBST_PROPRIO: TFloatField
      FieldName = 'VLR_ICMSSUBST_PROPRIO'
    end
    object cdsNotaFiscal_ItensBASE_ICMSSUBST_PROPRIO: TFloatField
      FieldName = 'BASE_ICMSSUBST_PROPRIO'
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
    object cdsNotaFiscal_ItenssdsNotaFiscal_DrawBack: TDataSetField
      FieldName = 'sdsNotaFiscal_DrawBack'
    end
    object cdsNotaFiscal_ItensPERC_TRIBUTO_FEDERAL: TFloatField
      FieldName = 'PERC_TRIBUTO_FEDERAL'
    end
    object cdsNotaFiscal_ItensITEM_PEDIDO_FUT: TIntegerField
      FieldName = 'ITEM_PEDIDO_FUT'
    end
    object cdsNotaFiscal_ItensNUM_OSERVICO: TIntegerField
      FieldName = 'NUM_OSERVICO'
    end
    object cdsNotaFiscal_ItensPERC_TRIBUTO_ESTADUAL: TFloatField
      FieldName = 'PERC_TRIBUTO_ESTADUAL'
    end
    object cdsNotaFiscal_ItensPERC_TRIBUTO_MUNICIPAL: TFloatField
      FieldName = 'PERC_TRIBUTO_MUNICIPAL'
    end
    object cdsNotaFiscal_ItensVLR_TRIBUTOS_ESTADUAL: TFloatField
      FieldName = 'VLR_TRIBUTOS_ESTADUAL'
    end
    object cdsNotaFiscal_ItensVLR_TRIBUTOS_MUNICIPAL: TFloatField
      FieldName = 'VLR_TRIBUTOS_MUNICIPAL'
    end
    object cdsNotaFiscal_ItensVERSAO_TRIBUTO: TStringField
      FieldName = 'VERSAO_TRIBUTO'
      Size = 15
    end
    object cdsNotaFiscal_ItensFONTE_TRIBUTO: TStringField
      FieldName = 'FONTE_TRIBUTO'
      Size = 30
    end
    object cdsNotaFiscal_ItensVLR_TRIBUTOS_FEDERAL: TFloatField
      FieldName = 'VLR_TRIBUTOS_FEDERAL'
    end
    object cdsNotaFiscal_ItensITEM_ORIGINAL: TIntegerField
      FieldName = 'ITEM_ORIGINAL'
    end
    object cdsNotaFiscal_ItensPERC_DIFERIMENTO: TFloatField
      FieldName = 'PERC_DIFERIMENTO'
    end
    object cdsNotaFiscal_ItensDIFERENCA_ICMS: TStringField
      FieldName = 'DIFERENCA_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_ItensNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object cdsNotaFiscal_ItensID_ENQIPI: TIntegerField
      FieldName = 'ID_ENQIPI'
    end
    object cdsNotaFiscal_ItensVLR_ICMSDIFERIDO: TFloatField
      FieldName = 'VLR_ICMSDIFERIDO'
    end
    object cdsNotaFiscal_ItensVLR_TAXACISCOMEX: TFloatField
      FieldName = 'VLR_TAXACISCOMEX'
    end
    object cdsNotaFiscal_ItensPERC_ICMS_FCP: TFloatField
      FieldName = 'PERC_ICMS_FCP'
    end
    object cdsNotaFiscal_ItensPERC_ICMS_UF_DEST: TFloatField
      FieldName = 'PERC_ICMS_UF_DEST'
    end
    object cdsNotaFiscal_ItensPERC_ICMS_PARTILHA: TFloatField
      FieldName = 'PERC_ICMS_PARTILHA'
    end
    object cdsNotaFiscal_ItensVLR_ICMS_FCP: TFloatField
      FieldName = 'VLR_ICMS_FCP'
    end
    object cdsNotaFiscal_ItensVLR_ICMS_UF_DEST: TFloatField
      FieldName = 'VLR_ICMS_UF_DEST'
    end
    object cdsNotaFiscal_ItensVLR_ICMS_UF_REMET: TFloatField
      FieldName = 'VLR_ICMS_UF_REMET'
    end
    object cdsNotaFiscal_ItensPERC_ICMS_INTER: TFloatField
      FieldName = 'PERC_ICMS_INTER'
    end
    object cdsNotaFiscal_ItenssdsNotaFiscal_Tam: TDataSetField
      FieldName = 'sdsNotaFiscal_Tam'
    end
    object cdsNotaFiscal_ItensGRAVACAO_COM_ERRO: TStringField
      FieldName = 'GRAVACAO_COM_ERRO'
      Size = 3
    end
    object cdsNotaFiscal_ItensGRAVOU_TAB_TAMANHO: TStringField
      FieldName = 'GRAVOU_TAB_TAMANHO'
      FixedChar = True
      Size = 1
    end
  end
  object dsNotaFiscal_Itens: TDataSource
    DataSet = cdsNotaFiscal_Itens
    Left = 256
    Top = 72
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
    Left = 104
    Top = 359
    object sdsNotaFiscal_DescontoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNotaFiscal_DescontoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsNotaFiscal_DescontoPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
  end
  object cdsNotaFiscal_Desconto: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNotaFiscalsdsNotaFiscal_Desconto
    Params = <>
    Left = 160
    Top = 359
    object cdsNotaFiscal_DescontoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscal_DescontoITEM: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
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
    Left = 232
    Top = 359
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
    Left = 104
    Top = 401
    object sdsNotaFiscal_LacreID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNotaFiscal_LacreITEM: TIntegerField
      FieldName = 'ITEM'
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
    Params = <>
    Left = 160
    Top = 401
    object cdsNotaFiscal_LacreID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscal_LacreITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsNotaFiscal_LacreNUMLACRE: TStringField
      FieldName = 'NUMLACRE'
      Size = 60
    end
  end
  object dsNotaFiscal_Lacre: TDataSource
    DataSet = cdsNotaFiscal_Lacre
    Left = 232
    Top = 401
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
    Left = 104
    Top = 442
    object sdsNotaFiscal_NFeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNotaFiscal_NFeITEM: TIntegerField
      FieldName = 'ITEM'
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
    Left = 160
    Top = 442
    object cdsNotaFiscal_NFeID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscal_NFeITEM: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
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
    Left = 232
    Top = 442
  end
  object sdsNotaFiscal_Parc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NOTAFISCAL_PARC'#13#10'WHERE ID = :ID'#13#10
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
    Left = 104
    Top = 483
    object sdsNotaFiscal_ParcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNotaFiscal_ParcITEM: TIntegerField
      FieldName = 'ITEM'
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
    Params = <>
    Left = 160
    Top = 483
    object cdsNotaFiscal_ParcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscal_ParcITEM: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Parcela'
      FieldName = 'ITEM'
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
  end
  object dsNotaFiscal_Parc: TDataSource
    DataSet = cdsNotaFiscal_Parc
    Left = 232
    Top = 483
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
    Left = 104
    Top = 524
    object sdsNotaFiscal_ReboqueID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNotaFiscal_ReboqueITEM: TIntegerField
      FieldName = 'ITEM'
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
    Params = <>
    Left = 160
    Top = 524
    object cdsNotaFiscal_ReboqueID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscal_ReboqueITEM: TIntegerField
      FieldName = 'ITEM'
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
    Left = 232
    Top = 524
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
    Left = 104
    Top = 567
    object sdsNotaFiscal_RefID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNotaFiscal_RefITEM: TIntegerField
      FieldName = 'ITEM'
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
    Params = <>
    Left = 160
    Top = 567
    object cdsNotaFiscal_RefID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscal_RefITEM: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
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
    Left = 232
    Top = 567
  end
  object dsNotaFiscal_Mestre_Item: TDataSource
    DataSet = sdsNotaFiscal_Itens
    Left = 64
    Top = 109
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
    Left = 160
    Top = 144
    object sdsNotaFiscal_PedID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNotaFiscal_PedITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsNotaFiscal_PedITEM_NOTAPED: TIntegerField
      FieldName = 'ITEM_NOTAPED'
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
    Left = 208
    Top = 146
    object cdsNotaFiscal_PedID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscal_PedITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsNotaFiscal_PedITEM_NOTAPED: TIntegerField
      FieldName = 'ITEM_NOTAPED'
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
    Left = 264
    Top = 146
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
    Left = 160
    Top = 192
    object sdsNotaFiscal_NDevolvidaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNotaFiscal_NDevolvidaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsNotaFiscal_NDevolvidaITEM_NDEV: TIntegerField
      FieldName = 'ITEM_NDEV'
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
    Left = 208
    Top = 192
    object cdsNotaFiscal_NDevolvidaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscal_NDevolvidaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsNotaFiscal_NDevolvidaITEM_NDEV: TIntegerField
      FieldName = 'ITEM_NDEV'
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
    Left = 264
    Top = 192
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
    Left = 160
    Top = 240
    object sdsNotaFiscal_ImpID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNotaFiscal_ImpITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsNotaFiscal_ImpITEM_IMP: TIntegerField
      FieldName = 'ITEM_IMP'
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
    object sdsNotaFiscal_ImpNUMFATURA: TStringField
      FieldName = 'NUMFATURA'
      Size = 15
    end
    object sdsNotaFiscal_ImpLOCAL_DESEMBARACO: TStringField
      FieldName = 'LOCAL_DESEMBARACO'
      Size = 60
    end
    object sdsNotaFiscal_ImpUF: TStringField
      FieldName = 'UF'
      Size = 2
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
    Left = 208
    Top = 241
    object cdsNotaFiscal_ImpID: TIntegerField
      DisplayLabel = 'ID Nota'
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscal_ImpITEM: TIntegerField
      DisplayLabel = 'Item Nota'
      FieldName = 'ITEM'
      Required = True
    end
    object cdsNotaFiscal_ImpITEM_IMP: TIntegerField
      DisplayLabel = 'Item Importa'#231#227'o'
      FieldName = 'ITEM_IMP'
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
    Left = 264
    Top = 241
  end
  object dsNotaFiscal_Mestre_Imp: TDataSource
    DataSet = sdsNotaFiscal_Imp
    Left = 96
    Top = 273
  end
  object cdsNotaFiscal_Imp_Ad: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNotaFiscal_ImpsdsNotaFiscal_Imp_Ad
    IndexFieldNames = 'ID;ITEM;ITEM_IMP;ITEM_AD'
    Params = <>
    Left = 232
    Top = 304
    object cdsNotaFiscal_Imp_AdID: TIntegerField
      DisplayLabel = 'ID Nota'
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscal_Imp_AdITEM: TIntegerField
      DisplayLabel = 'Item Nota'
      FieldName = 'ITEM'
      Required = True
    end
    object cdsNotaFiscal_Imp_AdITEM_IMP: TIntegerField
      DisplayLabel = 'Item Importa'#231#227'o'
      FieldName = 'ITEM_IMP'
      Required = True
    end
    object cdsNotaFiscal_Imp_AdITEM_AD: TIntegerField
      DisplayLabel = 'Item Adi'#231#227'o'
      FieldName = 'ITEM_AD'
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
    Left = 280
    Top = 304
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
    Left = 176
    Top = 304
    object sdsNotaFiscal_Imp_AdID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNotaFiscal_Imp_AdITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsNotaFiscal_Imp_AdITEM_IMP: TIntegerField
      FieldName = 'ITEM_IMP'
      Required = True
    end
    object sdsNotaFiscal_Imp_AdITEM_AD: TIntegerField
      FieldName = 'ITEM_AD'
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
  object qNotaEntrada_Itens: TSQLQuery
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
      'FROM NOTAFISCAL_ITENS'
      'WHERE ID = :ID'
      '    AND ITEM = :ITEM')
    SQLConnection = dmDatabase.scoDados
    Left = 648
    Top = 216
    object qNotaEntrada_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qNotaEntrada_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qNotaEntrada_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object qNotaEntrada_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object qNotaEntrada_ItensQTDRESTANTE: TFloatField
      FieldName = 'QTDRESTANTE'
    end
    object qNotaEntrada_ItensQTDDEVOLVIDA: TFloatField
      FieldName = 'QTDDEVOLVIDA'
    end
  end
  object qCFOP: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID, CODCFOP'
      'FROM TAB_CFOP'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 528
    Top = 160
    object qCFOPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCFOPCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
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
    Left = 104
    Top = 616
    object sdsNotaFiscal_DrawBackID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNotaFiscal_DrawBackITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsNotaFiscal_DrawBackITEM_DRAWBACK: TIntegerField
      FieldName = 'ITEM_DRAWBACK'
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
    Left = 144
    Top = 616
    object cdsNotaFiscal_DrawBackID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscal_DrawBackITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsNotaFiscal_DrawBackITEM_DRAWBACK: TIntegerField
      FieldName = 'ITEM_DRAWBACK'
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
    Left = 184
    Top = 616
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
    Left = 352
    Top = 88
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
    Left = 392
    Top = 88
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
    Left = 432
    Top = 88
  end
end
