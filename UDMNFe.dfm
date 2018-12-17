object DMNFe: TDMNFe
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 182
  Top = 81
  Height = 603
  Width = 1098
  object sdsNFe_Email: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NFE_EMAIL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 32
    object sdsNFe_EmailID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNFe_EmailNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsNFe_EmailEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 200
    end
  end
  object dspNFe_Email: TDataSetProvider
    DataSet = sdsNFe_Email
    Left = 160
    Top = 32
  end
  object cdsNFe_Email: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNFe_Email'
    Left = 224
    Top = 32
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
  object qCidade: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM CIDADE'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 176
    object qCidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qCidadeCODMUNICIPIO: TStringField
      FieldName = 'CODMUNICIPIO'
      Size = 7
    end
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
    Left = 72
    Top = 120
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
    object qFilialUSARICMSSIMPLES: TStringField
      FieldName = 'USARICMSSIMPLES'
      FixedChar = True
      Size = 10
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
    object qFilialULTIMO_ACESSO: TStringField
      FieldName = 'ULTIMO_ACESSO'
      Size = 18
    end
    object qFilialLOCALSERVIDORNFE: TStringField
      FieldName = 'LOCALSERVIDORNFE'
      Size = 100
    end
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
      'SELECT *'
      'FROM UF'
      'WHERE UF = :UF')
    SQLConnection = dmDatabase.scoDados
    Left = 136
    Top = 112
    object qUFUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
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
  end
  object qPais: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM PAIS'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 136
    Top = 176
    object qPaisID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qPaisNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qPaisCODPAIS: TStringField
      FieldName = 'CODPAIS'
      Size = 5
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
    Left = 216
    Top = 104
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
    object qParametrosDESTACAR_IMPOSTO_NOTA: TStringField
      FieldName = 'DESTACAR_IMPOSTO_NOTA'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_TAMANHO_AGRUPADO_NFE: TStringField
      FieldName = 'USA_TAMANHO_AGRUPADO_NFE'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_FCI: TStringField
      FieldName = 'USA_FCI'
      FixedChar = True
      Size = 1
    end
    object qParametrosTIPO_LEI_TRANSPARENCIA: TStringField
      FieldName = 'TIPO_LEI_TRANSPARENCIA'
      FixedChar = True
      Size = 1
    end
    object qParametrosLEI_TRANSPARENCIA_IMP_ITEM: TStringField
      FieldName = 'LEI_TRANSPARENCIA_IMP_ITEM'
      FixedChar = True
      Size = 1
    end
    object qParametrosLEI_TRANSPARENCIA_TEXTO_ITEM: TStringField
      FieldName = 'LEI_TRANSPARENCIA_TEXTO_ITEM'
      Size = 150
    end
    object qParametrosLEI_TRANSPARENCIA_PERC_ADIC: TStringField
      FieldName = 'LEI_TRANSPARENCIA_PERC_ADIC'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_ENVIO_EMAIL_CATEGORIA: TStringField
      FieldName = 'USA_ENVIO_EMAIL_CATEGORIA'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_DESONERACAO: TStringField
      FieldName = 'USA_DESONERACAO'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_ICMSOPERACAO_CST51: TStringField
      FieldName = 'USA_ICMSOPERACAO_CST51'
      FixedChar = True
      Size = 10
    end
    object qParametrosUSA_DANFE_FLEXDOCS: TStringField
      FieldName = 'USA_DANFE_FLEXDOCS'
      FixedChar = True
      Size = 1
    end
    object qParametrosIMP_PERC_TRIB_DADOS_ADIC: TStringField
      FieldName = 'IMP_PERC_TRIB_DADOS_ADIC'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_ENVIO_NOVO_NFE: TStringField
      FieldName = 'USA_ENVIO_NOVO_NFE'
      FixedChar = True
      Size = 1
    end
    object qParametrosFUSOHORARIO: TStringField
      FieldName = 'FUSOHORARIO'
      Size = 6
    end
    object qParametrosFUSOHORARIO_VERAO: TStringField
      FieldName = 'FUSOHORARIO_VERAO'
      Size = 6
    end
    object qParametrosUSA_ADIANTAMENTO_PEDIDO: TStringField
      FieldName = 'USA_ADIANTAMENTO_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object qParametrosMOSTRAR_END_ENTREGA_DADOS_ADI: TStringField
      FieldName = 'MOSTRAR_END_ENTREGA_DADOS_ADI'
      FixedChar = True
      Size = 1
    end
    object qParametrosMSG_PADRAO_NOTA: TMemoField
      FieldName = 'MSG_PADRAO_NOTA'
      BlobType = ftMemo
      Size = 1
    end
    object qParametrosUSA_OBS_PEDIDO_NOTA: TStringField
      FieldName = 'USA_OBS_PEDIDO_NOTA'
      FixedChar = True
      Size = 1
    end
    object qParametrosOPCAO_REL_PED_AGRUPADO: TStringField
      FieldName = 'OPCAO_REL_PED_AGRUPADO'
      FixedChar = True
      Size = 1
    end
  end
  object qTransportadora: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT CODIGO, NOME, EMAIL_NFE, ENDERECO, NUM_END, COMPLEMENTO_E' +
        'ND, '
      'BAIRRO, ID_CIDADE, UF, CNPJ_CPF, INSCR_EST, PESSOA, CEP, CIDADE'
      'FROM PESSOA'
      'WHERE CODIGO = :CODIGO')
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 176
    object qTransportadoraCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qTransportadoraNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qTransportadoraEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 250
    end
    object qTransportadoraENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object qTransportadoraNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object qTransportadoraCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object qTransportadoraBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qTransportadoraID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object qTransportadoraUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object qTransportadoraCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object qTransportadoraINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object qTransportadoraPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object qTransportadoraCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qTransportadoraCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
  end
  object qTab_CSTICMS: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM TAB_CSTICMS'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 360
    Top = 72
    object qTab_CSTICMSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qTab_CSTICMSPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
    object qTab_CSTICMSHISTORICO: TMemoField
      FieldName = 'HISTORICO'
      BlobType = ftMemo
      Size = 1
    end
    object qTab_CSTICMSCOD_CST: TStringField
      FieldName = 'COD_CST'
      Size = 3
    end
    object qTab_CSTICMSTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qTab_CSTICMSNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
  end
  object qTab_CFOP: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM TAB_CFOP'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 352
    Top = 136
    object qTab_CFOPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qTab_CFOPCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object qTab_CFOPNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object qTab_CFOPENTRADASAIDA: TStringField
      FieldName = 'ENTRADASAIDA'
      FixedChar = True
      Size = 1
    end
    object qTab_CFOPGERAR_IPI: TStringField
      FieldName = 'GERAR_IPI'
      FixedChar = True
      Size = 1
    end
    object qTab_CFOPGERAR_ICMS: TStringField
      FieldName = 'GERAR_ICMS'
      FixedChar = True
      Size = 1
    end
    object qTab_CFOPGERAR_DUPLICATA: TStringField
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object qTab_CFOPSOMAR_VLRTOTALPRODUTO: TStringField
      FieldName = 'SOMAR_VLRTOTALPRODUTO'
      FixedChar = True
      Size = 1
    end
    object qTab_CFOPNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object qTab_CFOPID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object qTab_CFOPID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object qTab_CFOPCOPIARNOTATRIANGULAR: TStringField
      FieldName = 'COPIARNOTATRIANGULAR'
      FixedChar = True
      Size = 1
    end
    object qTab_CFOPID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object qTab_CFOPID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object qTab_CFOPTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object qTab_CFOPTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object qTab_CFOPGERAR_ICMS_SIMPLES: TStringField
      FieldName = 'GERAR_ICMS_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object qTab_CFOPTIPO_EMPRESA: TStringField
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object qTab_CFOPSUBSTITUICAO_TRIB: TStringField
      FieldName = 'SUBSTITUICAO_TRIB'
      FixedChar = True
      Size = 1
    end
    object qTab_CFOPMVA: TStringField
      FieldName = 'MVA'
      FixedChar = True
      Size = 1
    end
    object qTab_CFOPPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object qTab_CFOPPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object qTab_CFOPLEI: TMemoField
      FieldName = 'LEI'
      BlobType = ftMemo
      Size = 1
    end
  end
  object qCliente: TSQLQuery
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
    Left = 432
    Top = 136
    object qClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qClienteFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object qClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object qClienteCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object qClienteNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object qClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qClienteID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object qClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qClienteUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object qClienteCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qClienteDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object qClienteTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
    object qClienteDDDFONE2: TIntegerField
      FieldName = 'DDDFONE2'
    end
    object qClienteTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object qClienteDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object qClienteFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object qClientePESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object qClienteCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object qClienteINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object qClienteENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 40
    end
    object qClienteCOMPLEMENTO_END_ENT: TStringField
      FieldName = 'COMPLEMENTO_END_ENT'
      Size = 60
    end
    object qClienteNUM_END_ENT: TStringField
      FieldName = 'NUM_END_ENT'
    end
    object qClienteBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 26
    end
    object qClienteID_CIDADE_ENT: TIntegerField
      FieldName = 'ID_CIDADE_ENT'
    end
    object qClienteCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 40
    end
    object qClienteCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 10
    end
    object qClienteUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object qClientePESSOA_ENT: TStringField
      FieldName = 'PESSOA_ENT'
      FixedChar = True
      Size = 1
    end
    object qClienteCNPJ_CPF_ENT: TStringField
      FieldName = 'CNPJ_CPF_ENT'
      Size = 18
    end
    object qClienteINSC_EST_ENT: TStringField
      FieldName = 'INSC_EST_ENT'
      Size = 18
    end
    object qClienteENDERECO_PGTO: TStringField
      FieldName = 'ENDERECO_PGTO'
      Size = 40
    end
    object qClienteCOMPLEMENTO_END_PGTO: TStringField
      FieldName = 'COMPLEMENTO_END_PGTO'
      Size = 60
    end
    object qClienteNUM_END_PGTO: TStringField
      FieldName = 'NUM_END_PGTO'
    end
    object qClienteBAIRRO_PGTO: TStringField
      FieldName = 'BAIRRO_PGTO'
      Size = 26
    end
    object qClienteID_CIDADE_PGTO: TIntegerField
      FieldName = 'ID_CIDADE_PGTO'
    end
    object qClienteCIDADE_PGTO: TStringField
      FieldName = 'CIDADE_PGTO'
      Size = 40
    end
    object qClienteCEP_PGTO: TStringField
      FieldName = 'CEP_PGTO'
      Size = 10
    end
    object qClienteUF_PGTO: TStringField
      FieldName = 'UF_PGTO'
      FixedChar = True
      Size = 2
    end
    object qClienteUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object qClienteDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object qClienteHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
    object qClienteOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object qClienteCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 10
    end
    object qClienteRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object qClienteID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object qClienteID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object qClienteID_CONTABOLETO: TIntegerField
      FieldName = 'ID_CONTABOLETO'
    end
    object qClienteID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object qClienteID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object qClienteID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object qClienteID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
    object qClientePERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object qClienteDDD_ENT: TIntegerField
      FieldName = 'DDD_ENT'
    end
    object qClienteFONE_ENT: TStringField
      FieldName = 'FONE_ENT'
      Size = 15
    end
    object qClienteDDD_PGTO: TIntegerField
      FieldName = 'DDD_PGTO'
    end
    object qClienteFONE_PGTO: TStringField
      FieldName = 'FONE_PGTO'
      Size = 15
    end
    object qClienteINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object qClienteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 200
    end
    object qClienteTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      FixedChar = True
      Size = 1
    end
    object qClienteNOME_ENTREGA: TStringField
      FieldName = 'NOME_ENTREGA'
      Size = 60
    end
    object qClienteEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 250
    end
    object qClienteEMAIL_PGTO: TStringField
      FieldName = 'EMAIL_PGTO'
      Size = 150
    end
    object qClienteEMAIL_NFE2: TStringField
      FieldName = 'EMAIL_NFE2'
      Size = 150
    end
    object qClientePESSOA_PGTO: TStringField
      FieldName = 'PESSOA_PGTO'
      FixedChar = True
      Size = 1
    end
    object qClienteCNPJ_CPG_PGTO: TStringField
      FieldName = 'CNPJ_CPG_PGTO'
      Size = 18
    end
    object qClienteINSC_EST_PGTO: TStringField
      FieldName = 'INSC_EST_PGTO'
      Size = 18
    end
    object qClienteUF_PLACA: TStringField
      FieldName = 'UF_PLACA'
      Size = 2
    end
    object qClientePLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object qClienteTP_CLIENTE: TStringField
      FieldName = 'TP_CLIENTE'
      Size = 1
    end
    object qClienteTP_FORNECEDOR: TStringField
      FieldName = 'TP_FORNECEDOR'
      Size = 1
    end
    object qClienteTP_TRANSPORTADORA: TStringField
      FieldName = 'TP_TRANSPORTADORA'
      Size = 1
    end
    object qClienteTP_VENDEDOR: TStringField
      FieldName = 'TP_VENDEDOR'
      Size = 1
    end
  end
  object qTipoCobranca: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM TIPOCOBRANCA'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 352
    Top = 200
    object qTipoCobrancaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qTipoCobrancaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object qTipoCobrancaDESCONTADO: TStringField
      FieldName = 'DESCONTADO'
      FixedChar = True
      Size = 1
    end
    object qTipoCobrancaDEPOSITO: TStringField
      FieldName = 'DEPOSITO'
      FixedChar = True
      Size = 1
    end
    object qTipoCobrancaGERARBOLETO: TStringField
      FieldName = 'GERARBOLETO'
      FixedChar = True
      Size = 1
    end
    object qTipoCobrancaQTDDIAS: TIntegerField
      FieldName = 'QTDDIAS'
    end
    object qTipoCobrancaCARTAOCREDITO: TStringField
      FieldName = 'CARTAOCREDITO'
      FixedChar = True
      Size = 1
    end
    object qTipoCobrancaCHEQUE: TStringField
      FieldName = 'CHEQUE'
      FixedChar = True
      Size = 1
    end
    object qTipoCobrancaDINHEIRO: TStringField
      FieldName = 'DINHEIRO'
      FixedChar = True
      Size = 1
    end
    object qTipoCobrancaMOSTRARNOCUPOM: TStringField
      FieldName = 'MOSTRARNOCUPOM'
      FixedChar = True
      Size = 1
    end
  end
  object qContas: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT C.*, B.NOME NOME_BANCO'
      'FROM CONTAS C'
      'LEFT JOIN BANCO B'
      'ON C.ID_BANCO = B.ID'
      'WHERE C.ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 432
    Top = 200
    object qContasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qContasNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object qContasAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 5
    end
    object qContasFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object qContasNUMCONTA: TStringField
      FieldName = 'NUMCONTA'
      Size = 12
    end
    object qContasCNAB: TStringField
      FieldName = 'CNAB'
      Size = 15
    end
    object qContasDTENCERRAMENTO: TDateField
      FieldName = 'DTENCERRAMENTO'
    end
    object qContasID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object qContasDESCRICAO_NOTA: TStringField
      FieldName = 'DESCRICAO_NOTA'
      Size = 30
    end
    object qContasTIPO_CONTA: TStringField
      FieldName = 'TIPO_CONTA'
      FixedChar = True
      Size = 1
    end
    object qContasID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object qContasDIG_CONTA: TStringField
      FieldName = 'DIG_CONTA'
      Size = 1
    end
    object qContasCOD_CEDENTE: TStringField
      FieldName = 'COD_CEDENTE'
      Size = 16
    end
    object qContasACEITE: TStringField
      FieldName = 'ACEITE'
      Size = 1
    end
    object qContasID_OCORRENCIA: TIntegerField
      FieldName = 'ID_OCORRENCIA'
    end
    object qContasDIAS_PROTESTO: TIntegerField
      FieldName = 'DIAS_PROTESTO'
    end
    object qContasID_ESPECIE: TIntegerField
      FieldName = 'ID_ESPECIE'
    end
    object qContasID_CARTEIRA: TIntegerField
      FieldName = 'ID_CARTEIRA'
    end
    object qContasID_INSTRUCAO1: TIntegerField
      FieldName = 'ID_INSTRUCAO1'
    end
    object qContasID_INSTRUCAO2: TIntegerField
      FieldName = 'ID_INSTRUCAO2'
    end
    object qContasID_TIPO_COBRANCA: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA'
    end
    object qContasMOEDA: TStringField
      FieldName = 'MOEDA'
      Size = 1
    end
    object qContasVARIACAO_CARTEIRA: TStringField
      FieldName = 'VARIACAO_CARTEIRA'
      Size = 3
    end
    object qContasTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 5
    end
    object qContasCOD_TRANSMISSAO: TStringField
      FieldName = 'COD_TRANSMISSAO'
      Size = 15
    end
    object qContasMENSAGEM_FIXA: TStringField
      FieldName = 'MENSAGEM_FIXA'
      Size = 30
    end
    object qContasPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object qContasPERC_JUROS: TFloatField
      FieldName = 'PERC_JUROS'
    end
    object qContasVLR_IOF: TFloatField
      FieldName = 'VLR_IOF'
    end
    object qContasVLR_TAXA: TFloatField
      FieldName = 'VLR_TAXA'
    end
    object qContasLOCAL_PAGAMENTO: TStringField
      FieldName = 'LOCAL_PAGAMENTO'
      Size = 60
    end
    object qContasEND_ARQUIVO_REM: TStringField
      FieldName = 'END_ARQUIVO_REM'
      Size = 200
    end
    object qContasNOME_ARQ_REM: TStringField
      FieldName = 'NOME_ARQ_REM'
      Size = 8
    end
    object qContasEXTENSAO_ARQ_REM: TStringField
      FieldName = 'EXTENSAO_ARQ_REM'
      Size = 3
    end
    object qContasDT_LIMITE_DESCONTO: TDateField
      FieldName = 'DT_LIMITE_DESCONTO'
    end
    object qContasCOMISSAO_PERMANENCIA: TStringField
      FieldName = 'COMISSAO_PERMANENCIA'
      Size = 2
    end
    object qContasNUM_CONVENIO_LIDER: TStringField
      FieldName = 'NUM_CONVENIO_LIDER'
      Size = 6
    end
    object qContasDIG_AGENCIA: TStringField
      FieldName = 'DIG_AGENCIA'
      Size = 1
    end
    object qContasDIAS_DEVOLUCAO: TIntegerField
      FieldName = 'DIAS_DEVOLUCAO'
    end
    object qContasNOME_BANCO: TStringField
      FieldName = 'NOME_BANCO'
      Size = 60
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
      end
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
      'SELECT NI.*,'
      '   (SELECT COUNT(1) FROM NOTAFISCAL_NDEVOLVIDA ND'
      '     WHERE ND.ID_NTE = :ID'
      '       AND ND.ITEM_NTE = :ITEM) CONTADOR'
      'FROM NOTAFISCAL_ITENS NI'
      'WHERE NI.ID = :ID'
      '    AND NI.ITEM = :ITEM')
    SQLConnection = dmDatabase.scoDados
    Left = 224
    Top = 256
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
    object qNotaEntrada_ItensCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
    end
  end
  object qNotaFiscal: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NFECHAVEACESSO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID, NUMNOTA, SERIE, NFECHAVEACESSO, DTEMISSAO'
      'FROM NOTAFISCAL'
      'WHERE NFECHAVEACESSO = :NFECHAVEACESSO'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 112
    Top = 264
    object qNotaFiscalID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qNotaFiscalNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object qNotaFiscalSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object qNotaFiscalNFECHAVEACESSO: TStringField
      FieldName = 'NFECHAVEACESSO'
      Size = 44
    end
    object qNotaFiscalDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
  end
  object mParcelaNFe: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NumNota'
        DataType = ftInteger
      end
      item
        Name = 'Parcela'
        DataType = ftInteger
      end
      item
        Name = 'Valor'
        DataType = ftFloat
      end
      item
        Name = 'DtVencimento'
        DataType = ftString
        Size = 15
      end>
    IndexDefs = <>
    IndexFieldNames = 'NumNota;Parcela'
    Params = <>
    StoreDefs = True
    Left = 312
    Top = 424
    Data = {
      690000009619E0BD0100000018000000040000000000030000006900074E756D
      4E6F746104000100000000000750617263656C6104000100000000000556616C
      6F7208000400000000000C447456656E63696D656E746F010049000000010005
      5749445448020002000F000000}
    object mParcelaNFeNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object mParcelaNFeParcela: TIntegerField
      FieldName = 'Parcela'
    end
    object mParcelaNFeValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '0.00'
    end
    object mParcelaNFeDtVencimento: TStringField
      FieldName = 'DtVencimento'
      Size = 15
    end
  end
  object dsmiItensNFe: TDataSource
    DataSet = mItensNFe
    Left = 256
    Top = 424
  end
  object mItensNFe: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Filial'
        DataType = ftInteger
      end
      item
        Name = 'NumNota'
        DataType = ftInteger
      end
      item
        Name = 'ItemNota'
        DataType = ftInteger
      end
      item
        Name = 'CodProduto'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CodNatOper'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'NomeProduto'
        DataType = ftString
        Size = 120
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'Unidade'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'VlrUnitario'
        DataType = ftFloat
      end
      item
        Name = 'VlrTotal'
        DataType = ftFloat
      end
      item
        Name = 'AliqIcms'
        DataType = ftFloat
      end
      item
        Name = 'AliqIpi'
        DataType = ftFloat
      end
      item
        Name = 'VlrIcms'
        DataType = ftFloat
      end
      item
        Name = 'VlrIpi'
        DataType = ftFloat
      end
      item
        Name = 'AliqSitTrib'
        DataType = ftFloat
      end
      item
        Name = 'ClasFiscalRed'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'ClasFiscal'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'InfAdicionais'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'VlrDesconto'
        DataType = ftFloat
      end
      item
        Name = 'PercRedICMS'
        DataType = ftFloat
      end
      item
        Name = 'VlrBaseICMS'
        DataType = ftFloat
      end
      item
        Name = 'BaseICMS'
        DataType = ftFloat
      end
      item
        Name = 'CodCSTIPI'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'TipoReg'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'AliqPis'
        DataType = ftFloat
      end
      item
        Name = 'AliqCofins'
        DataType = ftFloat
      end
      item
        Name = 'VlrPis'
        DataType = ftFloat
      end
      item
        Name = 'VlrCofins'
        DataType = ftFloat
      end
      item
        Name = 'IcmsBaseSubst'
        DataType = ftFloat
      end
      item
        Name = 'IcmsVlrSubst'
        DataType = ftFloat
      end
      item
        Name = 'CodPis'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CodCofins'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'TipoPis'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TipoCofins'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CodSitTrib'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'PedidoCliente'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'ItemPedido'
        DataType = ftInteger
      end
      item
        Name = 'VlrIcmsSimples'
        DataType = ftFloat
      end
      item
        Name = 'BaseIcmsSimples'
        DataType = ftFloat
      end
      item
        Name = 'MVA'
        DataType = ftFloat
      end
      item
        Name = 'SomaVlrTotalProd'
        DataType = ftBoolean
      end
      item
        Name = 'VlrFrete'
        DataType = ftFloat
      end
      item
        Name = 'VlrSeguro'
        DataType = ftFloat
      end
      item
        Name = 'VlrOutrasDespesas'
        DataType = ftFloat
      end
      item
        Name = 'CodBarra'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'VlrBaseImportacao'
        DataType = ftFloat
      end
      item
        Name = 'VlrImportacao'
        DataType = ftFloat
      end
      item
        Name = 'VlrIOF'
        DataType = ftFloat
      end
      item
        Name = 'VlrDespAduaneira'
        DataType = ftFloat
      end
      item
        Name = 'ItemOriginal'
        DataType = ftInteger
      end
      item
        Name = 'PercPis'
        DataType = ftFloat
      end
      item
        Name = 'PercCofins'
        DataType = ftFloat
      end
      item
        Name = 'PercRedICMSSubst'
        DataType = ftFloat
      end
      item
        Name = 'VlrTributos'
        DataType = ftFloat
      end
      item
        Name = 'NumOS'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CodAuxiliar'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Obs_Tamanho'
        DataType = ftString
        Size = 90
      end
      item
        Name = 'NFCI'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ID_Produto'
        DataType = ftInteger
      end
      item
        Name = 'NCM_EX'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PercIcmsSubstInterno'
        DataType = ftFloat
      end
      item
        Name = 'VlrIcmsDesonerado'
        DataType = ftFloat
      end
      item
        Name = 'CodMotivoDesonerado'
        DataType = ftInteger
      end
      item
        Name = 'VlrIcmsOperacao'
        DataType = ftFloat
      end
      item
        Name = 'PercTribIcms'
        DataType = ftFloat
      end
      item
        Name = 'VlrTributos_Federal'
        DataType = ftFloat
      end
      item
        Name = 'VlrTributos_Estadual'
        DataType = ftFloat
      end
      item
        Name = 'VlrTributos_Municipal'
        DataType = ftFloat
      end
      item
        Name = 'PercTributos_Federal'
        DataType = ftFloat
      end
      item
        Name = 'PercTributos_Estadual'
        DataType = ftFloat
      end
      item
        Name = 'PercTributos_Municipal'
        DataType = ftFloat
      end
      item
        Name = 'Fonte'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'PercDiferimento'
        DataType = ftFloat
      end
      item
        Name = 'VlrIcmsDiferido'
        DataType = ftFloat
      end
      item
        Name = 'Num_Lote_Controle'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Cod_Cest'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'Cod_EnqIPI'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Perc_ICMS_FCP'
        DataType = ftFloat
      end
      item
        Name = 'Perc_ICMS_UF_Dest'
        DataType = ftFloat
      end
      item
        Name = 'Perc_ICMS_Partilha'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_ICMS_FCP'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_ICMS_UF_Dest'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_ICMS_UF_Remet'
        DataType = ftFloat
      end
      item
        Name = 'Perc_ICMS_Inter'
        DataType = ftFloat
      end
      item
        Name = 'GRAVOU_TAB_TAMANHO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'IBPT_Chave'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Unidade_Trib'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'Vlr_Unitario_Trib'
        DataType = ftFloat
      end
      item
        Name = 'Qtd_Trib'
        DataType = ftFloat
      end
      item
        Name = 'Base_ICMS_FCP'
        DataType = ftFloat
      end
      item
        Name = 'BASE_FCP_ST'
        DataType = ftFloat
      end
      item
        Name = 'VLR_FCP_ST'
        DataType = ftFloat
      end
      item
        Name = 'PERC_FCP_ST'
        DataType = ftFloat
      end
      item
        Name = 'VLR_ICMS_FCP_DEST'
        DataType = ftFloat
      end
      item
        Name = 'BASE_ICMS_FCP_DEST'
        DataType = ftFloat
      end
      item
        Name = 'CodBarra2'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'VlrIPI_Devol'
        DataType = ftFloat
      end
      item
        Name = 'Perc_Devol'
        DataType = ftFloat
      end
      item
        Name = 'Base_IPI'
        DataType = ftFloat
      end>
    IndexDefs = <>
    IndexFieldNames = 'Filial;NumNota;ItemNota'
    Params = <>
    StoreDefs = True
    BeforePost = mItensNFeBeforePost
    OnNewRecord = mItensNFeNewRecord
    Left = 224
    Top = 424
    Data = {
      800900009619E0BD01000000180000006300000000000300000080090646696C
      69616C0400010000000000074E756D4E6F74610400010000000000084974656D
      4E6F746104000100000000000A436F6450726F6475746F010049000000010005
      57494454480200020014000A436F644E61744F70657201004900000001000557
      494454480200020004000B4E6F6D6550726F6475746F01004900000001000557
      4944544802000200780003517464080004000000000007556E69646164650100
      4900000001000557494454480200020003000B566C72556E69746172696F0800
      04000000000008566C72546F74616C080004000000000008416C697149636D73
      080004000000000007416C6971497069080004000000000007566C7249636D73
      080004000000000006566C7249706908000400000000000B416C697153697454
      72696208000400000000000D436C617346697363616C52656401004900000001
      000557494454480200020003000A436C617346697363616C0100490000000100
      055749445448020002000A000D496E6641646963696F6E61697304004B000000
      0200075355425459504502004900050054657874000557494454480200020001
      000B566C72446573636F6E746F08000400000000000B5065726352656449434D
      5308000400000000000B566C724261736549434D530800040000000000084261
      736549434D53080004000000000009436F644353544950490100490000000100
      055749445448020002000200075469706F526567010049000000010005574944
      544802000200010007416C697150697308000400000000000A416C6971436F66
      696E73080004000000000006566C72506973080004000000000009566C72436F
      66696E7308000400000000000D49636D73426173655375627374080004000000
      00000C49636D73566C725375627374080004000000000006436F645069730100
      49000000010005574944544802000200020009436F64436F66696E7301004900
      00000100055749445448020002000200075469706F5069730100490000000100
      0557494454480200020001000A5469706F436F66696E73010049000000010005
      57494454480200020001000A436F645369745472696201004900000001000557
      494454480200020004000D50656469646F436C69656E74650100490000000100
      055749445448020002000F000A4974656D50656469646F04000100000000000E
      566C7249636D7353696D706C657308000400000000000F4261736549636D7353
      696D706C65730800040000000000034D5641080004000000000010536F6D6156
      6C72546F74616C50726F64020003000000000008566C72467265746508000400
      0000000009566C7253656775726F080004000000000011566C724F7574726173
      4465737065736173080004000000000008436F64426172726101004900000001
      00055749445448020002000E0011566C7242617365496D706F72746163616F08
      000400000000000D566C72496D706F72746163616F080004000000000006566C
      72494F46080004000000000010566C7244657370416475616E65697261080004
      00000000000C4974656D4F726967696E616C0400010000000000075065726350
      697308000400000000000A50657263436F66696E730800040000000000105065
      726352656449434D53537562737408000400000000000B566C72547269627574
      6F730800040000000000054E756D4F5301004900000001000557494454480200
      02001E000B436F64417578696C69617201004900000001000557494454480200
      020032000B4F62735F54616D616E686F01004900000001000557494454480200
      02005A00044E46434901004900000001000557494454480200020028000A4944
      5F50726F6475746F0400010000000000064E434D5F4558010049000000010005
      5749445448020002000300145065726349636D735375627374496E7465726E6F
      080004000000000011566C7249636D734465736F6E657261646F080004000000
      000013436F644D6F7469766F4465736F6E657261646F04000100000000000F56
      6C7249636D734F7065726163616F08000400000000000C506572635472696249
      636D73080004000000000013566C725472696275746F735F4665646572616C08
      0004000000000014566C725472696275746F735F457374616475616C08000400
      0000000015566C725472696275746F735F4D756E69636970616C080004000000
      000014506572635472696275746F735F4665646572616C080004000000000015
      506572635472696275746F735F457374616475616C0800040000000000165065
      72635472696275746F735F4D756E69636970616C080004000000000005466F6E
      74650100490000000100055749445448020002001E000F506572634469666572
      696D656E746F08000400000000000F566C7249636D73446966657269646F0800
      040000000000114E756D5F4C6F74655F436F6E74726F6C650100490000000100
      05574944544802000200140008436F645F436573740100490000000100055749
      4454480200020007000A436F645F456E71495049010049000000010005574944
      54480200020003000D506572635F49434D535F46435008000400000000001150
      6572635F49434D535F55465F44657374080004000000000012506572635F4943
      4D535F50617274696C686108000400000000000C566C725F49434D535F464350
      080004000000000010566C725F49434D535F55465F4465737408000400000000
      0011566C725F49434D535F55465F52656D657408000400000000000F50657263
      5F49434D535F496E746572080004000000000012475241564F555F5441425F54
      414D414E484F01004900000001000557494454480200020001000A494250545F
      436861766501004900000001000557494454480200020014000C556E69646164
      655F54726962010049000000010005574944544802000200060011566C725F55
      6E69746172696F5F547269620800040000000000085174645F54726962080004
      00000000000D426173655F49434D535F46435008000400000000000B42415345
      5F4643505F535408000400000000000A564C525F4643505F5354080004000000
      00000B504552435F4643505F5354080004000000000011564C525F49434D535F
      4643505F44455354080004000000000012424153455F49434D535F4643505F44
      455354080004000000000009436F644261727261320100490000000100055749
      445448020002000E000C566C724950495F4465766F6C08000400000000000A50
      6572635F4465766F6C080004000000000008426173655F495049080004000000
      00000000}
    object mItensNFeFilial: TIntegerField
      FieldName = 'Filial'
    end
    object mItensNFeNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object mItensNFeItemNota: TIntegerField
      FieldName = 'ItemNota'
    end
    object mItensNFeCodProduto: TStringField
      FieldName = 'CodProduto'
    end
    object mItensNFeCodNatOper: TStringField
      FieldName = 'CodNatOper'
      Size = 4
    end
    object mItensNFeNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 120
    end
    object mItensNFeQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mItensNFeUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object mItensNFeVlrUnitario: TFloatField
      FieldName = 'VlrUnitario'
      DisplayFormat = '###,###,##0.00########'
    end
    object mItensNFeVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      DisplayFormat = '###,###,##0.00'
    end
    object mItensNFeAliqIcms: TFloatField
      FieldName = 'AliqIcms'
    end
    object mItensNFeAliqIpi: TFloatField
      FieldName = 'AliqIpi'
    end
    object mItensNFeVlrIcms: TFloatField
      FieldName = 'VlrIcms'
      DisplayFormat = '###,###,##0.00'
    end
    object mItensNFeVlrIpi: TFloatField
      FieldName = 'VlrIpi'
      DisplayFormat = '###,###,##0.00'
    end
    object mItensNFeAliqSitTrib: TFloatField
      FieldName = 'AliqSitTrib'
    end
    object mItensNFeClasFiscalRed: TStringField
      FieldName = 'ClasFiscalRed'
      Size = 3
    end
    object mItensNFeClasFiscal: TStringField
      FieldName = 'ClasFiscal'
      Size = 10
    end
    object mItensNFeInfAdicionais: TMemoField
      FieldName = 'InfAdicionais'
      BlobType = ftMemo
      Size = 1
    end
    object mItensNFeVlrDesconto: TFloatField
      FieldName = 'VlrDesconto'
      DisplayFormat = '###,###,##0.00'
    end
    object mItensNFePercRedICMS: TFloatField
      FieldName = 'PercRedICMS'
    end
    object mItensNFeVlrBaseICMS: TFloatField
      FieldName = 'VlrBaseICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object mItensNFeBaseICMS: TFloatField
      FieldName = 'BaseICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object mItensNFeCodCSTIPI: TStringField
      FieldName = 'CodCSTIPI'
      Size = 2
    end
    object mItensNFeTipoReg: TStringField
      FieldName = 'TipoReg'
      Size = 1
    end
    object mItensNFeAliqPis: TFloatField
      FieldName = 'AliqPis'
    end
    object mItensNFeAliqCofins: TFloatField
      FieldName = 'AliqCofins'
    end
    object mItensNFeVlrPis: TFloatField
      FieldName = 'VlrPis'
      DisplayFormat = '###,###,##0.00'
    end
    object mItensNFeVlrCofins: TFloatField
      FieldName = 'VlrCofins'
      DisplayFormat = '###,###,##0.00'
    end
    object mItensNFeIcmsBaseSubst: TFloatField
      FieldName = 'IcmsBaseSubst'
    end
    object mItensNFeIcmsVlrSubst: TFloatField
      FieldName = 'IcmsVlrSubst'
    end
    object mItensNFeCodPis: TStringField
      FieldName = 'CodPis'
      Size = 2
    end
    object mItensNFeCodCofins: TStringField
      FieldName = 'CodCofins'
      Size = 2
    end
    object mItensNFeTipoPis: TStringField
      FieldName = 'TipoPis'
      Size = 1
    end
    object mItensNFeTipoCofins: TStringField
      FieldName = 'TipoCofins'
      Size = 1
    end
    object mItensNFeCodSitTrib: TStringField
      FieldName = 'CodSitTrib'
      Size = 4
    end
    object mItensNFePedidoCliente: TStringField
      FieldName = 'PedidoCliente'
      Size = 15
    end
    object mItensNFeItemPedido: TIntegerField
      FieldName = 'ItemPedido'
    end
    object mItensNFeVlrIcmsSimples: TFloatField
      FieldName = 'VlrIcmsSimples'
    end
    object mItensNFeBaseIcmsSimples: TFloatField
      FieldName = 'BaseIcmsSimples'
    end
    object mItensNFeMVA: TFloatField
      FieldName = 'MVA'
    end
    object mItensNFeSomaVlrTotalProd: TBooleanField
      FieldName = 'SomaVlrTotalProd'
    end
    object mItensNFeVlrFrete: TFloatField
      FieldName = 'VlrFrete'
    end
    object mItensNFeVlrSeguro: TFloatField
      FieldName = 'VlrSeguro'
    end
    object mItensNFeVlrOutrasDespesas: TFloatField
      FieldName = 'VlrOutrasDespesas'
    end
    object mItensNFeCodBarra: TStringField
      FieldName = 'CodBarra'
      Size = 14
    end
    object mItensNFeVlrBaseImportacao: TFloatField
      FieldName = 'VlrBaseImportacao'
    end
    object mItensNFeVlrImportacao: TFloatField
      FieldName = 'VlrImportacao'
    end
    object mItensNFeVlrIOF: TFloatField
      FieldName = 'VlrIOF'
    end
    object mItensNFeVlrDespAduaneira: TFloatField
      FieldName = 'VlrDespAduaneira'
    end
    object mItensNFeItemOriginal: TIntegerField
      FieldName = 'ItemOriginal'
    end
    object mItensNFePercPis: TFloatField
      FieldName = 'PercPis'
    end
    object mItensNFePercCofins: TFloatField
      FieldName = 'PercCofins'
    end
    object mItensNFePercRedICMSSubst: TFloatField
      FieldName = 'PercRedICMSSubst'
    end
    object mItensNFeVlrTributos: TFloatField
      FieldName = 'VlrTributos'
    end
    object mItensNFeNumOS: TStringField
      FieldName = 'NumOS'
      Size = 30
    end
    object mItensNFeCodAuxiliar: TStringField
      FieldName = 'CodAuxiliar'
      Size = 50
    end
    object mItensNFeObs_Tamanho: TStringField
      FieldName = 'Obs_Tamanho'
      Size = 90
    end
    object mItensNFeNFCI: TStringField
      FieldName = 'NFCI'
      Size = 40
    end
    object mItensNFeID_Produto: TIntegerField
      FieldName = 'ID_Produto'
    end
    object mItensNFeNCM_EX: TStringField
      FieldName = 'NCM_EX'
      Size = 3
    end
    object mItensNFePercIcmsSubstInterno: TFloatField
      FieldName = 'PercIcmsSubstInterno'
    end
    object mItensNFeVlrIcmsDesonerado: TFloatField
      FieldName = 'VlrIcmsDesonerado'
    end
    object mItensNFeCodMotivoDesonerado: TIntegerField
      FieldName = 'CodMotivoDesonerado'
    end
    object mItensNFeVlrIcmsOperacao: TFloatField
      FieldName = 'VlrIcmsOperacao'
    end
    object mItensNFePercTribIcms: TFloatField
      FieldName = 'PercTribIcms'
    end
    object mItensNFeVlrTributos_Federal: TFloatField
      FieldName = 'VlrTributos_Federal'
    end
    object mItensNFeVlrTributos_Estadual: TFloatField
      FieldName = 'VlrTributos_Estadual'
    end
    object mItensNFeVlrTributos_Municipal: TFloatField
      FieldName = 'VlrTributos_Municipal'
    end
    object mItensNFePercTributos_Federal: TFloatField
      FieldName = 'PercTributos_Federal'
    end
    object mItensNFePercTributos_Estadual: TFloatField
      FieldName = 'PercTributos_Estadual'
    end
    object mItensNFePercTributos_Municipal: TFloatField
      FieldName = 'PercTributos_Municipal'
    end
    object mItensNFeFonte: TStringField
      FieldName = 'Fonte'
      Size = 30
    end
    object mItensNFePercDiferimento: TFloatField
      FieldName = 'PercDiferimento'
    end
    object mItensNFeVlrIcmsDiferido: TFloatField
      FieldName = 'VlrIcmsDiferido'
    end
    object mItensNFeNum_Lote_Controle: TStringField
      FieldName = 'Num_Lote_Controle'
    end
    object mItensNFeCod_Cest: TStringField
      FieldName = 'Cod_Cest'
      Size = 7
    end
    object mItensNFeCod_EnqIPI: TStringField
      FieldName = 'Cod_EnqIPI'
      Size = 3
    end
    object mItensNFePerc_ICMS_FCP: TFloatField
      FieldName = 'Perc_ICMS_FCP'
    end
    object mItensNFePerc_ICMS_UF_Dest: TFloatField
      FieldName = 'Perc_ICMS_UF_Dest'
    end
    object mItensNFePerc_ICMS_Partilha: TFloatField
      FieldName = 'Perc_ICMS_Partilha'
    end
    object mItensNFeVlr_ICMS_FCP: TFloatField
      FieldName = 'Vlr_ICMS_FCP'
    end
    object mItensNFeVlr_ICMS_UF_Dest: TFloatField
      FieldName = 'Vlr_ICMS_UF_Dest'
    end
    object mItensNFeVlr_ICMS_UF_Remet: TFloatField
      FieldName = 'Vlr_ICMS_UF_Remet'
    end
    object mItensNFePerc_ICMS_Inter: TFloatField
      FieldName = 'Perc_ICMS_Inter'
    end
    object mItensNFeGRAVOU_TAB_TAMANHO: TStringField
      FieldName = 'GRAVOU_TAB_TAMANHO'
      Size = 1
    end
    object mItensNFeIBPT_Chave: TStringField
      FieldName = 'IBPT_Chave'
    end
    object mItensNFeUnidade_Trib: TStringField
      FieldName = 'Unidade_Trib'
      Size = 6
    end
    object mItensNFeVlr_Unitario_Trib: TFloatField
      FieldName = 'Vlr_Unitario_Trib'
    end
    object mItensNFeQtd_Trib: TFloatField
      FieldName = 'Qtd_Trib'
    end
    object mItensNFeBase_ICMS_FCP: TFloatField
      FieldName = 'Base_ICMS_FCP'
    end
    object mItensNFeBASE_FCP_ST: TFloatField
      FieldName = 'BASE_FCP_ST'
    end
    object mItensNFeVLR_FCP_ST: TFloatField
      FieldName = 'VLR_FCP_ST'
    end
    object mItensNFePERC_FCP_ST: TFloatField
      FieldName = 'PERC_FCP_ST'
    end
    object mItensNFeVLR_ICMS_FCP_DEST: TFloatField
      FieldName = 'VLR_ICMS_FCP_DEST'
    end
    object mItensNFeBASE_ICMS_FCP_DEST: TFloatField
      FieldName = 'BASE_ICMS_FCP_DEST'
    end
    object mItensNFeCodBarra2: TStringField
      FieldName = 'CodBarra2'
      Size = 14
    end
    object mItensNFeVlrIPI_Devol: TFloatField
      FieldName = 'VlrIPI_Devol'
    end
    object mItensNFePerc_Devol: TFloatField
      FieldName = 'Perc_Devol'
    end
    object mItensNFeBase_IPI: TFloatField
      FieldName = 'Base_IPI'
    end
  end
  object mAuxDadosNFe: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Tipo'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Codigo'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'ID_Variacao'
        DataType = ftInteger
      end
      item
        Name = 'OBS'
        DataType = ftWideString
        Size = 500
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'Tipo'
    Params = <>
    StoreDefs = True
    OnNewRecord = mAuxDadosNFeNewRecord
    Left = 192
    Top = 424
    Data = {
      900000009619E0BD010000001800000004000000000003000000900004546970
      6F010049000000010005574944544802000200030006436F6469676F01004900
      000001000557494454480200020007000B49445F566172696163616F04000100
      00000000034F425302004A000000010005574944544802000200E80301000D44
      454641554C545F4F524445520200820000000000}
    object mAuxDadosNFeTipo: TStringField
      FieldName = 'Tipo'
      Size = 3
    end
    object mAuxDadosNFeCodigo: TStringField
      FieldName = 'Codigo'
      Size = 7
    end
    object mAuxDadosNFeID_Variacao: TIntegerField
      FieldName = 'ID_Variacao'
    end
    object mAuxDadosNFeOBS: TWideStringField
      FieldName = 'OBS'
      Size = 500
    end
  end
  object mDadosAdicionaisNFe: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'Obs'
        DataType = ftMemo
        Size = 10
      end
      item
        Name = 'ObsAux'
        DataType = ftMemo
        Size = 10
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    BeforePost = mDadosAdicionaisNFeBeforePost
    Left = 160
    Top = 424
    Data = {
      7E0000009619E0BD0100000018000000030000000000030000007E0002494404
      00010000000000034F627304004B000000020007535542545950450200490005
      005465787400055749445448020002000A00064F627341757804004B00000002
      0007535542545950450200490005005465787400055749445448020002000A00
      0000}
    object mDadosAdicionaisNFeID: TIntegerField
      FieldName = 'ID'
    end
    object mDadosAdicionaisNFeObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
      Size = 10
    end
    object mDadosAdicionaisNFeObsAux: TMemoField
      FieldName = 'ObsAux'
      BlobType = ftMemo
      Size = 10
    end
  end
  object mNotaDevolvidaNFe: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Tipo'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'NumNota'
        DataType = ftInteger
      end
      item
        Name = 'ParcialTotal'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'Unidade'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CodForn'
        DataType = ftInteger
      end
      item
        Name = 'NomeForn'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Triangular'
        DataType = ftBoolean
      end
      item
        Name = 'CNPJ'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'CodUF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Serie'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Modelo'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'NFeChaveAcesso'
        DataType = ftString
        Size = 44
      end
      item
        Name = 'CupomNumECF'
        DataType = ftInteger
      end
      item
        Name = 'CupomNumCOO'
        DataType = ftInteger
      end
      item
        Name = 'CupomModelo'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'AnoEmissao'
        DataType = ftInteger
      end
      item
        Name = 'MesEmissao'
        DataType = ftInteger
      end
      item
        Name = 'IE'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'CTeChaveAcesso'
        DataType = ftString
        Size = 44
      end>
    IndexDefs = <>
    IndexFieldNames = 'Tipo;Item'
    Params = <>
    StoreDefs = True
    OnNewRecord = mNotaDevolvidaNFeNewRecord
    Left = 128
    Top = 424
    Data = {
      0C0200009619E0BD0100000018000000150000000000030000000C0204546970
      6F0100490000000100055749445448020002000300044974656D040001000000
      0000074E756D4E6F746104000100000000000C5061726369616C546F74616C01
      0049000000010005574944544802000200010003517464080004000000000007
      556E6964616465010049000000010005574944544802000200030007436F6446
      6F726E0400010000000000084E6F6D65466F726E010049000000010005574944
      54480200020028000A547269616E67756C6172020003000000000004434E504A
      010049000000010005574944544802000200120005436F645546010049000000
      0100055749445448020002000200055365726965010049000000010005574944
      5448020002000300064D6F64656C6F0100490000000100055749445448020002
      0003000E4E4665436861766541636573736F0100490000000100055749445448
      020002002C000B4375706F6D4E756D45434604000100000000000B4375706F6D
      4E756D434F4F04000100000000000B4375706F6D4D6F64656C6F010049000000
      01000557494454480200020002000A416E6F456D697373616F04000100000000
      000A4D6573456D697373616F0400010000000000024945010049000000010005
      5749445448020002000E000E435465436861766541636573736F010049000000
      0100055749445448020002002C000000}
    object mNotaDevolvidaNFeTipo: TStringField
      FieldName = 'Tipo'
      Size = 3
    end
    object mNotaDevolvidaNFeItem: TIntegerField
      FieldName = 'Item'
    end
    object mNotaDevolvidaNFeNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object mNotaDevolvidaNFeParcialTotal: TStringField
      FieldName = 'ParcialTotal'
      Size = 1
    end
    object mNotaDevolvidaNFeQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mNotaDevolvidaNFeUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object mNotaDevolvidaNFeCodForn: TIntegerField
      FieldName = 'CodForn'
    end
    object mNotaDevolvidaNFeNomeForn: TStringField
      FieldName = 'NomeForn'
      Size = 40
    end
    object mNotaDevolvidaNFeTriangular: TBooleanField
      FieldName = 'Triangular'
    end
    object mNotaDevolvidaNFeCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object mNotaDevolvidaNFeCodUF: TStringField
      FieldName = 'CodUF'
      Size = 2
    end
    object mNotaDevolvidaNFeSerie: TStringField
      FieldName = 'Serie'
      Size = 3
    end
    object mNotaDevolvidaNFeModelo: TStringField
      FieldName = 'Modelo'
      Size = 3
    end
    object mNotaDevolvidaNFeNFeChaveAcesso: TStringField
      FieldName = 'NFeChaveAcesso'
      Size = 44
    end
    object mNotaDevolvidaNFeCupomNumECF: TIntegerField
      FieldName = 'CupomNumECF'
    end
    object mNotaDevolvidaNFeCupomNumCOO: TIntegerField
      FieldName = 'CupomNumCOO'
    end
    object mNotaDevolvidaNFeCupomModelo: TStringField
      FieldName = 'CupomModelo'
      Size = 2
    end
    object mNotaDevolvidaNFeAnoEmissao: TIntegerField
      FieldName = 'AnoEmissao'
    end
    object mNotaDevolvidaNFeMesEmissao: TIntegerField
      FieldName = 'MesEmissao'
    end
    object mNotaDevolvidaNFeIE: TStringField
      FieldName = 'IE'
      Size = 14
    end
    object mNotaDevolvidaNFeCTeChaveAcesso: TStringField
      FieldName = 'CTeChaveAcesso'
      Size = 44
    end
  end
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
      'EP_TRANSP'#13#10'FROM NOTAFISCAL NF'#13#10'INNER JOIN PESSOA CLI'#13#10'ON NF.ID_C' +
      'LIENTE = CLI.CODIGO'#13#10'FULL JOIN PESSOA TRANSP'#13#10'ON NF.ID_TRANSPORT' +
      'ADORA = TRANSP.CODIGO'#13#10'WHERE NF.ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 128
    Top = 357
    object sdsNotaFiscalID: TIntegerField
      FieldName = 'ID'
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
    object sdsNotaFiscalBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
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
    object sdsNotaFiscalTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
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
    object sdsNotaFiscalTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
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
    object sdsNotaFiscalDTINICIO_DUPLICATA: TDateField
      FieldName = 'DTINICIO_DUPLICATA'
    end
    object sdsNotaFiscalTIPO_PRAZO: TStringField
      FieldName = 'TIPO_PRAZO'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscalPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsNotaFiscalNOME_CLI: TStringField
      FieldName = 'NOME_CLI'
      Size = 60
    end
    object sdsNotaFiscalEMAIL_NFE_CLI: TStringField
      FieldName = 'EMAIL_NFE_CLI'
      Size = 250
    end
    object sdsNotaFiscalENDERECO_CLI: TStringField
      FieldName = 'ENDERECO_CLI'
      Size = 60
    end
    object sdsNotaFiscalNUM_END_CLI: TStringField
      FieldName = 'NUM_END_CLI'
    end
    object sdsNotaFiscalCOMPLEMENTO_END_CLI: TStringField
      FieldName = 'COMPLEMENTO_END_CLI'
      Size = 60
    end
    object sdsNotaFiscalBAIRRO_CLI: TStringField
      FieldName = 'BAIRRO_CLI'
      Size = 30
    end
    object sdsNotaFiscalID_CIDADE_CLI: TIntegerField
      FieldName = 'ID_CIDADE_CLI'
    end
    object sdsNotaFiscalUF_CLI: TStringField
      FieldName = 'UF_CLI'
      FixedChar = True
      Size = 2
    end
    object sdsNotaFiscalCNPJ_CPF_CLI: TStringField
      FieldName = 'CNPJ_CPF_CLI'
      Size = 18
    end
    object sdsNotaFiscalINSCR_EST_CLI: TStringField
      FieldName = 'INSCR_EST_CLI'
      Size = 18
    end
    object sdsNotaFiscalCIDADE_CLI: TStringField
      FieldName = 'CIDADE_CLI'
      Size = 40
    end
    object sdsNotaFiscalNOME_TRANSP: TStringField
      FieldName = 'NOME_TRANSP'
      Size = 60
    end
    object sdsNotaFiscalEMAIL_NFE_TRANSP: TStringField
      FieldName = 'EMAIL_NFE_TRANSP'
      Size = 250
    end
    object sdsNotaFiscalENDERECO_TRANSP: TStringField
      FieldName = 'ENDERECO_TRANSP'
      Size = 60
    end
    object sdsNotaFiscalNUM_END_TRANSP: TStringField
      FieldName = 'NUM_END_TRANSP'
    end
    object sdsNotaFiscalCOMPLEMENTO_END_TRANSP: TStringField
      FieldName = 'COMPLEMENTO_END_TRANSP'
      Size = 60
    end
    object sdsNotaFiscalBAIRRO_TRANSP: TStringField
      FieldName = 'BAIRRO_TRANSP'
      Size = 30
    end
    object sdsNotaFiscalID_CIDADE_TRANSP: TIntegerField
      FieldName = 'ID_CIDADE_TRANSP'
    end
    object sdsNotaFiscalUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      FixedChar = True
      Size = 2
    end
    object sdsNotaFiscalCNPJ_CPF_TRANSP: TStringField
      FieldName = 'CNPJ_CPF_TRANSP'
      Size = 18
    end
    object sdsNotaFiscalINSCR_EST_TRANSP: TStringField
      FieldName = 'INSCR_EST_TRANSP'
      Size = 18
    end
    object sdsNotaFiscalCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      Size = 40
    end
    object sdsNotaFiscalENDERECO_CLI2: TStringField
      FieldName = 'ENDERECO_CLI2'
      Size = 82
    end
    object sdsNotaFiscalENDERECO_TRANSP2: TStringField
      FieldName = 'ENDERECO_TRANSP2'
      Size = 82
    end
    object sdsNotaFiscalCEP_CLI: TStringField
      FieldName = 'CEP_CLI'
      Size = 10
    end
    object sdsNotaFiscalCEP_TRANSP: TStringField
      FieldName = 'CEP_TRANSP'
      Size = 10
    end
    object sdsNotaFiscalDDDFONE1_CLI: TIntegerField
      FieldName = 'DDDFONE1_CLI'
    end
    object sdsNotaFiscalTELEFONE1_CLI: TStringField
      FieldName = 'TELEFONE1_CLI'
      Size = 15
    end
    object sdsNotaFiscalDDDFONE2_CLI: TIntegerField
      FieldName = 'DDDFONE2_CLI'
    end
    object sdsNotaFiscalTELEFONE2_CLI: TStringField
      FieldName = 'TELEFONE2_CLI'
      Size = 15
    end
    object sdsNotaFiscalDDDFAX_CLI: TIntegerField
      FieldName = 'DDDFAX_CLI'
    end
    object sdsNotaFiscalFAX_CLI: TStringField
      FieldName = 'FAX_CLI'
      Size = 15
    end
    object sdsNotaFiscalVLR_TRIBUTOS: TFloatField
      FieldName = 'VLR_TRIBUTOS'
    end
    object sdsNotaFiscalGRAVOU_DADOSADICIONAIS: TStringField
      FieldName = 'GRAVOU_DADOSADICIONAIS'
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
    Left = 200
    Top = 357
  end
  object cdsNotaFiscal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaFiscal'
    Left = 264
    Top = 357
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
    object cdsNotaFiscalVLR_IPI_DEVOL: TFloatField
      FieldName = 'VLR_IPI_DEVOL'
    end
    object cdsNotaFiscalBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
    end
  end
  object dsNotaFiscal: TDataSource
    DataSet = cdsNotaFiscal
    Left = 336
    Top = 357
  end
  object sdsNotaFiscal_NFe: TSQLDataSet
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
      'LI, '#13#10'CLI.DDDFAX DDDFAX_CLI, CLI.FAX FAX_CLI, CCE.NFEPROTOCOLO N' +
      'FEPROTOCOLO_CCE,'#13#10'CCE.NFERECIBO NFERECIBO_CCE, CCE.ITEM, CCE.ITE' +
      'MTIPO, CCE.TIPO TIPO_CCE, CCE.DESCRICAO DESCRICAO_CCE, CCE.MOTIV' +
      'O MOTIVO_CCE'#13#10'FROM NOTAFISCAL NF'#13#10'INNER JOIN PESSOA CLI'#13#10'ON NF.I' +
      'D_CLIENTE = CLI.CODIGO'#13#10'INNER JOIN NOTAFISCAL_NFE CCE'#13#10'ON NF.ID ' +
      '= CCE.ID'#13#10'AND CCE.ITEM = :ITEM'#13#10'WHERE NF.ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 128
    Top = 493
    object sdsNotaFiscal_NFeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNotaFiscal_NFeFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsNotaFiscal_NFeSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object sdsNotaFiscal_NFeNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object sdsNotaFiscal_NFeDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsNotaFiscal_NFeID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object sdsNotaFiscal_NFeID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsNotaFiscal_NFeID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object sdsNotaFiscal_NFeID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsNotaFiscal_NFeBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object sdsNotaFiscal_NFeVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object sdsNotaFiscal_NFeVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object sdsNotaFiscal_NFeVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
    end
    object sdsNotaFiscal_NFeVLR_ITENS: TFloatField
      FieldName = 'VLR_ITENS'
    end
    object sdsNotaFiscal_NFeVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object sdsNotaFiscal_NFeVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object sdsNotaFiscal_NFePERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object sdsNotaFiscal_NFeVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object sdsNotaFiscal_NFeVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object sdsNotaFiscal_NFeVLR_SEGURO: TFloatField
      FieldName = 'VLR_SEGURO'
    end
    object sdsNotaFiscal_NFeVLR_OUTRASDESP: TFloatField
      FieldName = 'VLR_OUTRASDESP'
    end
    object sdsNotaFiscal_NFeBASE_ICMSTRANSF: TFloatField
      FieldName = 'BASE_ICMSTRANSF'
    end
    object sdsNotaFiscal_NFePERC_TRANSF: TFloatField
      FieldName = 'PERC_TRANSF'
    end
    object sdsNotaFiscal_NFeVLR_TRANSF: TFloatField
      FieldName = 'VLR_TRANSF'
    end
    object sdsNotaFiscal_NFeVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
    end
    object sdsNotaFiscal_NFeVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
    end
    object sdsNotaFiscal_NFeVLR_TAXACISCOMEX: TFloatField
      FieldName = 'VLR_TAXACISCOMEX'
    end
    object sdsNotaFiscal_NFeVLR_OUTROS: TFloatField
      FieldName = 'VLR_OUTROS'
    end
    object sdsNotaFiscal_NFeBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
    end
    object sdsNotaFiscal_NFeVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
    end
    object sdsNotaFiscal_NFePERC_ICMSSIMPLES: TFloatField
      FieldName = 'PERC_ICMSSIMPLES'
    end
    object sdsNotaFiscal_NFeVLR_IMPORTACAO: TFloatField
      FieldName = 'VLR_IMPORTACAO'
    end
    object sdsNotaFiscal_NFeBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
    end
    object sdsNotaFiscal_NFeVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
    end
    object sdsNotaFiscal_NFeBASE_ICMSOUTROS: TFloatField
      FieldName = 'BASE_ICMSOUTROS'
    end
    object sdsNotaFiscal_NFeVLR_ICMSOUTROS: TFloatField
      FieldName = 'VLR_ICMSOUTROS'
    end
    object sdsNotaFiscal_NFeVLR_DUPLICATAOUTROS: TFloatField
      FieldName = 'VLR_DUPLICATAOUTROS'
    end
    object sdsNotaFiscal_NFeVLR_ADUANEIRA: TFloatField
      FieldName = 'VLR_ADUANEIRA'
    end
    object sdsNotaFiscal_NFePERC_ICMS_PISCOFINS: TFloatField
      FieldName = 'PERC_ICMS_PISCOFINS'
    end
    object sdsNotaFiscal_NFePERC_ICMS_OUTROSVALORES: TFloatField
      FieldName = 'PERC_ICMS_OUTROSVALORES'
    end
    object sdsNotaFiscal_NFePERC_ICMS_FRETE: TFloatField
      FieldName = 'PERC_ICMS_FRETE'
    end
    object sdsNotaFiscal_NFePERC_DESCONTOORIG: TFloatField
      FieldName = 'PERC_DESCONTOORIG'
    end
    object sdsNotaFiscal_NFeQTDVOLUME: TIntegerField
      FieldName = 'QTDVOLUME'
    end
    object sdsNotaFiscal_NFeESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 30
    end
    object sdsNotaFiscal_NFeMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object sdsNotaFiscal_NFeNUMEROVOLUME: TStringField
      FieldName = 'NUMEROVOLUME'
      Size = 30
    end
    object sdsNotaFiscal_NFePESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object sdsNotaFiscal_NFePESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object sdsNotaFiscal_NFePLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object sdsNotaFiscal_NFeUFPLACA: TStringField
      FieldName = 'UFPLACA'
      Size = 2
    end
    object sdsNotaFiscal_NFeTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
    object sdsNotaFiscal_NFeID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object sdsNotaFiscal_NFeID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object sdsNotaFiscal_NFeTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_NFeCANCELADA: TStringField
      FieldName = 'CANCELADA'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_NFeMOTIVO_CANCELADA: TStringField
      FieldName = 'MOTIVO_CANCELADA'
      Size = 100
    end
    object sdsNotaFiscal_NFeDTSAIDAENTRADA: TDateField
      FieldName = 'DTSAIDAENTRADA'
    end
    object sdsNotaFiscal_NFeHRSAIDAENTRADA: TTimeField
      FieldName = 'HRSAIDAENTRADA'
    end
    object sdsNotaFiscal_NFeID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object sdsNotaFiscal_NFeLOCALENTREGA: TStringField
      FieldName = 'LOCALENTREGA'
      Size = 1
    end
    object sdsNotaFiscal_NFeID_EXTCOMISSAO: TIntegerField
      FieldName = 'ID_EXTCOMISSAO'
    end
    object sdsNotaFiscal_NFeDESCRICAO_DESC: TStringField
      FieldName = 'DESCRICAO_DESC'
      Size = 70
    end
    object sdsNotaFiscal_NFeID_CLIENTETRIANG: TIntegerField
      FieldName = 'ID_CLIENTETRIANG'
    end
    object sdsNotaFiscal_NFeQTDTOTAL_ITENS: TIntegerField
      FieldName = 'QTDTOTAL_ITENS'
    end
    object sdsNotaFiscal_NFeNFERECIBO: TStringField
      FieldName = 'NFERECIBO'
      Size = 45
    end
    object sdsNotaFiscal_NFeNFEPROTOCOLO: TStringField
      FieldName = 'NFEPROTOCOLO'
      Size = 45
    end
    object sdsNotaFiscal_NFeNFECHAVEACESSO: TStringField
      FieldName = 'NFECHAVEACESSO'
      Size = 44
    end
    object sdsNotaFiscal_NFeNFEPROTOCOLO_CANCELADA: TStringField
      FieldName = 'NFEPROTOCOLO_CANCELADA'
      Size = 45
    end
    object sdsNotaFiscal_NFeTIPO_ENVIONFE: TStringField
      FieldName = 'TIPO_ENVIONFE'
      Size = 25
    end
    object sdsNotaFiscal_NFeNFECODBARRA_CONTINGENCIA: TStringField
      FieldName = 'NFECODBARRA_CONTINGENCIA'
      Size = 44
    end
    object sdsNotaFiscal_NFeNFEVERSAO: TStringField
      FieldName = 'NFEVERSAO'
      Size = 10
    end
    object sdsNotaFiscal_NFeNFEFINALIDADE: TStringField
      FieldName = 'NFEFINALIDADE'
      Size = 1
    end
    object sdsNotaFiscal_NFeNFEAMBIENTE: TStringField
      FieldName = 'NFEAMBIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_NFeNUMNOTACOPIADA: TIntegerField
      FieldName = 'NUMNOTACOPIADA'
    end
    object sdsNotaFiscal_NFeSERIECOPIADA: TStringField
      FieldName = 'SERIECOPIADA'
      Size = 3
    end
    object sdsNotaFiscal_NFeDTCONTINGENCIA: TDateField
      FieldName = 'DTCONTINGENCIA'
    end
    object sdsNotaFiscal_NFeHRCONTINGENCIA: TTimeField
      FieldName = 'HRCONTINGENCIA'
    end
    object sdsNotaFiscal_NFeMOTIVO_CONTINGENCIA: TStringField
      FieldName = 'MOTIVO_CONTINGENCIA'
      Size = 250
    end
    object sdsNotaFiscal_NFeNFEVERSAOEMISSAO: TStringField
      FieldName = 'NFEVERSAOEMISSAO'
    end
    object sdsNotaFiscal_NFeID_REGIMETRIB: TIntegerField
      FieldName = 'ID_REGIMETRIB'
    end
    object sdsNotaFiscal_NFeRNTC: TStringField
      FieldName = 'RNTC'
    end
    object sdsNotaFiscal_NFeVAGAOBALSA_IDENTIF: TStringField
      FieldName = 'VAGAOBALSA_IDENTIF'
    end
    object sdsNotaFiscal_NFeVAGAOBALSA_TIPOIDENTIF: TStringField
      FieldName = 'VAGAOBALSA_TIPOIDENTIF'
      Size = 1
    end
    object sdsNotaFiscal_NFeUFEMBEXPORTACAO: TStringField
      FieldName = 'UFEMBEXPORTACAO'
      Size = 2
    end
    object sdsNotaFiscal_NFeLOCALEMBEXPORTACAO: TStringField
      FieldName = 'LOCALEMBEXPORTACAO'
      Size = 60
    end
    object sdsNotaFiscal_NFePISCOFINS_SOMAROUTRASDESP: TStringField
      FieldName = 'PISCOFINS_SOMAROUTRASDESP'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_NFeTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      Size = 1
    end
    object sdsNotaFiscal_NFeGERARDUPL_OUTROSVALORES: TStringField
      FieldName = 'GERARDUPL_OUTROSVALORES'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_NFeGERARDUPL_FRETE: TStringField
      FieldName = 'GERARDUPL_FRETE'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_NFeGERARDUPL_SEGURO: TStringField
      FieldName = 'GERARDUPL_SEGURO'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_NFeINFORMADO_NUMNOTAMANUAL: TStringField
      FieldName = 'INFORMADO_NUMNOTAMANUAL'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_NFeNFEDENEGADA: TStringField
      FieldName = 'NFEDENEGADA'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_NFeMOTIVO_DENEGADA: TStringField
      FieldName = 'MOTIVO_DENEGADA'
      Size = 250
    end
    object sdsNotaFiscal_NFeDADOS_ADICIONAIS: TMemoField
      FieldName = 'DADOS_ADICIONAIS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsNotaFiscal_NFeDTINICIO_DUPLICATA: TDateField
      FieldName = 'DTINICIO_DUPLICATA'
    end
    object sdsNotaFiscal_NFeTIPO_PRAZO: TStringField
      FieldName = 'TIPO_PRAZO'
      FixedChar = True
      Size = 1
    end
    object sdsNotaFiscal_NFePERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsNotaFiscal_NFeNOME_CLI: TStringField
      FieldName = 'NOME_CLI'
      Size = 60
    end
    object sdsNotaFiscal_NFeEMAIL_NFE_CLI: TStringField
      FieldName = 'EMAIL_NFE_CLI'
      Size = 250
    end
    object sdsNotaFiscal_NFeENDERECO_CLI: TStringField
      FieldName = 'ENDERECO_CLI'
      Size = 60
    end
    object sdsNotaFiscal_NFeENDERECO_CLI2: TStringField
      FieldName = 'ENDERECO_CLI2'
      Size = 143
    end
    object sdsNotaFiscal_NFeNUM_END_CLI: TStringField
      FieldName = 'NUM_END_CLI'
    end
    object sdsNotaFiscal_NFeCOMPLEMENTO_END_CLI: TStringField
      FieldName = 'COMPLEMENTO_END_CLI'
      Size = 60
    end
    object sdsNotaFiscal_NFeBAIRRO_CLI: TStringField
      FieldName = 'BAIRRO_CLI'
      Size = 30
    end
    object sdsNotaFiscal_NFeID_CIDADE_CLI: TIntegerField
      FieldName = 'ID_CIDADE_CLI'
    end
    object sdsNotaFiscal_NFeUF_CLI: TStringField
      FieldName = 'UF_CLI'
      FixedChar = True
      Size = 2
    end
    object sdsNotaFiscal_NFeCNPJ_CPF_CLI: TStringField
      FieldName = 'CNPJ_CPF_CLI'
      Size = 18
    end
    object sdsNotaFiscal_NFeINSCR_EST_CLI: TStringField
      FieldName = 'INSCR_EST_CLI'
      Size = 18
    end
    object sdsNotaFiscal_NFeCIDADE_CLI: TStringField
      FieldName = 'CIDADE_CLI'
      Size = 40
    end
    object sdsNotaFiscal_NFeCEP_CLI: TStringField
      FieldName = 'CEP_CLI'
      Size = 10
    end
    object sdsNotaFiscal_NFeDDDFONE1_CLI: TIntegerField
      FieldName = 'DDDFONE1_CLI'
    end
    object sdsNotaFiscal_NFeTELEFONE1_CLI: TStringField
      FieldName = 'TELEFONE1_CLI'
      Size = 15
    end
    object sdsNotaFiscal_NFeDDDFONE2_CLI: TIntegerField
      FieldName = 'DDDFONE2_CLI'
    end
    object sdsNotaFiscal_NFeTELEFONE2_CLI: TStringField
      FieldName = 'TELEFONE2_CLI'
      Size = 15
    end
    object sdsNotaFiscal_NFeDDDFAX_CLI: TIntegerField
      FieldName = 'DDDFAX_CLI'
    end
    object sdsNotaFiscal_NFeFAX_CLI: TStringField
      FieldName = 'FAX_CLI'
      Size = 15
    end
    object sdsNotaFiscal_NFeNFEPROTOCOLO_CCE: TStringField
      FieldName = 'NFEPROTOCOLO_CCE'
      Size = 45
    end
    object sdsNotaFiscal_NFeNFERECIBO_CCE: TStringField
      FieldName = 'NFERECIBO_CCE'
      Size = 45
    end
    object sdsNotaFiscal_NFeITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsNotaFiscal_NFeITEMTIPO: TIntegerField
      FieldName = 'ITEMTIPO'
    end
    object sdsNotaFiscal_NFeTIPO_CCE: TStringField
      FieldName = 'TIPO_CCE'
      Size = 3
    end
    object sdsNotaFiscal_NFeDESCRICAO_CCE: TStringField
      FieldName = 'DESCRICAO_CCE'
      Size = 70
    end
    object sdsNotaFiscal_NFeMOTIVO_CCE: TMemoField
      FieldName = 'MOTIVO_CCE'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dspNotaFiscal_NFe: TDataSetProvider
    DataSet = sdsNotaFiscal_NFe
    Left = 168
    Top = 493
  end
  object cdsNotaFiscal_NFe: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaFiscal_NFe'
    Left = 208
    Top = 493
    object cdsNotaFiscal_NFeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscal_NFeFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsNotaFiscal_NFeSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsNotaFiscal_NFeNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsNotaFiscal_NFeDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsNotaFiscal_NFeID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsNotaFiscal_NFeID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsNotaFiscal_NFeID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsNotaFiscal_NFeID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsNotaFiscal_NFeBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object cdsNotaFiscal_NFeVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object cdsNotaFiscal_NFeVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object cdsNotaFiscal_NFeVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
    end
    object cdsNotaFiscal_NFeVLR_ITENS: TFloatField
      FieldName = 'VLR_ITENS'
    end
    object cdsNotaFiscal_NFeVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object cdsNotaFiscal_NFeVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object cdsNotaFiscal_NFePERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
    object cdsNotaFiscal_NFeVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object cdsNotaFiscal_NFeVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object cdsNotaFiscal_NFeVLR_SEGURO: TFloatField
      FieldName = 'VLR_SEGURO'
    end
    object cdsNotaFiscal_NFeVLR_OUTRASDESP: TFloatField
      FieldName = 'VLR_OUTRASDESP'
    end
    object cdsNotaFiscal_NFeBASE_ICMSTRANSF: TFloatField
      FieldName = 'BASE_ICMSTRANSF'
    end
    object cdsNotaFiscal_NFePERC_TRANSF: TFloatField
      FieldName = 'PERC_TRANSF'
    end
    object cdsNotaFiscal_NFeVLR_TRANSF: TFloatField
      FieldName = 'VLR_TRANSF'
    end
    object cdsNotaFiscal_NFeVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
    end
    object cdsNotaFiscal_NFeVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
    end
    object cdsNotaFiscal_NFeVLR_TAXACISCOMEX: TFloatField
      FieldName = 'VLR_TAXACISCOMEX'
    end
    object cdsNotaFiscal_NFeVLR_OUTROS: TFloatField
      FieldName = 'VLR_OUTROS'
    end
    object cdsNotaFiscal_NFeBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
    end
    object cdsNotaFiscal_NFeVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
    end
    object cdsNotaFiscal_NFePERC_ICMSSIMPLES: TFloatField
      FieldName = 'PERC_ICMSSIMPLES'
    end
    object cdsNotaFiscal_NFeVLR_IMPORTACAO: TFloatField
      FieldName = 'VLR_IMPORTACAO'
    end
    object cdsNotaFiscal_NFeBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
    end
    object cdsNotaFiscal_NFeVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
    end
    object cdsNotaFiscal_NFeBASE_ICMSOUTROS: TFloatField
      FieldName = 'BASE_ICMSOUTROS'
    end
    object cdsNotaFiscal_NFeVLR_ICMSOUTROS: TFloatField
      FieldName = 'VLR_ICMSOUTROS'
    end
    object cdsNotaFiscal_NFeVLR_DUPLICATAOUTROS: TFloatField
      FieldName = 'VLR_DUPLICATAOUTROS'
    end
    object cdsNotaFiscal_NFeVLR_ADUANEIRA: TFloatField
      FieldName = 'VLR_ADUANEIRA'
    end
    object cdsNotaFiscal_NFePERC_ICMS_PISCOFINS: TFloatField
      FieldName = 'PERC_ICMS_PISCOFINS'
    end
    object cdsNotaFiscal_NFePERC_ICMS_OUTROSVALORES: TFloatField
      FieldName = 'PERC_ICMS_OUTROSVALORES'
    end
    object cdsNotaFiscal_NFePERC_ICMS_FRETE: TFloatField
      FieldName = 'PERC_ICMS_FRETE'
    end
    object cdsNotaFiscal_NFePERC_DESCONTOORIG: TFloatField
      FieldName = 'PERC_DESCONTOORIG'
    end
    object cdsNotaFiscal_NFeQTDVOLUME: TIntegerField
      FieldName = 'QTDVOLUME'
    end
    object cdsNotaFiscal_NFeESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 30
    end
    object cdsNotaFiscal_NFeMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object cdsNotaFiscal_NFeNUMEROVOLUME: TStringField
      FieldName = 'NUMEROVOLUME'
      Size = 30
    end
    object cdsNotaFiscal_NFePESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object cdsNotaFiscal_NFePESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object cdsNotaFiscal_NFePLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object cdsNotaFiscal_NFeUFPLACA: TStringField
      FieldName = 'UFPLACA'
      Size = 2
    end
    object cdsNotaFiscal_NFeTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
    object cdsNotaFiscal_NFeID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsNotaFiscal_NFeID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object cdsNotaFiscal_NFeTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_NFeCANCELADA: TStringField
      FieldName = 'CANCELADA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_NFeMOTIVO_CANCELADA: TStringField
      FieldName = 'MOTIVO_CANCELADA'
      Size = 100
    end
    object cdsNotaFiscal_NFeDTSAIDAENTRADA: TDateField
      FieldName = 'DTSAIDAENTRADA'
    end
    object cdsNotaFiscal_NFeHRSAIDAENTRADA: TTimeField
      FieldName = 'HRSAIDAENTRADA'
    end
    object cdsNotaFiscal_NFeID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object cdsNotaFiscal_NFeLOCALENTREGA: TStringField
      FieldName = 'LOCALENTREGA'
      Size = 1
    end
    object cdsNotaFiscal_NFeID_EXTCOMISSAO: TIntegerField
      FieldName = 'ID_EXTCOMISSAO'
    end
    object cdsNotaFiscal_NFeDESCRICAO_DESC: TStringField
      FieldName = 'DESCRICAO_DESC'
      Size = 70
    end
    object cdsNotaFiscal_NFeID_CLIENTETRIANG: TIntegerField
      FieldName = 'ID_CLIENTETRIANG'
    end
    object cdsNotaFiscal_NFeQTDTOTAL_ITENS: TIntegerField
      FieldName = 'QTDTOTAL_ITENS'
    end
    object cdsNotaFiscal_NFeNFERECIBO: TStringField
      FieldName = 'NFERECIBO'
      Size = 45
    end
    object cdsNotaFiscal_NFeNFEPROTOCOLO: TStringField
      FieldName = 'NFEPROTOCOLO'
      Size = 45
    end
    object cdsNotaFiscal_NFeNFECHAVEACESSO: TStringField
      FieldName = 'NFECHAVEACESSO'
      Size = 44
    end
    object cdsNotaFiscal_NFeNFEPROTOCOLO_CANCELADA: TStringField
      FieldName = 'NFEPROTOCOLO_CANCELADA'
      Size = 45
    end
    object cdsNotaFiscal_NFeTIPO_ENVIONFE: TStringField
      FieldName = 'TIPO_ENVIONFE'
      Size = 25
    end
    object cdsNotaFiscal_NFeNFECODBARRA_CONTINGENCIA: TStringField
      FieldName = 'NFECODBARRA_CONTINGENCIA'
      Size = 44
    end
    object cdsNotaFiscal_NFeNFEVERSAO: TStringField
      FieldName = 'NFEVERSAO'
      Size = 10
    end
    object cdsNotaFiscal_NFeNFEFINALIDADE: TStringField
      FieldName = 'NFEFINALIDADE'
      Size = 1
    end
    object cdsNotaFiscal_NFeNFEAMBIENTE: TStringField
      FieldName = 'NFEAMBIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_NFeNUMNOTACOPIADA: TIntegerField
      FieldName = 'NUMNOTACOPIADA'
    end
    object cdsNotaFiscal_NFeSERIECOPIADA: TStringField
      FieldName = 'SERIECOPIADA'
      Size = 3
    end
    object cdsNotaFiscal_NFeDTCONTINGENCIA: TDateField
      FieldName = 'DTCONTINGENCIA'
    end
    object cdsNotaFiscal_NFeHRCONTINGENCIA: TTimeField
      FieldName = 'HRCONTINGENCIA'
    end
    object cdsNotaFiscal_NFeMOTIVO_CONTINGENCIA: TStringField
      FieldName = 'MOTIVO_CONTINGENCIA'
      Size = 250
    end
    object cdsNotaFiscal_NFeNFEVERSAOEMISSAO: TStringField
      FieldName = 'NFEVERSAOEMISSAO'
    end
    object cdsNotaFiscal_NFeID_REGIMETRIB: TIntegerField
      FieldName = 'ID_REGIMETRIB'
    end
    object cdsNotaFiscal_NFeRNTC: TStringField
      FieldName = 'RNTC'
    end
    object cdsNotaFiscal_NFeVAGAOBALSA_IDENTIF: TStringField
      FieldName = 'VAGAOBALSA_IDENTIF'
    end
    object cdsNotaFiscal_NFeVAGAOBALSA_TIPOIDENTIF: TStringField
      FieldName = 'VAGAOBALSA_TIPOIDENTIF'
      Size = 1
    end
    object cdsNotaFiscal_NFeUFEMBEXPORTACAO: TStringField
      FieldName = 'UFEMBEXPORTACAO'
      Size = 2
    end
    object cdsNotaFiscal_NFeLOCALEMBEXPORTACAO: TStringField
      FieldName = 'LOCALEMBEXPORTACAO'
      Size = 60
    end
    object cdsNotaFiscal_NFePISCOFINS_SOMAROUTRASDESP: TStringField
      FieldName = 'PISCOFINS_SOMAROUTRASDESP'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_NFeTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      Size = 1
    end
    object cdsNotaFiscal_NFeGERARDUPL_OUTROSVALORES: TStringField
      FieldName = 'GERARDUPL_OUTROSVALORES'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_NFeGERARDUPL_FRETE: TStringField
      FieldName = 'GERARDUPL_FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_NFeGERARDUPL_SEGURO: TStringField
      FieldName = 'GERARDUPL_SEGURO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_NFeINFORMADO_NUMNOTAMANUAL: TStringField
      FieldName = 'INFORMADO_NUMNOTAMANUAL'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_NFeNFEDENEGADA: TStringField
      FieldName = 'NFEDENEGADA'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_NFeMOTIVO_DENEGADA: TStringField
      FieldName = 'MOTIVO_DENEGADA'
      Size = 250
    end
    object cdsNotaFiscal_NFeDADOS_ADICIONAIS: TMemoField
      FieldName = 'DADOS_ADICIONAIS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsNotaFiscal_NFeDTINICIO_DUPLICATA: TDateField
      FieldName = 'DTINICIO_DUPLICATA'
    end
    object cdsNotaFiscal_NFeTIPO_PRAZO: TStringField
      FieldName = 'TIPO_PRAZO'
      FixedChar = True
      Size = 1
    end
    object cdsNotaFiscal_NFePERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsNotaFiscal_NFeNOME_CLI: TStringField
      FieldName = 'NOME_CLI'
      Size = 60
    end
    object cdsNotaFiscal_NFeEMAIL_NFE_CLI: TStringField
      FieldName = 'EMAIL_NFE_CLI'
      Size = 250
    end
    object cdsNotaFiscal_NFeENDERECO_CLI: TStringField
      FieldName = 'ENDERECO_CLI'
      Size = 60
    end
    object cdsNotaFiscal_NFeENDERECO_CLI2: TStringField
      FieldName = 'ENDERECO_CLI2'
      Size = 143
    end
    object cdsNotaFiscal_NFeNUM_END_CLI: TStringField
      FieldName = 'NUM_END_CLI'
    end
    object cdsNotaFiscal_NFeCOMPLEMENTO_END_CLI: TStringField
      FieldName = 'COMPLEMENTO_END_CLI'
      Size = 60
    end
    object cdsNotaFiscal_NFeBAIRRO_CLI: TStringField
      FieldName = 'BAIRRO_CLI'
      Size = 30
    end
    object cdsNotaFiscal_NFeID_CIDADE_CLI: TIntegerField
      FieldName = 'ID_CIDADE_CLI'
    end
    object cdsNotaFiscal_NFeUF_CLI: TStringField
      FieldName = 'UF_CLI'
      FixedChar = True
      Size = 2
    end
    object cdsNotaFiscal_NFeCNPJ_CPF_CLI: TStringField
      FieldName = 'CNPJ_CPF_CLI'
      Size = 18
    end
    object cdsNotaFiscal_NFeINSCR_EST_CLI: TStringField
      FieldName = 'INSCR_EST_CLI'
      Size = 18
    end
    object cdsNotaFiscal_NFeCIDADE_CLI: TStringField
      FieldName = 'CIDADE_CLI'
      Size = 40
    end
    object cdsNotaFiscal_NFeCEP_CLI: TStringField
      FieldName = 'CEP_CLI'
      Size = 10
    end
    object cdsNotaFiscal_NFeDDDFONE1_CLI: TIntegerField
      FieldName = 'DDDFONE1_CLI'
    end
    object cdsNotaFiscal_NFeTELEFONE1_CLI: TStringField
      FieldName = 'TELEFONE1_CLI'
      Size = 15
    end
    object cdsNotaFiscal_NFeDDDFONE2_CLI: TIntegerField
      FieldName = 'DDDFONE2_CLI'
    end
    object cdsNotaFiscal_NFeTELEFONE2_CLI: TStringField
      FieldName = 'TELEFONE2_CLI'
      Size = 15
    end
    object cdsNotaFiscal_NFeDDDFAX_CLI: TIntegerField
      FieldName = 'DDDFAX_CLI'
    end
    object cdsNotaFiscal_NFeFAX_CLI: TStringField
      FieldName = 'FAX_CLI'
      Size = 15
    end
    object cdsNotaFiscal_NFeNFEPROTOCOLO_CCE: TStringField
      FieldName = 'NFEPROTOCOLO_CCE'
      Size = 45
    end
    object cdsNotaFiscal_NFeNFERECIBO_CCE: TStringField
      FieldName = 'NFERECIBO_CCE'
      Size = 45
    end
    object cdsNotaFiscal_NFeITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsNotaFiscal_NFeITEMTIPO: TIntegerField
      FieldName = 'ITEMTIPO'
    end
    object cdsNotaFiscal_NFeTIPO_CCE: TStringField
      FieldName = 'TIPO_CCE'
      Size = 3
    end
    object cdsNotaFiscal_NFeDESCRICAO_CCE: TStringField
      FieldName = 'DESCRICAO_CCE'
      Size = 70
    end
    object cdsNotaFiscal_NFeMOTIVO_CCE: TMemoField
      FieldName = 'MOTIVO_CCE'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dsNotaFiscal_NFe: TDataSource
    DataSet = cdsNotaFiscal_NFe
    Left = 248
    Top = 493
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
      '  AND ID_COR = :ID_COR')
    SQLConnection = dmDatabase.scoDados
    Left = 440
    Top = 360
    object qProduto_FornCOD_MATERIAL_FORN: TStringField
      FieldName = 'COD_MATERIAL_FORN'
    end
    object qProduto_FornCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
  end
  object qTab_CFOP_Variacao: TSQLQuery
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
      'select *'
      'from TAB_CFOP_VARIACAO'
      'where ID = :ID'
      '  and ITEM = :ITEM')
    SQLConnection = dmDatabase.scoDados
    Left = 320
    Top = 304
    object qTab_CFOP_VariacaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qTab_CFOP_VariacaoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qTab_CFOP_VariacaoLEI: TMemoField
      FieldName = 'LEI'
      BlobType = ftMemo
      Size = 1
    end
  end
  object qProduto_Veiculo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM PRODUTO_VEICULO'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 528
    Top = 120
    object qProduto_VeiculoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProduto_VeiculoPLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object qProduto_VeiculoNUM_CHASSI: TStringField
      FieldName = 'NUM_CHASSI'
    end
    object qProduto_VeiculoNUM_RENAVAM: TStringField
      FieldName = 'NUM_RENAVAM'
      Size = 10
    end
    object qProduto_VeiculoCOD_COR: TIntegerField
      FieldName = 'COD_COR'
    end
    object qProduto_VeiculoANO_FAB: TIntegerField
      FieldName = 'ANO_FAB'
    end
    object qProduto_VeiculoANO_MOD: TIntegerField
      FieldName = 'ANO_MOD'
    end
    object qProduto_VeiculoMOTORIZACAO: TStringField
      FieldName = 'MOTORIZACAO'
      Size = 10
    end
    object qProduto_VeiculoNOME_COR: TStringField
      FieldName = 'NOME_COR'
      Size = 30
    end
    object qProduto_VeiculoMARCA: TStringField
      FieldName = 'MARCA'
      Size = 25
    end
    object qProduto_VeiculoMODELO: TStringField
      FieldName = 'MODELO'
      Size = 25
    end
    object qProduto_VeiculoCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Size = 25
    end
    object qProduto_VeiculoESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 25
    end
  end
  object dsmParcelaNFe: TDataSource
    DataSet = mParcelaNFe
    Left = 336
    Top = 424
  end
  object qOBS_Lei: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM OBS_LEI'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 752
    Top = 56
    object qOBS_LeiID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qOBS_LeiNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qOBS_LeiOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
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
      '   AND FE.TIPO_REG = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 848
    Top = 240
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
  object qOperacao_Nota: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM OPERACAO_NOTA'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 744
    Top = 120
    object qOperacao_NotaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qOperacao_NotaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qOperacao_NotaPEDIR_FINALIDADE: TStringField
      FieldName = 'PEDIR_FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object qOperacao_NotaNATUREZA_NOTA: TStringField
      FieldName = 'NATUREZA_NOTA'
      Size = 60
    end
    object qOperacao_NotaMOSTRAR_CLI_TRIANG2: TStringField
      FieldName = 'MOSTRAR_CLI_TRIANG2'
      FixedChar = True
      Size = 1
    end
  end
  object qFilial_Download: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM FILIAL_DOWNLOAD'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 888
    Top = 176
    object qFilial_DownloadID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qFilial_DownloadITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qFilial_DownloadPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object qFilial_DownloadCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
  end
  object qPedido_Adiant: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT DISTINCT P.id, P.num_pedido, P.pedido_cliente, P.vlr_adia' +
        'ntamento, NI.id ID_NOTA'
      'FROM PEDIDO P'
      'INNER JOIN NOTAFISCAL_ITENS NI'
      'ON P.id = NI.id_pedido'
      'WHERE NI.ID = :ID'
      '  AND P.vlr_adiantamento > 0')
    SQLConnection = dmDatabase.scoDados
    Left = 872
    Top = 48
    object qPedido_AdiantID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qPedido_AdiantNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object qPedido_AdiantPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object qPedido_AdiantVLR_ADIANTAMENTO: TFloatField
      FieldName = 'VLR_ADIANTAMENTO'
    end
    object qPedido_AdiantID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
      Required = True
    end
  end
  object qPedido: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT P.id, P.num_pedido, P.pedido_cliente,  P.OBS_NOTA'
      'FROM PEDIDO P'
      'WHERE P.ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 872
    Top = 104
    object qPedidoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qPedidoNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object qPedidoPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object qPedidoOBS_NOTA: TStringField
      FieldName = 'OBS_NOTA'
      Size = 250
    end
  end
  object qParametros_NFe: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_NFE')
    SQLConnection = dmDatabase.scoDados
    Left = 568
    Top = 40
    object qParametros_NFeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_NFeSOMAR_IPI_NO_ICMS: TStringField
      FieldName = 'SOMAR_IPI_NO_ICMS'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeOBS_EMAIL_NFE: TMemoField
      FieldName = 'OBS_EMAIL_NFE'
      BlobType = ftMemo
      Size = 1
    end
    object qParametros_NFeIMP_RODAPE_DANFE_CLI: TStringField
      FieldName = 'IMP_RODAPE_DANFE_CLI'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeIMP_END_COBRANCA: TStringField
      FieldName = 'IMP_END_COBRANCA'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeOBS_DADOS_ADI_DESONERACAO: TStringField
      FieldName = 'OBS_DADOS_ADI_DESONERACAO'
      Size = 100
    end
    object qParametros_NFeDESC_ICMS_DESONERADO: TStringField
      FieldName = 'DESC_ICMS_DESONERADO'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeIMP_OC: TStringField
      FieldName = 'IMP_OC'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeIMP_USUARIO: TStringField
      FieldName = 'IMP_USUARIO'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeENVAR_CODBARRA: TStringField
      FieldName = 'ENVAR_CODBARRA'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeMSG_SIMPLES_COMP: TStringField
      FieldName = 'MSG_SIMPLES_COMP'
      Size = 100
    end
  end
  object Decoder64: TIdDecoderMIME
    FillChar = '='
    Left = 752
    Top = 192
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
      'SELECT T.id, T.codcfop, T.copiarnotatriangular'
      'FROM TAB_CFOP T'
      'WHERE T.id = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 688
    Top = 264
    object qCFOPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCFOPCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object qCFOPCOPIARNOTATRIANGULAR: TStringField
      FieldName = 'COPIARNOTATRIANGULAR'
      FixedChar = True
      Size = 1
    end
  end
  object mMS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 640
    Top = 376
    Data = {
      350000009619E0BD0100000018000000010000000000030000003500064E756D
      5F4D5301004900000001000557494454480200020014000000}
    object mMSNum_MS: TStringField
      FieldName = 'Num_MS'
    end
  end
  object dsMS: TDataSource
    DataSet = mMS
    Left = 672
    Top = 376
  end
  object mMS_Ref: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Num_MS;Referencia'
    MasterFields = 'Num_MS'
    MasterSource = dsMS
    PacketRecords = 0
    Params = <>
    Left = 648
    Top = 440
    Data = {
      540000009619E0BD0100000018000000020000000000030000005400064E756D
      5F4D5301004900000001000557494454480200020014000A5265666572656E63
      696101004900000001000557494454480200020014000000}
    object mMS_RefNum_MS: TStringField
      FieldName = 'Num_MS'
    end
    object mMS_RefReferencia: TStringField
      FieldName = 'Referencia'
    end
  end
  object cdsProduto_Consumo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto_Consumo'
    Left = 971
    Top = 304
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
  object dspProduto_Consumo: TDataSetProvider
    DataSet = sdsProduto_Consumo
    Left = 931
    Top = 304
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
    Left = 899
    Top = 304
  end
  object sdsNotaFiscal_MP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT MP.*, P.referencia, P.num_ms'#13#10'FROM NOTAFISCAL_MP MP'#13#10'INNE' +
      'R JOIN PRODUTO P'#13#10'ON MP.id_material = P.id'#13#10'WHERE MP.ID = :ID'#13#10' ' +
      '     AND MP.ITEM_NOTA = :ITEM_NOTA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM_NOTA'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 800
    Top = 368
  end
  object dspNotaFiscal_MP: TDataSetProvider
    DataSet = sdsNotaFiscal_MP
    Left = 872
    Top = 368
  end
  object cdsNotaFiscal_MP: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspNotaFiscal_MP'
    Left = 936
    Top = 368
    object cdsNotaFiscal_MPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotaFiscal_MPITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsNotaFiscal_MPID_MATERIAL: TIntegerField
      FieldName = 'ID_MATERIAL'
    end
    object cdsNotaFiscal_MPTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsNotaFiscal_MPQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsNotaFiscal_MPID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object cdsNotaFiscal_MPID_MOVESTOQUE_RES: TIntegerField
      FieldName = 'ID_MOVESTOQUE_RES'
    end
    object cdsNotaFiscal_MPNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
    object cdsNotaFiscal_MPQTD_RESERVA: TFloatField
      FieldName = 'QTD_RESERVA'
    end
    object cdsNotaFiscal_MPID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsNotaFiscal_MPNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object cdsNotaFiscal_MPREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsNotaFiscal_MPNUM_MS: TStringField
      FieldName = 'NUM_MS'
    end
    object cdsNotaFiscal_MPITEM_NOTA: TIntegerField
      FieldName = 'ITEM_NOTA'
    end
  end
  object qConfig_Nfe: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CNPJ_TITULAR'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT CN.DANFE_CARACTER_SALTAR_LINHA, cc.cnpj_titular'
      'FROM CONFIG_NFE CN'
      'INNER JOIN CONFIG_CERTIFICADOS CC'
      'ON CN.ID_CERTIFICADO = CC.ID'
      'WHERE CC.CNPJ_TITULAR = :CNPJ_TITULAR')
    SQLConnection = dmDatabase_NFeBD.scoNFeBD
    Left = 536
    Top = 272
    object qConfig_NfeDANFE_CARACTER_SALTAR_LINHA: TStringField
      FieldName = 'DANFE_CARACTER_SALTAR_LINHA'
      FixedChar = True
      Size = 1
    end
    object qConfig_NfeCNPJ_TITULAR: TStringField
      FieldName = 'CNPJ_TITULAR'
    end
  end
  object qDesoneracao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'COD_CST_ICMS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_DESONERACAO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT TD.*'
      'FROM tab_desoneracao_icms TD'
      'WHERE TD.cod_cst_icms = :COD_CST_ICMS'
      '  AND TD.cod_desoneracao = :COD_DESONERACAO')
    SQLConnection = dmDatabase.scoDados
    Left = 464
    Top = 416
    object qDesoneracaoCOD_CST_ICMS: TStringField
      FieldName = 'COD_CST_ICMS'
      Required = True
      Size = 3
    end
    object qDesoneracaoCOD_DESONERACAO: TSmallintField
      FieldName = 'COD_DESONERACAO'
      Required = True
    end
    object qDesoneracaoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object mDescSuframa: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 528
    Top = 400
    object mDescSuframaPerc_ICMS: TFloatField
      FieldName = 'Perc_ICMS'
    end
  end
  object sdsNota_Eletronica: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT N.*'#13#10'FROM NOTA_FISCAL_ELETRONICA N'#13#10'WHERE N.CHAVE_ACESSO ' +
      '= :CHAVE_ACESSO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CHAVE_ACESSO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase_NFeBD.scoNFeBD
    Left = 800
    Top = 448
    object sdsNota_EletronicaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNota_EletronicaCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Required = True
      Size = 47
    end
    object sdsNota_EletronicaUF: TIntegerField
      FieldName = 'UF'
      Required = True
    end
    object sdsNota_EletronicaNATUREZA_OPERACAO: TStringField
      FieldName = 'NATUREZA_OPERACAO'
      Required = True
      Size = 60
    end
    object sdsNota_EletronicaFORMA_PAGAMENTO: TIntegerField
      FieldName = 'FORMA_PAGAMENTO'
      Required = True
    end
    object sdsNota_EletronicaSERIE: TIntegerField
      FieldName = 'SERIE'
      Required = True
    end
    object sdsNota_EletronicaNRO_NOTA_FISCAL: TIntegerField
      FieldName = 'NRO_NOTA_FISCAL'
      Required = True
    end
    object sdsNota_EletronicaDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Required = True
    end
    object sdsNota_EletronicaTIPO_NFE: TIntegerField
      FieldName = 'TIPO_NFE'
      Required = True
    end
    object sdsNota_EletronicaCODIGO_MUNICIO: TIntegerField
      FieldName = 'CODIGO_MUNICIO'
      Required = True
    end
    object sdsNota_EletronicaTIPO_EMISSAO: TIntegerField
      FieldName = 'TIPO_EMISSAO'
      Required = True
    end
    object sdsNota_EletronicaTIPO_AMBIENTE: TIntegerField
      FieldName = 'TIPO_AMBIENTE'
      Required = True
    end
    object sdsNota_EletronicaFINALIDADE: TIntegerField
      FieldName = 'FINALIDADE'
      Required = True
    end
    object sdsNota_EletronicaEMITENTE_DOCUMENTO: TStringField
      FieldName = 'EMITENTE_DOCUMENTO'
      Required = True
      Size = 14
    end
    object sdsNota_EletronicaEMITENTE_NOME: TStringField
      FieldName = 'EMITENTE_NOME'
      Required = True
      Size = 60
    end
    object sdsNota_EletronicaDESTINATARIO_DOCUMENTO: TStringField
      FieldName = 'DESTINATARIO_DOCUMENTO'
      Required = True
      Size = 14
    end
    object sdsNota_EletronicaDESTINATARIO_NOME: TStringField
      FieldName = 'DESTINATARIO_NOME'
      Required = True
      Size = 60
    end
    object sdsNota_EletronicaVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      Required = True
    end
    object sdsNota_EletronicaXML_ASSINADO: TMemoField
      FieldName = 'XML_ASSINADO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsNota_EletronicaXML_ASSINADO_PROC: TMemoField
      FieldName = 'XML_ASSINADO_PROC'
      BlobType = ftMemo
      Size = 1
    end
    object sdsNota_EletronicaNRO_RECIBO: TStringField
      FieldName = 'NRO_RECIBO'
      Required = True
      Size = 15
    end
    object sdsNota_EletronicaDATA_RECEBIMENTO: TSQLTimeStampField
      FieldName = 'DATA_RECEBIMENTO'
    end
    object sdsNota_EletronicaPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Size = 15
    end
    object sdsNota_EletronicaSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object sdsNota_EletronicaMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 60
    end
    object sdsNota_EletronicaXML_STATUS: TMemoField
      FieldName = 'XML_STATUS'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dspNota_Eletronica: TDataSetProvider
    DataSet = sdsNota_Eletronica
    Left = 872
    Top = 448
  end
  object cdsNota_Eletronica: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNota_Eletronica'
    Left = 936
    Top = 448
    object cdsNota_EletronicaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNota_EletronicaCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Required = True
      Size = 47
    end
    object cdsNota_EletronicaUF: TIntegerField
      FieldName = 'UF'
      Required = True
    end
    object cdsNota_EletronicaNATUREZA_OPERACAO: TStringField
      FieldName = 'NATUREZA_OPERACAO'
      Required = True
      Size = 60
    end
    object cdsNota_EletronicaFORMA_PAGAMENTO: TIntegerField
      FieldName = 'FORMA_PAGAMENTO'
      Required = True
    end
    object cdsNota_EletronicaSERIE: TIntegerField
      FieldName = 'SERIE'
      Required = True
    end
    object cdsNota_EletronicaNRO_NOTA_FISCAL: TIntegerField
      FieldName = 'NRO_NOTA_FISCAL'
      Required = True
    end
    object cdsNota_EletronicaDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Required = True
    end
    object cdsNota_EletronicaTIPO_NFE: TIntegerField
      FieldName = 'TIPO_NFE'
      Required = True
    end
    object cdsNota_EletronicaCODIGO_MUNICIO: TIntegerField
      FieldName = 'CODIGO_MUNICIO'
      Required = True
    end
    object cdsNota_EletronicaTIPO_EMISSAO: TIntegerField
      FieldName = 'TIPO_EMISSAO'
      Required = True
    end
    object cdsNota_EletronicaTIPO_AMBIENTE: TIntegerField
      FieldName = 'TIPO_AMBIENTE'
      Required = True
    end
    object cdsNota_EletronicaFINALIDADE: TIntegerField
      FieldName = 'FINALIDADE'
      Required = True
    end
    object cdsNota_EletronicaEMITENTE_DOCUMENTO: TStringField
      FieldName = 'EMITENTE_DOCUMENTO'
      Required = True
      Size = 14
    end
    object cdsNota_EletronicaEMITENTE_NOME: TStringField
      FieldName = 'EMITENTE_NOME'
      Required = True
      Size = 60
    end
    object cdsNota_EletronicaDESTINATARIO_DOCUMENTO: TStringField
      FieldName = 'DESTINATARIO_DOCUMENTO'
      Required = True
      Size = 14
    end
    object cdsNota_EletronicaDESTINATARIO_NOME: TStringField
      FieldName = 'DESTINATARIO_NOME'
      Required = True
      Size = 60
    end
    object cdsNota_EletronicaVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      Required = True
    end
    object cdsNota_EletronicaXML_ASSINADO: TMemoField
      FieldName = 'XML_ASSINADO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsNota_EletronicaXML_ASSINADO_PROC: TMemoField
      FieldName = 'XML_ASSINADO_PROC'
      BlobType = ftMemo
      Size = 1
    end
    object cdsNota_EletronicaNRO_RECIBO: TStringField
      FieldName = 'NRO_RECIBO'
      Required = True
      Size = 15
    end
    object cdsNota_EletronicaDATA_RECEBIMENTO: TSQLTimeStampField
      FieldName = 'DATA_RECEBIMENTO'
    end
    object cdsNota_EletronicaPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Size = 15
    end
    object cdsNota_EletronicaSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object cdsNota_EletronicaMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 60
    end
    object cdsNota_EletronicaXML_STATUS: TMemoField
      FieldName = 'XML_STATUS'
      BlobType = ftMemo
      Size = 1
    end
  end
  object sdsNFe_Log: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT L.*'#13#10'FROM NFE_LOG L'#13#10'WHERE L.ID_NFE = :ID_NFE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_NFE'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase_NFeBD.scoNFeBD
    Left = 800
    Top = 496
  end
  object dspNFe_Log: TDataSetProvider
    DataSet = sdsNFe_Log
    Left = 872
    Top = 496
  end
  object cdsNFe_Log: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNFe_Log'
    Left = 936
    Top = 496
    object cdsNFe_LogID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNFe_LogID_NFE: TIntegerField
      FieldName = 'ID_NFE'
      Required = True
    end
    object cdsNFe_LogDATA_RECEBIMENTO: TSQLTimeStampField
      FieldName = 'DATA_RECEBIMENTO'
    end
    object cdsNFe_LogPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Size = 15
    end
    object cdsNFe_LogSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object cdsNFe_LogMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 60
    end
    object cdsNFe_LogMSGDADOS: TMemoField
      FieldName = 'MSGDADOS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsNFe_LogMSGRETWS: TMemoField
      FieldName = 'MSGRETWS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsNFe_LogMSGRESULTADO: TMemoField
      FieldName = 'MSGRESULTADO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsNFe_LogCMSG: TMemoField
      FieldName = 'CMSG'
      BlobType = ftMemo
      Size = 1
    end
    object cdsNFe_LogXMSG: TMemoField
      FieldName = 'XMSG'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dsNFe_Log: TDataSource
    DataSet = cdsNFe_Log
    Left = 984
    Top = 496
  end
  object dsNota_Eletronica: TDataSource
    DataSet = cdsNota_Eletronica
    Left = 984
    Top = 448
  end
  object mNFe_Log: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'ID_NFE'
        DataType = ftInteger
      end
      item
        Name = 'DataRecebimento'
        DataType = ftTimeStamp
      end
      item
        Name = 'Protocolo'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Status'
        DataType = ftInteger
      end
      item
        Name = 'Motivo'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'MSGDados'
        DataType = ftMemo
        Size = 80
      end
      item
        Name = 'MSGRETWS'
        DataType = ftMemo
        Size = 80
      end
      item
        Name = 'MSGRESULTADO'
        DataType = ftMemo
        Size = 80
      end
      item
        Name = 'NRecibo'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NRecibo_Orig'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 504
    Top = 496
    Data = {
      7D0100009619E0BD02000000180000000B0000000000030000007D0102494404
      000100000000000649445F4E464504000100000000000F446174615265636562
      696D656E746F10001100000001000753554254595045020049000A00466F726D
      6174746564000950726F746F636F6C6F01004900000001000557494454480200
      02000F00065374617475730400010000000000064D6F7469766F010049000000
      0100055749445448020002003C00084D53474461646F7304004B000000020007
      535542545950450200490005005465787400055749445448020002005000084D
      5347524554575304004B00000002000753554254595045020049000500546578
      74000557494454480200020050000C4D5347524553554C5441444F04004B0000
      0002000753554254595045020049000500546578740005574944544802000200
      5000074E52656369626F0100490000000100055749445448020002001E000C4E
      52656369626F5F4F7269670100490000000100055749445448020002001E0000
      00}
    object mNFe_LogID: TIntegerField
      FieldName = 'ID'
    end
    object mNFe_LogID_NFE: TIntegerField
      FieldName = 'ID_NFE'
    end
    object mNFe_LogDataRecebimento: TSQLTimeStampField
      FieldName = 'DataRecebimento'
    end
    object mNFe_LogProtocolo: TStringField
      FieldName = 'Protocolo'
      Size = 15
    end
    object mNFe_LogStatus: TIntegerField
      FieldName = 'Status'
    end
    object mNFe_LogMotivo: TStringField
      FieldName = 'Motivo'
      Size = 60
    end
    object mNFe_LogMSGDados: TMemoField
      FieldName = 'MSGDados'
      BlobType = ftMemo
      Size = 80
    end
    object mNFe_LogMSGRETWS: TMemoField
      FieldName = 'MSGRETWS'
      BlobType = ftMemo
      Size = 80
    end
    object mNFe_LogMSGRESULTADO: TMemoField
      FieldName = 'MSGRESULTADO'
      BlobType = ftMemo
      Size = 80
    end
    object mNFe_LogNRecibo: TStringField
      FieldName = 'NRecibo'
      Size = 30
    end
    object mNFe_LogNRecibo_Orig: TStringField
      FieldName = 'NRecibo_Orig'
      Size = 30
    end
  end
  object dsmNFe_Log: TDataSource
    DataSet = mNFe_Log
    Left = 544
    Top = 496
  end
  object qPedido_Item: TSQLQuery
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
      
        'SELECT I.tamanho_cliente, I.nome_cor_cliente, I.cod_produto_clie' +
        'nte, i.cod_cor_cliente'
      'FROM PEDIDO_ITEM I'
      'WHERE I.ID = :ID'
      '  AND I.ITEM = :ITEM')
    SQLConnection = dmDatabase.scoDados
    Left = 936
    Top = 112
    object qPedido_ItemTAMANHO_CLIENTE: TStringField
      FieldName = 'TAMANHO_CLIENTE'
      Size = 10
    end
    object qPedido_ItemNOME_COR_CLIENTE: TStringField
      FieldName = 'NOME_COR_CLIENTE'
      Size = 100
    end
    object qPedido_ItemCOD_PRODUTO_CLIENTE: TStringField
      FieldName = 'COD_PRODUTO_CLIENTE'
      Size = 15
    end
    object qPedido_ItemCOD_COR_CLIENTE: TStringField
      FieldName = 'COD_COR_CLIENTE'
      Size = 10
    end
  end
  object sdsTPag: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT SUM(NP.vlr_vencimento) VLR_VENCIMENTO, TP.cod_imp_fiscal'#13 +
      #10'FROM NOTAFISCAL_PARC NP'#13#10'LEFT JOIN tipocobranca TP'#13#10'ON NP.id_ti' +
      'pocobranca = TP.ID'#13#10'where NP.ID = :ID'#13#10'GROUP BY TP.cod_imp_fisca' +
      'l'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 512
    Top = 192
  end
  object dspTPag: TDataSetProvider
    DataSet = sdsTPag
    Left = 544
    Top = 192
  end
  object cdsTPag: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTPag'
    Left = 576
    Top = 192
    object cdsTPagVLR_VENCIMENTO: TFloatField
      FieldName = 'VLR_VENCIMENTO'
    end
    object cdsTPagCOD_IMP_FISCAL: TStringField
      FieldName = 'COD_IMP_FISCAL'
      Size = 2
    end
  end
  object qCBarra: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_COR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TAMANHO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT C.*'
      'FROM CBARRA C'
      'WHERE C.ID_PRODUTO = :ID_PRODUTO'
      '  AND C.ID_COR = :ID_COR'
      '  AND C.TAMANHO = :TAMANHO')
    SQLConnection = dmDatabase.scoDados
    Left = 624
    Top = 112
    object qCBarraID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCBarraCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 13
    end
    object qCBarraID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object qCBarraID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object qCBarraTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object qCBarraCOD_PRINCIPAL: TStringField
      FieldName = 'COD_PRINCIPAL'
      Size = 9
    end
    object qCBarraCOD_SEQUENCIAL: TIntegerField
      FieldName = 'COD_SEQUENCIAL'
    end
    object qCBarraFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
  end
  object qItensNte: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT DISTINCT I.ID_NTE, NTE.NUMNOTA, NTE.SERIE, P.NOME NOME_CL' +
        'IENTE_TRI, P.CNPJ_CPF CNPJ_CPF_CLIENTE_TRI, '
      'NTE.DTEMISSAO'
      'FROM NOTAFISCAL_ITENS I'
      'INNER JOIN NOTAFISCAL NTE'
      'ON I.ID_NTE = NTE.ID'
      'INNER JOIN PESSOA P'
      'ON NTE.id_cliente = P.CODIGO'
      'WHERE I.ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 440
    Top = 264
    object qItensNteID_NTE: TIntegerField
      FieldName = 'ID_NTE'
    end
    object qItensNteNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object qItensNteSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object qItensNteNOME_CLIENTE_TRI: TStringField
      FieldName = 'NOME_CLIENTE_TRI'
      Size = 60
    end
    object qItensNteCNPJ_CPF_CLIENTE_TRI: TStringField
      FieldName = 'CNPJ_CPF_CLIENTE_TRI'
    end
    object qItensNteDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
  end
  object qNFeNota: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CHAVE_ACESSO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT N.id, N.chave_acesso, N.nro_nota_fiscal'
      'FROM nota_fiscal_eletronica N'
      'where N.chave_acesso = :CHAVE_ACESSO')
    SQLConnection = dmDatabase_NFeBD.scoNFeBD
    Left = 744
    Top = 312
    object qNFeNotaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qNFeNotaCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Required = True
      Size = 47
    end
    object qNFeNotaNRO_NOTA_FISCAL: TIntegerField
      FieldName = 'NRO_NOTA_FISCAL'
      Required = True
    end
  end
end
