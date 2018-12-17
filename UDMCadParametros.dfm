object DMCadParametros: TDMCadParametros
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 61
  Top = 3
  Height = 718
  Width = 1191
  object sdsParametros: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PARAMETROS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 120
    Top = 5
    object sdsParametrosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsParametrosENDXMLNFE: TStringField
      FieldName = 'ENDXMLNFE'
      Size = 250
    end
    object sdsParametrosENDPDFNFE: TStringField
      FieldName = 'ENDPDFNFE'
      Size = 250
    end
    object sdsParametrosSERIENORMAL: TStringField
      FieldName = 'SERIENORMAL'
      Size = 3
    end
    object sdsParametrosSERIECONTINGENCIA: TStringField
      FieldName = 'SERIECONTINGENCIA'
      Size = 3
    end
    object sdsParametrosLOCALSERVIDORNFE: TStringField
      FieldName = 'LOCALSERVIDORNFE'
      Size = 100
    end
    object sdsParametrosEMAILRESPONSAVELSISTEMA: TStringField
      FieldName = 'EMAILRESPONSAVELSISTEMA'
      Size = 200
    end
    object sdsParametrosNFEPRODUCAO: TStringField
      FieldName = 'NFEPRODUCAO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosANEXARDANFE: TStringField
      FieldName = 'ANEXARDANFE'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosVERSAONFE: TStringField
      FieldName = 'VERSAONFE'
      Size = 10
    end
    object sdsParametrosVERSAOEMISSAONFE: TStringField
      FieldName = 'VERSAOEMISSAONFE'
      Size = 10
    end
    object sdsParametrosTIPOLOGONFE: TStringField
      FieldName = 'TIPOLOGONFE'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosAPLICARDESCONTONOICMS: TStringField
      FieldName = 'APLICARDESCONTONOICMS'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosAPLICARDESCONTONOIPI: TStringField
      FieldName = 'APLICARDESCONTONOIPI'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosSOMARNOPROD_FRETE: TStringField
      FieldName = 'SOMARNOPROD_FRETE'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosSOMARNOPROD_OUTRASDESP: TStringField
      FieldName = 'SOMARNOPROD_OUTRASDESP'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosSOMARNOPROD_SEGURO: TStringField
      FieldName = 'SOMARNOPROD_SEGURO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosAJUSTELOGONFEAUTOMATICO: TStringField
      FieldName = 'AJUSTELOGONFEAUTOMATICO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosINFNUMNOTAMANUAL: TStringField
      FieldName = 'INFNUMNOTAMANUAL'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosOPCAO_DTENTREGAPEDIDO: TStringField
      FieldName = 'OPCAO_DTENTREGAPEDIDO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosOBS_SIMPLES: TStringField
      FieldName = 'OBS_SIMPLES'
      Size = 250
    end
    object sdsParametrosIMP_OBSSIMPLES: TStringField
      FieldName = 'IMP_OBSSIMPLES'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosIMP_REFERENCIANANOTA: TStringField
      FieldName = 'IMP_REFERENCIANANOTA'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosENVIARNOTABENEF_NANFE: TStringField
      FieldName = 'ENVIARNOTABENEF_NANFE'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosESPECIE_NOTA: TStringField
      FieldName = 'ESPECIE_NOTA'
    end
    object sdsParametrosMARCA_NOTA: TStringField
      FieldName = 'MARCA_NOTA'
    end
    object sdsParametrosVERSAO_BANCO: TIntegerField
      FieldName = 'VERSAO_BANCO'
    end
    object sdsParametrosUSA_QTDPACOTE_NTE: TStringField
      FieldName = 'USA_QTDPACOTE_NTE'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosATUALIZAR_PRECO: TStringField
      FieldName = 'ATUALIZAR_PRECO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_VENDEDOR: TStringField
      FieldName = 'USA_VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_CONSUMO: TStringField
      FieldName = 'USA_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosIMP_CODPRODCLI_DANFE: TStringField
      FieldName = 'IMP_CODPRODCLI_DANFE'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_DESCRICAODANOTA: TStringField
      FieldName = 'USA_DESCRICAODANOTA'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosID_OPERACAO_BENEF_RET: TIntegerField
      FieldName = 'ID_OPERACAO_BENEF_RET'
    end
    object sdsParametrosID_OPERACAO_MAOOBRA: TIntegerField
      FieldName = 'ID_OPERACAO_MAOOBRA'
    end
    object sdsParametrosCONFECCAO: TStringField
      FieldName = 'CONFECCAO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosID_OPERACAO_TRIANGULAR: TIntegerField
      FieldName = 'ID_OPERACAO_TRIANGULAR'
    end
    object sdsParametrosCADASTRAR_REF_DUP: TStringField
      FieldName = 'CADASTRAR_REF_DUP'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosMOSTRAR_NO_CONSUMO: TStringField
      FieldName = 'MOSTRAR_NO_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_COD_BARRAS: TStringField
      FieldName = 'USA_COD_BARRAS'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_ID_PRODUTO: TStringField
      FieldName = 'USA_ID_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_AGENDA_POR_FUNC: TStringField
      FieldName = 'USA_AGENDA_POR_FUNC'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosEMPRESA_VEICULO: TStringField
      FieldName = 'EMPRESA_VEICULO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosID_CONTA_PADRAO: TIntegerField
      FieldName = 'ID_CONTA_PADRAO'
    end
    object sdsParametrosID_TIPO_COBRANCA_PADRAO: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA_PADRAO'
    end
    object sdsParametrosPERMITE_QTDMAIOR_PEDIDO: TStringField
      FieldName = 'PERMITE_QTDMAIOR_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_TAB_PRECO: TStringField
      FieldName = 'USA_TAB_PRECO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosENDXML_NOTAENTRADA: TStringField
      FieldName = 'ENDXML_NOTAENTRADA'
      Size = 250
    end
    object sdsParametrosPERMITE_MESMA_OC: TStringField
      FieldName = 'PERMITE_MESMA_OC'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosEMAIL_CONTADOR: TStringField
      FieldName = 'EMAIL_CONTADOR'
      Size = 250
    end
    object sdsParametrosID_BANCO_REMESSA: TIntegerField
      FieldName = 'ID_BANCO_REMESSA'
    end
    object sdsParametrosENDXMLNFSE: TStringField
      FieldName = 'ENDXMLNFSE'
      Size = 250
    end
    object sdsParametrosENDPDFNFSE: TStringField
      FieldName = 'ENDPDFNFSE'
      Size = 250
    end
    object sdsParametrosUSA_SERVICO: TStringField
      FieldName = 'USA_SERVICO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosID_CFOP_REQ: TIntegerField
      FieldName = 'ID_CFOP_REQ'
    end
    object sdsParametrosID_CFOP_REQ2: TIntegerField
      FieldName = 'ID_CFOP_REQ2'
    end
    object sdsParametrosUSA_PROJETO_OC: TStringField
      FieldName = 'USA_PROJETO_OC'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosMOSTRAR_CONSULTA: TStringField
      FieldName = 'MOSTRAR_CONSULTA'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosID_CLIENTE_CONSUMIDOR: TIntegerField
      FieldName = 'ID_CLIENTE_CONSUMIDOR'
    end
    object sdsParametrosIMPRESSORA_FISCAL: TStringField
      FieldName = 'IMPRESSORA_FISCAL'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosQUITAR_AVISTA_AUT: TStringField
      FieldName = 'QUITAR_AVISTA_AUT'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosIMPRESSAO_MATRICIAL: TStringField
      FieldName = 'IMPRESSAO_MATRICIAL'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosEMPRESA_RH: TStringField
      FieldName = 'EMPRESA_RH'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosIMPRESSORA_CAMINHO: TStringField
      FieldName = 'IMPRESSORA_CAMINHO'
      Size = 100
    end
    object sdsParametrosGRAVAR_NA_REF_CODPRODFORN: TStringField
      FieldName = 'GRAVAR_NA_REF_CODPRODFORN'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosGRAVAR_PROD_MAT_RECXML: TStringField
      FieldName = 'GRAVAR_PROD_MAT_RECXML'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosNOTA_ENTRADA_MOSTRAR_PROD: TStringField
      FieldName = 'NOTA_ENTRADA_MOSTRAR_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosATUALIZAR_PRECO_DOC: TStringField
      FieldName = 'ATUALIZAR_PRECO_DOC'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosBAIXAR_REQ_AUTOMATICO: TStringField
      FieldName = 'BAIXAR_REQ_AUTOMATICO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosDESTACAR_IMPOSTO_NOTA: TStringField
      FieldName = 'DESTACAR_IMPOSTO_NOTA'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosCONTROLAR_PEDIDO_LIBERACAO: TStringField
      FieldName = 'CONTROLAR_PEDIDO_LIBERACAO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_GRADE: TStringField
      FieldName = 'USA_GRADE'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosTIPO_GRADE_REG: TStringField
      FieldName = 'TIPO_GRADE_REG'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosINFORMA_MAT_PEDIDO: TStringField
      FieldName = 'INFORMA_MAT_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosMOSTRAR_NOME_ETIQUETA: TStringField
      FieldName = 'MOSTRAR_NOME_ETIQUETA'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosMOSTRAR_MATERIAL_PED: TStringField
      FieldName = 'MOSTRAR_MATERIAL_PED'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosMOSTRAR_CFOP_PEDIDO: TStringField
      FieldName = 'MOSTRAR_CFOP_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosDIGITACAO_PED_ITENS: TStringField
      FieldName = 'DIGITACAO_PED_ITENS'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosID_CLIENTE_ESTOQUE: TIntegerField
      FieldName = 'ID_CLIENTE_ESTOQUE'
    end
    object sdsParametrosUSA_LOTE: TStringField
      FieldName = 'USA_LOTE'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_POSICAO_CONSUMO: TStringField
      FieldName = 'USA_POSICAO_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosGRAVAR_INF_ADICIONAIS_NTE: TStringField
      FieldName = 'GRAVAR_INF_ADICIONAIS_NTE'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_AMOSTRA_GRATIS: TStringField
      FieldName = 'USA_AMOSTRA_GRATIS'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosCALCULAR_PESO_CONSUMO: TStringField
      FieldName = 'CALCULAR_PESO_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosTIPO_REL_PEDIDO: TStringField
      FieldName = 'TIPO_REL_PEDIDO'
      FixedChar = True
      Size = 2
    end
    object sdsParametrosUSA_CARIMBO: TStringField
      FieldName = 'USA_CARIMBO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosMOSTRAR_MAT_LOTE: TStringField
      FieldName = 'MOSTRAR_MAT_LOTE'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosID_CONTA_FECHAMENTO: TIntegerField
      FieldName = 'ID_CONTA_FECHAMENTO'
    end
    object sdsParametrosEMPRESA_INJETADO: TStringField
      FieldName = 'EMPRESA_INJETADO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosEMPRESA_TRANSPASS: TStringField
      FieldName = 'EMPRESA_TRANSPASS'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_TAMANHO_AGRUPADO_NFE: TStringField
      FieldName = 'USA_TAMANHO_AGRUPADO_NFE'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosEMPRESA_CARTONAGEM: TStringField
      FieldName = 'EMPRESA_CARTONAGEM'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_DTPRODUCAO: TStringField
      FieldName = 'USA_DTPRODUCAO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosEMPRESA_NAVALHA: TStringField
      FieldName = 'EMPRESA_NAVALHA'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosIMP_PRECO_PED: TStringField
      FieldName = 'IMP_PRECO_PED'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_NUM_SERIE_PROD: TStringField
      FieldName = 'USA_NUM_SERIE_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosPERC_IPI_PADRAO: TFloatField
      FieldName = 'PERC_IPI_PADRAO'
    end
    object sdsParametrosID_NCM_PADRAO: TIntegerField
      FieldName = 'ID_NCM_PADRAO'
    end
    object sdsParametrosUSA_CONTA_ORCAMENTO: TStringField
      FieldName = 'USA_CONTA_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosID_CONTA_ORC_SERVICO: TIntegerField
      FieldName = 'ID_CONTA_ORC_SERVICO'
    end
    object sdsParametrosID_CONTA_ORC_COMISSAO: TIntegerField
      FieldName = 'ID_CONTA_ORC_COMISSAO'
    end
    object sdsParametrosTIPO_LEI_TRANSPARENCIA: TStringField
      FieldName = 'TIPO_LEI_TRANSPARENCIA'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_PRECO_FORN: TStringField
      FieldName = 'USA_PRECO_FORN'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosEND_IMPRESSORA_DOS: TStringField
      FieldName = 'END_IMPRESSORA_DOS'
      Size = 200
    end
    object sdsParametrosIMP_PESO_PED: TStringField
      FieldName = 'IMP_PESO_PED'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_EDI: TStringField
      FieldName = 'USA_EDI'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosID_OPERACAO_VENDA: TIntegerField
      FieldName = 'ID_OPERACAO_VENDA'
    end
    object sdsParametrosUSA_FAIXA_SIMPLES: TStringField
      FieldName = 'USA_FAIXA_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosESCOLA: TStringField
      FieldName = 'ESCOLA'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosALTURA_ETIQ_ROT: TIntegerField
      FieldName = 'ALTURA_ETIQ_ROT'
    end
    object sdsParametrosEMPRESA_SUCATA: TStringField
      FieldName = 'EMPRESA_SUCATA'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosBAIXA_ESTOQUE_MP: TStringField
      FieldName = 'BAIXA_ESTOQUE_MP'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosVERSAO_LEIAUTE_SPED: TIntegerField
      FieldName = 'VERSAO_LEIAUTE_SPED'
    end
    object sdsParametrosIMP_MESANO_REF_NOITEM_NFSE: TStringField
      FieldName = 'IMP_MESANO_REF_NOITEM_NFSE'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_LIMITE_CREDITO: TStringField
      FieldName = 'USA_LIMITE_CREDITO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosSENHA_CREDITO: TStringField
      FieldName = 'SENHA_CREDITO'
      Size = 15
    end
    object sdsParametrosUSA_SPED: TStringField
      FieldName = 'USA_SPED'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosTIPO_COMISSAO_NFSE: TStringField
      FieldName = 'TIPO_COMISSAO_NFSE'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosTIPO_COMISSAO_PROD: TStringField
      FieldName = 'TIPO_COMISSAO_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosOBS_EXPORTACAO_EXCEL: TMemoField
      FieldName = 'OBS_EXPORTACAO_EXCEL'
      BlobType = ftMemo
      Size = 1
    end
    object sdsParametrosEND_SALVAR_EXCEL_EXP: TStringField
      FieldName = 'END_SALVAR_EXCEL_EXP'
      Size = 250
    end
    object sdsParametrosUSA_PEDIDO_CONTROLE_MOBRA: TStringField
      FieldName = 'USA_PEDIDO_CONTROLE_MOBRA'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosIMP_NFE_REF_PROD: TStringField
      FieldName = 'IMP_NFE_REF_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosID_OBS_LEI_SIMPLES: TIntegerField
      FieldName = 'ID_OBS_LEI_SIMPLES'
    end
    object sdsParametrosPERC_JUROS_PADRAO: TFloatField
      FieldName = 'PERC_JUROS_PADRAO'
    end
    object sdsParametrosUSA_FCI: TStringField
      FieldName = 'USA_FCI'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosARREDONDAR_5: TStringField
      FieldName = 'ARREDONDAR_5'
      Size = 1
    end
    object sdsParametrosLEI_TRANSPARENCIA_IMP_ITEM: TStringField
      FieldName = 'LEI_TRANSPARENCIA_IMP_ITEM'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosLEI_TRANSPARENCIA_TEXTO_ITEM: TStringField
      FieldName = 'LEI_TRANSPARENCIA_TEXTO_ITEM'
      Size = 150
    end
    object sdsParametrosLEI_TRANSPARENCIA_PERC_ADIC: TStringField
      FieldName = 'LEI_TRANSPARENCIA_PERC_ADIC'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosLEI_TRANSPARENCIA_SERVICO: TStringField
      FieldName = 'LEI_TRANSPARENCIA_SERVICO'
      FixedChar = True
      Size = 2
    end
    object sdsParametrosUSA_VALE: TStringField
      FieldName = 'USA_VALE'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosSENHA_EXCLUIR_VALE: TStringField
      FieldName = 'SENHA_EXCLUIR_VALE'
      Size = 15
    end
    object sdsParametrosIMP_MEIA_FOLHA_PED: TStringField
      FieldName = 'IMP_MEIA_FOLHA_PED'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_PRODUTO_CLIENTE: TStringField
      FieldName = 'USA_PRODUTO_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosSOMAR_PIS_COFINS_IMP: TStringField
      FieldName = 'SOMAR_PIS_COFINS_IMP'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_CUPOM_FISCAL: TStringField
      FieldName = 'USA_CUPOM_FISCAL'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosALERTA_VALE: TStringField
      FieldName = 'ALERTA_VALE'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosPRODUTO_PRECO_POR_FINALIDADE: TStringField
      FieldName = 'PRODUTO_PRECO_POR_FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosSENHA_PEDIDO: TStringField
      FieldName = 'SENHA_PEDIDO'
      Size = 10
    end
    object sdsParametrosALERTA_VLR_ATRASO: TStringField
      FieldName = 'ALERTA_VLR_ATRASO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosID_CONTA_ORC_JUROS_REC: TIntegerField
      FieldName = 'ID_CONTA_ORC_JUROS_REC'
    end
    object sdsParametrosID_CONTA_ORC_TAXA_BANCARIA_REC: TIntegerField
      FieldName = 'ID_CONTA_ORC_TAXA_BANCARIA_REC'
    end
    object sdsParametrosID_CONTA_ORC_DESPESA_REC: TIntegerField
      FieldName = 'ID_CONTA_ORC_DESPESA_REC'
    end
    object sdsParametrosID_CONTA_ORC_JUROS_PAG: TIntegerField
      FieldName = 'ID_CONTA_ORC_JUROS_PAG'
    end
    object sdsParametrosID_CONTA_ORC_DESPESA_PAG: TIntegerField
      FieldName = 'ID_CONTA_ORC_DESPESA_PAG'
    end
    object sdsParametrosTIPO_REL_OC: TStringField
      FieldName = 'TIPO_REL_OC'
      FixedChar = True
      Size = 2
    end
    object sdsParametrosUSA_PERC_MARGEM_RECEPCAO: TStringField
      FieldName = 'USA_PERC_MARGEM_RECEPCAO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_BOLETO_ACBR: TStringField
      FieldName = 'USA_BOLETO_ACBR'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_PREVISAO: TStringField
      FieldName = 'USA_PREVISAO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_ENVIO_EMAIL_CATEGORIA: TStringField
      FieldName = 'USA_ENVIO_EMAIL_CATEGORIA'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_DANFE_FLEXDOCS: TStringField
      FieldName = 'USA_DANFE_FLEXDOCS'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_DESONERACAO: TStringField
      FieldName = 'USA_DESONERACAO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosTIPO_REG_PRODUTO_PADRAO: TStringField
      FieldName = 'TIPO_REG_PRODUTO_PADRAO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosTIPO_CONSULTA_PRODUTO_PADRAO: TStringField
      FieldName = 'TIPO_CONSULTA_PRODUTO_PADRAO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosABRIR_NFECONFIG: TStringField
      FieldName = 'ABRIR_NFECONFIG'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosCADASTRA_ORGAO_PUBLICO: TStringField
      FieldName = 'CADASTRA_ORGAO_PUBLICO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosCONTROLAR_NOTIFICACAO: TStringField
      FieldName = 'CONTROLAR_NOTIFICACAO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_RECIBO_NFSE: TStringField
      FieldName = 'USA_RECIBO_NFSE'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosINFORMAR_COR_MATERIAL: TStringField
      FieldName = 'INFORMAR_COR_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosNFSE_RETEN_PIS: TStringField
      FieldName = 'NFSE_RETEN_PIS'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosNUMERO_SERIE_INTERNO: TStringField
      FieldName = 'NUMERO_SERIE_INTERNO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_PEDIDO_FUT: TStringField
      FieldName = 'USA_PEDIDO_FUT'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosID_OPERACAO_PED_FUT: TIntegerField
      FieldName = 'ID_OPERACAO_PED_FUT'
    end
    object sdsParametrosUSA_COPIA_OS_NOTA: TStringField
      FieldName = 'USA_COPIA_OS_NOTA'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosEMPRESA_CONTABIL: TStringField
      FieldName = 'EMPRESA_CONTABIL'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosID_COND_PGTO_NFSE: TIntegerField
      FieldName = 'ID_COND_PGTO_NFSE'
    end
    object sdsParametrosIMP_TIPO_TRIBUTOS_ITENS: TStringField
      FieldName = 'IMP_TIPO_TRIBUTOS_ITENS'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosIMP_TIPO_TRIBUTOS: TStringField
      FieldName = 'IMP_TIPO_TRIBUTOS'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosIMP_PERC_TRIB_DADOS_ADIC: TStringField
      FieldName = 'IMP_PERC_TRIB_DADOS_ADIC'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosIMP_PERC_TRIB_ITENS: TStringField
      FieldName = 'IMP_PERC_TRIB_ITENS'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosIMP_TIPO_TRIBUTOS_SERVICO: TStringField
      FieldName = 'IMP_TIPO_TRIBUTOS_SERVICO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosIMP_PERC_TRIB_SERVICO: TStringField
      FieldName = 'IMP_PERC_TRIB_SERVICO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosIMP_NOME_POSICAO: TStringField
      FieldName = 'IMP_NOME_POSICAO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosPROCURAR_POR_REF_XML: TStringField
      FieldName = 'PROCURAR_POR_REF_XML'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosQTD_DIG_COD_CLI_CTB: TIntegerField
      FieldName = 'QTD_DIG_COD_CLI_CTB'
    end
    object sdsParametrosEMPRESA_AMBIENTES: TStringField
      FieldName = 'EMPRESA_AMBIENTES'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosINFORMAR_COR_PROD: TStringField
      FieldName = 'INFORMAR_COR_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosINV_TRAZER_QTD_ZERADA: TStringField
      FieldName = 'INV_TRAZER_QTD_ZERADA'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosMOSTRAR_MARCAR_PROD: TStringField
      FieldName = 'MOSTRAR_MARCAR_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosMOSTRAR_LINHA_PROD: TStringField
      FieldName = 'MOSTRAR_LINHA_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosMOSTRAR_EMBALAGEM: TStringField
      FieldName = 'MOSTRAR_EMBALAGEM'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosCONTROLAR_FAT_SEPARADO: TStringField
      FieldName = 'CONTROLAR_FAT_SEPARADO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosCONTROLAR_DUP_PEDIDO: TStringField
      FieldName = 'CONTROLAR_DUP_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosID_RESP_SUPORTE: TIntegerField
      FieldName = 'ID_RESP_SUPORTE'
    end
    object sdsParametrosCONTROLAR_ISSQN_RET: TStringField
      FieldName = 'CONTROLAR_ISSQN_RET'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosOBS_SIMPLES2: TStringField
      FieldName = 'OBS_SIMPLES2'
      Size = 250
    end
    object sdsParametrosPERC_COMISSAO_PAGA_NOTA: TFloatField
      FieldName = 'PERC_COMISSAO_PAGA_NOTA'
    end
    object sdsParametrosUSA_SETOR_CONSUMO: TStringField
      FieldName = 'USA_SETOR_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosMOSTRAR_ATELIER_PROD: TStringField
      FieldName = 'MOSTRAR_ATELIER_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosGERAR_TALAO_AUXILIAR: TStringField
      FieldName = 'GERAR_TALAO_AUXILIAR'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosTIPO_ESTOQUE: TStringField
      FieldName = 'TIPO_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_COD_BARRAS_PROPRIO: TStringField
      FieldName = 'USA_COD_BARRAS_PROPRIO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_ETIQUETA_IND: TStringField
      FieldName = 'USA_ETIQUETA_IND'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosCALC_VOLUME_EMB: TStringField
      FieldName = 'CALC_VOLUME_EMB'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosGERAR_ROTULO_EMB: TStringField
      FieldName = 'GERAR_ROTULO_EMB'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_NFCE: TStringField
      FieldName = 'USA_NFCE'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosENDXMLNFCE: TStringField
      FieldName = 'ENDXMLNFCE'
      Size = 250
    end
    object sdsParametrosENDPDFNFCE: TStringField
      FieldName = 'ENDPDFNFCE'
      Size = 250
    end
    object sdsParametrosUSA_ENVIO_NOVO_NFE: TStringField
      FieldName = 'USA_ENVIO_NOVO_NFE'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosOPCAO_ESCOLHER_PRECO_COR: TStringField
      FieldName = 'OPCAO_ESCOLHER_PRECO_COR'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosCONTROLAR_ESTOQUE_SAIDA: TStringField
      FieldName = 'CONTROLAR_ESTOQUE_SAIDA'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosSENHA_LIBERA_ESTOQUE: TStringField
      FieldName = 'SENHA_LIBERA_ESTOQUE'
      Size = 10
    end
    object sdsParametrosOPCAO_REL_PED_AGRUPADO: TStringField
      FieldName = 'OPCAO_REL_PED_AGRUPADO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosGERAR_NUM_AUT_CONTRATO: TStringField
      FieldName = 'GERAR_NUM_AUT_CONTRATO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_ANO_CONTRATO: TStringField
      FieldName = 'USA_ANO_CONTRATO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_COPIA_PEDIDO_ITEM: TStringField
      FieldName = 'USA_COPIA_PEDIDO_ITEM'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_COPIA_OS_NFSE: TStringField
      FieldName = 'USA_COPIA_OS_NFSE'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_COPIA_PEDIDO: TStringField
      FieldName = 'USA_COPIA_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosSOMAR_SISCOMEX_IMP: TStringField
      FieldName = 'SOMAR_SISCOMEX_IMP'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosSOMAR_IPI_IMP: TStringField
      FieldName = 'SOMAR_IPI_IMP'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosSOMAR_II_IMP: TStringField
      FieldName = 'SOMAR_II_IMP'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosSOMAR_SEGURO_IMP: TStringField
      FieldName = 'SOMAR_SEGURO_IMP'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosSOMAR_ADUANEIRA_IMP: TStringField
      FieldName = 'SOMAR_ADUANEIRA_IMP'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosCONTRATO_CONSUMO: TStringField
      FieldName = 'CONTRATO_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_SERVICO_MOTOR: TStringField
      FieldName = 'USA_SERVICO_MOTOR'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosCONTROLAR_MENSAL_CSRF: TStringField
      FieldName = 'CONTROLAR_MENSAL_CSRF'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosGRAVAR_CONSUMO_NOTA: TStringField
      FieldName = 'GRAVAR_CONSUMO_NOTA'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosID_ATELIER_ADEFINIR: TIntegerField
      FieldName = 'ID_ATELIER_ADEFINIR'
    end
    object sdsParametrosINFORMAR_COR_MATERIAL_RZ: TStringField
      FieldName = 'INFORMAR_COR_MATERIAL_RZ'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosGRAVAR_FINANCEIRO_ATELIER: TStringField
      FieldName = 'GRAVAR_FINANCEIRO_ATELIER'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosID_CONTA_ORC_ATELIER: TIntegerField
      FieldName = 'ID_CONTA_ORC_ATELIER'
    end
    object sdsParametrosUSA_ICMSOPERACAO_CST51: TStringField
      FieldName = 'USA_ICMSOPERACAO_CST51'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_PRODUTO_FORNECEDOR: TStringField
      FieldName = 'USA_PRODUTO_FORNECEDOR'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_PRODUTO_LOCALIZACAO: TStringField
      FieldName = 'USA_PRODUTO_LOCALIZACAO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosMOSTRAR_TOTAL_ACUMULADO_DUP: TStringField
      FieldName = 'MOSTRAR_TOTAL_ACUMULADO_DUP'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosID_CONTA_ORC_DESCONTADA: TIntegerField
      FieldName = 'ID_CONTA_ORC_DESCONTADA'
    end
    object sdsParametrosREPETIR_ULTIMO_ITEM_PED: TStringField
      FieldName = 'REPETIR_ULTIMO_ITEM_PED'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUNIDADE_PECA: TStringField
      FieldName = 'UNIDADE_PECA'
      Size = 6
    end
    object sdsParametrosDECISAO: TStringField
      FieldName = 'DECISAO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosEMPRESA_LIVRARIA: TStringField
      FieldName = 'EMPRESA_LIVRARIA'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_LOCAL_ESTOQUE: TStringField
      FieldName = 'USA_LOCAL_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosFUSOHORARIO: TStringField
      FieldName = 'FUSOHORARIO'
      Size = 6
    end
    object sdsParametrosFUSOHORARIO_VERAO: TStringField
      FieldName = 'FUSOHORARIO_VERAO'
      Size = 6
    end
    object sdsParametrosUSA_APROVACAO_PED: TStringField
      FieldName = 'USA_APROVACAO_PED'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_ROTULO2: TStringField
      FieldName = 'USA_ROTULO2'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_LOTE_CONTROLE: TStringField
      FieldName = 'USA_LOTE_CONTROLE'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_PERC_ORGAO_PUBLICO: TStringField
      FieldName = 'USA_PERC_ORGAO_PUBLICO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_PERC_ORGAO_PUBLICO_IMP: TStringField
      FieldName = 'USA_PERC_ORGAO_PUBLICO_IMP'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_APROVACAO_OC_FORN: TStringField
      FieldName = 'USA_APROVACAO_OC_FORN'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosID_LOCAL_ESTOQUE_NTE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE_NTE'
    end
    object sdsParametrosUSA_ADIANTAMENTO_PEDIDO: TStringField
      FieldName = 'USA_ADIANTAMENTO_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosID_CONTA_PADRAO_ADI: TIntegerField
      FieldName = 'ID_CONTA_PADRAO_ADI'
    end
    object sdsParametrosID_TIPO_COBRANCA_PADRAO_ADI: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA_PADRAO_ADI'
    end
    object sdsParametrosSOMAR_BASE_ICMS_SISCOMEX: TStringField
      FieldName = 'SOMAR_BASE_ICMS_SISCOMEX'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosCONTROLAR_SERIE_OPERACAO: TStringField
      FieldName = 'CONTROLAR_SERIE_OPERACAO'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosMOSTRAR_END_ENTREGA_DADOS_ADI: TStringField
      FieldName = 'MOSTRAR_END_ENTREGA_DADOS_ADI'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosMSG_PADRAO_NOTA: TMemoField
      FieldName = 'MSG_PADRAO_NOTA'
      BlobType = ftMemo
      Size = 1
    end
    object sdsParametrosALERTA_FRETE_DEST: TStringField
      FieldName = 'ALERTA_FRETE_DEST'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosUSA_OBS_PEDIDO_NOTA: TStringField
      FieldName = 'USA_OBS_PEDIDO_NOTA'
      FixedChar = True
      Size = 1
    end
    object sdsParametrosID_LOCAL_ESTOQUE_PROD: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE_PROD'
    end
  end
  object dspParametros: TDataSetProvider
    DataSet = sdsParametros
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspParametrosUpdateError
    Left = 192
    Top = 5
  end
  object cdsParametros: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspParametros'
    Left = 256
    Top = 5
    object cdsParametrosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object cdsParametrosVERSAO_BANCO: TIntegerField
      FieldName = 'VERSAO_BANCO'
    end
    object cdsParametrosUSA_QTDPACOTE_NTE: TStringField
      FieldName = 'USA_QTDPACOTE_NTE'
      FixedChar = True
      Size = 1
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
    object cdsParametrosIMP_CODPRODCLI_DANFE: TStringField
      FieldName = 'IMP_CODPRODCLI_DANFE'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_DESCRICAODANOTA: TStringField
      FieldName = 'USA_DESCRICAODANOTA'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosID_OPERACAO_BENEF_RET: TIntegerField
      FieldName = 'ID_OPERACAO_BENEF_RET'
    end
    object cdsParametrosID_OPERACAO_MAOOBRA: TIntegerField
      FieldName = 'ID_OPERACAO_MAOOBRA'
    end
    object cdsParametrosCONFECCAO: TStringField
      FieldName = 'CONFECCAO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosID_OPERACAO_TRIANGULAR: TIntegerField
      FieldName = 'ID_OPERACAO_TRIANGULAR'
    end
    object cdsParametrosCADASTRAR_REF_DUP: TStringField
      FieldName = 'CADASTRAR_REF_DUP'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosMOSTRAR_NO_CONSUMO: TStringField
      FieldName = 'MOSTRAR_NO_CONSUMO'
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
    object cdsParametrosUSA_AGENDA_POR_FUNC: TStringField
      FieldName = 'USA_AGENDA_POR_FUNC'
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
    object cdsParametrosUSA_TAB_PRECO: TStringField
      FieldName = 'USA_TAB_PRECO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosENDXML_NOTAENTRADA: TStringField
      FieldName = 'ENDXML_NOTAENTRADA'
      Size = 250
    end
    object cdsParametrosPERMITE_MESMA_OC: TStringField
      FieldName = 'PERMITE_MESMA_OC'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosEMAIL_CONTADOR: TStringField
      FieldName = 'EMAIL_CONTADOR'
      Size = 250
    end
    object cdsParametrosID_BANCO_REMESSA: TIntegerField
      FieldName = 'ID_BANCO_REMESSA'
    end
    object cdsParametrosENDXMLNFSE: TStringField
      FieldName = 'ENDXMLNFSE'
      Size = 250
    end
    object cdsParametrosENDPDFNFSE: TStringField
      FieldName = 'ENDPDFNFSE'
      Size = 250
    end
    object cdsParametrosUSA_SERVICO: TStringField
      FieldName = 'USA_SERVICO'
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
    object cdsParametrosMOSTRAR_CONSULTA: TStringField
      FieldName = 'MOSTRAR_CONSULTA'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosID_CLIENTE_CONSUMIDOR: TIntegerField
      FieldName = 'ID_CLIENTE_CONSUMIDOR'
    end
    object cdsParametrosIMPRESSORA_FISCAL: TStringField
      FieldName = 'IMPRESSORA_FISCAL'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosQUITAR_AVISTA_AUT: TStringField
      FieldName = 'QUITAR_AVISTA_AUT'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosIMPRESSAO_MATRICIAL: TStringField
      FieldName = 'IMPRESSAO_MATRICIAL'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosEMPRESA_RH: TStringField
      FieldName = 'EMPRESA_RH'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosIMPRESSORA_CAMINHO: TStringField
      FieldName = 'IMPRESSORA_CAMINHO'
      Size = 100
    end
    object cdsParametrosGRAVAR_NA_REF_CODPRODFORN: TStringField
      FieldName = 'GRAVAR_NA_REF_CODPRODFORN'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosGRAVAR_PROD_MAT_RECXML: TStringField
      FieldName = 'GRAVAR_PROD_MAT_RECXML'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosNOTA_ENTRADA_MOSTRAR_PROD: TStringField
      FieldName = 'NOTA_ENTRADA_MOSTRAR_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosATUALIZAR_PRECO_DOC: TStringField
      FieldName = 'ATUALIZAR_PRECO_DOC'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosBAIXAR_REQ_AUTOMATICO: TStringField
      FieldName = 'BAIXAR_REQ_AUTOMATICO'
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
    object cdsParametrosUSA_POSICAO_CONSUMO: TStringField
      FieldName = 'USA_POSICAO_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosGRAVAR_INF_ADICIONAIS_NTE: TStringField
      FieldName = 'GRAVAR_INF_ADICIONAIS_NTE'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_AMOSTRA_GRATIS: TStringField
      FieldName = 'USA_AMOSTRA_GRATIS'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosCALCULAR_PESO_CONSUMO: TStringField
      FieldName = 'CALCULAR_PESO_CONSUMO'
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
    object cdsParametrosMOSTRAR_MAT_LOTE: TStringField
      FieldName = 'MOSTRAR_MAT_LOTE'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosID_CONTA_FECHAMENTO: TIntegerField
      FieldName = 'ID_CONTA_FECHAMENTO'
    end
    object cdsParametrosEMPRESA_INJETADO: TStringField
      FieldName = 'EMPRESA_INJETADO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosEMPRESA_TRANSPASS: TStringField
      FieldName = 'EMPRESA_TRANSPASS'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_TAMANHO_AGRUPADO_NFE: TStringField
      FieldName = 'USA_TAMANHO_AGRUPADO_NFE'
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
    object cdsParametrosUSA_NUM_SERIE_PROD: TStringField
      FieldName = 'USA_NUM_SERIE_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosPERC_IPI_PADRAO: TFloatField
      FieldName = 'PERC_IPI_PADRAO'
    end
    object cdsParametrosID_NCM_PADRAO: TIntegerField
      FieldName = 'ID_NCM_PADRAO'
    end
    object cdsParametrosUSA_CONTA_ORCAMENTO: TStringField
      FieldName = 'USA_CONTA_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosID_CONTA_ORC_SERVICO: TIntegerField
      FieldName = 'ID_CONTA_ORC_SERVICO'
    end
    object cdsParametrosID_CONTA_ORC_COMISSAO: TIntegerField
      FieldName = 'ID_CONTA_ORC_COMISSAO'
    end
    object cdsParametrosTIPO_LEI_TRANSPARENCIA: TStringField
      FieldName = 'TIPO_LEI_TRANSPARENCIA'
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
    object cdsParametrosUSA_EDI: TStringField
      FieldName = 'USA_EDI'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosID_OPERACAO_VENDA: TIntegerField
      FieldName = 'ID_OPERACAO_VENDA'
    end
    object cdsParametrosUSA_FAIXA_SIMPLES: TStringField
      FieldName = 'USA_FAIXA_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosESCOLA: TStringField
      FieldName = 'ESCOLA'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosALTURA_ETIQ_ROT: TIntegerField
      FieldName = 'ALTURA_ETIQ_ROT'
    end
    object cdsParametrosEMPRESA_SUCATA: TStringField
      FieldName = 'EMPRESA_SUCATA'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosBAIXA_ESTOQUE_MP: TStringField
      FieldName = 'BAIXA_ESTOQUE_MP'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosVERSAO_LEIAUTE_SPED: TIntegerField
      FieldName = 'VERSAO_LEIAUTE_SPED'
    end
    object cdsParametrosIMP_MESANO_REF_NOITEM_NFSE: TStringField
      FieldName = 'IMP_MESANO_REF_NOITEM_NFSE'
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
    object cdsParametrosUSA_SPED: TStringField
      FieldName = 'USA_SPED'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosTIPO_COMISSAO_NFSE: TStringField
      FieldName = 'TIPO_COMISSAO_NFSE'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosTIPO_COMISSAO_PROD: TStringField
      FieldName = 'TIPO_COMISSAO_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosOBS_EXPORTACAO_EXCEL: TMemoField
      FieldName = 'OBS_EXPORTACAO_EXCEL'
      BlobType = ftMemo
      Size = 1
    end
    object cdsParametrosEND_SALVAR_EXCEL_EXP: TStringField
      FieldName = 'END_SALVAR_EXCEL_EXP'
      Size = 250
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
    object cdsParametrosID_OBS_LEI_SIMPLES: TIntegerField
      FieldName = 'ID_OBS_LEI_SIMPLES'
    end
    object cdsParametrosPERC_JUROS_PADRAO: TFloatField
      FieldName = 'PERC_JUROS_PADRAO'
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
    object cdsParametrosLEI_TRANSPARENCIA_SERVICO: TStringField
      FieldName = 'LEI_TRANSPARENCIA_SERVICO'
      FixedChar = True
      Size = 2
    end
    object cdsParametrosUSA_VALE: TStringField
      FieldName = 'USA_VALE'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosSENHA_EXCLUIR_VALE: TStringField
      FieldName = 'SENHA_EXCLUIR_VALE'
      Size = 15
    end
    object cdsParametrosIMP_MEIA_FOLHA_PED: TStringField
      FieldName = 'IMP_MEIA_FOLHA_PED'
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
    object cdsParametrosUSA_CUPOM_FISCAL: TStringField
      FieldName = 'USA_CUPOM_FISCAL'
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
    object cdsParametrosSENHA_PEDIDO: TStringField
      FieldName = 'SENHA_PEDIDO'
      Size = 10
    end
    object cdsParametrosALERTA_VLR_ATRASO: TStringField
      FieldName = 'ALERTA_VLR_ATRASO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosID_CONTA_ORC_JUROS_REC: TIntegerField
      FieldName = 'ID_CONTA_ORC_JUROS_REC'
    end
    object cdsParametrosID_CONTA_ORC_TAXA_BANCARIA_REC: TIntegerField
      FieldName = 'ID_CONTA_ORC_TAXA_BANCARIA_REC'
    end
    object cdsParametrosID_CONTA_ORC_DESPESA_REC: TIntegerField
      FieldName = 'ID_CONTA_ORC_DESPESA_REC'
    end
    object cdsParametrosID_CONTA_ORC_JUROS_PAG: TIntegerField
      FieldName = 'ID_CONTA_ORC_JUROS_PAG'
    end
    object cdsParametrosID_CONTA_ORC_DESPESA_PAG: TIntegerField
      FieldName = 'ID_CONTA_ORC_DESPESA_PAG'
    end
    object cdsParametrosTIPO_REL_OC: TStringField
      FieldName = 'TIPO_REL_OC'
      FixedChar = True
      Size = 2
    end
    object cdsParametrosUSA_PERC_MARGEM_RECEPCAO: TStringField
      FieldName = 'USA_PERC_MARGEM_RECEPCAO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_BOLETO_ACBR: TStringField
      FieldName = 'USA_BOLETO_ACBR'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_PREVISAO: TStringField
      FieldName = 'USA_PREVISAO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_ENVIO_EMAIL_CATEGORIA: TStringField
      FieldName = 'USA_ENVIO_EMAIL_CATEGORIA'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_DANFE_FLEXDOCS: TStringField
      FieldName = 'USA_DANFE_FLEXDOCS'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_DESONERACAO: TStringField
      FieldName = 'USA_DESONERACAO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosTIPO_REG_PRODUTO_PADRAO: TStringField
      FieldName = 'TIPO_REG_PRODUTO_PADRAO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosTIPO_CONSULTA_PRODUTO_PADRAO: TStringField
      FieldName = 'TIPO_CONSULTA_PRODUTO_PADRAO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosABRIR_NFECONFIG: TStringField
      FieldName = 'ABRIR_NFECONFIG'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosCADASTRA_ORGAO_PUBLICO: TStringField
      FieldName = 'CADASTRA_ORGAO_PUBLICO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosCONTROLAR_NOTIFICACAO: TStringField
      FieldName = 'CONTROLAR_NOTIFICACAO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_RECIBO_NFSE: TStringField
      FieldName = 'USA_RECIBO_NFSE'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosINFORMAR_COR_MATERIAL: TStringField
      FieldName = 'INFORMAR_COR_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosNFSE_RETEN_PIS: TStringField
      FieldName = 'NFSE_RETEN_PIS'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosNUMERO_SERIE_INTERNO: TStringField
      FieldName = 'NUMERO_SERIE_INTERNO'
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
    object cdsParametrosUSA_COPIA_OS_NOTA: TStringField
      FieldName = 'USA_COPIA_OS_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosEMPRESA_CONTABIL: TStringField
      FieldName = 'EMPRESA_CONTABIL'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosID_COND_PGTO_NFSE: TIntegerField
      FieldName = 'ID_COND_PGTO_NFSE'
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
    object cdsParametrosIMP_NOME_POSICAO: TStringField
      FieldName = 'IMP_NOME_POSICAO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosPROCURAR_POR_REF_XML: TStringField
      FieldName = 'PROCURAR_POR_REF_XML'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosQTD_DIG_COD_CLI_CTB: TIntegerField
      FieldName = 'QTD_DIG_COD_CLI_CTB'
    end
    object cdsParametrosEMPRESA_AMBIENTES: TStringField
      FieldName = 'EMPRESA_AMBIENTES'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosINFORMAR_COR_PROD: TStringField
      FieldName = 'INFORMAR_COR_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosINV_TRAZER_QTD_ZERADA: TStringField
      FieldName = 'INV_TRAZER_QTD_ZERADA'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosMOSTRAR_MARCAR_PROD: TStringField
      FieldName = 'MOSTRAR_MARCAR_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosMOSTRAR_LINHA_PROD: TStringField
      FieldName = 'MOSTRAR_LINHA_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosMOSTRAR_EMBALAGEM: TStringField
      FieldName = 'MOSTRAR_EMBALAGEM'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosCONTROLAR_FAT_SEPARADO: TStringField
      FieldName = 'CONTROLAR_FAT_SEPARADO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosCONTROLAR_DUP_PEDIDO: TStringField
      FieldName = 'CONTROLAR_DUP_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosID_RESP_SUPORTE: TIntegerField
      FieldName = 'ID_RESP_SUPORTE'
    end
    object cdsParametrosCONTROLAR_ISSQN_RET: TStringField
      FieldName = 'CONTROLAR_ISSQN_RET'
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
    object cdsParametrosUSA_SETOR_CONSUMO: TStringField
      FieldName = 'USA_SETOR_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosMOSTRAR_ATELIER_PROD: TStringField
      FieldName = 'MOSTRAR_ATELIER_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosGERAR_TALAO_AUXILIAR: TStringField
      FieldName = 'GERAR_TALAO_AUXILIAR'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosTIPO_ESTOQUE: TStringField
      FieldName = 'TIPO_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_COD_BARRAS_PROPRIO: TStringField
      FieldName = 'USA_COD_BARRAS_PROPRIO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_ETIQUETA_IND: TStringField
      FieldName = 'USA_ETIQUETA_IND'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosCALC_VOLUME_EMB: TStringField
      FieldName = 'CALC_VOLUME_EMB'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosGERAR_ROTULO_EMB: TStringField
      FieldName = 'GERAR_ROTULO_EMB'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_NFCE: TStringField
      FieldName = 'USA_NFCE'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosENDXMLNFCE: TStringField
      FieldName = 'ENDXMLNFCE'
      Size = 250
    end
    object cdsParametrosENDPDFNFCE: TStringField
      FieldName = 'ENDPDFNFCE'
      Size = 250
    end
    object cdsParametrosUSA_ENVIO_NOVO_NFE: TStringField
      FieldName = 'USA_ENVIO_NOVO_NFE'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosOPCAO_ESCOLHER_PRECO_COR: TStringField
      FieldName = 'OPCAO_ESCOLHER_PRECO_COR'
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
    object cdsParametrosOPCAO_REL_PED_AGRUPADO: TStringField
      FieldName = 'OPCAO_REL_PED_AGRUPADO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosGERAR_NUM_AUT_CONTRATO: TStringField
      FieldName = 'GERAR_NUM_AUT_CONTRATO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_ANO_CONTRATO: TStringField
      FieldName = 'USA_ANO_CONTRATO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_COPIA_PEDIDO_ITEM: TStringField
      FieldName = 'USA_COPIA_PEDIDO_ITEM'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_COPIA_OS_NFSE: TStringField
      FieldName = 'USA_COPIA_OS_NFSE'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_COPIA_PEDIDO: TStringField
      FieldName = 'USA_COPIA_PEDIDO'
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
    object cdsParametrosCONTRATO_CONSUMO: TStringField
      FieldName = 'CONTRATO_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_SERVICO_MOTOR: TStringField
      FieldName = 'USA_SERVICO_MOTOR'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosCONTROLAR_MENSAL_CSRF: TStringField
      FieldName = 'CONTROLAR_MENSAL_CSRF'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosGRAVAR_CONSUMO_NOTA: TStringField
      FieldName = 'GRAVAR_CONSUMO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosID_ATELIER_ADEFINIR: TIntegerField
      FieldName = 'ID_ATELIER_ADEFINIR'
    end
    object cdsParametrosINFORMAR_COR_MATERIAL_RZ: TStringField
      FieldName = 'INFORMAR_COR_MATERIAL_RZ'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosGRAVAR_FINANCEIRO_ATELIER: TStringField
      FieldName = 'GRAVAR_FINANCEIRO_ATELIER'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosID_CONTA_ORC_ATELIER: TIntegerField
      FieldName = 'ID_CONTA_ORC_ATELIER'
    end
    object cdsParametrosUSA_ICMSOPERACAO_CST51: TStringField
      FieldName = 'USA_ICMSOPERACAO_CST51'
      FixedChar = True
      Size = 1
    end
    object cdsParametrossdsParametros_Usuario: TDataSetField
      FieldName = 'sdsParametros_Usuario'
    end
    object cdsParametrosUSA_PRODUTO_FORNECEDOR: TStringField
      FieldName = 'USA_PRODUTO_FORNECEDOR'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUSA_PRODUTO_LOCALIZACAO: TStringField
      FieldName = 'USA_PRODUTO_LOCALIZACAO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosMOSTRAR_TOTAL_ACUMULADO_DUP: TStringField
      FieldName = 'MOSTRAR_TOTAL_ACUMULADO_DUP'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosID_CONTA_ORC_DESCONTADA: TIntegerField
      FieldName = 'ID_CONTA_ORC_DESCONTADA'
    end
    object cdsParametrosREPETIR_ULTIMO_ITEM_PED: TStringField
      FieldName = 'REPETIR_ULTIMO_ITEM_PED'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosUNIDADE_PECA: TStringField
      FieldName = 'UNIDADE_PECA'
      Size = 6
    end
    object cdsParametrosDECISAO: TStringField
      FieldName = 'DECISAO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosEMPRESA_LIVRARIA: TStringField
      FieldName = 'EMPRESA_LIVRARIA'
      FixedChar = True
      Size = 1
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
    object cdsParametrosUSA_ROTULO2: TStringField
      FieldName = 'USA_ROTULO2'
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
    object cdsParametrosID_CONTA_PADRAO_ADI: TIntegerField
      FieldName = 'ID_CONTA_PADRAO_ADI'
    end
    object cdsParametrosID_TIPO_COBRANCA_PADRAO_ADI: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA_PADRAO_ADI'
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
    object cdsParametrosUSA_OBS_PEDIDO_NOTA: TStringField
      FieldName = 'USA_OBS_PEDIDO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosID_LOCAL_ESTOQUE_PROD: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE_PROD'
    end
    object cdsParametrossdsParametros_Fin: TDataSetField
      FieldName = 'sdsParametros_Fin'
    end
    object cdsParametrossdsParametros_Ped: TDataSetField
      FieldName = 'sdsParametros_Ped'
    end
    object cdsParametrossdsParametros_Geral: TDataSetField
      FieldName = 'sdsParametros_Geral'
    end
    object cdsParametrossdsParametros_Est: TDataSetField
      FieldName = 'sdsParametros_Est'
    end
    object cdsParametrossdsParametros_Com: TDataSetField
      FieldName = 'sdsParametros_Com'
    end
    object cdsParametrossdsParametros_Imp: TDataSetField
      FieldName = 'sdsParametros_Imp'
    end
    object cdsParametrossdsParametros_Ser: TDataSetField
      FieldName = 'sdsParametros_Ser'
    end
    object cdsParametrossdsParametros_NFe: TDataSetField
      FieldName = 'sdsParametros_NFe'
    end
    object cdsParametrossdsParametros_Cta_Orc: TDataSetField
      FieldName = 'sdsParametros_Cta_Orc'
    end
    object cdsParametrossdsParametros_Prod: TDataSetField
      FieldName = 'sdsParametros_Prod'
    end
    object cdsParametrossdsParametros_OC: TDataSetField
      FieldName = 'sdsParametros_OC'
    end
    object cdsParametrossdsParametros_RecXML: TDataSetField
      FieldName = 'sdsParametros_RecXML'
    end
    object cdsParametrossdsParametros_FCI: TDataSetField
      FieldName = 'sdsParametros_FCI'
    end
    object cdsParametrossdsParametros_NTE: TDataSetField
      FieldName = 'sdsParametros_NTE'
    end
    object cdsParametrossdsParametros_Lote: TDataSetField
      FieldName = 'sdsParametros_Lote'
    end
    object cdsParametrossdsParametros_MDFe: TDataSetField
      FieldName = 'sdsParametros_MDFe'
    end
    object cdsParametrossdsParametros_Etiq: TDataSetField
      FieldName = 'sdsParametros_Etiq'
    end
    object cdsParametrossdsParametros_Custo: TDataSetField
      FieldName = 'sdsParametros_Custo'
    end
  end
  object dsParametros: TDataSource
    DataSet = cdsParametros
    Left = 328
    Top = 5
  end
  object sdsOperacao_Nota: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM OPERACAO_NOTA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 744
    Top = 205
  end
  object dspOperacao_Nota: TDataSetProvider
    DataSet = sdsOperacao_Nota
    Left = 776
    Top = 205
  end
  object cdsOperacao_Nota: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspOperacao_Nota'
    Left = 816
    Top = 205
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
  end
  object dsOperacao_Nota: TDataSource
    DataSet = cdsOperacao_Nota
    Left = 856
    Top = 205
  end
  object sdsTipoCobranca: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TIPOCOBRANCA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 968
    Top = 143
  end
  object dspTipoCobranca: TDataSetProvider
    DataSet = sdsTipoCobranca
    Left = 1008
    Top = 143
  end
  object cdsTipoCobranca: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspTipoCobranca'
    Left = 1048
    Top = 143
    object cdsTipoCobrancaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTipoCobrancaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsTipoCobranca: TDataSource
    DataSet = cdsTipoCobranca
    Left = 1096
    Top = 143
  end
  object sdsContas: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME'#13#10'FROM CONTAS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 968
    Top = 206
  end
  object dspContas: TDataSetProvider
    DataSet = sdsContas
    Left = 1008
    Top = 206
  end
  object cdsContas: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspContas'
    Left = 1048
    Top = 206
    object cdsContasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsContasNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsContas: TDataSource
    DataSet = cdsContas
    Left = 1096
    Top = 206
  end
  object sdsFolhaEncargos: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FOLHA_ENCARGOS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 968
    Top = 270
  end
  object dspFolhaEncargos: TDataSetProvider
    DataSet = sdsFolhaEncargos
    Left = 1008
    Top = 270
  end
  object cdsFolhaEncargos: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFolhaEncargos'
    Left = 1048
    Top = 270
    object cdsFolhaEncargosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFolhaEncargosVALOR_PERC: TFloatField
      FieldName = 'VALOR_PERC'
      DisplayFormat = '0.00'
    end
    object cdsFolhaEncargosSIMPLES: TStringField
      FieldName = 'SIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsFolhaEncargosHORISTA: TStringField
      FieldName = 'HORISTA'
      FixedChar = True
      Size = 1
    end
    object cdsFolhaEncargosNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object dsFolhaEncargos: TDataSource
    DataSet = cdsFolhaEncargos
    Left = 1096
    Top = 270
  end
  object sdsCFOP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, CODCFOP, NOME, ENTRADASAIDA, NOME_INTERNO'#13#10'FROM TAB_C' +
      'FOP'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 744
    Top = 40
  end
  object dspCFOP: TDataSetProvider
    DataSet = sdsCFOP
    Left = 776
    Top = 40
  end
  object cdsCFOP: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODCFOP;ID'
    Params = <>
    ProviderName = 'dspCFOP'
    Left = 816
    Top = 40
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
    object cdsCFOPNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
  end
  object dsCFOP: TDataSource
    DataSet = cdsCFOP
    Left = 848
    Top = 40
  end
  object sdsCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME, FANTASIA'#13#10'FROM PESSOA'#13#10'WHERE INATIVO = '#39'N'#39#13 +
      #10'      AND TP_CLIENTE = '#39'S'#39#13#10'      AND CLIENTE_ESTOQUE = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 704
    Top = 328
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 736
    Top = 328
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCliente'
    Left = 776
    Top = 328
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
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 816
    Top = 328
  end
  object sdsNCM: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_NCM'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 736
    Top = 398
  end
  object dspNCM: TDataSetProvider
    DataSet = sdsNCM
    Left = 776
    Top = 398
  end
  object cdsNCM: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspNCM'
    Left = 816
    Top = 398
    object cdsNCMID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNCMNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsNCMNOME: TStringField
      FieldName = 'NOME'
      Size = 250
    end
    object cdsNCMPERC_RED_STRIB: TFloatField
      FieldName = 'PERC_RED_STRIB'
    end
    object cdsNCMGERAR_ST: TStringField
      FieldName = 'GERAR_ST'
      FixedChar = True
      Size = 1
    end
  end
  object dsNCM: TDataSource
    DataSet = cdsNCM
    Left = 856
    Top = 398
  end
  object sdsContaOrcamento: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM CONTA_ORCAMENTO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 961
    Top = 328
  end
  object dspContaOrcamento: TDataSetProvider
    DataSet = sdsContaOrcamento
    Left = 993
    Top = 328
  end
  object cdsContaOrcamento: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'DESCRICAO'
    Params = <>
    ProviderName = 'dspContaOrcamento'
    Left = 1025
    Top = 328
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
    object cdsContaOrcamentoNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object cdsContaOrcamentoSUPERIOR: TStringField
      FieldName = 'SUPERIOR'
    end
  end
  object dsContaOrcamento: TDataSource
    DataSet = cdsContaOrcamento
    Left = 1065
    Top = 328
  end
  object sdsObs_Lei: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM OBS_LEI'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 744
    Top = 261
  end
  object dspObs_Lei: TDataSetProvider
    DataSet = sdsObs_Lei
    Left = 776
    Top = 261
  end
  object cdsObs_Lei: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspObs_Lei'
    Left = 816
    Top = 261
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
    Left = 856
    Top = 261
  end
  object dsParametros_Mestre: TDataSource
    DataSet = sdsParametros
    Left = 56
    Top = 48
  end
  object sdsParametros_Usuario: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PARAMETROS_USUARIO'#13#10'WHERE ID = :ID'
    DataSource = dsParametros_Mestre
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
    Top = 91
    object sdsParametros_UsuarioID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsParametros_UsuarioUSUARIO: TStringField
      FieldName = 'USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object sdsParametros_UsuarioTIPO_REG_PRODUTO_PADRAO: TStringField
      FieldName = 'TIPO_REG_PRODUTO_PADRAO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_UsuarioTIPO_CONSULTA_PRODUTO_PADRAO: TStringField
      FieldName = 'TIPO_CONSULTA_PRODUTO_PADRAO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_UsuarioMOSTRAR_CODIGO_PROD_ANT: TStringField
      FieldName = 'MOSTRAR_CODIGO_PROD_ANT'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_UsuarioMOSTRAR_TOTAL_PEDIDO: TStringField
      FieldName = 'MOSTRAR_TOTAL_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_UsuarioMOSTRAR_DUP_REC_PAG: TStringField
      FieldName = 'MOSTRAR_DUP_REC_PAG'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_UsuarioALT_ESTOQUE_MOV: TStringField
      FieldName = 'ALT_ESTOQUE_MOV'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_UsuarioSENHA_PEDIDO: TStringField
      FieldName = 'SENHA_PEDIDO'
      Size = 10
    end
    object sdsParametros_UsuarioSENHA_CREDITO: TStringField
      FieldName = 'SENHA_CREDITO'
      Size = 15
    end
    object sdsParametros_UsuarioMOSTRAR_PED_USUARIO: TStringField
      FieldName = 'MOSTRAR_PED_USUARIO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_UsuarioALT_PRECO_PED: TStringField
      FieldName = 'ALT_PRECO_PED'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_UsuarioMOSTRAR_CUSTO_OS: TStringField
      FieldName = 'MOSTRAR_CUSTO_OS'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_UsuarioALT_MATERIAL_NEC: TStringField
      FieldName = 'ALT_MATERIAL_NEC'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_UsuarioALT_CONSUMO_NEC: TStringField
      FieldName = 'ALT_CONSUMO_NEC'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_UsuarioALT_IT_PED_COM_OP: TStringField
      FieldName = 'ALT_IT_PED_COM_OP'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_UsuarioCONFIRMA_ENVIO_NFE: TStringField
      FieldName = 'CONFIRMA_ENVIO_NFE'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_UsuarioUTILIZA_PESSOA_REDUZIDO: TStringField
      FieldName = 'UTILIZA_PESSOA_REDUZIDO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_UsuarioALT_FINANCEIRO_CONF: TStringField
      FieldName = 'ALT_FINANCEIRO_CONF'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_UsuarioCONFERE_FINANC: TStringField
      FieldName = 'CONFERE_FINANC'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_UsuarioALT_PROD_CLIENTE: TStringField
      FieldName = 'ALT_PROD_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_UsuarioPERMITE_APROVAR_DUP: TStringField
      FieldName = 'PERMITE_APROVAR_DUP'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_UsuarioPERMITE_CANC_PED_OP: TStringField
      FieldName = 'PERMITE_CANC_PED_OP'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_UsuarioMOSTRAR_CONS_ETIQ: TStringField
      FieldName = 'MOSTRAR_CONS_ETIQ'
      FixedChar = True
      Size = 1
    end
  end
  object cdsParametros_Usuario: TClientDataSet
    Aggregates = <>
    DataSetField = cdsParametrossdsParametros_Usuario
    Params = <>
    Left = 216
    Top = 91
    object cdsParametros_UsuarioID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsParametros_UsuarioUSUARIO: TStringField
      FieldName = 'USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object cdsParametros_UsuarioTIPO_REG_PRODUTO_PADRAO: TStringField
      FieldName = 'TIPO_REG_PRODUTO_PADRAO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_UsuarioTIPO_CONSULTA_PRODUTO_PADRAO: TStringField
      FieldName = 'TIPO_CONSULTA_PRODUTO_PADRAO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_UsuarioMOSTRAR_CODIGO_PROD_ANT: TStringField
      FieldName = 'MOSTRAR_CODIGO_PROD_ANT'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_UsuarioMOSTRAR_TOTAL_PEDIDO: TStringField
      FieldName = 'MOSTRAR_TOTAL_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_UsuarioMOSTRAR_DUP_REC_PAG: TStringField
      FieldName = 'MOSTRAR_DUP_REC_PAG'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_UsuarioALT_ESTOQUE_MOV: TStringField
      FieldName = 'ALT_ESTOQUE_MOV'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_UsuarioSENHA_PEDIDO: TStringField
      FieldName = 'SENHA_PEDIDO'
      Size = 10
    end
    object cdsParametros_UsuarioSENHA_CREDITO: TStringField
      FieldName = 'SENHA_CREDITO'
      Size = 15
    end
    object cdsParametros_UsuarioMOSTRAR_PED_USUARIO: TStringField
      FieldName = 'MOSTRAR_PED_USUARIO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_UsuarioALT_PRECO_PED: TStringField
      FieldName = 'ALT_PRECO_PED'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_UsuarioMOSTRAR_CUSTO_OS: TStringField
      FieldName = 'MOSTRAR_CUSTO_OS'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_UsuarioALT_MATERIAL_NEC: TStringField
      FieldName = 'ALT_MATERIAL_NEC'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_UsuarioALT_CONSUMO_NEC: TStringField
      FieldName = 'ALT_CONSUMO_NEC'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_UsuarioALT_IT_PED_COM_OP: TStringField
      FieldName = 'ALT_IT_PED_COM_OP'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_UsuarioCONFIRMA_ENVIO_NFE: TStringField
      FieldName = 'CONFIRMA_ENVIO_NFE'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_UsuarioUTILIZA_PESSOA_REDUZIDO: TStringField
      FieldName = 'UTILIZA_PESSOA_REDUZIDO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_UsuarioALT_FINANCEIRO_CONF: TStringField
      FieldName = 'ALT_FINANCEIRO_CONF'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_UsuarioCONFERE_FINANC: TStringField
      FieldName = 'CONFERE_FINANC'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_UsuarioALT_PROD_CLIENTE: TStringField
      FieldName = 'ALT_PROD_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_UsuarioPERMITE_APROVAR_DUP: TStringField
      FieldName = 'PERMITE_APROVAR_DUP'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_UsuarioPERMITE_CANC_PED_OP: TStringField
      FieldName = 'PERMITE_CANC_PED_OP'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_UsuarioMOSTRAR_CONS_ETIQ: TStringField
      FieldName = 'MOSTRAR_CONS_ETIQ'
      FixedChar = True
      Size = 1
    end
  end
  object dsParametros_Usuario: TDataSource
    DataSet = cdsParametros_Usuario
    Left = 304
    Top = 91
  end
  object sdsUsuarios: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT UCLOGIN'#13#10'FROM uctabusers'#13#10'WHERE UCLOGIN IS NOT NULL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 752
    Top = 582
  end
  object dspUsuarios: TDataSetProvider
    DataSet = sdsUsuarios
    Left = 792
    Top = 582
  end
  object cdsUsuarios: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UCLOGIN'
    Params = <>
    ProviderName = 'dspUsuarios'
    Left = 832
    Top = 582
    object cdsUsuariosUCLOGIN: TStringField
      FieldName = 'UCLOGIN'
      Size = 30
    end
  end
  object dsUsuarios: TDataSource
    DataSet = cdsUsuarios
    Left = 872
    Top = 582
  end
  object sdsCondPgto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME'#13#10'FROM CONDPGTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 744
    Top = 96
  end
  object dspCondPgto: TDataSetProvider
    DataSet = sdsCondPgto
    Left = 776
    Top = 96
  end
  object cdsCondPgto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCondPgto'
    Left = 816
    Top = 96
    object cdsCondPgtoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCondPgtoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dsCondPgto: TDataSource
    DataSet = cdsCondPgto
    Left = 848
    Top = 96
  end
  object sdsAtelier: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ATE.CODIGO, ATE.NOME, ATE.FANTASIA'#13#10'FROM PESSOA ATE'#13#10'WHER' +
      'E ATE.TP_ATELIER = '#39'S'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 760
    Top = 533
  end
  object dspAtelier: TDataSetProvider
    DataSet = sdsAtelier
    Left = 792
    Top = 533
  end
  object cdsAtelier: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspAtelier'
    Left = 832
    Top = 533
    object cdsAtelierCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsAtelierNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsAtelierFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
  end
  object dsAtelier: TDataSource
    DataSet = cdsAtelier
    Left = 872
    Top = 533
  end
  object sdsUnidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM UNIDADE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 976
    Top = 40
  end
  object dspUnidade: TDataSetProvider
    DataSet = sdsUnidade
    Left = 1008
    Top = 40
  end
  object cdsUnidade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UNIDADE'
    Params = <>
    ProviderName = 'dspUnidade'
    Left = 1048
    Top = 40
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
    Left = 1080
    Top = 40
  end
  object sdsLocal_Estoque: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, COD_LOCAL, NOME, PRINCIPAL, INATIVO'#13#10'FROM LOCAL_ESTOQ' +
      'UE'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 960
    Top = 385
  end
  object dspLocal_Estoque: TDataSetProvider
    DataSet = sdsLocal_Estoque
    Left = 995
    Top = 385
  end
  object cdsLocal_Estoque: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspLocal_Estoque'
    Left = 1035
    Top = 385
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
    Left = 1075
    Top = 385
  end
  object sdsParametros_Fin: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PARAMETROS_FIN'#13#10'WHERE ID = :ID'
    DataSource = dsParametros_Mestre
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
    Top = 134
    object sdsParametros_FinID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsParametros_FinCONTROLAR_DUP_USUARIO: TStringField
      FieldName = 'CONTROLAR_DUP_USUARIO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_FinUSA_METAS_VENDEDOR: TStringField
      FieldName = 'USA_METAS_VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_FinUSA_LIMITE_COMPRAS: TStringField
      FieldName = 'USA_LIMITE_COMPRAS'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_FinMOSTRAR_VLR_ROD_DUP: TStringField
      FieldName = 'MOSTRAR_VLR_ROD_DUP'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_FinMOSTRAR_ULT_REMESSA: TStringField
      FieldName = 'MOSTRAR_ULT_REMESSA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_FinDTENVIO_EMAIL_TITULOS: TDateField
      FieldName = 'DTENVIO_EMAIL_TITULOS'
    end
    object sdsParametros_FinENVIAR_EMAIL_TITULOS_ATR: TStringField
      FieldName = 'ENVIAR_EMAIL_TITULOS_ATR'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_FinCONTROLAR_BANCO_REM_DEP: TStringField
      FieldName = 'CONTROLAR_BANCO_REM_DEP'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_FinSEPARADOR_NUM_DA_PARC: TStringField
      FieldName = 'SEPARADOR_NUM_DA_PARC'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_FinMOSTRAR_VLR_MULTA_DUP: TStringField
      FieldName = 'MOSTRAR_VLR_MULTA_DUP'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_FinUSA_REGIME_CAIXA_DUP: TStringField
      FieldName = 'USA_REGIME_CAIXA_DUP'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_FinSENHA_RECIBO: TStringField
      FieldName = 'SENHA_RECIBO'
      Size = 15
    end
    object sdsParametros_FinIMP_NOSSO_NUMERO: TStringField
      FieldName = 'IMP_NOSSO_NUMERO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_FinTIPO_GERACAO_REM: TStringField
      FieldName = 'TIPO_GERACAO_REM'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_FinMOSTRAR_TIPO_CRED: TStringField
      FieldName = 'MOSTRAR_TIPO_CRED'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_FinUSA_DESCONTO_VALE: TStringField
      FieldName = 'USA_DESCONTO_VALE'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_FinUSA_TABPRECO_PROM: TStringField
      FieldName = 'USA_TABPRECO_PROM'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_FinID_TABPRECO1: TIntegerField
      FieldName = 'ID_TABPRECO1'
    end
    object sdsParametros_FinID_TABPRECO2: TIntegerField
      FieldName = 'ID_TABPRECO2'
    end
    object sdsParametros_FinID_TABPRECO3: TIntegerField
      FieldName = 'ID_TABPRECO3'
    end
    object sdsParametros_FinCOPIAR_DESC_VALE: TStringField
      FieldName = 'COPIAR_DESC_VALE'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_FinSENHA_LIBERAR_DESC: TStringField
      FieldName = 'SENHA_LIBERAR_DESC'
      Size = 10
    end
    object sdsParametros_FinCONTROLE_DIG_PRECO: TStringField
      FieldName = 'CONTROLE_DIG_PRECO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_FinREMESSA_FILIAL_DIF: TStringField
      FieldName = 'REMESSA_FILIAL_DIF'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_FinDUP_DIA_FIN_VECTO: TStringField
      FieldName = 'DUP_DIA_FIN_VECTO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_FinPROTESTAR_CLIENTE: TStringField
      FieldName = 'PROTESTAR_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_FinANEXAR_BOLETO_TITULOS_ATR: TStringField
      FieldName = 'ANEXAR_BOLETO_TITULOS_ATR'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_FinEXIGIR_CONTA_ORC_DUP: TStringField
      FieldName = 'EXIGIR_CONTA_ORC_DUP'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_FinUSA_NGR: TStringField
      FieldName = 'USA_NGR'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_FinUSA_APROVA_DUP: TStringField
      FieldName = 'USA_APROVA_DUP'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_FinUSA_CLIENTE_CUSTO: TStringField
      FieldName = 'USA_CLIENTE_CUSTO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_FinINFORMA_MOBRA_MAN: TStringField
      FieldName = 'INFORMA_MOBRA_MAN'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_FinUSA_PERC_CONDPGTO: TStringField
      FieldName = 'USA_PERC_CONDPGTO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_FinARREDONDA_PRECO_TAB: TStringField
      FieldName = 'ARREDONDA_PRECO_TAB'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_FinMANTER_DUP_CANC: TStringField
      FieldName = 'MANTER_DUP_CANC'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_FinCONDPGTO_FRETE_IMP: TStringField
      FieldName = 'CONDPGTO_FRETE_IMP'
      FixedChar = True
      Size = 1
    end
  end
  object cdsParametros_Fin: TClientDataSet
    Aggregates = <>
    DataSetField = cdsParametrossdsParametros_Fin
    Params = <>
    Left = 216
    Top = 134
    object cdsParametros_FinID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsParametros_FinCONTROLAR_DUP_USUARIO: TStringField
      FieldName = 'CONTROLAR_DUP_USUARIO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_FinUSA_METAS_VENDEDOR: TStringField
      FieldName = 'USA_METAS_VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_FinUSA_LIMITE_COMPRAS: TStringField
      FieldName = 'USA_LIMITE_COMPRAS'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_FinMOSTRAR_VLR_ROD_DUP: TStringField
      FieldName = 'MOSTRAR_VLR_ROD_DUP'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_FinMOSTRAR_ULT_REMESSA: TStringField
      FieldName = 'MOSTRAR_ULT_REMESSA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_FinDTENVIO_EMAIL_TITULOS: TDateField
      FieldName = 'DTENVIO_EMAIL_TITULOS'
    end
    object cdsParametros_FinENVIAR_EMAIL_TITULOS_ATR: TStringField
      FieldName = 'ENVIAR_EMAIL_TITULOS_ATR'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_FinCONTROLAR_BANCO_REM_DEP: TStringField
      FieldName = 'CONTROLAR_BANCO_REM_DEP'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_FinSEPARADOR_NUM_DA_PARC: TStringField
      FieldName = 'SEPARADOR_NUM_DA_PARC'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_FinMOSTRAR_VLR_MULTA_DUP: TStringField
      FieldName = 'MOSTRAR_VLR_MULTA_DUP'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_FinUSA_REGIME_CAIXA_DUP: TStringField
      FieldName = 'USA_REGIME_CAIXA_DUP'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_FinSENHA_RECIBO: TStringField
      FieldName = 'SENHA_RECIBO'
      Size = 15
    end
    object cdsParametros_FinIMP_NOSSO_NUMERO: TStringField
      FieldName = 'IMP_NOSSO_NUMERO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_FinTIPO_GERACAO_REM: TStringField
      FieldName = 'TIPO_GERACAO_REM'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_FinMOSTRAR_TIPO_CRED: TStringField
      FieldName = 'MOSTRAR_TIPO_CRED'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_FinUSA_DESCONTO_VALE: TStringField
      FieldName = 'USA_DESCONTO_VALE'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_FinUSA_TABPRECO_PROM: TStringField
      FieldName = 'USA_TABPRECO_PROM'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_FinID_TABPRECO1: TIntegerField
      FieldName = 'ID_TABPRECO1'
    end
    object cdsParametros_FinID_TABPRECO2: TIntegerField
      FieldName = 'ID_TABPRECO2'
    end
    object cdsParametros_FinID_TABPRECO3: TIntegerField
      FieldName = 'ID_TABPRECO3'
    end
    object cdsParametros_FinCOPIAR_DESC_VALE: TStringField
      FieldName = 'COPIAR_DESC_VALE'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_FinSENHA_LIBERAR_DESC: TStringField
      FieldName = 'SENHA_LIBERAR_DESC'
      Size = 10
    end
    object cdsParametros_FinCONTROLE_DIG_PRECO: TStringField
      FieldName = 'CONTROLE_DIG_PRECO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_FinREMESSA_FILIAL_DIF: TStringField
      FieldName = 'REMESSA_FILIAL_DIF'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_FinDUP_DIA_FIN_VECTO: TStringField
      FieldName = 'DUP_DIA_FIN_VECTO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_FinPROTESTAR_CLIENTE: TStringField
      FieldName = 'PROTESTAR_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_FinANEXAR_BOLETO_TITULOS_ATR: TStringField
      FieldName = 'ANEXAR_BOLETO_TITULOS_ATR'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_FinEXIGIR_CONTA_ORC_DUP: TStringField
      FieldName = 'EXIGIR_CONTA_ORC_DUP'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_FinUSA_NGR: TStringField
      FieldName = 'USA_NGR'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_FinUSA_APROVA_DUP: TStringField
      FieldName = 'USA_APROVA_DUP'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_FinUSA_CLIENTE_CUSTO: TStringField
      FieldName = 'USA_CLIENTE_CUSTO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_FinINFORMA_MOBRA_MAN: TStringField
      FieldName = 'INFORMA_MOBRA_MAN'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_FinUSA_PERC_CONDPGTO: TStringField
      FieldName = 'USA_PERC_CONDPGTO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_FinARREDONDA_PRECO_TAB: TStringField
      FieldName = 'ARREDONDA_PRECO_TAB'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_FinMANTER_DUP_CANC: TStringField
      FieldName = 'MANTER_DUP_CANC'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_FinCONDPGTO_FRETE_IMP: TStringField
      FieldName = 'CONDPGTO_FRETE_IMP'
      FixedChar = True
      Size = 1
    end
  end
  object dsParametros_Fin: TDataSource
    DataSet = cdsParametros_Fin
    Left = 304
    Top = 134
  end
  object sdsParametros_Ped: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PARAMETROS_PED'#13#10'WHERE ID = :ID'
    DataSource = dsParametros_Mestre
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
    Top = 179
    object sdsParametros_PedID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsParametros_PedFATURAR_PED_INTEGRAL: TStringField
      FieldName = 'FATURAR_PED_INTEGRAL'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedUSA_DTEXPEDICAO: TStringField
      FieldName = 'USA_DTEXPEDICAO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedIMP_REF_COD_PEDIDO: TStringField
      FieldName = 'IMP_REF_COD_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedUSA_NUM_PEDIDO_POR_FILIAL: TStringField
      FieldName = 'USA_NUM_PEDIDO_POR_FILIAL'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedCONTROLAR_FILIAL_NA_COPIA_NOTA: TStringField
      FieldName = 'CONTROLAR_FILIAL_NA_COPIA_NOTA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedID_CONDPGTO_PRIMEIRO_PED: TIntegerField
      FieldName = 'ID_CONDPGTO_PRIMEIRO_PED'
    end
    object sdsParametros_PedUSA_PROCESSO: TStringField
      FieldName = 'USA_PROCESSO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedCONTROLAR_ROT_IMPRESSO: TStringField
      FieldName = 'CONTROLAR_ROT_IMPRESSO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedEXIGIR_NUM_PED_CLIENTE: TStringField
      FieldName = 'EXIGIR_NUM_PED_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedCONTROLAR_VLR_ENTRADA: TStringField
      FieldName = 'CONTROLAR_VLR_ENTRADA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedMOSTRAR_TERCEIRO: TStringField
      FieldName = 'MOSTRAR_TERCEIRO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedIMP_IPI_DEPOIS_VLR: TStringField
      FieldName = 'IMP_IPI_DEPOIS_VLR'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedCONS_PREENCHER_DTINI: TStringField
      FieldName = 'CONS_PREENCHER_DTINI'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedUSA_CONFERENCIA: TStringField
      FieldName = 'USA_CONFERENCIA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedOPCAO_CONSULTA: TStringField
      FieldName = 'OPCAO_CONSULTA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedUSA_DESC_VAREJO: TStringField
      FieldName = 'USA_DESC_VAREJO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedUSA_OS_REMESSA: TStringField
      FieldName = 'USA_OS_REMESSA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedDESABILITAR_OC_PED: TStringField
      FieldName = 'DESABILITAR_OC_PED'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedMOSTRAR_ALT_DT_ENTREGA: TStringField
      FieldName = 'MOSTRAR_ALT_DT_ENTREGA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedUSAR_VEND_USUARIO: TStringField
      FieldName = 'USAR_VEND_USUARIO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedINF_CONSUMIDOR_AUT: TStringField
      FieldName = 'INF_CONSUMIDOR_AUT'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedCONFERENCIA_SIMPLES: TStringField
      FieldName = 'CONFERENCIA_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedIMP_RESUMO_UNID: TStringField
      FieldName = 'IMP_RESUMO_UNID'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedUSA_OPERACAO_SERV: TStringField
      FieldName = 'USA_OPERACAO_SERV'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedINF_LUCRATIVIDADE: TStringField
      FieldName = 'INF_LUCRATIVIDADE'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedUSA_NUM_TALAO: TStringField
      FieldName = 'USA_NUM_TALAO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedUSA_COD_CLIENTE: TStringField
      FieldName = 'USA_COD_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedDESCRICAO_PHP: TStringField
      FieldName = 'DESCRICAO_PHP'
      Size = 50
    end
    object sdsParametros_PedENVIAR_EMAIL_PROC_PED: TStringField
      FieldName = 'ENVIAR_EMAIL_PROC_PED'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedENVIAR_EMAIL_PROC_EXP: TStringField
      FieldName = 'ENVIAR_EMAIL_PROC_EXP'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedENVIAR_EMAIL_PROC_FAT: TStringField
      FieldName = 'ENVIAR_EMAIL_PROC_FAT'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedENVIAR_EMAIL_PROC_TRANSP: TStringField
      FieldName = 'ENVIAR_EMAIL_PROC_TRANSP'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedUSA_EMAIL_NO_PED: TStringField
      FieldName = 'USA_EMAIL_NO_PED'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedMOSTRAR_DT_REC: TStringField
      FieldName = 'MOSTRAR_DT_REC'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedUSAR_COPIA_OS: TStringField
      FieldName = 'USAR_COPIA_OS'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedENVIA_SMS: TStringField
      FieldName = 'ENVIA_SMS'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedUSA_UNIDADE_VENDA: TStringField
      FieldName = 'USA_UNIDADE_VENDA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedMOSTRAR_FONE: TStringField
      FieldName = 'MOSTRAR_FONE'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedMOSTRAR_GRUPO_PESSOA: TStringField
      FieldName = 'MOSTRAR_GRUPO_PESSOA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedUSA_OBS_ETIQUETA: TStringField
      FieldName = 'USA_OBS_ETIQUETA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedPEDIDO_LOJA: TStringField
      FieldName = 'PEDIDO_LOJA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedUSA_EMAIL_NFECONFIG_CONF: TStringField
      FieldName = 'USA_EMAIL_NFECONFIG_CONF'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedUSA_FINANCEIRO_CONF: TStringField
      FieldName = 'USA_FINANCEIRO_CONF'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedUSA_RETIRADA: TStringField
      FieldName = 'USA_RETIRADA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedCONCATENA_PROD_COR_TAM: TStringField
      FieldName = 'CONCATENA_PROD_COR_TAM'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedUSA_OPERACAO_AUT: TStringField
      FieldName = 'USA_OPERACAO_AUT'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedUSA_ITEM_RED: TStringField
      FieldName = 'USA_ITEM_RED'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedPERMITE_ALT_NOMEPROD: TStringField
      FieldName = 'PERMITE_ALT_NOMEPROD'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedACEITA_SEM_PRECO: TStringField
      FieldName = 'ACEITA_SEM_PRECO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedIMP_ORDEM_ITEM_PED: TStringField
      FieldName = 'IMP_ORDEM_ITEM_PED'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedOBRIGA_USO_DTENTREGA: TStringField
      FieldName = 'OBRIGA_USO_DTENTREGA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedUSA_DTVALIDADE: TStringField
      FieldName = 'USA_DTVALIDADE'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedOBS_PEDIDO: TMemoField
      FieldName = 'OBS_PEDIDO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsParametros_PedUSA_TAB_PRECO: TStringField
      FieldName = 'USA_TAB_PRECO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedUSA_NUM_PEDIDO_POR_VEND: TStringField
      FieldName = 'USA_NUM_PEDIDO_POR_VEND'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedIMP_MATERIAL: TStringField
      FieldName = 'IMP_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedUSA_AMOSTRA: TStringField
      FieldName = 'USA_AMOSTRA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_PedUSA_CAIXINHA: TStringField
      FieldName = 'USA_CAIXINHA'
      FixedChar = True
      Size = 1
    end
  end
  object cdsParametros_Ped: TClientDataSet
    Aggregates = <>
    DataSetField = cdsParametrossdsParametros_Ped
    Params = <>
    Left = 216
    Top = 179
    object cdsParametros_PedID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsParametros_PedFATURAR_PED_INTEGRAL: TStringField
      FieldName = 'FATURAR_PED_INTEGRAL'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedUSA_DTEXPEDICAO: TStringField
      FieldName = 'USA_DTEXPEDICAO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedIMP_REF_COD_PEDIDO: TStringField
      FieldName = 'IMP_REF_COD_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedUSA_NUM_PEDIDO_POR_FILIAL: TStringField
      FieldName = 'USA_NUM_PEDIDO_POR_FILIAL'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedCONTROLAR_FILIAL_NA_COPIA_NOTA: TStringField
      FieldName = 'CONTROLAR_FILIAL_NA_COPIA_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedID_CONDPGTO_PRIMEIRO_PED: TIntegerField
      FieldName = 'ID_CONDPGTO_PRIMEIRO_PED'
    end
    object cdsParametros_PedUSA_PROCESSO: TStringField
      FieldName = 'USA_PROCESSO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedCONTROLAR_ROT_IMPRESSO: TStringField
      FieldName = 'CONTROLAR_ROT_IMPRESSO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedEXIGIR_NUM_PED_CLIENTE: TStringField
      FieldName = 'EXIGIR_NUM_PED_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedCONTROLAR_VLR_ENTRADA: TStringField
      FieldName = 'CONTROLAR_VLR_ENTRADA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedMOSTRAR_TERCEIRO: TStringField
      FieldName = 'MOSTRAR_TERCEIRO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedIMP_IPI_DEPOIS_VLR: TStringField
      FieldName = 'IMP_IPI_DEPOIS_VLR'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedCONS_PREENCHER_DTINI: TStringField
      FieldName = 'CONS_PREENCHER_DTINI'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedUSA_CONFERENCIA: TStringField
      FieldName = 'USA_CONFERENCIA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedOPCAO_CONSULTA: TStringField
      FieldName = 'OPCAO_CONSULTA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedUSA_DESC_VAREJO: TStringField
      FieldName = 'USA_DESC_VAREJO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedUSA_OS_REMESSA: TStringField
      FieldName = 'USA_OS_REMESSA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedDESABILITAR_OC_PED: TStringField
      FieldName = 'DESABILITAR_OC_PED'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedMOSTRAR_ALT_DT_ENTREGA: TStringField
      FieldName = 'MOSTRAR_ALT_DT_ENTREGA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedUSAR_VEND_USUARIO: TStringField
      FieldName = 'USAR_VEND_USUARIO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedINF_CONSUMIDOR_AUT: TStringField
      FieldName = 'INF_CONSUMIDOR_AUT'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedCONFERENCIA_SIMPLES: TStringField
      FieldName = 'CONFERENCIA_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedIMP_RESUMO_UNID: TStringField
      FieldName = 'IMP_RESUMO_UNID'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedUSA_OPERACAO_SERV: TStringField
      FieldName = 'USA_OPERACAO_SERV'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedINF_LUCRATIVIDADE: TStringField
      FieldName = 'INF_LUCRATIVIDADE'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedUSA_NUM_TALAO: TStringField
      FieldName = 'USA_NUM_TALAO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedUSA_COD_CLIENTE: TStringField
      FieldName = 'USA_COD_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedDESCRICAO_PHP: TStringField
      FieldName = 'DESCRICAO_PHP'
      Size = 50
    end
    object cdsParametros_PedENVIAR_EMAIL_PROC_PED: TStringField
      FieldName = 'ENVIAR_EMAIL_PROC_PED'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedENVIAR_EMAIL_PROC_EXP: TStringField
      FieldName = 'ENVIAR_EMAIL_PROC_EXP'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedENVIAR_EMAIL_PROC_FAT: TStringField
      FieldName = 'ENVIAR_EMAIL_PROC_FAT'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedENVIAR_EMAIL_PROC_TRANSP: TStringField
      FieldName = 'ENVIAR_EMAIL_PROC_TRANSP'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedUSA_EMAIL_NO_PED: TStringField
      FieldName = 'USA_EMAIL_NO_PED'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedMOSTRAR_DT_REC: TStringField
      FieldName = 'MOSTRAR_DT_REC'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedUSAR_COPIA_OS: TStringField
      FieldName = 'USAR_COPIA_OS'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedENVIA_SMS: TStringField
      FieldName = 'ENVIA_SMS'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedUSA_UNIDADE_VENDA: TStringField
      FieldName = 'USA_UNIDADE_VENDA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedMOSTRAR_FONE: TStringField
      FieldName = 'MOSTRAR_FONE'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedMOSTRAR_GRUPO_PESSOA: TStringField
      FieldName = 'MOSTRAR_GRUPO_PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedUSA_OBS_ETIQUETA: TStringField
      FieldName = 'USA_OBS_ETIQUETA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedPEDIDO_LOJA: TStringField
      FieldName = 'PEDIDO_LOJA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedUSA_EMAIL_NFECONFIG_CONF: TStringField
      FieldName = 'USA_EMAIL_NFECONFIG_CONF'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedUSA_FINANCEIRO_CONF: TStringField
      FieldName = 'USA_FINANCEIRO_CONF'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedUSA_RETIRADA: TStringField
      FieldName = 'USA_RETIRADA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedCONCATENA_PROD_COR_TAM: TStringField
      FieldName = 'CONCATENA_PROD_COR_TAM'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedUSA_OPERACAO_AUT: TStringField
      FieldName = 'USA_OPERACAO_AUT'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedUSA_ITEM_RED: TStringField
      FieldName = 'USA_ITEM_RED'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedPERMITE_ALT_NOMEPROD: TStringField
      FieldName = 'PERMITE_ALT_NOMEPROD'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedACEITA_SEM_PRECO: TStringField
      FieldName = 'ACEITA_SEM_PRECO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedIMP_ORDEM_ITEM_PED: TStringField
      FieldName = 'IMP_ORDEM_ITEM_PED'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedOBRIGA_USO_DTENTREGA: TStringField
      FieldName = 'OBRIGA_USO_DTENTREGA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedUSA_DTVALIDADE: TStringField
      FieldName = 'USA_DTVALIDADE'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedOBS_PEDIDO: TMemoField
      FieldName = 'OBS_PEDIDO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsParametros_PedUSA_TAB_PRECO: TStringField
      FieldName = 'USA_TAB_PRECO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedUSA_NUM_PEDIDO_POR_VEND: TStringField
      FieldName = 'USA_NUM_PEDIDO_POR_VEND'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedIMP_MATERIAL: TStringField
      FieldName = 'IMP_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedUSA_AMOSTRA: TStringField
      FieldName = 'USA_AMOSTRA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_PedUSA_CAIXINHA: TStringField
      FieldName = 'USA_CAIXINHA'
      FixedChar = True
      Size = 1
    end
  end
  object dsParametros_Ped: TDataSource
    DataSet = cdsParametros_Ped
    Left = 304
    Top = 179
  end
  object sdsParametros_Geral: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PARAMETROS_GERAL'#13#10'WHERE ID = :ID'
    DataSource = dsParametros_Mestre
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
    Top = 225
    object sdsParametros_GeralID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsParametros_GeralENDGRIDS: TStringField
      FieldName = 'ENDGRIDS'
      Size = 250
    end
    object sdsParametros_GeralUSA_PONTOS_LOCACAO: TStringField
      FieldName = 'USA_PONTOS_LOCACAO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_GeralMOSTRAR_DADOS_PESSOA_FISICA: TStringField
      FieldName = 'MOSTRAR_DADOS_PESSOA_FISICA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_GeralLIBERAR_DIG_DTCADASTRO: TStringField
      FieldName = 'LIBERAR_DIG_DTCADASTRO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_GeralUSAR_PESSOA_FILIAL: TStringField
      FieldName = 'USAR_PESSOA_FILIAL'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_GeralMOSTRAR_COD_CONTABIL: TStringField
      FieldName = 'MOSTRAR_COD_CONTABIL'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_GeralEND_ARQ_INT_CONTABIL: TStringField
      FieldName = 'END_ARQ_INT_CONTABIL'
      Size = 200
    end
    object sdsParametros_GeralUSA_TIPO_CONTR_VARIACAO: TStringField
      FieldName = 'USA_TIPO_CONTR_VARIACAO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_GeralGRAVAR_HIST_SENHA: TStringField
      FieldName = 'GRAVAR_HIST_SENHA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_GeralEND_ARQ_PERDCOMP: TStringField
      FieldName = 'END_ARQ_PERDCOMP'
      Size = 200
    end
    object sdsParametros_GeralVERSAO_BANCO_NFE: TIntegerField
      FieldName = 'VERSAO_BANCO_NFE'
    end
    object sdsParametros_GeralEMPRESA_VAREJO: TStringField
      FieldName = 'EMPRESA_VAREJO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_GeralINF_USUARIO_VEND: TStringField
      FieldName = 'INF_USUARIO_VEND'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_GeralEND_ASSINATURA: TStringField
      FieldName = 'END_ASSINATURA'
      Size = 200
    end
    object sdsParametros_GeralPESSOA_TIPO_PADRAO: TStringField
      FieldName = 'PESSOA_TIPO_PADRAO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_GeralPESSOA_PAIS_PADRAO: TIntegerField
      FieldName = 'PESSOA_PAIS_PADRAO'
    end
    object sdsParametros_GeralPESSOA_CIDADE_PADRAO: TIntegerField
      FieldName = 'PESSOA_CIDADE_PADRAO'
    end
    object sdsParametros_GeralEND_ARQ_EDI: TStringField
      FieldName = 'END_ARQ_EDI'
      Size = 200
    end
    object sdsParametros_GeralEMPRESA_CALCADOS: TStringField
      FieldName = 'EMPRESA_CALCADOS'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_GeralUSA_ISENTO_PESSOA: TStringField
      FieldName = 'USA_ISENTO_PESSOA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_GeralUSA_CUSTO: TStringField
      FieldName = 'USA_CUSTO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_GeralATUALIZAR_PRECOVENDA_DOC: TStringField
      FieldName = 'ATUALIZAR_PRECOVENDA_DOC'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_GeralUSA_TRIANGULAR: TStringField
      FieldName = 'USA_TRIANGULAR'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_GeralUSA_AJUSTE_CUSTO: TStringField
      FieldName = 'USA_AJUSTE_CUSTO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_GeralUSA_COD_VENDEDOR: TStringField
      FieldName = 'USA_COD_VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_GeralUSA_SENHA_CONTRASENHA: TStringField
      FieldName = 'USA_SENHA_CONTRASENHA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_GeralUSA_TIPO_MATERIAL: TStringField
      FieldName = 'USA_TIPO_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_GeralUSA_CUSTO_PROC_ATE: TStringField
      FieldName = 'USA_CUSTO_PROC_ATE'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_GeralPERMITE_CNPJ_DUPLICADO_TRANSP: TStringField
      FieldName = 'PERMITE_CNPJ_DUPLICADO_TRANSP'
      FixedChar = True
      Size = 1
    end
  end
  object cdsParametros_Geral: TClientDataSet
    Aggregates = <>
    DataSetField = cdsParametrossdsParametros_Geral
    Params = <>
    Left = 216
    Top = 225
    object cdsParametros_GeralID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsParametros_GeralENDGRIDS: TStringField
      FieldName = 'ENDGRIDS'
      Size = 250
    end
    object cdsParametros_GeralUSA_PONTOS_LOCACAO: TStringField
      FieldName = 'USA_PONTOS_LOCACAO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_GeralMOSTRAR_DADOS_PESSOA_FISICA: TStringField
      FieldName = 'MOSTRAR_DADOS_PESSOA_FISICA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_GeralLIBERAR_DIG_DTCADASTRO: TStringField
      FieldName = 'LIBERAR_DIG_DTCADASTRO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_GeralUSAR_PESSOA_FILIAL: TStringField
      FieldName = 'USAR_PESSOA_FILIAL'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_GeralMOSTRAR_COD_CONTABIL: TStringField
      FieldName = 'MOSTRAR_COD_CONTABIL'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_GeralEND_ARQ_INT_CONTABIL: TStringField
      FieldName = 'END_ARQ_INT_CONTABIL'
      Size = 200
    end
    object cdsParametros_GeralUSA_TIPO_CONTR_VARIACAO: TStringField
      FieldName = 'USA_TIPO_CONTR_VARIACAO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_GeralGRAVAR_HIST_SENHA: TStringField
      FieldName = 'GRAVAR_HIST_SENHA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_GeralEND_ARQ_PERDCOMP: TStringField
      FieldName = 'END_ARQ_PERDCOMP'
      Size = 200
    end
    object cdsParametros_GeralVERSAO_BANCO_NFE: TIntegerField
      FieldName = 'VERSAO_BANCO_NFE'
    end
    object cdsParametros_GeralEMPRESA_VAREJO: TStringField
      FieldName = 'EMPRESA_VAREJO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_GeralINF_USUARIO_VEND: TStringField
      FieldName = 'INF_USUARIO_VEND'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_GeralEND_ASSINATURA: TStringField
      FieldName = 'END_ASSINATURA'
      Size = 200
    end
    object cdsParametros_GeralPESSOA_TIPO_PADRAO: TStringField
      FieldName = 'PESSOA_TIPO_PADRAO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_GeralPESSOA_PAIS_PADRAO: TIntegerField
      FieldName = 'PESSOA_PAIS_PADRAO'
    end
    object cdsParametros_GeralPESSOA_CIDADE_PADRAO: TIntegerField
      FieldName = 'PESSOA_CIDADE_PADRAO'
    end
    object cdsParametros_GeralEND_ARQ_EDI: TStringField
      FieldName = 'END_ARQ_EDI'
      Size = 200
    end
    object cdsParametros_GeralEMPRESA_CALCADOS: TStringField
      FieldName = 'EMPRESA_CALCADOS'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_GeralUSA_ISENTO_PESSOA: TStringField
      FieldName = 'USA_ISENTO_PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_GeralUSA_CUSTO: TStringField
      FieldName = 'USA_CUSTO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_GeralATUALIZAR_PRECOVENDA_DOC: TStringField
      FieldName = 'ATUALIZAR_PRECOVENDA_DOC'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_GeralUSA_TRIANGULAR: TStringField
      FieldName = 'USA_TRIANGULAR'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_GeralUSA_AJUSTE_CUSTO: TStringField
      FieldName = 'USA_AJUSTE_CUSTO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_GeralUSA_COD_VENDEDOR: TStringField
      FieldName = 'USA_COD_VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_GeralUSA_SENHA_CONTRASENHA: TStringField
      FieldName = 'USA_SENHA_CONTRASENHA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_GeralUSA_TIPO_MATERIAL: TStringField
      FieldName = 'USA_TIPO_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_GeralUSA_CUSTO_PROC_ATE: TStringField
      FieldName = 'USA_CUSTO_PROC_ATE'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_GeralPERMITE_CNPJ_DUPLICADO_TRANSP: TStringField
      FieldName = 'PERMITE_CNPJ_DUPLICADO_TRANSP'
      FixedChar = True
      Size = 1
    end
  end
  object dsParametros_Geral: TDataSource
    DataSet = cdsParametros_Geral
    Left = 304
    Top = 225
  end
  object sdsParametros_Est: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PARAMETROS_EST'#13#10'WHERE ID = :ID'
    DataSource = dsParametros_Mestre
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
    Top = 272
    object sdsParametros_EstID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsParametros_EstUSA_RESERVA: TStringField
      FieldName = 'USA_RESERVA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_EstGERAR_LOTE_AUT: TStringField
      FieldName = 'GERAR_LOTE_AUT'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_EstID_LOCAL_ESTOQUE_SEMI: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE_SEMI'
    end
    object sdsParametros_EstID_LOCAL_ESTOQUE_MAT: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE_MAT'
    end
    object sdsParametros_EstID_LOCAL_ESTOQUE_MAT_CONS: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE_MAT_CONS'
    end
    object sdsParametros_EstGERAR_LOTE_AUT_CONSUMO: TStringField
      FieldName = 'GERAR_LOTE_AUT_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_EstID_LOCAL_ESTOQUE_ECOM: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE_ECOM'
    end
    object sdsParametros_EstEND_SALVAR_ARQ: TStringField
      FieldName = 'END_SALVAR_ARQ'
      Size = 200
    end
    object sdsParametros_EstNOME_ARQ: TStringField
      FieldName = 'NOME_ARQ'
      Size = 150
    end
    object sdsParametros_EstMOSTRAR_PCUSTO_MOV: TStringField
      FieldName = 'MOSTRAR_PCUSTO_MOV'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_EstUSA_QTD_INI: TStringField
      FieldName = 'USA_QTD_INI'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_EstMOSTRAR_PCUSTO_TOTAL_MOV: TStringField
      FieldName = 'MOSTRAR_PCUSTO_TOTAL_MOV'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_EstMARCAR_BAIXA_PEDIDO: TStringField
      FieldName = 'MARCAR_BAIXA_PEDIDO'
      Size = 1
    end
    object sdsParametros_EstUSA_RESERVA_PROD: TStringField
      FieldName = 'USA_RESERVA_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_EstUSA_LOCALIZACAO_LOTE: TStringField
      FieldName = 'USA_LOCALIZACAO_LOTE'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_EstCONTROLA_DOC_CLIFORN: TStringField
      FieldName = 'CONTROLA_DOC_CLIFORN'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_EstVERIFICA_ESTOQUE_ENT_PEDIDO: TStringField
      FieldName = 'VERIFICA_ESTOQUE_ENT_PEDIDO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsParametros_Est: TClientDataSet
    Aggregates = <>
    DataSetField = cdsParametrossdsParametros_Est
    Params = <>
    Left = 216
    Top = 270
    object cdsParametros_EstID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsParametros_EstUSA_RESERVA: TStringField
      FieldName = 'USA_RESERVA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_EstGERAR_LOTE_AUT: TStringField
      FieldName = 'GERAR_LOTE_AUT'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_EstID_LOCAL_ESTOQUE_SEMI: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE_SEMI'
    end
    object cdsParametros_EstID_LOCAL_ESTOQUE_MAT: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE_MAT'
    end
    object cdsParametros_EstID_LOCAL_ESTOQUE_MAT_CONS: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE_MAT_CONS'
    end
    object cdsParametros_EstGERAR_LOTE_AUT_CONSUMO: TStringField
      FieldName = 'GERAR_LOTE_AUT_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_EstID_LOCAL_ESTOQUE_ECOM: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE_ECOM'
    end
    object cdsParametros_EstEND_SALVAR_ARQ: TStringField
      FieldName = 'END_SALVAR_ARQ'
      Size = 200
    end
    object cdsParametros_EstNOME_ARQ: TStringField
      FieldName = 'NOME_ARQ'
      Size = 150
    end
    object cdsParametros_EstMOSTRAR_PCUSTO_MOV: TStringField
      FieldName = 'MOSTRAR_PCUSTO_MOV'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_EstUSA_QTD_INI: TStringField
      FieldName = 'USA_QTD_INI'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_EstMOSTRAR_PCUSTO_TOTAL_MOV: TStringField
      FieldName = 'MOSTRAR_PCUSTO_TOTAL_MOV'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_EstMARCAR_BAIXA_PEDIDO: TStringField
      FieldName = 'MARCAR_BAIXA_PEDIDO'
      Size = 1
    end
    object cdsParametros_EstUSA_RESERVA_PROD: TStringField
      FieldName = 'USA_RESERVA_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_EstUSA_LOCALIZACAO_LOTE: TStringField
      FieldName = 'USA_LOCALIZACAO_LOTE'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_EstCONTROLA_DOC_CLIFORN: TStringField
      FieldName = 'CONTROLA_DOC_CLIFORN'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_EstVERIFICA_ESTOQUE_ENT_PEDIDO: TStringField
      FieldName = 'VERIFICA_ESTOQUE_ENT_PEDIDO'
      FixedChar = True
      Size = 1
    end
  end
  object dsParametros_Est: TDataSource
    DataSet = cdsParametros_Est
    Left = 304
    Top = 270
  end
  object sdsParametros_Com: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PARAMETROS_COM'#13#10'WHERE ID = :ID'
    DataSource = dsParametros_Mestre
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
    Top = 315
    object sdsParametros_ComID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsParametros_ComCOMISSAO_DESCONTAR: TStringField
      FieldName = 'COMISSAO_DESCONTAR'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ComPAGAR_SOMENTE_PRIMEIRA: TStringField
      FieldName = 'PAGAR_SOMENTE_PRIMEIRA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ComMOSTRAR_PED: TStringField
      FieldName = 'MOSTRAR_PED'
      FixedChar = True
      Size = 1
    end
  end
  object cdsParametros_Com: TClientDataSet
    Aggregates = <>
    DataSetField = cdsParametrossdsParametros_Com
    Params = <>
    Left = 216
    Top = 315
    object cdsParametros_ComID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsParametros_ComCOMISSAO_DESCONTAR: TStringField
      FieldName = 'COMISSAO_DESCONTAR'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ComPAGAR_SOMENTE_PRIMEIRA: TStringField
      FieldName = 'PAGAR_SOMENTE_PRIMEIRA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ComMOSTRAR_PED: TStringField
      FieldName = 'MOSTRAR_PED'
      FixedChar = True
      Size = 1
    end
  end
  object dsParametros_Com: TDataSource
    DataSet = cdsParametros_Com
    Left = 304
    Top = 315
  end
  object sdsParametros_Imp: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PARAMETROS_IMP'#13#10'WHERE ID = :ID'
    DataSource = dsParametros_Mestre
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
    Top = 359
    object sdsParametros_ImpID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsParametros_ImpSOMAR_VLR_II_NO_IPI: TStringField
      FieldName = 'SOMAR_VLR_II_NO_IPI'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ImpSOMAR_FRETE_ICMS: TStringField
      FieldName = 'SOMAR_FRETE_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ImpSOMAR_VLR_AFRMM_ICMS: TStringField
      FieldName = 'SOMAR_VLR_AFRMM_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ImpSOMAR_VLR_AFRMM_ODESP: TStringField
      FieldName = 'SOMAR_VLR_AFRMM_ODESP'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ImpSOMAR_FRETE_ODESP: TStringField
      FieldName = 'SOMAR_FRETE_ODESP'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ImpSOMAR_NO_ICMS_OUTROS_VLR: TStringField
      FieldName = 'SOMAR_NO_ICMS_OUTROS_VLR'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ImpCOFINS_SOMAR_SEG: TStringField
      FieldName = 'COFINS_SOMAR_SEG'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ImpCOFINS_SOMAR_FRETE: TStringField
      FieldName = 'COFINS_SOMAR_FRETE'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ImpICMS_SOMAR_SEG: TStringField
      FieldName = 'ICMS_SOMAR_SEG'
      FixedChar = True
      Size = 1
    end
  end
  object cdsParametros_Imp: TClientDataSet
    Aggregates = <>
    DataSetField = cdsParametrossdsParametros_Imp
    Params = <>
    Left = 216
    Top = 360
    object cdsParametros_ImpID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsParametros_ImpSOMAR_VLR_II_NO_IPI: TStringField
      FieldName = 'SOMAR_VLR_II_NO_IPI'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ImpSOMAR_FRETE_ICMS: TStringField
      FieldName = 'SOMAR_FRETE_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ImpSOMAR_VLR_AFRMM_ICMS: TStringField
      FieldName = 'SOMAR_VLR_AFRMM_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ImpSOMAR_VLR_AFRMM_ODESP: TStringField
      FieldName = 'SOMAR_VLR_AFRMM_ODESP'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ImpSOMAR_FRETE_ODESP: TStringField
      FieldName = 'SOMAR_FRETE_ODESP'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ImpSOMAR_NO_ICMS_OUTROS_VLR: TStringField
      FieldName = 'SOMAR_NO_ICMS_OUTROS_VLR'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ImpCOFINS_SOMAR_SEG: TStringField
      FieldName = 'COFINS_SOMAR_SEG'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ImpCOFINS_SOMAR_FRETE: TStringField
      FieldName = 'COFINS_SOMAR_FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ImpICMS_SOMAR_SEG: TStringField
      FieldName = 'ICMS_SOMAR_SEG'
      FixedChar = True
      Size = 1
    end
  end
  object dsParametros_Imp: TDataSource
    DataSet = cdsParametros_Imp
    Left = 304
    Top = 359
  end
  object sdsParametros_Ser: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PARAMETROS_SER'#13#10'WHERE ID = :ID'
    DataSource = dsParametros_Mestre
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
    Top = 403
    object sdsParametros_SerID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsParametros_SerIMP_NA_OS_REF_PROD: TStringField
      FieldName = 'IMP_NA_OS_REF_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_SerAGRUPA_CONTRATO_NFSE: TStringField
      FieldName = 'AGRUPA_CONTRATO_NFSE'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_SerUSA_AJUSTE_PRECO: TStringField
      FieldName = 'USA_AJUSTE_PRECO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_SerTIPO_COBRANCA_NFSE: TStringField
      FieldName = 'TIPO_COBRANCA_NFSE'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_SerGERAR_DUPLICATA_CONTRATO: TStringField
      FieldName = 'GERAR_DUPLICATA_CONTRATO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_SerUSA_OS_REDUZIDA: TStringField
      FieldName = 'USA_OS_REDUZIDA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_SerMOSTRAR_SERIE_TROCA: TStringField
      FieldName = 'MOSTRAR_SERIE_TROCA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_SerIMP_CONTRATO_NFSE: TStringField
      FieldName = 'IMP_CONTRATO_NFSE'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_SerMOSTRAR_STATUS: TStringField
      FieldName = 'MOSTRAR_STATUS'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_SerMOSTRA_OS_DEFEITO_ALEG: TStringField
      FieldName = 'MOSTRA_OS_DEFEITO_ALEG'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_SerMOSTRA_OS_DEFEITO_ENC: TStringField
      FieldName = 'MOSTRA_OS_DEFEITO_ENC'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_SerMOSTRA_OS_ACESSORIOS: TStringField
      FieldName = 'MOSTRA_OS_ACESSORIOS'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_SerCID_PRESTACAO_SERV: TStringField
      FieldName = 'CID_PRESTACAO_SERV'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_SerUSA_PROCESSO_OS: TStringField
      FieldName = 'USA_PROCESSO_OS'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_SerCONTROLAR_PROCESSO_ANT: TStringField
      FieldName = 'CONTROLAR_PROCESSO_ANT'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_SerUSA_NATUREZA_CID_NFSE: TStringField
      FieldName = 'USA_NATUREZA_CID_NFSE'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_SerUSA_PROCESSO_SETOR: TStringField
      FieldName = 'USA_PROCESSO_SETOR'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_SerUSA_CALC_PISCOFINS: TStringField
      FieldName = 'USA_CALC_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_SerLIB_QTD_PEDIDO: TStringField
      FieldName = 'LIB_QTD_PEDIDO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsParametros_Ser: TClientDataSet
    Aggregates = <>
    DataSetField = cdsParametrossdsParametros_Ser
    Params = <>
    Left = 216
    Top = 403
    object cdsParametros_SerID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsParametros_SerIMP_NA_OS_REF_PROD: TStringField
      FieldName = 'IMP_NA_OS_REF_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_SerAGRUPA_CONTRATO_NFSE: TStringField
      FieldName = 'AGRUPA_CONTRATO_NFSE'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_SerUSA_AJUSTE_PRECO: TStringField
      FieldName = 'USA_AJUSTE_PRECO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_SerTIPO_COBRANCA_NFSE: TStringField
      FieldName = 'TIPO_COBRANCA_NFSE'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_SerGERAR_DUPLICATA_CONTRATO: TStringField
      FieldName = 'GERAR_DUPLICATA_CONTRATO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_SerUSA_OS_REDUZIDA: TStringField
      FieldName = 'USA_OS_REDUZIDA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_SerMOSTRAR_SERIE_TROCA: TStringField
      FieldName = 'MOSTRAR_SERIE_TROCA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_SerIMP_CONTRATO_NFSE: TStringField
      FieldName = 'IMP_CONTRATO_NFSE'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_SerMOSTRAR_STATUS: TStringField
      FieldName = 'MOSTRAR_STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_SerMOSTRA_OS_DEFEITO_ALEG: TStringField
      FieldName = 'MOSTRA_OS_DEFEITO_ALEG'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_SerMOSTRA_OS_DEFEITO_ENC: TStringField
      FieldName = 'MOSTRA_OS_DEFEITO_ENC'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_SerMOSTRA_OS_ACESSORIOS: TStringField
      FieldName = 'MOSTRA_OS_ACESSORIOS'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_SerCID_PRESTACAO_SERV: TStringField
      FieldName = 'CID_PRESTACAO_SERV'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_SerUSA_PROCESSO_OS: TStringField
      FieldName = 'USA_PROCESSO_OS'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_SerCONTROLAR_PROCESSO_ANT: TStringField
      FieldName = 'CONTROLAR_PROCESSO_ANT'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_SerUSA_NATUREZA_CID_NFSE: TStringField
      FieldName = 'USA_NATUREZA_CID_NFSE'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_SerUSA_PROCESSO_SETOR: TStringField
      FieldName = 'USA_PROCESSO_SETOR'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_SerUSA_CALC_PISCOFINS: TStringField
      FieldName = 'USA_CALC_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_SerLIB_QTD_PEDIDO: TStringField
      FieldName = 'LIB_QTD_PEDIDO'
      FixedChar = True
      Size = 1
    end
  end
  object dsParametros_Ser: TDataSource
    DataSet = cdsParametros_Ser
    Left = 304
    Top = 403
  end
  object sdsParametros_NFe: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PARAMETROS_NFE'#13#10'WHERE ID = :ID'
    DataSource = dsParametros_Mestre
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
    Top = 448
    object sdsParametros_NFeID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsParametros_NFeSOMAR_IPI_NO_ICMS: TStringField
      FieldName = 'SOMAR_IPI_NO_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeOBS_EMAIL_NFE: TMemoField
      FieldName = 'OBS_EMAIL_NFE'
      BlobType = ftMemo
      Size = 1
    end
    object sdsParametros_NFeSOMAR_IPI_NO_ICM_TC: TStringField
      FieldName = 'SOMAR_IPI_NO_ICM_TC'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeIMP_COMBINACAO_NFE: TStringField
      FieldName = 'IMP_COMBINACAO_NFE'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeIMP_RODAPE_DANFE_CLI: TStringField
      FieldName = 'IMP_RODAPE_DANFE_CLI'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeUSA_OPCAO_IMP_COD_CLI: TStringField
      FieldName = 'USA_OPCAO_IMP_COD_CLI'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeIMP_END_COBRANCA: TStringField
      FieldName = 'IMP_END_COBRANCA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeGRAVAR_TAB_TAMANHO: TStringField
      FieldName = 'GRAVAR_TAB_TAMANHO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeUSA_SEL_PEDIDO_TAM: TStringField
      FieldName = 'USA_SEL_PEDIDO_TAM'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeCOPIAR_QTD_REST_ADEVOLVER: TStringField
      FieldName = 'COPIAR_QTD_REST_ADEVOLVER'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeIMP_CONSUMO_NOTA: TStringField
      FieldName = 'IMP_CONSUMO_NOTA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeOBS_DADOS_ADI_DESONERACAO: TStringField
      FieldName = 'OBS_DADOS_ADI_DESONERACAO'
      Size = 100
    end
    object sdsParametros_NFeDESC_ICMS_DESONERADO: TStringField
      FieldName = 'DESC_ICMS_DESONERADO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeAJUSTA_VARIACAO: TStringField
      FieldName = 'AJUSTA_VARIACAO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeSOMAR_FRETE_ICMS_NAC: TStringField
      FieldName = 'SOMAR_FRETE_ICMS_NAC'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeSOMAR_FRETE_NO_ICMS_TC: TStringField
      FieldName = 'SOMAR_FRETE_NO_ICMS_TC'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeCOPIAR_VLR_FRETE_PED: TStringField
      FieldName = 'COPIAR_VLR_FRETE_PED'
      Size = 1
    end
    object sdsParametros_NFeALTERAR_NOME_PROD: TStringField
      FieldName = 'ALTERAR_NOME_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeMOSTRAR_OC_NO_ITEM: TStringField
      FieldName = 'MOSTRAR_OC_NO_ITEM'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeMOSTRAR_OS_NO_ITEM: TStringField
      FieldName = 'MOSTRAR_OS_NO_ITEM'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeMOSTRAR_VLR_FRETE_CONS: TStringField
      FieldName = 'MOSTRAR_VLR_FRETE_CONS'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeMOSTRAR_VLR_DEVOL_CONS: TStringField
      FieldName = 'MOSTRAR_VLR_DEVOL_CONS'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeUSA_NOMEPROD_FORN_NFE: TStringField
      FieldName = 'USA_NOMEPROD_FORN_NFE'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeIMP_QTDE_PRODUTO: TStringField
      FieldName = 'IMP_QTDE_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeUSA_PROD_NTE: TStringField
      FieldName = 'USA_PROD_NTE'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeUSA_PROD_CLI_PED: TStringField
      FieldName = 'USA_PROD_CLI_PED'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeENDERECO_ENTREGA_BRANCO: TStringField
      FieldName = 'ENDERECO_ENTREGA_BRANCO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeAVISA_GNRE: TStringField
      FieldName = 'AVISA_GNRE'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeIMP_OC: TStringField
      FieldName = 'IMP_OC'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeIMP_USUARIO: TStringField
      FieldName = 'IMP_USUARIO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFePERMITE_IMPORTAR_S_CLIENTE: TStringField
      FieldName = 'PERMITE_IMPORTAR_S_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeCOPIA_PED_IMPOSTO: TStringField
      FieldName = 'COPIA_PED_IMPOSTO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeENVAR_CODBARRA: TStringField
      FieldName = 'ENVAR_CODBARRA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeCALC_VOLUME_QTD: TStringField
      FieldName = 'CALC_VOLUME_QTD'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeMSG_SIMPLES_COMP: TStringField
      FieldName = 'MSG_SIMPLES_COMP'
      Size = 100
    end
    object sdsParametros_NFeUSA_PREFAT: TStringField
      FieldName = 'USA_PREFAT'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeSERIE_CPF: TStringField
      FieldName = 'SERIE_CPF'
      Size = 3
    end
    object sdsParametros_NFeTIPO_ATENDIMENTO: TSmallintField
      FieldName = 'TIPO_ATENDIMENTO'
    end
    object sdsParametros_NFeVERSAONFCE: TStringField
      FieldName = 'VERSAONFCE'
      Size = 10
    end
    object sdsParametros_NFeENVIAR_VPAG_SEM_VLR: TIntegerField
      FieldName = 'ENVIAR_VPAG_SEM_VLR'
    end
    object sdsParametros_NFeTOKEN_IBPT: TStringField
      FieldName = 'TOKEN_IBPT'
      Size = 130
    end
    object sdsParametros_NFeVERIFICA_IBPT_MENU: TStringField
      FieldName = 'VERIFICA_IBPT_MENU'
      Size = 1
    end
    object sdsParametros_NFeIMPRIMIR_TOTAL_VALE: TStringField
      FieldName = 'IMPRIMIR_TOTAL_VALE'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeCOPIAR_RECNF: TStringField
      FieldName = 'COPIAR_RECNF'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeEND_ARQUIVO_SUFRAMA: TStringField
      FieldName = 'END_ARQUIVO_SUFRAMA'
      Size = 250
    end
    object sdsParametros_NFeVERSAO_SUFRAMA: TStringField
      FieldName = 'VERSAO_SUFRAMA'
      Size = 10
    end
    object sdsParametros_NFeDESCONTA_ICMS_DESON: TStringField
      FieldName = 'DESCONTA_ICMS_DESON'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeSOMAR_FRETE_IPI: TStringField
      FieldName = 'SOMAR_FRETE_IPI'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NFeCALCULAR_DIFAL: TStringField
      FieldName = 'CALCULAR_DIFAL'
      FixedChar = True
      Size = 1
    end
  end
  object cdsParametros_NFe: TClientDataSet
    Aggregates = <>
    DataSetField = cdsParametrossdsParametros_NFe
    Params = <>
    Left = 216
    Top = 446
    object cdsParametros_NFeID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsParametros_NFeSOMAR_IPI_NO_ICMS: TStringField
      FieldName = 'SOMAR_IPI_NO_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeOBS_EMAIL_NFE: TMemoField
      FieldName = 'OBS_EMAIL_NFE'
      BlobType = ftMemo
      Size = 1
    end
    object cdsParametros_NFeSOMAR_IPI_NO_ICM_TC: TStringField
      FieldName = 'SOMAR_IPI_NO_ICM_TC'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeIMP_COMBINACAO_NFE: TStringField
      FieldName = 'IMP_COMBINACAO_NFE'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeIMP_RODAPE_DANFE_CLI: TStringField
      FieldName = 'IMP_RODAPE_DANFE_CLI'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeUSA_OPCAO_IMP_COD_CLI: TStringField
      FieldName = 'USA_OPCAO_IMP_COD_CLI'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeIMP_END_COBRANCA: TStringField
      FieldName = 'IMP_END_COBRANCA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeGRAVAR_TAB_TAMANHO: TStringField
      FieldName = 'GRAVAR_TAB_TAMANHO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeUSA_SEL_PEDIDO_TAM: TStringField
      FieldName = 'USA_SEL_PEDIDO_TAM'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeCOPIAR_QTD_REST_ADEVOLVER: TStringField
      FieldName = 'COPIAR_QTD_REST_ADEVOLVER'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeIMP_CONSUMO_NOTA: TStringField
      FieldName = 'IMP_CONSUMO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeOBS_DADOS_ADI_DESONERACAO: TStringField
      FieldName = 'OBS_DADOS_ADI_DESONERACAO'
      Size = 100
    end
    object cdsParametros_NFeDESC_ICMS_DESONERADO: TStringField
      FieldName = 'DESC_ICMS_DESONERADO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeAJUSTA_VARIACAO: TStringField
      FieldName = 'AJUSTA_VARIACAO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeSOMAR_FRETE_ICMS_NAC: TStringField
      FieldName = 'SOMAR_FRETE_ICMS_NAC'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeSOMAR_FRETE_NO_ICMS_TC: TStringField
      FieldName = 'SOMAR_FRETE_NO_ICMS_TC'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeCOPIAR_VLR_FRETE_PED: TStringField
      FieldName = 'COPIAR_VLR_FRETE_PED'
      Size = 1
    end
    object cdsParametros_NFeALTERAR_NOME_PROD: TStringField
      FieldName = 'ALTERAR_NOME_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeMOSTRAR_OC_NO_ITEM: TStringField
      FieldName = 'MOSTRAR_OC_NO_ITEM'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeMOSTRAR_OS_NO_ITEM: TStringField
      FieldName = 'MOSTRAR_OS_NO_ITEM'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeMOSTRAR_VLR_FRETE_CONS: TStringField
      FieldName = 'MOSTRAR_VLR_FRETE_CONS'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeMOSTRAR_VLR_DEVOL_CONS: TStringField
      FieldName = 'MOSTRAR_VLR_DEVOL_CONS'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeUSA_NOMEPROD_FORN_NFE: TStringField
      FieldName = 'USA_NOMEPROD_FORN_NFE'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeIMP_QTDE_PRODUTO: TStringField
      FieldName = 'IMP_QTDE_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeUSA_PROD_NTE: TStringField
      FieldName = 'USA_PROD_NTE'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeUSA_PROD_CLI_PED: TStringField
      FieldName = 'USA_PROD_CLI_PED'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeENDERECO_ENTREGA_BRANCO: TStringField
      FieldName = 'ENDERECO_ENTREGA_BRANCO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeAVISA_GNRE: TStringField
      FieldName = 'AVISA_GNRE'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeIMP_OC: TStringField
      FieldName = 'IMP_OC'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeIMP_USUARIO: TStringField
      FieldName = 'IMP_USUARIO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFePERMITE_IMPORTAR_S_CLIENTE: TStringField
      FieldName = 'PERMITE_IMPORTAR_S_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeCOPIA_PED_IMPOSTO: TStringField
      FieldName = 'COPIA_PED_IMPOSTO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeENVAR_CODBARRA: TStringField
      FieldName = 'ENVAR_CODBARRA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeCALC_VOLUME_QTD: TStringField
      FieldName = 'CALC_VOLUME_QTD'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeMSG_SIMPLES_COMP: TStringField
      FieldName = 'MSG_SIMPLES_COMP'
      Size = 100
    end
    object cdsParametros_NFeUSA_PREFAT: TStringField
      FieldName = 'USA_PREFAT'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeSERIE_CPF: TStringField
      FieldName = 'SERIE_CPF'
      Size = 3
    end
    object cdsParametros_NFeTIPO_ATENDIMENTO: TSmallintField
      FieldName = 'TIPO_ATENDIMENTO'
    end
    object cdsParametros_NFeVERSAONFCE: TStringField
      FieldName = 'VERSAONFCE'
      Size = 10
    end
    object cdsParametros_NFeENVIAR_VPAG_SEM_VLR: TIntegerField
      FieldName = 'ENVIAR_VPAG_SEM_VLR'
    end
    object cdsParametros_NFeTOKEN_IBPT: TStringField
      FieldName = 'TOKEN_IBPT'
      Size = 130
    end
    object cdsParametros_NFeVERIFICA_IBPT_MENU: TStringField
      FieldName = 'VERIFICA_IBPT_MENU'
      Size = 1
    end
    object cdsParametros_NFeIMPRIMIR_TOTAL_VALE: TStringField
      FieldName = 'IMPRIMIR_TOTAL_VALE'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeCOPIAR_RECNF: TStringField
      FieldName = 'COPIAR_RECNF'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeEND_ARQUIVO_SUFRAMA: TStringField
      FieldName = 'END_ARQUIVO_SUFRAMA'
      Size = 250
    end
    object cdsParametros_NFeVERSAO_SUFRAMA: TStringField
      FieldName = 'VERSAO_SUFRAMA'
      Size = 10
    end
    object cdsParametros_NFeDESCONTA_ICMS_DESON: TStringField
      FieldName = 'DESCONTA_ICMS_DESON'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeSOMAR_FRETE_IPI: TStringField
      FieldName = 'SOMAR_FRETE_IPI'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NFeCALCULAR_DIFAL: TStringField
      FieldName = 'CALCULAR_DIFAL'
      FixedChar = True
      Size = 1
    end
  end
  object dsParametros_NFe: TDataSource
    DataSet = cdsParametros_NFe
    Left = 304
    Top = 447
  end
  object sdsParametros_Cta_Orc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PARAMETROS_CTA_ORC'#13#10'WHERE ID = :ID'
    DataSource = dsParametros_Mestre
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
    Top = 491
    object sdsParametros_Cta_OrcID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsParametros_Cta_OrcID_CONTA_ORC_RECEITA: TIntegerField
      FieldName = 'ID_CONTA_ORC_RECEITA'
    end
    object sdsParametros_Cta_OrcID_CONTA_ORC_DESPESA: TIntegerField
      FieldName = 'ID_CONTA_ORC_DESPESA'
    end
    object sdsParametros_Cta_OrcID_CONTA_ORC_MULTA_PAG: TIntegerField
      FieldName = 'ID_CONTA_ORC_MULTA_PAG'
    end
    object sdsParametros_Cta_OrcID_CONTA_ORC_MULTA_REC: TIntegerField
      FieldName = 'ID_CONTA_ORC_MULTA_REC'
    end
    object sdsParametros_Cta_OrcUSA_VALOR_ORC: TStringField
      FieldName = 'USA_VALOR_ORC'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_Cta_OrcMOSTRAR_PESSOA: TStringField
      FieldName = 'MOSTRAR_PESSOA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_Cta_OrcUSA_SINTETICA: TStringField
      FieldName = 'USA_SINTETICA'
      FixedChar = True
      Size = 1
    end
  end
  object cdsParametros_Cta_Orc: TClientDataSet
    Aggregates = <>
    DataSetField = cdsParametrossdsParametros_Cta_Orc
    Params = <>
    Left = 216
    Top = 491
    object cdsParametros_Cta_OrcID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsParametros_Cta_OrcID_CONTA_ORC_RECEITA: TIntegerField
      FieldName = 'ID_CONTA_ORC_RECEITA'
    end
    object cdsParametros_Cta_OrcID_CONTA_ORC_DESPESA: TIntegerField
      FieldName = 'ID_CONTA_ORC_DESPESA'
    end
    object cdsParametros_Cta_OrcID_CONTA_ORC_MULTA_PAG: TIntegerField
      FieldName = 'ID_CONTA_ORC_MULTA_PAG'
    end
    object cdsParametros_Cta_OrcID_CONTA_ORC_MULTA_REC: TIntegerField
      FieldName = 'ID_CONTA_ORC_MULTA_REC'
    end
    object cdsParametros_Cta_OrcUSA_VALOR_ORC: TStringField
      FieldName = 'USA_VALOR_ORC'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_Cta_OrcMOSTRAR_PESSOA: TStringField
      FieldName = 'MOSTRAR_PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_Cta_OrcUSA_SINTETICA: TStringField
      FieldName = 'USA_SINTETICA'
      FixedChar = True
      Size = 1
    end
  end
  object dsParametros_Cta_Orc: TDataSource
    DataSet = cdsParametros_Cta_Orc
    Left = 304
    Top = 491
  end
  object sdsParametros_Prod: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PARAMETROS_PROD'#13#10'WHERE ID = :ID'
    DataSource = dsParametros_Mestre
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
    Top = 535
    object sdsParametros_ProdID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsParametros_ProdGERAR_COD_BARRA_INT: TStringField
      FieldName = 'GERAR_COD_BARRA_INT'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ProdUSA_PRODUTO_FILIAL: TStringField
      FieldName = 'USA_PRODUTO_FILIAL'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ProdSENHA_ALT_PROD_MOV: TStringField
      FieldName = 'SENHA_ALT_PROD_MOV'
      Size = 15
    end
    object sdsParametros_ProdMOSTRAR_OBS_CONSULTA: TStringField
      FieldName = 'MOSTRAR_OBS_CONSULTA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ProdMARCAR_BAIXAR_ESTOQUE_MAT: TStringField
      FieldName = 'MARCAR_BAIXAR_ESTOQUE_MAT'
      Size = 1
    end
    object sdsParametros_ProdUSA_MEDIDA: TStringField
      FieldName = 'USA_MEDIDA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ProdUSA_QTD_EMBALAGEM: TStringField
      FieldName = 'USA_QTD_EMBALAGEM'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ProdOPCAO_APLICAR_MARGEM: TStringField
      FieldName = 'OPCAO_APLICAR_MARGEM'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ProdPERC_MARGEM_PRECO: TFloatField
      FieldName = 'PERC_MARGEM_PRECO'
    end
    object sdsParametros_ProdOPCAO_PRECO_CONSUMO: TStringField
      FieldName = 'OPCAO_PRECO_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ProdGRAVA_CONSUMO_PRVENDA: TStringField
      FieldName = 'GRAVA_CONSUMO_PRVENDA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ProdQTD_CARACTER_NIVEL_GR: TIntegerField
      FieldName = 'QTD_CARACTER_NIVEL_GR'
    end
    object sdsParametros_ProdUSA_DESC_MAXIMO: TStringField
      FieldName = 'USA_DESC_MAXIMO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ProdCONS_PROD_USA_PERC: TStringField
      FieldName = 'CONS_PROD_USA_PERC'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ProdID_PRODUTO_GENERICO: TIntegerField
      FieldName = 'ID_PRODUTO_GENERICO'
    end
    object sdsParametros_ProdPRODUTO_PRECO_COR: TStringField
      FieldName = 'PRODUTO_PRECO_COR'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ProdUSA_CONSUMO_COMB: TStringField
      FieldName = 'USA_CONSUMO_COMB'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ProdUSA_PICTOGRAMA: TStringField
      FieldName = 'USA_PICTOGRAMA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ProdUSA_ID_MATERIAL_CONS: TStringField
      FieldName = 'USA_ID_MATERIAL_CONS'
      Size = 1
    end
    object sdsParametros_ProdUSA_TAM_INDIVIDUAL: TStringField
      FieldName = 'USA_TAM_INDIVIDUAL'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ProdCONT_TIPO_PROD: TStringField
      FieldName = 'CONT_TIPO_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ProdUSA_LOTE_PROD: TStringField
      FieldName = 'USA_LOTE_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ProdGERAR_REF_GRUPO: TStringField
      FieldName = 'GERAR_REF_GRUPO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ProdQTD_DIGITOS_REF: TIntegerField
      FieldName = 'QTD_DIGITOS_REF'
    end
    object sdsParametros_ProdUSA_LARG: TStringField
      FieldName = 'USA_LARG'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ProdINF_CBARRA_MANUAL: TStringField
      FieldName = 'INF_CBARRA_MANUAL'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ProdEXCLUI_PROD_SEL: TStringField
      FieldName = 'EXCLUI_PROD_SEL'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ProdMOSTRA_PROD_TPRECO: TStringField
      FieldName = 'MOSTRA_PROD_TPRECO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ProdUSA_REF2: TStringField
      FieldName = 'USA_REF2'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ProdPERC_CALCULO_PED: TFloatField
      FieldName = 'PERC_CALCULO_PED'
    end
    object sdsParametros_ProdGRAVAR_PRECO_COMB: TStringField
      FieldName = 'GRAVAR_PRECO_COMB'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ProdGRAVAR_PRIMEIRO_MAT: TStringField
      FieldName = 'GRAVAR_PRIMEIRO_MAT'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ProdSENHA_PROD_CUSTO: TStringField
      FieldName = 'SENHA_PROD_CUSTO'
      Size = 10
    end
    object sdsParametros_ProdID_POSICAO_PADRAO: TIntegerField
      FieldName = 'ID_POSICAO_PADRAO'
    end
    object sdsParametros_ProdATUALIZAR_COMB: TStringField
      FieldName = 'ATUALIZAR_COMB'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ProdMOSTRAR_TAM_CALC: TStringField
      FieldName = 'MOSTRAR_TAM_CALC'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ProdUSA_TAM_REFER_GRADE: TStringField
      FieldName = 'USA_TAM_REFER_GRADE'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ProdUSA_MAQUINA: TStringField
      FieldName = 'USA_MAQUINA'
      Size = 1
    end
    object sdsParametros_ProdMOSTRAR_FORMA: TStringField
      FieldName = 'MOSTRAR_FORMA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_ProdUSA_CONSTRUCAO: TStringField
      FieldName = 'USA_CONSTRUCAO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsParametros_Prod: TClientDataSet
    Aggregates = <>
    DataSetField = cdsParametrossdsParametros_Prod
    Params = <>
    Left = 216
    Top = 535
    object cdsParametros_ProdID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsParametros_ProdGERAR_COD_BARRA_INT: TStringField
      FieldName = 'GERAR_COD_BARRA_INT'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ProdUSA_PRODUTO_FILIAL: TStringField
      FieldName = 'USA_PRODUTO_FILIAL'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ProdSENHA_ALT_PROD_MOV: TStringField
      FieldName = 'SENHA_ALT_PROD_MOV'
      Size = 15
    end
    object cdsParametros_ProdMOSTRAR_OBS_CONSULTA: TStringField
      FieldName = 'MOSTRAR_OBS_CONSULTA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ProdMARCAR_BAIXAR_ESTOQUE_MAT: TStringField
      FieldName = 'MARCAR_BAIXAR_ESTOQUE_MAT'
      Size = 1
    end
    object cdsParametros_ProdUSA_MEDIDA: TStringField
      FieldName = 'USA_MEDIDA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ProdUSA_QTD_EMBALAGEM: TStringField
      FieldName = 'USA_QTD_EMBALAGEM'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ProdOPCAO_APLICAR_MARGEM: TStringField
      FieldName = 'OPCAO_APLICAR_MARGEM'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ProdPERC_MARGEM_PRECO: TFloatField
      FieldName = 'PERC_MARGEM_PRECO'
    end
    object cdsParametros_ProdOPCAO_PRECO_CONSUMO: TStringField
      FieldName = 'OPCAO_PRECO_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ProdGRAVA_CONSUMO_PRVENDA: TStringField
      FieldName = 'GRAVA_CONSUMO_PRVENDA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ProdQTD_CARACTER_NIVEL_GR: TIntegerField
      FieldName = 'QTD_CARACTER_NIVEL_GR'
    end
    object cdsParametros_ProdUSA_DESC_MAXIMO: TStringField
      FieldName = 'USA_DESC_MAXIMO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ProdCONS_PROD_USA_PERC: TStringField
      FieldName = 'CONS_PROD_USA_PERC'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ProdID_PRODUTO_GENERICO: TIntegerField
      FieldName = 'ID_PRODUTO_GENERICO'
    end
    object cdsParametros_ProdPRODUTO_PRECO_COR: TStringField
      FieldName = 'PRODUTO_PRECO_COR'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ProdUSA_CONSUMO_COMB: TStringField
      FieldName = 'USA_CONSUMO_COMB'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ProdUSA_PICTOGRAMA: TStringField
      FieldName = 'USA_PICTOGRAMA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ProdUSA_ID_MATERIAL_CONS: TStringField
      FieldName = 'USA_ID_MATERIAL_CONS'
      Size = 1
    end
    object cdsParametros_ProdUSA_TAM_INDIVIDUAL: TStringField
      FieldName = 'USA_TAM_INDIVIDUAL'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ProdCONT_TIPO_PROD: TStringField
      FieldName = 'CONT_TIPO_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ProdUSA_LOTE_PROD: TStringField
      FieldName = 'USA_LOTE_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ProdGERAR_REF_GRUPO: TStringField
      FieldName = 'GERAR_REF_GRUPO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ProdQTD_DIGITOS_REF: TIntegerField
      FieldName = 'QTD_DIGITOS_REF'
    end
    object cdsParametros_ProdUSA_LARG: TStringField
      FieldName = 'USA_LARG'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ProdINF_CBARRA_MANUAL: TStringField
      FieldName = 'INF_CBARRA_MANUAL'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ProdEXCLUI_PROD_SEL: TStringField
      FieldName = 'EXCLUI_PROD_SEL'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ProdMOSTRA_PROD_TPRECO: TStringField
      FieldName = 'MOSTRA_PROD_TPRECO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ProdUSA_REF2: TStringField
      FieldName = 'USA_REF2'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ProdPERC_CALCULO_PED: TFloatField
      FieldName = 'PERC_CALCULO_PED'
    end
    object cdsParametros_ProdGRAVAR_PRECO_COMB: TStringField
      FieldName = 'GRAVAR_PRECO_COMB'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ProdGRAVAR_PRIMEIRO_MAT: TStringField
      FieldName = 'GRAVAR_PRIMEIRO_MAT'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ProdSENHA_PROD_CUSTO: TStringField
      FieldName = 'SENHA_PROD_CUSTO'
      Size = 10
    end
    object cdsParametros_ProdID_POSICAO_PADRAO: TIntegerField
      FieldName = 'ID_POSICAO_PADRAO'
    end
    object cdsParametros_ProdATUALIZAR_COMB: TStringField
      FieldName = 'ATUALIZAR_COMB'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ProdMOSTRAR_TAM_CALC: TStringField
      FieldName = 'MOSTRAR_TAM_CALC'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ProdUSA_TAM_REFER_GRADE: TStringField
      FieldName = 'USA_TAM_REFER_GRADE'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ProdUSA_MAQUINA: TStringField
      FieldName = 'USA_MAQUINA'
      Size = 1
    end
    object cdsParametros_ProdMOSTRAR_FORMA: TStringField
      FieldName = 'MOSTRAR_FORMA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_ProdUSA_CONSTRUCAO: TStringField
      FieldName = 'USA_CONSTRUCAO'
      FixedChar = True
      Size = 1
    end
  end
  object dsParametros_Prod: TDataSource
    DataSet = cdsParametros_Prod
    Left = 304
    Top = 535
  end
  object sdsParametros_OC: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PARAMETROS_OC'#13#10'WHERE ID = :ID'
    DataSource = dsParametros_Mestre
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
    Top = 579
    object sdsParametros_OCID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsParametros_OCOBS_OC: TMemoField
      FieldName = 'OBS_OC'
      BlobType = ftMemo
      Size = 1
    end
    object sdsParametros_OCUSAR_GERAR_COBRANCA: TStringField
      FieldName = 'USAR_GERAR_COBRANCA'
      Size = 1
    end
    object sdsParametros_OCPERMITIR_ENT_MAIOR: TStringField
      FieldName = 'PERMITIR_ENT_MAIOR'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_OCUSA_NOMEPROD_FORN_OC: TStringField
      FieldName = 'USA_NOMEPROD_FORN_OC'
      FixedChar = True
      Size = 1
    end
  end
  object cdsParametros_OC: TClientDataSet
    Aggregates = <>
    DataSetField = cdsParametrossdsParametros_OC
    Params = <>
    Left = 216
    Top = 579
    object cdsParametros_OCID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsParametros_OCOBS_OC: TMemoField
      FieldName = 'OBS_OC'
      BlobType = ftMemo
      Size = 1
    end
    object cdsParametros_OCUSAR_GERAR_COBRANCA: TStringField
      FieldName = 'USAR_GERAR_COBRANCA'
      Size = 1
    end
    object cdsParametros_OCPERMITIR_ENT_MAIOR: TStringField
      FieldName = 'PERMITIR_ENT_MAIOR'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_OCUSA_NOMEPROD_FORN_OC: TStringField
      FieldName = 'USA_NOMEPROD_FORN_OC'
      FixedChar = True
      Size = 1
    end
  end
  object dsParametros_OC: TDataSource
    DataSet = cdsParametros_OC
    Left = 304
    Top = 579
  end
  object sdsParametros_RecXML: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PARAMETROS_RECXML'#13#10'WHERE ID = :ID'
    DataSource = dsParametros_Mestre
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
    Top = 627
    object sdsParametros_RecXMLID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsParametros_RecXMLPROCURAR_REM_NOME_PROD: TStringField
      FieldName = 'PROCURAR_REM_NOME_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_RecXMLUSA_OPCAO_NOTA_LANC: TStringField
      FieldName = 'USA_OPCAO_NOTA_LANC'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_RecXMLATUALIZAR_NCM: TStringField
      FieldName = 'ATUALIZAR_NCM'
      Size = 1
    end
    object sdsParametros_RecXMLMOSTRAR_VLR_VENDA: TStringField
      FieldName = 'MOSTRAR_VLR_VENDA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_RecXMLATUALIZAR_CEST: TStringField
      FieldName = 'ATUALIZAR_CEST'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_RecXMLUSA_DIRETORIO_COPIADO: TStringField
      FieldName = 'USA_DIRETORIO_COPIADO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_RecXMLUSA_OC_XML: TStringField
      FieldName = 'USA_OC_XML'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_RecXMLPROCURAR_POR_CBARRA: TStringField
      FieldName = 'PROCURAR_POR_CBARRA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_RecXMLCONTROLAR_GRAVA_PROD: TStringField
      FieldName = 'CONTROLAR_GRAVA_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_RecXMLUSA_REF_SEQUENCIAL: TStringField
      FieldName = 'USA_REF_SEQUENCIAL'
      FixedChar = True
      Size = 1
    end
  end
  object cdsParametros_RecXML: TClientDataSet
    Aggregates = <>
    DataSetField = cdsParametrossdsParametros_RecXML
    Params = <>
    Left = 224
    Top = 627
    object cdsParametros_RecXMLID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsParametros_RecXMLPROCURAR_REM_NOME_PROD: TStringField
      FieldName = 'PROCURAR_REM_NOME_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_RecXMLUSA_OPCAO_NOTA_LANC: TStringField
      FieldName = 'USA_OPCAO_NOTA_LANC'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_RecXMLATUALIZAR_NCM: TStringField
      FieldName = 'ATUALIZAR_NCM'
      Size = 1
    end
    object cdsParametros_RecXMLMOSTRAR_VLR_VENDA: TStringField
      FieldName = 'MOSTRAR_VLR_VENDA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_RecXMLATUALIZAR_CEST: TStringField
      FieldName = 'ATUALIZAR_CEST'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_RecXMLUSA_DIRETORIO_COPIADO: TStringField
      FieldName = 'USA_DIRETORIO_COPIADO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_RecXMLUSA_OC_XML: TStringField
      FieldName = 'USA_OC_XML'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_RecXMLPROCURAR_POR_CBARRA: TStringField
      FieldName = 'PROCURAR_POR_CBARRA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_RecXMLCONTROLAR_GRAVA_PROD: TStringField
      FieldName = 'CONTROLAR_GRAVA_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_RecXMLUSA_REF_SEQUENCIAL: TStringField
      FieldName = 'USA_REF_SEQUENCIAL'
      FixedChar = True
      Size = 1
    end
  end
  object dsParametros_RecXML: TDataSource
    DataSet = cdsParametros_RecXML
    Left = 304
    Top = 627
  end
  object sdsParametros_FCI: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PARAMETROS_FCI'#13#10'WHERE ID = :ID'
    DataSource = dsParametros_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 400
    Top = 91
    object sdsParametros_FCIID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsParametros_FCIENDERECO_ARQ: TStringField
      FieldName = 'ENDERECO_ARQ'
      Size = 200
    end
    object sdsParametros_FCIVERSAO_LEIAUTE: TStringField
      FieldName = 'VERSAO_LEIAUTE'
      Size = 4
    end
  end
  object cdsParametros_FCI: TClientDataSet
    Aggregates = <>
    DataSetField = cdsParametrossdsParametros_FCI
    Params = <>
    Left = 472
    Top = 91
    object cdsParametros_FCIID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsParametros_FCIENDERECO_ARQ: TStringField
      FieldName = 'ENDERECO_ARQ'
      Size = 200
    end
    object cdsParametros_FCIVERSAO_LEIAUTE: TStringField
      FieldName = 'VERSAO_LEIAUTE'
      Size = 4
    end
  end
  object dsParametros_FCI: TDataSource
    DataSet = cdsParametros_FCI
    Left = 528
    Top = 91
  end
  object sdsParametros_NTE: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PARAMETROS_NTE'#13#10'WHERE ID = :ID'
    DataSource = dsParametros_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 400
    Top = 147
    object sdsParametros_NTEID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsParametros_NTESOMAR_IPI_NO_CUSTO: TStringField
      FieldName = 'SOMAR_IPI_NO_CUSTO'
      Size = 1
    end
    object sdsParametros_NTESOMAR_FRETE_NO_CUSTO: TStringField
      FieldName = 'SOMAR_FRETE_NO_CUSTO'
      Size = 1
    end
    object sdsParametros_NTEATUALIZAR_CUSTO: TStringField
      FieldName = 'ATUALIZAR_CUSTO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NTESOMAR_ST_NO_CUSTO: TStringField
      FieldName = 'SOMAR_ST_NO_CUSTO'
      Size = 1
    end
    object sdsParametros_NTESUB_PISCOFINS_CUSTO: TStringField
      FieldName = 'SUB_PISCOFINS_CUSTO'
      Size = 1
    end
    object sdsParametros_NTESUB_ICMS_CUSTO: TStringField
      FieldName = 'SUB_ICMS_CUSTO'
      Size = 1
    end
    object sdsParametros_NTEMOSTRAR_FINALIDADE: TStringField
      FieldName = 'MOSTRAR_FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NTEUSA_CONTA_ORCAMENTO_ITENS: TStringField
      FieldName = 'USA_CONTA_ORCAMENTO_ITENS'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_NTEUSA_CENTRO_CUSTO: TStringField
      FieldName = 'USA_CENTRO_CUSTO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsParametros_NTE: TClientDataSet
    Aggregates = <>
    DataSetField = cdsParametrossdsParametros_NTE
    Params = <>
    Left = 472
    Top = 147
    object cdsParametros_NTEID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsParametros_NTESOMAR_IPI_NO_CUSTO: TStringField
      FieldName = 'SOMAR_IPI_NO_CUSTO'
      Size = 1
    end
    object cdsParametros_NTESOMAR_FRETE_NO_CUSTO: TStringField
      FieldName = 'SOMAR_FRETE_NO_CUSTO'
      Size = 1
    end
    object cdsParametros_NTEATUALIZAR_CUSTO: TStringField
      FieldName = 'ATUALIZAR_CUSTO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NTESOMAR_ST_NO_CUSTO: TStringField
      FieldName = 'SOMAR_ST_NO_CUSTO'
      Size = 1
    end
    object cdsParametros_NTESUB_PISCOFINS_CUSTO: TStringField
      FieldName = 'SUB_PISCOFINS_CUSTO'
      Size = 1
    end
    object cdsParametros_NTESUB_ICMS_CUSTO: TStringField
      FieldName = 'SUB_ICMS_CUSTO'
      Size = 1
    end
    object cdsParametros_NTEMOSTRAR_FINALIDADE: TStringField
      FieldName = 'MOSTRAR_FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NTEUSA_CONTA_ORCAMENTO_ITENS: TStringField
      FieldName = 'USA_CONTA_ORCAMENTO_ITENS'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_NTEUSA_CENTRO_CUSTO: TStringField
      FieldName = 'USA_CENTRO_CUSTO'
      FixedChar = True
      Size = 1
    end
  end
  object dsParametros_NTE: TDataSource
    DataSet = cdsParametros_NTE
    Left = 528
    Top = 147
  end
  object sdsTab_Preco: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_PRECO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 584
    Top = 454
  end
  object dspTab_Preco: TDataSetProvider
    DataSet = sdsTab_Preco
    Left = 624
    Top = 454
  end
  object cdsTab_Preco: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspTab_Preco'
    Left = 664
    Top = 454
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
    Left = 704
    Top = 454
  end
  object sdsParametros_Lote: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PARAMETROS_LOTE'#13#10'WHERE ID = :ID'
    DataSource = dsParametros_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 400
    Top = 208
    object sdsParametros_LoteID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsParametros_LoteTIPO_PROCESSO: TStringField
      FieldName = 'TIPO_PROCESSO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_LoteLOTE_TEXTIL: TStringField
      FieldName = 'LOTE_TEXTIL'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_LoteID_COR_CRU: TIntegerField
      FieldName = 'ID_COR_CRU'
    end
    object sdsParametros_LoteTIPO_LOTE: TStringField
      FieldName = 'TIPO_LOTE'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_LoteUSA_NECESSIDADE_IF: TStringField
      FieldName = 'USA_NECESSIDADE_IF'
      Size = 1
    end
    object sdsParametros_LoteGERAR_SETOR_MAT: TStringField
      FieldName = 'GERAR_SETOR_MAT'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_LoteUSA_REMESSA: TStringField
      FieldName = 'USA_REMESSA'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_LoteUSA_COR_COMB: TStringField
      FieldName = 'USA_COR_COMB'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_LoteLOTE_PROCESSO: TStringField
      FieldName = 'LOTE_PROCESSO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_LoteUSA_LOTE_REM: TStringField
      FieldName = 'USA_LOTE_REM'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_LoteUSA_GEROU_LOTE_PROD: TStringField
      FieldName = 'USA_GEROU_LOTE_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_LoteQTD_DIAS_DTEMISSAO: TIntegerField
      FieldName = 'QTD_DIAS_DTEMISSAO'
    end
    object sdsParametros_LoteID_PROCESSO_CONF: TIntegerField
      FieldName = 'ID_PROCESSO_CONF'
    end
    object sdsParametros_LoteUSA_LOTE_PEDIDO: TStringField
      FieldName = 'USA_LOTE_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_LoteIMP_CLIENTE_LOTE: TStringField
      FieldName = 'IMP_CLIENTE_LOTE'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_LoteQTD_DIV_LOTE: TIntegerField
      FieldName = 'QTD_DIV_LOTE'
    end
    object sdsParametros_LoteIMP_TALAO_POR: TStringField
      FieldName = 'IMP_TALAO_POR'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_LoteQTD_PADRAO_ETIQ: TIntegerField
      FieldName = 'QTD_PADRAO_ETIQ'
    end
    object sdsParametros_LoteID_PROCESSO_EST: TIntegerField
      FieldName = 'ID_PROCESSO_EST'
    end
    object sdsParametros_LoteLOTE_CALCADO_NOVO: TStringField
      FieldName = 'LOTE_CALCADO_NOVO'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_LoteGRAVAR_OBS_LOTE: TStringField
      FieldName = 'GRAVAR_OBS_LOTE'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_LoteUSA_LOTE_PED_SPROC: TStringField
      FieldName = 'USA_LOTE_PED_SPROC'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_LoteID_PROCESSO_SEMI_EST: TIntegerField
      FieldName = 'ID_PROCESSO_SEMI_EST'
    end
  end
  object cdsParametros_Lote: TClientDataSet
    Aggregates = <>
    DataSetField = cdsParametrossdsParametros_Lote
    Params = <>
    Left = 472
    Top = 208
    object cdsParametros_LoteID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsParametros_LoteTIPO_PROCESSO: TStringField
      FieldName = 'TIPO_PROCESSO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_LoteLOTE_TEXTIL: TStringField
      FieldName = 'LOTE_TEXTIL'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_LoteID_COR_CRU: TIntegerField
      FieldName = 'ID_COR_CRU'
    end
    object cdsParametros_LoteTIPO_LOTE: TStringField
      FieldName = 'TIPO_LOTE'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_LoteUSA_NECESSIDADE_IF: TStringField
      FieldName = 'USA_NECESSIDADE_IF'
      Size = 1
    end
    object cdsParametros_LoteGERAR_SETOR_MAT: TStringField
      FieldName = 'GERAR_SETOR_MAT'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_LoteUSA_REMESSA: TStringField
      FieldName = 'USA_REMESSA'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_LoteUSA_COR_COMB: TStringField
      FieldName = 'USA_COR_COMB'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_LoteLOTE_PROCESSO: TStringField
      FieldName = 'LOTE_PROCESSO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_LoteUSA_LOTE_REM: TStringField
      FieldName = 'USA_LOTE_REM'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_LoteUSA_GEROU_LOTE_PROD: TStringField
      FieldName = 'USA_GEROU_LOTE_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_LoteQTD_DIAS_DTEMISSAO: TIntegerField
      FieldName = 'QTD_DIAS_DTEMISSAO'
    end
    object cdsParametros_LoteID_PROCESSO_CONF: TIntegerField
      FieldName = 'ID_PROCESSO_CONF'
    end
    object cdsParametros_LoteUSA_LOTE_PEDIDO: TStringField
      FieldName = 'USA_LOTE_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_LoteIMP_CLIENTE_LOTE: TStringField
      FieldName = 'IMP_CLIENTE_LOTE'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_LoteQTD_DIV_LOTE: TIntegerField
      FieldName = 'QTD_DIV_LOTE'
    end
    object cdsParametros_LoteIMP_TALAO_POR: TStringField
      FieldName = 'IMP_TALAO_POR'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_LoteQTD_PADRAO_ETIQ: TIntegerField
      FieldName = 'QTD_PADRAO_ETIQ'
    end
    object cdsParametros_LoteID_PROCESSO_EST: TIntegerField
      FieldName = 'ID_PROCESSO_EST'
    end
    object cdsParametros_LoteGRAVAR_OBS_LOTE: TStringField
      FieldName = 'GRAVAR_OBS_LOTE'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_LoteLOTE_CALCADO_NOVO: TStringField
      FieldName = 'LOTE_CALCADO_NOVO'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_LoteUSA_LOTE_PED_SPROC: TStringField
      FieldName = 'USA_LOTE_PED_SPROC'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_LoteID_PROCESSO_SEMI_EST: TIntegerField
      FieldName = 'ID_PROCESSO_SEMI_EST'
    end
  end
  object dsParametros_Lote: TDataSource
    DataSet = cdsParametros_Lote
    Left = 536
    Top = 208
  end
  object sdsParametros_MDFe: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PARAMETROS_MDFE'#13#10'WHERE ID = :ID'
    DataSource = dsParametros_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 400
    Top = 272
    object sdsParametros_MDFeID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsParametros_MDFeVERSAO_EMISSAO: TStringField
      FieldName = 'VERSAO_EMISSAO'
    end
    object sdsParametros_MDFeVERSAO_LEIAUTE: TStringField
      FieldName = 'VERSAO_LEIAUTE'
      Size = 10
    end
    object sdsParametros_MDFeVERSAO_MODAL: TStringField
      FieldName = 'VERSAO_MODAL'
      Size = 10
    end
    object sdsParametros_MDFeENDXMLMDFE: TStringField
      FieldName = 'ENDXMLMDFE'
      Size = 250
    end
    object sdsParametros_MDFeENDPDFMDFE: TStringField
      FieldName = 'ENDPDFMDFE'
      Size = 250
    end
  end
  object cdsParametros_MDFe: TClientDataSet
    Aggregates = <>
    DataSetField = cdsParametrossdsParametros_MDFe
    Params = <>
    Left = 472
    Top = 272
    object cdsParametros_MDFeID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsParametros_MDFeVERSAO_EMISSAO: TStringField
      FieldName = 'VERSAO_EMISSAO'
    end
    object cdsParametros_MDFeVERSAO_LEIAUTE: TStringField
      FieldName = 'VERSAO_LEIAUTE'
      Size = 10
    end
    object cdsParametros_MDFeVERSAO_MODAL: TStringField
      FieldName = 'VERSAO_MODAL'
      Size = 10
    end
    object cdsParametros_MDFeENDXMLMDFE: TStringField
      FieldName = 'ENDXMLMDFE'
      Size = 250
    end
    object cdsParametros_MDFeENDPDFMDFE: TStringField
      FieldName = 'ENDPDFMDFE'
      Size = 250
    end
  end
  object dsParametros_MDFe: TDataSource
    DataSet = cdsParametros_MDFe
    Left = 536
    Top = 272
  end
  object sdsParametros_Etiq: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PARAMETROS_ETIQ'#13#10'WHERE ID = :ID'
    DataSource = dsParametros_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 400
    Top = 328
    object sdsParametros_EtiqID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsParametros_EtiqOFFSET_BORDA: TIntegerField
      FieldName = 'OFFSET_BORDA'
    end
    object sdsParametros_EtiqBACKFEED: TIntegerField
      FieldName = 'BACKFEED'
    end
    object sdsParametros_EtiqTEMPERATURA: TIntegerField
      FieldName = 'TEMPERATURA'
    end
    object sdsParametros_EtiqVELOCIDADE: TStringField
      FieldName = 'VELOCIDADE'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_EtiqENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object sdsParametros_EtiqTIPO_CLIENTE: TStringField
      FieldName = 'TIPO_CLIENTE'
      Size = 10
    end
    object sdsParametros_EtiqTIPO_IMPRESSORA: TStringField
      FieldName = 'TIPO_IMPRESSORA'
      Size = 10
    end
    object sdsParametros_EtiqTIPO_IMP_ETIQ_INDIV: TStringField
      FieldName = 'TIPO_IMP_ETIQ_INDIV'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_EtiqMARGEM: TSmallintField
      FieldName = 'MARGEM'
    end
    object sdsParametros_EtiqDESLOCAMENTO_LATERAL: TStringField
      FieldName = 'DESLOCAMENTO_LATERAL'
      Size = 2
    end
    object sdsParametros_EtiqETIQ_TAG_NOVO_LAYOUT: TStringField
      FieldName = 'ETIQ_TAG_NOVO_LAYOUT'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_EtiqNAO_IMP_MSG_TROCA: TStringField
      FieldName = 'NAO_IMP_MSG_TROCA'
      FixedChar = True
      Size = 1
    end
  end
  object cdsParametros_Etiq: TClientDataSet
    Aggregates = <>
    DataSetField = cdsParametrossdsParametros_Etiq
    Params = <>
    Left = 472
    Top = 328
    object cdsParametros_EtiqID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsParametros_EtiqOFFSET_BORDA: TIntegerField
      FieldName = 'OFFSET_BORDA'
    end
    object cdsParametros_EtiqBACKFEED: TIntegerField
      FieldName = 'BACKFEED'
    end
    object cdsParametros_EtiqTEMPERATURA: TIntegerField
      FieldName = 'TEMPERATURA'
    end
    object cdsParametros_EtiqVELOCIDADE: TStringField
      FieldName = 'VELOCIDADE'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_EtiqENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object cdsParametros_EtiqTIPO_CLIENTE: TStringField
      FieldName = 'TIPO_CLIENTE'
      Size = 10
    end
    object cdsParametros_EtiqTIPO_IMPRESSORA: TStringField
      FieldName = 'TIPO_IMPRESSORA'
      Size = 10
    end
    object cdsParametros_EtiqTIPO_IMP_ETIQ_INDIV: TStringField
      FieldName = 'TIPO_IMP_ETIQ_INDIV'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_EtiqMARGEM: TSmallintField
      FieldName = 'MARGEM'
    end
    object cdsParametros_EtiqDESLOCAMENTO_LATERAL: TStringField
      FieldName = 'DESLOCAMENTO_LATERAL'
      Size = 2
    end
    object cdsParametros_EtiqETIQ_TAG_NOVO_LAYOUT: TStringField
      FieldName = 'ETIQ_TAG_NOVO_LAYOUT'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_EtiqNAO_IMP_MSG_TROCA: TStringField
      FieldName = 'NAO_IMP_MSG_TROCA'
      FixedChar = True
      Size = 1
    end
  end
  object dsParametros_Etiq: TDataSource
    DataSet = cdsParametros_Etiq
    Left = 536
    Top = 328
  end
  object sdsParametros_Custo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PARAMETROS_CUSTO'#13#10'WHERE ID = :ID'
    DataSource = dsParametros_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 400
    Top = 384
    object sdsParametros_CustoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsParametros_CustoREV_SOMAR_IPI: TStringField
      FieldName = 'REV_SOMAR_IPI'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_CustoREV_SOMAR_FRETE: TStringField
      FieldName = 'REV_SOMAR_FRETE'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_CustoREV_SOMAR_ST: TStringField
      FieldName = 'REV_SOMAR_ST'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_CustoREV_SUB_ICMS: TStringField
      FieldName = 'REV_SUB_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_CustoREV_SUB_PISCOFINS: TStringField
      FieldName = 'REV_SUB_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_CustoIND_SOMAR_IPI: TStringField
      FieldName = 'IND_SOMAR_IPI'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_CustoIND_SOMAR_FRETE: TStringField
      FieldName = 'IND_SOMAR_FRETE'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_CustoIND_SOMAR_ST: TStringField
      FieldName = 'IND_SOMAR_ST'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_CustoIND_SUB_ICMS: TStringField
      FieldName = 'IND_SUB_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_CustoIND_SUB_PISCOFINS: TStringField
      FieldName = 'IND_SUB_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_CustoCON_SOMAR_IPI: TStringField
      FieldName = 'CON_SOMAR_IPI'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_CustoCON_SOMAR_ST: TStringField
      FieldName = 'CON_SOMAR_ST'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_CustoCON_SOMAR_FRETE: TStringField
      FieldName = 'CON_SOMAR_FRETE'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_CustoCON_SUB_ICMS: TStringField
      FieldName = 'CON_SUB_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_CustoCON_SUB_PISCOFINS: TStringField
      FieldName = 'CON_SUB_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_CustoCON_SUB_IPI: TStringField
      FieldName = 'CON_SUB_IPI'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_CustoIND_SUB_IPI: TStringField
      FieldName = 'IND_SUB_IPI'
      FixedChar = True
      Size = 1
    end
    object sdsParametros_CustoREV_SUB_IPI: TStringField
      FieldName = 'REV_SUB_IPI'
      FixedChar = True
      Size = 1
    end
  end
  object cdsParametros_Custo: TClientDataSet
    Aggregates = <>
    DataSetField = cdsParametrossdsParametros_Custo
    Params = <>
    Left = 472
    Top = 384
    object cdsParametros_CustoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsParametros_CustoREV_SOMAR_IPI: TStringField
      FieldName = 'REV_SOMAR_IPI'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_CustoREV_SOMAR_FRETE: TStringField
      FieldName = 'REV_SOMAR_FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_CustoREV_SOMAR_ST: TStringField
      FieldName = 'REV_SOMAR_ST'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_CustoREV_SUB_ICMS: TStringField
      FieldName = 'REV_SUB_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_CustoREV_SUB_PISCOFINS: TStringField
      FieldName = 'REV_SUB_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_CustoIND_SOMAR_IPI: TStringField
      FieldName = 'IND_SOMAR_IPI'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_CustoIND_SOMAR_FRETE: TStringField
      FieldName = 'IND_SOMAR_FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_CustoIND_SOMAR_ST: TStringField
      FieldName = 'IND_SOMAR_ST'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_CustoIND_SUB_ICMS: TStringField
      FieldName = 'IND_SUB_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_CustoIND_SUB_PISCOFINS: TStringField
      FieldName = 'IND_SUB_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_CustoCON_SOMAR_IPI: TStringField
      FieldName = 'CON_SOMAR_IPI'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_CustoCON_SOMAR_ST: TStringField
      FieldName = 'CON_SOMAR_ST'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_CustoCON_SOMAR_FRETE: TStringField
      FieldName = 'CON_SOMAR_FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_CustoCON_SUB_ICMS: TStringField
      FieldName = 'CON_SUB_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_CustoCON_SUB_PISCOFINS: TStringField
      FieldName = 'CON_SUB_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_CustoCON_SUB_IPI: TStringField
      FieldName = 'CON_SUB_IPI'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_CustoIND_SUB_IPI: TStringField
      FieldName = 'IND_SUB_IPI'
      FixedChar = True
      Size = 1
    end
    object cdsParametros_CustoREV_SUB_IPI: TStringField
      FieldName = 'REV_SUB_IPI'
      FixedChar = True
      Size = 1
    end
  end
  object dsParametros_Custo: TDataSource
    DataSet = cdsParametros_Custo
    Left = 536
    Top = 384
  end
  object sdsPosicao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM POSICAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 560
    Top = 534
  end
  object dspPosicao: TDataSetProvider
    DataSet = sdsPosicao
    Left = 600
    Top = 534
  end
  object cdsPosicao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspPosicao'
    Left = 640
    Top = 534
    object cdsPosicaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPosicaoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsPosicao: TDataSource
    DataSet = cdsPosicao
    Left = 680
    Top = 534
  end
  object sdsProcesso: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PROCESSO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 960
    Top = 441
  end
  object dspProcesso: TDataSetProvider
    DataSet = sdsProcesso
    Left = 995
    Top = 441
  end
  object cdsProcesso: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspProcesso'
    Left = 1035
    Top = 441
    object cdsProcessoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProcessoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsProcessoLIMITE_POR_TALAO: TStringField
      FieldName = 'LIMITE_POR_TALAO'
      FixedChar = True
      Size = 1
    end
    object cdsProcessoQTD_LIMITE_POR_TALAO: TIntegerField
      FieldName = 'QTD_LIMITE_POR_TALAO'
    end
    object cdsProcessoAGRUPAR_PEDIDOS: TStringField
      FieldName = 'AGRUPAR_PEDIDOS'
      FixedChar = True
      Size = 1
    end
    object cdsProcessoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsProcessoCALCULA_AREA: TStringField
      FieldName = 'CALCULA_AREA'
      FixedChar = True
      Size = 1
    end
    object cdsProcessoQTD_DIAS_PRAZO: TIntegerField
      FieldName = 'QTD_DIAS_PRAZO'
    end
    object cdsProcessoTERCEIRO: TStringField
      FieldName = 'TERCEIRO'
      FixedChar = True
      Size = 1
    end
    object cdsProcessoENCERADO: TStringField
      FieldName = 'ENCERADO'
      FixedChar = True
      Size = 1
    end
    object cdsProcessoENTRADA_AUTO: TStringField
      FieldName = 'ENTRADA_AUTO'
      FixedChar = True
      Size = 1
    end
  end
  object dsProcesso: TDataSource
    DataSet = cdsProcesso
    Left = 1075
    Top = 441
  end
end
