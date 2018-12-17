object DMCadRecibo: TDMCadRecibo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 69
  Top = 23
  Height = 670
  Width = 1204
  object sdsRecibo_Parc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM RECIBO_PARC'#13#10'WHERE ID = :ID'#13#10
    DataSource = dsRecibo_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 171
    object sdsRecibo_ParcID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsRecibo_ParcITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsRecibo_ParcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object sdsRecibo_ParcVLR_VENCIMENTO: TFloatField
      FieldName = 'VLR_VENCIMENTO'
    end
    object sdsRecibo_ParcID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object sdsRecibo_ParcID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
  end
  object cdsRecibo_Parc: TClientDataSet
    Aggregates = <>
    DataSetField = cdsRecibosdsRecibo_Parc
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 136
    Top = 171
    object cdsRecibo_ParcID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRecibo_ParcITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRecibo_ParcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object cdsRecibo_ParcVLR_VENCIMENTO: TFloatField
      FieldName = 'VLR_VENCIMENTO'
      DisplayFormat = '0.00'
    end
    object cdsRecibo_ParcID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsRecibo_ParcID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsRecibo_ParclkNome_TipoCobranca: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNome_TipoCobranca'
      LookupDataSet = cdsTipoCobranca
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'ID_TIPOCOBRANCA'
      Size = 40
      Lookup = True
    end
    object cdsRecibo_ParclkNome_Conta: TStringField
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
  object dsRecibo_Parc: TDataSource
    DataSet = cdsRecibo_Parc
    Left = 184
    Top = 171
  end
  object sdsCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PESSOA'#13#10'WHERE INATIVO = '#39'N'#39#13#10'      AND TP_CLIENTE' +
      ' = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 17
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 520
    Top = 17
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCliente'
    Left = 552
    Top = 17
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
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 584
    Top = 17
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT FIL.*, NAT.CODIGO COD_NATUREZA, PRO.TIPO_NATUREZA, PRO.NO' +
      'ME NOME_PROVEDOR,'#13#10'SER.CODIGO COD_SERVICO_SINT, RT.CODIGO COD_RE' +
      'GIME_TIB_ESP, CID.CODMUNICIPIO, PRO.TIPO_RETORNO,'#13#10'PRO.mostrar_a' +
      'liquota_pd, PRO.inf_cod_servico, CID.LINKNFSE, CID.FONE_PREFEITU' +
      'RA, CID.SITE_PREFEITURA,'#13#10'CID.END_LOGO_PREFEITURA'#13#10'FROM FILIAL F' +
      'IL'#13#10'LEFT JOIN NFSE_NATUREZA NAT'#13#10'ON FIL.ID_NATUREZA = NAT.ID'#13#10'LE' +
      'FT JOIN SERVICO SER'#13#10'ON FIL.ID_SERVICO_SINT = SER.ID'#13#10'LEFT JOIN ' +
      'REGIME_TRIB RT'#13#10'ON FIL.ID_REGIME_TRIB_NFSE = RT.ID'#13#10'LEFT JOIN CI' +
      'DADE CID'#13#10'ON FIL.ID_CIDADE = CID.ID'#13#10'LEFT JOIN PROVEDOR PRO'#13#10'ON ' +
      'CID.ID_PROVEDOR = PRO.ID'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 209
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 328
    Top = 209
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 360
    Top = 209
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
    object cdsFilialsdsFilialRelatorios: TDataSetField
      FieldName = 'sdsFilialRelatorios'
    end
    object cdsFilialEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 40
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 392
    Top = 209
  end
  object sdsTipoCobranca: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TIPOCOBRANCA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 303
  end
  object dspTipoCobranca: TDataSetProvider
    DataSet = sdsTipoCobranca
    Left = 328
    Top = 303
  end
  object cdsTipoCobranca: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspTipoCobranca'
    Left = 360
    Top = 303
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
    Left = 392
    Top = 303
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
    Left = 296
    Top = 350
  end
  object dspContas: TDataSetProvider
    DataSet = sdsContas
    Left = 328
    Top = 350
  end
  object cdsContas: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspContas'
    Left = 360
    Top = 350
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
    Left = 392
    Top = 350
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
    Left = 40
    Top = 374
  end
  object dspServico: TDataSetProvider
    DataSet = sdsServico
    Left = 72
    Top = 374
  end
  object cdsServico: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspServico'
    Left = 112
    Top = 374
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
    Left = 152
    Top = 374
  end
  object sdsParametros: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PARAMETROS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 288
    Top = 525
  end
  object dspParametros: TDataSetProvider
    DataSet = sdsParametros
    Left = 320
    Top = 525
  end
  object cdsParametros: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspParametros'
    Left = 360
    Top = 525
    object cdsParametrosIMPRESSORA_CAMINHO: TStringField
      FieldName = 'IMPRESSORA_CAMINHO'
      Size = 100
    end
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
    object cdsParametrosENDXMLNFSE: TStringField
      FieldName = 'ENDXMLNFSE'
      Size = 250
    end
    object cdsParametrosENDPDFNFSE: TStringField
      FieldName = 'ENDPDFNFSE'
      Size = 250
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
    object cdsParametrosID_CONTA_ORC_SERVICO: TIntegerField
      FieldName = 'ID_CONTA_ORC_SERVICO'
    end
    object cdsParametrosUSA_CONTA_ORCAMENTO: TStringField
      FieldName = 'USA_CONTA_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosIMP_MESANO_REF_NOITEM_NFSE: TStringField
      FieldName = 'IMP_MESANO_REF_NOITEM_NFSE'
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
    object cdsParametrosTIPO_LEI_TRANSPARENCIA: TStringField
      FieldName = 'TIPO_LEI_TRANSPARENCIA'
      FixedChar = True
      Size = 1
    end
    object cdsParametrosLEI_TRANSPARENCIA_SERVICO: TStringField
      FieldName = 'LEI_TRANSPARENCIA_SERVICO'
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
    object cdsParametrosUSA_ANO_CONTRATO: TStringField
      FieldName = 'USA_ANO_CONTRATO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsCondPgto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CONDPGTO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 212
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
  end
  object dspCondPgto: TDataSetProvider
    DataSet = sdsCondPgto
    Left = 520
    Top = 212
  end
  object cdsCondPgto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCondPgto'
    Left = 552
    Top = 212
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
  end
  object dsCondPgto: TDataSource
    DataSet = cdsCondPgto
    Left = 584
    Top = 212
  end
  object dsCondPgto_Mestre: TDataSource
    DataSet = sdsCondPgto
    Left = 456
    Top = 248
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
    Left = 496
    Top = 264
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
  end
  object cdsCondPgto_Dia: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCondPgtosdsCondPgto_Dia
    Params = <>
    Left = 552
    Top = 264
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
  end
  object sdsNFe_Email: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NFE_EMAIL'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 330
  end
  object dspNFe_Email: TDataSetProvider
    DataSet = sdsNFe_Email
    Left = 520
    Top = 330
  end
  object cdsNFe_Email: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspNFe_Email'
    Left = 552
    Top = 330
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
    Left = 584
    Top = 330
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
    Left = 112
    Top = 525
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
    Left = 488
    Top = 384
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
    object sdsDuplicataID_RECIBO: TIntegerField
      FieldName = 'ID_RECIBO'
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
    Left = 520
    Top = 384
  end
  object cdsDuplicata: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspDuplicata'
    BeforePost = cdsDuplicataBeforePost
    OnNewRecord = cdsDuplicataNewRecord
    OnReconcileError = cdsDuplicataReconcileError
    Left = 552
    Top = 384
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
    object cdsDuplicataID_RECIBO: TIntegerField
      FieldName = 'ID_RECIBO'
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
    Left = 472
    Top = 424
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
    Left = 488
    Top = 448
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
    Left = 552
    Top = 448
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
  object sdsCidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CID.*, PRO.TIPO_NATUREZA'#13#10'FROM CIDADE CID'#13#10'LEFT JOIN PROV' +
      'EDOR PRO'#13#10'ON CID.ID_PROVEDOR = PRO.ID'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 113
  end
  object dspCidade: TDataSetProvider
    DataSet = sdsCidade
    Left = 520
    Top = 113
  end
  object cdsCidade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCidade'
    Left = 552
    Top = 113
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
  end
  object dsCidade: TDataSource
    DataSet = cdsCidade
    Left = 584
    Top = 113
  end
  object sdsServico_Int: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM SERVICO_INT'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 318
  end
  object dspServico_Int: TDataSetProvider
    DataSet = sdsServico_Int
    Left = 80
    Top = 318
  end
  object cdsServico_Int: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspServico_Int'
    Left = 120
    Top = 318
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
    Left = 160
    Top = 318
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
    Left = 200
    Top = 416
    object qPessoa_ServicoPERC_ISS: TFloatField
      FieldName = 'PERC_ISS'
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
    Left = 488
    Top = 66
  end
  object dspPessoa_Servico_Int: TDataSetProvider
    DataSet = sdsPessoa_Servico_Int
    Left = 520
    Top = 66
  end
  object cdsPessoa_Servico_Int: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoa_Servico_Int'
    Left = 552
    Top = 66
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
    Left = 256
    Top = 456
    object qProximaNotaNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
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
    Left = 304
    Top = 448
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
    Left = 24
    Top = 440
    Data = {
      2A0000009619E0BD0100000018000000010000000000030000002A000749445F
      4E6F746104000100000000000000}
    object mImpNotaID_Nota: TIntegerField
      FieldName = 'ID_Nota'
    end
  end
  object dsmImpNota: TDataSource
    DataSet = mImpNota
    Left = 48
    Top = 440
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
    Left = 825
    Top = 17
  end
  object dspContaOrcamento: TDataSetProvider
    DataSet = sdsContaOrcamento
    Left = 857
    Top = 17
  end
  object cdsContaOrcamento: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'DESCRICAO'
    Params = <>
    ProviderName = 'dspContaOrcamento'
    Left = 897
    Top = 17
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
    Left = 937
    Top = 17
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
    Left = 488
    Top = 496
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
    Left = 520
    Top = 496
  end
  object cdsVendedor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspVendedor'
    Left = 552
    Top = 496
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
    Left = 584
    Top = 496
  end
  object sdsObs_Aux: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM OBS_AUX'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 255
  end
  object dspObs_Aux: TDataSetProvider
    DataSet = sdsObs_Aux
    Left = 328
    Top = 255
  end
  object cdsObs_Aux: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspObs_Aux'
    Left = 360
    Top = 255
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
    Left = 392
    Top = 255
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
    Left = 112
    Top = 472
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
  object qProximo_Num: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MAX(NUM_RECIBO) NUM_RECIBO'
      'FROM RECIBO')
    SQLConnection = dmDatabase.scoDados
    Left = 224
    Top = 512
    object qProximo_NumNUM_RECIBO: TIntegerField
      FieldName = 'NUM_RECIBO'
    end
  end
  object sdsRecibo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM RECIBO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 24
    object sdsReciboID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsReciboID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsReciboDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsReciboVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsReciboID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object sdsReciboNUM_CONTRATO: TIntegerField
      FieldName = 'NUM_CONTRATO'
    end
    object sdsReciboANO_REF: TIntegerField
      FieldName = 'ANO_REF'
    end
    object sdsReciboMES_REF: TIntegerField
      FieldName = 'MES_REF'
    end
    object sdsReciboOBS: TStringField
      FieldName = 'OBS'
      Size = 1000
    end
    object sdsReciboNUM_RECIBO: TIntegerField
      FieldName = 'NUM_RECIBO'
    end
    object sdsReciboFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsReciboID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object sdsReciboID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsReciboPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsReciboID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object sdsReciboID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object sdsReciboVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object sdsReciboTIPO_PRAZO: TStringField
      FieldName = 'TIPO_PRAZO'
      FixedChar = True
      Size = 1
    end
    object sdsReciboID_TIPO_COBRANCA: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA'
    end
    object sdsReciboID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
    end
    object sdsReciboVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object sdsReciboANO_CONTRATO: TIntegerField
      FieldName = 'ANO_CONTRATO'
    end
    object sdsReciboVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object sdsReciboPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
    end
  end
  object dspRecibo: TDataSetProvider
    DataSet = sdsRecibo
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspReciboUpdateError
    Left = 112
    Top = 24
  end
  object cdsRecibo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspRecibo'
    BeforePost = cdsReciboBeforePost
    OnNewRecord = cdsReciboNewRecord
    Left = 152
    Top = 24
    object cdsReciboID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsReciboID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsReciboDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsReciboVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsReciboID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object cdsReciboNUM_CONTRATO: TIntegerField
      FieldName = 'NUM_CONTRATO'
    end
    object cdsReciboANO_REF: TIntegerField
      FieldName = 'ANO_REF'
    end
    object cdsReciboMES_REF: TIntegerField
      FieldName = 'MES_REF'
    end
    object cdsReciboOBS: TStringField
      FieldName = 'OBS'
      Size = 1000
    end
    object cdsReciboNUM_RECIBO: TIntegerField
      Alignment = taCenter
      FieldName = 'NUM_RECIBO'
    end
    object cdsReciboFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsReciboID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsReciboID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsReciboPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsReciboID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsReciboID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsReciboVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object cdsReciboTIPO_PRAZO: TStringField
      FieldName = 'TIPO_PRAZO'
      FixedChar = True
      Size = 1
    end
    object cdsReciboID_TIPO_COBRANCA: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA'
    end
    object cdsRecibosdsRecibo_Parc: TDataSetField
      FieldName = 'sdsRecibo_Parc'
    end
    object cdsRecibosdsRecibo_Itens: TDataSetField
      FieldName = 'sdsRecibo_Itens'
    end
    object cdsReciboID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
    end
    object cdsReciboVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object cdsReciboANO_CONTRATO: TIntegerField
      FieldName = 'ANO_CONTRATO'
    end
    object cdsRecibosdsRecibo_Contrato: TDataSetField
      FieldName = 'sdsRecibo_Contrato'
    end
    object cdsReciboVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsReciboPERC_DESCONTO: TFloatField
      FieldName = 'PERC_DESCONTO'
      DisplayFormat = '0.00'
    end
  end
  object dsRecibo: TDataSource
    DataSet = cdsRecibo
    Left = 208
    Top = 24
  end
  object sdsRecibo_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM RECIBO_ITEM'#13#10'WHERE ID = :ID'
    DataSource = dsRecibo_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 96
    object sdsRecibo_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsRecibo_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsRecibo_ItensID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object sdsRecibo_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsRecibo_ItensVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsRecibo_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsRecibo_ItensNOME_SERVICO_INT: TStringField
      FieldName = 'NOME_SERVICO_INT'
      Size = 300
    end
    object sdsRecibo_ItensGERAR_DUPLICATA: TStringField
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object sdsRecibo_ItensID_MOV_SERVICO_EXTRA: TIntegerField
      FieldName = 'ID_MOV_SERVICO_EXTRA'
    end
    object sdsRecibo_ItensID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
    end
    object sdsRecibo_ItensID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object sdsRecibo_ItensANO_CONTRATO: TIntegerField
      FieldName = 'ANO_CONTRATO'
    end
    object sdsRecibo_ItensNUM_CONTRATO: TIntegerField
      FieldName = 'NUM_CONTRATO'
    end
  end
  object cdsRecibo_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsRecibosdsRecibo_Itens
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    OnNewRecord = cdsRecibo_ItensNewRecord
    Left = 136
    Top = 96
    object cdsRecibo_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRecibo_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRecibo_ItensID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsRecibo_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsRecibo_ItensVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.00##'
    end
    object cdsRecibo_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsRecibo_ItensNOME_SERVICO_INT: TStringField
      FieldName = 'NOME_SERVICO_INT'
      Size = 300
    end
    object cdsRecibo_ItensGERAR_DUPLICATA: TStringField
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object cdsRecibo_ItensID_MOV_SERVICO_EXTRA: TIntegerField
      FieldName = 'ID_MOV_SERVICO_EXTRA'
    end
    object cdsRecibo_ItensID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
    end
    object cdsRecibo_ItensID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object cdsRecibo_ItensANO_CONTRATO: TIntegerField
      FieldName = 'ANO_CONTRATO'
    end
    object cdsRecibo_ItensNUM_CONTRATO: TIntegerField
      FieldName = 'NUM_CONTRATO'
    end
  end
  object dsRecibo_Itens: TDataSource
    DataSet = cdsRecibo_Itens
    Left = 192
    Top = 96
  end
  object dsRecibo_Mestre: TDataSource
    DataSet = sdsRecibo
    Left = 16
    Top = 56
  end
  object sdsRecibo_Consulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT REC.*, CLI.NOME NOME_CLIENTE'#13#10'FROM RECIBO REC'#13#10'LEFT JOIN ' +
      'PESSOA CLI'#13#10'ON REC.ID_CLIENTE = CLI.CODIGO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 17
  end
  object dspRecibo_Consulta: TDataSetProvider
    DataSet = sdsRecibo_Consulta
    Left = 328
    Top = 17
  end
  object cdsRecibo_Consulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRecibo_Consulta'
    Left = 360
    Top = 17
    object cdsRecibo_ConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsRecibo_ConsultaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsRecibo_ConsultaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsRecibo_ConsultaVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsRecibo_ConsultaID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object cdsRecibo_ConsultaNUM_CONTRATO: TIntegerField
      FieldName = 'NUM_CONTRATO'
    end
    object cdsRecibo_ConsultaANO_REF: TIntegerField
      FieldName = 'ANO_REF'
    end
    object cdsRecibo_ConsultaMES_REF: TIntegerField
      FieldName = 'MES_REF'
    end
    object cdsRecibo_ConsultaOBS: TStringField
      FieldName = 'OBS'
      Size = 1000
    end
    object cdsRecibo_ConsultaNUM_RECIBO: TIntegerField
      FieldName = 'NUM_RECIBO'
    end
    object cdsRecibo_ConsultaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsRecibo_ConsultaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
  end
  object dsRecibo_Consulta: TDataSource
    DataSet = cdsRecibo_Consulta
    Left = 392
    Top = 17
  end
  object sdsReciboImp: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT REC.*, CLI.NOME NOME_CLIENTE, CLI.endereco, CLI.uf, CLI.n' +
      'um_end, CLI.cep, CLI.bairro, CLI.id_cidade,  CLI.INSCR_EST,'#13#10'CLI' +
      '.PESSOA, CID.nome NOME_CIDADE, CLI.cnpj_cpf'#13#10'FROM RECIBO REC'#13#10'LE' +
      'FT JOIN PESSOA CLI'#13#10'ON REC.ID_CLIENTE = CLI.CODIGO'#13#10'LEFT JOIN CI' +
      'DADE CID'#13#10'ON CLI.ID_CIDADE = CID.ID'#13#10'WHERE REC.ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 66
  end
  object dspReciboImp: TDataSetProvider
    DataSet = sdsReciboImp
    Left = 328
    Top = 66
  end
  object cdsReciboImp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspReciboImp'
    OnCalcFields = cdsReciboImpCalcFields
    Left = 360
    Top = 66
    object cdsReciboImpID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsReciboImpID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsReciboImpDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsReciboImpVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsReciboImpID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object cdsReciboImpNUM_CONTRATO: TIntegerField
      FieldName = 'NUM_CONTRATO'
    end
    object cdsReciboImpANO_REF: TIntegerField
      FieldName = 'ANO_REF'
    end
    object cdsReciboImpMES_REF: TIntegerField
      FieldName = 'MES_REF'
    end
    object cdsReciboImpOBS: TStringField
      FieldName = 'OBS'
      Size = 1000
    end
    object cdsReciboImpNUM_RECIBO: TIntegerField
      FieldName = 'NUM_RECIBO'
    end
    object cdsReciboImpFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsReciboImpNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsReciboImpENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsReciboImpUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsReciboImpNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object cdsReciboImpCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsReciboImpBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsReciboImpID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsReciboImpNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      Size = 40
    end
    object cdsReciboImpINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object cdsReciboImpPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsReciboImpCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsReciboImpclVlrExtenso: TStringField
      FieldKind = fkCalculated
      FieldName = 'clVlrExtenso'
      Size = 100
      Calculated = True
    end
  end
  object dsReciboImp: TDataSource
    DataSet = cdsReciboImp
    Left = 392
    Top = 66
  end
  object sdsReciboImp_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM RECIBO_ITEM'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 113
  end
  object cdsReciboImp_Itens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspReciboImp_Itens'
    Left = 360
    Top = 113
    object cdsReciboImp_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsReciboImp_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsReciboImp_ItensID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsReciboImp_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsReciboImp_ItensVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '###,###,##0.00##'
    end
    object cdsReciboImp_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00##'
    end
    object cdsReciboImp_ItensNOME_SERVICO_INT: TStringField
      FieldName = 'NOME_SERVICO_INT'
      Size = 300
    end
    object cdsReciboImp_ItensGERAR_DUPLICATA: TStringField
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object cdsReciboImp_ItensID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object cdsReciboImp_ItensANO_CONTRATO: TIntegerField
      FieldName = 'ANO_CONTRATO'
    end
    object cdsReciboImp_ItensNUM_CONTRATO: TIntegerField
      FieldName = 'NUM_CONTRATO'
    end
  end
  object dsReciboImp_Itens: TDataSource
    DataSet = cdsReciboImp_Itens
    Left = 392
    Top = 113
  end
  object dspReciboImp_Itens: TDataSetProvider
    DataSet = sdsReciboImp_Itens
    Left = 328
    Top = 113
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'Filial'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NOME=NOME'
      'NOME_INTERNO=NOME_INTERNO'
      'ENDERECO=ENDERECO'
      'COMPLEMENTO_END=COMPLEMENTO_END'
      'NUM_END=NUM_END'
      'BAIRRO=BAIRRO'
      'CEP=CEP'
      'ID_CIDADE=ID_CIDADE'
      'CIDADE=CIDADE'
      'UF=UF'
      'DDD1=DDD1'
      'FONE1=FONE1'
      'DDD2=DDD2'
      'FONE=FONE'
      'DDDFAX=DDDFAX'
      'FAX=FAX'
      'PESSOA=PESSOA'
      'CNPJ_CPF=CNPJ_CPF'
      'INSCR_EST=INSCR_EST'
      'SIMPLES=SIMPLES'
      'ENDLOGO=ENDLOGO'
      'CALCULAR_IPI=CALCULAR_IPI'
      'INATIVO=INATIVO'
      'INSCMUNICIPAL=INSCMUNICIPAL'
      'CNAE=CNAE'
      'HOMEPAGE=HOMEPAGE'
      'ID_REGIME_TRIB=ID_REGIME_TRIB'
      'ID_PIS=ID_PIS'
      'ID_COFINS=ID_COFINS'
      'TIPO_PIS=TIPO_PIS'
      'TIPO_COFINS=TIPO_COFINS'
      'PERC_PIS=PERC_PIS'
      'PERC_COFINS=PERC_COFINS'
      'ID_CSTICMS=ID_CSTICMS'
      'ID_CSTIPI=ID_CSTIPI'
      'EMAIL_NFE=EMAIL_NFE'
      'DTESTOQUE=DTESTOQUE'
      'PRINCIPAL=PRINCIPAL'
      'LIBERADO_ATE=LIBERADO_ATE'
      'ULTIMO_ACESSO=ULTIMO_ACESSO'
      'USARICMSSIMPLES=USARICMSSIMPLES'
      'SERIENORMAL=SERIENORMAL'
      'ID_REGIME_TRIB_NFSE=ID_REGIME_TRIB_NFSE'
      'INCENTIVO_CULTURAL=INCENTIVO_CULTURAL'
      'SERIE_NFSE=SERIE_NFSE'
      'ID_NATUREZA=ID_NATUREZA'
      'COD_NATUREZA=COD_NATUREZA'
      'TIPO_NATUREZA=TIPO_NATUREZA'
      'NOME_PROVEDOR=NOME_PROVEDOR'
      'ID_SERVICO_SINT=ID_SERVICO_SINT'
      'ID_SERVICO_PAD=ID_SERVICO_PAD'
      'COD_SERVICO_SINT=COD_SERVICO_SINT'
      'PERC_IR=PERC_IR'
      'VLR_IR_MINIMO=VLR_IR_MINIMO'
      'PERC_ISS=PERC_ISS'
      'COD_REGIME_TIB_ESP=COD_REGIME_TIB_ESP'
      'COD_TRIBUTACAO_MUNICIPIO=COD_TRIBUTACAO_MUNICIPIO'
      'CODMUNICIPIO=CODMUNICIPIO'
      'NUMLOTE=NUMLOTE'
      'TIPO_RETORNO=TIPO_RETORNO'
      'ENDLOGO_NFSE=ENDLOGO_NFSE'
      'PERC_CSLL=PERC_CSLL'
      'MOSTRAR_ALIQUOTA_PD=MOSTRAR_ALIQUOTA_PD'
      'INF_COD_SERVICO=INF_COD_SERVICO'
      'CNAE_NFSE=CNAE_NFSE'
      'LINKNFSE=LINKNFSE'
      'FONE_PREFEITURA=FONE_PREFEITURA'
      'SITE_PREFEITURA=SITE_PREFEITURA'
      'END_LOGO_PREFEITURA=END_LOGO_PREFEITURA'
      'PERC_INSS=PERC_INSS'
      'ID_ATIVIDADE_CID=ID_ATIVIDADE_CID'
      'NFSE_HOMOLOGACAO=NFSE_HOMOLOGACAO'
      'PERC_CSRF=PERC_CSRF'
      'VLR_FATURAMENTO_MES_CSRF=VLR_FATURAMENTO_MES_CSRF'
      'PERC_TRIB_SERV=PERC_TRIB_SERV'
      'IMPRESSAO_MATRICIAL=IMPRESSAO_MATRICIAL'
      '-sdsFilialRelatorios=sdsFilialRelatorios'
      'EMAIL=EMAIL')
    DataSource = dsFilial
    BCDToCurrency = False
    Left = 816
    Top = 216
  end
  object sdsMov_Servico: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT MOV.*, S.nome NOME_SERVICO, SI.nome NOME_SERVICO_INT,'#13#10'CL' +
      'I.NOME NOME_CLIENTE, FIL.nome NOME_FILIAL, FIL.nome_interno FANT' +
      'ASIA_FILIAL,'#13#10'SI.NOME || '#39' '#39' || MOV.COMPLEMENTO SERVICO_COMPLEME' +
      'NTO'#13#10'FROM MOV_SERVICO_EXTRA MOV'#13#10'INNER JOIN SERVICO S'#13#10'ON MOV.id' +
      '_servico = S.id'#13#10'INNER JOIN SERVICO_INT SI'#13#10'ON MOV.ID_SERVICO_IN' +
      'T = SI.id'#13#10'INNER JOIN PESSOA CLI'#13#10'ON MOV.id_cliente = CLI.CODIGO' +
      #13#10'INNER JOIN FILIAL FIL'#13#10'ON MOV.FILIAL = FIL.ID'#13#10'WHERE MOV.ENCER' +
      'RADO = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 487
    Top = 552
  end
  object dspMov_Servico: TDataSetProvider
    DataSet = sdsMov_Servico
    Left = 519
    Top = 552
  end
  object cdsMov_Servico: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME_CLIENTE;DTEMISSAO'
    Params = <>
    ProviderName = 'dspMov_Servico'
    Left = 559
    Top = 552
    object cdsMov_ServicoID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
      Required = True
    end
    object cdsMov_ServicoID_SERVICO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Servi'#231'o'
      FieldName = 'ID_SERVICO'
    end
    object cdsMov_ServicoID_SERVICO_INT: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Servi'#231'o Interno'
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsMov_ServicoCOMPLEMENTO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Size = 100
    end
    object cdsMov_ServicoDTEMISSAO: TDateField
      Alignment = taCenter
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'DTEMISSAO'
    end
    object cdsMov_ServicoQTD: TFloatField
      DisplayLabel = 'Qtde.'
      FieldName = 'QTD'
    end
    object cdsMov_ServicoVLR_UNITARIO: TFloatField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.00##'
    end
    object cdsMov_ServicoVLR_TOTAL: TFloatField
      DisplayLabel = 'Vlr. Total'
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsMov_ServicoID_CLIENTE: TIntegerField
      DisplayLabel = 'ID Cliente'
      FieldName = 'ID_CLIENTE'
    end
    object cdsMov_ServicoFILIAL: TIntegerField
      DisplayLabel = 'Filial'
      FieldName = 'FILIAL'
    end
    object cdsMov_ServicoID_NOTA: TIntegerField
      DisplayLabel = 'ID Nota'
      FieldName = 'ID_NOTA'
    end
    object cdsMov_ServicoID_RECIBO: TIntegerField
      DisplayLabel = 'ID Recibo'
      FieldName = 'ID_RECIBO'
    end
    object cdsMov_ServicoENCERRADO: TStringField
      DisplayLabel = 'Encerrado'
      FieldName = 'ENCERRADO'
      FixedChar = True
      Size = 1
    end
    object cdsMov_ServicoNOME_SERVICO: TStringField
      DisplayLabel = 'Nome Servi'#231'o Padr'#227'o'
      FieldName = 'NOME_SERVICO'
      Size = 500
    end
    object cdsMov_ServicoNOME_SERVICO_INT: TStringField
      DisplayLabel = 'Servi'#231'o Interno'
      FieldName = 'NOME_SERVICO_INT'
      Size = 70
    end
    object cdsMov_ServicoNOME_CLIENTE: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsMov_ServicoNOME_FILIAL: TStringField
      DisplayLabel = 'Nome Filial'
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object cdsMov_ServicoFANTASIA_FILIAL: TStringField
      DisplayLabel = 'Nome Interno Filial'
      FieldName = 'FANTASIA_FILIAL'
      Size = 30
    end
    object cdsMov_ServicoSERVICO_COMPLEMENTO: TStringField
      DisplayLabel = 'Nome Servi'#231'o'
      FieldName = 'SERVICO_COMPLEMENTO'
      Size = 171
    end
  end
  object dsMov_Servico: TDataSource
    DataSet = cdsMov_Servico
    Left = 599
    Top = 552
  end
  object frxRichObject1: TfrxRichObject
    Left = 944
    Top = 168
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
    Left = 912
    Top = 168
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
    Left = 872
    Top = 168
  end
  object frxReport1: TfrxReport
    Version = '5.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41864.668858622700000000
    ReportOptions.LastChange = 42857.705344432870000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Left = 816
    Top = 168
  end
  object dsFilialRelatorios: TDataSource
    DataSet = cdsFilialRelatorios
    Left = 392
    Top = 400
  end
  object cdsFilialRelatorios: TClientDataSet
    Aggregates = <>
    DataSetField = cdsFilialsdsFilialRelatorios
    Params = <>
    Left = 360
    Top = 400
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
    Left = 328
    Top = 400
    object sdsFilialRelatoriosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFilialRelatoriosITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsFilialRelatoriosTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object sdsFilialRelatoriosCAMINHO: TStringField
      FieldName = 'CAMINHO'
      Size = 150
    end
  end
  object dsmFilial: TDataSource
    DataSet = sdsFilial
    Left = 296
    Top = 400
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'ReciboImp'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_CLIENTE=ID_CLIENTE'
      'DTEMISSAO=DTEMISSAO'
      'VLR_TOTAL=VLR_TOTAL'
      'ID_CONTRATO=ID_CONTRATO'
      'NUM_CONTRATO=NUM_CONTRATO'
      'ANO_REF=ANO_REF'
      'MES_REF=MES_REF'
      'OBS=OBS'
      'NUM_RECIBO=NUM_RECIBO'
      'FILIAL=FILIAL'
      'NOME_CLIENTE=NOME_CLIENTE'
      'ENDERECO=ENDERECO'
      'UF=UF'
      'NUM_END=NUM_END'
      'CEP=CEP'
      'BAIRRO=BAIRRO'
      'ID_CIDADE=ID_CIDADE'
      'NOME_CIDADE=NOME_CIDADE'
      'INSCR_EST=INSCR_EST'
      'PESSOA=PESSOA'
      'CNPJ_CPF=CNPJ_CPF'
      'clVlrExtenso=clVlrExtenso')
    DataSource = dsReciboImp
    BCDToCurrency = False
    Left = 872
    Top = 216
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'ReciboImpItens'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ITEM=ITEM'
      'ID_SERVICO_INT=ID_SERVICO_INT'
      'QTD=QTD'
      'VLR_UNITARIO=VLR_UNITARIO'
      'VLR_TOTAL=VLR_TOTAL'
      'NOME_SERVICO_INT=NOME_SERVICO_INT'
      'GERAR_DUPLICATA=GERAR_DUPLICATA'
      'ID_CONTRATO=ID_CONTRATO'
      'ANO_CONTRATO=ANO_CONTRATO'
      'NUM_CONTRATO=NUM_CONTRATO')
    DataSource = dsReciboImp_Itens
    BCDToCurrency = False
    Left = 912
    Top = 216
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'ReciboImpParc'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ITEM=ITEM'
      'DTVENCIMENTO=DTVENCIMENTO'
      'VLR_VENCIMENTO=VLR_VENCIMENTO'
      'ID_TIPOCOBRANCA=ID_TIPOCOBRANCA'
      'ID_CONTA=ID_CONTA')
    DataSource = dsReciboImp_Parc
    BCDToCurrency = False
    Left = 944
    Top = 216
  end
  object sdsReciboImp_Parc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM RECIBO_PARC'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 159
  end
  object cdsReciboImp_Parc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspReciboImp_Parc'
    Left = 360
    Top = 159
    object cdsReciboImp_ParcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsReciboImp_ParcITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsReciboImp_ParcDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object cdsReciboImp_ParcVLR_VENCIMENTO: TFloatField
      FieldName = 'VLR_VENCIMENTO'
    end
    object cdsReciboImp_ParcID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsReciboImp_ParcID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
  end
  object dsReciboImp_Parc: TDataSource
    DataSet = cdsReciboImp_Parc
    Left = 392
    Top = 159
  end
  object dspReciboImp_Parc: TDataSetProvider
    DataSet = sdsReciboImp_Parc
    Left = 328
    Top = 159
  end
  object frxDBDataset5: TfrxDBDataset
    UserName = 'Parametros'
    CloseDataSource = False
    FieldAliases.Strings = (
      '-IMPRESSORA_CAMINHO=IMPRESSORA_CAMINHO'
      '-ID=ID'
      '-ENDXMLNFE=ENDXMLNFE'
      '-ENDPDFNFE=ENDPDFNFE'
      '-SERIENORMAL=SERIENORMAL'
      '-SERIECONTINGENCIA=SERIECONTINGENCIA'
      '-LOCALSERVIDORNFE=LOCALSERVIDORNFE'
      '-EMAILRESPONSAVELSISTEMA=EMAILRESPONSAVELSISTEMA'
      '-NFEPRODUCAO=NFEPRODUCAO'
      '-ANEXARDANFE=ANEXARDANFE'
      '-VERSAONFE=VERSAONFE'
      '-VERSAOEMISSAONFE=VERSAOEMISSAONFE'
      '-TIPOLOGONFE=TIPOLOGONFE'
      '-APLICARDESCONTONOICMS=APLICARDESCONTONOICMS'
      '-APLICARDESCONTONOIPI=APLICARDESCONTONOIPI'
      '-SOMARNOPROD_FRETE=SOMARNOPROD_FRETE'
      '-SOMARNOPROD_OUTRASDESP=SOMARNOPROD_OUTRASDESP'
      '-SOMARNOPROD_SEGURO=SOMARNOPROD_SEGURO'
      '-AJUSTELOGONFEAUTOMATICO=AJUSTELOGONFEAUTOMATICO'
      '-INFNUMNOTAMANUAL=INFNUMNOTAMANUAL'
      '-OPCAO_DTENTREGAPEDIDO=OPCAO_DTENTREGAPEDIDO'
      '-OBS_SIMPLES=OBS_SIMPLES'
      '-IMP_OBSSIMPLES=IMP_OBSSIMPLES'
      '-IMP_REFERENCIANANOTA=IMP_REFERENCIANANOTA'
      '-ENVIARNOTABENEF_NANFE=ENVIARNOTABENEF_NANFE'
      '-ESPECIE_NOTA=ESPECIE_NOTA'
      '-MARCA_NOTA=MARCA_NOTA'
      '-USA_VENDEDOR=USA_VENDEDOR'
      '-USA_CONSUMO=USA_CONSUMO'
      '-ID_OPERACAO_BENEF_RET=ID_OPERACAO_BENEF_RET'
      '-ID_OPERACAO_MAOOBRA=ID_OPERACAO_MAOOBRA'
      '-ID_OPERACAO_TRIANGULAR=ID_OPERACAO_TRIANGULAR'
      '-USA_COD_BARRAS=USA_COD_BARRAS'
      '-USA_ID_PRODUTO=USA_ID_PRODUTO'
      '-EMPRESA_VEICULO=EMPRESA_VEICULO'
      '-ID_CONTA_PADRAO=ID_CONTA_PADRAO'
      '-ID_TIPO_COBRANCA_PADRAO=ID_TIPO_COBRANCA_PADRAO'
      '-PERMITE_QTDMAIOR_PEDIDO=PERMITE_QTDMAIOR_PEDIDO'
      '-ENDXMLNFSE=ENDXMLNFSE'
      '-ENDPDFNFSE=ENDPDFNFSE'
      '-IMPRESSAO_MATRICIAL=IMPRESSAO_MATRICIAL'
      '-EMPRESA_RH=EMPRESA_RH'
      '-ID_CONTA_ORC_SERVICO=ID_CONTA_ORC_SERVICO'
      '-USA_CONTA_ORCAMENTO=USA_CONTA_ORCAMENTO'
      '-IMP_MESANO_REF_NOITEM_NFSE=IMP_MESANO_REF_NOITEM_NFSE'
      '-LEI_TRANSPARENCIA_TEXTO_ITEM=LEI_TRANSPARENCIA_TEXTO_ITEM'
      '-LEI_TRANSPARENCIA_PERC_ADIC=LEI_TRANSPARENCIA_PERC_ADIC'
      '-TIPO_LEI_TRANSPARENCIA=TIPO_LEI_TRANSPARENCIA'
      '-LEI_TRANSPARENCIA_SERVICO=LEI_TRANSPARENCIA_SERVICO'
      '-USA_BOLETO_ACBR=USA_BOLETO_ACBR'
      '-USA_ENVIO_EMAIL_CATEGORIA=USA_ENVIO_EMAIL_CATEGORIA'
      'USA_ANO_CONTRATO=USA_ANO_CONTRATO')
    DataSource = dsParametros
    BCDToCurrency = False
    Left = 976
    Top = 216
  end
  object dsParametros: TDataSource
    DataSet = cdsParametros
    Left = 392
    Top = 528
  end
  object qServico_Int: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM SERVICO_INT'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 744
    Top = 368
    object qServico_IntID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qServico_IntNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object qServico_IntVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object qServico_IntID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object qServico_IntPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object qServico_IntCODIGO_NBS: TStringField
      FieldName = 'CODIGO_NBS'
      Size = 10
    end
    object qServico_IntID_SERVICO_PADRAO: TIntegerField
      FieldName = 'ID_SERVICO_PADRAO'
    end
  end
  object sdsRecibo_Contrato: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM RECIBO_CONTRATO'#13#10'WHERE ID = :ID'
    DataSource = dsRecibo_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 224
    object sdsRecibo_ContratoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsRecibo_ContratoID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsRecibo_ContratoNUM_CONTRATO: TIntegerField
      FieldName = 'NUM_CONTRATO'
    end
    object sdsRecibo_ContratoANO_CONTRATO: TIntegerField
      FieldName = 'ANO_CONTRATO'
    end
    object sdsRecibo_ContratoANO_REF: TIntegerField
      FieldName = 'ANO_REF'
    end
    object sdsRecibo_ContratoMES_REF: TIntegerField
      FieldName = 'MES_REF'
    end
  end
  object cdsRecibo_Contrato: TClientDataSet
    Aggregates = <>
    DataSetField = cdsRecibosdsRecibo_Contrato
    Params = <>
    Left = 136
    Top = 224
    object cdsRecibo_ContratoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRecibo_ContratoID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRecibo_ContratoNUM_CONTRATO: TIntegerField
      FieldName = 'NUM_CONTRATO'
    end
    object cdsRecibo_ContratoANO_CONTRATO: TIntegerField
      FieldName = 'ANO_CONTRATO'
    end
    object cdsRecibo_ContratoANO_REF: TIntegerField
      FieldName = 'ANO_REF'
    end
    object cdsRecibo_ContratoMES_REF: TIntegerField
      FieldName = 'MES_REF'
    end
  end
  object dsRecibo_Contrato: TDataSource
    DataSet = cdsRecibo_Contrato
    Left = 192
    Top = 224
  end
  object qParametros_Ser: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_SER'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 856
    Top = 480
    object qParametros_SerID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_SerAGRUPA_CONTRATO_NFSE: TStringField
      FieldName = 'AGRUPA_CONTRATO_NFSE'
      FixedChar = True
      Size = 1
    end
  end
  object frxDBDataset6: TfrxDBDataset
    UserName = 'ReciboCons'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_CLIENTE=ID_CLIENTE'
      'DTEMISSAO=DTEMISSAO'
      'VLR_TOTAL=VLR_TOTAL'
      'ID_CONTRATO=ID_CONTRATO'
      'NUM_CONTRATO=NUM_CONTRATO'
      'ANO_REF=ANO_REF'
      'MES_REF=MES_REF'
      'OBS=OBS'
      'NUM_RECIBO=NUM_RECIBO'
      'FILIAL=FILIAL'
      'NOME_CLIENTE=NOME_CLIENTE')
    DataSource = dsRecibo_Consulta
    BCDToCurrency = False
    Left = 1008
    Top = 216
  end
  object ValorPorExtenso1: TValorPorExtenso
    MoedaNoSingular = 'Real'
    MoedaNoPlural = 'Reais'
    TipoDoTexto = ttMaiuscula
    Genero = gMasculino
    Left = 792
    Top = 296
  end
  object qParametros_Fin: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_FIN'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 912
    Top = 384
    object qParametros_FinUSA_NGR: TStringField
      FieldName = 'USA_NGR'
      FixedChar = True
      Size = 1
    end
  end
end
