object DMCob_Eletronica: TDMCob_Eletronica
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 137
  Top = 78
  Height = 617
  Width = 1182
  object sdsDuplicata: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select DUP.*, CLI.NOME NOME_CLIENTE, CT.NOME NOME_CONTA, CART.CO' +
      'DIGO COD_CARTEIRA, CART.CODIGO_IMP COD_CARTEIRA_IMP,'#13#10'       CAR' +
      'T.NOME NOME_CARTEIRA, CART.GERAR_NOSSONUMERO, CLI.PESSOA, CLI.CN' +
      'PJ_CPF, CLI.ENDERECO, CLI.NUM_END, CLI.CEP,'#13#10'       CLI.BAIRRO, ' +
      'CLI.CIDADE, CLI.UF, CLI.PESSOA_PGTO, CLI.ENDERECO_PGTO, CLI.NUM_' +
      'END_PGTO, CLI.CEP_PGTO,'#13#10'       CLI.BAIRRO_PGTO, CLI.CIDADE_PGTO' +
      ', CLI.UF_PGTO, CLI.CNPJ_CPG_PGTO, CLI.EMAIL_PGTO, CLI.COMPLEMENT' +
      'O_END,'#13#10'       CLI.COMPLEMENTO_END_PGTO, CART.GERAR_REMESSA, CLI' +
      '.ID_GRUPO, GP.NOME NOME_GRUPO,'#13#10'       CLI.ID_CARTEIRA ID_CARTEI' +
      'RA_CLIENTE, CLI.COBRAR_TAXA_BANCO TAXA_BANCO, NF.TIPO_REG, NF.NF' +
      'ECHAVEACESSO,'#13#10'       NS.COD_AUTENCIDADE_RET,'#13#10'CASE'#13#10'  WHEN DCOB' +
      '.id_ocorrencia > 0 THEN DCOB.ID_OCORRENCIA'#13#10'  ELSE :ID_OCORRENCI' +
      'A'#13#10'  END ID_OCORRENCIA_COB'#13#10'from DUPLICATA DUP'#13#10'inner join PESSO' +
      'A CLI on (DUP.ID_PESSOA = CLI.CODIGO)'#13#10'left join CONTAS CT on (D' +
      'UP.ID_CONTA_BOLETO = CT.ID)'#13#10'left join COB_CARTEIRA CART on (DUP' +
      '.ID_CARTEIRA = CART.ID)'#13#10'left join TIPOCOBRANCA TC on (DUP.ID_TI' +
      'POCOBRANCA = TC.ID)'#13#10'left join NOTAFISCAL NF on DUP.ID_NOTA = NF' +
      '.ID'#13#10'left join GRUPO_PESSOA GP on CLI.ID_GRUPO = GP.ID'#13#10'left joi' +
      'n NOTASERVICO NS on DUP.ID_NOTA_SERVICO = NS.ID  '#13#10'left join dup' +
      'licata_cob dcob'#13#10'  ON DUP.ID = DCOB.ID'#13#10'  AND DCOB.DATA >= :DCOB' +
      '1'#13#10'  AND DCOB.DATA <= :DCOB2'#13#10'  AND DCOB.DTREMESSA IS NULL'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_OCORRENCIA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DCOB1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DCOB2'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 8
    object sdsDuplicataID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object sdsDuplicataARQUIVO_GERADO: TStringField
      FieldName = 'ARQUIVO_GERADO'
      FixedChar = True
      Size = 1
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
    object sdsDuplicataIMP_BOLETO: TStringField
      FieldName = 'IMP_BOLETO'
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
    object sdsDuplicataNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = []
      Size = 60
    end
    object sdsDuplicataNOME_CONTA: TStringField
      FieldName = 'NOME_CONTA'
      ProviderFlags = []
      Size = 30
    end
    object sdsDuplicataNOME_CARTEIRA: TStringField
      FieldName = 'NOME_CARTEIRA'
      ProviderFlags = []
      Size = 100
    end
    object sdsDuplicataGERAR_NOSSONUMERO: TStringField
      FieldName = 'GERAR_NOSSONUMERO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object sdsDuplicataPESSOA: TStringField
      FieldName = 'PESSOA'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object sdsDuplicataCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = []
      Size = 18
    end
    object sdsDuplicataENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = []
      Size = 60
    end
    object sdsDuplicataNUM_END: TStringField
      FieldName = 'NUM_END'
      ProviderFlags = []
    end
    object sdsDuplicataCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = []
      Size = 10
    end
    object sdsDuplicataBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = []
      Size = 30
    end
    object sdsDuplicataCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 40
    end
    object sdsDuplicataUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object sdsDuplicataPESSOA_PGTO: TStringField
      FieldName = 'PESSOA_PGTO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object sdsDuplicataENDERECO_PGTO: TStringField
      FieldName = 'ENDERECO_PGTO'
      ProviderFlags = []
      Size = 40
    end
    object sdsDuplicataNUM_END_PGTO: TStringField
      FieldName = 'NUM_END_PGTO'
      ProviderFlags = []
    end
    object sdsDuplicataCEP_PGTO: TStringField
      FieldName = 'CEP_PGTO'
      ProviderFlags = []
      Size = 10
    end
    object sdsDuplicataBAIRRO_PGTO: TStringField
      FieldName = 'BAIRRO_PGTO'
      ProviderFlags = []
      Size = 26
    end
    object sdsDuplicataCIDADE_PGTO: TStringField
      FieldName = 'CIDADE_PGTO'
      ProviderFlags = []
      Size = 40
    end
    object sdsDuplicataUF_PGTO: TStringField
      FieldName = 'UF_PGTO'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object sdsDuplicataCNPJ_CPG_PGTO: TStringField
      FieldName = 'CNPJ_CPG_PGTO'
      ProviderFlags = []
      Size = 18
    end
    object sdsDuplicataNUM_REMESSA: TIntegerField
      FieldName = 'NUM_REMESSA'
    end
    object sdsDuplicataEMAIL_PGTO: TStringField
      FieldName = 'EMAIL_PGTO'
      ProviderFlags = []
      Size = 150
    end
    object sdsDuplicataCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      ProviderFlags = []
      Size = 60
    end
    object sdsDuplicataCOMPLEMENTO_END_PGTO: TStringField
      FieldName = 'COMPLEMENTO_END_PGTO'
      ProviderFlags = []
      Size = 60
    end
    object sdsDuplicataGERAR_REMESSA: TStringField
      FieldName = 'GERAR_REMESSA'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object sdsDuplicataCOD_CARTEIRA: TStringField
      FieldName = 'COD_CARTEIRA'
      ProviderFlags = []
      Size = 3
    end
    object sdsDuplicataCOD_CARTEIRA_IMP: TStringField
      FieldName = 'COD_CARTEIRA_IMP'
      ProviderFlags = []
      Size = 7
    end
    object sdsDuplicataNOSSONUMERO_SEQ: TFMTBCDField
      FieldName = 'NOSSONUMERO_SEQ'
      Precision = 15
      Size = 0
    end
    object sdsDuplicataNOSSONUMERO_GERADO: TStringField
      FieldName = 'NOSSONUMERO_GERADO'
      FixedChar = True
      Size = 1
    end
    object sdsDuplicataEMISSAO_BOLETO: TStringField
      FieldName = 'EMISSAO_BOLETO'
      FixedChar = True
      Size = 1
    end
    object sdsDuplicataNUM_CONTRATO: TIntegerField
      FieldName = 'NUM_CONTRATO'
    end
    object sdsDuplicataID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object sdsDuplicataID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      ProviderFlags = []
    end
    object sdsDuplicataNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      ProviderFlags = []
      Size = 40
    end
    object sdsDuplicataID_CARTEIRA_CLIENTE: TIntegerField
      FieldName = 'ID_CARTEIRA_CLIENTE'
      ProviderFlags = []
    end
    object sdsDuplicataINSTRUCAO_PROTESTO: TStringField
      FieldName = 'INSTRUCAO_PROTESTO'
      FixedChar = True
      Size = 1
    end
    object sdsDuplicataTAXA_BANCO: TStringField
      FieldName = 'TAXA_BANCO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object sdsDuplicataVLR_TAXA_BANCARIA: TFloatField
      FieldName = 'VLR_TAXA_BANCARIA'
    end
    object sdsDuplicataTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object sdsDuplicataNFECHAVEACESSO: TStringField
      FieldName = 'NFECHAVEACESSO'
      Size = 44
    end
    object sdsDuplicataCOD_AUTENCIDADE_RET: TStringField
      FieldName = 'COD_AUTENCIDADE_RET'
      Size = 15
    end
    object sdsDuplicataID_NOTA_SERVICO: TIntegerField
      FieldName = 'ID_NOTA_SERVICO'
    end
    object sdsDuplicataCANCELADA: TStringField
      FieldName = 'CANCELADA'
      Size = 1
    end
    object sdsDuplicataID_OCORRENCIA_COB: TIntegerField
      FieldName = 'ID_OCORRENCIA_COB'
    end
  end
  object dspDuplicata: TDataSetProvider
    DataSet = sdsDuplicata
    UpdateMode = upWhereKeyOnly
    Left = 96
    Top = 8
  end
  object cdsDuplicata: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspDuplicata'
    Left = 160
    Top = 8
    object cdsDuplicataID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object cdsDuplicataIMP_BOLETO: TStringField
      FieldName = 'IMP_BOLETO'
      FixedChar = True
      Size = 1
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
    object cdsDuplicataARQUIVO_GERADO: TStringField
      FieldName = 'ARQUIVO_GERADO'
      FixedChar = True
      Size = 1
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
    object cdsDuplicataNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = []
      Size = 60
    end
    object cdsDuplicataNOME_CONTA: TStringField
      FieldName = 'NOME_CONTA'
      ProviderFlags = []
      Size = 30
    end
    object cdsDuplicataNOME_CARTEIRA: TStringField
      FieldName = 'NOME_CARTEIRA'
      ProviderFlags = []
      Size = 100
    end
    object cdsDuplicataGERAR_NOSSONUMERO: TStringField
      FieldName = 'GERAR_NOSSONUMERO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataPESSOA: TStringField
      FieldName = 'PESSOA'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = []
      Size = 18
    end
    object cdsDuplicataENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = []
      Size = 60
    end
    object cdsDuplicataNUM_END: TStringField
      FieldName = 'NUM_END'
      ProviderFlags = []
    end
    object cdsDuplicataCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = []
      Size = 10
    end
    object cdsDuplicataBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = []
      Size = 30
    end
    object cdsDuplicataCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 40
    end
    object cdsDuplicataUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object cdsDuplicataPESSOA_PGTO: TStringField
      FieldName = 'PESSOA_PGTO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataENDERECO_PGTO: TStringField
      FieldName = 'ENDERECO_PGTO'
      ProviderFlags = []
      Size = 40
    end
    object cdsDuplicataNUM_END_PGTO: TStringField
      FieldName = 'NUM_END_PGTO'
      ProviderFlags = []
    end
    object cdsDuplicataCEP_PGTO: TStringField
      FieldName = 'CEP_PGTO'
      ProviderFlags = []
      Size = 10
    end
    object cdsDuplicataBAIRRO_PGTO: TStringField
      FieldName = 'BAIRRO_PGTO'
      ProviderFlags = []
      Size = 26
    end
    object cdsDuplicataCIDADE_PGTO: TStringField
      FieldName = 'CIDADE_PGTO'
      ProviderFlags = []
      Size = 40
    end
    object cdsDuplicataUF_PGTO: TStringField
      FieldName = 'UF_PGTO'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object cdsDuplicataCNPJ_CPG_PGTO: TStringField
      FieldName = 'CNPJ_CPG_PGTO'
      ProviderFlags = []
      Size = 18
    end
    object cdsDuplicataNUM_REMESSA: TIntegerField
      FieldName = 'NUM_REMESSA'
    end
    object cdsDuplicataEMAIL_PGTO: TStringField
      FieldName = 'EMAIL_PGTO'
      ProviderFlags = []
      Size = 150
    end
    object cdsDuplicataCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      ProviderFlags = []
      Size = 60
    end
    object cdsDuplicataCOMPLEMENTO_END_PGTO: TStringField
      FieldName = 'COMPLEMENTO_END_PGTO'
      ProviderFlags = []
      Size = 60
    end
    object cdsDuplicataGERAR_REMESSA: TStringField
      FieldName = 'GERAR_REMESSA'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataCOD_CARTEIRA: TStringField
      FieldName = 'COD_CARTEIRA'
      ProviderFlags = []
      Size = 3
    end
    object cdsDuplicataCOD_CARTEIRA_IMP: TStringField
      FieldName = 'COD_CARTEIRA_IMP'
      ProviderFlags = []
      Size = 7
    end
    object cdsDuplicataNOSSONUMERO_SEQ: TFMTBCDField
      FieldName = 'NOSSONUMERO_SEQ'
      Precision = 15
      Size = 0
    end
    object cdsDuplicataNOSSONUMERO_GERADO: TStringField
      FieldName = 'NOSSONUMERO_GERADO'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataEMISSAO_BOLETO: TStringField
      FieldName = 'EMISSAO_BOLETO'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataNUM_CONTRATO: TIntegerField
      FieldName = 'NUM_CONTRATO'
    end
    object cdsDuplicataID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object cdsDuplicataID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      ProviderFlags = []
    end
    object cdsDuplicataNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      ProviderFlags = []
      Size = 40
    end
    object cdsDuplicataID_CARTEIRA_CLIENTE: TIntegerField
      FieldName = 'ID_CARTEIRA_CLIENTE'
      ProviderFlags = []
    end
    object cdsDuplicataINSTRUCAO_PROTESTO: TStringField
      FieldName = 'INSTRUCAO_PROTESTO'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataTAXA_BANCO: TStringField
      FieldName = 'TAXA_BANCO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataVLR_TAXA_BANCARIA: TFloatField
      FieldName = 'VLR_TAXA_BANCARIA'
      DisplayFormat = '0.00'
    end
    object cdsDuplicataTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsDuplicataNFECHAVEACESSO: TStringField
      FieldName = 'NFECHAVEACESSO'
      Size = 44
    end
    object cdsDuplicataCOD_AUTENCIDADE_RET: TStringField
      FieldName = 'COD_AUTENCIDADE_RET'
      Size = 15
    end
    object cdsDuplicataID_NOTA_SERVICO: TIntegerField
      FieldName = 'ID_NOTA_SERVICO'
    end
    object cdsDuplicataCANCELADA: TStringField
      FieldName = 'CANCELADA'
      Size = 1
    end
    object cdsDuplicataID_OCORRENCIA_COB: TIntegerField
      FieldName = 'ID_OCORRENCIA_COB'
    end
  end
  object dsDuplicata: TDataSource
    DataSet = cdsDuplicata
    Left = 216
    Top = 8
  end
  object sdsContas_Calculo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM CONTAS_CALCULO'#13#10'WHERE ID = :ID'#13#10'   AND ANO = :ANO' +
      #13#10'   AND ITEM = :ITEM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ANO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 528
    Top = 72
    object sdsContas_CalculoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsContas_CalculoANO: TIntegerField
      FieldName = 'ANO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsContas_CalculoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsContas_CalculoSEQ_NOSSONUMERO: TFMTBCDField
      FieldName = 'SEQ_NOSSONUMERO'
      Precision = 15
      Size = 0
    end
  end
  object dspContas_calculo: TDataSetProvider
    DataSet = sdsContas_Calculo
    UpdateMode = upWhereKeyOnly
    Left = 584
    Top = 72
  end
  object cdsContas_calculo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspContas_calculo'
    Left = 648
    Top = 72
    object cdsContas_calculoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContas_calculoANO: TIntegerField
      FieldName = 'ANO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContas_calculoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContas_calculoSEQ_NOSSONUMERO: TFMTBCDField
      FieldName = 'SEQ_NOSSONUMERO'
      Precision = 15
      Size = 0
    end
  end
  object dsContas_calculo: TDataSource
    DataSet = cdsContas_calculo
    Left = 704
    Top = 72
  end
  object sdsContas: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CT.*, B.CODIGO COD_BANCO, B.NOME NOME_BANCO, CART.CODIGO ' +
      'COD_CARTEIRA, CART.CODIGO_IMP COD_CARTEIRA_IMP,'#13#10'CART.NOME NOME_' +
      'CARTEIRA, CART.GERAR_NOSSONUMERO, INS1.codigo COD_INSTRUCAO1, IN' +
      'S1.cod_reduzido COD_RED_INSTRUCAO1,'#13#10'INS1.tipo_inst TIPO_INSTRUC' +
      'AO1, INS2.codigo COD_INSTRUCAO2, INS2.cod_reduzido COD_RED_INSTR' +
      'UCAO2,'#13#10'INS2.tipo_inst TIPO_INSTRUCAO2, ESP.CODIGO COD_ESPECIE, ' +
      'ESP.cod_reduzido COD_RED_ESPECIE,'#13#10'OCO.CODIGO COD_OCORRENCIA, OC' +
      'O.COD_REDUZIDO COD_RED_OCORRENCIA, B.OPCAO_GERAR_NOSSNUMERO, '#13#10'E' +
      'SP.GERAR_NOSSONUMERO GERAR_NOSSONUMERO_ESP, CART.GERAR_REMESSA, ' +
      'B.ACBR_USAR_MONTAR_NOSSONUMERO,'#13#10'B.INICIAL_NOME_ARQ_REMESSA'#13#10'FRO' +
      'M CONTAS CT'#13#10'INNER JOIN BANCO B ON (CT.ID_BANCO = B.ID)'#13#10'LEFT JO' +
      'IN COB_CARTEIRA CART ON (CT.ID_CARTEIRA = CART.ID)'#13#10'LEFT JOIN CO' +
      'B_TIPO_CADASTRO INS1 ON (CT.ID_INSTRUCAO1 = INS1.ID)'#13#10'LEFT JOIN ' +
      'COB_TIPO_CADASTRO INS2 ON (CT.ID_INSTRUCAO2 = INS2.ID)'#13#10'LEFT JOI' +
      'N COB_TIPO_CADASTRO ESP ON (CT.ID_ESPECIE = ESP.ID)'#13#10'LEFT JOIN C' +
      'OB_TIPO_CADASTRO OCO ON (CT.ID_OCORRENCIA = OCO.ID)'#13#10'WHERE CT.TI' +
      'PO_CONTA = '#39'B'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 528
    Top = 24
    object sdsContasID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsContasNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object sdsContasAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 5
    end
    object sdsContasFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsContasNUMCONTA: TStringField
      FieldName = 'NUMCONTA'
      Size = 12
    end
    object sdsContasCNAB: TStringField
      FieldName = 'CNAB'
      Size = 15
    end
    object sdsContasDTENCERRAMENTO: TDateField
      FieldName = 'DTENCERRAMENTO'
    end
    object sdsContasID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object sdsContasDESCRICAO_NOTA: TStringField
      FieldName = 'DESCRICAO_NOTA'
      Size = 30
    end
    object sdsContasTIPO_CONTA: TStringField
      FieldName = 'TIPO_CONTA'
      FixedChar = True
      Size = 1
    end
    object sdsContasID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object sdsContasDIG_CONTA: TStringField
      FieldName = 'DIG_CONTA'
      Size = 1
    end
    object sdsContasCOD_CEDENTE: TStringField
      FieldName = 'COD_CEDENTE'
      Size = 16
    end
    object sdsContasACEITE: TStringField
      FieldName = 'ACEITE'
      Size = 1
    end
    object sdsContasID_OCORRENCIA: TIntegerField
      FieldName = 'ID_OCORRENCIA'
    end
    object sdsContasDIAS_PROTESTO: TIntegerField
      FieldName = 'DIAS_PROTESTO'
    end
    object sdsContasID_ESPECIE: TIntegerField
      FieldName = 'ID_ESPECIE'
    end
    object sdsContasID_CARTEIRA: TIntegerField
      FieldName = 'ID_CARTEIRA'
    end
    object sdsContasID_INSTRUCAO1: TIntegerField
      FieldName = 'ID_INSTRUCAO1'
    end
    object sdsContasID_INSTRUCAO2: TIntegerField
      FieldName = 'ID_INSTRUCAO2'
    end
    object sdsContasID_TIPO_COBRANCA: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA'
    end
    object sdsContasMOEDA: TStringField
      FieldName = 'MOEDA'
      Size = 1
    end
    object sdsContasVARIACAO_CARTEIRA: TStringField
      FieldName = 'VARIACAO_CARTEIRA'
      Size = 3
    end
    object sdsContasTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 5
    end
    object sdsContasCOD_TRANSMISSAO: TStringField
      FieldName = 'COD_TRANSMISSAO'
    end
    object sdsContasMENSAGEM_FIXA: TStringField
      FieldName = 'MENSAGEM_FIXA'
      Size = 30
    end
    object sdsContasPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object sdsContasPERC_JUROS: TFloatField
      FieldName = 'PERC_JUROS'
    end
    object sdsContasVLR_IOF: TFloatField
      FieldName = 'VLR_IOF'
    end
    object sdsContasVLR_TAXA: TFloatField
      FieldName = 'VLR_TAXA'
    end
    object sdsContasLOCAL_PAGAMENTO: TStringField
      FieldName = 'LOCAL_PAGAMENTO'
      Size = 100
    end
    object sdsContasEND_ARQUIVO_REM: TStringField
      FieldName = 'END_ARQUIVO_REM'
      Size = 200
    end
    object sdsContasNOME_ARQ_REM: TStringField
      FieldName = 'NOME_ARQ_REM'
      Size = 8
    end
    object sdsContasEXTENSAO_ARQ_REM: TStringField
      FieldName = 'EXTENSAO_ARQ_REM'
      Size = 3
    end
    object sdsContasDT_LIMITE_DESCONTO: TDateField
      FieldName = 'DT_LIMITE_DESCONTO'
    end
    object sdsContasCOMISSAO_PERMANENCIA: TStringField
      FieldName = 'COMISSAO_PERMANENCIA'
      Size = 2
    end
    object sdsContasNUM_CONVENIO_LIDER: TStringField
      FieldName = 'NUM_CONVENIO_LIDER'
      Size = 6
    end
    object sdsContasDIG_AGENCIA: TStringField
      FieldName = 'DIG_AGENCIA'
      Size = 2
    end
    object sdsContasDIAS_DEVOLUCAO: TIntegerField
      FieldName = 'DIAS_DEVOLUCAO'
    end
    object sdsContasNUM_ARQ_REMESSA: TIntegerField
      FieldName = 'NUM_ARQ_REMESSA'
    end
    object sdsContasPOS_NUMCONTA_RETORNO: TIntegerField
      FieldName = 'POS_NUMCONTA_RETORNO'
    end
    object sdsContasPOS_CODBANCO_RETORNO: TIntegerField
      FieldName = 'POS_CODBANCO_RETORNO'
    end
    object sdsContasPERC_MULTA: TFloatField
      FieldName = 'PERC_MULTA'
    end
    object sdsContasDIAS_MULTA: TIntegerField
      FieldName = 'DIAS_MULTA'
    end
    object sdsContasACBR_TIPOCOBRANCA: TStringField
      FieldName = 'ACBR_TIPOCOBRANCA'
      FixedChar = True
      Size = 2
    end
    object sdsContasNOSSONUMERO_POR_ANO: TStringField
      FieldName = 'NOSSONUMERO_POR_ANO'
      FixedChar = True
      Size = 1
    end
    object sdsContasACBR_LAYOUTREMESSA: TStringField
      FieldName = 'ACBR_LAYOUTREMESSA'
      Size = 4
    end
    object sdsContasBANCO_LOGO: TStringField
      FieldName = 'BANCO_LOGO'
      Size = 200
    end
    object sdsContasDT_REMESSA: TDateField
      FieldName = 'DT_REMESSA'
    end
    object sdsContasSEQ_REMESSA_DIA: TIntegerField
      FieldName = 'SEQ_REMESSA_DIA'
    end
    object sdsContasTIPO_IMPRESSAO: TStringField
      FieldName = 'TIPO_IMPRESSAO'
      FixedChar = True
      Size = 1
    end
    object sdsContasTIPO_DOCUMENTO_SANTANDER: TStringField
      FieldName = 'TIPO_DOCUMENTO_SANTANDER'
      FixedChar = True
      Size = 1
    end
    object sdsContasTIPO_CARTEIRA: TStringField
      FieldName = 'TIPO_CARTEIRA'
      Size = 2
    end
    object sdsContasCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Size = 3
    end
    object sdsContasNOME_BANCO: TStringField
      FieldName = 'NOME_BANCO'
      Size = 60
    end
    object sdsContasCOD_CARTEIRA: TStringField
      FieldName = 'COD_CARTEIRA'
      Size = 3
    end
    object sdsContasCOD_CARTEIRA_IMP: TStringField
      FieldName = 'COD_CARTEIRA_IMP'
      Size = 7
    end
    object sdsContasNOME_CARTEIRA: TStringField
      FieldName = 'NOME_CARTEIRA'
      Size = 100
    end
    object sdsContasGERAR_NOSSONUMERO: TStringField
      FieldName = 'GERAR_NOSSONUMERO'
      FixedChar = True
      Size = 1
    end
    object sdsContasCOD_INSTRUCAO1: TStringField
      FieldName = 'COD_INSTRUCAO1'
      Size = 3
    end
    object sdsContasCOD_RED_INSTRUCAO1: TStringField
      FieldName = 'COD_RED_INSTRUCAO1'
      Size = 3
    end
    object sdsContasTIPO_INSTRUCAO1: TStringField
      FieldName = 'TIPO_INSTRUCAO1'
      Size = 3
    end
    object sdsContasCOD_INSTRUCAO2: TStringField
      FieldName = 'COD_INSTRUCAO2'
      Size = 3
    end
    object sdsContasCOD_RED_INSTRUCAO2: TStringField
      FieldName = 'COD_RED_INSTRUCAO2'
      Size = 3
    end
    object sdsContasTIPO_INSTRUCAO2: TStringField
      FieldName = 'TIPO_INSTRUCAO2'
      Size = 3
    end
    object sdsContasCOD_ESPECIE: TStringField
      FieldName = 'COD_ESPECIE'
      Size = 3
    end
    object sdsContasCOD_RED_ESPECIE: TStringField
      FieldName = 'COD_RED_ESPECIE'
      Size = 3
    end
    object sdsContasCOD_OCORRENCIA: TStringField
      FieldName = 'COD_OCORRENCIA'
      Size = 3
    end
    object sdsContasCOD_RED_OCORRENCIA: TStringField
      FieldName = 'COD_RED_OCORRENCIA'
      Size = 3
    end
    object sdsContasOPCAO_GERAR_NOSSNUMERO: TStringField
      FieldName = 'OPCAO_GERAR_NOSSNUMERO'
      FixedChar = True
      Size = 1
    end
    object sdsContasGERAR_NOSSONUMERO_ESP: TStringField
      FieldName = 'GERAR_NOSSONUMERO_ESP'
      FixedChar = True
      Size = 1
    end
    object sdsContasGERAR_REMESSA: TStringField
      FieldName = 'GERAR_REMESSA'
      FixedChar = True
      Size = 1
    end
    object sdsContasACBR_USAR_MONTAR_NOSSONUMERO: TStringField
      FieldName = 'ACBR_USAR_MONTAR_NOSSONUMERO'
      FixedChar = True
      Size = 1
    end
    object sdsContasINICIAL_NOME_ARQ_REMESSA: TStringField
      FieldName = 'INICIAL_NOME_ARQ_REMESSA'
      Size = 2
    end
    object sdsContasCONTROLA_EMISSAO_BOLETO: TStringField
      FieldName = 'CONTROLA_EMISSAO_BOLETO'
      FixedChar = True
      Size = 1
    end
    object sdsContasCODMORA: TSmallintField
      FieldName = 'CODMORA'
    end
    object sdsContasREMESSA_TESTE: TStringField
      FieldName = 'REMESSA_TESTE'
      FixedChar = True
      Size = 1
    end
    object sdsContasEND_ARQUIVO_RET: TStringField
      FieldName = 'END_ARQUIVO_RET'
      ProviderFlags = []
      Size = 200
    end
  end
  object dspContas: TDataSetProvider
    DataSet = sdsContas
    UpdateMode = upWhereKeyOnly
    Left = 584
    Top = 24
  end
  object cdsContas: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspContas'
    Left = 648
    Top = 24
    object cdsContasID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContasNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsContasAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 5
    end
    object cdsContasFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsContasNUMCONTA: TStringField
      FieldName = 'NUMCONTA'
      Size = 12
    end
    object cdsContasCNAB: TStringField
      FieldName = 'CNAB'
      Size = 15
    end
    object cdsContasDTENCERRAMENTO: TDateField
      FieldName = 'DTENCERRAMENTO'
    end
    object cdsContasID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsContasDESCRICAO_NOTA: TStringField
      FieldName = 'DESCRICAO_NOTA'
      Size = 30
    end
    object cdsContasTIPO_CONTA: TStringField
      FieldName = 'TIPO_CONTA'
      FixedChar = True
      Size = 1
    end
    object cdsContasID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object cdsContasDIG_CONTA: TStringField
      FieldName = 'DIG_CONTA'
      Size = 1
    end
    object cdsContasCOD_CEDENTE: TStringField
      FieldName = 'COD_CEDENTE'
      Size = 16
    end
    object cdsContasACEITE: TStringField
      FieldName = 'ACEITE'
      Size = 1
    end
    object cdsContasID_OCORRENCIA: TIntegerField
      FieldName = 'ID_OCORRENCIA'
    end
    object cdsContasDIAS_PROTESTO: TIntegerField
      FieldName = 'DIAS_PROTESTO'
    end
    object cdsContasID_ESPECIE: TIntegerField
      FieldName = 'ID_ESPECIE'
    end
    object cdsContasID_CARTEIRA: TIntegerField
      FieldName = 'ID_CARTEIRA'
    end
    object cdsContasID_INSTRUCAO1: TIntegerField
      FieldName = 'ID_INSTRUCAO1'
    end
    object cdsContasID_INSTRUCAO2: TIntegerField
      FieldName = 'ID_INSTRUCAO2'
    end
    object cdsContasID_TIPO_COBRANCA: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA'
    end
    object cdsContasMOEDA: TStringField
      FieldName = 'MOEDA'
      Size = 1
    end
    object cdsContasVARIACAO_CARTEIRA: TStringField
      FieldName = 'VARIACAO_CARTEIRA'
      Size = 3
    end
    object cdsContasTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 5
    end
    object cdsContasCOD_TRANSMISSAO: TStringField
      FieldName = 'COD_TRANSMISSAO'
    end
    object cdsContasMENSAGEM_FIXA: TStringField
      FieldName = 'MENSAGEM_FIXA'
      Size = 30
    end
    object cdsContasPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object cdsContasPERC_JUROS: TFloatField
      FieldName = 'PERC_JUROS'
    end
    object cdsContasVLR_IOF: TFloatField
      FieldName = 'VLR_IOF'
    end
    object cdsContasVLR_TAXA: TFloatField
      FieldName = 'VLR_TAXA'
    end
    object cdsContasLOCAL_PAGAMENTO: TStringField
      FieldName = 'LOCAL_PAGAMENTO'
      Size = 100
    end
    object cdsContasEND_ARQUIVO_REM: TStringField
      FieldName = 'END_ARQUIVO_REM'
      Size = 200
    end
    object cdsContasNOME_ARQ_REM: TStringField
      FieldName = 'NOME_ARQ_REM'
      Size = 8
    end
    object cdsContasEXTENSAO_ARQ_REM: TStringField
      FieldName = 'EXTENSAO_ARQ_REM'
      Size = 3
    end
    object cdsContasDT_LIMITE_DESCONTO: TDateField
      FieldName = 'DT_LIMITE_DESCONTO'
    end
    object cdsContasCOMISSAO_PERMANENCIA: TStringField
      FieldName = 'COMISSAO_PERMANENCIA'
      Size = 2
    end
    object cdsContasNUM_CONVENIO_LIDER: TStringField
      FieldName = 'NUM_CONVENIO_LIDER'
      Size = 6
    end
    object cdsContasCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Size = 3
    end
    object cdsContasCOD_CARTEIRA: TStringField
      FieldName = 'COD_CARTEIRA'
      ProviderFlags = []
      Size = 3
    end
    object cdsContasCOD_CARTEIRA_IMP: TStringField
      FieldName = 'COD_CARTEIRA_IMP'
      ProviderFlags = []
      Size = 3
    end
    object cdsContasNOME_CARTEIRA: TStringField
      FieldName = 'NOME_CARTEIRA'
      ProviderFlags = []
      Size = 100
    end
    object cdsContasGERAR_NOSSONUMERO: TStringField
      FieldName = 'GERAR_NOSSONUMERO'
      FixedChar = True
      Size = 1
    end
    object cdsContasDIG_AGENCIA: TStringField
      FieldName = 'DIG_AGENCIA'
      Size = 2
    end
    object cdsContasDIAS_DEVOLUCAO: TIntegerField
      FieldName = 'DIAS_DEVOLUCAO'
    end
    object cdsContasNUM_ARQ_REMESSA: TIntegerField
      FieldName = 'NUM_ARQ_REMESSA'
    end
    object cdsContasCOD_INSTRUCAO1: TStringField
      FieldName = 'COD_INSTRUCAO1'
      ProviderFlags = []
      Size = 3
    end
    object cdsContasCOD_RED_INSTRUCAO1: TStringField
      FieldName = 'COD_RED_INSTRUCAO1'
      ProviderFlags = []
      Size = 3
    end
    object cdsContasTIPO_INSTRUCAO1: TStringField
      FieldName = 'TIPO_INSTRUCAO1'
      ProviderFlags = []
      Size = 3
    end
    object cdsContasCOD_INSTRUCAO2: TStringField
      FieldName = 'COD_INSTRUCAO2'
      ProviderFlags = []
      Size = 3
    end
    object cdsContasCOD_RED_INSTRUCAO2: TStringField
      FieldName = 'COD_RED_INSTRUCAO2'
      ProviderFlags = []
      Size = 3
    end
    object cdsContasTIPO_INSTRUCAO2: TStringField
      FieldName = 'TIPO_INSTRUCAO2'
      ProviderFlags = []
      Size = 3
    end
    object cdsContasCOD_ESPECIE: TStringField
      FieldName = 'COD_ESPECIE'
      ProviderFlags = []
      Size = 3
    end
    object cdsContasCOD_RED_ESPECIE: TStringField
      FieldName = 'COD_RED_ESPECIE'
      ProviderFlags = []
      Size = 3
    end
    object cdsContasCOD_OCORRENCIA: TStringField
      FieldName = 'COD_OCORRENCIA'
      ProviderFlags = []
      Size = 3
    end
    object cdsContasCOD_RED_OCORRENCIA: TStringField
      FieldName = 'COD_RED_OCORRENCIA'
      ProviderFlags = []
      Size = 3
    end
    object cdsContasPOS_NUMCONTA_RETORNO: TIntegerField
      FieldName = 'POS_NUMCONTA_RETORNO'
    end
    object cdsContasPOS_CODBANCO_RETORNO: TIntegerField
      FieldName = 'POS_CODBANCO_RETORNO'
    end
    object cdsContasOPCAO_GERAR_NOSSNUMERO: TStringField
      FieldName = 'OPCAO_GERAR_NOSSNUMERO'
      FixedChar = True
      Size = 1
    end
    object cdsContasGERAR_NOSSONUMERO_ESP: TStringField
      FieldName = 'GERAR_NOSSONUMERO_ESP'
      FixedChar = True
      Size = 1
    end
    object cdsContasGERAR_REMESSA: TStringField
      FieldName = 'GERAR_REMESSA'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsContasPERC_MULTA: TFloatField
      FieldName = 'PERC_MULTA'
    end
    object cdsContasDIAS_MULTA: TIntegerField
      FieldName = 'DIAS_MULTA'
    end
    object cdsContasACBR_TIPOCOBRANCA: TStringField
      FieldName = 'ACBR_TIPOCOBRANCA'
      FixedChar = True
      Size = 2
    end
    object cdsContasACBR_LAYOUTREMESSA: TStringField
      FieldName = 'ACBR_LAYOUTREMESSA'
      Size = 4
    end
    object cdsContasNOSSONUMERO_POR_ANO: TStringField
      FieldName = 'NOSSONUMERO_POR_ANO'
      FixedChar = True
      Size = 1
    end
    object cdsContasNOME_BANCO: TStringField
      FieldName = 'NOME_BANCO'
      Size = 60
    end
    object cdsContasBANCO_LOGO: TStringField
      FieldName = 'BANCO_LOGO'
      Size = 200
    end
    object cdsContasACBR_USAR_MONTAR_NOSSONUMERO: TStringField
      FieldName = 'ACBR_USAR_MONTAR_NOSSONUMERO'
      FixedChar = True
      Size = 1
    end
    object cdsContasINICIAL_NOME_ARQ_REMESSA: TStringField
      FieldName = 'INICIAL_NOME_ARQ_REMESSA'
      Size = 2
    end
    object cdsContasDT_REMESSA: TDateField
      FieldName = 'DT_REMESSA'
    end
    object cdsContasTIPO_IMPRESSAO: TStringField
      FieldName = 'TIPO_IMPRESSAO'
      FixedChar = True
      Size = 1
    end
    object cdsContasSEQ_REMESSA_DIA: TIntegerField
      FieldName = 'SEQ_REMESSA_DIA'
    end
    object cdsContasTIPO_DOCUMENTO_SANTANDER: TStringField
      FieldName = 'TIPO_DOCUMENTO_SANTANDER'
      FixedChar = True
      Size = 1
    end
    object cdsContasTIPO_CARTEIRA: TStringField
      FieldName = 'TIPO_CARTEIRA'
      Size = 2
    end
    object cdsContasCONTROLA_EMISSAO_BOLETO: TStringField
      FieldName = 'CONTROLA_EMISSAO_BOLETO'
      FixedChar = True
      Size = 1
    end
    object cdsContasCODMORA: TSmallintField
      FieldName = 'CODMORA'
    end
    object cdsContasREMESSA_TESTE: TStringField
      FieldName = 'REMESSA_TESTE'
      FixedChar = True
      Size = 1
    end
    object cdsContasEND_ARQUIVO_RET: TStringField
      FieldName = 'END_ARQUIVO_RET'
      ProviderFlags = []
      Size = 200
    end
  end
  object dsContas: TDataSource
    DataSet = cdsContas
    Left = 704
    Top = 24
  end
  object qFilial: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM FILIAL'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 344
    Top = 186
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
    object qFilialENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object qFilialCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object qFilialNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object qFilialBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qFilialCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qFilialID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object qFilialCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qFilialUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qFilialDDD1: TIntegerField
      FieldName = 'DDD1'
    end
    object qFilialFONE1: TStringField
      FieldName = 'FONE1'
      Size = 15
    end
    object qFilialDDD2: TIntegerField
      FieldName = 'DDD2'
    end
    object qFilialFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object qFilialDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object qFilialFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object qFilialPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object qFilialCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object qFilialINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object qFilialSIMPLES: TStringField
      FieldName = 'SIMPLES'
      FixedChar = True
      Size = 1
    end
    object qFilialENDLOGO: TStringField
      FieldName = 'ENDLOGO'
      Size = 250
    end
    object qFilialCALCULAR_IPI: TStringField
      FieldName = 'CALCULAR_IPI'
      FixedChar = True
      Size = 1
    end
    object qFilialINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object qFilialINSCMUNICIPAL: TStringField
      FieldName = 'INSCMUNICIPAL'
      Size = 18
    end
    object qFilialCNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object qFilialHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 250
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
    object qFilialEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 200
    end
    object qFilialDTESTOQUE: TDateField
      FieldName = 'DTESTOQUE'
    end
    object qFilialPRINCIPAL: TStringField
      FieldName = 'PRINCIPAL'
      FixedChar = True
      Size = 1
    end
    object qFilialLIBERADO_ATE: TStringField
      FieldName = 'LIBERADO_ATE'
      Size = 18
    end
    object qFilialULTIMO_ACESSO: TStringField
      FieldName = 'ULTIMO_ACESSO'
      Size = 18
    end
    object qFilialUSARICMSSIMPLES: TStringField
      FieldName = 'USARICMSSIMPLES'
      FixedChar = True
      Size = 1
    end
    object qFilialSERIENORMAL: TStringField
      FieldName = 'SERIENORMAL'
      Size = 3
    end
    object qFilialEMAIL_FINANCEIRO: TStringField
      FieldName = 'EMAIL_FINANCEIRO'
      Size = 200
    end
    object qFilialLOCALSERVIDORNFE: TStringField
      FieldName = 'LOCALSERVIDORNFE'
      Size = 100
    end
  end
  object sdsCob_Tipo_Cadastro: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM COB_TIPO_CADASTRO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 528
    Top = 128
    object sdsCob_Tipo_CadastroID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCob_Tipo_CadastroCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object sdsCob_Tipo_CadastroNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsCob_Tipo_CadastroTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object sdsCob_Tipo_CadastroID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object sdsCob_Tipo_CadastroCOD_REDUZIDO: TStringField
      FieldName = 'COD_REDUZIDO'
      Size = 3
    end
    object sdsCob_Tipo_CadastroTIPO_INST: TStringField
      FieldName = 'TIPO_INST'
      Size = 3
    end
    object sdsCob_Tipo_CadastroTIPO_PROTESTO: TStringField
      FieldName = 'TIPO_PROTESTO'
      Size = 1
    end
    object sdsCob_Tipo_CadastroENVIAR_DIAS_PROTESTO: TStringField
      FieldName = 'ENVIAR_DIAS_PROTESTO'
      FixedChar = True
      Size = 1
    end
    object sdsCob_Tipo_CadastroTIPO_OCO: TStringField
      FieldName = 'TIPO_OCO'
      Size = 3
    end
  end
  object dspCob_Tipo_Cadastro: TDataSetProvider
    DataSet = sdsCob_Tipo_Cadastro
    Left = 584
    Top = 128
  end
  object cdsCob_Tipo_Cadastro: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCob_Tipo_Cadastro'
    Left = 648
    Top = 128
    object cdsCob_Tipo_CadastroID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCob_Tipo_CadastroCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object cdsCob_Tipo_CadastroNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsCob_Tipo_CadastroTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsCob_Tipo_CadastroID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object cdsCob_Tipo_CadastroCOD_REDUZIDO: TStringField
      FieldName = 'COD_REDUZIDO'
      Size = 3
    end
    object cdsCob_Tipo_CadastroTIPO_INST: TStringField
      FieldName = 'TIPO_INST'
      Size = 3
    end
    object cdsCob_Tipo_CadastroTIPO_PROTESTO: TStringField
      FieldName = 'TIPO_PROTESTO'
      Size = 1
    end
    object cdsCob_Tipo_CadastroENVIAR_DIAS_PROTESTO: TStringField
      FieldName = 'ENVIAR_DIAS_PROTESTO'
      FixedChar = True
      Size = 1
    end
    object cdsCob_Tipo_CadastroTIPO_OCO: TStringField
      FieldName = 'TIPO_OCO'
      Size = 3
    end
  end
  object dsCob_Tipo_Cadastro: TDataSource
    DataSet = cdsCob_Tipo_Cadastro
    Left = 704
    Top = 128
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ID_BANCO_REMESSA, LOCALSERVIDORNFE'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 272
    Top = 128
    object qParametrosID_BANCO_REMESSA: TIntegerField
      FieldName = 'ID_BANCO_REMESSA'
    end
    object qParametrosLOCALSERVIDORNFE: TStringField
      FieldName = 'LOCALSERVIDORNFE'
      Size = 100
    end
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FILIAL'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 528
    Top = 296
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 584
    Top = 296
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 648
    Top = 296
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
    object cdsFilialUF: TStringField
      FieldName = 'UF'
      Size = 2
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
    object cdsFilialCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsFilialDDD1: TIntegerField
      FieldName = 'DDD1'
    end
    object cdsFilialFONE1: TStringField
      FieldName = 'FONE1'
      Size = 15
    end
    object cdsFilialCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsFilialEMAIL_FINANCEIRO: TStringField
      FieldName = 'EMAIL_FINANCEIRO'
      Size = 200
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 704
    Top = 296
  end
  object mRetorno: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CodCarteira'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CodOcorrenciaRet'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'NomeOcorrenciaRet'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'DtOcorrencia'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'NumNota'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DtVenc'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'VlrTitulo'
        DataType = ftFloat
      end
      item
        Name = 'EspecieDoc'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'VlrDespesaCobranca'
        DataType = ftFloat
      end
      item
        Name = 'VlrIOF'
        DataType = ftFloat
      end
      item
        Name = 'VlrAbatimento'
        DataType = ftFloat
      end
      item
        Name = 'VlrDesconto'
        DataType = ftFloat
      end
      item
        Name = 'VlrPago'
        DataType = ftFloat
      end
      item
        Name = 'VlrJurosPagos'
        DataType = ftFloat
      end
      item
        Name = 'DtLiquidacao'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'InstrCancelada'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'NomeCliente'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Erros'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'CodLiquidacao'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'DescLiquidacao'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'Atualizado'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CodCliente'
        DataType = ftInteger
      end
      item
        Name = 'Parcela'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DescErro1'
        DataType = ftString
        Size = 90
      end
      item
        Name = 'DescErro2'
        DataType = ftString
        Size = 90
      end
      item
        Name = 'DescErro3'
        DataType = ftString
        Size = 90
      end
      item
        Name = 'DescErro4'
        DataType = ftString
        Size = 90
      end
      item
        Name = 'DescErro5'
        DataType = ftString
        Size = 90
      end
      item
        Name = 'DescErro6'
        DataType = ftString
        Size = 90
      end
      item
        Name = 'CodInstrCancelada'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ConfNossoNumero'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'NossoNumero'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SeuNumero'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'ID_Duplicata'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Titulo_OK'
        DataType = ftBoolean
      end
      item
        Name = 'Usa_NumConta_Cedente'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Tipo_Ret'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Filial'
        DataType = ftInteger
      end
      item
        Name = 'Atualizar'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_Duplicata_Ant'
        DataType = ftInteger
      end
      item
        Name = 'VlrJurosdeMora'
        DataType = ftFloat
      end
      item
        Name = 'CodMotivo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DescMotivo'
        DataType = ftWideString
        Size = 500
      end
      item
        Name = 'Buscou_Titulos'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    OnNewRecord = mRetornoNewRecord
    Left = 192
    Top = 328
    Data = {
      0B0500009619E0BD01000000180000002C0000000000030000000B050B436F64
      4361727465697261010049000000010005574944544802000200030010436F64
      4F636F7272656E63696152657401004900000001000557494454480200020002
      00114E6F6D654F636F7272656E63696152657401004900000001000557494454
      480200020064000C44744F636F7272656E636961010049000000010005574944
      5448020002000A00074E756D4E6F746101004900000001000557494454480200
      02000A0006447456656E630100490000000100055749445448020002000A0009
      566C72546974756C6F08000400000000000A45737065636965446F6301004900
      00000100055749445448020002001E0012566C7244657370657361436F627261
      6E6361080004000000000006566C72494F4608000400000000000D566C724162
      6174696D656E746F08000400000000000B566C72446573636F6E746F08000400
      0000000007566C725061676F08000400000000000D566C724A75726F73506167
      6F7308000400000000000C44744C69717569646163616F010049000000010005
      5749445448020002000A000E496E73747243616E63656C616461010049000000
      01000557494454480200020046000B4E6F6D65436C69656E7465010049000000
      0100055749445448020002001E00054572726F73010049000000010005574944
      54480200020008000D436F644C69717569646163616F01004900000001000557
      494454480200020002000E446573634C69717569646163616F01004900000001
      000557494454480200020046000A417475616C697A61646F0100490000000100
      0557494454480200020001000A436F64436C69656E7465040001000000000007
      50617263656C6101004900000001000557494454480200020014000944657363
      4572726F310100490000000100055749445448020002005A0009446573634572
      726F320100490000000100055749445448020002005A0009446573634572726F
      330100490000000100055749445448020002005A0009446573634572726F3401
      00490000000100055749445448020002005A0009446573634572726F35010049
      0000000100055749445448020002005A0009446573634572726F360100490000
      000100055749445448020002005A0011436F64496E73747243616E63656C6164
      6101004900000001000557494454480200020004000F436F6E664E6F73736F4E
      756D65726F01004900000001000557494454480200020008000B4E6F73736F4E
      756D65726F0100490000000100055749445448020002001400095365754E756D
      65726F01004900000001000557494454480200020019000C49445F4475706C69
      636174610100490000000100055749445448020002000A0009546974756C6F5F
      4F4B0200030000000000145573615F4E756D436F6E74615F436564656E746501
      00490000000100055749445448020002000100085469706F5F52657401004900
      000001000557494454480200020005000646696C69616C040001000000000009
      417475616C697A61720100490000000100055749445448020002000100104944
      5F4475706C69636174615F416E7404000100000000000E566C724A75726F7364
      654D6F7261080004000000000009436F644D6F7469766F010049000000010005
      57494454480200020014000A446573634D6F7469766F02004A00000001000557
      4944544802000200E8030E427573636F755F546974756C6F7301004900000001
      000557494454480200020001000000}
    object mRetornoCodCarteira: TStringField
      FieldName = 'CodCarteira'
      Size = 3
    end
    object mRetornoCodOcorrenciaRet: TStringField
      FieldName = 'CodOcorrenciaRet'
      Size = 2
    end
    object mRetornoNomeOcorrenciaRet: TStringField
      FieldName = 'NomeOcorrenciaRet'
      Size = 100
    end
    object mRetornoDtOcorrencia: TStringField
      FieldName = 'DtOcorrencia'
      Size = 10
    end
    object mRetornoNumNota: TStringField
      FieldName = 'NumNota'
      Size = 10
    end
    object mRetornoDtVenc: TStringField
      FieldName = 'DtVenc'
      Size = 10
    end
    object mRetornoVlrTitulo: TFloatField
      FieldName = 'VlrTitulo'
      DisplayFormat = '0.00'
    end
    object mRetornoEspecieDoc: TStringField
      FieldName = 'EspecieDoc'
      Size = 30
    end
    object mRetornoVlrDespesaCobranca: TFloatField
      FieldName = 'VlrDespesaCobranca'
      DisplayFormat = '0.00'
    end
    object mRetornoVlrIOF: TFloatField
      FieldName = 'VlrIOF'
      DisplayFormat = '0.00'
    end
    object mRetornoVlrAbatimento: TFloatField
      FieldName = 'VlrAbatimento'
      DisplayFormat = '0.00'
    end
    object mRetornoVlrDesconto: TFloatField
      FieldName = 'VlrDesconto'
      DisplayFormat = '0.00'
    end
    object mRetornoVlrPago: TFloatField
      FieldName = 'VlrPago'
      DisplayFormat = '0.00'
    end
    object mRetornoVlrJurosPagos: TFloatField
      FieldName = 'VlrJurosPagos'
      DisplayFormat = '0.00'
    end
    object mRetornoDtLiquidacao: TStringField
      FieldName = 'DtLiquidacao'
      Size = 10
    end
    object mRetornoInstrCancelada: TStringField
      FieldName = 'InstrCancelada'
      Size = 70
    end
    object mRetornoNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 30
    end
    object mRetornoErros: TStringField
      FieldName = 'Erros'
      Size = 8
    end
    object mRetornoCodLiquidacao: TStringField
      FieldName = 'CodLiquidacao'
      Size = 2
    end
    object mRetornoDescLiquidacao: TStringField
      FieldName = 'DescLiquidacao'
      Size = 70
    end
    object mRetornoAtualizado: TStringField
      FieldName = 'Atualizado'
      Size = 1
    end
    object mRetornoCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object mRetornoParcela: TStringField
      FieldName = 'Parcela'
    end
    object mRetornoDescErro1: TStringField
      FieldName = 'DescErro1'
      Size = 90
    end
    object mRetornoDescErro2: TStringField
      FieldName = 'DescErro2'
      Size = 90
    end
    object mRetornoDescErro3: TStringField
      FieldName = 'DescErro3'
      Size = 90
    end
    object mRetornoDescErro4: TStringField
      FieldName = 'DescErro4'
      Size = 90
    end
    object mRetornoDescErro5: TStringField
      FieldName = 'DescErro5'
      Size = 90
    end
    object mRetornoDescErro6: TStringField
      FieldName = 'DescErro6'
      Size = 90
    end
    object mRetornoCodInstrCancelada: TStringField
      FieldName = 'CodInstrCancelada'
      Size = 4
    end
    object mRetornoConfNossoNumero: TStringField
      FieldName = 'ConfNossoNumero'
      Size = 8
    end
    object mRetornoNossoNumero: TStringField
      FieldName = 'NossoNumero'
    end
    object mRetornoSeuNumero: TStringField
      FieldName = 'SeuNumero'
      Size = 25
    end
    object mRetornoID_Duplicata: TStringField
      FieldName = 'ID_Duplicata'
      Size = 10
    end
    object mRetornoTitulo_OK: TBooleanField
      FieldName = 'Titulo_OK'
      DisplayValues = 'Sim'
    end
    object mRetornoUsa_NumConta_Cedente: TStringField
      FieldName = 'Usa_NumConta_Cedente'
      Size = 1
    end
    object mRetornoTipo_Ret: TStringField
      FieldName = 'Tipo_Ret'
      Size = 5
    end
    object mRetornoFilial: TIntegerField
      FieldName = 'Filial'
    end
    object mRetornoAtualizar: TStringField
      FieldName = 'Atualizar'
      Size = 1
    end
    object mRetornoID_Duplicata_Ant: TIntegerField
      FieldName = 'ID_Duplicata_Ant'
    end
    object mRetornoVlrJurosdeMora: TFloatField
      FieldName = 'VlrJurosdeMora'
      DisplayFormat = '0.00'
    end
    object mRetornoCodMotivo: TStringField
      FieldName = 'CodMotivo'
    end
    object mRetornoDescMotivo: TWideStringField
      FieldName = 'DescMotivo'
      Size = 500
    end
    object mRetornoBuscou_Titulos: TStringField
      FieldName = 'Buscou_Titulos'
      Size = 1
    end
  end
  object dsmRetorno: TDataSource
    DataSet = mRetorno
    Left = 216
    Top = 328
  end
  object qContas_Retorno: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM CONTAS_RETORNO'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 344
    Top = 244
    object qContas_RetornoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qContas_RetornoPOS_NUM_NOTA: TIntegerField
      FieldName = 'POS_NUM_NOTA'
    end
    object qContas_RetornoQTD_NUM_NOTA: TIntegerField
      FieldName = 'QTD_NUM_NOTA'
    end
    object qContas_RetornoPOS_NOSSO_NUMERO: TIntegerField
      FieldName = 'POS_NOSSO_NUMERO'
    end
    object qContas_RetornoQTD_NOSSO_NUMERO: TIntegerField
      FieldName = 'QTD_NOSSO_NUMERO'
    end
    object qContas_RetornoPOS_ID_DUPLICATA: TIntegerField
      FieldName = 'POS_ID_DUPLICATA'
    end
    object qContas_RetornoQTD_ID_DUPLICATA: TIntegerField
      FieldName = 'QTD_ID_DUPLICATA'
    end
    object qContas_RetornoPOS_OCORRENCIA: TIntegerField
      FieldName = 'POS_OCORRENCIA'
    end
    object qContas_RetornoPOS_DT_OCORRENCIA: TIntegerField
      FieldName = 'POS_DT_OCORRENCIA'
    end
    object qContas_RetornoPOS_CONF_NOSSO_NUMERO: TIntegerField
      FieldName = 'POS_CONF_NOSSO_NUMERO'
    end
    object qContas_RetornoQTD_CONF_NOSSO_NUMERO: TIntegerField
      FieldName = 'QTD_CONF_NOSSO_NUMERO'
    end
    object qContas_RetornoPOS_DT_VENCIMENTO: TIntegerField
      FieldName = 'POS_DT_VENCIMENTO'
    end
    object qContas_RetornoPOS_VLR_TITULO: TIntegerField
      FieldName = 'POS_VLR_TITULO'
    end
    object qContas_RetornoQTD_VLR_TITULO: TIntegerField
      FieldName = 'QTD_VLR_TITULO'
    end
    object qContas_RetornoPOS_ESPECIE: TIntegerField
      FieldName = 'POS_ESPECIE'
    end
    object qContas_RetornoPOS_VLR_DESPESA_COB: TIntegerField
      FieldName = 'POS_VLR_DESPESA_COB'
    end
    object qContas_RetornoQTD_VLR_DESPESA_COB: TIntegerField
      FieldName = 'QTD_VLR_DESPESA_COB'
    end
    object qContas_RetornoPOS_VLR_IOF: TIntegerField
      FieldName = 'POS_VLR_IOF'
    end
    object qContas_RetornoQTD_VLR_IOF: TIntegerField
      FieldName = 'QTD_VLR_IOF'
    end
    object qContas_RetornoPOS_VLR_ABATIMENTO: TIntegerField
      FieldName = 'POS_VLR_ABATIMENTO'
    end
    object qContas_RetornoQTD_VLR_ABATIMENTO: TIntegerField
      FieldName = 'QTD_VLR_ABATIMENTO'
    end
    object qContas_RetornoPOS_VLR_DESCONTO: TIntegerField
      FieldName = 'POS_VLR_DESCONTO'
    end
    object qContas_RetornoQTD_VLR_DESCONTO: TIntegerField
      FieldName = 'QTD_VLR_DESCONTO'
    end
    object qContas_RetornoPOS_VLR_PAGO: TIntegerField
      FieldName = 'POS_VLR_PAGO'
    end
    object qContas_RetornoQTD_VLR_PAGO: TIntegerField
      FieldName = 'QTD_VLR_PAGO'
    end
    object qContas_RetornoPOS_VLR_JUROS_PAGO: TIntegerField
      FieldName = 'POS_VLR_JUROS_PAGO'
    end
    object qContas_RetornoQTD_VLR_JUROS_PAGO: TIntegerField
      FieldName = 'QTD_VLR_JUROS_PAGO'
    end
    object qContas_RetornoPOS_DT_LIQUIDACAO: TIntegerField
      FieldName = 'POS_DT_LIQUIDACAO'
    end
    object qContas_RetornoPOS_INST_CANCELADA: TIntegerField
      FieldName = 'POS_INST_CANCELADA'
    end
    object qContas_RetornoPOS_ERRO: TIntegerField
      FieldName = 'POS_ERRO'
    end
    object qContas_RetornoQTD_ERRO: TIntegerField
      FieldName = 'QTD_ERRO'
    end
    object qContas_RetornoPOS_COD_LIQUIDACAO: TIntegerField
      FieldName = 'POS_COD_LIQUIDACAO'
    end
    object qContas_RetornoQTD_COD_LIQUIDACAO: TIntegerField
      FieldName = 'QTD_COD_LIQUIDACAO'
    end
    object qContas_RetornoPOS_CARTEIRA: TIntegerField
      FieldName = 'POS_CARTEIRA'
    end
    object qContas_RetornoPOS_NOME_CLIENTE: TIntegerField
      FieldName = 'POS_NOME_CLIENTE'
    end
    object qContas_RetornoQTD_NOME_CLIENTE: TIntegerField
      FieldName = 'QTD_NOME_CLIENTE'
    end
    object qContas_RetornoPOS_NUMCONTA_RETORNO: TIntegerField
      FieldName = 'POS_NUMCONTA_RETORNO'
    end
    object qContas_RetornoPOS_CODBANCO_RETORNO: TIntegerField
      FieldName = 'POS_CODBANCO_RETORNO'
    end
    object qContas_RetornoNUMCONTA_CEDENTE: TStringField
      FieldName = 'NUMCONTA_CEDENTE'
      FixedChar = True
      Size = 1
    end
    object qContas_RetornoQTD_ERRO_CADASTRO: TIntegerField
      FieldName = 'QTD_ERRO_CADASTRO'
    end
    object qContas_RetornoQTD_CARTEIRA: TIntegerField
      FieldName = 'QTD_CARTEIRA'
    end
  end
  object sdsRet_Cadastro: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM RET_CADASTRO'#13#10'WHERE ID_BANCO = :ID_BANCO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_BANCO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 528
    Top = 184
    object sdsRet_CadastroID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsRet_CadastroCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object sdsRet_CadastroNOME: TStringField
      FieldName = 'NOME'
      Size = 120
    end
    object sdsRet_CadastroTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object sdsRet_CadastroID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object sdsRet_CadastroTIPO_RET: TStringField
      FieldName = 'TIPO_RET'
      Size = 3
    end
    object sdsRet_CadastroTIPO_LIQ: TStringField
      FieldName = 'TIPO_LIQ'
      Size = 3
    end
  end
  object dspRet_Cadastro: TDataSetProvider
    DataSet = sdsRet_Cadastro
    Left = 584
    Top = 184
  end
  object cdsRet_Cadastro: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspRet_Cadastro'
    Left = 648
    Top = 184
    object cdsRet_CadastroID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsRet_CadastroCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object cdsRet_CadastroNOME: TStringField
      FieldName = 'NOME'
      Size = 120
    end
    object cdsRet_CadastroTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsRet_CadastroID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object cdsRet_CadastroTIPO_RET: TStringField
      FieldName = 'TIPO_RET'
      Size = 3
    end
    object cdsRet_CadastroTIPO_LIQ: TStringField
      FieldName = 'TIPO_LIQ'
      Size = 3
    end
  end
  object dsRet_Cadastro: TDataSource
    DataSet = cdsRet_Cadastro
    Left = 704
    Top = 184
  end
  object qRet_Erro: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO_REG'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_BANCO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM RET_CADASTRO'
      'WHERE CODIGO = :CODIGO'
      '   AND TIPO_REG = :TIPO_REG'
      '   AND ID_BANCO = :ID_BANCO')
    SQLConnection = dmDatabase.scoDados
    Left = 344
    Top = 302
    object qRet_ErroID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qRet_ErroCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object qRet_ErroNOME: TStringField
      FieldName = 'NOME'
      Size = 120
    end
    object qRet_ErroTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object qRet_ErroID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object qRet_ErroTABELA_REJ: TStringField
      FieldName = 'TABELA_REJ'
      Size = 10
    end
    object qRet_ErroTIPO_RET: TStringField
      FieldName = 'TIPO_RET'
      Size = 3
    end
  end
  object qRet_Tabela: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM RET_TABELA_REJ'
      'WHERE CODIGO = :CODIGO')
    SQLConnection = dmDatabase.scoDados
    Left = 344
    Top = 360
    object qRet_TabelaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qRet_TabelaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 4
    end
    object qRet_TabelaNOME: TStringField
      FieldName = 'NOME'
      Size = 120
    end
  end
  object qDuplicata: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT DUP.ID, DUP.ID_PESSOA, DUP.NUMDUPLICATA, DUP.NUMNOTA, DUP' +
        '.PARCELA, CLI.NOME NOME_CLIENTE,'
      
        'DUP.FILIAL, DUP.VLR_RESTANTE, DUP.VLR_PAGO, DUP.dtvencimento, DU' +
        'P.pago_cartorio, dup.protestado'
      'FROM DUPLICATA DUP'
      'INNER JOIN PESSOA CLI'
      'ON DUP.ID_PESSOA = CLI.CODIGO'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 272
    Top = 184
    object qDuplicataID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qDuplicataID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object qDuplicataNUMDUPLICATA: TStringField
      FieldName = 'NUMDUPLICATA'
    end
    object qDuplicataNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object qDuplicataPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object qDuplicataNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object qDuplicataFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object qDuplicataVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
      DisplayFormat = '0.00'
    end
    object qDuplicataVLR_PAGO: TFloatField
      FieldName = 'VLR_PAGO'
      DisplayFormat = '0.00'
    end
    object qDuplicataDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object qDuplicataPAGO_CARTORIO: TStringField
      FieldName = 'PAGO_CARTORIO'
      FixedChar = True
      Size = 1
    end
    object qDuplicataPROTESTADO: TStringField
      FieldName = 'PROTESTADO'
      FixedChar = True
      Size = 1
    end
  end
  object mBoleto: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NossoNumero'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NumNota'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CodCarteira'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'DtVencimento'
        DataType = ftDate
      end
      item
        Name = 'VlrParcela'
        DataType = ftFloat
      end
      item
        Name = 'NomeCliente'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Endereco'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'NumEnd'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Bairro'
        DataType = ftString
        Size = 30
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
        Name = 'Cep'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'CNPJ_CPF'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'Especie'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DtEmissao'
        DataType = ftDate
      end
      item
        Name = 'Aceite'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DtBoleto'
        DataType = ftDate
      end
      item
        Name = 'NomeFilial'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CNPJ_CPF_Filial'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'PessoaCli'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PessoaFilial'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Agencia'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'CodCedente'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'LocalDePagamento'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Parcela'
        DataType = ftInteger
      end
      item
        Name = 'Complemento_End'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 64
    Top = 280
    Data = {
      E80200009619E0BD01000000180000001A000000000003000000E8020B4E6F73
      736F4E756D65726F0100490000000100055749445448020002001400074E756D
      4E6F74610100490000000100055749445448020002000A000B436F6443617274
      6569726101004900000001000557494454480200020003000C447456656E6369
      6D656E746F04000600000000000A566C7250617263656C610800040000000000
      0B4E6F6D65436C69656E74650100490000000100055749445448020002002800
      08456E64657265636F0100490000000100055749445448020002003C00064E75
      6D456E640100490000000100055749445448020002000F000642616972726F01
      00490000000100055749445448020002001E0006436964616465010049000000
      0100055749445448020002001E00025546010049000000010005574944544802
      000200020003436570010049000000010005574944544802000200090008434E
      504A5F4350460100490000000100055749445448020002001200074573706563
      69650100490000000100055749445448020002000A00094474456D697373616F
      0400060000000000064163656974650100490000000100055749445448020002
      000100084474426F6C65746F04000600000000000A4E6F6D6546696C69616C01
      00490000000100055749445448020002003C000F434E504A5F4350465F46696C
      69616C010049000000010005574944544802000200120009506573736F61436C
      6901004900000001000557494454480200020001000C506573736F6146696C69
      616C0100490000000100055749445448020002000100074167656E6369610100
      4900000001000557494454480200020005000A436F64436564656E7465010049
      0000000100055749445448020002001400104C6F63616C4465506167616D656E
      746F0100490000000100055749445448020002003C000750617263656C610400
      0100000000000F436F6D706C656D656E746F5F456E6401004900000001000557
      49445448020002001E000000}
    object mBoletoNossoNumero: TStringField
      FieldName = 'NossoNumero'
    end
    object mBoletoNumNota: TStringField
      FieldName = 'NumNota'
      Size = 10
    end
    object mBoletoCodCarteira: TStringField
      FieldName = 'CodCarteira'
      Size = 3
    end
    object mBoletoDtVencimento: TDateField
      FieldName = 'DtVencimento'
    end
    object mBoletoVlrParcela: TFloatField
      FieldName = 'VlrParcela'
      DisplayFormat = 'R$ ,###,###,##0.00'
    end
    object mBoletoNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 40
    end
    object mBoletoEndereco: TStringField
      FieldName = 'Endereco'
      Size = 60
    end
    object mBoletoNumEnd: TStringField
      FieldName = 'NumEnd'
      Size = 15
    end
    object mBoletoBairro: TStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object mBoletoCidade: TStringField
      FieldName = 'Cidade'
      Size = 30
    end
    object mBoletoUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object mBoletoCep: TStringField
      FieldName = 'Cep'
      Size = 9
    end
    object mBoletoCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object mBoletoEspecie: TStringField
      FieldName = 'Especie'
      Size = 10
    end
    object mBoletoDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object mBoletoAceite: TStringField
      FieldName = 'Aceite'
      Size = 1
    end
    object mBoletoDtBoleto: TDateField
      FieldName = 'DtBoleto'
    end
    object mBoletoNomeFilial: TStringField
      FieldName = 'NomeFilial'
      Size = 60
    end
    object mBoletoCNPJ_CPF_Filial: TStringField
      FieldName = 'CNPJ_CPF_Filial'
      Size = 18
    end
    object mBoletoPessoaCli: TStringField
      FieldName = 'PessoaCli'
      Size = 1
    end
    object mBoletoPessoaFilial: TStringField
      FieldName = 'PessoaFilial'
      Size = 1
    end
    object mBoletoAgencia: TStringField
      FieldName = 'Agencia'
      Size = 5
    end
    object mBoletoCodCedente: TStringField
      FieldName = 'CodCedente'
    end
    object mBoletoLocalDePagamento: TStringField
      FieldName = 'LocalDePagamento'
      Size = 60
    end
    object mBoletoParcela: TIntegerField
      FieldName = 'Parcela'
    end
    object mBoletoComplemento_End: TStringField
      FieldName = 'Complemento_End'
      Size = 30
    end
  end
  object dsmBoleto: TDataSource
    DataSet = mBoleto
    Left = 104
    Top = 280
  end
  object sdsDuplicata_Hist: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM DUPLICATA_HIST'#13#10'WHERE ID = :ID'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 64
    object sdsDuplicata_HistID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDuplicata_HistITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDuplicata_HistTIPO_HISTORICO: TStringField
      FieldName = 'TIPO_HISTORICO'
      Size = 3
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
    object sdsDuplicata_HistEND_ARQUIVO_REM: TStringField
      FieldName = 'END_ARQUIVO_REM'
      Size = 250
    end
    object sdsDuplicata_HistNUM_REMESSA: TIntegerField
      FieldName = 'NUM_REMESSA'
    end
    object sdsDuplicata_HistID_CARTEIRA: TIntegerField
      FieldName = 'ID_CARTEIRA'
    end
    object sdsDuplicata_HistID_OCORRENCIA: TIntegerField
      FieldName = 'ID_OCORRENCIA'
    end
    object sdsDuplicata_HistVLR_TAXA_BANCARIA: TFloatField
      FieldName = 'VLR_TAXA_BANCARIA'
    end
  end
  object dspDuplicata_Hist: TDataSetProvider
    DataSet = sdsDuplicata_Hist
    Left = 96
    Top = 64
  end
  object cdsDuplicata_Hist: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspDuplicata_Hist'
    Left = 160
    Top = 64
    object cdsDuplicata_HistID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDuplicata_HistITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDuplicata_HistTIPO_HISTORICO: TStringField
      FieldName = 'TIPO_HISTORICO'
      Size = 3
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
    end
    object cdsDuplicata_HistVLR_JUROSPAGOS: TFloatField
      FieldName = 'VLR_JUROSPAGOS'
    end
    object cdsDuplicata_HistVLR_DESCONTOS: TFloatField
      FieldName = 'VLR_DESCONTOS'
    end
    object cdsDuplicata_HistVLR_DESPESAS: TFloatField
      FieldName = 'VLR_DESPESAS'
    end
    object cdsDuplicata_HistVLR_DEVOLUCAO: TFloatField
      FieldName = 'VLR_DEVOLUCAO'
    end
    object cdsDuplicata_HistVLR_JUROSCALCULADO: TFloatField
      FieldName = 'VLR_JUROSCALCULADO'
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
    object cdsDuplicata_HistEND_ARQUIVO_REM: TStringField
      FieldName = 'END_ARQUIVO_REM'
      Size = 250
    end
    object cdsDuplicata_HistNUM_REMESSA: TIntegerField
      FieldName = 'NUM_REMESSA'
    end
    object cdsDuplicata_HistID_CARTEIRA: TIntegerField
      FieldName = 'ID_CARTEIRA'
    end
    object cdsDuplicata_HistID_OCORRENCIA: TIntegerField
      FieldName = 'ID_OCORRENCIA'
    end
    object cdsDuplicata_HistVLR_TAXA_BANCARIA: TFloatField
      FieldName = 'VLR_TAXA_BANCARIA'
    end
  end
  object dsDuplicata_Hist: TDataSource
    DataSet = cdsDuplicata_Hist
    Left = 216
    Top = 64
  end
  object sdsVendedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME, PERC_COMISSAO, TIPO_COMISSAO'#13#10'FROM PESSOA'#13#10 +
      'WHERE INATIVO = '#39'N'#39#13#10'      AND TP_VENDEDOR = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 528
    Top = 240
  end
  object dspVendedor: TDataSetProvider
    DataSet = sdsVendedor
    Left = 584
    Top = 240
  end
  object cdsVendedor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspVendedor'
    Left = 648
    Top = 240
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
  end
  object dsVendedor: TDataSource
    DataSet = cdsVendedor
    Left = 704
    Top = 240
  end
  object sdsCobCarteira: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM COB_CARTEIRA WHERE ID_BANCO = :ID_BANCO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_BANCO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 528
    Top = 352
  end
  object dspCobCarteira: TDataSetProvider
    DataSet = sdsCobCarteira
    Left = 584
    Top = 352
  end
  object cdsCobCarteira: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCobCarteira'
    Left = 648
    Top = 352
    object cdsCobCarteiraID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCobCarteiraCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object cdsCobCarteiraCODIGO_IMP: TStringField
      FieldName = 'CODIGO_IMP'
      Size = 7
    end
    object cdsCobCarteiraNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsCobCarteiraGERAR_NOSSONUMERO: TStringField
      FieldName = 'GERAR_NOSSONUMERO'
      FixedChar = True
      Size = 1
    end
    object cdsCobCarteiraGERAR_REMESSA: TStringField
      FieldName = 'GERAR_REMESSA'
      FixedChar = True
      Size = 1
    end
    object cdsCobCarteiraID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
  end
  object dsCobCarteira: TDataSource
    DataSet = cdsCobCarteira
    Left = 704
    Top = 352
  end
  object sdsEspecie: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM COB_TIPO_CADASTRO'#13#10'WHERE TIPO_REG = '#39'ESP'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 528
    Top = 408
  end
  object dspEspecie: TDataSetProvider
    DataSet = sdsEspecie
    Left = 584
    Top = 408
  end
  object cdsEspecie: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspEspecie'
    Left = 648
    Top = 408
    object cdsEspecieID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEspecieCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object cdsEspecieNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsEspecieTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsEspecieID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object cdsEspecieCOD_REDUZIDO: TStringField
      FieldName = 'COD_REDUZIDO'
      Size = 3
    end
    object cdsEspecieTIPO_INST: TStringField
      FieldName = 'TIPO_INST'
      Size = 3
    end
  end
  object dsEspecie: TDataSource
    DataSet = cdsEspecie
    Left = 704
    Top = 408
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
      
        'CE.solicitar_confirmacao, CE.base, F.cnpj_cpf CNPJ_CPF_FILIAL, F' +
        '.LOCALSERVIDORNFE'
      'FROM FILIAL_EMAIL FE'
      'INNER JOIN FILIAL F'
      'ON FE.ID = F.ID'
      'INNER JOIN CONFIG_EMAIL CE'
      'ON FE.id_config_email = CE.id'
      'WHERE FE.ID = :ID'
      '   AND FE.TIPO_REG = 3')
    SQLConnection = dmDatabase.scoDados
    Left = 344
    Top = 424
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
    object qFilial_EmailLOCALSERVIDORNFE: TStringField
      FieldName = 'LOCALSERVIDORNFE'
      Size = 100
    end
  end
  object mEmail: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Cliente'
        DataType = ftInteger
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'CNPJ_CPF'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'Email'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'Nome_Filial'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'CNPJ_CPF_Filial'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'Qtd_Titulos'
        DataType = ftInteger
      end
      item
        Name = 'Obs'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'EmailEnviado'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Titulos'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'TituloVencido'
        DataType = ftBoolean
      end
      item
        Name = 'TituloNoDia'
        DataType = ftBoolean
      end
      item
        Name = 'Filial'
        DataType = ftInteger
      end
      item
        Name = 'ID_Vendedor'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Vendedor'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Email_Vendedor'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'DtVencimento'
        DataType = ftDate
      end
      item
        Name = 'Email_Filial'
        DataType = ftString
        Size = 200
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'Nome'
    Params = <>
    StoreDefs = True
    Left = 896
    Top = 168
    Data = {
      1B0200009619E0BD0100000018000000120000000000030000001B020A49445F
      436C69656E74650400010000000000044E6F6D65010049000000010005574944
      544802000200460008434E504A5F435046010049000000010005574944544802
      000200120005456D61696C010049000000010005574944544802000200FA000B
      4E6F6D655F46696C69616C01004900000001000557494454480200020046000F
      434E504A5F4350465F46696C69616C0100490000000100055749445448020002
      0012000B5174645F546974756C6F730400010000000000034F627304004B0000
      0002000753554254595045020049000500546578740005574944544802000200
      01000C456D61696C456E766961646F0100490000000100055749445448020002
      00010007546974756C6F7301004900000001000557494454480200020064000D
      546974756C6F56656E6369646F02000300000000000B546974756C6F4E6F4469
      6102000300000000000646696C69616C04000100000000000B49445F56656E64
      65646F7204000100000000000D4E6F6D655F56656E6465646F72010049000000
      0100055749445448020002003C000E456D61696C5F56656E6465646F72010049
      000000010005574944544802000200C8000C447456656E63696D656E746F0400
      0600000000000C456D61696C5F46696C69616C01004900000001000557494454
      4802000200C80001000D44454641554C545F4F524445520200820000000000}
    object mEmailID_Cliente: TIntegerField
      DisplayWidth = 12
      FieldName = 'ID_Cliente'
    end
    object mEmailNome: TStringField
      DisplayWidth = 34
      FieldName = 'Nome'
      Size = 70
    end
    object mEmailCNPJ_CPF: TStringField
      DisplayWidth = 22
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object mEmailEmail: TStringField
      DisplayWidth = 250
      FieldName = 'Email'
      Size = 250
    end
    object mEmailNome_Filial: TStringField
      DisplayWidth = 84
      FieldName = 'Nome_Filial'
      Size = 70
    end
    object mEmailCNPJ_CPF_Filial: TStringField
      DisplayWidth = 22
      FieldName = 'CNPJ_CPF_Filial'
      Size = 18
    end
    object mEmailQtd_Titulos: TIntegerField
      DisplayWidth = 12
      FieldName = 'Qtd_Titulos'
    end
    object mEmailObs: TMemoField
      DisplayWidth = 12
      FieldName = 'Obs'
      BlobType = ftMemo
      Size = 1
    end
    object mEmailEmailEnviado: TStringField
      FieldName = 'EmailEnviado'
      Size = 1
    end
    object mEmailTitulos: TStringField
      FieldName = 'Titulos'
      Size = 100
    end
    object mEmailTituloVencido: TBooleanField
      FieldName = 'TituloVencido'
    end
    object mEmailTituloNoDia: TBooleanField
      FieldName = 'TituloNoDia'
    end
    object mEmailFilial: TIntegerField
      FieldName = 'Filial'
    end
    object mEmailID_Vendedor: TIntegerField
      FieldName = 'ID_Vendedor'
    end
    object mEmailNome_Vendedor: TStringField
      FieldName = 'Nome_Vendedor'
      Size = 60
    end
    object mEmailEmail_Vendedor: TStringField
      FieldName = 'Email_Vendedor'
      Size = 200
    end
    object mEmailDtVencimento: TDateField
      FieldName = 'DtVencimento'
    end
    object mEmailEmail_Filial: TStringField
      FieldName = 'Email_Filial'
      Size = 200
    end
  end
  object dsmEmail: TDataSource
    DataSet = mEmail
    Left = 928
    Top = 168
  end
  object sdsTitulos_atr: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT D.id, D.numduplicata, D.numnota, D.parcela, D.dtvenciment' +
      'o, D.vlr_parcela,'#13#10'D.id_pessoa, D.nossonumero, D.Filial, CLI.nom' +
      'e NOME_CLIENTE, CLI.email_pgto,'#13#10'CLI.cnpj_cpf CNPJ_CPF_CLIENTE, ' +
      'F.nome NOME_FILIAL, F.cnpj_cpf CNPJ_CPF_FILIAL,'#13#10'F.EMAIL_FINANCE' +
      'IRO EMAIL_FILIAL,'#13#10'D.id_vendedor, V.nome NOME_VENDEDOR, V.email_' +
      'pgto email_vendedor, D.id_conta_boleto'#13#10'FROM DUPLICATA D'#13#10'INNER ' +
      'JOIN pessoa CLI'#13#10'ON D.id_pessoa = CLI.codigo'#13#10'INNER JOIN FILIAL ' +
      'F'#13#10'ON D.filial = F.id'#13#10'left join tipocobranca t'#13#10'on d.id_tipocob' +
      'ranca = t.id'#13#10'LEFT JOIN pessoa V'#13#10'ON D.id_vendedor = V.codigo'#13#10'W' +
      'HERE D.FILIAL = :FILIAL'#13#10'  AND D.vlr_restante > 0'#13#10'  and d.tipo_' +
      'es = '#39'E'#39#13#10'  and ((d.perdido = '#39'N'#39') or (D.PERDIDO IS NULL))'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'FILIAL'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 872
    Top = 224
  end
  object dspTitulos_atr: TDataSetProvider
    DataSet = sdsTitulos_atr
    Left = 920
    Top = 224
  end
  object cdsTitulos_atr: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_PESSOA;NUMDUPLICATA;PARCELA'
    Params = <>
    ProviderName = 'dspTitulos_atr'
    Left = 968
    Top = 224
    object cdsTitulos_atrID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTitulos_atrNUMDUPLICATA: TStringField
      FieldName = 'NUMDUPLICATA'
    end
    object cdsTitulos_atrNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsTitulos_atrPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object cdsTitulos_atrDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object cdsTitulos_atrVLR_PARCELA: TFloatField
      FieldName = 'VLR_PARCELA'
    end
    object cdsTitulos_atrID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsTitulos_atrNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsTitulos_atrEMAIL_PGTO: TStringField
      FieldName = 'EMAIL_PGTO'
      Size = 150
    end
    object cdsTitulos_atrCNPJ_CPF_CLIENTE: TStringField
      FieldName = 'CNPJ_CPF_CLIENTE'
    end
    object cdsTitulos_atrNOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object cdsTitulos_atrCNPJ_CPF_FILIAL: TStringField
      FieldName = 'CNPJ_CPF_FILIAL'
      Size = 18
    end
    object cdsTitulos_atrNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
    end
    object cdsTitulos_atrFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsTitulos_atrID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsTitulos_atrNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 60
    end
    object cdsTitulos_atrEMAIL_VENDEDOR: TStringField
      FieldName = 'EMAIL_VENDEDOR'
      Size = 150
    end
    object cdsTitulos_atrEMAIL_FILIAL: TStringField
      FieldName = 'EMAIL_FILIAL'
      Size = 200
    end
    object cdsTitulos_atrID_CONTA_BOLETO: TIntegerField
      FieldName = 'ID_CONTA_BOLETO'
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
    ReportOptions.CreateDate = 42441.571744421300000000
    ReportOptions.LastChange = 43090.666109525460000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Left = 840
    Top = 375
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
    Left = 880
    Top = 375
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
    Left = 920
    Top = 375
  end
  object frxRichObject1: TfrxRichObject
    Left = 952
    Top = 375
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxRetorno'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CodCarteira=CodCarteira'
      'CodOcorrenciaRet=CodOcorrenciaRet'
      'NomeOcorrenciaRet=NomeOcorrenciaRet'
      'DtOcorrencia=DtOcorrencia'
      'NumNota=NumNota'
      'DtVenc=DtVenc'
      'VlrTitulo=VlrTitulo'
      'EspecieDoc=EspecieDoc'
      'VlrDespesaCobranca=VlrDespesaCobranca'
      'VlrIOF=VlrIOF'
      'VlrAbatimento=VlrAbatimento'
      'VlrDesconto=VlrDesconto'
      'VlrPago=VlrPago'
      'VlrJurosPagos=VlrJurosPagos'
      'DtLiquidacao=DtLiquidacao'
      'InstrCancelada=InstrCancelada'
      'NomeCliente=NomeCliente'
      'Erros=Erros'
      'CodLiquidacao=CodLiquidacao'
      'DescLiquidacao=DescLiquidacao'
      'Atualizado=Atualizado'
      'CodCliente=CodCliente'
      'Parcela=Parcela'
      'DescErro1=DescErro1'
      'DescErro2=DescErro2'
      'DescErro3=DescErro3'
      'DescErro4=DescErro4'
      'DescErro5=DescErro5'
      'DescErro6=DescErro6'
      'CodInstrCancelada=CodInstrCancelada'
      'ConfNossoNumero=ConfNossoNumero'
      'NossoNumero=NossoNumero'
      'SeuNumero=SeuNumero'
      'ID_Duplicata=ID_Duplicata'
      'Titulo_OK=Titulo_OK'
      'Usa_NumConta_Cedente=Usa_NumConta_Cedente'
      'Tipo_Ret=Tipo_Ret'
      'Filial=Filial'
      'Atualizar=Atualizar'
      'ID_Duplicata_Ant=ID_Duplicata_Ant')
    DataSource = dsmRetorno
    BCDToCurrency = False
    Left = 840
    Top = 423
  end
  object mEmail_AVencer: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Cliente'
        DataType = ftInteger
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'CNPJ_CPF'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'Email'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'Nome_Filial'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'CNPJ_CPF_Filial'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'EmailEnviado'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Filial'
        DataType = ftInteger
      end
      item
        Name = 'ID_Vendedor'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Vendedor'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Email_Vendedor'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'DtVencimento'
        DataType = ftDate
      end
      item
        Name = 'Email_Filial'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'ID_Conta'
        DataType = ftInteger
      end
      item
        Name = 'ID_Duplicata'
        DataType = ftInteger
      end
      item
        Name = 'Num_Duplicata'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Parcela'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Valor'
        DataType = ftFloat
      end
      item
        Name = 'NossoNumero'
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
    IndexFieldNames = 'Nome'
    Params = <>
    StoreDefs = True
    Left = 896
    Top = 280
    Data = {
      280200009619E0BD01000000180000001300000000000300000028020A49445F
      436C69656E74650400010000000000044E6F6D65010049000000010005574944
      544802000200460008434E504A5F435046010049000000010005574944544802
      000200120005456D61696C010049000000010005574944544802000200FA000B
      4E6F6D655F46696C69616C01004900000001000557494454480200020046000F
      434E504A5F4350465F46696C69616C0100490000000100055749445448020002
      0012000C456D61696C456E766961646F01004900000001000557494454480200
      020001000646696C69616C04000100000000000B49445F56656E6465646F7204
      000100000000000D4E6F6D655F56656E6465646F720100490000000100055749
      445448020002003C000E456D61696C5F56656E6465646F720100490000000100
      05574944544802000200C8000C447456656E63696D656E746F04000600000000
      000C456D61696C5F46696C69616C010049000000010005574944544802000200
      C8000849445F436F6E746104000100000000000C49445F4475706C6963617461
      04000100000000000D4E756D5F4475706C696361746101004900000001000557
      494454480200020014000750617263656C610100490000000100055749445448
      0200020003000556616C6F7208000400000000000B4E6F73736F4E756D65726F
      010049000000010005574944544802000200140001000D44454641554C545F4F
      524445520200820000000000}
    object mEmail_AVencerID_Cliente: TIntegerField
      DisplayWidth = 12
      FieldName = 'ID_Cliente'
    end
    object mEmail_AVencerNome: TStringField
      DisplayWidth = 34
      FieldName = 'Nome'
      Size = 70
    end
    object mEmail_AVencerCNPJ_CPF: TStringField
      DisplayWidth = 22
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object mEmail_AVencerEmail: TStringField
      DisplayWidth = 250
      FieldName = 'Email'
      Size = 250
    end
    object mEmail_AVencerNome_Filial: TStringField
      DisplayWidth = 84
      FieldName = 'Nome_Filial'
      Size = 70
    end
    object mEmail_AVencerCNPJ_CPF_Filial: TStringField
      DisplayWidth = 22
      FieldName = 'CNPJ_CPF_Filial'
      Size = 18
    end
    object mEmail_AVencerEmailEnviado: TStringField
      FieldName = 'EmailEnviado'
      Size = 1
    end
    object mEmail_AVencerFilial: TIntegerField
      FieldName = 'Filial'
    end
    object mEmail_AVencerID_Vendedor: TIntegerField
      FieldName = 'ID_Vendedor'
    end
    object mEmail_AVencerNome_Vendedor: TStringField
      FieldName = 'Nome_Vendedor'
      Size = 60
    end
    object mEmail_AVencerEmail_Vendedor: TStringField
      FieldName = 'Email_Vendedor'
      Size = 200
    end
    object mEmail_AVencerDtVencimento: TDateField
      FieldName = 'DtVencimento'
    end
    object mEmail_AVencerEmail_Filial: TStringField
      FieldName = 'Email_Filial'
      Size = 200
    end
    object mEmail_AVencerID_Conta: TIntegerField
      FieldName = 'ID_Conta'
    end
    object mEmail_AVencerID_Duplicata: TIntegerField
      FieldName = 'ID_Duplicata'
    end
    object mEmail_AVencerNum_Duplicata: TStringField
      FieldName = 'Num_Duplicata'
    end
    object mEmail_AVencerParcela: TStringField
      FieldName = 'Parcela'
      Size = 3
    end
    object mEmail_AVencerValor: TFloatField
      FieldName = 'Valor'
    end
    object mEmail_AVencerNossoNumero: TStringField
      FieldName = 'NossoNumero'
    end
  end
  object dsmEmail_AVencer: TDataSource
    DataSet = mEmail_AVencer
    Left = 928
    Top = 280
  end
  object sdsParametros_Fin: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, DTENVIO_EMAIL_TITULOS, ENVIAR_EMAIL_TITULOS_ATR, SEPA' +
      'RADOR_NUM_DA_PARC'#13#10'FROM PARAMETROS_FIN'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 416
    object sdsParametros_FinID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsParametros_FinDTENVIO_EMAIL_TITULOS: TDateField
      FieldName = 'DTENVIO_EMAIL_TITULOS'
    end
    object sdsParametros_FinENVIAR_EMAIL_TITULOS_ATR: TStringField
      FieldName = 'ENVIAR_EMAIL_TITULOS_ATR'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_FinSEPARADOR_NUM_DA_PARC: TStringField
      FieldName = 'SEPARADOR_NUM_DA_PARC'
      FixedChar = True
      Size = 1
    end
  end
  object dspParametros_Fin: TDataSetProvider
    DataSet = sdsParametros_Fin
    Left = 96
    Top = 416
  end
  object cdsParametros_Fin: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspParametros_Fin'
    Left = 160
    Top = 416
    object cdsParametros_FinID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsParametros_FinDTENVIO_EMAIL_TITULOS: TDateField
      FieldName = 'DTENVIO_EMAIL_TITULOS'
    end
    object cdsParametros_FinENVIAR_EMAIL_TITULOS_ATR: TStringField
      FieldName = 'ENVIAR_EMAIL_TITULOS_ATR'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_FinSEPARADOR_NUM_DA_PARC: TStringField
      FieldName = 'SEPARADOR_NUM_DA_PARC'
      FixedChar = True
      Size = 1
    end
  end
  object dsParametros_Fin: TDataSource
    DataSet = cdsParametros_Fin
    Left = 216
    Top = 416
  end
  object qContratoParcela: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT CP.QTD_PARCELA'
      'FROM CONDPGTO CP'
      'WHERE CP.ID = (SELECT OS.ID_CONDPGTO'
      '            FROM OS'
      '            WHERE OS.ID = :ID)')
    SQLConnection = dmDatabase.scoDados
    Left = 408
    Top = 128
    object qContratoParcelaQTD_PARCELA: TIntegerField
      FieldName = 'QTD_PARCELA'
    end
  end
  object sdsGrupo_Pessoa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM GRUPO_PESSOA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 856
    Top = 40
  end
  object dspGrupo_Pessoa: TDataSetProvider
    DataSet = sdsGrupo_Pessoa
    Left = 912
    Top = 40
  end
  object cdsGrupo_Pessoa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspGrupo_Pessoa'
    Left = 976
    Top = 40
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
    Left = 1032
    Top = 40
  end
  object qParametros_Ser: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT P.gerar_duplicata_contrato'
      'FROM parametros_ser P')
    SQLConnection = dmDatabase.scoDados
    Left = 408
    Top = 192
    object qParametros_SerGERAR_DUPLICATA_CONTRATO: TStringField
      FieldName = 'GERAR_DUPLICATA_CONTRATO'
      FixedChar = True
      Size = 1
    end
  end
  object qQtdParcelas: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NUMDUPLICATA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PESSOA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTEMISSAO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT COUNT(1) CONTADOR'
      'FROM duplicata D'
      'WHERE D.NUMDUPLICATA = :NUMDUPLICATA'
      '  AND D.ID_PESSOA = :ID_PESSOA'
      '  AND D.DTEMISSAO = :DTEMISSAO')
    SQLConnection = dmDatabase.scoDados
    Left = 408
    Top = 72
    object qQtdParcelasCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      Required = True
    end
  end
  object mVendedor: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Email'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'Obs'
        DataType = ftMemo
        Size = 10
      end
      item
        Name = 'Filial'
        DataType = ftInteger
      end
      item
        Name = 'Vlr_Total'
        DataType = ftFloat
      end
      item
        Name = 'Qtd_Titulos'
        DataType = ftInteger
      end
      item
        Name = 'Email_Filial'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'Enviado'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1032
    Top = 304
    Data = {
      F50000009619E0BD010000001800000009000000000003000000F50002494404
      00010000000000044E6F6D650100490000000100055749445448020002003C00
      05456D61696C010049000000010005574944544802000200C800034F62730400
      4B00000002000753554254595045020049000500546578740005574944544802
      0002000A000646696C69616C040001000000000009566C725F546F74616C0800
      0400000000000B5174645F546974756C6F7304000100000000000C456D61696C
      5F46696C69616C010049000000010005574944544802000200C80007456E7669
      61646F01004900000001000557494454480200020001000000}
    object mVendedorID: TIntegerField
      FieldName = 'ID'
    end
    object mVendedorNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
    object mVendedorEmail: TStringField
      FieldName = 'Email'
      Size = 200
    end
    object mVendedorObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
      Size = 10
    end
    object mVendedorFilial: TIntegerField
      FieldName = 'Filial'
    end
    object mVendedorVlr_Total: TFloatField
      FieldName = 'Vlr_Total'
    end
    object mVendedorQtd_Titulos: TIntegerField
      FieldName = 'Qtd_Titulos'
    end
    object mVendedorEmail_Filial: TStringField
      FieldName = 'Email_Filial'
      Size = 200
    end
    object mVendedorEnviado: TStringField
      FieldName = 'Enviado'
      Size = 1
    end
  end
  object dsmVendedor: TDataSource
    DataSet = mVendedor
    Left = 1080
    Top = 304
  end
  object mVendedor_Tit: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_Vendedor'
        DataType = ftInteger
      end
      item
        Name = 'Num_Titulo'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'Vlr_Titulo'
        DataType = ftFloat
      end
      item
        Name = 'DtVencimento'
        DataType = ftDate
      end
      item
        Name = 'ID_Cliente'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Cliente'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'NossoNumero'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Filial'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'ID_Vendedor;Filial;ID_Cliente;DtVencimento'
    MasterFields = 'ID;Filial'
    MasterSource = dsmVendedor
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    Left = 1040
    Top = 376
    Data = {
      D80000009619E0BD010000001800000008000000000003000000D8000B49445F
      56656E6465646F7204000100000000000A4E756D5F546974756C6F0100490000
      0001000557494454480200020019000A566C725F546974756C6F080004000000
      00000C447456656E63696D656E746F04000600000000000A49445F436C69656E
      746504000100000000000C4E6F6D655F436C69656E7465010049000000010005
      5749445448020002003C000B4E6F73736F4E756D65726F010049000000010005
      57494454480200020014000646696C69616C04000100000000000000}
    object mVendedor_TitID_Vendedor: TIntegerField
      FieldName = 'ID_Vendedor'
    end
    object mVendedor_TitNum_Titulo: TStringField
      FieldName = 'Num_Titulo'
      Size = 25
    end
    object mVendedor_TitVlr_Titulo: TFloatField
      FieldName = 'Vlr_Titulo'
    end
    object mVendedor_TitDtVencimento: TDateField
      FieldName = 'DtVencimento'
    end
    object mVendedor_TitID_Cliente: TIntegerField
      FieldName = 'ID_Cliente'
    end
    object mVendedor_TitNome_Cliente: TStringField
      FieldName = 'Nome_Cliente'
      Size = 60
    end
    object mVendedor_TitNossoNumero: TStringField
      FieldName = 'NossoNumero'
    end
    object mVendedor_TitFilial: TIntegerField
      FieldName = 'Filial'
    end
  end
  object dsmVendedor_Tit: TDataSource
    DataSet = mVendedor_Tit
    Left = 1088
    Top = 376
  end
  object qParametros_Fin: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_FIN')
    SQLConnection = dmDatabase.scoDados
    Left = 328
    Top = 72
    object qParametros_FinID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_FinTIPO_GERACAO_REM: TStringField
      FieldName = 'TIPO_GERACAO_REM'
      FixedChar = True
      Size = 1
    end
    object qParametros_FinREMESSA_FILIAL_DIF: TStringField
      FieldName = 'REMESSA_FILIAL_DIF'
      FixedChar = True
      Size = 1
    end
    object qParametros_FinMANTER_DUP_CANC: TStringField
      FieldName = 'MANTER_DUP_CANC'
      FixedChar = True
      Size = 1
    end
  end
  object qContas_Sacado: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT CS.*, FIL.nome, FIL.endereco, FIL.cnpj_cpf, FIL.pessoa, F' +
        'IL.inscr_est,'
      
        'FIL.cep, FIL.cidade, FIL.bairro, FIL.num_end, FIL.uf, fil.comple' +
        'mento_end'
      'FROM CONTAS_SACADO CS'
      'INNER JOIN FILIAL FIL'
      'ON CS.filial = FIL.ID'
      'WHERE CS.ID = :ID'
      '  AND CS.FILIAL = :FILIAL')
    SQLConnection = dmDatabase.scoDados
    Left = 816
    Top = 104
    object qContas_SacadoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qContas_SacadoFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object qContas_SacadoCOD_SACADO: TStringField
      FieldName = 'COD_SACADO'
      Size = 10
    end
    object qContas_SacadoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qContas_SacadoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object qContas_SacadoCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object qContas_SacadoPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object qContas_SacadoINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object qContas_SacadoCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qContas_SacadoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qContas_SacadoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qContas_SacadoNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object qContas_SacadoUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qContas_SacadoCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
  end
  object qConsultaNaoEnviado: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT COUNT(NUMDUPLICATA) NAO_ENVIADO FROM DUPLICATA DUP WHERE ' +
        '0=0')
    SQLConnection = dmDatabase.scoDados
    Left = 936
    Top = 112
    object qConsultaNaoEnviadoNAO_ENVIADO: TIntegerField
      FieldName = 'NAO_ENVIADO'
      Required = True
    end
  end
  object frxDuplicata: TfrxDBDataset
    UserName = 'frxDuplicata'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NossoNumero=NossoNumero'
      'NumNota=NumNota'
      'CodCarteira=CodCarteira'
      'DtVencimento=DtVencimento'
      'VlrParcela=VlrParcela'
      'NomeCliente=NomeCliente'
      'Endereco=Endereco'
      'NumEnd=NumEnd'
      'Bairro=Bairro'
      'Cidade=Cidade'
      'UF=UF'
      'Cep=Cep'
      'CNPJ_CPF=CNPJ_CPF'
      'Especie=Especie'
      'DtEmissao=DtEmissao'
      'Aceite=Aceite'
      'DtBoleto=DtBoleto'
      'NomeFilial=NomeFilial'
      'CNPJ_CPF_Filial=CNPJ_CPF_Filial'
      'PessoaCli=PessoaCli'
      'PessoaFilial=PessoaFilial'
      'Agencia=Agencia'
      'CodCedente=CodCedente'
      'LocalDePagamento=LocalDePagamento'
      'Parcela=Parcela'
      'Complemento_End=Complemento_End')
    DataSource = dsmBoleto
    BCDToCurrency = False
    Left = 880
    Top = 424
  end
  object sdsDuplicata_Cob: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM DUPLICATA_COB'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 128
    object sdsDuplicata_CobID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDuplicata_CobITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDuplicata_CobID_OCORRENCIA: TIntegerField
      FieldName = 'ID_OCORRENCIA'
    end
    object sdsDuplicata_CobDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsDuplicata_CobDT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
    end
    object sdsDuplicata_CobUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsDuplicata_CobDTUSUARIO: TDateField
      FieldName = 'DTUSUARIO'
    end
    object sdsDuplicata_CobHRUSUARIO: TTimeField
      FieldName = 'HRUSUARIO'
    end
    object sdsDuplicata_CobDTREMESSA: TDateField
      FieldName = 'DTREMESSA'
    end
    object sdsDuplicata_CobID_DUPLICATA_HIST: TIntegerField
      FieldName = 'ID_DUPLICATA_HIST'
    end
    object sdsDuplicata_CobID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
  end
  object dspDuplicata_Cob: TDataSetProvider
    DataSet = sdsDuplicata_Cob
    UpdateMode = upWhereKeyOnly
    Left = 96
    Top = 126
  end
  object cdsDuplicata_Cob: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspDuplicata_Cob'
    Left = 160
    Top = 128
    object cdsDuplicata_CobID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDuplicata_CobITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDuplicata_CobID_OCORRENCIA: TIntegerField
      FieldName = 'ID_OCORRENCIA'
    end
    object cdsDuplicata_CobDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsDuplicata_CobDT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
    end
    object cdsDuplicata_CobUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsDuplicata_CobDTUSUARIO: TDateField
      FieldName = 'DTUSUARIO'
    end
    object cdsDuplicata_CobHRUSUARIO: TTimeField
      FieldName = 'HRUSUARIO'
    end
    object cdsDuplicata_CobDTREMESSA: TDateField
      FieldName = 'DTREMESSA'
    end
    object cdsDuplicata_CobID_DUPLICATA_HIST: TIntegerField
      FieldName = 'ID_DUPLICATA_HIST'
    end
    object cdsDuplicata_CobID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
  end
  object dsDuplicata_Cob: TDataSource
    DataSet = cdsDuplicata_Cob
    Left = 216
    Top = 128
  end
end
