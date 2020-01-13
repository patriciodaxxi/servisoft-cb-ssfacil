object DMCadPessoa: TDMCadPessoa
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 154
  Height = 710
  Width = 1142
  object sdsPessoa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PESSOA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 8
    object sdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsPessoaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object sdsPessoaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object sdsPessoaCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object sdsPessoaNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object sdsPessoaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sdsPessoaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object sdsPessoaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsPessoaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sdsPessoaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sdsPessoaDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object sdsPessoaTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
    object sdsPessoaDDDFONE2: TIntegerField
      FieldName = 'DDDFONE2'
    end
    object sdsPessoaTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object sdsPessoaDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object sdsPessoaFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object sdsPessoaPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object sdsPessoaINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object sdsPessoaENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 40
    end
    object sdsPessoaCOMPLEMENTO_END_ENT: TStringField
      FieldName = 'COMPLEMENTO_END_ENT'
      Size = 60
    end
    object sdsPessoaNUM_END_ENT: TStringField
      FieldName = 'NUM_END_ENT'
    end
    object sdsPessoaBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 26
    end
    object sdsPessoaID_CIDADE_ENT: TIntegerField
      FieldName = 'ID_CIDADE_ENT'
    end
    object sdsPessoaCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 40
    end
    object sdsPessoaCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 10
    end
    object sdsPessoaUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object sdsPessoaPESSOA_ENT: TStringField
      FieldName = 'PESSOA_ENT'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaCNPJ_CPF_ENT: TStringField
      FieldName = 'CNPJ_CPF_ENT'
      Size = 18
    end
    object sdsPessoaINSC_EST_ENT: TStringField
      FieldName = 'INSC_EST_ENT'
      Size = 18
    end
    object sdsPessoaENDERECO_PGTO: TStringField
      FieldName = 'ENDERECO_PGTO'
      Size = 40
    end
    object sdsPessoaCOMPLEMENTO_END_PGTO: TStringField
      FieldName = 'COMPLEMENTO_END_PGTO'
      Size = 60
    end
    object sdsPessoaNUM_END_PGTO: TStringField
      FieldName = 'NUM_END_PGTO'
    end
    object sdsPessoaBAIRRO_PGTO: TStringField
      FieldName = 'BAIRRO_PGTO'
      Size = 26
    end
    object sdsPessoaID_CIDADE_PGTO: TIntegerField
      FieldName = 'ID_CIDADE_PGTO'
    end
    object sdsPessoaCIDADE_PGTO: TStringField
      FieldName = 'CIDADE_PGTO'
      Size = 40
    end
    object sdsPessoaCEP_PGTO: TStringField
      FieldName = 'CEP_PGTO'
      Size = 10
    end
    object sdsPessoaUF_PGTO: TStringField
      FieldName = 'UF_PGTO'
      FixedChar = True
      Size = 2
    end
    object sdsPessoaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsPessoaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object sdsPessoaHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
    object sdsPessoaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsPessoaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsPessoaCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 10
    end
    object sdsPessoaRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object sdsPessoaID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object sdsPessoaID_CONTABOLETO: TIntegerField
      FieldName = 'ID_CONTABOLETO'
    end
    object sdsPessoaID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object sdsPessoaID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object sdsPessoaPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsPessoaID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object sdsPessoaDDD_ENT: TIntegerField
      FieldName = 'DDD_ENT'
    end
    object sdsPessoaFONE_ENT: TStringField
      FieldName = 'FONE_ENT'
      Size = 15
    end
    object sdsPessoaDDD_PGTO: TIntegerField
      FieldName = 'DDD_PGTO'
    end
    object sdsPessoaFONE_PGTO: TStringField
      FieldName = 'FONE_PGTO'
      Size = 15
    end
    object sdsPessoaINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 200
    end
    object sdsPessoaNOME_ENTREGA: TStringField
      FieldName = 'NOME_ENTREGA'
      Size = 60
    end
    object sdsPessoaEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 250
    end
    object sdsPessoaID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
    object sdsPessoaEMAIL_PGTO: TStringField
      FieldName = 'EMAIL_PGTO'
      Size = 150
    end
    object sdsPessoaEMAIL_NFE2: TStringField
      FieldName = 'EMAIL_NFE2'
      Size = 150
    end
    object sdsPessoaPESSOA_PGTO: TStringField
      FieldName = 'PESSOA_PGTO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaCNPJ_CPG_PGTO: TStringField
      FieldName = 'CNPJ_CPG_PGTO'
      Size = 18
    end
    object sdsPessoaINSC_EST_PGTO: TStringField
      FieldName = 'INSC_EST_PGTO'
      Size = 18
    end
    object sdsPessoaUF_PLACA: TStringField
      FieldName = 'UF_PLACA'
      Size = 2
    end
    object sdsPessoaPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object sdsPessoaTP_CLIENTE: TStringField
      FieldName = 'TP_CLIENTE'
      Size = 1
    end
    object sdsPessoaTP_FORNECEDOR: TStringField
      FieldName = 'TP_FORNECEDOR'
      Size = 1
    end
    object sdsPessoaTP_TRANSPORTADORA: TStringField
      FieldName = 'TP_TRANSPORTADORA'
      Size = 1
    end
    object sdsPessoaTP_VENDEDOR: TStringField
      FieldName = 'TP_VENDEDOR'
      Size = 1
    end
    object sdsPessoaTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object sdsPessoaTIPO_ICMS: TStringField
      FieldName = 'TIPO_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaID_TAB_PRECO: TIntegerField
      FieldName = 'ID_TAB_PRECO'
    end
    object sdsPessoaTP_ATELIER: TStringField
      FieldName = 'TP_ATELIER'
      Size = 1
    end
    object sdsPessoaTIPO_COMISSAO: TStringField
      FieldName = 'TIPO_COMISSAO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaPERC_COMISSAO_VEND: TFloatField
      FieldName = 'PERC_COMISSAO_VEND'
    end
    object sdsPessoaNOME_CONTATO: TStringField
      FieldName = 'NOME_CONTATO'
      Size = 40
    end
    object sdsPessoaINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object sdsPessoaDT_CONTRATO_INI: TDateField
      FieldName = 'DT_CONTRATO_INI'
    end
    object sdsPessoaDT_CONTRATO_FIN: TDateField
      FieldName = 'DT_CONTRATO_FIN'
    end
    object sdsPessoaID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object sdsPessoaID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object sdsPessoaVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object sdsPessoaCLIENTE_CONTA_ID: TIntegerField
      FieldName = 'CLIENTE_CONTA_ID'
    end
    object sdsPessoaFORNECEDOR_CONTA_ID: TIntegerField
      FieldName = 'FORNECEDOR_CONTA_ID'
    end
    object sdsPessoaVENDEDOR_CONTA_ID: TIntegerField
      FieldName = 'VENDEDOR_CONTA_ID'
    end
    object sdsPessoaTRANSPORTADORA_CONTA_ID: TIntegerField
      FieldName = 'TRANSPORTADORA_CONTA_ID'
    end
    object sdsPessoaATELIER_CONTA_ID: TIntegerField
      FieldName = 'ATELIER_CONTA_ID'
    end
    object sdsPessoaRETEM_ISS: TStringField
      FieldName = 'RETEM_ISS'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaRETEM_CSLL: TStringField
      FieldName = 'RETEM_CSLL'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaRETEM_PISCOFINS: TStringField
      FieldName = 'RETEM_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaRETEM_INSS: TStringField
      FieldName = 'RETEM_INSS'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaEMAIL_COMPRAS: TStringField
      FieldName = 'EMAIL_COMPRAS'
      Size = 200
    end
    object sdsPessoaCONTATO_COMPRAS: TStringField
      FieldName = 'CONTATO_COMPRAS'
      Size = 60
    end
    object sdsPessoaORGAO_PUBLICO: TStringField
      FieldName = 'ORGAO_PUBLICO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
    end
    object sdsPessoaDIMINUIR_RETENCAO: TStringField
      FieldName = 'DIMINUIR_RETENCAO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaPERC_REDUCAO_INSS: TFloatField
      FieldName = 'PERC_REDUCAO_INSS'
    end
    object sdsPessoaUSA_TRANSFICMS: TStringField
      FieldName = 'USA_TRANSFICMS'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaCLIENTE_ESTOQUE: TStringField
      FieldName = 'CLIENTE_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaUSA_TAMANHO_AGRUPADO_NFE: TStringField
      FieldName = 'USA_TAMANHO_AGRUPADO_NFE'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaCOD_ANT: TIntegerField
      FieldName = 'COD_ANT'
    end
    object sdsPessoaID_EDI: TIntegerField
      FieldName = 'ID_EDI'
    end
    object sdsPessoaPAI_NOME: TStringField
      FieldName = 'PAI_NOME'
      Size = 60
    end
    object sdsPessoaMAE_NOME: TStringField
      FieldName = 'MAE_NOME'
      Size = 60
    end
    object sdsPessoaTP_ALUNO: TStringField
      FieldName = 'TP_ALUNO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaCOBRAR_TAXA_BANCO: TStringField
      FieldName = 'COBRAR_TAXA_BANCO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaVLR_LIMITE_CREDITO: TFloatField
      FieldName = 'VLR_LIMITE_CREDITO'
    end
    object sdsPessoaINSC_EST_ST: TStringField
      FieldName = 'INSC_EST_ST'
      Size = 14
    end
    object sdsPessoaUF_ST: TStringField
      FieldName = 'UF_ST'
      Size = 2
    end
    object sdsPessoaTIPO_CONSUMIDOR: TSmallintField
      FieldName = 'TIPO_CONSUMIDOR'
    end
    object sdsPessoaTIPO_CONTRIBUINTE: TSmallintField
      FieldName = 'TIPO_CONTRIBUINTE'
    end
    object sdsPessoaINSC_SUFRAMA: TStringField
      FieldName = 'INSC_SUFRAMA'
      Size = 9
    end
    object sdsPessoaCOD_ALFA: TStringField
      FieldName = 'COD_ALFA'
      Size = 15
    end
    object sdsPessoaTP_PREPOSTO: TStringField
      FieldName = 'TP_PREPOSTO'
      Size = 1
    end
    object sdsPessoaTP_EXPORTACAO: TStringField
      FieldName = 'TP_EXPORTACAO'
      Size = 1
    end
    object sdsPessoaCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object sdsPessoaDTPEDIDO: TDateField
      FieldName = 'DTPEDIDO'
    end
    object sdsPessoaDTNOTA: TDateField
      FieldName = 'DTNOTA'
    end
    object sdsPessoaPERC_DESC_SUFRAMA: TFloatField
      FieldName = 'PERC_DESC_SUFRAMA'
    end
    object sdsPessoaVLR_LIMITE_COMPRA: TFloatField
      FieldName = 'VLR_LIMITE_COMPRA'
    end
    object sdsPessoaID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
    object sdsPessoaTP_FUNCIONARIO: TStringField
      FieldName = 'TP_FUNCIONARIO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaIMP_COD_PRODUTO_CLI: TStringField
      FieldName = 'IMP_COD_PRODUTO_CLI'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsPessoaVLR_ULT_FATURAMENTO: TFloatField
      FieldName = 'VLR_ULT_FATURAMENTO'
    end
    object sdsPessoaQTD_ULT_FATURAMENTO: TFloatField
      FieldName = 'QTD_ULT_FATURAMENTO'
    end
    object sdsPessoaCOD_CONTABIL_CLIENTE: TIntegerField
      FieldName = 'COD_CONTABIL_CLIENTE'
    end
    object sdsPessoaCOD_CONTABIL_FORNECEDOR: TIntegerField
      FieldName = 'COD_CONTABIL_FORNECEDOR'
    end
    object sdsPessoaID_REGIAO_VENDA: TIntegerField
      FieldName = 'ID_REGIAO_VENDA'
    end
    object sdsPessoaTIPO_CREDITO: TStringField
      FieldName = 'TIPO_CREDITO'
      Size = 1
    end
    object sdsPessoaUSUARIO_LOG: TStringField
      FieldName = 'USUARIO_LOG'
      Size = 15
    end
    object sdsPessoaID_CARTEIRA: TIntegerField
      FieldName = 'ID_CARTEIRA'
    end
    object sdsPessoaPROTESTAR: TStringField
      FieldName = 'PROTESTAR'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaDDDCELULAR: TIntegerField
      FieldName = 'DDDCELULAR'
    end
    object sdsPessoaCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 10
    end
    object sdsPessoaCONT_CUSTO_LIQ: TStringField
      FieldName = 'CONT_CUSTO_LIQ'
      Size = 1
    end
    object sdsPessoaUSA_OC_XML: TStringField
      FieldName = 'USA_OC_XML'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaIMP_COR_CLIENTE: TStringField
      FieldName = 'IMP_COR_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaOBS_AVISO: TStringField
      FieldName = 'OBS_AVISO'
      Size = 150
    end
    object sdsPessoaMOSTRAR_AVISO: TStringField
      FieldName = 'MOSTRAR_AVISO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaMDIA1: TIntegerField
      FieldName = 'MDIA1'
    end
    object sdsPessoaMDIA2: TIntegerField
      FieldName = 'MDIA2'
    end
    object sdsPessoaASSOCIAR_PROD: TStringField
      FieldName = 'ASSOCIAR_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaFUNCIONARIO_CONTA_ID: TIntegerField
      FieldName = 'FUNCIONARIO_CONTA_ID'
    end
    object sdsPessoaBAIXAR_ETIQ_PREFAT: TStringField
      FieldName = 'BAIXAR_ETIQ_PREFAT'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaCAIXINHA: TStringField
      FieldName = 'CAIXINHA'
      Size = 30
    end
    object sdsPessoaIPI_PAGO_FILIAL: TStringField
      FieldName = 'IPI_PAGO_FILIAL'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaIMP_NOMEPROD_CLIENTE: TStringField
      FieldName = 'IMP_NOMEPROD_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaSENHA_PEDIDO: TStringField
      FieldName = 'SENHA_PEDIDO'
      Size = 25
    end
    object sdsPessoaDESC_MAXIMO: TFloatField
      FieldName = 'DESC_MAXIMO'
    end
    object sdsPessoaIMP_ETIQUETA_ROT: TStringField
      FieldName = 'IMP_ETIQUETA_ROT'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaGERAR_PROTESTO: TStringField
      FieldName = 'GERAR_PROTESTO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaID_VENDEDOR_INT: TIntegerField
      FieldName = 'ID_VENDEDOR_INT'
    end
    object sdsPessoaPERC_COMISSAO_INT: TFloatField
      FieldName = 'PERC_COMISSAO_INT'
    end
  end
  object dspPessoa: TDataSetProvider
    DataSet = sdsPessoa
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspPessoaUpdateError
    Left = 80
    Top = 8
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspPessoa'
    BeforePost = cdsPessoaBeforePost
    OnNewRecord = cdsPessoaNewRecord
    OnReconcileError = cdsPessoaReconcileError
    Left = 112
    Top = 8
    object cdsPessoaCODIGO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 60
    end
    object cdsPessoaFANTASIA: TStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsPessoaENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsPessoaCOMPLEMENTO_END: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsPessoaNUM_END: TStringField
      Alignment = taCenter
      DisplayLabel = 'N'#186
      FieldName = 'NUM_END'
    end
    object cdsPessoaBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsPessoaID_CIDADE: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C'#243'd. Cidade'
      FieldName = 'ID_CIDADE'
    end
    object cdsPessoaCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsPessoaUF: TStringField
      Alignment = taCenter
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsPessoaCEP: TStringField
      Alignment = taCenter
      FieldName = 'CEP'
      Size = 10
    end
    object cdsPessoaDDDFONE1: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'DDD'
      FieldName = 'DDDFONE1'
    end
    object cdsPessoaTELEFONE1: TStringField
      Alignment = taCenter
      DisplayLabel = 'Fone'
      FieldName = 'TELEFONE1'
      Size = 15
    end
    object cdsPessoaDDDFONE2: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'DDD'
      FieldName = 'DDDFONE2'
    end
    object cdsPessoaTELEFONE2: TStringField
      Alignment = taCenter
      DisplayLabel = 'Fone'
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object cdsPessoaDDDFAX: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'DDD'
      FieldName = 'DDDFAX'
    end
    object cdsPessoaFAX: TStringField
      Alignment = taCenter
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
      Size = 15
    end
    object cdsPessoaPESSOA: TStringField
      DisplayLabel = 'Pessoa'
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCNPJ_CPF: TStringField
      Alignment = taCenter
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'CNPJ_CPF'
    end
    object cdsPessoaINSCR_EST: TStringField
      DisplayLabel = 'Insc. Estadual'
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object cdsPessoaENDERECO_ENT: TStringField
      DisplayLabel = 'Endere'#231'o Entrega'
      FieldName = 'ENDERECO_ENT'
      Size = 40
    end
    object cdsPessoaCOMPLEMENTO_END_ENT: TStringField
      FieldName = 'COMPLEMENTO_END_ENT'
      Size = 60
    end
    object cdsPessoaNUM_END_ENT: TStringField
      FieldName = 'NUM_END_ENT'
    end
    object cdsPessoaBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 26
    end
    object cdsPessoaID_CIDADE_ENT: TIntegerField
      FieldName = 'ID_CIDADE_ENT'
    end
    object cdsPessoaCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 40
    end
    object cdsPessoaCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 10
    end
    object cdsPessoaUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object cdsPessoaPESSOA_ENT: TStringField
      FieldName = 'PESSOA_ENT'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCNPJ_CPF_ENT: TStringField
      FieldName = 'CNPJ_CPF_ENT'
      Size = 18
    end
    object cdsPessoaINSC_EST_ENT: TStringField
      FieldName = 'INSC_EST_ENT'
      Size = 18
    end
    object cdsPessoaENDERECO_PGTO: TStringField
      FieldName = 'ENDERECO_PGTO'
      Size = 40
    end
    object cdsPessoaCOMPLEMENTO_END_PGTO: TStringField
      FieldName = 'COMPLEMENTO_END_PGTO'
      Size = 60
    end
    object cdsPessoaNUM_END_PGTO: TStringField
      FieldName = 'NUM_END_PGTO'
    end
    object cdsPessoaBAIRRO_PGTO: TStringField
      FieldName = 'BAIRRO_PGTO'
      Size = 26
    end
    object cdsPessoaID_CIDADE_PGTO: TIntegerField
      FieldName = 'ID_CIDADE_PGTO'
    end
    object cdsPessoaCIDADE_PGTO: TStringField
      FieldName = 'CIDADE_PGTO'
      Size = 40
    end
    object cdsPessoaCEP_PGTO: TStringField
      FieldName = 'CEP_PGTO'
      Size = 10
    end
    object cdsPessoaUF_PGTO: TStringField
      FieldName = 'UF_PGTO'
      FixedChar = True
      Size = 2
    end
    object cdsPessoaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsPessoaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object cdsPessoaHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
    object cdsPessoaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsPessoaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPessoaCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 10
    end
    object cdsPessoaRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object cdsPessoaID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsPessoaID_CONTABOLETO: TIntegerField
      FieldName = 'ID_CONTABOLETO'
    end
    object cdsPessoaID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsPessoaID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsPessoaPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsPessoaID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object cdsPessoaDDD_ENT: TIntegerField
      FieldName = 'DDD_ENT'
    end
    object cdsPessoaFONE_ENT: TStringField
      FieldName = 'FONE_ENT'
      Size = 15
    end
    object cdsPessoaDDD_PGTO: TIntegerField
      FieldName = 'DDD_PGTO'
    end
    object cdsPessoaFONE_PGTO: TStringField
      FieldName = 'FONE_PGTO'
      Size = 15
    end
    object cdsPessoaINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 200
    end
    object cdsPessoaNOME_ENTREGA: TStringField
      FieldName = 'NOME_ENTREGA'
      Size = 60
    end
    object cdsPessoaEMAIL_NFE: TStringField
      DisplayLabel = 'Email NFe'
      FieldName = 'EMAIL_NFE'
      Size = 250
    end
    object cdsPessoaID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
    object cdsPessoaEMAIL_PGTO: TStringField
      FieldName = 'EMAIL_PGTO'
      Size = 150
    end
    object cdsPessoaEMAIL_NFE2: TStringField
      DisplayLabel = 'Email NFe 2'
      FieldName = 'EMAIL_NFE2'
      Size = 150
    end
    object cdsPessoaPESSOA_PGTO: TStringField
      FieldName = 'PESSOA_PGTO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCNPJ_CPG_PGTO: TStringField
      FieldName = 'CNPJ_CPG_PGTO'
      Size = 18
    end
    object cdsPessoaINSC_EST_PGTO: TStringField
      FieldName = 'INSC_EST_PGTO'
      Size = 18
    end
    object cdsPessoaUF_PLACA: TStringField
      FieldName = 'UF_PLACA'
      Size = 2
    end
    object cdsPessoaPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object cdsPessoaTP_CLIENTE: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'TP_CLIENTE'
      Size = 1
    end
    object cdsPessoaTP_FORNECEDOR: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'TP_FORNECEDOR'
      Size = 1
    end
    object cdsPessoaTP_TRANSPORTADORA: TStringField
      DisplayLabel = 'Transportadora'
      FieldName = 'TP_TRANSPORTADORA'
      Size = 1
    end
    object cdsPessoaTP_VENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'TP_VENDEDOR'
      Size = 1
    end
    object cdsPessoaTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaID_REGIME_TRIB: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C'#243'd. Regime'
      FieldName = 'ID_REGIME_TRIB'
    end
    object cdsPessoaTIPO_ICMS: TStringField
      FieldName = 'TIPO_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaID_TAB_PRECO: TIntegerField
      FieldName = 'ID_TAB_PRECO'
    end
    object cdsPessoaTP_ATELIER: TStringField
      FieldName = 'TP_ATELIER'
      Size = 1
    end
    object cdsPessoaTIPO_COMISSAO: TStringField
      FieldName = 'TIPO_COMISSAO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaNOME_CONTATO: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'NOME_CONTATO'
      Size = 40
    end
    object cdsPessoaINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object cdsPessoaDT_CONTRATO_INI: TDateField
      FieldName = 'DT_CONTRATO_INI'
    end
    object cdsPessoaDT_CONTRATO_FIN: TDateField
      FieldName = 'DT_CONTRATO_FIN'
    end
    object cdsPessoaID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object cdsPessoaID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsPessoaVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object cdsPessoaCLIENTE_CONTA_ID: TIntegerField
      FieldName = 'CLIENTE_CONTA_ID'
    end
    object cdsPessoaFORNECEDOR_CONTA_ID: TIntegerField
      FieldName = 'FORNECEDOR_CONTA_ID'
    end
    object cdsPessoaVENDEDOR_CONTA_ID: TIntegerField
      FieldName = 'VENDEDOR_CONTA_ID'
    end
    object cdsPessoaTRANSPORTADORA_CONTA_ID: TIntegerField
      FieldName = 'TRANSPORTADORA_CONTA_ID'
    end
    object cdsPessoaATELIER_CONTA_ID: TIntegerField
      FieldName = 'ATELIER_CONTA_ID'
    end
    object cdsPessoaRETEM_ISS: TStringField
      FieldName = 'RETEM_ISS'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaRETEM_CSLL: TStringField
      FieldName = 'RETEM_CSLL'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaRETEM_PISCOFINS: TStringField
      FieldName = 'RETEM_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaRETEM_INSS: TStringField
      FieldName = 'RETEM_INSS'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaEMAIL_COMPRAS: TStringField
      FieldName = 'EMAIL_COMPRAS'
      Size = 200
    end
    object cdsPessoaCONTATO_COMPRAS: TStringField
      FieldName = 'CONTATO_COMPRAS'
      Size = 60
    end
    object cdsPessoaORGAO_PUBLICO: TStringField
      FieldName = 'ORGAO_PUBLICO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoasdsPessoa_Contato: TDataSetField
      FieldName = 'sdsPessoa_Contato'
    end
    object cdsPessoaID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
    end
    object cdsPessoaDIMINUIR_RETENCAO: TStringField
      FieldName = 'DIMINUIR_RETENCAO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaPERC_REDUCAO_INSS: TFloatField
      FieldName = 'PERC_REDUCAO_INSS'
    end
    object cdsPessoaUSA_TRANSFICMS: TStringField
      FieldName = 'USA_TRANSFICMS'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCLIENTE_ESTOQUE: TStringField
      FieldName = 'CLIENTE_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaUSA_TAMANHO_AGRUPADO_NFE: TStringField
      FieldName = 'USA_TAMANHO_AGRUPADO_NFE'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCOD_ANT: TIntegerField
      FieldName = 'COD_ANT'
    end
    object cdsPessoaID_EDI: TIntegerField
      FieldName = 'ID_EDI'
    end
    object cdsPessoaPAI_NOME: TStringField
      FieldName = 'PAI_NOME'
      Size = 60
    end
    object cdsPessoaMAE_NOME: TStringField
      FieldName = 'MAE_NOME'
      Size = 60
    end
    object cdsPessoaTP_ALUNO: TStringField
      FieldName = 'TP_ALUNO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCOBRAR_TAXA_BANCO: TStringField
      FieldName = 'COBRAR_TAXA_BANCO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaVLR_LIMITE_CREDITO: TFloatField
      FieldName = 'VLR_LIMITE_CREDITO'
    end
    object cdsPessoaINSC_EST_ST: TStringField
      FieldName = 'INSC_EST_ST'
      Size = 14
    end
    object cdsPessoaUF_ST: TStringField
      FieldName = 'UF_ST'
      Size = 2
    end
    object cdsPessoaTIPO_CONSUMIDOR: TSmallintField
      FieldName = 'TIPO_CONSUMIDOR'
    end
    object cdsPessoaTIPO_CONTRIBUINTE: TSmallintField
      FieldName = 'TIPO_CONTRIBUINTE'
    end
    object cdsPessoaINSC_SUFRAMA: TStringField
      FieldName = 'INSC_SUFRAMA'
      Size = 9
    end
    object cdsPessoaCOD_ALFA: TStringField
      FieldName = 'COD_ALFA'
      Size = 15
    end
    object cdsPessoaTP_PREPOSTO: TStringField
      FieldName = 'TP_PREPOSTO'
      Size = 1
    end
    object cdsPessoaTP_EXPORTACAO: TStringField
      FieldName = 'TP_EXPORTACAO'
      Size = 1
    end
    object cdsPessoaCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object cdsPessoaDTPEDIDO: TDateField
      FieldName = 'DTPEDIDO'
    end
    object cdsPessoaDTNOTA: TDateField
      FieldName = 'DTNOTA'
    end
    object cdsPessoaPERC_COMISSAO_VEND: TFloatField
      FieldName = 'PERC_COMISSAO_VEND'
    end
    object cdsPessoaPERC_DESC_SUFRAMA: TFloatField
      FieldName = 'PERC_DESC_SUFRAMA'
    end
    object cdsPessoaVLR_LIMITE_COMPRA: TFloatField
      FieldName = 'VLR_LIMITE_COMPRA'
    end
    object cdsPessoaID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
    object cdsPessoaTP_FUNCIONARIO: TStringField
      FieldName = 'TP_FUNCIONARIO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaIMP_COD_PRODUTO_CLI: TStringField
      FieldName = 'IMP_COD_PRODUTO_CLI'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsPessoaVLR_ULT_FATURAMENTO: TFloatField
      FieldName = 'VLR_ULT_FATURAMENTO'
      DisplayFormat = '0.00'
    end
    object cdsPessoaQTD_ULT_FATURAMENTO: TFloatField
      FieldName = 'QTD_ULT_FATURAMENTO'
    end
    object cdsPessoaCOD_CONTABIL_CLIENTE: TIntegerField
      FieldName = 'COD_CONTABIL_CLIENTE'
    end
    object cdsPessoaCOD_CONTABIL_FORNECEDOR: TIntegerField
      FieldName = 'COD_CONTABIL_FORNECEDOR'
    end
    object cdsPessoaID_REGIAO_VENDA: TIntegerField
      FieldName = 'ID_REGIAO_VENDA'
    end
    object cdsPessoaTIPO_CREDITO: TStringField
      FieldName = 'TIPO_CREDITO'
      Size = 1
    end
    object cdsPessoaUSUARIO_LOG: TStringField
      FieldName = 'USUARIO_LOG'
      Size = 15
    end
    object cdsPessoaID_CARTEIRA: TIntegerField
      FieldName = 'ID_CARTEIRA'
    end
    object cdsPessoaPROTESTAR: TStringField
      FieldName = 'PROTESTAR'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaDDDCELULAR: TIntegerField
      FieldName = 'DDDCELULAR'
    end
    object cdsPessoaCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 10
    end
    object cdsPessoaCONT_CUSTO_LIQ: TStringField
      FieldName = 'CONT_CUSTO_LIQ'
      Size = 1
    end
    object cdsPessoaUSA_OC_XML: TStringField
      FieldName = 'USA_OC_XML'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaIMP_COR_CLIENTE: TStringField
      FieldName = 'IMP_COR_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaOBS_AVISO: TStringField
      FieldName = 'OBS_AVISO'
      Size = 150
    end
    object cdsPessoaMOSTRAR_AVISO: TStringField
      FieldName = 'MOSTRAR_AVISO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaMDIA1: TIntegerField
      FieldName = 'MDIA1'
    end
    object cdsPessoaMDIA2: TIntegerField
      FieldName = 'MDIA2'
    end
    object cdsPessoaASSOCIAR_PROD: TStringField
      FieldName = 'ASSOCIAR_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaFUNCIONARIO_CONTA_ID: TIntegerField
      FieldName = 'FUNCIONARIO_CONTA_ID'
    end
    object cdsPessoaBAIXAR_ETIQ_PREFAT: TStringField
      FieldName = 'BAIXAR_ETIQ_PREFAT'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCAIXINHA: TStringField
      FieldName = 'CAIXINHA'
      Size = 30
    end
    object cdsPessoaIPI_PAGO_FILIAL: TStringField
      FieldName = 'IPI_PAGO_FILIAL'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaIMP_NOMEPROD_CLIENTE: TStringField
      FieldName = 'IMP_NOMEPROD_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaSENHA_PEDIDO: TStringField
      FieldName = 'SENHA_PEDIDO'
      Size = 25
    end
    object cdsPessoaDESC_MAXIMO: TFloatField
      FieldName = 'DESC_MAXIMO'
      DisplayFormat = '##0.00'
    end
    object cdsPessoaIMP_ETIQUETA_ROT: TStringField
      FieldName = 'IMP_ETIQUETA_ROT'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaGERAR_PROTESTO: TStringField
      FieldName = 'GERAR_PROTESTO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaID_VENDEDOR_INT: TIntegerField
      FieldName = 'ID_VENDEDOR_INT'
    end
    object cdsPessoaPERC_COMISSAO_INT: TFloatField
      FieldName = 'PERC_COMISSAO_INT'
    end
  end
  object dsPessoa: TDataSource
    DataSet = cdsPessoa
    Left = 144
    Top = 8
  end
  object sdsUF: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM UF'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 56
  end
  object dspUF: TDataSetProvider
    DataSet = sdsUF
    Left = 520
    Top = 56
  end
  object cdsUF: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UF'
    Params = <>
    ProviderName = 'dspUF'
    Left = 552
    Top = 56
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
    object cdsUFQTD_DIGITOS_IE: TIntegerField
      FieldName = 'QTD_DIGITOS_IE'
    end
    object cdsUFACEITA_ISENTO: TStringField
      FieldName = 'ACEITA_ISENTO'
      FixedChar = True
      Size = 1
    end
  end
  object dsUF: TDataSource
    DataSet = cdsUF
    Left = 584
    Top = 56
  end
  object sdsCondPgto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CONDPGTO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 490
    Top = 100
  end
  object dspCondPgto: TDataSetProvider
    DataSet = sdsCondPgto
    Left = 522
    Top = 100
  end
  object cdsCondPgto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCondPgto'
    Left = 554
    Top = 100
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
  end
  object dsCondPgto: TDataSource
    DataSet = cdsCondPgto
    Left = 586
    Top = 100
  end
  object sdsCidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CIDADE'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 490
    Top = 148
  end
  object dspCidade: TDataSetProvider
    DataSet = sdsCidade
    Left = 522
    Top = 148
  end
  object cdsCidade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCidade'
    Left = 554
    Top = 148
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
  end
  object dsCidade: TDataSource
    DataSet = cdsCidade
    Left = 586
    Top = 148
  end
  object sdsPais: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PAIS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 490
    Top = 196
  end
  object dspPais: TDataSetProvider
    DataSet = sdsPais
    Left = 522
    Top = 196
  end
  object cdsPais: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspPais'
    Left = 554
    Top = 196
    object cdsPaisID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPaisNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsPaisCODPAIS: TStringField
      FieldName = 'CODPAIS'
      Size = 5
    end
  end
  object dsPais: TDataSource
    DataSet = cdsPais
    Left = 586
    Top = 196
  end
  object sdsVendedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME, PERC_COMISSAO'#13#10'FROM PESSOA'#13#10'WHERE INATIVO =' +
      ' '#39'N'#39#13#10'      AND TP_VENDEDOR = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 240
  end
  object dspVendedor: TDataSetProvider
    DataSet = sdsVendedor
    Left = 520
    Top = 240
  end
  object cdsVendedor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspVendedor'
    Left = 552
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
  end
  object dsVendedor: TDataSource
    DataSet = cdsVendedor
    Left = 584
    Top = 240
  end
  object sdsTransportadora: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME'#13#10'FROM PESSOA'#13#10'WHERE INATIVO = '#39'N'#39#13#10'      AND' +
      ' TP_TRANSPORTADORA = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 288
  end
  object dspTransportadora: TDataSetProvider
    DataSet = sdsTransportadora
    Left = 520
    Top = 288
  end
  object cdsTransportadora: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspTransportadora'
    Left = 552
    Top = 288
    object cdsTransportadoraCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsTransportadoraNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsTransportadora: TDataSource
    DataSet = cdsTransportadora
    Left = 584
    Top = 288
  end
  object sdsTipoCobranca: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TIPOCOBRANCA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 336
  end
  object dspTipoCobranca: TDataSetProvider
    DataSet = sdsTipoCobranca
    Left = 520
    Top = 336
  end
  object cdsTipoCobranca: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspTipoCobranca'
    Left = 552
    Top = 336
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
    Left = 584
    Top = 336
  end
  object dsContas: TDataSource
    DataSet = cdsContas
    Left = 584
    Top = 392
  end
  object cdsContas: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspContas'
    Left = 552
    Top = 392
    object cdsContasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsContasNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dspContas: TDataSetProvider
    DataSet = sdsContas
    Left = 520
    Top = 392
  end
  object sdsContas: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME'#13#10'FROM CONTAS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 392
  end
  object dsRegimeTrib: TDataSource
    DataSet = cdsRegimeTrib
    Left = 584
    Top = 440
  end
  object cdsRegimeTrib: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspRegimeTrib'
    Left = 552
    Top = 440
    object cdsRegimeTribID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsRegimeTribCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsRegimeTribNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dspRegimeTrib: TDataSetProvider
    DataSet = sdsRegimeTrib
    Left = 520
    Top = 440
  end
  object sdsRegimeTrib: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM REGIME_TRIB'#13#10'WHERE TIPO = '#39'NFE'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 440
  end
  object dsTab_Preco: TDataSource
    DataSet = cdsTab_Preco
    Left = 344
    Top = 399
  end
  object cdsTab_Preco: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspTab_Preco'
    Left = 312
    Top = 399
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
  end
  object dspTab_Preco: TDataSetProvider
    DataSet = sdsTab_Preco
    Left = 280
    Top = 399
  end
  object sdsTab_Preco: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_PRECO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 248
    Top = 399
    object sdsTab_PrecoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTab_PrecoNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object sdsTab_PrecoDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object sdsTab_PrecoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
  end
  object xtrConsultaCadastro: TXMLTransformProvider
    Left = 252
    Top = 446
  end
  object cdsConsultaCadastro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'xtrConsultaCadastro'
    Left = 316
    Top = 446
    object cdsConsultaCadastroIE: TStringField
      DisplayLabel = 'Insc. Estadual'
      FieldName = 'IE'
      Size = 14
    end
    object cdsConsultaCadastroCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object cdsConsultaCadastroCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object cdsConsultaCadastroUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsConsultaCadastrocSit: TIntegerField
      FieldName = 'cSit'
    end
    object cdsConsultaCadastroindCredNFe: TIntegerField
      FieldName = 'indCredNFe'
    end
    object cdsConsultaCadastroindCredCTe: TIntegerField
      FieldName = 'indCredCTe'
    end
    object cdsConsultaCadastroxNome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'xNome'
      Size = 60
    end
    object cdsConsultaCadastroxRegApur: TStringField
      FieldName = 'xRegApur'
      Size = 60
    end
    object cdsConsultaCadastroCNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object cdsConsultaCadastrodIniAtiv: TDateTimeField
      DisplayLabel = 'Dt.In'#237'cio Atividade'
      FieldName = 'dIniAtiv'
    end
    object cdsConsultaCadastrodUltSit: TDateTimeField
      DisplayLabel = 'Dt. '#218'ltima Situa'#231#227'o'
      FieldName = 'dUltSit'
    end
    object cdsConsultaCadastroIEUnica: TStringField
      FieldName = 'IEUnica'
      Size = 14
    end
    object cdsConsultaCadastroIEAtual: TStringField
      FieldName = 'IEAtual'
      Size = 14
    end
    object cdsConsultaCadastroxLgr: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'xLgr'
      Size = 255
    end
    object cdsConsultaCadastronro: TStringField
      DisplayLabel = 'N'#186' End'
      FieldName = 'nro'
      Size = 60
    end
    object cdsConsultaCadastroxCpl: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'xCpl'
      Size = 60
    end
    object cdsConsultaCadastroxBairro: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'xBairro'
      Size = 60
    end
    object cdsConsultaCadastrocMun: TStringField
      DisplayLabel = 'C'#243'd. Municipio'
      FieldName = 'cMun'
      Size = 7
    end
    object cdsConsultaCadastroxMun: TStringField
      DisplayLabel = 'Nome Municipio'
      FieldName = 'xMun'
      Size = 60
    end
    object cdsConsultaCadastroCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS'
      'WHERE ID = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 1025
    Top = 31
    object qParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametrosENDXMLNFE: TStringField
      FieldName = 'ENDXMLNFE'
      Size = 250
    end
    object qParametrosENDPDFNFE: TStringField
      FieldName = 'ENDPDFNFE'
      Size = 250
    end
    object qParametrosSERIENORMAL: TStringField
      FieldName = 'SERIENORMAL'
      Size = 3
    end
    object qParametrosSERIECONTINGENCIA: TStringField
      FieldName = 'SERIECONTINGENCIA'
      Size = 3
    end
    object qParametrosLOCALSERVIDORNFE: TStringField
      FieldName = 'LOCALSERVIDORNFE'
      Size = 100
    end
    object qParametrosEMAILRESPONSAVELSISTEMA: TStringField
      FieldName = 'EMAILRESPONSAVELSISTEMA'
      Size = 200
    end
    object qParametrosNFEPRODUCAO: TStringField
      FieldName = 'NFEPRODUCAO'
      FixedChar = True
      Size = 1
    end
    object qParametrosANEXARDANFE: TStringField
      FieldName = 'ANEXARDANFE'
      FixedChar = True
      Size = 1
    end
    object qParametrosVERSAONFE: TStringField
      FieldName = 'VERSAONFE'
      Size = 10
    end
    object qParametrosVERSAOEMISSAONFE: TStringField
      FieldName = 'VERSAOEMISSAONFE'
      Size = 10
    end
    object qParametrosTIPOLOGONFE: TStringField
      FieldName = 'TIPOLOGONFE'
      FixedChar = True
      Size = 1
    end
    object qParametrosAPLICARDESCONTONOICMS: TStringField
      FieldName = 'APLICARDESCONTONOICMS'
      FixedChar = True
      Size = 1
    end
    object qParametrosAPLICARDESCONTONOIPI: TStringField
      FieldName = 'APLICARDESCONTONOIPI'
      FixedChar = True
      Size = 1
    end
    object qParametrosSOMARNOPROD_FRETE: TStringField
      FieldName = 'SOMARNOPROD_FRETE'
      FixedChar = True
      Size = 1
    end
    object qParametrosSOMARNOPROD_OUTRASDESP: TStringField
      FieldName = 'SOMARNOPROD_OUTRASDESP'
      FixedChar = True
      Size = 1
    end
    object qParametrosSOMARNOPROD_SEGURO: TStringField
      FieldName = 'SOMARNOPROD_SEGURO'
      FixedChar = True
      Size = 1
    end
    object qParametrosAJUSTELOGONFEAUTOMATICO: TStringField
      FieldName = 'AJUSTELOGONFEAUTOMATICO'
      FixedChar = True
      Size = 1
    end
    object qParametrosINFNUMNOTAMANUAL: TStringField
      FieldName = 'INFNUMNOTAMANUAL'
      FixedChar = True
      Size = 1
    end
    object qParametrosOPCAO_DTENTREGAPEDIDO: TStringField
      FieldName = 'OPCAO_DTENTREGAPEDIDO'
      FixedChar = True
      Size = 1
    end
    object qParametrosOBS_SIMPLES: TStringField
      FieldName = 'OBS_SIMPLES'
      Size = 250
    end
    object qParametrosIMP_OBSSIMPLES: TStringField
      FieldName = 'IMP_OBSSIMPLES'
      FixedChar = True
      Size = 1
    end
    object qParametrosIMP_REFERENCIANANOTA: TStringField
      FieldName = 'IMP_REFERENCIANANOTA'
      FixedChar = True
      Size = 1
    end
    object qParametrosENVIARNOTABENEF_NANFE: TStringField
      FieldName = 'ENVIARNOTABENEF_NANFE'
      FixedChar = True
      Size = 1
    end
    object qParametrosIMP_CODPRODCLI_DANFE: TStringField
      FieldName = 'IMP_CODPRODCLI_DANFE'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_SERVICO: TStringField
      FieldName = 'USA_SERVICO'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_TAMANHO_AGRUPADO_NFE: TStringField
      FieldName = 'USA_TAMANHO_AGRUPADO_NFE'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_CONTA_ORCAMENTO: TStringField
      FieldName = 'USA_CONTA_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_EDI: TStringField
      FieldName = 'USA_EDI'
      FixedChar = True
      Size = 1
    end
    object qParametrosESCOLA: TStringField
      FieldName = 'ESCOLA'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_LIMITE_CREDITO: TStringField
      FieldName = 'USA_LIMITE_CREDITO'
      FixedChar = True
      Size = 1
    end
    object qParametrosCADASTRA_ORGAO_PUBLICO: TStringField
      FieldName = 'CADASTRA_ORGAO_PUBLICO'
      FixedChar = True
      Size = 1
    end
    object qParametrosEMPRESA_CONTABIL: TStringField
      FieldName = 'EMPRESA_CONTABIL'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_CARIMBO: TStringField
      FieldName = 'USA_CARIMBO'
      FixedChar = True
      Size = 1
    end
    object qParametrosPERC_COMISSAO_PAGA_NOTA: TFloatField
      FieldName = 'PERC_COMISSAO_PAGA_NOTA'
    end
    object qParametrosID_CLIENTE_CONSUMIDOR: TIntegerField
      FieldName = 'ID_CLIENTE_CONSUMIDOR'
    end
    object qParametrosTIPO_COMISSAO_PROD: TStringField
      FieldName = 'TIPO_COMISSAO_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_VENDEDOR: TStringField
      FieldName = 'USA_VENDEDOR'
      FixedChar = True
      Size = 1
    end
  end
  object qFilial: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select f.id, f.cnpj_cpf, LOCALSERVIDORNFE, PESSOA'
      'from filial f'
      'where INATIVO = '#39'N'#39
      'AND PRINCIPAL = '#39'S'#39)
    SQLConnection = dmDatabase.scoDados
    Left = 1056
    Top = 31
    object qFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qFilialCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object qFilialLOCALSERVIDORNFE: TStringField
      FieldName = 'LOCALSERVIDORNFE'
      Size = 100
    end
    object qFilialPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
  end
  object dsConsultaCadastro: TDataSource
    DataSet = cdsConsultaCadastro
    Left = 344
    Top = 446
  end
  object sdsServico_Pad: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, CODIGO, NOME, TIPO_AS , CODIGO || '#39'-'#39' || NOME AS NOME' +
      '_SERVICO'#13#10'FROM SERVICO'#13#10'WHERE TIPO_AS = '#39'A'#39#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 250
    Top = 293
    object sdsServico_PadID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsServico_PadCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 5
    end
    object sdsServico_PadNOME: TStringField
      FieldName = 'NOME'
      Size = 500
    end
    object sdsServico_PadTIPO_AS: TStringField
      FieldName = 'TIPO_AS'
      FixedChar = True
      Size = 1
    end
    object sdsServico_PadNOME_SERVICO: TStringField
      FieldName = 'NOME_SERVICO'
      Size = 506
    end
  end
  object dspServico_Pad: TDataSetProvider
    DataSet = sdsServico_Pad
    Left = 282
    Top = 293
  end
  object cdsServico_Pad: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspServico_Pad'
    Left = 314
    Top = 293
    object cdsServico_PadID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsServico_PadCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 5
    end
    object cdsServico_PadNOME: TStringField
      FieldName = 'NOME'
      Size = 500
    end
    object cdsServico_PadTIPO_AS: TStringField
      FieldName = 'TIPO_AS'
      FixedChar = True
      Size = 1
    end
    object cdsServico_PadNOME_SERVICO: TStringField
      FieldName = 'NOME_SERVICO'
      Size = 506
    end
  end
  object dsServico_Pad: TDataSource
    DataSet = cdsServico_Pad
    Left = 346
    Top = 293
  end
  object sdsServico_Int: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM SERVICO_INT'#13#10#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 250
    Top = 349
    object sdsServico_IntID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsServico_IntNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object sdsServico_IntVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
  end
  object dspServico_Int: TDataSetProvider
    DataSet = sdsServico_Int
    Left = 282
    Top = 349
  end
  object cdsServico_Int: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspServico_Int'
    Left = 314
    Top = 349
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
  end
  object dsServico_Int: TDataSource
    DataSet = cdsServico_Int
    Left = 346
    Top = 349
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 792
    Top = 407
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 760
    Top = 407
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
    object cdsFilialID_SERVICO_PAD: TIntegerField
      FieldName = 'ID_SERVICO_PAD'
    end
    object cdsFilialID_SERVICO_SINT: TIntegerField
      FieldName = 'ID_SERVICO_SINT'
    end
    object cdsFilialCOD_SERVICO_SINT: TStringField
      FieldName = 'COD_SERVICO_SINT'
      Size = 5
    end
    object cdsFilialID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsFilialUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 728
    Top = 407
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT FIL.*, SER.CODIGO COD_SERVICO_SINT '#13#10'FROM FILIAL FIL'#13#10'LEF' +
      'T JOIN SERVICO SER'#13#10'ON FIL.ID_SERVICO_SINT = SER.ID'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 696
    Top = 407
  end
  object dsContaOrcamento: TDataSource
    DataSet = cdsContaOrcamento
    Left = 792
    Top = 264
  end
  object cdsContaOrcamento: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'DESCRICAO'
    Params = <>
    ProviderName = 'dspContaOrcamento'
    Left = 760
    Top = 264
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
  object dspContaOrcamento: TDataSetProvider
    DataSet = sdsContaOrcamento
    Left = 728
    Top = 264
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
    Left = 696
    Top = 264
  end
  object dsPessoa_Servico: TDataSource
    DataSet = cdsPessoa_Servico
    Left = 144
    Top = 150
  end
  object cdsPessoa_Servico: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO;ITEM'
    Params = <>
    ProviderName = 'dspPessoa_Servico'
    Left = 112
    Top = 150
    object cdsPessoa_ServicoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsPessoa_ServicoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPessoa_ServicoID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
      Required = True
    end
    object cdsPessoa_ServicoPERC_ISS: TFloatField
      FieldName = 'PERC_ISS'
      DisplayFormat = '0.00'
    end
    object cdsPessoa_ServicoNOME_SERVICO: TStringField
      FieldName = 'NOME_SERVICO'
      ProviderFlags = []
      Size = 500
    end
    object cdsPessoa_ServicoCOD_SERVICO: TStringField
      FieldName = 'COD_SERVICO'
      ProviderFlags = []
      Required = True
      Size = 5
    end
  end
  object dspPessoa_Servico: TDataSetProvider
    DataSet = sdsPessoa_Servico
    Left = 80
    Top = 150
  end
  object sdsPessoa_Servico: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PS.*, S.NOME NOME_SERVICO, S.CODIGO COD_SERVICO'#13#10'FROM PES' +
      'SOA_SERVICO PS'#13#10'INNER JOIN SERVICO S'#13#10'ON PS.ID_SERVICO = S.ID'#13#10'W' +
      'HERE PS.CODIGO = :CODIGO'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 150
    object sdsPessoa_ServicoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsPessoa_ServicoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsPessoa_ServicoID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
      Required = True
    end
    object sdsPessoa_ServicoPERC_ISS: TFloatField
      FieldName = 'PERC_ISS'
    end
    object sdsPessoa_ServicoNOME_SERVICO: TStringField
      FieldName = 'NOME_SERVICO'
      ProviderFlags = []
      Size = 500
    end
    object sdsPessoa_ServicoCOD_SERVICO: TStringField
      FieldName = 'COD_SERVICO'
      ProviderFlags = []
      Required = True
      Size = 5
    end
  end
  object dsPessoa_Fiscal: TDataSource
    DataSet = cdsPessoa_Fiscal
    Left = 144
    Top = 198
  end
  object cdsPessoa_Fiscal: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspPessoa_Fiscal'
    BeforePost = cdsPessoa_FiscalBeforePost
    OnNewRecord = cdsPessoa_FiscalNewRecord
    Left = 112
    Top = 198
    object cdsPessoa_FiscalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoa_FiscalIPI_SUSPENSO: TStringField
      FieldName = 'IPI_SUSPENSO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_FiscalIPI_DT_INICIO: TDateField
      FieldName = 'IPI_DT_INICIO'
    end
    object cdsPessoa_FiscalIPI_DT_FINAL: TDateField
      FieldName = 'IPI_DT_FINAL'
    end
    object cdsPessoa_FiscalIPI_OBS: TStringField
      FieldName = 'IPI_OBS'
      Size = 250
    end
    object cdsPessoa_FiscalIPI_ID_CSTIPI: TIntegerField
      FieldName = 'IPI_ID_CSTIPI'
    end
    object cdsPessoa_FiscalPIS_SUSPENSO: TStringField
      FieldName = 'PIS_SUSPENSO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_FiscalPIS_DT_INICIO: TDateField
      FieldName = 'PIS_DT_INICIO'
    end
    object cdsPessoa_FiscalPIS_DT_FINAL: TDateField
      FieldName = 'PIS_DT_FINAL'
    end
    object cdsPessoa_FiscalPIS_OBS: TStringField
      FieldName = 'PIS_OBS'
      Size = 250
    end
    object cdsPessoa_FiscalPIS_ID_PIS: TIntegerField
      FieldName = 'PIS_ID_PIS'
    end
    object cdsPessoa_FiscalPIS_ID_COFINS: TIntegerField
      FieldName = 'PIS_ID_COFINS'
    end
    object cdsPessoa_FiscalDESC_SUFRAMA_PIS_COFINS: TStringField
      FieldName = 'DESC_SUFRAMA_PIS_COFINS'
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_FiscalDESC_SUFRAMA_ICMS: TStringField
      FieldName = 'DESC_SUFRAMA_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_FiscalDESC_SUFRAMA_IPI: TStringField
      FieldName = 'DESC_SUFRAMA_IPI'
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_FiscalOBS_LEI_SUFRAMA: TStringField
      FieldName = 'OBS_LEI_SUFRAMA'
      Size = 250
    end
    object cdsPessoa_FiscalOBS_LEI_DADOS_ADICIONAIS: TStringField
      FieldName = 'OBS_LEI_DADOS_ADICIONAIS'
      Size = 250
    end
    object cdsPessoa_FiscalID_CST_ICMS_SUFRAMA: TIntegerField
      FieldName = 'ID_CST_ICMS_SUFRAMA'
    end
    object cdsPessoa_FiscalID_CST_PIS_COFINS_SUFRAMA: TIntegerField
      FieldName = 'ID_CST_PIS_COFINS_SUFRAMA'
    end
    object cdsPessoa_FiscalID_CST_IPI_SUFRAMA: TIntegerField
      FieldName = 'ID_CST_IPI_SUFRAMA'
    end
    object cdsPessoa_FiscalID_ENQIPI_SUFRAMA: TIntegerField
      FieldName = 'ID_ENQIPI_SUFRAMA'
    end
    object cdsPessoa_FiscalID_ENQIPI: TIntegerField
      FieldName = 'ID_ENQIPI'
    end
    object cdsPessoa_FiscalID_CST_ICMS: TIntegerField
      FieldName = 'ID_CST_ICMS'
    end
    object cdsPessoa_FiscalID_CST_ICMS_SUFRAMA_ST: TIntegerField
      FieldName = 'ID_CST_ICMS_SUFRAMA_ST'
    end
    object cdsPessoa_FiscalDRAW_OBS: TStringField
      FieldName = 'DRAW_OBS'
      Size = 250
    end
    object cdsPessoa_FiscalDRAW_ID_PIS_COFINS: TIntegerField
      FieldName = 'DRAW_ID_PIS_COFINS'
    end
    object cdsPessoa_FiscalDRAW_ID_IPI: TIntegerField
      FieldName = 'DRAW_ID_IPI'
    end
    object cdsPessoa_FiscalDRAW_ENQIPI: TIntegerField
      FieldName = 'DRAW_ENQIPI'
    end
    object cdsPessoa_FiscalDRAW_PERC_DESCONTO: TFloatField
      FieldName = 'DRAW_PERC_DESCONTO'
    end
    object cdsPessoa_FiscalDRAW_POSSUI: TStringField
      FieldName = 'DRAW_POSSUI'
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_FiscalCAE_1: TStringField
      FieldName = 'CAE_1'
      Size = 9
    end
    object cdsPessoa_FiscalCAE_2: TStringField
      FieldName = 'CAE_2'
      Size = 9
    end
    object cdsPessoa_FiscalCAE_3: TStringField
      FieldName = 'CAE_3'
      Size = 9
    end
    object cdsPessoa_FiscalCOD_BENEF: TStringField
      FieldName = 'COD_BENEF'
      Size = 8
    end
    object cdsPessoa_FiscalOPCAO_DIFERIMENTO: TStringField
      FieldName = 'OPCAO_DIFERIMENTO'
      FixedChar = True
      Size = 1
    end
  end
  object dspPessoa_Fiscal: TDataSetProvider
    DataSet = sdsPessoa_Fiscal
    UpdateMode = upWhereKeyOnly
    Left = 80
    Top = 198
  end
  object sdsPessoa_Fiscal: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PESSOA_FISCAL'#13#10'WHERE CODIGO = :CODIGO'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 198
    object sdsPessoa_FiscalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoa_FiscalIPI_SUSPENSO: TStringField
      FieldName = 'IPI_SUSPENSO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoa_FiscalIPI_DT_INICIO: TDateField
      FieldName = 'IPI_DT_INICIO'
    end
    object sdsPessoa_FiscalIPI_DT_FINAL: TDateField
      FieldName = 'IPI_DT_FINAL'
    end
    object sdsPessoa_FiscalIPI_OBS: TStringField
      FieldName = 'IPI_OBS'
      Size = 250
    end
    object sdsPessoa_FiscalIPI_ID_CSTIPI: TIntegerField
      FieldName = 'IPI_ID_CSTIPI'
    end
    object sdsPessoa_FiscalPIS_SUSPENSO: TStringField
      FieldName = 'PIS_SUSPENSO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoa_FiscalPIS_DT_INICIO: TDateField
      FieldName = 'PIS_DT_INICIO'
    end
    object sdsPessoa_FiscalPIS_DT_FINAL: TDateField
      FieldName = 'PIS_DT_FINAL'
    end
    object sdsPessoa_FiscalPIS_OBS: TStringField
      FieldName = 'PIS_OBS'
      Size = 250
    end
    object sdsPessoa_FiscalPIS_ID_PIS: TIntegerField
      FieldName = 'PIS_ID_PIS'
    end
    object sdsPessoa_FiscalPIS_ID_COFINS: TIntegerField
      FieldName = 'PIS_ID_COFINS'
    end
    object sdsPessoa_FiscalDESC_SUFRAMA_PIS_COFINS: TStringField
      FieldName = 'DESC_SUFRAMA_PIS_COFINS'
      FixedChar = True
      Size = 1
    end
    object sdsPessoa_FiscalDESC_SUFRAMA_ICMS: TStringField
      FieldName = 'DESC_SUFRAMA_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsPessoa_FiscalDESC_SUFRAMA_IPI: TStringField
      FieldName = 'DESC_SUFRAMA_IPI'
      FixedChar = True
      Size = 1
    end
    object sdsPessoa_FiscalOBS_LEI_SUFRAMA: TStringField
      FieldName = 'OBS_LEI_SUFRAMA'
      Size = 250
    end
    object sdsPessoa_FiscalOBS_LEI_DADOS_ADICIONAIS: TStringField
      FieldName = 'OBS_LEI_DADOS_ADICIONAIS'
      Size = 250
    end
    object sdsPessoa_FiscalID_CST_ICMS_SUFRAMA: TIntegerField
      FieldName = 'ID_CST_ICMS_SUFRAMA'
    end
    object sdsPessoa_FiscalID_CST_PIS_COFINS_SUFRAMA: TIntegerField
      FieldName = 'ID_CST_PIS_COFINS_SUFRAMA'
    end
    object sdsPessoa_FiscalID_CST_IPI_SUFRAMA: TIntegerField
      FieldName = 'ID_CST_IPI_SUFRAMA'
    end
    object sdsPessoa_FiscalID_ENQIPI_SUFRAMA: TIntegerField
      FieldName = 'ID_ENQIPI_SUFRAMA'
    end
    object sdsPessoa_FiscalID_ENQIPI: TIntegerField
      FieldName = 'ID_ENQIPI'
    end
    object sdsPessoa_FiscalID_CST_ICMS: TIntegerField
      FieldName = 'ID_CST_ICMS'
    end
    object sdsPessoa_FiscalID_CST_ICMS_SUFRAMA_ST: TIntegerField
      FieldName = 'ID_CST_ICMS_SUFRAMA_ST'
    end
    object sdsPessoa_FiscalDRAW_OBS: TStringField
      FieldName = 'DRAW_OBS'
      Size = 250
    end
    object sdsPessoa_FiscalDRAW_ID_PIS_COFINS: TIntegerField
      FieldName = 'DRAW_ID_PIS_COFINS'
    end
    object sdsPessoa_FiscalDRAW_ID_IPI: TIntegerField
      FieldName = 'DRAW_ID_IPI'
    end
    object sdsPessoa_FiscalDRAW_ENQIPI: TIntegerField
      FieldName = 'DRAW_ENQIPI'
    end
    object sdsPessoa_FiscalDRAW_PERC_DESCONTO: TFloatField
      FieldName = 'DRAW_PERC_DESCONTO'
    end
    object sdsPessoa_FiscalDRAW_POSSUI: TStringField
      FieldName = 'DRAW_POSSUI'
      FixedChar = True
      Size = 1
    end
    object sdsPessoa_FiscalCAE_1: TStringField
      FieldName = 'CAE_1'
      Size = 9
    end
    object sdsPessoa_FiscalCAE_2: TStringField
      FieldName = 'CAE_2'
      Size = 9
    end
    object sdsPessoa_FiscalCAE_3: TStringField
      FieldName = 'CAE_3'
      Size = 9
    end
    object sdsPessoa_FiscalCOD_BENEF: TStringField
      FieldName = 'COD_BENEF'
      Size = 8
    end
    object sdsPessoa_FiscalOPCAO_DIFERIMENTO: TStringField
      FieldName = 'OPCAO_DIFERIMENTO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsTab_CSTIPI: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CSTIPI'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 250
    Top = 494
  end
  object dspTab_CSTIPI: TDataSetProvider
    DataSet = sdsTab_CSTIPI
    Left = 282
    Top = 494
  end
  object cdsTab_CSTIPI: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_CSTIPI'
    Left = 314
    Top = 494
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
    Left = 346
    Top = 494
  end
  object sdsTab_Pis: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_PIS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 690
    Top = 166
  end
  object dspTab_Pis: TDataSetProvider
    DataSet = sdsTab_Pis
    Left = 722
    Top = 166
  end
  object cdsTab_Pis: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_Pis'
    Left = 754
    Top = 166
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
    Left = 786
    Top = 166
  end
  object sdsTab_Cofins: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_COFINS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 690
    Top = 212
  end
  object dspTab_Cofins: TDataSetProvider
    DataSet = sdsTab_Cofins
    Left = 722
    Top = 212
  end
  object cdsTab_Cofins: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_Cofins'
    Left = 754
    Top = 212
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
    Left = 786
    Top = 212
  end
  object dsPessoa_Mestre: TDataSource
    DataSet = sdsPessoa
    Left = 40
    Top = 56
  end
  object sdsPessoa_Contato: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PESSOA_CONTATO'#13#10'WHERE CODIGO = :CODIGO'
    DataSource = dsPessoa_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 104
    object sdsPessoa_ContatoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoa_ContatoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoa_ContatoCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 50
    end
    object sdsPessoa_ContatoEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 200
    end
    object sdsPessoa_ContatoENVIAR_NFE: TStringField
      FieldName = 'ENVIAR_NFE'
      FixedChar = True
      Size = 1
    end
    object sdsPessoa_ContatoFONE: TStringField
      FieldName = 'FONE'
    end
    object sdsPessoa_ContatoSETOR: TStringField
      FieldName = 'SETOR'
      Size = 30
    end
  end
  object cdsPessoa_Contato: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPessoasdsPessoa_Contato
    IndexFieldNames = 'CODIGO;ITEM'
    Params = <>
    BeforeInsert = cdsPessoa_ContatoBeforeInsert
    AfterInsert = cdsPessoa_ContatoAfterInsert
    BeforePost = cdsPessoa_ContatoBeforePost
    Left = 112
    Top = 104
    object cdsPessoa_ContatoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoa_ContatoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
  object dsPessoa_Contato: TDataSource
    DataSet = cdsPessoa_Contato
    Left = 144
    Top = 104
  end
  object dsPessoa_Servico_Int: TDataSource
    DataSet = cdsPessoa_Servico_Int
    Left = 144
    Top = 246
  end
  object cdsPessoa_Servico_Int: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ITEM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_SERVICO_INT'
        DataType = ftInteger
      end
      item
        Name = 'SOMAR_DIMINUIR'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CALCULAR_INSS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NOME_SERVICO'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'VLR_SERVICO'
        DataType = ftFloat
      end
      item
        Name = 'CALCULAR_ISSQN'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CALCULAR_PISCOFINS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CALCULAR_CSLL'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CALCULAR_IR'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    IndexFieldNames = 'CODIGO;ITEM'
    Params = <>
    ProviderName = 'dspPessoa_Servico_Int'
    StoreDefs = True
    BeforePost = cdsPessoa_Servico_IntBeforePost
    OnNewRecord = cdsPessoa_Servico_IntNewRecord
    Left = 112
    Top = 246
    object cdsPessoa_Servico_IntCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoa_Servico_IntITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoa_Servico_IntID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsPessoa_Servico_IntSOMAR_DIMINUIR: TStringField
      FieldName = 'SOMAR_DIMINUIR'
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_Servico_IntCALCULAR_INSS: TStringField
      FieldName = 'CALCULAR_INSS'
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_Servico_IntNOME_SERVICO: TStringField
      FieldName = 'NOME_SERVICO'
      ProviderFlags = []
      Size = 70
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
  object dspPessoa_Servico_Int: TDataSetProvider
    DataSet = sdsPessoa_Servico_Int
    UpdateMode = upWhereKeyOnly
    Left = 80
    Top = 246
  end
  object sdsPessoa_Servico_Int: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PS.*, S.NOME NOME_SERVICO'#13#10'FROM PESSOA_SERVICO_INT PS'#13#10'IN' +
      'NER JOIN SERVICO_INT S'#13#10'ON PS.ID_SERVICO_INT = S.ID'#13#10'WHERE PS.CO' +
      'DIGO = :CODIGO'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 246
    object sdsPessoa_Servico_IntCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoa_Servico_IntITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoa_Servico_IntID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object sdsPessoa_Servico_IntSOMAR_DIMINUIR: TStringField
      FieldName = 'SOMAR_DIMINUIR'
      FixedChar = True
      Size = 1
    end
    object sdsPessoa_Servico_IntCALCULAR_INSS: TStringField
      FieldName = 'CALCULAR_INSS'
      FixedChar = True
      Size = 1
    end
    object sdsPessoa_Servico_IntNOME_SERVICO: TStringField
      FieldName = 'NOME_SERVICO'
      ProviderFlags = []
      Size = 70
    end
    object sdsPessoa_Servico_IntVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object sdsPessoa_Servico_IntCALCULAR_ISSQN: TStringField
      FieldName = 'CALCULAR_ISSQN'
      FixedChar = True
      Size = 1
    end
    object sdsPessoa_Servico_IntCALCULAR_PISCOFINS: TStringField
      FieldName = 'CALCULAR_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object sdsPessoa_Servico_IntCALCULAR_CSLL: TStringField
      FieldName = 'CALCULAR_CSLL'
      FixedChar = True
      Size = 1
    end
    object sdsPessoa_Servico_IntCALCULAR_IR: TStringField
      FieldName = 'CALCULAR_IR'
      FixedChar = True
      Size = 1
    end
  end
  object sdsNatureza: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NFSE_NATUREZA'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 690
    Top = 20
  end
  object dspNatureza: TDataSetProvider
    DataSet = sdsNatureza
    Left = 722
    Top = 20
  end
  object cdsNatureza: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspNatureza'
    Left = 754
    Top = 20
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
  end
  object dsNatureza: TDataSource
    DataSet = cdsNatureza
    Left = 786
    Top = 20
  end
  object qProvedor: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM PROVEDOR'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 1024
    Top = 128
    object qProvedorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProvedorNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qProvedorOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object qProvedorTIPO_NATUREZA: TStringField
      FieldName = 'TIPO_NATUREZA'
      FixedChar = True
      Size = 1
    end
    object qProvedorTIPO_RETORNO: TStringField
      FieldName = 'TIPO_RETORNO'
      Size = 1
    end
    object qProvedorMOSTRAR_ALIQUOTA_PD: TStringField
      FieldName = 'MOSTRAR_ALIQUOTA_PD'
      FixedChar = True
      Size = 1
    end
    object qProvedorINF_COD_SERVICO: TStringField
      FieldName = 'INF_COD_SERVICO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsEDI_Config: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM EDI_CONFIG'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 690
    Top = 68
  end
  object dspEDI_Config: TDataSetProvider
    DataSet = sdsEDI_Config
    Left = 722
    Top = 68
  end
  object cdsEDI_Config: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspEDI_Config'
    Left = 754
    Top = 68
    object cdsEDI_ConfigID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEDI_ConfigLAYOUT: TStringField
      FieldName = 'LAYOUT'
      Size = 15
    end
    object cdsEDI_ConfigNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsEDI_Config: TDataSource
    DataSet = cdsEDI_Config
    Left = 786
    Top = 68
  end
  object sdsPessoa_Consulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT  P.CODIGO, P.NOME, P.FANTASIA, P.ENDERECO, P.COMPLEMENTO_' +
      'END, P.NUM_END, P.BAIRRO, P.ID_CIDADE, P.CELULAR,'#13#10' P.CIDADE, P.' +
      'UF, P.CEP, P.DDDFONE1, P.TELEFONE1, P.DDDFONE2, P.TELEFONE2, P.D' +
      'DDFAX, P.FAX, P.PESSOA, P.CNPJ_CPF,'#13#10' P.INSCR_EST, P.ENDERECO_EN' +
      'T, P.COMPLEMENTO_END_ENT, P.NUM_END_ENT, P.BAIRRO_ENT, P.ID_CIDA' +
      'DE_ENT, P.CIDADE_ENT,'#13#10' P.CEP_ENT, P.UF_ENT, P.PESSOA_ENT, P.CNP' +
      'J_CPF_ENT, P.INSC_EST_ENT, P.ENDERECO_PGTO, P.COMPLEMENTO_END_PG' +
      'TO, P.NUM_END_PGTO,'#13#10' P.BAIRRO_PGTO, P.ID_CIDADE_PGTO, P.CIDADE_' +
      'PGTO, P.CEP_PGTO, P.UF_PGTO, P.CAIXAPOSTAL, P.RG, P.ID_VENDEDOR,' +
      ' P.ID_CONDPGTO,'#13#10' P.ID_CONTABOLETO, P.ID_TRANSPORTADORA, P.ID_TI' +
      'POCOBRANCA, P.ID_REDESPACHO, P.ID_PAIS, P.ID_REGIME_TRIB, P.PERC' +
      '_COMISSAO,'#13#10' P.DDD_ENT, P.FONE_ENT, P.DDD_PGTO, P.FONE_PGTO, P.I' +
      'NATIVO, P.HOMEPAGE, P.TIPO_FRETE, P.NOME_ENTREGA, P.EMAIL_NFE, P' +
      '.EMAIL_PGTO,'#13#10' P.EMAIL_NFE2, P.PESSOA_PGTO, P.CNPJ_CPG_PGTO, P.I' +
      'NSC_EST_PGTO, P.UF_PLACA, P.PLACA, P.TP_CLIENTE, P.TP_FORNECEDOR' +
      ', P.TP_TRANSPORTADORA,'#13#10' P.TP_VENDEDOR, P.TIPO_ICMS, P.ID_TAB_PR' +
      'ECO, P.TP_ATELIER, P.TIPO_COMISSAO, P.NOME_CONTATO, P.INSC_MUNIC' +
      'IPAL, P.DT_CONTRATO_INI,'#13#10' P.DT_CONTRATO_FIN, P.ID_SERVICO, P.ID' +
      '_SERVICO_INT, P.VLR_SERVICO, P.CLIENTE_CONTA_ID, P.FORNECEDOR_CO' +
      'NTA_ID, P.VENDEDOR_CONTA_ID, P.TRANSPORTADORA_CONTA_ID,'#13#10' P.ATEL' +
      'IER_CONTA_ID, P.RETEM_ISS, P.RETEM_CSLL, P.RETEM_PISCOFINS, P.RE' +
      'TEM_INSS, P.EMAIL_COMPRAS, P.CONTATO_COMPRAS, P.ORGAO_PUBLICO,'#13#10 +
      ' P.ID_NATUREZA, P.DIMINUIR_RETENCAO, P.PERC_REDUCAO_INSS, P.USA_' +
      'TRANSFICMS, P.CLIENTE_ESTOQUE, P.USA_TAMANHO_AGRUPADO_NFE, P.ID_' +
      'EDI,'#13#10' P.COBRAR_TAXA_BANCO, P.VLR_LIMITE_CREDITO, P.INSC_EST_ST,' +
      ' P.UF_ST,P.COD_ALFA,P.DTPEDIDO,P.DTNOTA, COND.NOME NOME_CONDPGTO' +
      ','#13#10' VEND.nome NOME_VENDEDOR, VEND.PERC_COMISSAO_VEND, P.DTCADAST' +
      'RO, P.HRCADASTRO, GP.NOME NOME_GRUPO, P.TIPO_CONTRIBUINTE, P.VLR' +
      '_ULT_FATURAMENTO,'#13#10' P.QTD_ULT_FATURAMENTO, PF.DTNASCIMENTO, P.MA' +
      'E_NOME, P.PAI_NOME, PF.CONJUGE_NOME, PF.CONJUGE_CPF, PF.CONJUGE_' +
      'DTNASCIMENTO,'#13#10' PF.NUM_CART_TRAB, PF.NOME_EMP, PF.ENDERECO_EMP, ' +
      'PF.FONE_EMP, PF.DTADMISSAO_EMP, PF.VLR_SALARIO_BRUTO_EMP,'#13#10' PF.C' +
      'ARGO_EMP, p.ID_VENDEDOR_INT, VEND2.NOME NOME_VENDEDOR_INT,'#13#10'CASE' +
      #13#10'  WHEN P.TP_CLIENTE = '#39'S'#39' THEN (SELECT CO.CODIGO FROM conta_or' +
      'camento CO  WHERE CO.ID = P.CLIENTE_CONTA_ID)'#13#10'  WHEN P.TP_FORNE' +
      'CEDOR = '#39'S'#39' THEN (SELECT CO.CODIGO FROM conta_orcamento CO  WHER' +
      'E CO.ID = P.FORNECEDOR_CONTA_ID)'#13#10'  WHEN P.TP_TRANSPORTADORA = '#39 +
      'S'#39' THEN (SELECT CO.CODIGO FROM conta_orcamento CO  WHERE CO.ID =' +
      ' P.TRANSPORTADORA_CONTA_ID)'#13#10'  WHEN P.TP_VENDEDOR = '#39'S'#39' THEN (SE' +
      'LECT CO.CODIGO FROM conta_orcamento CO  WHERE CO.ID = P.VENDEDOR' +
      '_CONTA_ID)'#13#10'  END COD_CONTA_ORCAMENTO, CCLI.codigo COD_ORC_CLI, ' +
      'CCLI.descricao NOME_ORC_CLI,'#13#10'  CFORN.codigo COD_ORC_FORN, CFORN' +
      '.DESCRICAO NOME_ORC_FORN,'#13#10'  CTRA.CODIGO COD_ORC_TRANSP, CTRA.DE' +
      'SCRICAO NOME_ORC_TRANSP,'#13#10'  CVEND.CODIGO COD_ORC_VEND, CVEND.DES' +
      'CRICAO NOME_ORC_VEND, PV.COD_VENDEDOR,'#13#10'case'#13#10'  when p.tipo_cons' +
      'umidor = 0 then '#39'Normal'#39#13#10'  when p.tipo_consumidor = 1 then '#39'Fin' +
      'al'#39#13#10'  end Desc_Tipo_Consumidor,'#13#10'case'#13#10'  when p.tipo_contribuin' +
      'te = 1 then '#39'Contribuinte'#39#13#10'  when p.tipo_contribuinte = 2 then ' +
      #39'Isento'#39#13#10'  when p.tipo_contribuinte = 9 then '#39'N'#227'o Contrib.'#39#13#10'  ' +
      'end Desc_Tipo_Contribuinte, RT.NOME NOME_REGIME, RT.codigo COD_R' +
      'EGIME'#13#10'FROM PESSOA P'#13#10'LEFT JOIN CONDPGTO COND ON (P.ID_CONDPGTO ' +
      '= COND.ID)'#13#10'LEFT JOIN PESSOA VEND ON (P.ID_VENDEDOR = VEND.CODIG' +
      'O)'#13#10'LEFT JOIN GRUPO_PESSOA GP ON (P.ID_GRUPO = GP.ID)'#13#10'LEFT JOIN' +
      ' PESSOA_FISICA PF ON (P.CODIGO = PF.CODIGO)'#13#10'LEFT JOIN CONTA_ORC' +
      'AMENTO CCLI ON (P.CLIENTE_CONTA_ID = CCLI.ID)'#13#10'LEFT JOIN CONTA_O' +
      'RCAMENTO CFORN ON (P.FORNECEDOR_CONTA_ID = CFORN.ID)'#13#10'LEFT JOIN ' +
      'CONTA_ORCAMENTO CTRA ON (P.TRANSPORTADORA_CONTA_ID = CTRA.ID)'#13#10'L' +
      'EFT JOIN CONTA_ORCAMENTO CVEND ON (P.VENDEDOR_CONTA_ID = CVEND.I' +
      'D)'#13#10'LEFT JOIN PESSOA_VEND PV ON P.CODIGO = PV.CODIGO'#13#10'LEFT JOIN ' +
      'regime_trib RT ON P.id_regime_trib = RT.id'#13#10'LEFT JOIN PESSOA VEN' +
      'D2 ON P.ID_VENDEDOR_INT = VEND2.CODIGO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 8
  end
  object dspPessoa_Consulta: TDataSetProvider
    DataSet = sdsPessoa_Consulta
    UpdateMode = upWhereChanged
    OnUpdateError = dspPessoaUpdateError
    Left = 520
    Top = 8
  end
  object cdsPessoa_Consulta: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspPessoa_Consulta'
    BeforePost = cdsPessoaBeforePost
    OnNewRecord = cdsPessoaNewRecord
    Left = 552
    Top = 8
    object cdsPessoa_ConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInWhere]
      Required = True
    end
    object cdsPessoa_ConsultaNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInWhere]
      Size = 60
    end
    object cdsPessoa_ConsultaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      ProviderFlags = [pfInWhere]
      Size = 30
    end
    object cdsPessoa_ConsultaENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInWhere]
      Size = 60
    end
    object cdsPessoa_ConsultaCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      ProviderFlags = [pfInWhere]
      Size = 60
    end
    object cdsPessoa_ConsultaNUM_END: TStringField
      FieldName = 'NUM_END'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInWhere]
      Size = 30
    end
    object cdsPessoa_ConsultaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInWhere]
      Size = 40
    end
    object cdsPessoa_ConsultaUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInWhere]
      FixedChar = True
      Size = 2
    end
    object cdsPessoa_ConsultaCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInWhere]
      Size = 10
    end
    object cdsPessoa_ConsultaDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      ProviderFlags = [pfInWhere]
      Size = 15
    end
    object cdsPessoa_ConsultaDDDFONE2: TIntegerField
      FieldName = 'DDDFONE2'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      ProviderFlags = [pfInWhere]
      Size = 15
    end
    object cdsPessoa_ConsultaDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInWhere]
      Size = 15
    end
    object cdsPessoa_ConsultaPESSOA: TStringField
      FieldName = 'PESSOA'
      ProviderFlags = [pfInWhere]
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_ConsultaINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      ProviderFlags = [pfInWhere]
      Size = 18
    end
    object cdsPessoa_ConsultaENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      ProviderFlags = [pfInWhere]
      Size = 40
    end
    object cdsPessoa_ConsultaCOMPLEMENTO_END_ENT: TStringField
      FieldName = 'COMPLEMENTO_END_ENT'
      ProviderFlags = [pfInWhere]
      Size = 60
    end
    object cdsPessoa_ConsultaNUM_END_ENT: TStringField
      FieldName = 'NUM_END_ENT'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      ProviderFlags = [pfInWhere]
      Size = 26
    end
    object cdsPessoa_ConsultaID_CIDADE_ENT: TIntegerField
      FieldName = 'ID_CIDADE_ENT'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      ProviderFlags = [pfInWhere]
      Size = 40
    end
    object cdsPessoa_ConsultaCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      ProviderFlags = [pfInWhere]
      Size = 10
    end
    object cdsPessoa_ConsultaUF_ENT: TStringField
      FieldName = 'UF_ENT'
      ProviderFlags = [pfInWhere]
      FixedChar = True
      Size = 2
    end
    object cdsPessoa_ConsultaPESSOA_ENT: TStringField
      FieldName = 'PESSOA_ENT'
      ProviderFlags = [pfInWhere]
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_ConsultaCNPJ_CPF_ENT: TStringField
      FieldName = 'CNPJ_CPF_ENT'
      ProviderFlags = [pfInWhere]
      Size = 18
    end
    object cdsPessoa_ConsultaINSC_EST_ENT: TStringField
      FieldName = 'INSC_EST_ENT'
      ProviderFlags = [pfInWhere]
      Size = 18
    end
    object cdsPessoa_ConsultaENDERECO_PGTO: TStringField
      FieldName = 'ENDERECO_PGTO'
      ProviderFlags = [pfInWhere]
      Size = 40
    end
    object cdsPessoa_ConsultaCOMPLEMENTO_END_PGTO: TStringField
      FieldName = 'COMPLEMENTO_END_PGTO'
      ProviderFlags = [pfInWhere]
      Size = 60
    end
    object cdsPessoa_ConsultaNUM_END_PGTO: TStringField
      FieldName = 'NUM_END_PGTO'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaBAIRRO_PGTO: TStringField
      FieldName = 'BAIRRO_PGTO'
      ProviderFlags = [pfInWhere]
      Size = 26
    end
    object cdsPessoa_ConsultaID_CIDADE_PGTO: TIntegerField
      FieldName = 'ID_CIDADE_PGTO'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaCIDADE_PGTO: TStringField
      FieldName = 'CIDADE_PGTO'
      ProviderFlags = [pfInWhere]
      Size = 40
    end
    object cdsPessoa_ConsultaCEP_PGTO: TStringField
      FieldName = 'CEP_PGTO'
      ProviderFlags = [pfInWhere]
      Size = 10
    end
    object cdsPessoa_ConsultaUF_PGTO: TStringField
      FieldName = 'UF_PGTO'
      ProviderFlags = [pfInWhere]
      FixedChar = True
      Size = 2
    end
    object cdsPessoa_ConsultaCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      ProviderFlags = [pfInWhere]
      Size = 10
    end
    object cdsPessoa_ConsultaRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInWhere]
      Size = 10
    end
    object cdsPessoa_ConsultaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaID_CONTABOLETO: TIntegerField
      FieldName = 'ID_CONTABOLETO'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaDDD_ENT: TIntegerField
      FieldName = 'DDD_ENT'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaFONE_ENT: TStringField
      FieldName = 'FONE_ENT'
      ProviderFlags = [pfInWhere]
      Size = 15
    end
    object cdsPessoa_ConsultaDDD_PGTO: TIntegerField
      FieldName = 'DDD_PGTO'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaFONE_PGTO: TStringField
      FieldName = 'FONE_PGTO'
      ProviderFlags = [pfInWhere]
      Size = 15
    end
    object cdsPessoa_ConsultaINATIVO: TStringField
      FieldName = 'INATIVO'
      ProviderFlags = [pfInWhere]
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_ConsultaHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      ProviderFlags = [pfInWhere]
      Size = 200
    end
    object cdsPessoa_ConsultaTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      ProviderFlags = [pfInWhere]
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_ConsultaNOME_ENTREGA: TStringField
      FieldName = 'NOME_ENTREGA'
      ProviderFlags = [pfInWhere]
      Size = 60
    end
    object cdsPessoa_ConsultaEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      ProviderFlags = [pfInWhere]
      Size = 250
    end
    object cdsPessoa_ConsultaEMAIL_PGTO: TStringField
      FieldName = 'EMAIL_PGTO'
      ProviderFlags = [pfInWhere]
      Size = 150
    end
    object cdsPessoa_ConsultaEMAIL_NFE2: TStringField
      FieldName = 'EMAIL_NFE2'
      ProviderFlags = [pfInWhere]
      Size = 150
    end
    object cdsPessoa_ConsultaPESSOA_PGTO: TStringField
      FieldName = 'PESSOA_PGTO'
      ProviderFlags = [pfInWhere]
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_ConsultaCNPJ_CPG_PGTO: TStringField
      FieldName = 'CNPJ_CPG_PGTO'
      ProviderFlags = [pfInWhere]
      Size = 18
    end
    object cdsPessoa_ConsultaINSC_EST_PGTO: TStringField
      FieldName = 'INSC_EST_PGTO'
      ProviderFlags = [pfInWhere]
      Size = 18
    end
    object cdsPessoa_ConsultaUF_PLACA: TStringField
      FieldName = 'UF_PLACA'
      ProviderFlags = [pfInWhere]
      Size = 2
    end
    object cdsPessoa_ConsultaPLACA: TStringField
      FieldName = 'PLACA'
      ProviderFlags = [pfInWhere]
      Size = 10
    end
    object cdsPessoa_ConsultaTP_CLIENTE: TStringField
      FieldName = 'TP_CLIENTE'
      ProviderFlags = [pfInWhere]
      Size = 1
    end
    object cdsPessoa_ConsultaTP_FORNECEDOR: TStringField
      FieldName = 'TP_FORNECEDOR'
      ProviderFlags = [pfInWhere]
      Size = 1
    end
    object cdsPessoa_ConsultaTP_TRANSPORTADORA: TStringField
      FieldName = 'TP_TRANSPORTADORA'
      ProviderFlags = [pfInWhere]
      Size = 1
    end
    object cdsPessoa_ConsultaTP_VENDEDOR: TStringField
      FieldName = 'TP_VENDEDOR'
      ProviderFlags = [pfInWhere]
      Size = 1
    end
    object cdsPessoa_ConsultaTIPO_ICMS: TStringField
      FieldName = 'TIPO_ICMS'
      ProviderFlags = [pfInWhere]
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_ConsultaID_TAB_PRECO: TIntegerField
      FieldName = 'ID_TAB_PRECO'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaTP_ATELIER: TStringField
      FieldName = 'TP_ATELIER'
      ProviderFlags = [pfInWhere]
      Size = 1
    end
    object cdsPessoa_ConsultaTIPO_COMISSAO: TStringField
      FieldName = 'TIPO_COMISSAO'
      ProviderFlags = [pfInWhere]
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_ConsultaNOME_CONTATO: TStringField
      FieldName = 'NOME_CONTATO'
      ProviderFlags = [pfInWhere]
      Size = 40
    end
    object cdsPessoa_ConsultaINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      ProviderFlags = [pfInWhere]
      Size = 15
    end
    object cdsPessoa_ConsultaDT_CONTRATO_INI: TDateField
      FieldName = 'DT_CONTRATO_INI'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaDT_CONTRATO_FIN: TDateField
      FieldName = 'DT_CONTRATO_FIN'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaCLIENTE_CONTA_ID: TIntegerField
      FieldName = 'CLIENTE_CONTA_ID'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaFORNECEDOR_CONTA_ID: TIntegerField
      FieldName = 'FORNECEDOR_CONTA_ID'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaVENDEDOR_CONTA_ID: TIntegerField
      FieldName = 'VENDEDOR_CONTA_ID'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaTRANSPORTADORA_CONTA_ID: TIntegerField
      FieldName = 'TRANSPORTADORA_CONTA_ID'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaATELIER_CONTA_ID: TIntegerField
      FieldName = 'ATELIER_CONTA_ID'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaRETEM_ISS: TStringField
      FieldName = 'RETEM_ISS'
      ProviderFlags = [pfInWhere]
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_ConsultaRETEM_CSLL: TStringField
      FieldName = 'RETEM_CSLL'
      ProviderFlags = [pfInWhere]
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_ConsultaRETEM_PISCOFINS: TStringField
      FieldName = 'RETEM_PISCOFINS'
      ProviderFlags = [pfInWhere]
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_ConsultaRETEM_INSS: TStringField
      FieldName = 'RETEM_INSS'
      ProviderFlags = [pfInWhere]
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_ConsultaEMAIL_COMPRAS: TStringField
      FieldName = 'EMAIL_COMPRAS'
      ProviderFlags = [pfInWhere]
      Size = 200
    end
    object cdsPessoa_ConsultaCONTATO_COMPRAS: TStringField
      FieldName = 'CONTATO_COMPRAS'
      ProviderFlags = [pfInWhere]
      Size = 60
    end
    object cdsPessoa_ConsultaORGAO_PUBLICO: TStringField
      FieldName = 'ORGAO_PUBLICO'
      ProviderFlags = [pfInWhere]
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_ConsultaID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaDIMINUIR_RETENCAO: TStringField
      FieldName = 'DIMINUIR_RETENCAO'
      ProviderFlags = [pfInWhere]
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_ConsultaPERC_REDUCAO_INSS: TFloatField
      FieldName = 'PERC_REDUCAO_INSS'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaUSA_TRANSFICMS: TStringField
      FieldName = 'USA_TRANSFICMS'
      ProviderFlags = [pfInWhere]
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_ConsultaCLIENTE_ESTOQUE: TStringField
      FieldName = 'CLIENTE_ESTOQUE'
      ProviderFlags = [pfInWhere]
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_ConsultaUSA_TAMANHO_AGRUPADO_NFE: TStringField
      FieldName = 'USA_TAMANHO_AGRUPADO_NFE'
      ProviderFlags = [pfInWhere]
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_ConsultaID_EDI: TIntegerField
      FieldName = 'ID_EDI'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaCOBRAR_TAXA_BANCO: TStringField
      FieldName = 'COBRAR_TAXA_BANCO'
      ProviderFlags = [pfInWhere]
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_ConsultaVLR_LIMITE_CREDITO: TFloatField
      FieldName = 'VLR_LIMITE_CREDITO'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaINSC_EST_ST: TStringField
      FieldName = 'INSC_EST_ST'
      ProviderFlags = [pfInWhere]
      Size = 14
    end
    object cdsPessoa_ConsultaUF_ST: TStringField
      FieldName = 'UF_ST'
      ProviderFlags = [pfInWhere]
      Size = 2
    end
    object cdsPessoa_ConsultaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaCOD_ALFA: TStringField
      FieldName = 'COD_ALFA'
      ProviderFlags = [pfInWhere]
      Size = 15
    end
    object cdsPessoa_ConsultaDTPEDIDO: TDateField
      FieldName = 'DTPEDIDO'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaDTNOTA: TDateField
      FieldName = 'DTNOTA'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaNOME_CONDPGTO: TStringField
      FieldName = 'NOME_CONDPGTO'
      ProviderFlags = [pfInWhere]
      Size = 40
    end
    object cdsPessoa_ConsultaNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      ProviderFlags = [pfInWhere]
      Size = 60
    end
    object cdsPessoa_ConsultaPERC_COMISSAO_VEND: TFloatField
      FieldName = 'PERC_COMISSAO_VEND'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
      ProviderFlags = [pfInWhere]
    end
    object cdsPessoa_ConsultaNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      Size = 40
    end
    object cdsPessoa_ConsultaTIPO_CONTRIBUINTE: TSmallintField
      FieldName = 'TIPO_CONTRIBUINTE'
    end
    object cdsPessoa_ConsultaVLR_ULT_FATURAMENTO: TFloatField
      FieldName = 'VLR_ULT_FATURAMENTO'
      DisplayFormat = '0.00'
    end
    object cdsPessoa_ConsultaQTD_ULT_FATURAMENTO: TFloatField
      FieldName = 'QTD_ULT_FATURAMENTO'
    end
    object cdsPessoa_ConsultaDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
    end
    object cdsPessoa_ConsultaMAE_NOME: TStringField
      FieldName = 'MAE_NOME'
      Size = 60
    end
    object cdsPessoa_ConsultaPAI_NOME: TStringField
      FieldName = 'PAI_NOME'
      Size = 60
    end
    object cdsPessoa_ConsultaCONJUGE_NOME: TStringField
      FieldName = 'CONJUGE_NOME'
      Size = 70
    end
    object cdsPessoa_ConsultaCONJUGE_CPF: TStringField
      FieldName = 'CONJUGE_CPF'
      Size = 14
    end
    object cdsPessoa_ConsultaCONJUGE_DTNASCIMENTO: TDateField
      FieldName = 'CONJUGE_DTNASCIMENTO'
    end
    object cdsPessoa_ConsultaNUM_CART_TRAB: TStringField
      FieldName = 'NUM_CART_TRAB'
    end
    object cdsPessoa_ConsultaNOME_EMP: TStringField
      FieldName = 'NOME_EMP'
      Size = 70
    end
    object cdsPessoa_ConsultaENDERECO_EMP: TStringField
      FieldName = 'ENDERECO_EMP'
      Size = 70
    end
    object cdsPessoa_ConsultaFONE_EMP: TStringField
      FieldName = 'FONE_EMP'
    end
    object cdsPessoa_ConsultaDTADMISSAO_EMP: TDateField
      FieldName = 'DTADMISSAO_EMP'
    end
    object cdsPessoa_ConsultaVLR_SALARIO_BRUTO_EMP: TFloatField
      FieldName = 'VLR_SALARIO_BRUTO_EMP'
    end
    object cdsPessoa_ConsultaCARGO_EMP: TStringField
      FieldName = 'CARGO_EMP'
      Size = 40
    end
    object cdsPessoa_ConsultaCOD_CONTA_ORCAMENTO: TStringField
      FieldName = 'COD_CONTA_ORCAMENTO'
    end
    object cdsPessoa_ConsultaCOD_ORC_CLI: TStringField
      FieldName = 'COD_ORC_CLI'
    end
    object cdsPessoa_ConsultaNOME_ORC_CLI: TStringField
      FieldName = 'NOME_ORC_CLI'
      Size = 50
    end
    object cdsPessoa_ConsultaCOD_ORC_FORN: TStringField
      FieldName = 'COD_ORC_FORN'
    end
    object cdsPessoa_ConsultaNOME_ORC_FORN: TStringField
      FieldName = 'NOME_ORC_FORN'
      Size = 50
    end
    object cdsPessoa_ConsultaCOD_ORC_TRANSP: TStringField
      FieldName = 'COD_ORC_TRANSP'
    end
    object cdsPessoa_ConsultaNOME_ORC_TRANSP: TStringField
      FieldName = 'NOME_ORC_TRANSP'
      Size = 50
    end
    object cdsPessoa_ConsultaCOD_ORC_VEND: TStringField
      FieldName = 'COD_ORC_VEND'
    end
    object cdsPessoa_ConsultaNOME_ORC_VEND: TStringField
      FieldName = 'NOME_ORC_VEND'
      Size = 50
    end
    object cdsPessoa_ConsultaCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object cdsPessoa_ConsultaDESC_TIPO_CONSUMIDOR: TStringField
      FieldName = 'DESC_TIPO_CONSUMIDOR'
      FixedChar = True
      Size = 6
    end
    object cdsPessoa_ConsultaDESC_TIPO_CONTRIBUINTE: TStringField
      FieldName = 'DESC_TIPO_CONTRIBUINTE'
      FixedChar = True
      Size = 16
    end
    object cdsPessoa_ConsultaNOME_REGIME: TStringField
      FieldName = 'NOME_REGIME'
      Size = 100
    end
    object cdsPessoa_ConsultaCOD_REGIME: TIntegerField
      FieldName = 'COD_REGIME'
    end
    object cdsPessoa_ConsultaID_VENDEDOR_INT: TIntegerField
      FieldName = 'ID_VENDEDOR_INT'
    end
    object cdsPessoa_ConsultaNOME_VENDEDOR_INT: TStringField
      FieldName = 'NOME_VENDEDOR_INT'
      Size = 60
    end
    object cdsPessoa_ConsultaCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 10
    end
  end
  object dsPessoa_Consulta: TDataSource
    DataSet = cdsPessoa_Consulta
    Left = 584
    Top = 8
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
    Left = 920
    Top = 432
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
    Left = 952
    Top = 432
  end
  object frxRichObject1: TfrxRichObject
    Left = 984
    Top = 432
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxPessoa_Consulta'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'NOME=NOME'
      'FANTASIA=FANTASIA'
      'ENDERECO=ENDERECO'
      'COMPLEMENTO_END=COMPLEMENTO_END'
      'NUM_END=NUM_END'
      'BAIRRO=BAIRRO'
      'ID_CIDADE=ID_CIDADE'
      'CIDADE=CIDADE'
      'UF=UF'
      'CEP=CEP'
      'DDDFONE1=DDDFONE1'
      'TELEFONE1=TELEFONE1'
      'DDDFONE2=DDDFONE2'
      'TELEFONE2=TELEFONE2'
      'DDDFAX=DDDFAX'
      'FAX=FAX'
      'PESSOA=PESSOA'
      'INSCR_EST=INSCR_EST'
      'ENDERECO_ENT=ENDERECO_ENT'
      'COMPLEMENTO_END_ENT=COMPLEMENTO_END_ENT'
      'NUM_END_ENT=NUM_END_ENT'
      'BAIRRO_ENT=BAIRRO_ENT'
      'ID_CIDADE_ENT=ID_CIDADE_ENT'
      'CIDADE_ENT=CIDADE_ENT'
      'CEP_ENT=CEP_ENT'
      'UF_ENT=UF_ENT'
      'PESSOA_ENT=PESSOA_ENT'
      'CNPJ_CPF_ENT=CNPJ_CPF_ENT'
      'INSC_EST_ENT=INSC_EST_ENT'
      'ENDERECO_PGTO=ENDERECO_PGTO'
      'COMPLEMENTO_END_PGTO=COMPLEMENTO_END_PGTO'
      'NUM_END_PGTO=NUM_END_PGTO'
      'BAIRRO_PGTO=BAIRRO_PGTO'
      'ID_CIDADE_PGTO=ID_CIDADE_PGTO'
      'CIDADE_PGTO=CIDADE_PGTO'
      'CEP_PGTO=CEP_PGTO'
      'UF_PGTO=UF_PGTO'
      'CAIXAPOSTAL=CAIXAPOSTAL'
      'RG=RG'
      'ID_VENDEDOR=ID_VENDEDOR'
      'ID_CONDPGTO=ID_CONDPGTO'
      'ID_CONTABOLETO=ID_CONTABOLETO'
      'ID_TRANSPORTADORA=ID_TRANSPORTADORA'
      'ID_TIPOCOBRANCA=ID_TIPOCOBRANCA'
      'ID_REDESPACHO=ID_REDESPACHO'
      'ID_PAIS=ID_PAIS'
      'ID_REGIME_TRIB=ID_REGIME_TRIB'
      'PERC_COMISSAO=PERC_COMISSAO'
      'DDD_ENT=DDD_ENT'
      'FONE_ENT=FONE_ENT'
      'DDD_PGTO=DDD_PGTO'
      'FONE_PGTO=FONE_PGTO'
      'INATIVO=INATIVO'
      'HOMEPAGE=HOMEPAGE'
      'TIPO_FRETE=TIPO_FRETE'
      'NOME_ENTREGA=NOME_ENTREGA'
      'EMAIL_NFE=EMAIL_NFE'
      'EMAIL_PGTO=EMAIL_PGTO'
      'EMAIL_NFE2=EMAIL_NFE2'
      'PESSOA_PGTO=PESSOA_PGTO'
      'CNPJ_CPG_PGTO=CNPJ_CPG_PGTO'
      'INSC_EST_PGTO=INSC_EST_PGTO'
      'UF_PLACA=UF_PLACA'
      'PLACA=PLACA'
      'TP_CLIENTE=TP_CLIENTE'
      'TP_FORNECEDOR=TP_FORNECEDOR'
      'TP_TRANSPORTADORA=TP_TRANSPORTADORA'
      'TP_VENDEDOR=TP_VENDEDOR'
      'TIPO_ICMS=TIPO_ICMS'
      'ID_TAB_PRECO=ID_TAB_PRECO'
      'TP_ATELIER=TP_ATELIER'
      'TIPO_COMISSAO=TIPO_COMISSAO'
      'NOME_CONTATO=NOME_CONTATO'
      'INSC_MUNICIPAL=INSC_MUNICIPAL'
      'DT_CONTRATO_INI=DT_CONTRATO_INI'
      'DT_CONTRATO_FIN=DT_CONTRATO_FIN'
      'ID_SERVICO=ID_SERVICO'
      'ID_SERVICO_INT=ID_SERVICO_INT'
      'VLR_SERVICO=VLR_SERVICO'
      'CLIENTE_CONTA_ID=CLIENTE_CONTA_ID'
      'FORNECEDOR_CONTA_ID=FORNECEDOR_CONTA_ID'
      'VENDEDOR_CONTA_ID=VENDEDOR_CONTA_ID'
      'TRANSPORTADORA_CONTA_ID=TRANSPORTADORA_CONTA_ID'
      'ATELIER_CONTA_ID=ATELIER_CONTA_ID'
      'RETEM_ISS=RETEM_ISS'
      'RETEM_CSLL=RETEM_CSLL'
      'RETEM_PISCOFINS=RETEM_PISCOFINS'
      'RETEM_INSS=RETEM_INSS'
      'EMAIL_COMPRAS=EMAIL_COMPRAS'
      'CONTATO_COMPRAS=CONTATO_COMPRAS'
      'ORGAO_PUBLICO=ORGAO_PUBLICO'
      'ID_NATUREZA=ID_NATUREZA'
      'DIMINUIR_RETENCAO=DIMINUIR_RETENCAO'
      'PERC_REDUCAO_INSS=PERC_REDUCAO_INSS'
      'USA_TRANSFICMS=USA_TRANSFICMS'
      'CLIENTE_ESTOQUE=CLIENTE_ESTOQUE'
      'USA_TAMANHO_AGRUPADO_NFE=USA_TAMANHO_AGRUPADO_NFE'
      'ID_EDI=ID_EDI'
      'COBRAR_TAXA_BANCO=COBRAR_TAXA_BANCO'
      'VLR_LIMITE_CREDITO=VLR_LIMITE_CREDITO'
      'INSC_EST_ST=INSC_EST_ST'
      'UF_ST=UF_ST'
      'CNPJ_CPF=CNPJ_CPF'
      'COD_ALFA=COD_ALFA'
      'DTPEDIDO=DTPEDIDO'
      'DTNOTA=DTNOTA'
      'NOME_CONDPGTO=NOME_CONDPGTO'
      'NOME_VENDEDOR=NOME_VENDEDOR'
      'PERC_COMISSAO_VEND=PERC_COMISSAO_VEND'
      'DTCADASTRO=DTCADASTRO'
      'HRCADASTRO=HRCADASTRO'
      'NOME_GRUPO=NOME_GRUPO'
      'TIPO_CONTRIBUINTE=TIPO_CONTRIBUINTE'
      'VLR_ULT_FATURAMENTO=VLR_ULT_FATURAMENTO'
      'QTD_ULT_FATURAMENTO=QTD_ULT_FATURAMENTO'
      'DTNASCIMENTO=DTNASCIMENTO'
      'MAE_NOME=MAE_NOME'
      'PAI_NOME=PAI_NOME'
      'CONJUGE_NOME=CONJUGE_NOME'
      'CONJUGE_CPF=CONJUGE_CPF'
      'CONJUGE_DTNASCIMENTO=CONJUGE_DTNASCIMENTO'
      'NUM_CART_TRAB=NUM_CART_TRAB'
      'NOME_EMP=NOME_EMP'
      'ENDERECO_EMP=ENDERECO_EMP'
      'FONE_EMP=FONE_EMP'
      'DTADMISSAO_EMP=DTADMISSAO_EMP'
      'VLR_SALARIO_BRUTO_EMP=VLR_SALARIO_BRUTO_EMP'
      'CARGO_EMP=CARGO_EMP'
      'COD_CONTA_ORCAMENTO=COD_CONTA_ORCAMENTO'
      'COD_ORC_CLI=COD_ORC_CLI'
      'NOME_ORC_CLI=NOME_ORC_CLI'
      'COD_ORC_FORN=COD_ORC_FORN'
      'NOME_ORC_FORN=NOME_ORC_FORN'
      'COD_ORC_TRANSP=COD_ORC_TRANSP'
      'NOME_ORC_TRANSP=NOME_ORC_TRANSP'
      'COD_ORC_VEND=COD_ORC_VEND'
      'NOME_ORC_VEND=NOME_ORC_VEND'
      'COD_VENDEDOR=COD_VENDEDOR'
      'DESC_TIPO_CONSUMIDOR=DESC_TIPO_CONSUMIDOR'
      'DESC_TIPO_CONTRIBUINTE=DESC_TIPO_CONTRIBUINTE'
      'NOME_REGIME=NOME_REGIME'
      'COD_REGIME=COD_REGIME'
      'ID_VENDEDOR_INT=ID_VENDEDOR_INT'
      'NOME_VENDEDOR_INT=NOME_VENDEDOR_INT'
      'CELULAR=CELULAR')
    DataSource = dsPessoa_Consulta
    BCDToCurrency = False
    Left = 888
    Top = 480
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
    ReportOptions.CreateDate = 42543.386929861100000000
    ReportOptions.LastChange = 43805.389765231480000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 888
    Top = 432
  end
  object mImpAuxiliar: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'Item'
        DataType = ftInteger
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
    Left = 864
    Top = 128
    Data = {
      480000009619E0BD010000001800000002000000000003000000480002494404
      00010000000000044974656D040001000000000001000D44454641554C545F4F
      524445520200820000000000}
    object mImpAuxiliarID: TIntegerField
      FieldName = 'ID'
    end
    object mImpAuxiliarItem: TIntegerField
      FieldName = 'Item'
    end
  end
  object dsmImpAuxiliar: TDataSource
    DataSet = mImpAuxiliar
    Left = 896
    Top = 128
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxImpAuxiliar'
    OnFirst = frxDBDataset2First
    OnNext = frxDBDataset2Next
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID')
    DataSource = dsmImpAuxiliar
    BCDToCurrency = False
    Left = 920
    Top = 480
  end
  object mResumo: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Tipo'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Codigo'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Qtd'
        DataType = ftInteger
      end
      item
        Name = 'Qtd_Ativo'
        DataType = ftInteger
      end
      item
        Name = 'Qtd_Inativo'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Tipo'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'Tipo;Codigo'
    Params = <>
    StoreDefs = True
    Left = 864
    Top = 24
    Data = {
      B70000009619E0BD010000001800000007000000000003000000B70004546970
      6F010049000000010005574944544802000200010006436F6469676F01004900
      00000100055749445448020002000A00044E6F6D650100490000000100055749
      445448020002003C00035174640400010000000000095174645F417469766F04
      000100000000000B5174645F496E617469766F0400010000000000094E6F6D65
      5F5469706F01004900000001000557494454480200020032000000}
    object mResumoTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object mResumoCodigo: TStringField
      FieldName = 'Codigo'
      Size = 10
    end
    object mResumoNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
    object mResumoQtd: TIntegerField
      FieldName = 'Qtd'
    end
    object mResumoQtd_Ativo: TIntegerField
      FieldName = 'Qtd_Ativo'
    end
    object mResumoQtd_Inativo: TIntegerField
      FieldName = 'Qtd_Inativo'
    end
    object mResumoNome_Tipo: TStringField
      FieldName = 'Nome_Tipo'
      Size = 50
    end
  end
  object dsmResumo: TDataSource
    DataSet = mResumo
    Left = 896
    Top = 24
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxResumo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Tipo=Tipo'
      'Codigo=Codigo'
      'Nome=Nome'
      'Qtd=Qtd'
      'Qtd_Ativo=Qtd_Ativo'
      'Qtd_Inativo=Qtd_Inativo'
      'Nome_Tipo=Nome_Tipo')
    DataSource = dsmResumo
    BCDToCurrency = False
    Left = 952
    Top = 480
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 1008
    Top = 432
  end
  object sdsOBS_Lei: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM OBS_LEI'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 698
    Top = 460
  end
  object dspOBS_Lei: TDataSetProvider
    DataSet = sdsOBS_Lei
    Left = 730
    Top = 460
  end
  object cdsOBS_Lei: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspOBS_Lei'
    Left = 762
    Top = 460
    object cdsOBS_LeiID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOBS_LeiNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsOBS_LeiOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
  end
  object dsOBS_Lei: TDataSource
    DataSet = cdsOBS_Lei
    Left = 794
    Top = 460
  end
  object sdsTab_CSTICMS: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, PERCENTUAL, COD_CST, NOME, perc_diferimento'#13#10'FROM TAB' +
      '_CSTICMS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 698
    Top = 358
  end
  object dspTab_CSTICMS: TDataSetProvider
    DataSet = sdsTab_CSTICMS
    Left = 730
    Top = 358
  end
  object cdsTab_CSTICMS: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_CSTICMS'
    Left = 762
    Top = 357
    object cdsTab_CSTICMSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_CSTICMSPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
    object cdsTab_CSTICMSCOD_CST: TStringField
      FieldName = 'COD_CST'
      Size = 3
    end
    object cdsTab_CSTICMSNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object cdsTab_CSTICMSPERC_DIFERIMENTO: TFloatField
      FieldName = 'PERC_DIFERIMENTO'
    end
  end
  object dsTab_CSTICMS: TDataSource
    DataSet = cdsTab_CSTICMS
    Left = 794
    Top = 358
  end
  object qEnqIPI: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM TAB_ENQIPI'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 1056
    Top = 128
    object qEnqIPIID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qEnqIPICODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object qEnqIPITIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qEnqIPIDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
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
    Left = 1056
    Top = 175
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
    object qParametros_FinMOSTRAR_TIPO_CRED: TStringField
      FieldName = 'MOSTRAR_TIPO_CRED'
      FixedChar = True
      Size = 1
    end
  end
  object dsPessoa_Fisica: TDataSource
    DataSet = cdsPessoa_Fisica
    Left = 144
    Top = 292
  end
  object cdsPessoa_Fisica: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'COD_AGENCIA'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'NOME_AGENCIA'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CONTA_CONJUNTA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'COD_OP'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'NUM_CONTA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DV_CONTA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'DTNASCIMENTO'
        DataType = ftDate
      end
      item
        Name = 'SEXO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NACIONALIDADE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'UF_NAT'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ID_CIDADE_NAT'
        DataType = ftInteger
      end
      item
        Name = 'RG_NUM'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'RG_ORGAO'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'RG_UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'RG_DTEMISSAO'
        DataType = ftDate
      end
      item
        Name = 'MENOS_18'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ESTADO_CIVIL'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'GRAU_INSTRUCAO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CONJUGE_CPF'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'CONJUGE_NOME'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'CONJUGE_DTNASCIMENTO'
        DataType = ftDate
      end
      item
        Name = 'GRAU_SIGILO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'COD_SOCIO'
        DataType = ftInteger
      end
      item
        Name = 'NOME_EMP'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'ENDERECO_EMP'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'MATRICULA_EMP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FONE_EMP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BAIRRO_EMP'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ID_CIDADE_EMP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CELULAR_EMP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CEP_EMP'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'CARGO_EMP'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'INSC_SOCIAL_EMP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'JORNADA_TRAB_EMP'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'VLR_SALARIO_BASE_EMP'
        DataType = ftFloat
      end
      item
        Name = 'VLR_SALARIO_BRUTO_EMP'
        DataType = ftFloat
      end
      item
        Name = 'DTADMISSAO_EMP'
        DataType = ftDate
      end
      item
        Name = 'VLR_RENDA_EXTRA'
        DataType = ftFloat
      end
      item
        Name = 'VLR_RENDA_FAMILIAR'
        DataType = ftFloat
      end
      item
        Name = 'ETNIA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CADEIRANTE'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MORADIA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CONJUGE_PAI'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CONJUGE_MAE'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CONJUGE_EMP'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'CONJUGE_DTADM'
        DataType = ftDate
      end
      item
        Name = 'CONJUGE_CARGO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CONJUGE_RENDA'
        DataType = ftFloat
      end
      item
        Name = 'CONJUGE_ID_CID_EMP'
        DataType = ftInteger
      end
      item
        Name = 'CONJUGE_CID_EMP'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CONJUGE_UF_EMP'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CONJUGE_FONE_EMP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CONJUGE_END_EMP'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'CONJUGE_RG'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'TEMPO_MOR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'OBS_MOR'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'NUM_CART_TRAB'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CONJUGE_END'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'CONJUGE_CART_PROF'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CONJUGE_CID'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'INF_SPC'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'SENHA'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'CONTRA_SENHA'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'NEGATIVADA_SPC'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspPessoa_Fisica'
    StoreDefs = True
    AfterInsert = cdsPessoa_FisicaAfterInsert
    Left = 112
    Top = 292
    object cdsPessoa_FisicaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoa_FisicaCOD_AGENCIA: TStringField
      FieldName = 'COD_AGENCIA'
      Size = 7
    end
    object cdsPessoa_FisicaNOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
      Size = 60
    end
    object cdsPessoa_FisicaCONTA_CONJUNTA: TStringField
      FieldName = 'CONTA_CONJUNTA'
      Size = 1
    end
    object cdsPessoa_FisicaCOD_OP: TStringField
      FieldName = 'COD_OP'
      Size = 7
    end
    object cdsPessoa_FisicaNUM_CONTA: TStringField
      FieldName = 'NUM_CONTA'
      Size = 10
    end
    object cdsPessoa_FisicaDV_CONTA: TStringField
      FieldName = 'DV_CONTA'
      Size = 2
    end
    object cdsPessoa_FisicaDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
    end
    object cdsPessoa_FisicaSEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object cdsPessoa_FisicaNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 1
    end
    object cdsPessoa_FisicaUF_NAT: TStringField
      FieldName = 'UF_NAT'
      Size = 2
    end
    object cdsPessoa_FisicaID_CIDADE_NAT: TIntegerField
      FieldName = 'ID_CIDADE_NAT'
    end
    object cdsPessoa_FisicaRG_NUM: TStringField
      FieldName = 'RG_NUM'
      Size = 12
    end
    object cdsPessoa_FisicaRG_ORGAO: TStringField
      FieldName = 'RG_ORGAO'
      Size = 7
    end
    object cdsPessoa_FisicaRG_UF: TStringField
      FieldName = 'RG_UF'
      Size = 2
    end
    object cdsPessoa_FisicaRG_DTEMISSAO: TDateField
      FieldName = 'RG_DTEMISSAO'
    end
    object cdsPessoa_FisicaMENOS_18: TStringField
      FieldName = 'MENOS_18'
      Size = 1
    end
    object cdsPessoa_FisicaESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      Size = 1
    end
    object cdsPessoa_FisicaGRAU_INSTRUCAO: TStringField
      FieldName = 'GRAU_INSTRUCAO'
      Size = 1
    end
    object cdsPessoa_FisicaCONJUGE_CPF: TStringField
      FieldName = 'CONJUGE_CPF'
      Size = 14
    end
    object cdsPessoa_FisicaCONJUGE_NOME: TStringField
      FieldName = 'CONJUGE_NOME'
      Size = 70
    end
    object cdsPessoa_FisicaCONJUGE_DTNASCIMENTO: TDateField
      FieldName = 'CONJUGE_DTNASCIMENTO'
    end
    object cdsPessoa_FisicaGRAU_SIGILO: TStringField
      FieldName = 'GRAU_SIGILO'
      Size = 2
    end
    object cdsPessoa_FisicaCOD_SOCIO: TIntegerField
      FieldName = 'COD_SOCIO'
    end
    object cdsPessoa_FisicaNOME_EMP: TStringField
      FieldName = 'NOME_EMP'
      Size = 70
    end
    object cdsPessoa_FisicaENDERECO_EMP: TStringField
      FieldName = 'ENDERECO_EMP'
      Size = 70
    end
    object cdsPessoa_FisicaMATRICULA_EMP: TStringField
      FieldName = 'MATRICULA_EMP'
    end
    object cdsPessoa_FisicaFONE_EMP: TStringField
      FieldName = 'FONE_EMP'
    end
    object cdsPessoa_FisicaBAIRRO_EMP: TStringField
      FieldName = 'BAIRRO_EMP'
      Size = 30
    end
    object cdsPessoa_FisicaID_CIDADE_EMP: TStringField
      FieldName = 'ID_CIDADE_EMP'
      Size = 10
    end
    object cdsPessoa_FisicaCELULAR_EMP: TStringField
      FieldName = 'CELULAR_EMP'
    end
    object cdsPessoa_FisicaCEP_EMP: TStringField
      FieldName = 'CEP_EMP'
      Size = 9
    end
    object cdsPessoa_FisicaCARGO_EMP: TStringField
      FieldName = 'CARGO_EMP'
      Size = 40
    end
    object cdsPessoa_FisicaINSC_SOCIAL_EMP: TStringField
      FieldName = 'INSC_SOCIAL_EMP'
    end
    object cdsPessoa_FisicaJORNADA_TRAB_EMP: TStringField
      FieldName = 'JORNADA_TRAB_EMP'
      Size = 40
    end
    object cdsPessoa_FisicaVLR_SALARIO_BASE_EMP: TFloatField
      FieldName = 'VLR_SALARIO_BASE_EMP'
    end
    object cdsPessoa_FisicaVLR_SALARIO_BRUTO_EMP: TFloatField
      FieldName = 'VLR_SALARIO_BRUTO_EMP'
    end
    object cdsPessoa_FisicaDTADMISSAO_EMP: TDateField
      FieldName = 'DTADMISSAO_EMP'
    end
    object cdsPessoa_FisicaVLR_RENDA_EXTRA: TFloatField
      FieldName = 'VLR_RENDA_EXTRA'
    end
    object cdsPessoa_FisicaVLR_RENDA_FAMILIAR: TFloatField
      FieldName = 'VLR_RENDA_FAMILIAR'
    end
    object cdsPessoa_FisicaETNIA: TStringField
      FieldName = 'ETNIA'
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_FisicaCADEIRANTE: TStringField
      FieldName = 'CADEIRANTE'
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_FisicaMORADIA: TStringField
      FieldName = 'MORADIA'
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_FisicaCONJUGE_PAI: TStringField
      FieldName = 'CONJUGE_PAI'
      Size = 60
    end
    object cdsPessoa_FisicaCONJUGE_MAE: TStringField
      FieldName = 'CONJUGE_MAE'
      Size = 60
    end
    object cdsPessoa_FisicaCONJUGE_EMP: TStringField
      FieldName = 'CONJUGE_EMP'
      Size = 100
    end
    object cdsPessoa_FisicaCONJUGE_DTADM: TDateField
      FieldName = 'CONJUGE_DTADM'
    end
    object cdsPessoa_FisicaCONJUGE_CARGO: TStringField
      FieldName = 'CONJUGE_CARGO'
      Size = 40
    end
    object cdsPessoa_FisicaCONJUGE_RENDA: TFloatField
      FieldName = 'CONJUGE_RENDA'
    end
    object cdsPessoa_FisicaCONJUGE_ID_CID_EMP: TIntegerField
      FieldName = 'CONJUGE_ID_CID_EMP'
    end
    object cdsPessoa_FisicaCONJUGE_CID_EMP: TStringField
      FieldName = 'CONJUGE_CID_EMP'
      Size = 40
    end
    object cdsPessoa_FisicaCONJUGE_UF_EMP: TStringField
      FieldName = 'CONJUGE_UF_EMP'
      Size = 2
    end
    object cdsPessoa_FisicaCONJUGE_FONE_EMP: TStringField
      FieldName = 'CONJUGE_FONE_EMP'
    end
    object cdsPessoa_FisicaCONJUGE_END_EMP: TStringField
      FieldName = 'CONJUGE_END_EMP'
      Size = 100
    end
    object cdsPessoa_FisicaCONJUGE_RG: TStringField
      FieldName = 'CONJUGE_RG'
      Size = 15
    end
    object cdsPessoa_FisicaTEMPO_MOR: TStringField
      FieldName = 'TEMPO_MOR'
    end
    object cdsPessoa_FisicaOBS_MOR: TStringField
      FieldName = 'OBS_MOR'
      Size = 200
    end
    object cdsPessoa_FisicaNUM_CART_TRAB: TStringField
      FieldName = 'NUM_CART_TRAB'
    end
    object cdsPessoa_FisicaCONJUGE_END: TStringField
      FieldName = 'CONJUGE_END'
      Size = 100
    end
    object cdsPessoa_FisicaCONJUGE_CART_PROF: TStringField
      FieldName = 'CONJUGE_CART_PROF'
    end
    object cdsPessoa_FisicaCONJUGE_CID: TStringField
      FieldName = 'CONJUGE_CID'
      Size = 40
    end
    object cdsPessoa_FisicaINF_SPC: TStringField
      FieldName = 'INF_SPC'
      Size = 70
    end
    object cdsPessoa_FisicaSENHA: TStringField
      FieldName = 'SENHA'
      Size = 100
    end
    object cdsPessoa_FisicaCONTRA_SENHA: TStringField
      FieldName = 'CONTRA_SENHA'
      Size = 100
    end
  end
  object dspPessoa_Fisica: TDataSetProvider
    DataSet = sdsPessoa_Fisica
    UpdateMode = upWhereKeyOnly
    Left = 80
    Top = 292
  end
  object sdsPessoa_Fisica: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PESSOA_FISICA'#13#10'WHERE CODIGO = :CODIGO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 292
    object sdsPessoa_FisicaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoa_FisicaCOD_AGENCIA: TStringField
      FieldName = 'COD_AGENCIA'
      Size = 7
    end
    object sdsPessoa_FisicaNOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
      Size = 60
    end
    object sdsPessoa_FisicaCONTA_CONJUNTA: TStringField
      FieldName = 'CONTA_CONJUNTA'
      Size = 1
    end
    object sdsPessoa_FisicaCOD_OP: TStringField
      FieldName = 'COD_OP'
      Size = 7
    end
    object sdsPessoa_FisicaNUM_CONTA: TStringField
      FieldName = 'NUM_CONTA'
      Size = 10
    end
    object sdsPessoa_FisicaDV_CONTA: TStringField
      FieldName = 'DV_CONTA'
      Size = 2
    end
    object sdsPessoa_FisicaDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
    end
    object sdsPessoa_FisicaSEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object sdsPessoa_FisicaNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 1
    end
    object sdsPessoa_FisicaUF_NAT: TStringField
      FieldName = 'UF_NAT'
      Size = 2
    end
    object sdsPessoa_FisicaID_CIDADE_NAT: TIntegerField
      FieldName = 'ID_CIDADE_NAT'
    end
    object sdsPessoa_FisicaRG_NUM: TStringField
      FieldName = 'RG_NUM'
      Size = 12
    end
    object sdsPessoa_FisicaRG_ORGAO: TStringField
      FieldName = 'RG_ORGAO'
      Size = 7
    end
    object sdsPessoa_FisicaRG_UF: TStringField
      FieldName = 'RG_UF'
      Size = 2
    end
    object sdsPessoa_FisicaRG_DTEMISSAO: TDateField
      FieldName = 'RG_DTEMISSAO'
    end
    object sdsPessoa_FisicaMENOS_18: TStringField
      FieldName = 'MENOS_18'
      Size = 1
    end
    object sdsPessoa_FisicaESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      Size = 1
    end
    object sdsPessoa_FisicaGRAU_INSTRUCAO: TStringField
      FieldName = 'GRAU_INSTRUCAO'
      Size = 1
    end
    object sdsPessoa_FisicaCONJUGE_CPF: TStringField
      FieldName = 'CONJUGE_CPF'
      Size = 14
    end
    object sdsPessoa_FisicaCONJUGE_NOME: TStringField
      FieldName = 'CONJUGE_NOME'
      Size = 70
    end
    object sdsPessoa_FisicaCONJUGE_DTNASCIMENTO: TDateField
      FieldName = 'CONJUGE_DTNASCIMENTO'
    end
    object sdsPessoa_FisicaGRAU_SIGILO: TStringField
      FieldName = 'GRAU_SIGILO'
      Size = 2
    end
    object sdsPessoa_FisicaCOD_SOCIO: TIntegerField
      FieldName = 'COD_SOCIO'
    end
    object sdsPessoa_FisicaNOME_EMP: TStringField
      FieldName = 'NOME_EMP'
      Size = 70
    end
    object sdsPessoa_FisicaENDERECO_EMP: TStringField
      FieldName = 'ENDERECO_EMP'
      Size = 70
    end
    object sdsPessoa_FisicaMATRICULA_EMP: TStringField
      FieldName = 'MATRICULA_EMP'
    end
    object sdsPessoa_FisicaFONE_EMP: TStringField
      FieldName = 'FONE_EMP'
    end
    object sdsPessoa_FisicaBAIRRO_EMP: TStringField
      FieldName = 'BAIRRO_EMP'
      Size = 30
    end
    object sdsPessoa_FisicaID_CIDADE_EMP: TStringField
      FieldName = 'ID_CIDADE_EMP'
      Size = 10
    end
    object sdsPessoa_FisicaCELULAR_EMP: TStringField
      FieldName = 'CELULAR_EMP'
    end
    object sdsPessoa_FisicaCEP_EMP: TStringField
      FieldName = 'CEP_EMP'
      Size = 9
    end
    object sdsPessoa_FisicaCARGO_EMP: TStringField
      FieldName = 'CARGO_EMP'
      Size = 40
    end
    object sdsPessoa_FisicaINSC_SOCIAL_EMP: TStringField
      FieldName = 'INSC_SOCIAL_EMP'
    end
    object sdsPessoa_FisicaJORNADA_TRAB_EMP: TStringField
      FieldName = 'JORNADA_TRAB_EMP'
      Size = 40
    end
    object sdsPessoa_FisicaVLR_SALARIO_BASE_EMP: TFloatField
      FieldName = 'VLR_SALARIO_BASE_EMP'
    end
    object sdsPessoa_FisicaVLR_SALARIO_BRUTO_EMP: TFloatField
      FieldName = 'VLR_SALARIO_BRUTO_EMP'
    end
    object sdsPessoa_FisicaDTADMISSAO_EMP: TDateField
      FieldName = 'DTADMISSAO_EMP'
    end
    object sdsPessoa_FisicaVLR_RENDA_EXTRA: TFloatField
      FieldName = 'VLR_RENDA_EXTRA'
    end
    object sdsPessoa_FisicaVLR_RENDA_FAMILIAR: TFloatField
      FieldName = 'VLR_RENDA_FAMILIAR'
    end
    object sdsPessoa_FisicaETNIA: TStringField
      FieldName = 'ETNIA'
      FixedChar = True
      Size = 1
    end
    object sdsPessoa_FisicaCADEIRANTE: TStringField
      FieldName = 'CADEIRANTE'
      FixedChar = True
      Size = 1
    end
    object sdsPessoa_FisicaMORADIA: TStringField
      FieldName = 'MORADIA'
      FixedChar = True
      Size = 1
    end
    object sdsPessoa_FisicaCONJUGE_PAI: TStringField
      FieldName = 'CONJUGE_PAI'
      Size = 60
    end
    object sdsPessoa_FisicaCONJUGE_MAE: TStringField
      FieldName = 'CONJUGE_MAE'
      Size = 60
    end
    object sdsPessoa_FisicaCONJUGE_EMP: TStringField
      FieldName = 'CONJUGE_EMP'
      Size = 100
    end
    object sdsPessoa_FisicaCONJUGE_DTADM: TDateField
      FieldName = 'CONJUGE_DTADM'
    end
    object sdsPessoa_FisicaCONJUGE_CARGO: TStringField
      FieldName = 'CONJUGE_CARGO'
      Size = 40
    end
    object sdsPessoa_FisicaCONJUGE_RENDA: TFloatField
      FieldName = 'CONJUGE_RENDA'
    end
    object sdsPessoa_FisicaCONJUGE_ID_CID_EMP: TIntegerField
      FieldName = 'CONJUGE_ID_CID_EMP'
    end
    object sdsPessoa_FisicaCONJUGE_CID_EMP: TStringField
      FieldName = 'CONJUGE_CID_EMP'
      Size = 40
    end
    object sdsPessoa_FisicaCONJUGE_UF_EMP: TStringField
      FieldName = 'CONJUGE_UF_EMP'
      Size = 2
    end
    object sdsPessoa_FisicaCONJUGE_FONE_EMP: TStringField
      FieldName = 'CONJUGE_FONE_EMP'
    end
    object sdsPessoa_FisicaCONJUGE_END_EMP: TStringField
      FieldName = 'CONJUGE_END_EMP'
      Size = 100
    end
    object sdsPessoa_FisicaCONJUGE_RG: TStringField
      FieldName = 'CONJUGE_RG'
      Size = 15
    end
    object sdsPessoa_FisicaTEMPO_MOR: TStringField
      FieldName = 'TEMPO_MOR'
    end
    object sdsPessoa_FisicaOBS_MOR: TStringField
      FieldName = 'OBS_MOR'
      Size = 200
    end
    object sdsPessoa_FisicaNUM_CART_TRAB: TStringField
      FieldName = 'NUM_CART_TRAB'
    end
    object sdsPessoa_FisicaCONJUGE_END: TStringField
      FieldName = 'CONJUGE_END'
      Size = 100
    end
    object sdsPessoa_FisicaCONJUGE_CART_PROF: TStringField
      FieldName = 'CONJUGE_CART_PROF'
    end
    object sdsPessoa_FisicaCONJUGE_CID: TStringField
      FieldName = 'CONJUGE_CID'
      Size = 40
    end
    object sdsPessoa_FisicaINF_SPC: TStringField
      FieldName = 'INF_SPC'
      Size = 70
    end
    object sdsPessoa_FisicaSENHA: TStringField
      FieldName = 'SENHA'
      Size = 100
    end
    object sdsPessoa_FisicaCONTRA_SENHA: TStringField
      FieldName = 'CONTRA_SENHA'
      Size = 100
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
    Left = 1024
    Top = 175
    object qParametros_GeralMOSTRAR_DADOS_PESSOA_FISICA: TStringField
      FieldName = 'MOSTRAR_DADOS_PESSOA_FISICA'
      FixedChar = True
      Size = 1
    end
    object qParametros_GeralLIBERAR_DIG_DTCADASTRO: TStringField
      FieldName = 'LIBERAR_DIG_DTCADASTRO'
      FixedChar = True
      Size = 1
    end
    object qParametros_GeralUSAR_PESSOA_FILIAL: TStringField
      FieldName = 'USAR_PESSOA_FILIAL'
      FixedChar = True
      Size = 1
    end
    object qParametros_GeralMOSTRAR_COD_CONTABIL: TStringField
      FieldName = 'MOSTRAR_COD_CONTABIL'
      FixedChar = True
      Size = 1
    end
    object qParametros_GeralINF_USUARIO_VEND: TStringField
      FieldName = 'INF_USUARIO_VEND'
      FixedChar = True
      Size = 1
    end
    object qParametros_GeralPESSOA_TIPO_PADRAO: TStringField
      FieldName = 'PESSOA_TIPO_PADRAO'
      FixedChar = True
      Size = 1
    end
    object qParametros_GeralPESSOA_PAIS_PADRAO: TIntegerField
      FieldName = 'PESSOA_PAIS_PADRAO'
    end
    object qParametros_GeralPESSOA_CIDADE_PADRAO: TIntegerField
      FieldName = 'PESSOA_CIDADE_PADRAO'
    end
    object qParametros_GeralUSA_ISENTO_PESSOA: TStringField
      FieldName = 'USA_ISENTO_PESSOA'
      FixedChar = True
      Size = 1
    end
    object qParametros_GeralENDGRIDS: TStringField
      FieldName = 'ENDGRIDS'
      Size = 250
    end
    object qParametros_GeralUSA_COD_VENDEDOR: TStringField
      FieldName = 'USA_COD_VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object qParametros_GeralUSA_SENHA_CONTRASENHA: TStringField
      FieldName = 'USA_SENHA_CONTRASENHA'
      FixedChar = True
      Size = 1
    end
    object qParametros_GeralUSA_TIPO_MATERIAL: TStringField
      FieldName = 'USA_TIPO_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object qParametros_GeralPERMITE_CNPJ_DUPLICADO_TRANSP: TStringField
      FieldName = 'PERMITE_CNPJ_DUPLICADO_TRANSP'
      FixedChar = True
      Size = 1
    end
    object qParametros_GeralEMPRESA_PET: TStringField
      FieldName = 'EMPRESA_PET'
      FixedChar = True
      Size = 1
    end
    object qParametros_GeralUSA_VENDEDOR_INT: TStringField
      FieldName = 'USA_VENDEDOR_INT'
      FixedChar = True
      Size = 1
    end
    object qParametros_GeralUSA_CAE_PESSOA: TStringField
      FieldName = 'USA_CAE_PESSOA'
      FixedChar = True
      Size = 1
    end
    object qParametros_GeralPERMITE_CNPJ_DUP: TStringField
      FieldName = 'PERMITE_CNPJ_DUP'
      FixedChar = True
      Size = 1
    end
  end
  object sdsGrupo_Pessoa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM GRUPO_PESSOA'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 690
    Top = 116
  end
  object dspGrupo_Pessoa: TDataSetProvider
    DataSet = sdsGrupo_Pessoa
    Left = 722
    Top = 116
  end
  object cdsGrupo_Pessoa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspGrupo_Pessoa'
    Left = 754
    Top = 116
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
    Left = 786
    Top = 116
  end
  object dsPessoa_Dep: TDataSource
    DataSet = cdsPessoa_Dep
    Left = 144
    Top = 336
  end
  object cdsPessoa_Dep: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ITEM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'DTNASCIMENTO'
        DataType = ftDate
      end
      item
        Name = 'PARENTESCO'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <>
    IndexFieldNames = 'CODIGO;ITEM'
    Params = <>
    ProviderName = 'dspPessoa_Dep'
    StoreDefs = True
    BeforeInsert = cdsPessoa_DepBeforeInsert
    AfterInsert = cdsPessoa_DepAfterInsert
    AfterPost = cdsPessoa_DepAfterPost
    Left = 112
    Top = 336
    object cdsPessoa_DepCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoa_DepITEM: TIntegerField
      Alignment = taCenter
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoa_DepNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object cdsPessoa_DepDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
      EditMask = '99/99/9999'
    end
    object cdsPessoa_DepPARENTESCO: TStringField
      FieldName = 'PARENTESCO'
      Size = 30
    end
  end
  object dspPessoa_Dep: TDataSetProvider
    DataSet = sdsPessoa_Dep
    UpdateMode = upWhereKeyOnly
    Left = 80
    Top = 336
  end
  object sdsPessoa_Dep: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PESSOA_DEP'#13#10'WHERE CODIGO = :CODIGO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 336
    object sdsPessoa_DepCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoa_DepITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoa_DepNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object sdsPessoa_DepDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
    end
    object sdsPessoa_DepPARENTESCO: TStringField
      FieldName = 'PARENTESCO'
      Size = 30
    end
  end
  object qParametros_NFe: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT ID, USA_OPCAO_IMP_COD_CLI, IMP_NOMEPROD_CLIENTE, USA_CLIE' +
        'NTE_FAT_FIL,'
      'USA_REGRA_CLI_PROD, ID_CST_DIFERIMENTO'
      'FROM PARAMETROS_NFE')
    SQLConnection = dmDatabase.scoDados
    Left = 1024
    Top = 224
    object qParametros_NFeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_NFeUSA_OPCAO_IMP_COD_CLI: TStringField
      FieldName = 'USA_OPCAO_IMP_COD_CLI'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeIMP_NOMEPROD_CLIENTE: TStringField
      FieldName = 'IMP_NOMEPROD_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeUSA_CLIENTE_FAT_FIL: TStringField
      FieldName = 'USA_CLIENTE_FAT_FIL'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeUSA_REGRA_CLI_PROD: TStringField
      FieldName = 'USA_REGRA_CLI_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeID_CST_DIFERIMENTO: TIntegerField
      FieldName = 'ID_CST_DIFERIMENTO'
    end
  end
  object dsPessoa_RefC: TDataSource
    DataSet = cdsPessoa_RefC
    Left = 344
    Top = 62
  end
  object cdsPessoa_RefC: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ITEM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'TEMPO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'OBS'
        DataType = ftString
        Size = 200
      end>
    IndexDefs = <>
    IndexFieldNames = 'CODIGO;ITEM'
    Params = <>
    ProviderName = 'dspPessoa_RefC'
    StoreDefs = True
    BeforeInsert = cdsPessoa_RefCBeforeInsert
    AfterInsert = cdsPessoa_RefCAfterInsert
    AfterPost = cdsPessoa_RefCAfterPost
    Left = 312
    Top = 62
    object cdsPessoa_RefCCODIGO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoa_RefCITEM: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoa_RefCNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 100
    end
    object cdsPessoa_RefCTEMPO: TStringField
      DisplayLabel = 'Tempo'
      FieldName = 'TEMPO'
    end
    object cdsPessoa_RefCOBS: TStringField
      DisplayLabel = 'Obs'
      FieldName = 'OBS'
      Size = 200
    end
  end
  object dspPessoa_RefC: TDataSetProvider
    DataSet = sdsPessoa_RefC
    UpdateMode = upWhereKeyOnly
    Left = 280
    Top = 62
  end
  object sdsPessoa_RefC: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PESSOA_REFC'#13#10'WHERE CODIGO = :CODIGO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 248
    Top = 62
    object sdsPessoa_RefCCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoa_RefCITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoa_RefCNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsPessoa_RefCTEMPO: TStringField
      FieldName = 'TEMPO'
    end
    object sdsPessoa_RefCOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
  end
  object dsPessoa_Aut: TDataSource
    DataSet = cdsPessoa_Aut
    Left = 344
    Top = 110
  end
  object cdsPessoa_Aut: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ITEM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'PARENTESCO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'OBS'
        DataType = ftString
        Size = 200
      end>
    IndexDefs = <>
    IndexFieldNames = 'CODIGO;ITEM'
    Params = <>
    ProviderName = 'dspPessoa_Aut'
    StoreDefs = True
    BeforeInsert = cdsPessoa_AutBeforeInsert
    AfterInsert = cdsPessoa_AutAfterInsert
    AfterPost = cdsPessoa_AutAfterPost
    Left = 312
    Top = 110
    object cdsPessoa_AutCODIGO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoa_AutITEM: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoa_AutNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 70
    end
    object cdsPessoa_AutPARENTESCO: TStringField
      DisplayLabel = 'Parentesco'
      FieldName = 'PARENTESCO'
      Size = 40
    end
    object cdsPessoa_AutOBS: TStringField
      DisplayLabel = 'Obs'
      FieldName = 'OBS'
      Size = 200
    end
  end
  object dspPessoa_Aut: TDataSetProvider
    DataSet = sdsPessoa_Aut
    UpdateMode = upWhereKeyOnly
    Left = 280
    Top = 110
  end
  object sdsPessoa_Aut: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PESSOA_AUT'#13#10'WHERE CODIGO = :CODIGO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 248
    Top = 110
    object sdsPessoa_AutCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoa_AutITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoa_AutNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object sdsPessoa_AutPARENTESCO: TStringField
      FieldName = 'PARENTESCO'
      Size = 40
    end
    object sdsPessoa_AutOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
  end
  object sdsPessoa_RefP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PESSOA_REFP'#13#10'WHERE CODIGO = :CODIGO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 248
    Top = 14
    object sdsPessoa_RefPCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoa_RefPITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoa_RefPNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object sdsPessoa_RefPID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object sdsPessoa_RefPUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sdsPessoa_RefPCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsPessoa_RefPENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object sdsPessoa_RefPPARENTESCO: TStringField
      FieldName = 'PARENTESCO'
      Size = 40
    end
    object sdsPessoa_RefPOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object sdsPessoa_RefPFONE: TStringField
      FieldName = 'FONE'
    end
  end
  object dspPessoa_RefP: TDataSetProvider
    DataSet = sdsPessoa_RefP
    UpdateMode = upWhereKeyOnly
    Left = 280
    Top = 14
  end
  object cdsPessoa_RefP: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO;NOME'
    Params = <>
    ProviderName = 'dspPessoa_RefP'
    BeforeInsert = cdsPessoa_RefPBeforeInsert
    AfterInsert = cdsPessoa_RefPAfterInsert
    AfterPost = cdsPessoa_RefPAfterPost
    Left = 312
    Top = 14
    object cdsPessoa_RefPCODIGO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoa_RefPITEM: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoa_RefPNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 70
    end
    object cdsPessoa_RefPID_CIDADE: TIntegerField
      DisplayLabel = 'ID Cidade'
      FieldName = 'ID_CIDADE'
    end
    object cdsPessoa_RefPUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsPessoa_RefPCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsPessoa_RefPENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsPessoa_RefPPARENTESCO: TStringField
      DisplayLabel = 'Parentesco'
      FieldName = 'PARENTESCO'
      Size = 40
    end
    object cdsPessoa_RefPOBS: TStringField
      DisplayLabel = 'Obs'
      FieldName = 'OBS'
      Size = 200
    end
    object cdsPessoa_RefPFONE: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
    end
  end
  object dsPessoa_RefP: TDataSource
    DataSet = cdsPessoa_RefP
    Left = 344
    Top = 14
  end
  object dsPessoa_Ativ: TDataSource
    DataSet = cdsPessoa_Ativ
    Left = 344
    Top = 158
  end
  object cdsPessoa_Ativ: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ITEM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_ATIVIDADE'
        DataType = ftInteger
      end
      item
        Name = 'NOME_ATIVIDADE'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <>
    IndexFieldNames = 'CODIGO;ITEM'
    Params = <>
    ProviderName = 'dspPessoa_Ativ'
    StoreDefs = True
    BeforeInsert = cdsPessoa_AtivBeforeInsert
    AfterInsert = cdsPessoa_AtivAfterInsert
    AfterPost = cdsPessoa_AtivAfterPost
    Left = 312
    Top = 158
    object cdsPessoa_AtivCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoa_AtivITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoa_AtivID_ATIVIDADE: TIntegerField
      FieldName = 'ID_ATIVIDADE'
    end
    object cdsPessoa_AtivNOME_ATIVIDADE: TStringField
      FieldName = 'NOME_ATIVIDADE'
      Size = 50
    end
  end
  object dspPessoa_Ativ: TDataSetProvider
    DataSet = sdsPessoa_Ativ
    UpdateMode = upWhereKeyOnly
    Left = 280
    Top = 158
  end
  object sdsPessoa_Ativ: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PA.*, ATIV.nome NOME_ATIVIDADE'#13#10'FROM PESSOA_ATIV PA'#13#10'LEFT' +
      ' JOIN ATIVIDADE ATIV'#13#10'ON PA.id_atividade = ATIV.ID'#13#10'WHERE CODIGO' +
      ' = :CODIGO'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 248
    Top = 158
    object sdsPessoa_AtivCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoa_AtivITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoa_AtivID_ATIVIDADE: TIntegerField
      FieldName = 'ID_ATIVIDADE'
    end
    object sdsPessoa_AtivNOME_ATIVIDADE: TStringField
      FieldName = 'NOME_ATIVIDADE'
      Size = 50
    end
  end
  object qAtividade: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM ATIVIDADE'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 1056
    Top = 80
    object qAtividadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qAtividadeNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object qAtividadeTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qAtividadeCOD_ANT: TIntegerField
      FieldName = 'COD_ANT'
    end
  end
  object sdsUsuario: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM UCTABUSERS'#13#10'WHERE UCTYPEREC = '#39'U'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 490
    Top = 492
  end
  object dspUsuario: TDataSetProvider
    DataSet = sdsUsuario
    Left = 522
    Top = 492
  end
  object cdsUsuario: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UCUSERNAME'
    Params = <>
    ProviderName = 'dspUsuario'
    Left = 554
    Top = 492
    object cdsUsuarioUCIDUSER: TIntegerField
      FieldName = 'UCIDUSER'
    end
    object cdsUsuarioUCUSERNAME: TStringField
      FieldName = 'UCUSERNAME'
      Size = 30
    end
    object cdsUsuarioUCLOGIN: TStringField
      FieldName = 'UCLOGIN'
      Size = 30
    end
    object cdsUsuarioUCPASSWORD: TStringField
      FieldName = 'UCPASSWORD'
      Size = 30
    end
    object cdsUsuarioUCEMAIL: TStringField
      FieldName = 'UCEMAIL'
      Size = 150
    end
    object cdsUsuarioUCPRIVILEGED: TIntegerField
      FieldName = 'UCPRIVILEGED'
    end
    object cdsUsuarioUCTYPEREC: TStringField
      FieldName = 'UCTYPEREC'
      FixedChar = True
      Size = 1
    end
    object cdsUsuarioUCPROFILE: TIntegerField
      FieldName = 'UCPROFILE'
    end
    object cdsUsuarioUCKEY: TStringField
      FieldName = 'UCKEY'
      Size = 255
    end
  end
  object dsUsuario: TDataSource
    DataSet = cdsUsuario
    Left = 586
    Top = 492
  end
  object sdsCarteira: TSQLDataSet
    CommandText = 'SELECT * FROM COB_CARTEIRA WHERE ID_BANCO = :ID_BANCO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_BANCO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 696
    Top = 312
  end
  object dsdCarteira: TDataSetProvider
    DataSet = sdsCarteira
    Left = 728
    Top = 312
  end
  object cdsCarteira: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsdCarteira'
    Left = 760
    Top = 312
    object cdsCarteiraID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCarteiraCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object cdsCarteiraCODIGO_IMP: TStringField
      FieldName = 'CODIGO_IMP'
      Size = 7
    end
    object cdsCarteiraNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsCarteiraGERAR_NOSSONUMERO: TStringField
      FieldName = 'GERAR_NOSSONUMERO'
      FixedChar = True
      Size = 1
    end
    object cdsCarteiraGERAR_REMESSA: TStringField
      FieldName = 'GERAR_REMESSA'
      FixedChar = True
      Size = 1
    end
    object cdsCarteiraID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object cdsCarteiraCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      FixedChar = True
      Size = 3
    end
  end
  object dsCarteira: TDataSource
    DataSet = cdsCarteira
    Left = 792
    Top = 312
  end
  object qAniversario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select A.CODIGO, A.NOME, A.FANTASIA, A.CIDADE, '#39'('#39' || A.DDDFONE1' +
        ' || '#39') '#39' || A.TELEFONE1 as FONE,'
      
        '       extract(month from B.DTNASCIMENTO) as MES, extract(day fr' +
        'om B.DTNASCIMENTO) as DIA'
      'from PESSOA A'
      'inner join PESSOA_FISICA B on A.CODIGO = B.CODIGO')
    SQLConnection = dmDatabase.scoDados
    Left = 1056
    Top = 272
    object qAniversarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qAniversarioNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qAniversarioFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object qAniversarioCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qAniversarioFONE: TStringField
      FieldName = 'FONE'
      Size = 29
    end
    object qAniversarioMES: TSmallintField
      FieldName = 'MES'
    end
    object qAniversarioDIA: TSmallintField
      FieldName = 'DIA'
    end
  end
  object mAniversario: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Codigo'
        DataType = ftInteger
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Fantasia'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Cidade'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Fone'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Mes'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Dia'
        DataType = ftString
        Size = 2
      end>
    IndexDefs = <>
    IndexFieldNames = 'DIA'
    Params = <>
    StoreDefs = True
    Left = 864
    Top = 80
    Data = {
      C30000009619E0BD010000001800000007000000000003000000C30006436F64
      69676F0400010000000000044E6F6D6501004900000001000557494454480200
      020032000846616E746173696101004900000001000557494454480200020032
      00064369646164650100490000000100055749445448020002001E0004466F6E
      650100490000000100055749445448020002001E00034D657301004900000001
      0005574944544802000200020003446961010049000000010005574944544802
      00020002000000}
    object mAniversarioCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object mAniversarioNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object mAniversarioFantasia: TStringField
      FieldName = 'Fantasia'
      Size = 50
    end
    object mAniversarioCidade: TStringField
      FieldName = 'Cidade'
      Size = 30
    end
    object mAniversarioFone: TStringField
      FieldName = 'Fone'
      Size = 30
    end
    object mAniversarioMes: TStringField
      FieldName = 'Mes'
      Size = 2
    end
    object mAniversarioDia: TStringField
      FieldName = 'Dia'
      Size = 2
    end
  end
  object dsAniversario: TDataSource
    DataSet = mAniversario
    Left = 896
    Top = 80
  end
  object frxAniversario: TfrxDBDataset
    UserName = 'frxAniversario'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Codigo=Codigo'
      'Nome=Nome'
      'Fantasia=Fantasia'
      'Dia=Dia'
      'Cidade=Cidade'
      'Fone=Fone'
      'Mes=Mes')
    DataSource = dsAniversario
    BCDToCurrency = False
    Left = 984
    Top = 480
  end
  object qParametros_RecXML: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_RECXML'
      'WHERE ID = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 1024
    Top = 79
    object qParametros_RecXMLUSA_OC_XML: TStringField
      FieldName = 'USA_OC_XML'
      FixedChar = True
      Size = 1
    end
    object qParametros_RecXMLCONTROLAR_GRAVA_PROD: TStringField
      FieldName = 'CONTROLAR_GRAVA_PROD'
      FixedChar = True
      Size = 1
    end
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxPF_Autorizados'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=Codigo'
      'ITEM=ITEM'
      'NOME=Nome'
      'PARENTESCO=PARENTESCO'
      'OBS=OBS')
    DataSource = dsPessoa_Aut
    BCDToCurrency = False
    Left = 1016
    Top = 480
  end
  object frxDBDataset5: TfrxDBDataset
    UserName = 'frxPessoa_RefP'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'ITEM=ITEM'
      'NOME=NOME'
      'ID_CIDADE=ID_CIDADE'
      'UF=UF'
      'CIDADE=CIDADE'
      'ENDERECO=ENDERECO'
      'PARENTESCO=PARENTESCO'
      'OBS=OBS'
      'FONE=FONE')
    DataSource = dsPessoa_RefP
    BCDToCurrency = False
    Left = 1048
    Top = 480
  end
  object frxDBDataset6: TfrxDBDataset
    UserName = 'frxPessoa_RefC'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'ITEM=ITEM'
      'NOME=NOME'
      'TEMPO=TEMPO'
      'OBS=OBS')
    DataSource = dsPessoa_RefC
    BCDToCurrency = False
    Left = 1080
    Top = 480
  end
  object dsPessoa_Vend: TDataSource
    DataSet = cdsPessoa_Vend
    Left = 144
    Top = 381
  end
  object cdsPessoa_Vend: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'COD_VENDEDOR'
        DataType = ftInteger
      end>
    IndexDefs = <>
    IndexFieldNames = 'CODIGO;COD_VENDEDOR'
    Params = <>
    ProviderName = 'dspPessoa_Vend'
    StoreDefs = True
    Left = 113
    Top = 381
    object cdsPessoa_VendCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoa_VendCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dspPessoa_Vend: TDataSetProvider
    DataSet = sdsPessoa_Vend
    UpdateMode = upWhereKeyOnly
    Left = 80
    Top = 381
  end
  object sdsPessoa_Vend: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PESSOA_VEND'#13#10'WHERE CODIGO = :CODIGO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 381
    object sdsPessoa_VendCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoa_VendCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dsPessoa_TipoMat: TDataSource
    DataSet = cdsPessoa_TipoMat
    Left = 144
    Top = 427
  end
  object cdsPessoa_TipoMat: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ITEM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_TIPO_MATERIAL'
        DataType = ftInteger
      end
      item
        Name = 'ESPESSURA'
        DataType = ftFloat
      end
      item
        Name = 'FATOR_CALCULO'
        DataType = ftFloat
      end>
    IndexDefs = <>
    IndexFieldNames = 'CODIGO;ITEM'
    Params = <>
    ProviderName = 'dspPessoa_TipoMat'
    StoreDefs = True
    BeforeInsert = cdsPessoa_TipoMatBeforeInsert
    AfterInsert = cdsPessoa_TipoMatAfterInsert
    AfterPost = cdsPessoa_TipoMatAfterPost
    Left = 111
    Top = 427
    object cdsPessoa_TipoMatCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoa_TipoMatITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoa_TipoMatID_TIPO_MATERIAL: TIntegerField
      FieldName = 'ID_TIPO_MATERIAL'
    end
    object cdsPessoa_TipoMatESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
    end
    object cdsPessoa_TipoMatlkNOME_TIPO_MAT: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNOME_TIPO_MAT'
      LookupDataSet = cdsTipo_Material
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'ID_TIPO_MATERIAL'
      ProviderFlags = []
      Size = 30
      Lookup = True
    end
  end
  object dspPessoa_TipoMat: TDataSetProvider
    DataSet = sdsPessoa_TipoMat
    UpdateMode = upWhereKeyOnly
    Left = 80
    Top = 427
  end
  object sdsPessoa_TipoMat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PESSOA_TIPOMAT'#13#10'WHERE CODIGO = :CODIGO'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 427
    object sdsPessoa_TipoMatCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoa_TipoMatITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoa_TipoMatID_TIPO_MATERIAL: TIntegerField
      FieldName = 'ID_TIPO_MATERIAL'
    end
    object sdsPessoa_TipoMatESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
    end
  end
  object sdsTipo_Material: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TIPO_MATERIAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 250
    Top = 244
  end
  object dspTipo_Material: TDataSetProvider
    DataSet = sdsTipo_Material
    Left = 282
    Top = 244
  end
  object cdsTipo_Material: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspTipo_Material'
    Left = 314
    Top = 244
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
    Left = 346
    Top = 244
  end
  object qParametros_CTA_ORC: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT P.usa_sintetica'
      'FROM parametros_cta_orc P')
    SQLConnection = dmDatabase.scoDados
    Left = 1024
    Top = 273
    object qParametros_CTA_ORCUSA_SINTETICA: TStringField
      FieldName = 'USA_SINTETICA'
      FixedChar = True
      Size = 1
    end
  end
  object qParametros_Ped: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT USA_CAIXINHA'
      'FROM PARAMETROS_PED')
    SQLConnection = dmDatabase.scoDados
    Left = 1056
    Top = 224
    object qParametros_PedUSA_CAIXINHA: TStringField
      FieldName = 'USA_CAIXINHA'
      FixedChar = True
      Size = 1
    end
  end
  object dsPessoa_Fil: TDataSource
    DataSet = cdsPessoa_Fil
    Left = 344
    Top = 198
  end
  object cdsPessoa_Fil: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ITEM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'FILIAL'
        DataType = ftInteger
      end
      item
        Name = 'NOME_FILIAL'
        DataType = ftString
        Size = 60
      end>
    IndexDefs = <>
    IndexFieldNames = 'CODIGO;ITEM'
    Params = <>
    ProviderName = 'dspPessoa_Fil'
    StoreDefs = True
    BeforeInsert = cdsPessoa_FilBeforeInsert
    AfterInsert = cdsPessoa_FilAfterInsert
    AfterPost = cdsPessoa_FilAfterPost
    Left = 312
    Top = 199
    object cdsPessoa_FilCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoa_FilITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoa_FilFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsPessoa_FillkNome_Filial: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNome_Filial'
      LookupDataSet = cdsFilial
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'FILIAL'
      ProviderFlags = []
      Size = 60
      Lookup = True
    end
  end
  object dspPessoa_Fil: TDataSetProvider
    DataSet = sdsPessoa_Fil
    UpdateMode = upWhereKeyOnly
    Left = 280
    Top = 199
  end
  object sdsPessoa_Fil: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT PF.*'#13#10'FROM PESSOA_FIL PF'#13#10'WHERE PF.CODIGO = :CODIGO'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 248
    Top = 199
    object sdsPessoa_FilCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoa_FilITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoa_FilFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
  end
  object dsVendedor_Config: TDataSource
    DataSet = cdsVendedor_Config
    Left = 144
    Top = 474
  end
  object cdsVendedor_Config: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESC_FRETE'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DESC_IPI'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DESC_ST'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DESC_PIS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DESC_COFINS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DESC_ISSQN'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspVendedor_Config'
    StoreDefs = True
    OnNewRecord = cdsVendedor_ConfigNewRecord
    Left = 109
    Top = 474
    object cdsVendedor_ConfigCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsVendedor_ConfigDESC_FRETE: TStringField
      FieldName = 'DESC_FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsVendedor_ConfigDESC_IPI: TStringField
      FieldName = 'DESC_IPI'
      FixedChar = True
      Size = 1
    end
    object cdsVendedor_ConfigDESC_ST: TStringField
      FieldName = 'DESC_ST'
      FixedChar = True
      Size = 1
    end
    object cdsVendedor_ConfigDESC_PIS: TStringField
      FieldName = 'DESC_PIS'
      FixedChar = True
      Size = 1
    end
    object cdsVendedor_ConfigDESC_COFINS: TStringField
      FieldName = 'DESC_COFINS'
      FixedChar = True
      Size = 1
    end
    object cdsVendedor_ConfigDESC_ISSQN: TStringField
      FieldName = 'DESC_ISSQN'
      FixedChar = True
      Size = 1
    end
  end
  object dspVendedor_Config: TDataSetProvider
    DataSet = sdsVendedor_Config
    UpdateMode = upWhereKeyOnly
    Left = 80
    Top = 474
  end
  object sdsVendedor_Config: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM VENDEDOR_CONFIG'#13#10'WHERE CODIGO = :CODIGO'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 474
    object sdsVendedor_ConfigCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsVendedor_ConfigDESC_FRETE: TStringField
      FieldName = 'DESC_FRETE'
      FixedChar = True
      Size = 1
    end
    object sdsVendedor_ConfigDESC_IPI: TStringField
      FieldName = 'DESC_IPI'
      FixedChar = True
      Size = 1
    end
    object sdsVendedor_ConfigDESC_ST: TStringField
      FieldName = 'DESC_ST'
      FixedChar = True
      Size = 1
    end
    object sdsVendedor_ConfigDESC_PIS: TStringField
      FieldName = 'DESC_PIS'
      FixedChar = True
      Size = 1
    end
    object sdsVendedor_ConfigDESC_COFINS: TStringField
      FieldName = 'DESC_COFINS'
      FixedChar = True
      Size = 1
    end
    object sdsVendedor_ConfigDESC_ISSQN: TStringField
      FieldName = 'DESC_ISSQN'
      FixedChar = True
      Size = 1
    end
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
      'SELECT U.libera_config_vendedor'
      'FROM parametros_usuario U'
      'WHERE U.USUARIO = :USUARIO')
    SQLConnection = dmDatabase.scoDados
    Left = 1024
    Top = 318
    object qParametros_UsuarioLIBERA_CONFIG_VENDEDOR: TStringField
      FieldName = 'LIBERA_CONFIG_VENDEDOR'
      FixedChar = True
      Size = 1
    end
  end
  object qParametros_Com: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT P.usa_config_ind'
      'FROM PARAMETROS_COM P'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 1056
    Top = 318
    object qParametros_ComUSA_CONFIG_IND: TStringField
      FieldName = 'USA_CONFIG_IND'
      FixedChar = True
      Size = 1
    end
  end
  object dsPessoa_Animal: TDataSource
    DataSet = cdsPessoa_Animal
    Left = 145
    Top = 518
  end
  object cdsPessoa_Animal: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ITEM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ID_RACA'
        DataType = ftInteger
      end
      item
        Name = 'DTCADASTRO'
        DataType = ftDate
      end
      item
        Name = 'ID_REMEDIO_PULGA'
        DataType = ftInteger
      end
      item
        Name = 'ID_RACAO'
        DataType = ftInteger
      end
      item
        Name = 'OBS'
        DataType = ftMemo
        Size = 1
      end>
    IndexDefs = <>
    IndexFieldNames = 'CODIGO;ITEM'
    Params = <>
    ProviderName = 'dspPessoa_Animal'
    StoreDefs = True
    OnCalcFields = cdsPessoa_AnimalCalcFields
    OnNewRecord = cdsPessoa_AnimalNewRecord
    Left = 114
    Top = 519
    object cdsPessoa_AnimalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoa_AnimalITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoa_AnimalNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsPessoa_AnimalID_RACA: TIntegerField
      FieldName = 'ID_RACA'
    end
    object cdsPessoa_AnimalDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object cdsPessoa_AnimalID_REMEDIO_PULGA: TIntegerField
      FieldName = 'ID_REMEDIO_PULGA'
    end
    object cdsPessoa_AnimalID_RACAO: TIntegerField
      FieldName = 'ID_RACAO'
    end
    object cdsPessoa_AnimalOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPessoa_AnimalclNome_Raca: TStringField
      FieldKind = fkCalculated
      FieldName = 'clNome_Raca'
      ProviderFlags = []
      Size = 60
      Calculated = True
    end
    object cdsPessoa_AnimalclNome_RemedioPulga: TStringField
      FieldKind = fkCalculated
      FieldName = 'clNome_RemedioPulga'
      ProviderFlags = []
      Size = 60
      Calculated = True
    end
    object cdsPessoa_AnimalclNome_Racao: TStringField
      FieldKind = fkCalculated
      FieldName = 'clNome_Racao'
      ProviderFlags = []
      Size = 60
      Calculated = True
    end
  end
  object dspPessoa_Animal: TDataSetProvider
    DataSet = sdsPessoa_Animal
    UpdateMode = upWhereKeyOnly
    Left = 80
    Top = 518
  end
  object sdsPessoa_Animal: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PESSOA_ANIMAL'#13#10'WHERE CODIGO = :CODIGO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 518
    object sdsPessoa_AnimalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoa_AnimalITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoa_AnimalNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsPessoa_AnimalID_RACA: TIntegerField
      FieldName = 'ID_RACA'
    end
    object sdsPessoa_AnimalDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object sdsPessoa_AnimalID_REMEDIO_PULGA: TIntegerField
      FieldName = 'ID_REMEDIO_PULGA'
    end
    object sdsPessoa_AnimalID_RACAO: TIntegerField
      FieldName = 'ID_RACAO'
    end
    object sdsPessoa_AnimalOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
  end
  object sdsRaca: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM RACA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 250
    Top = 542
  end
  object dspRaca: TDataSetProvider
    DataSet = sdsRaca
    Left = 282
    Top = 542
  end
  object cdsRaca: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspRaca'
    Left = 314
    Top = 542
    object cdsRacaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsRacaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsRacaID_TIPO_ANIMAL: TIntegerField
      FieldName = 'ID_TIPO_ANIMAL'
    end
  end
  object dsRaca: TDataSource
    DataSet = cdsRaca
    Left = 346
    Top = 541
  end
  object qProd: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID, NOME, REFERENCIA'
      'FROM PRODUTO'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 1027
    Top = 364
    object qProdID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProdNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qProdREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
  end
  object dsPessoa_ProdICMS: TDataSource
    DataSet = cdsPessoa_ProdICMS
    Left = 146
    Top = 566
  end
  object cdsPessoa_ProdICMS: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ITEM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_PRODUTO'
        DataType = ftInteger
      end
      item
        Name = 'ID_CSTICMS'
        DataType = ftInteger
      end
      item
        Name = 'ID_LEI'
        DataType = ftInteger
      end
      item
        Name = 'DRAWBACK'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'COD_BENEF'
        DataType = ftString
        Size = 8
      end>
    IndexDefs = <>
    IndexFieldNames = 'CODIGO;ITEM'
    Params = <>
    ProviderName = 'dspPessoa_ProdICMS'
    StoreDefs = True
    OnCalcFields = cdsPessoa_ProdICMSCalcFields
    Left = 114
    Top = 567
    object cdsPessoa_ProdICMSCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoa_ProdICMSITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoa_ProdICMSID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsPessoa_ProdICMSID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object cdsPessoa_ProdICMSclCod_CSTICMS: TStringField
      FieldKind = fkCalculated
      FieldName = 'clCod_CSTICMS'
      ProviderFlags = []
      Size = 3
      Calculated = True
    end
    object cdsPessoa_ProdICMSID_LEI: TIntegerField
      FieldName = 'ID_LEI'
    end
    object cdsPessoa_ProdICMSclNomeLei: TStringField
      FieldKind = fkCalculated
      FieldName = 'clNomeLei'
      Size = 100
      Calculated = True
    end
    object cdsPessoa_ProdICMSclLei: TStringField
      FieldKind = fkCalculated
      FieldName = 'clLei'
      Size = 250
      Calculated = True
    end
    object cdsPessoa_ProdICMSDRAWBACK: TStringField
      FieldName = 'DRAWBACK'
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_ProdICMSCOD_BENEF: TStringField
      FieldName = 'COD_BENEF'
      Size = 8
    end
  end
  object dspPessoa_ProdICMS: TDataSetProvider
    DataSet = sdsPessoa_ProdICMS
    UpdateMode = upWhereKeyOnly
    Left = 80
    Top = 566
  end
  object sdsPessoa_ProdICMS: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PESSOA_PRODICMS'#13#10'WHERE CODIGO = :CODIGO'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 566
    object sdsPessoa_ProdICMSCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoa_ProdICMSITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoa_ProdICMSID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsPessoa_ProdICMSID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object sdsPessoa_ProdICMSID_LEI: TIntegerField
      FieldName = 'ID_LEI'
    end
    object sdsPessoa_ProdICMSDRAWBACK: TStringField
      FieldName = 'DRAWBACK'
      FixedChar = True
      Size = 1
    end
    object sdsPessoa_ProdICMSCOD_BENEF: TStringField
      FieldName = 'COD_BENEF'
      Size = 8
    end
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
    Left = 1056
    Top = 363
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
  object frxEtiqueta: TfrxDBDataset
    UserName = 'frxEtiqueta'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'NOME=NOME'
      'FANTASIA=FANTASIA'
      'ENDERECO=ENDERECO'
      'COMPLEMENTO_END=COMPLEMENTO_END'
      'NUM_END=NUM_END'
      'BAIRRO=BAIRRO'
      'ID_CIDADE=ID_CIDADE'
      'CIDADE=CIDADE'
      'UF=UF'
      'CEP=CEP'
      'DDDFONE1=DDDFONE1'
      'TELEFONE1=TELEFONE1'
      'DDDFONE2=DDDFONE2'
      'TELEFONE2=TELEFONE2'
      'DDDFAX=DDDFAX'
      'FAX=FAX'
      'PESSOA=PESSOA'
      'INSCR_EST=INSCR_EST'
      'ENDERECO_ENT=ENDERECO_ENT'
      'COMPLEMENTO_END_ENT=COMPLEMENTO_END_ENT'
      'NUM_END_ENT=NUM_END_ENT'
      'BAIRRO_ENT=BAIRRO_ENT'
      'ID_CIDADE_ENT=ID_CIDADE_ENT'
      'CIDADE_ENT=CIDADE_ENT'
      'CEP_ENT=CEP_ENT'
      'UF_ENT=UF_ENT'
      'PESSOA_ENT=PESSOA_ENT'
      'CNPJ_CPF_ENT=CNPJ_CPF_ENT'
      'INSC_EST_ENT=INSC_EST_ENT'
      'ENDERECO_PGTO=ENDERECO_PGTO'
      'COMPLEMENTO_END_PGTO=COMPLEMENTO_END_PGTO'
      'NUM_END_PGTO=NUM_END_PGTO'
      'BAIRRO_PGTO=BAIRRO_PGTO'
      'ID_CIDADE_PGTO=ID_CIDADE_PGTO'
      'CIDADE_PGTO=CIDADE_PGTO'
      'CEP_PGTO=CEP_PGTO'
      'UF_PGTO=UF_PGTO'
      'CAIXAPOSTAL=CAIXAPOSTAL'
      'RG=RG'
      'ID_VENDEDOR=ID_VENDEDOR'
      'ID_CONDPGTO=ID_CONDPGTO'
      'ID_CONTABOLETO=ID_CONTABOLETO'
      'ID_TRANSPORTADORA=ID_TRANSPORTADORA'
      'ID_TIPOCOBRANCA=ID_TIPOCOBRANCA'
      'ID_REDESPACHO=ID_REDESPACHO'
      'ID_PAIS=ID_PAIS'
      'ID_REGIME_TRIB=ID_REGIME_TRIB'
      'PERC_COMISSAO=PERC_COMISSAO'
      'DDD_ENT=DDD_ENT'
      'FONE_ENT=FONE_ENT'
      'DDD_PGTO=DDD_PGTO'
      'FONE_PGTO=FONE_PGTO'
      'INATIVO=INATIVO'
      'HOMEPAGE=HOMEPAGE'
      'TIPO_FRETE=TIPO_FRETE'
      'NOME_ENTREGA=NOME_ENTREGA'
      'EMAIL_NFE=EMAIL_NFE'
      'EMAIL_PGTO=EMAIL_PGTO'
      'EMAIL_NFE2=EMAIL_NFE2'
      'PESSOA_PGTO=PESSOA_PGTO'
      'CNPJ_CPG_PGTO=CNPJ_CPG_PGTO'
      'INSC_EST_PGTO=INSC_EST_PGTO'
      'UF_PLACA=UF_PLACA'
      'PLACA=PLACA'
      'TP_CLIENTE=TP_CLIENTE'
      'TP_FORNECEDOR=TP_FORNECEDOR'
      'TP_TRANSPORTADORA=TP_TRANSPORTADORA'
      'TP_VENDEDOR=TP_VENDEDOR'
      'TIPO_ICMS=TIPO_ICMS'
      'ID_TAB_PRECO=ID_TAB_PRECO'
      'TP_ATELIER=TP_ATELIER'
      'TIPO_COMISSAO=TIPO_COMISSAO'
      'NOME_CONTATO=NOME_CONTATO'
      'INSC_MUNICIPAL=INSC_MUNICIPAL'
      'DT_CONTRATO_INI=DT_CONTRATO_INI'
      'DT_CONTRATO_FIN=DT_CONTRATO_FIN'
      'ID_SERVICO=ID_SERVICO'
      'ID_SERVICO_INT=ID_SERVICO_INT'
      'VLR_SERVICO=VLR_SERVICO'
      'CLIENTE_CONTA_ID=CLIENTE_CONTA_ID'
      'FORNECEDOR_CONTA_ID=FORNECEDOR_CONTA_ID'
      'VENDEDOR_CONTA_ID=VENDEDOR_CONTA_ID'
      'TRANSPORTADORA_CONTA_ID=TRANSPORTADORA_CONTA_ID'
      'ATELIER_CONTA_ID=ATELIER_CONTA_ID'
      'RETEM_ISS=RETEM_ISS'
      'RETEM_CSLL=RETEM_CSLL'
      'RETEM_PISCOFINS=RETEM_PISCOFINS'
      'RETEM_INSS=RETEM_INSS'
      'EMAIL_COMPRAS=EMAIL_COMPRAS'
      'CONTATO_COMPRAS=CONTATO_COMPRAS'
      'ORGAO_PUBLICO=ORGAO_PUBLICO'
      'ID_NATUREZA=ID_NATUREZA'
      'DIMINUIR_RETENCAO=DIMINUIR_RETENCAO'
      'PERC_REDUCAO_INSS=PERC_REDUCAO_INSS'
      'USA_TRANSFICMS=USA_TRANSFICMS'
      'CLIENTE_ESTOQUE=CLIENTE_ESTOQUE'
      'USA_TAMANHO_AGRUPADO_NFE=USA_TAMANHO_AGRUPADO_NFE'
      'ID_EDI=ID_EDI'
      'COBRAR_TAXA_BANCO=COBRAR_TAXA_BANCO'
      'VLR_LIMITE_CREDITO=VLR_LIMITE_CREDITO'
      'INSC_EST_ST=INSC_EST_ST'
      'UF_ST=UF_ST'
      'CNPJ_CPF=CNPJ_CPF'
      'COD_ALFA=COD_ALFA'
      'DTPEDIDO=DTPEDIDO'
      'DTNOTA=DTNOTA'
      'NOME_CONDPGTO=NOME_CONDPGTO'
      'NOME_VENDEDOR=NOME_VENDEDOR'
      'PERC_COMISSAO_VEND=PERC_COMISSAO_VEND'
      'DTCADASTRO=DTCADASTRO'
      'HRCADASTRO=HRCADASTRO'
      'NOME_GRUPO=NOME_GRUPO'
      'TIPO_CONTRIBUINTE=TIPO_CONTRIBUINTE'
      'VLR_ULT_FATURAMENTO=VLR_ULT_FATURAMENTO'
      'QTD_ULT_FATURAMENTO=QTD_ULT_FATURAMENTO'
      'DTNASCIMENTO=DTNASCIMENTO'
      'MAE_NOME=MAE_NOME'
      'PAI_NOME=PAI_NOME'
      'CONJUGE_NOME=CONJUGE_NOME'
      'CONJUGE_CPF=CONJUGE_CPF'
      'CONJUGE_DTNASCIMENTO=CONJUGE_DTNASCIMENTO'
      'NUM_CART_TRAB=NUM_CART_TRAB'
      'NOME_EMP=NOME_EMP'
      'ENDERECO_EMP=ENDERECO_EMP'
      'FONE_EMP=FONE_EMP'
      'DTADMISSAO_EMP=DTADMISSAO_EMP'
      'VLR_SALARIO_BRUTO_EMP=VLR_SALARIO_BRUTO_EMP'
      'CARGO_EMP=CARGO_EMP'
      'COD_CONTA_ORCAMENTO=COD_CONTA_ORCAMENTO'
      'COD_ORC_CLI=COD_ORC_CLI'
      'NOME_ORC_CLI=NOME_ORC_CLI'
      'COD_ORC_FORN=COD_ORC_FORN'
      'NOME_ORC_FORN=NOME_ORC_FORN'
      'COD_ORC_TRANSP=COD_ORC_TRANSP'
      'NOME_ORC_TRANSP=NOME_ORC_TRANSP'
      'COD_ORC_VEND=COD_ORC_VEND'
      'NOME_ORC_VEND=NOME_ORC_VEND'
      'COD_VENDEDOR=COD_VENDEDOR'
      'DESC_TIPO_CONSUMIDOR=DESC_TIPO_CONSUMIDOR'
      'DESC_TIPO_CONTRIBUINTE=DESC_TIPO_CONTRIBUINTE'
      'NOME_REGIME=NOME_REGIME'
      'COD_REGIME=COD_REGIME'
      'ID_VENDEDOR_INT=ID_VENDEDOR_INT'
      'NOME_VENDEDOR_INT=NOME_VENDEDOR_INT'
      'CELULAR=CELULAR')
    DataSource = dsPessoa_Consulta
    BCDToCurrency = False
    Left = 888
    Top = 536
  end
end
