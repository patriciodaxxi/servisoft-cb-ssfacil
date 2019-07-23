object DMConsClienteOBS: TDMConsClienteOBS
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 414
  Top = 238
  Height = 233
  Width = 403
  object sdsPessoa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select *'#13#10'from pessoa '#13#10'where CODIGO = :CODIGO'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 44
    Top = 22
    object sdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsPessoaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsPessoaOBS_AVISO: TStringField
      FieldName = 'OBS_AVISO'
      Size = 150
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
    object sdsPessoaCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 10
    end
    object sdsPessoaRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object sdsPessoaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
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
    object sdsPessoaID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object sdsPessoaID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
    object sdsPessoaID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object sdsPessoaPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
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
    object sdsPessoaTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaNOME_ENTREGA: TStringField
      FieldName = 'NOME_ENTREGA'
      Size = 60
    end
    object sdsPessoaEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 250
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
    object sdsPessoaPROTESTAR: TStringField
      FieldName = 'PROTESTAR'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaID_CARTEIRA: TIntegerField
      FieldName = 'ID_CARTEIRA'
    end
    object sdsPessoaCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 10
    end
    object sdsPessoaDDDCELULAR: TIntegerField
      FieldName = 'DDDCELULAR'
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
    object sdsPessoaMOSTRAR_AVISO: TStringField
      FieldName = 'MOSTRAR_AVISO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaID_ROTA: TIntegerField
      FieldName = 'ID_ROTA'
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
  end
  object dspPessoa: TDataSetProvider
    DataSet = sdsPessoa
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dspPessoaGetTableName
    Left = 80
    Top = 23
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspPessoa'
    Left = 115
    Top = 23
    object cdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsPessoaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPessoaOBS_AVISO: TStringField
      FieldName = 'OBS_AVISO'
      Size = 150
    end
    object cdsPessoaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsPessoaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsPessoaCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsPessoaNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object cdsPessoaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsPessoaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsPessoaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsPessoaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsPessoaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsPessoaDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object cdsPessoaTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
    object cdsPessoaDDDFONE2: TIntegerField
      FieldName = 'DDDFONE2'
    end
    object cdsPessoaTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object cdsPessoaDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object cdsPessoaFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsPessoaPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsPessoaINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object cdsPessoaENDERECO_ENT: TStringField
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
    object cdsPessoaCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 10
    end
    object cdsPessoaRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object cdsPessoaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
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
    object cdsPessoaID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object cdsPessoaID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
    object cdsPessoaID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object cdsPessoaPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
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
    object cdsPessoaTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaNOME_ENTREGA: TStringField
      FieldName = 'NOME_ENTREGA'
      Size = 60
    end
    object cdsPessoaEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 250
    end
    object cdsPessoaEMAIL_PGTO: TStringField
      FieldName = 'EMAIL_PGTO'
      Size = 150
    end
    object cdsPessoaEMAIL_NFE2: TStringField
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
      FieldName = 'TP_CLIENTE'
      Size = 1
    end
    object cdsPessoaTP_FORNECEDOR: TStringField
      FieldName = 'TP_FORNECEDOR'
      Size = 1
    end
    object cdsPessoaTP_TRANSPORTADORA: TStringField
      FieldName = 'TP_TRANSPORTADORA'
      Size = 1
    end
    object cdsPessoaTP_VENDEDOR: TStringField
      FieldName = 'TP_VENDEDOR'
      Size = 1
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
    object cdsPessoaPERC_COMISSAO_VEND: TFloatField
      FieldName = 'PERC_COMISSAO_VEND'
    end
    object cdsPessoaNOME_CONTATO: TStringField
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
    object cdsPessoaPROTESTAR: TStringField
      FieldName = 'PROTESTAR'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaID_CARTEIRA: TIntegerField
      FieldName = 'ID_CARTEIRA'
    end
    object cdsPessoaCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 10
    end
    object cdsPessoaDDDCELULAR: TIntegerField
      FieldName = 'DDDCELULAR'
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
    object cdsPessoaMOSTRAR_AVISO: TStringField
      FieldName = 'MOSTRAR_AVISO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaID_ROTA: TIntegerField
      FieldName = 'ID_ROTA'
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
  end
  object dsPessoa: TDataSource
    DataSet = cdsPessoa
    Left = 149
    Top = 25
  end
  object sdsConsulta: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT P.CODIGO, P.obs, P.obs_aviso, P.id_condpgto, P.NOME NOME_' +
      'CLIENTE,'#13#10' COND.NOME NOME_CONDPGTO, P.id_tab_preco, T.NOME NOME_' +
      'TABPRECO,'#13#10' P.vlr_ult_faturamento, P.dtnota, P.dtpedido'#13#10'FROM PE' +
      'SSOA P'#13#10'LEFT JOIN condpgto COND'#13#10'ON P.id_condpgto = COND.ID'#13#10'LEF' +
      'T JOIN tab_preco T'#13#10'ON P.id_tab_preco = T.ID'#13#10'where p.codigo = :' +
      'CODIGO'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 131
    Top = 114
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Left = 168
    Top = 114
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 211
    Top = 114
    object cdsConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsConsultaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsultaOBS_AVISO: TStringField
      FieldName = 'OBS_AVISO'
      Size = 150
    end
    object cdsConsultaID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsConsultaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsConsultaNOME_CONDPGTO: TStringField
      FieldName = 'NOME_CONDPGTO'
      Size = 40
    end
    object cdsConsultaID_TAB_PRECO: TIntegerField
      FieldName = 'ID_TAB_PRECO'
    end
    object cdsConsultaNOME_TABPRECO: TStringField
      FieldName = 'NOME_TABPRECO'
      Size = 70
    end
    object cdsConsultaVLR_ULT_FATURAMENTO: TFloatField
      FieldName = 'VLR_ULT_FATURAMENTO'
    end
    object cdsConsultaDTNOTA: TDateField
      FieldName = 'DTNOTA'
    end
    object cdsConsultaDTPEDIDO: TDateField
      FieldName = 'DTPEDIDO'
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 245
    Top = 114
  end
end
