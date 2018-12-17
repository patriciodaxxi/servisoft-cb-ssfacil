object DMRecNF: TDMRecNF
  OldCreateOrder = False
  Left = 401
  Top = 219
  Height = 406
  Width = 692
  object sdsNotaFiscal: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT NF.*, CLI.NOME NOME_CLI, CLI.EMAIL_NFE EMAIL_NFE_CLI, CLI' +
      '.ENDERECO ENDERECO_CLI,'#13#10'(CLI.ENDERECO || '#39', '#39'||  CLI.NUM_END ||' +
      ' '#39' '#39'|| CLI.COMPLEMENTO_END) ENDERECO_CLI2,'#13#10'CLI.NUM_END NUM_END_' +
      'CLI, CLI.COMPLEMENTO_END COMPLEMENTO_END_CLI,'#13#10'CLI.BAIRRO BAIRRO' +
      '_CLI, CLI.ID_CIDADE ID_CIDADE_CLI, CLI.UF UF_CLI,'#13#10'CLI.CNPJ_CPF ' +
      'CNPJ_CPF_CLI, CLI.INSCR_EST INSCR_EST_CLI, CLI.CIDADE CIDADE_CLI' +
      ', CLI.CEP CEP_CLI,'#13#10'CLI.DDDFONE1 DDDFONE1_CLI, CLI.TELEFONE1 TEL' +
      'EFONE1_CLI, CLI.DDDFONE2 DDDFONE2_CLI, CLI.TELEFONE2 TELEFONE2_C' +
      'LI, '#13#10'CLI.DDDFAX DDDFAX_CLI, CLI.FAX FAX_CLI, '#13#10'TRANSP.NOME NOME' +
      '_TRANSP, TRANSP.EMAIL_NFE EMAIL_NFE_TRANSP, TRANSP.ENDERECO ENDE' +
      'RECO_TRANSP,'#13#10'TRANSP.NUM_END NUM_END_TRANSP,  (TRANSP.ENDERECO |' +
      '| '#39', '#39'||  TRANSP.NUM_END || '#39' '#39'|| TRANSP.COMPLEMENTO_END) ENDERE' +
      'CO_TRANSP2,'#13#10'TRANSP.COMPLEMENTO_END COMPLEMENTO_END_TRANSP,'#13#10'TRA' +
      'NSP.BAIRRO BAIRRO_TRANSP, TRANSP.ID_CIDADE ID_CIDADE_TRANSP, TRA' +
      'NSP.UF UF_TRANSP,'#13#10'TRANSP.CNPJ_CPF CNPJ_CPF_TRANSP, TRANSP.INSCR' +
      '_EST INSCR_EST_TRANSP, TRANSP.CIDADE CIDADE_TRANSP, TRANSP.CEP C' +
      'EP_TRANSP,'#13#10'F.nome NOME_FIL, F.endereco ENDERECO_FIL, F.num_end ' +
      'NUM_END_FIL,'#13#10'F.bairro BAIRRO_FIL, F.cidade CIDADE_FIL, F.UF UF_' +
      'FIL, F.cnpj_cpf CNPJ_CFP_FIL, F.CEP CEP_FIL,'#13#10'F.inscr_est INSCR_' +
      'EST_FIL, F.ddd1 DDD_FIL, F.fone FONE_FIL, COND.nome NOME_CONDPGT' +
      'O,'#13#10'(NF.vlr_nota + NF.vlr_desconto) VLR_NOTA2'#13#10'FROM NOTAFISCAL N' +
      'F'#13#10'INNER JOIN PESSOA CLI'#13#10'ON NF.ID_CLIENTE = CLI.CODIGO'#13#10'INNER J' +
      'OIN FILIAL F'#13#10'ON nf.filial = f.id'#13#10'LEFT JOIN PESSOA TRANSP'#13#10'ON N' +
      'F.ID_TRANSPORTADORA = TRANSP.CODIGO'#13#10'LEFT JOIN CONDPGTO COND'#13#10'ON' +
      ' NF.id_condpgto = COND.ID'#13#10'WHERE NF.ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 69
  end
  object dspNotaFiscal: TDataSetProvider
    DataSet = sdsNotaFiscal
    Left = 128
    Top = 69
  end
  object cdsNotaFiscal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaFiscal'
    Left = 192
    Top = 69
    object cdsNotaFiscalID: TIntegerField
      FieldName = 'ID'
    end
    object cdsNotaFiscalFILIAL: TIntegerField
      FieldName = 'FILIAL'
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
    object cdsNotaFiscalVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalVLR_ITENS: TFloatField
      FieldName = 'VLR_ITENS'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalVLR_SEGURO: TFloatField
      FieldName = 'VLR_SEGURO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalVLR_OUTRASDESP: TFloatField
      FieldName = 'VLR_OUTRASDESP'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalBASE_ICMSTRANSF: TFloatField
      FieldName = 'BASE_ICMSTRANSF'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalPERC_TRANSF: TFloatField
      FieldName = 'PERC_TRANSF'
    end
    object cdsNotaFiscalVLR_TRANSF: TFloatField
      FieldName = 'VLR_TRANSF'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalVLR_TAXACISCOMEX: TFloatField
      FieldName = 'VLR_TAXACISCOMEX'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalVLR_OUTROS: TFloatField
      FieldName = 'VLR_OUTROS'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalPERC_ICMSSIMPLES: TFloatField
      FieldName = 'PERC_ICMSSIMPLES'
    end
    object cdsNotaFiscalVLR_IMPORTACAO: TFloatField
      FieldName = 'VLR_IMPORTACAO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalBASE_ICMSOUTROS: TFloatField
      FieldName = 'BASE_ICMSOUTROS'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalVLR_ICMSOUTROS: TFloatField
      FieldName = 'VLR_ICMSOUTROS'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalVLR_DUPLICATAOUTROS: TFloatField
      FieldName = 'VLR_DUPLICATAOUTROS'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalVLR_ADUANEIRA: TFloatField
      FieldName = 'VLR_ADUANEIRA'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsNotaFiscalPERC_ICMS_PISCOFINS: TFloatField
      FieldName = 'PERC_ICMS_PISCOFINS'
    end
    object cdsNotaFiscalPERC_ICMS_OUTROSVALORES: TFloatField
      FieldName = 'PERC_ICMS_OUTROSVALORES'
    end
    object cdsNotaFiscalPERC_ICMS_FRETE: TFloatField
      FieldName = 'PERC_ICMS_FRETE'
    end
    object cdsNotaFiscalPERC_DESCONTOORIG: TFloatField
      FieldName = 'PERC_DESCONTOORIG'
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
    object cdsNotaFiscalTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
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
    object cdsNotaFiscalTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
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
    object cdsNotaFiscalDTINICIO_DUPLICATA: TDateField
      FieldName = 'DTINICIO_DUPLICATA'
    end
    object cdsNotaFiscalTIPO_PRAZO: TStringField
      FieldName = 'TIPO_PRAZO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsNotaFiscalNOME_CLI: TStringField
      FieldName = 'NOME_CLI'
      Size = 60
    end
    object cdsNotaFiscalEMAIL_NFE_CLI: TStringField
      FieldName = 'EMAIL_NFE_CLI'
      Size = 250
    end
    object cdsNotaFiscalENDERECO_CLI: TStringField
      FieldName = 'ENDERECO_CLI'
      Size = 60
    end
    object cdsNotaFiscalNUM_END_CLI: TStringField
      FieldName = 'NUM_END_CLI'
    end
    object cdsNotaFiscalCOMPLEMENTO_END_CLI: TStringField
      FieldName = 'COMPLEMENTO_END_CLI'
      Size = 60
    end
    object cdsNotaFiscalBAIRRO_CLI: TStringField
      FieldName = 'BAIRRO_CLI'
      Size = 30
    end
    object cdsNotaFiscalID_CIDADE_CLI: TIntegerField
      FieldName = 'ID_CIDADE_CLI'
    end
    object cdsNotaFiscalUF_CLI: TStringField
      FieldName = 'UF_CLI'
      FixedChar = True
      Size = 2
    end
    object cdsNotaFiscalCNPJ_CPF_CLI: TStringField
      FieldName = 'CNPJ_CPF_CLI'
      Size = 18
    end
    object cdsNotaFiscalINSCR_EST_CLI: TStringField
      FieldName = 'INSCR_EST_CLI'
      Size = 18
    end
    object cdsNotaFiscalCIDADE_CLI: TStringField
      FieldName = 'CIDADE_CLI'
      Size = 40
    end
    object cdsNotaFiscalNOME_TRANSP: TStringField
      FieldName = 'NOME_TRANSP'
      Size = 60
    end
    object cdsNotaFiscalEMAIL_NFE_TRANSP: TStringField
      FieldName = 'EMAIL_NFE_TRANSP'
      Size = 250
    end
    object cdsNotaFiscalENDERECO_TRANSP: TStringField
      FieldName = 'ENDERECO_TRANSP'
      Size = 60
    end
    object cdsNotaFiscalNUM_END_TRANSP: TStringField
      FieldName = 'NUM_END_TRANSP'
    end
    object cdsNotaFiscalCOMPLEMENTO_END_TRANSP: TStringField
      FieldName = 'COMPLEMENTO_END_TRANSP'
      Size = 60
    end
    object cdsNotaFiscalBAIRRO_TRANSP: TStringField
      FieldName = 'BAIRRO_TRANSP'
      Size = 30
    end
    object cdsNotaFiscalID_CIDADE_TRANSP: TIntegerField
      FieldName = 'ID_CIDADE_TRANSP'
    end
    object cdsNotaFiscalUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      FixedChar = True
      Size = 2
    end
    object cdsNotaFiscalCNPJ_CPF_TRANSP: TStringField
      FieldName = 'CNPJ_CPF_TRANSP'
      Size = 18
    end
    object cdsNotaFiscalINSCR_EST_TRANSP: TStringField
      FieldName = 'INSCR_EST_TRANSP'
      Size = 18
    end
    object cdsNotaFiscalCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      Size = 40
    end
    object cdsNotaFiscalENDERECO_CLI2: TStringField
      FieldName = 'ENDERECO_CLI2'
      Size = 82
    end
    object cdsNotaFiscalENDERECO_TRANSP2: TStringField
      FieldName = 'ENDERECO_TRANSP2'
      Size = 82
    end
    object cdsNotaFiscalCEP_CLI: TStringField
      FieldName = 'CEP_CLI'
      Size = 10
    end
    object cdsNotaFiscalCEP_TRANSP: TStringField
      FieldName = 'CEP_TRANSP'
      Size = 10
    end
    object cdsNotaFiscalDDDFONE1_CLI: TIntegerField
      FieldName = 'DDDFONE1_CLI'
    end
    object cdsNotaFiscalTELEFONE1_CLI: TStringField
      FieldName = 'TELEFONE1_CLI'
      Size = 15
    end
    object cdsNotaFiscalDDDFONE2_CLI: TIntegerField
      FieldName = 'DDDFONE2_CLI'
    end
    object cdsNotaFiscalTELEFONE2_CLI: TStringField
      FieldName = 'TELEFONE2_CLI'
      Size = 15
    end
    object cdsNotaFiscalDDDFAX_CLI: TIntegerField
      FieldName = 'DDDFAX_CLI'
    end
    object cdsNotaFiscalFAX_CLI: TStringField
      FieldName = 'FAX_CLI'
      Size = 15
    end
    object cdsNotaFiscalVLR_TRIBUTOS: TFloatField
      FieldName = 'VLR_TRIBUTOS'
      DisplayFormat = '0.00'
    end
    object cdsNotaFiscalGRAVOU_DADOSADICIONAIS: TStringField
      FieldName = 'GRAVOU_DADOSADICIONAIS'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscalNOME_FIL: TStringField
      FieldName = 'NOME_FIL'
      Size = 60
    end
    object cdsNotaFiscalENDERECO_FIL: TStringField
      FieldName = 'ENDERECO_FIL'
      Size = 60
    end
    object cdsNotaFiscalNUM_END_FIL: TStringField
      FieldName = 'NUM_END_FIL'
      Size = 15
    end
    object cdsNotaFiscalBAIRRO_FIL: TStringField
      FieldName = 'BAIRRO_FIL'
      Size = 30
    end
    object cdsNotaFiscalCIDADE_FIL: TStringField
      FieldName = 'CIDADE_FIL'
      Size = 40
    end
    object cdsNotaFiscalUF_FIL: TStringField
      FieldName = 'UF_FIL'
      Size = 2
    end
    object cdsNotaFiscalCNPJ_CFP_FIL: TStringField
      FieldName = 'CNPJ_CFP_FIL'
      Size = 18
    end
    object cdsNotaFiscalINSCR_EST_FIL: TStringField
      FieldName = 'INSCR_EST_FIL'
      Size = 18
    end
    object cdsNotaFiscalNOME_CONDPGTO: TStringField
      FieldName = 'NOME_CONDPGTO'
      Size = 40
    end
    object cdsNotaFiscalCEP_FIL: TStringField
      FieldName = 'CEP_FIL'
      Size = 9
    end
    object cdsNotaFiscalDDD_FIL: TIntegerField
      FieldName = 'DDD_FIL'
    end
    object cdsNotaFiscalFONE_FIL: TStringField
      FieldName = 'FONE_FIL'
      Size = 15
    end
    object cdsNotaFiscalVLR_NOTA2: TFloatField
      FieldName = 'VLR_NOTA2'
    end
    object cdsNotaFiscalUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
  end
  object dsNotaFiscal: TDataSource
    DataSet = cdsNotaFiscal
    Left = 264
    Top = 69
  end
  object frxReport1: TfrxReport
    Version = '5.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42052.436473541700000000
    ReportOptions.LastChange = 43171.872272835650000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Left = 440
    Top = 199
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
    Left = 480
    Top = 199
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
    Left = 520
    Top = 199
  end
  object frxRichObject1: TfrxRichObject
    Left = 552
    Top = 199
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxNotaFiscal'
    CloseDataSource = True
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
      'BASE_ICMS=BASE_ICMS'
      'VLR_ICMS=VLR_ICMS'
      'VLR_IPI=VLR_IPI'
      'VLR_ITENS=VLR_ITENS'
      'VLR_DUPLICATA=VLR_DUPLICATA'
      'VLR_ENTRADA=VLR_ENTRADA'
      'PERC_DESCONTO=PERC_DESCONTO'
      'VLR_DESCONTO=VLR_DESCONTO'
      'VLR_FRETE=VLR_FRETE'
      'VLR_SEGURO=VLR_SEGURO'
      'VLR_OUTRASDESP=VLR_OUTRASDESP'
      'BASE_ICMSTRANSF=BASE_ICMSTRANSF'
      'PERC_TRANSF=PERC_TRANSF'
      'VLR_TRANSF=VLR_TRANSF'
      'VLR_PIS=VLR_PIS'
      'VLR_COFINS=VLR_COFINS'
      'VLR_TAXACISCOMEX=VLR_TAXACISCOMEX'
      'VLR_OUTROS=VLR_OUTROS'
      'BASE_ICMSSIMPLES=BASE_ICMSSIMPLES'
      'VLR_ICMSSIMPLES=VLR_ICMSSIMPLES'
      'PERC_ICMSSIMPLES=PERC_ICMSSIMPLES'
      'VLR_IMPORTACAO=VLR_IMPORTACAO'
      'BASE_ICMSSUBST=BASE_ICMSSUBST'
      'VLR_ICMSSUBST=VLR_ICMSSUBST'
      'BASE_ICMSOUTROS=BASE_ICMSOUTROS'
      'VLR_ICMSOUTROS=VLR_ICMSOUTROS'
      'VLR_DUPLICATAOUTROS=VLR_DUPLICATAOUTROS'
      'VLR_ADUANEIRA=VLR_ADUANEIRA'
      'PERC_ICMS_PISCOFINS=PERC_ICMS_PISCOFINS'
      'PERC_ICMS_OUTROSVALORES=PERC_ICMS_OUTROSVALORES'
      'PERC_ICMS_FRETE=PERC_ICMS_FRETE'
      'PERC_DESCONTOORIG=PERC_DESCONTOORIG'
      'QTDVOLUME=QTDVOLUME'
      'ESPECIE=ESPECIE'
      'MARCA=MARCA'
      'NUMEROVOLUME=NUMEROVOLUME'
      'PESOBRUTO=PESOBRUTO'
      'PESOLIQUIDO=PESOLIQUIDO'
      'PLACA=PLACA'
      'UFPLACA=UFPLACA'
      'TIPO_FRETE=TIPO_FRETE'
      'ID_TRANSPORTADORA=ID_TRANSPORTADORA'
      'ID_REDESPACHO=ID_REDESPACHO'
      'TIPO_NOTA=TIPO_NOTA'
      'CANCELADA=CANCELADA'
      'MOTIVO_CANCELADA=MOTIVO_CANCELADA'
      'DTSAIDAENTRADA=DTSAIDAENTRADA'
      'HRSAIDAENTRADA=HRSAIDAENTRADA'
      'ID_BANCO=ID_BANCO'
      'LOCALENTREGA=LOCALENTREGA'
      'ID_EXTCOMISSAO=ID_EXTCOMISSAO'
      'DESCRICAO_DESC=DESCRICAO_DESC'
      'ID_CLIENTETRIANG=ID_CLIENTETRIANG'
      'QTDTOTAL_ITENS=QTDTOTAL_ITENS'
      'NFERECIBO=NFERECIBO'
      'NFEPROTOCOLO=NFEPROTOCOLO'
      'NFECHAVEACESSO=NFECHAVEACESSO'
      'NFEPROTOCOLO_CANCELADA=NFEPROTOCOLO_CANCELADA'
      'TIPO_ENVIONFE=TIPO_ENVIONFE'
      'NFECODBARRA_CONTINGENCIA=NFECODBARRA_CONTINGENCIA'
      'NFEVERSAO=NFEVERSAO'
      'NFEFINALIDADE=NFEFINALIDADE'
      'NFEAMBIENTE=NFEAMBIENTE'
      'NUMNOTACOPIADA=NUMNOTACOPIADA'
      'SERIECOPIADA=SERIECOPIADA'
      'DTCONTINGENCIA=DTCONTINGENCIA'
      'HRCONTINGENCIA=HRCONTINGENCIA'
      'MOTIVO_CONTINGENCIA=MOTIVO_CONTINGENCIA'
      'NFEVERSAOEMISSAO=NFEVERSAOEMISSAO'
      'ID_REGIMETRIB=ID_REGIMETRIB'
      'RNTC=RNTC'
      'VAGAOBALSA_IDENTIF=VAGAOBALSA_IDENTIF'
      'VAGAOBALSA_TIPOIDENTIF=VAGAOBALSA_TIPOIDENTIF'
      'UFEMBEXPORTACAO=UFEMBEXPORTACAO'
      'LOCALEMBEXPORTACAO=LOCALEMBEXPORTACAO'
      'PISCOFINS_SOMAROUTRASDESP=PISCOFINS_SOMAROUTRASDESP'
      'TIPO_DESCONTO=TIPO_DESCONTO'
      'GERARDUPL_OUTROSVALORES=GERARDUPL_OUTROSVALORES'
      'GERARDUPL_FRETE=GERARDUPL_FRETE'
      'GERARDUPL_SEGURO=GERARDUPL_SEGURO'
      'INFORMADO_NUMNOTAMANUAL=INFORMADO_NUMNOTAMANUAL'
      'NFEDENEGADA=NFEDENEGADA'
      'MOTIVO_DENEGADA=MOTIVO_DENEGADA'
      'DADOS_ADICIONAIS=DADOS_ADICIONAIS'
      'DTINICIO_DUPLICATA=DTINICIO_DUPLICATA'
      'TIPO_PRAZO=TIPO_PRAZO'
      'PERC_COMISSAO=PERC_COMISSAO'
      'NOME_CLI=NOME_CLI'
      'EMAIL_NFE_CLI=EMAIL_NFE_CLI'
      'ENDERECO_CLI=ENDERECO_CLI'
      'NUM_END_CLI=NUM_END_CLI'
      'COMPLEMENTO_END_CLI=COMPLEMENTO_END_CLI'
      'BAIRRO_CLI=BAIRRO_CLI'
      'ID_CIDADE_CLI=ID_CIDADE_CLI'
      'UF_CLI=UF_CLI'
      'CNPJ_CPF_CLI=CNPJ_CPF_CLI'
      'INSCR_EST_CLI=INSCR_EST_CLI'
      'CIDADE_CLI=CIDADE_CLI'
      'NOME_TRANSP=NOME_TRANSP'
      'EMAIL_NFE_TRANSP=EMAIL_NFE_TRANSP'
      'ENDERECO_TRANSP=ENDERECO_TRANSP'
      'NUM_END_TRANSP=NUM_END_TRANSP'
      'COMPLEMENTO_END_TRANSP=COMPLEMENTO_END_TRANSP'
      'BAIRRO_TRANSP=BAIRRO_TRANSP'
      'ID_CIDADE_TRANSP=ID_CIDADE_TRANSP'
      'UF_TRANSP=UF_TRANSP'
      'CNPJ_CPF_TRANSP=CNPJ_CPF_TRANSP'
      'INSCR_EST_TRANSP=INSCR_EST_TRANSP'
      'CIDADE_TRANSP=CIDADE_TRANSP'
      'ENDERECO_CLI2=ENDERECO_CLI2'
      'ENDERECO_TRANSP2=ENDERECO_TRANSP2'
      'CEP_CLI=CEP_CLI'
      'CEP_TRANSP=CEP_TRANSP'
      'DDDFONE1_CLI=DDDFONE1_CLI'
      'TELEFONE1_CLI=TELEFONE1_CLI'
      'DDDFONE2_CLI=DDDFONE2_CLI'
      'TELEFONE2_CLI=TELEFONE2_CLI'
      'DDDFAX_CLI=DDDFAX_CLI'
      'FAX_CLI=FAX_CLI'
      'VLR_TRIBUTOS=VLR_TRIBUTOS'
      'GRAVOU_DADOSADICIONAIS=GRAVOU_DADOSADICIONAIS'
      'NOME_FIL=NOME_FIL'
      'ENDERECO_FIL=ENDERECO_FIL'
      'NUM_END_FIL=NUM_END_FIL'
      'BAIRRO_FIL=BAIRRO_FIL'
      'CIDADE_FIL=CIDADE_FIL'
      'UF_FIL=UF_FIL'
      'CNPJ_CFP_FIL=CNPJ_CFP_FIL'
      'INSCR_EST_FIL=INSCR_EST_FIL'
      'NOME_CONDPGTO=NOME_CONDPGTO'
      'CEP_FIL=CEP_FIL'
      'DDD_FIL=DDD_FIL'
      'FONE_FIL=FONE_FIL'
      'VLR_NOTA2=VLR_NOTA2'
      'USUARIO=USUARIO')
    DataSource = dsNotaFiscal
    BCDToCurrency = False
    Left = 440
    Top = 247
  end
  object sdsNotaFiscal_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT IT.id,  IT.ITEM, IT.id_produto, IT.referencia, IT.nome_pr' +
      'oduto, IT.qtd,'#13#10'IT.vlr_unitario, IT.vlr_total, IT.unidade, (coal' +
      'esce(IT.VLR_DESCONTO,0) + coalesce(IT.vlr_descontorateio,0)) VLR' +
      '_DESCONTO'#13#10'FROM notafiscal_itens IT'#13#10'WHERE IT.ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 133
  end
  object dspNotaFiscal_Itens: TDataSetProvider
    DataSet = sdsNotaFiscal_Itens
    Left = 128
    Top = 133
  end
  object cdsNotaFiscal_Itens: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspNotaFiscal_Itens'
    Left = 192
    Top = 133
    object cdsNotaFiscal_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscal_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsNotaFiscal_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsNotaFiscal_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsNotaFiscal_ItensNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsNotaFiscal_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsNotaFiscal_ItensVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsNotaFiscal_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsNotaFiscal_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsNotaFiscal_ItensVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
  end
  object dsNotaFiscal_Itens: TDataSource
    DataSet = cdsNotaFiscal_Itens
    Left = 264
    Top = 133
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxNotaFiscal_Itens'
    CloseDataSource = True
    FieldAliases.Strings = (
      'ID=ID'
      'ITEM=ITEM'
      'ID_PRODUTO=ID_PRODUTO'
      'REFERENCIA=REFERENCIA'
      'NOME_PRODUTO=NOME_PRODUTO'
      'QTD=QTD'
      'VLR_UNITARIO=VLR_UNITARIO'
      'VLR_TOTAL=VLR_TOTAL'
      'UNIDADE=UNIDADE'
      'VLR_DESCONTO=VLR_DESCONTO')
    DataSource = dsNotaFiscal_Itens
    BCDToCurrency = False
    Left = 488
    Top = 247
  end
  object sdsNotaFiscal_Parc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT N.ID, N.ITEM, N.DTVENCIMENTO, N.VLR_VENCIMENTO'#13#10'FROM NOTA' +
      'FISCAL_PARC N'#13#10'WHERE N.ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 189
  end
  object dspNotaFiscal_Parc: TDataSetProvider
    DataSet = sdsNotaFiscal_Parc
    Left = 128
    Top = 189
  end
  object cdsNotaFiscal_Parc: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspNotaFiscal_Parc'
    Left = 192
    Top = 189
    object cdsNotaFiscal_ParcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscal_ParcITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsNotaFiscal_ParcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object cdsNotaFiscal_ParcVLR_VENCIMENTO: TFloatField
      FieldName = 'VLR_VENCIMENTO'
    end
  end
  object dsNotaFiscal_Parc: TDataSource
    DataSet = cdsNotaFiscal_Parc
    Left = 264
    Top = 189
  end
  object frxNotaFiscal_Parc: TfrxDBDataset
    UserName = 'frxNotaFiscal_Parc'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ITEM=ITEM'
      'DTVENCIMENTO=DTVENCIMENTO'
      'VLR_VENCIMENTO=VLR_VENCIMENTO')
    DataSource = dsNotaFiscal_Parc
    BCDToCurrency = False
    Left = 544
    Top = 247
  end
  object qFilialRel: TSQLQuery
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
      'select f.caminho'
      'from filial_relatorios f'
      'WHERE F.ID = :ID'
      '  AND F.TIPO = :TIPO'
      '  AND F.POSICAO = :POSICAO')
    SQLConnection = dmDatabase.scoDados
    Left = 496
    Top = 64
    object qFilialRelCAMINHO: TStringField
      FieldName = 'CAMINHO'
      Size = 150
    end
  end
  object sdsNumOC: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT DISTINCT IT.NUMERO_OC'#13#10'FROM notafiscal_itens IT'#13#10'WHERE IT' +
      '.ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 160
    Top = 301
  end
  object dspNumOC: TDataSetProvider
    DataSet = sdsNumOC
    Left = 232
    Top = 301
  end
  object cdsNumOC: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NUMERO_OC'
    Params = <>
    ProviderName = 'dspNumOC'
    Left = 296
    Top = 301
    object cdsNumOCNUMERO_OC: TStringField
      FieldName = 'NUMERO_OC'
    end
  end
end
