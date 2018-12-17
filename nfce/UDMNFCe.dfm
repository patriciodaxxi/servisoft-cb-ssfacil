object DMNFCe: TDMNFCe
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 255
  Top = 91
  Height = 603
  Width = 853
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
    object qFilialNFCEPRODUCAO: TStringField
      FieldName = 'NFCEPRODUCAO'
      FixedChar = True
      Size = 1
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
    object qParametrosENDXMLNFCE: TStringField
      FieldName = 'ENDXMLNFCE'
      Size = 250
    end
    object qParametrosENDPDFNFCE: TStringField
      FieldName = 'ENDPDFNFCE'
      Size = 250
    end
    object qParametrosID_CLIENTE_CONSUMIDOR: TIntegerField
      FieldName = 'ID_CLIENTE_CONSUMIDOR'
    end
    object qParametrosFUSOHORARIO: TStringField
      FieldName = 'FUSOHORARIO'
      Size = 6
    end
    object qParametrosFUSOHORARIO_VERAO: TStringField
      FieldName = 'FUSOHORARIO_VERAO'
      Size = 6
    end
    object qParametrosUSA_OBS_PEDIDO_NOTA: TStringField
      FieldName = 'USA_OBS_PEDIDO_NOTA'
      FixedChar = True
      Size = 1
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
    Left = 272
    Top = 216
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
    object qTipoCobrancaCARTAODEBITO: TStringField
      FieldName = 'CARTAODEBITO'
      FixedChar = True
      Size = 1
    end
    object qTipoCobrancaCOD_IMP_FISCAL: TStringField
      FieldName = 'COD_IMP_FISCAL'
      Size = 2
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
    Left = 128
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
        Name = 'CodBarra2'
        DataType = ftString
        Size = 14
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
        Name = 'Unidade_Trib'
        DataType = ftString
        Size = 6
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
      7A0700009619E0BD01000000180000004E0000000000030000007A070646696C
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
      74650100490000000100055749445448020002001E0008436F645F4365737401
      004900000001000557494454480200020007000A436F645F456E714950490100
      49000000010005574944544802000200030009436F6442617272613201004900
      00000100055749445448020002000E0011566C725F556E69746172696F5F5472
      69620800040000000000085174645F5472696208000400000000000C556E6964
      6164655F5472696201004900000001000557494454480200020006000000}
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
      DisplayFormat = '0.000'
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
    object mItensNFeCod_Cest: TStringField
      FieldName = 'Cod_Cest'
      Size = 7
    end
    object mItensNFeCod_EnqIPI: TStringField
      FieldName = 'Cod_EnqIPI'
      Size = 3
    end
    object mItensNFeCodBarra2: TStringField
      FieldName = 'CodBarra2'
      Size = 14
    end
    object mItensNFeVlr_Unitario_Trib: TFloatField
      FieldName = 'Vlr_Unitario_Trib'
    end
    object mItensNFeQtd_Trib: TFloatField
      FieldName = 'Qtd_Trib'
    end
    object mItensNFeUnidade_Trib: TStringField
      FieldName = 'Unidade_Trib'
      Size = 6
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
  object sdsCupomFiscal: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CF.*, CLI.NOME NOME_CLI, CLI.EMAIL_NFE EMAIL_NFE_CLI, CLI' +
      '.ENDERECO ENDERECO_CLI,'#13#10'(CLI.ENDERECO || '#39', '#39'||  CLI.NUM_END ||' +
      ' '#39' '#39'|| COALESCE(CLI.COMPLEMENTO_END,'#39#39')) ENDERECO_CLI2,'#13#10'CLI.NUM' +
      '_END NUM_END_CLI, CLI.COMPLEMENTO_END COMPLEMENTO_END_CLI,'#13#10'CLI.' +
      'BAIRRO BAIRRO_CLI, CLI.ID_CIDADE ID_CIDADE_CLI, CLI.UF UF_CLI,'#13#10 +
      'CLI.CNPJ_CPF CNPJ_CPF_CLI, CLI.INSCR_EST INSCR_EST_CLI, CLI.CIDA' +
      'DE CIDADE_CLI, CLI.CEP CEP_CLI,'#13#10'CLI.DDDFONE1 DDDFONE1_CLI, CLI.' +
      'TELEFONE1 TELEFONE1_CLI, CLI.DDDFONE2 DDDFONE2_CLI, CLI.TELEFONE' +
      '2 TELEFONE2_CLI, '#13#10'CLI.DDDFAX DDDFAX_CLI, CLI.FAX FAX_CLI, CLI.P' +
      'ESSOA PESSOA_CLI, '#13#10'FIL.ddd1 DDD_FILIAL, FIL.fone FONE_FILIAL,'#13#10 +
      '(COALESCE(FIL.ddd1,'#39#39') || '#39' '#39'||  FIL.fone ) TELEFONE_FIL,'#13#10'FIL.C' +
      'IDADE CIDADE_FIL, FIL.UF UF_FIL, FIL.BAIRRO BAIRRO_FIL, FIL.CEP ' +
      'CEP_FIL, FIL.PESSOA PESSOA_FIL,'#13#10'FIL.CNPJ_CPF CNPJ_CPF_FIL , FIL' +
      '.INSCR_EST INSCR_EST_FIL, FIL.NOME NOME_FILIAL,'#13#10'FIL.NOME_INTERN' +
      'O NOME_INTERNO_FIL, TC.nome NOME_FORMAPAGAMENTO,'#13#10'VEND.nome NOME' +
      '_VENDEDOR,'#13#10#13#10'(FIL.ENDERECO || '#39', '#39'||  FIL.NUM_END || '#39' '#39'|| COAL' +
      'ESCE(FIL.COMPLEMENTO_END,'#39#39')) ENDERECO_FIL2'#13#10#13#10'FROM CUPOMFISCAL ' +
      'CF'#13#10'INNER JOIN PESSOA CLI'#13#10'ON CF.ID_CLIENTE = CLI.CODIGO'#13#10'INNER ' +
      'JOIN FILIAL FIL'#13#10'ON CF.filial = FIL.id'#13#10'LEFT JOIN tipocobranca T' +
      'C'#13#10'ON CF.id_tipocobranca = TC.id'#13#10'LEFT JOIN PESSOA VEND'#13#10'ON CF.i' +
      'd_vendedor = VEND.codigo'#13#10#13#10'WHERE CF.ID = :ID'#13#10
    DataSource = dsCupomFiscal
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
    Top = 357
  end
  object dspCupomFiscal: TDataSetProvider
    DataSet = sdsCupomFiscal
    Left = 200
    Top = 357
  end
  object cdsCupomFiscal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCupomFiscal'
    Left = 264
    Top = 357
    object cdsCupomFiscalID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCupomFiscalNUMCUPOM: TIntegerField
      FieldName = 'NUMCUPOM'
    end
    object cdsCupomFiscalDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsCupomFiscalHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object cdsCupomFiscalID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsCupomFiscalTIPO_PGTO: TStringField
      FieldName = 'TIPO_PGTO'
      FixedChar = True
      Size = 1
    end
    object cdsCupomFiscalID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsCupomFiscalID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsCupomFiscalPERC_VENDEDOR: TFloatField
      FieldName = 'PERC_VENDEDOR'
    end
    object cdsCupomFiscalBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object cdsCupomFiscalVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object cdsCupomFiscalVLR_PRODUTOS: TFloatField
      FieldName = 'VLR_PRODUTOS'
    end
    object cdsCupomFiscalVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object cdsCupomFiscalVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsCupomFiscalCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsCupomFiscalVLR_RECEBIDO: TFloatField
      FieldName = 'VLR_RECEBIDO'
    end
    object cdsCupomFiscalVLR_TROCO: TFloatField
      FieldName = 'VLR_TROCO'
    end
    object cdsCupomFiscalID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsCupomFiscalFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsCupomFiscalID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsCupomFiscalCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object cdsCupomFiscalTIPO: TStringField
      FieldName = 'TIPO'
      Size = 3
    end
    object cdsCupomFiscalTERMINAL_ID: TSmallintField
      FieldName = 'TERMINAL_ID'
    end
    object cdsCupomFiscalVLR_TRIBUTO: TFloatField
      FieldName = 'VLR_TRIBUTO'
    end
    object cdsCupomFiscalVLR_TRIBUTO_FEDERAL: TFloatField
      FieldName = 'VLR_TRIBUTO_FEDERAL'
    end
    object cdsCupomFiscalVLR_TRIBUTO_ESTADUAL: TFloatField
      FieldName = 'VLR_TRIBUTO_ESTADUAL'
    end
    object cdsCupomFiscalVLR_TRIBUTO_MUNICIPAL: TFloatField
      FieldName = 'VLR_TRIBUTO_MUNICIPAL'
    end
    object cdsCupomFiscalNUM_CARTAO: TSmallintField
      FieldName = 'NUM_CARTAO'
    end
    object cdsCupomFiscalNOME_CLI: TStringField
      FieldName = 'NOME_CLI'
      Size = 60
    end
    object cdsCupomFiscalEMAIL_NFE_CLI: TStringField
      FieldName = 'EMAIL_NFE_CLI'
      Size = 250
    end
    object cdsCupomFiscalENDERECO_CLI: TStringField
      FieldName = 'ENDERECO_CLI'
      Size = 60
    end
    object cdsCupomFiscalENDERECO_CLI2: TStringField
      FieldName = 'ENDERECO_CLI2'
      Size = 143
    end
    object cdsCupomFiscalNUM_END_CLI: TStringField
      FieldName = 'NUM_END_CLI'
    end
    object cdsCupomFiscalCOMPLEMENTO_END_CLI: TStringField
      FieldName = 'COMPLEMENTO_END_CLI'
      Size = 60
    end
    object cdsCupomFiscalBAIRRO_CLI: TStringField
      FieldName = 'BAIRRO_CLI'
      Size = 30
    end
    object cdsCupomFiscalID_CIDADE_CLI: TIntegerField
      FieldName = 'ID_CIDADE_CLI'
    end
    object cdsCupomFiscalUF_CLI: TStringField
      FieldName = 'UF_CLI'
      FixedChar = True
      Size = 2
    end
    object cdsCupomFiscalCNPJ_CPF_CLI: TStringField
      FieldName = 'CNPJ_CPF_CLI'
    end
    object cdsCupomFiscalINSCR_EST_CLI: TStringField
      FieldName = 'INSCR_EST_CLI'
      Size = 18
    end
    object cdsCupomFiscalCIDADE_CLI: TStringField
      FieldName = 'CIDADE_CLI'
      Size = 40
    end
    object cdsCupomFiscalCEP_CLI: TStringField
      FieldName = 'CEP_CLI'
      Size = 10
    end
    object cdsCupomFiscalDDDFONE1_CLI: TIntegerField
      FieldName = 'DDDFONE1_CLI'
    end
    object cdsCupomFiscalTELEFONE1_CLI: TStringField
      FieldName = 'TELEFONE1_CLI'
      Size = 15
    end
    object cdsCupomFiscalDDDFONE2_CLI: TIntegerField
      FieldName = 'DDDFONE2_CLI'
    end
    object cdsCupomFiscalTELEFONE2_CLI: TStringField
      FieldName = 'TELEFONE2_CLI'
      Size = 15
    end
    object cdsCupomFiscalDDDFAX_CLI: TIntegerField
      FieldName = 'DDDFAX_CLI'
    end
    object cdsCupomFiscalFAX_CLI: TStringField
      FieldName = 'FAX_CLI'
      Size = 15
    end
    object cdsCupomFiscalNFEAMBIENTE: TStringField
      FieldName = 'NFEAMBIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsCupomFiscalNFECHAVEACESSO: TStringField
      FieldName = 'NFECHAVEACESSO'
      Size = 44
    end
    object cdsCupomFiscalNFEPROTOCOLO: TStringField
      FieldName = 'NFEPROTOCOLO'
      Size = 45
    end
    object cdsCupomFiscalNFERECIBO: TStringField
      FieldName = 'NFERECIBO'
      Size = 45
    end
    object cdsCupomFiscalNFEVERSAO: TStringField
      FieldName = 'NFEVERSAO'
      Size = 10
    end
    object cdsCupomFiscalTIPO_ATENDIMENTO: TSmallintField
      FieldName = 'TIPO_ATENDIMENTO'
    end
    object cdsCupomFiscalTIPO_IMPRESSAO_NFCE: TSmallintField
      FieldName = 'TIPO_IMPRESSAO_NFCE'
    end
    object cdsCupomFiscalTIPO_ENVIONFE: TStringField
      FieldName = 'TIPO_ENVIONFE'
      Size = 25
    end
    object cdsCupomFiscalNFEPROTOCOLO_CANCELADA: TStringField
      FieldName = 'NFEPROTOCOLO_CANCELADA'
      Size = 45
    end
    object cdsCupomFiscalID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsCupomFiscalTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      FixedChar = True
      Size = 1
    end
    object cdsCupomFiscalVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object cdsCupomFiscalVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
    end
    object cdsCupomFiscalVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
    end
    object cdsCupomFiscalMOTIVO_CANCELADA: TStringField
      FieldName = 'MOTIVO_CANCELADA'
      Size = 150
    end
    object cdsCupomFiscalDADOS_ADICIONAIS: TMemoField
      FieldName = 'DADOS_ADICIONAIS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsCupomFiscalFONTE_TRIBUTOS: TStringField
      FieldName = 'FONTE_TRIBUTOS'
      Size = 25
    end
    object cdsCupomFiscalNFEDENEGADA: TStringField
      FieldName = 'NFEDENEGADA'
      FixedChar = True
      Size = 1
    end
    object cdsCupomFiscalTIPO_DESTINO_OPERACAO: TSmallintField
      FieldName = 'TIPO_DESTINO_OPERACAO'
    end
    object cdsCupomFiscalNFEFINALIDADE: TStringField
      FieldName = 'NFEFINALIDADE'
      Size = 1
    end
    object cdsCupomFiscalENDERECO_FIL2: TStringField
      FieldName = 'ENDERECO_FIL2'
      Size = 138
    end
    object cdsCupomFiscalCIDADE_FIL: TStringField
      FieldName = 'CIDADE_FIL'
      Size = 40
    end
    object cdsCupomFiscalUF_FIL: TStringField
      FieldName = 'UF_FIL'
      Size = 2
    end
    object cdsCupomFiscalBAIRRO_FIL: TStringField
      FieldName = 'BAIRRO_FIL'
      Size = 30
    end
    object cdsCupomFiscalCEP_FIL: TStringField
      FieldName = 'CEP_FIL'
      Size = 9
    end
    object cdsCupomFiscalPESSOA_FIL: TStringField
      FieldName = 'PESSOA_FIL'
      FixedChar = True
      Size = 1
    end
    object cdsCupomFiscalCNPJ_CPF_FIL: TStringField
      FieldName = 'CNPJ_CPF_FIL'
      Size = 18
    end
    object cdsCupomFiscalINSCR_EST_FIL: TStringField
      FieldName = 'INSCR_EST_FIL'
      Size = 18
    end
    object cdsCupomFiscalNOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object cdsCupomFiscalNOME_INTERNO_FIL: TStringField
      FieldName = 'NOME_INTERNO_FIL'
      Size = 30
    end
    object cdsCupomFiscalPESSOA_CLI: TStringField
      FieldName = 'PESSOA_CLI'
      FixedChar = True
      Size = 1
    end
    object cdsCupomFiscalNOME_FORMAPAGAMENTO: TStringField
      FieldName = 'NOME_FORMAPAGAMENTO'
      Size = 30
    end
    object cdsCupomFiscalSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsCupomFiscalNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 60
    end
    object cdsCupomFiscalMOTIVO_DENEGADO: TStringField
      FieldName = 'MOTIVO_DENEGADO'
      Size = 200
    end
    object cdsCupomFiscalDDD_FILIAL: TIntegerField
      FieldName = 'DDD_FILIAL'
    end
    object cdsCupomFiscalFONE_FILIAL: TStringField
      FieldName = 'FONE_FILIAL'
      Size = 15
    end
    object cdsCupomFiscalTELEFONE_FIL: TStringField
      FieldName = 'TELEFONE_FIL'
      Size = 27
    end
    object cdsCupomFiscalCLIENTE_NOME: TStringField
      FieldName = 'CLIENTE_NOME'
      Size = 30
    end
    object cdsCupomFiscalCLIENTE_OBS: TStringField
      FieldName = 'CLIENTE_OBS'
      Size = 120
    end
    object cdsCupomFiscalCLIENTE_FONE: TStringField
      FieldName = 'CLIENTE_FONE'
      Size = 10
    end
    object cdsCupomFiscalCLIENTE_ENDERECO: TStringField
      FieldName = 'CLIENTE_ENDERECO'
      Size = 120
    end
    object cdsCupomFiscalID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
  end
  object dsCupomFiscal: TDataSource
    DataSet = cdsCupomFiscal
    Left = 336
    Top = 357
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
    Left = 352
    Top = 272
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
  object dsmParcelaNFe: TDataSource
    DataSet = mParcelaNFe
    Left = 336
    Top = 424
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
    Left = 568
    Top = 272
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
    Left = 640
    Top = 192
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
  object qFilial_NFCe: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM FILIAL_NFCE'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 592
    Top = 336
    object qFilial_NFCeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qFilial_NFCeCSC: TStringField
      FieldName = 'CSC'
      Size = 40
    end
    object qFilial_NFCeCLDTOKEN: TStringField
      FieldName = 'CLDTOKEN'
      Size = 6
    end
  end
  object qTransp: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT CODIGO, NOME, endereco, num_end, id_cidade, cep, bairro, ' +
        'complemento_end, uf, id_pais, CIDADE, PESSOA, CNPJ_CPF, INSCR_ES' +
        'T'
      'FROM PESSOA'
      'WHERE CODIGO = :CODIGO')
    SQLConnection = dmDatabase.scoDados
    Left = 552
    Top = 88
    object qTranspCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qTranspNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qTranspENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object qTranspNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object qTranspID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object qTranspCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qTranspBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qTranspCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object qTranspUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object qTranspID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
    object qTranspCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qTranspPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object qTranspCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object qTranspINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
  end
  object qCupomFiscal_Cli: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT CP.*, CID.NOME NOME_CIDADE'
      'FROM CUPOMFISCAL_CLI CP'
      'LEFT JOIN CIDADE CID'
      'ON CP.ID_CIDADE = CID.ID'
      'WHERE CP.ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 512
    Top = 192
    object qCupomFiscal_CliID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCupomFiscal_CliENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object qCupomFiscal_CliNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object qCupomFiscal_CliCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 60
    end
    object qCupomFiscal_CliBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object qCupomFiscal_CliID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object qCupomFiscal_CliDDD: TStringField
      FieldName = 'DDD'
      Size = 4
    end
    object qCupomFiscal_CliFONE: TStringField
      FieldName = 'FONE'
      Size = 12
    end
    object qCupomFiscal_CliID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object qCupomFiscal_CliCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qCupomFiscal_CliEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 150
    end
    object qCupomFiscal_CliTIPO_CONTRIBUINTE: TSmallintField
      FieldName = 'TIPO_CONTRIBUINTE'
    end
    object qCupomFiscal_CliNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      Size = 40
    end
    object qCupomFiscal_CliPLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object qCupomFiscal_CliUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      Size = 2
    end
    object qCupomFiscal_CliTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
  end
  object mPedAux: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'ID_Pedido'
    Params = <>
    Left = 720
    Top = 240
    Data = {
      490000009619E0BD01000000180000000200000000000300000049000949445F
      50656469646F0400010000000000084F62735F4E6F7661010049000000010005
      574944544802000200FA000000}
    object mPedAuxID_Pedido: TIntegerField
      FieldName = 'ID_Pedido'
    end
    object mPedAuxObs_Nova: TStringField
      FieldName = 'Obs_Nova'
      Size = 250
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
    Left = 440
    Top = 336
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
  object qObs_Lei: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM obs_lei'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 688
    Top = 328
    object qObs_LeiID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qObs_LeiNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qObs_LeiOBS: TStringField
      FieldName = 'OBS'
      Size = 250
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
    Left = 520
    Top = 432
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
    Left = 592
    Top = 432
  end
  object cdsNota_Eletronica: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNota_Eletronica'
    Left = 656
    Top = 432
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
    Left = 520
    Top = 480
  end
  object dspNFe_Log: TDataSetProvider
    DataSet = sdsNFe_Log
    Left = 592
    Top = 480
  end
  object cdsNFe_Log: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNFe_Log'
    Left = 656
    Top = 480
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
    Left = 704
    Top = 480
  end
  object dsNota_Eletronica: TDataSource
    DataSet = cdsNota_Eletronica
    Left = 704
    Top = 432
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
    Left = 384
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
    Left = 424
    Top = 496
  end
  object qParametros_NFe: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT VERSAONFCE, ENVAR_CODBARRA'
      'FROM PARAMETROS_NFE'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 216
    Top = 168
    object qParametros_NFeVERSAONFCE: TStringField
      FieldName = 'VERSAONFCE'
      Size = 10
    end
    object qParametros_NFeENVAR_CODBARRA: TStringField
      FieldName = 'ENVAR_CODBARRA'
      FixedChar = True
      Size = 1
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
    Left = 712
    Top = 72
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
  object sdsTPag: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT SUM(NP.vlr_vencimento) VLR_VENCIMENTO, TP.cod_imp_fiscal'#13 +
      #10'FROM cupomfiscal_parc NP'#13#10'LEFT JOIN tipocobranca TP'#13#10'ON NP.id_t' +
      'ipocobranca = TP.ID'#13#10'where NP.ID = :ID'#13#10'GROUP BY TP.cod_imp_fisc' +
      'al'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 16
  end
  object dspTPag: TDataSetProvider
    DataSet = sdsTPag
    Left = 488
    Top = 16
  end
  object cdsTPag: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTPag'
    Left = 520
    Top = 16
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
    Left = 632
    Top = 120
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
    Left = 432
    Top = 400
    object qProduto_FornCOD_MATERIAL_FORN: TStringField
      FieldName = 'COD_MATERIAL_FORN'
    end
    object qProduto_FornCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
  end
end
