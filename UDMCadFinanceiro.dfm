object DMCadFinanceiro: TDMCadFinanceiro
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 248
  Top = 43
  Height = 631
  Width = 981
  object sdsContas: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME'#13#10'FROM CONTAS'#13#10'WHERE DTENCERRAMENTO IS NULL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 528
    Top = 200
  end
  object dspContas: TDataSetProvider
    DataSet = sdsContas
    Left = 560
    Top = 200
  end
  object cdsContas: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspContas'
    Left = 600
    Top = 200
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
    Left = 640
    Top = 200
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FILIAL'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 512
    Top = 272
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 544
    Top = 272
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 584
    Top = 272
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
    object cdsFilialUSARICMSSIMPLES: TStringField
      FieldName = 'USARICMSSIMPLES'
      FixedChar = True
      Size = 10
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
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 624
    Top = 272
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 416
    Top = 192
    object qParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
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
    object qParametrosESPECIE_NOTA: TStringField
      FieldName = 'ESPECIE_NOTA'
    end
    object qParametrosMARCA_NOTA: TStringField
      FieldName = 'MARCA_NOTA'
    end
    object qParametrosVERSAO_BANCO: TIntegerField
      FieldName = 'VERSAO_BANCO'
    end
    object qParametrosUSA_QTDPACOTE_NTE: TStringField
      FieldName = 'USA_QTDPACOTE_NTE'
      FixedChar = True
      Size = 1
    end
    object qParametrosATUALIZAR_PRECO: TStringField
      FieldName = 'ATUALIZAR_PRECO'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_VENDEDOR: TStringField
      FieldName = 'USA_VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object qParametrosID_CONTA_FECHAMENTO: TIntegerField
      FieldName = 'ID_CONTA_FECHAMENTO'
    end
    object qParametrosUSA_CONTA_ORCAMENTO: TStringField
      FieldName = 'USA_CONTA_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_VALE: TStringField
      FieldName = 'USA_VALE'
      FixedChar = True
      Size = 1
    end
    object qParametrosCONTROLAR_FAT_SEPARADO: TStringField
      FieldName = 'CONTROLAR_FAT_SEPARADO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsFinanceiro: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FINANCEIRO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 24
    object sdsFinanceiroID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFinanceiroTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object sdsFinanceiroID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object sdsFinanceiroDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object sdsFinanceiroID_MOVDUPLICATA: TIntegerField
      FieldName = 'ID_MOVDUPLICATA'
    end
    object sdsFinanceiroITEM_MOVDUPLICATA: TIntegerField
      FieldName = 'ITEM_MOVDUPLICATA'
    end
    object sdsFinanceiroVLR_MOVIMENTO: TFloatField
      FieldName = 'VLR_MOVIMENTO'
    end
    object sdsFinanceiroID_HISTORICO: TIntegerField
      FieldName = 'ID_HISTORICO'
    end
    object sdsFinanceiroHISTORICO_COMPL: TStringField
      FieldName = 'HISTORICO_COMPL'
      Size = 100
    end
    object sdsFinanceiroID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object sdsFinanceiroFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsFinanceiroUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsFinanceiroDTUSUARIO: TDateField
      FieldName = 'DTUSUARIO'
    end
    object sdsFinanceiroHRUSUARIO: TTimeField
      FieldName = 'HRUSUARIO'
    end
    object sdsFinanceiroID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object sdsFinanceiroVLR_SAIDA: TFloatField
      FieldName = 'VLR_SAIDA'
    end
    object sdsFinanceiroVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object sdsFinanceiroID_EXTCOMISSAO: TIntegerField
      FieldName = 'ID_EXTCOMISSAO'
    end
    object sdsFinanceiroID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object sdsFinanceiroID_TRANSFERENCIA: TIntegerField
      FieldName = 'ID_TRANSFERENCIA'
    end
    object sdsFinanceiroID_TERMINAL: TIntegerField
      FieldName = 'ID_TERMINAL'
    end
  end
  object dspFinanceiro: TDataSetProvider
    DataSet = sdsFinanceiro
    OnUpdateError = dspFinanceiroUpdateError
    Left = 64
    Top = 24
  end
  object cdsFinanceiro: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspFinanceiro'
    BeforePost = cdsFinanceiroBeforePost
    Left = 104
    Top = 24
    object cdsFinanceiroID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFinanceiroTIPO_ES: TStringField
      DisplayLabel = 'Entrada / Sa'#237'da'
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object cdsFinanceiroID_CONTA: TIntegerField
      DisplayLabel = 'ID Conta'
      FieldName = 'ID_CONTA'
    end
    object cdsFinanceiroDTMOVIMENTO: TDateField
      DisplayLabel = 'Data Movimento'
      FieldName = 'DTMOVIMENTO'
    end
    object cdsFinanceiroID_MOVDUPLICATA: TIntegerField
      DisplayLabel = 'ID Mov. Duplicata'
      FieldName = 'ID_MOVDUPLICATA'
    end
    object cdsFinanceiroITEM_MOVDUPLICATA: TIntegerField
      DisplayLabel = 'Item Hist. Duplicata'
      FieldName = 'ITEM_MOVDUPLICATA'
    end
    object cdsFinanceiroVLR_MOVIMENTO: TFloatField
      DisplayLabel = 'Valor Movimento'
      FieldName = 'VLR_MOVIMENTO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsFinanceiroID_HISTORICO: TIntegerField
      DisplayLabel = 'ID Hist'#243'rico'
      FieldName = 'ID_HISTORICO'
    end
    object cdsFinanceiroHISTORICO_COMPL: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO_COMPL'
      Size = 100
    end
    object cdsFinanceiroID_PESSOA: TIntegerField
      DisplayLabel = 'ID Pessoa'
      FieldName = 'ID_PESSOA'
    end
    object cdsFinanceiroFILIAL: TIntegerField
      DisplayLabel = 'Filial'
      FieldName = 'FILIAL'
    end
    object cdsFinanceiroUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsFinanceiroDTUSUARIO: TDateField
      DisplayLabel = 'Data Lan'#231'amento'
      FieldName = 'DTUSUARIO'
    end
    object cdsFinanceiroHRUSUARIO: TTimeField
      FieldName = 'HRUSUARIO'
    end
    object cdsFinanceiroID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object cdsFinanceiroVLR_SAIDA: TFloatField
      FieldName = 'VLR_SAIDA'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsFinanceiroVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsFinanceiroID_EXTCOMISSAO: TIntegerField
      FieldName = 'ID_EXTCOMISSAO'
    end
    object cdsFinanceiroID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsFinanceiroID_TRANSFERENCIA: TIntegerField
      FieldName = 'ID_TRANSFERENCIA'
    end
    object cdsFinanceiroID_TERMINAL: TIntegerField
      FieldName = 'ID_TERMINAL'
    end
  end
  object dsFinanceiro: TDataSource
    DataSet = cdsFinanceiro
    Left = 144
    Top = 24
  end
  object sdsSaldo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CT.ID, CT.NOME NOME_CONTA, SC.VLR_ENTRADA, SC.VLR_SAIDA, ' +
      'SC.VLR_SALDO'#13#10'FROM CONTAS CT'#13#10'LEFT JOIN SALDO_CONTA SC'#13#10'ON CT.ID' +
      ' = SC.ID_CONTA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 32
  end
  object dspSaldo: TDataSetProvider
    DataSet = sdsSaldo
    Left = 520
    Top = 32
  end
  object cdsSaldo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSaldo'
    Left = 560
    Top = 32
    object cdsSaldoID: TIntegerField
      DisplayLabel = 'ID Conta'
      FieldName = 'ID'
      Required = True
    end
    object cdsSaldoNOME_CONTA: TStringField
      DisplayLabel = 'Nome Conta'
      FieldName = 'NOME_CONTA'
      Size = 30
    end
    object cdsSaldoVLR_ENTRADA: TFloatField
      DisplayLabel = 'Valor Entrada'
      FieldName = 'VLR_ENTRADA'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsSaldoVLR_SAIDA: TFloatField
      DisplayLabel = 'Valor Sa'#237'da'
      FieldName = 'VLR_SAIDA'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsSaldoVLR_SALDO: TFloatField
      DisplayLabel = 'Valor Saldo'
      FieldName = 'VLR_SALDO'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsSaldo: TDataSource
    DataSet = cdsSaldo
    Left = 600
    Top = 32
  end
  object sdsTipoCobranca: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TIPOCOBRANCA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 528
    Top = 152
  end
  object dspTipoCobranca: TDataSetProvider
    DataSet = sdsTipoCobranca
    Left = 560
    Top = 152
  end
  object cdsTipoCobranca: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspTipoCobranca'
    Left = 600
    Top = 152
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
    Left = 640
    Top = 152
  end
  object qSaldoMov: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DTMOVIMENTO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT F.ID_CONTA, sc.vlr_saldo, sum(f.vlr_entrada) vlr_entrada,' +
        ' sum(f.vlr_saida) vlr_saida'
      'FROM FINANCEIRO F'
      'INNER JOIN SALDO_CONTA SC'
      'ON F.ID_CONTA = SC.ID_CONTA'
      'WHERE F.DTMOVIMENTO < :DTMOVIMENTO'
      'GROUP BY F.ID_CONTA, sc.vlr_saldo')
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 296
    object qSaldoMovID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object qSaldoMovVLR_SALDO: TFloatField
      FieldName = 'VLR_SALDO'
    end
    object qSaldoMovVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object qSaldoMovVLR_SAIDA: TFloatField
      FieldName = 'VLR_SAIDA'
    end
  end
  object sdsFinanceiro_Consulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT F.*, C.NOME NOME_CONTA, TC.NOME NOME_FORMAPGTO'#13#10'FROM FINA' +
      'NCEIRO F'#13#10'INNER JOIN CONTAS C ON F.ID_CONTA = C.ID'#13#10'LEFT JOIN TI' +
      'POCOBRANCA TC ON F.ID_FORMA_PAGAMENTO = TC.ID'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 248
    Top = 24
  end
  object dspFinanceiro_Consulta: TDataSetProvider
    DataSet = sdsFinanceiro_Consulta
    OnUpdateError = dspFinanceiroUpdateError
    Left = 280
    Top = 24
  end
  object cdsFinanceiro_Consulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFinanceiro_Consulta'
    Left = 320
    Top = 24
    object cdsFinanceiro_ConsultaID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
      Required = True
    end
    object cdsFinanceiro_ConsultaTIPO_ES: TStringField
      DisplayLabel = 'Entrada / Sa'#237'da'
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object cdsFinanceiro_ConsultaID_CONTA: TIntegerField
      DisplayLabel = 'ID Conta'
      FieldName = 'ID_CONTA'
    end
    object cdsFinanceiro_ConsultaDTMOVIMENTO: TDateField
      DisplayLabel = 'Data Movimento'
      FieldName = 'DTMOVIMENTO'
    end
    object cdsFinanceiro_ConsultaID_MOVDUPLICATA: TIntegerField
      DisplayLabel = 'ID Mov. Duplicata'
      FieldName = 'ID_MOVDUPLICATA'
    end
    object cdsFinanceiro_ConsultaITEM_MOVDUPLICATA: TIntegerField
      DisplayLabel = 'Item Mov. Duplicata'
      FieldName = 'ITEM_MOVDUPLICATA'
    end
    object cdsFinanceiro_ConsultaVLR_MOVIMENTO: TFloatField
      DisplayLabel = 'Vlr. Movimento'
      FieldName = 'VLR_MOVIMENTO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsFinanceiro_ConsultaID_HISTORICO: TIntegerField
      DisplayLabel = 'ID Hist'#243'rico'
      FieldName = 'ID_HISTORICO'
    end
    object cdsFinanceiro_ConsultaHISTORICO_COMPL: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO_COMPL'
      Size = 100
    end
    object cdsFinanceiro_ConsultaID_PESSOA: TIntegerField
      DisplayLabel = 'ID Pessoa'
      FieldName = 'ID_PESSOA'
    end
    object cdsFinanceiro_ConsultaFILIAL: TIntegerField
      DisplayLabel = 'Filial'
      FieldName = 'FILIAL'
    end
    object cdsFinanceiro_ConsultaUSUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsFinanceiro_ConsultaDTUSUARIO: TDateField
      DisplayLabel = 'Data Lan'#231'amento'
      FieldName = 'DTUSUARIO'
    end
    object cdsFinanceiro_ConsultaID_FORMA_PAGAMENTO: TIntegerField
      DisplayLabel = 'ID Forma Pagamento'
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object cdsFinanceiro_ConsultaHRUSUARIO: TTimeField
      DisplayLabel = 'Hora Cadastro'
      FieldName = 'HRUSUARIO'
    end
    object cdsFinanceiro_ConsultaNOME_CONTA: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'NOME_CONTA'
      ProviderFlags = []
      Size = 30
    end
    object cdsFinanceiro_ConsultaNOME_FORMAPGTO: TStringField
      DisplayLabel = 'Forma Pagamento'
      FieldName = 'NOME_FORMAPGTO'
      ProviderFlags = []
      Size = 30
    end
    object cdsFinanceiro_ConsultaVLR_SAIDA: TFloatField
      FieldName = 'VLR_SAIDA'
    end
    object cdsFinanceiro_ConsultaVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object cdsFinanceiro_ConsultaID_CHEQUE: TIntegerField
      FieldName = 'ID_CHEQUE'
    end
    object cdsFinanceiro_ConsultaID_TRANSFERENCIA: TIntegerField
      FieldName = 'ID_TRANSFERENCIA'
    end
    object cdsFinanceiro_ConsultaID_TERMINAL: TIntegerField
      FieldName = 'ID_TERMINAL'
    end
  end
  object dsFinanceiro_Consulta: TDataSource
    DataSet = cdsFinanceiro_Consulta
    Left = 360
    Top = 24
  end
  object sdsSaldo_FPgto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT SUM(F.VLR_ENTRADA) VLR_ENTRADA, SUM(F.VLR_SAIDA) VLR_SAID' +
      'A, (SUM(F.VLR_ENTRADA) - SUM(F.VLR_SAIDA)) VLR_SALDO, TC.NOME NO' +
      'ME_FORMAPGTO, F.ID_FORMA_PAGAMENTO'#13#10'FROM FINANCEIRO F'#13#10'LEFT JOIN' +
      ' TIPOCOBRANCA TC'#13#10'ON F.ID_FORMA_PAGAMENTO = TC.ID'#13#10'GROUP BY TC.N' +
      'OME, F.ID_FORMA_PAGAMENTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 79
  end
  object dspSaldo_FPgto: TDataSetProvider
    DataSet = sdsSaldo_FPgto
    Left = 520
    Top = 79
  end
  object cdsSaldo_FPgto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSaldo_FPgto'
    Left = 560
    Top = 79
    object cdsSaldo_FPgtoVLR_ENTRADA: TFloatField
      DisplayLabel = 'Vlr. Entrada'
      FieldName = 'VLR_ENTRADA'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsSaldo_FPgtoVLR_SAIDA: TFloatField
      DisplayLabel = 'Vlr. Sa'#237'da'
      FieldName = 'VLR_SAIDA'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsSaldo_FPgtoNOME_FORMAPGTO: TStringField
      DisplayLabel = 'Forma Pagamento'
      FieldName = 'NOME_FORMAPGTO'
      Size = 30
    end
    object cdsSaldo_FPgtoID_FORMA_PAGAMENTO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID'
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object cdsSaldo_FPgtoVLR_SALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'VLR_SALDO'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsSaldo_FPgto: TDataSource
    DataSet = cdsSaldo_FPgto
    Left = 600
    Top = 79
  end
  object mSaldo_Conta: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 352
    Data = {
      820000009619E0BD01000000180000000500000000000300000082000849445F
      436F6E746104000100000000000A4E6F6D655F436F6E74610100490000000100
      055749445448020002001E000B566C725F456E74726164610800040000000000
      09566C725F5361696461080004000000000009566C725F53616C646F08000400
      000000000000}
    object mSaldo_ContaID_Conta: TIntegerField
      FieldName = 'ID_Conta'
    end
    object mSaldo_ContaNome_Conta: TStringField
      FieldName = 'Nome_Conta'
      Size = 30
    end
    object mSaldo_ContaVlr_Entrada: TFloatField
      FieldName = 'Vlr_Entrada'
      DisplayFormat = '0.00'
    end
    object mSaldo_ContaVlr_Saida: TFloatField
      FieldName = 'Vlr_Saida'
      DisplayFormat = '0.00'
    end
    object mSaldo_ContaVlr_Saldo: TFloatField
      FieldName = 'Vlr_Saldo'
      DisplayFormat = '0.00'
    end
  end
  object dsmSaldo_Conta: TDataSource
    DataSet = mSaldo_Conta
    Left = 96
    Top = 352
  end
  object mSaldo_FPgto: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 400
    Data = {
      940000009619E0BD01000000180000000500000000000300000094001149445F
      466F726D61506167616D656E746F0400010000000000134E6F6D655F466F726D
      61506167616D656E746F01004900000001000557494454480200020028000B56
      6C725F456E7472616461080004000000000009566C725F536169646108000400
      0000000009566C725F53616C646F08000400000000000000}
    object mSaldo_FPgtoID_FormaPagamento: TIntegerField
      FieldName = 'ID_FormaPagamento'
    end
    object mSaldo_FPgtoNome_FormaPagamento: TStringField
      FieldName = 'Nome_FormaPagamento'
      Size = 40
    end
    object mSaldo_FPgtoVlr_Entrada: TFloatField
      FieldName = 'Vlr_Entrada'
    end
    object mSaldo_FPgtoVlr_Saida: TFloatField
      FieldName = 'Vlr_Saida'
    end
    object mSaldo_FPgtoVlr_Saldo: TFloatField
      FieldName = 'Vlr_Saldo'
    end
  end
  object dsmSaldo_FPagto: TDataSource
    DataSet = mSaldo_FPgto
    Left = 104
    Top = 400
  end
  object sdsFechamento: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT FI.id_conta, FI.id_forma_pagamento, SUM(FI.vlr_saida) VLR' +
      '_SAIDA , SUM(FI.vlr_entrada) VLR_ENTRADA,'#13#10'C.nome NOME_CONTA, tc' +
      '.nome nome_formapagamento'#13#10'FROM FINANCEIRO FI'#13#10'INNER JOIN CONTAS' +
      ' C'#13#10'ON FI.id_conta = C.id'#13#10'LEFT JOIN TIPOCOBRANCA TC'#13#10'on fi.id_f' +
      'orma_pagamento = tc.id'#13#10'WHERE FI.DTMOVIMENTO >= :DTINICIAL'#13#10'AND ' +
      'FI.DTMOVIMENTO <= :DTFINAL'#13#10'AND FI.FILIAL = :FILIAL'#13#10'GROUP BY FI' +
      '.id_conta, FI.id_forma_pagamento, C.nome, tc.nome'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DTINICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTFINAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 520
    Top = 344
  end
  object dspFechamento: TDataSetProvider
    DataSet = sdsFechamento
    Left = 560
    Top = 344
  end
  object cdsFechamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFechamento'
    Left = 608
    Top = 344
    object cdsFechamentoID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsFechamentoID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object cdsFechamentoVLR_SAIDA: TFloatField
      FieldName = 'VLR_SAIDA'
    end
    object cdsFechamentoVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object cdsFechamentoNOME_CONTA: TStringField
      FieldName = 'NOME_CONTA'
      Size = 30
    end
    object cdsFechamentoNOME_FORMAPAGAMENTO: TStringField
      FieldName = 'NOME_FORMAPAGAMENTO'
      Size = 30
    end
  end
  object dsFechamento: TDataSource
    DataSet = cdsFechamento
    Left = 648
    Top = 344
  end
  object mFaturamento: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Codigo'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'VlrMovimento'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'Codigo'
    Params = <>
    StoreDefs = True
    Left = 32
    Top = 456
    Data = {
      630000009619E0BD010000001800000003000000000003000000630006436F64
      69676F0100490000000100055749445448020002000A00044E6F6D6501004900
      000001000557494454480200020028000C566C724D6F76696D656E746F080004
      00000000000000}
    object mFaturamentoCodigo: TStringField
      FieldName = 'Codigo'
      Size = 10
    end
    object mFaturamentoNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object mFaturamentoVlrMovimento: TFloatField
      FieldName = 'VlrMovimento'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsmFaturamento: TDataSource
    DataSet = mFaturamento
    Left = 112
    Top = 456
  end
  object sdsMovimento: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT M.TIPO_ES, M.TIPO_CONDICAO, SUM(M.VLR_DUPLICATA) VLR_DUPL' +
      'ICATA, M.TIPO_REG, M.ID_NOTAFISCAL'#13#10'FROM MOVIMENTO M'#13#10'WHERE M.FI' +
      'LIAL = :FILIAL'#13#10'  AND M.dtentradasaida >= :DTINICIAL'#13#10'  AND M.dt' +
      'entradasaida <= :DTFINAL'#13#10'  AND M.denegada = '#39'N'#39#13#10'  AND M.cancel' +
      'ado = '#39'N'#39#13#10'  AND M.vlr_duplicata > 0'#13#10'  AND M.tipo_condicao <> '#39 +
      'N'#39#13#10'GROUP BY M.TIPO_ES, M.TIPO_CONDICAO, M.TIPO_REG, M.ID_NOTAFI' +
      'SCAL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTINICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTFINAL'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 24
    Top = 520
  end
  object dspMovimento: TDataSetProvider
    DataSet = sdsMovimento
    Left = 64
    Top = 520
  end
  object cdsMovimento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMovimento'
    Left = 112
    Top = 520
    object cdsMovimentoTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object cdsMovimentoTIPO_CONDICAO: TStringField
      FieldName = 'TIPO_CONDICAO'
      FixedChar = True
      Size = 1
    end
    object cdsMovimentoVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object cdsMovimentoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsMovimentoID_NOTAFISCAL: TIntegerField
      FieldName = 'ID_NOTAFISCAL'
    end
  end
  object dsMovimento: TDataSource
    DataSet = cdsMovimento
    Left = 152
    Top = 520
  end
  object qUltFechamento: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_CONTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT MAX(DATA) DATA'
      'FROM FECHAMENTO'
      'WHERE TIPO_FECHAMENTO = '#39'N'#39' '
      '  AND ID_CONTA = :ID_CONTA'
      '  AND FILIAL = :FILIAL')
    SQLConnection = dmDatabase.scoDados
    Left = 344
    Top = 152
    object qUltFechamentoDATA: TDateField
      FieldName = 'DATA'
    end
  end
  object qCheques: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select'
      '   (SELECT SUM(ATR.VALOR)'
      ''
      '         FROM CHEQUE ATR'
      '         WHERE ATR.DTCOMPENSADO IS NULL'
      '           AND ATR.DTBOM_PARA <= :DATA) VLR_VENCIDO,'
      '       (SELECT SUM(AV.VALOR) '
      '         FROM CHEQUE AV'
      '         WHERE AV.DTCOMPENSADO IS NULL'
      '         AND AV.DTBOM_PARA > :DATA) VLR_AVENCER'
      'From RDB$DATABASE')
    SQLConnection = dmDatabase.scoDados
    Left = 408
    Top = 472
    object qChequesVLR_VENCIDO: TFloatField
      FieldName = 'VLR_VENCIDO'
    end
    object qChequesVLR_AVENCER: TFloatField
      FieldName = 'VLR_AVENCER'
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
    Left = 729
    Top = 16
  end
  object dspContaOrcamento: TDataSetProvider
    DataSet = sdsContaOrcamento
    Left = 761
    Top = 16
  end
  object cdsContaOrcamento: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'DESCRICAO'
    Params = <>
    ProviderName = 'dspContaOrcamento'
    Left = 801
    Top = 16
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
    Left = 841
    Top = 16
  end
  object sdsPedido_Emi: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT SUM(V.VLR_TOTAL) VLR_TOTAL'#13#10'FROM VPEDIDO_ITEM V'#13#10'WHERE V.' +
      'QTD > 0'#13#10'  AND V.TIPO_REG = '#39'P'#39#13#10'  AND FILIAL = :FILIAL'#13#10'  AND D' +
      'TEMISSAO >= :DTINICIAL'#13#10'  AND DTEMISSAO <= :DTFINAL'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTINICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTFINAL'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 72
  end
  object dspPedido_Emi: TDataSetProvider
    DataSet = sdsPedido_Emi
    Left = 72
    Top = 72
  end
  object cdsPedido_Emi: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido_Emi'
    Left = 120
    Top = 72
    object cdsPedido_EmiVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsPedido_Emi: TDataSource
    DataSet = cdsPedido_Emi
    Left = 160
    Top = 72
  end
  object sdsPedido_Pend: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT SUM(V.VLR_RESTANTE) VLR_RESTANTE,'#13#10'  (SELECT SUM(VR.VLR_R' +
      'ESTANTE)'#13#10'    FROM VPEDIDO_ITEM VR'#13#10'     WHERE VR.QTD > 0'#13#10'     ' +
      ' AND VR.TIPO_REG = '#39'P'#39#13#10'      AND VR.QTD_RESTANTE > 0'#13#10'      AND' +
      ' VR.FILIAL = :FILIAL'#13#10'      AND VR.DTENTREGA_ITEM < :DTINICIAL) ' +
      'VLR_RESTANTE_ATRAZADO'#13#10'FROM VPEDIDO_ITEM V'#13#10'WHERE V.QTD > 0'#13#10'  A' +
      'ND V.TIPO_REG = '#39'P'#39#13#10'  AND V.QTD_RESTANTE > 0'#13#10'  AND FILIAL = :F' +
      'ILIAL'#13#10'  AND DTEMISSAO >= :DTINICIAL'#13#10'  AND DTEMISSAO <= :DTFINA' +
      'L'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTINICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTINICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTFINAL'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 122
  end
  object dspPedido_Pend: TDataSetProvider
    DataSet = sdsPedido_Pend
    Left = 72
    Top = 122
  end
  object cdsPedido_Pend: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido_Pend'
    Left = 120
    Top = 122
    object cdsPedido_PendVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
    end
    object cdsPedido_PendVLR_RESTANTE_ATRAZADO: TFloatField
      FieldName = 'VLR_RESTANTE_ATRAZADO'
    end
  end
  object dsPedido_Pend: TDataSource
    DataSet = cdsPedido_Pend
    Left = 160
    Top = 122
  end
  object sdsOrcamento: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT COUNT(V.ID) AS QTD_ORCAMENTO,'#13#10'          CASE'#13#10'        WH' +
      'EN V.APROVADO_ORC = '#39'A'#39' THEN COUNT(V.ID) '#13#10'          END AS QTD_' +
      'APROVADO,'#13#10'          CASE'#13#10'        WHEN V.APROVADO_ORC = '#39'N'#39' THE' +
      'N COUNT(V.ID) '#13#10'          END AS QTD_NAO_APROVADO,'#13#10'          CA' +
      'SE'#13#10'        WHEN V.APROVADO_ORC = '#39'P'#39' THEN COUNT(V.ID) '#13#10'       ' +
      '   END AS QTD_PENDENTE'#13#10'FROM VPEDIDO_ITEM V'#13#10'WHERE V.TIPO_REG = ' +
      #39'O'#39#13#10'       AND V.FILIAL = :FILIAL'#13#10'       AND V.DTEMISSAO >= :D' +
      'TINICIAL'#13#10'       AND V.DTEMISSAO <= :DTFINAL'#13#10'group by APROVADO_' +
      'ORC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTINICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTFINAL'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 170
  end
  object dspOrcamento: TDataSetProvider
    DataSet = sdsOrcamento
    Left = 72
    Top = 170
  end
  object cdsOrcamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrcamento'
    Left = 120
    Top = 170
    object cdsOrcamentoQTD_ORCAMENTO: TIntegerField
      FieldName = 'QTD_ORCAMENTO'
      Required = True
    end
    object cdsOrcamentoQTD_APROVADO: TIntegerField
      FieldName = 'QTD_APROVADO'
    end
    object cdsOrcamentoQTD_NAO_APROVADO: TIntegerField
      FieldName = 'QTD_NAO_APROVADO'
    end
    object cdsOrcamentoQTD_PENDENTE: TIntegerField
      FieldName = 'QTD_PENDENTE'
    end
  end
  object dsOrcamento: TDataSource
    DataSet = cdsOrcamento
    Left = 160
    Top = 170
  end
  object sdsVale: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT sum(I.vlr_total) VLR_TOTAL,'#13#10'  (SELECT sum(I.vlr_total)'#13#10 +
      '    FROM VALE V'#13#10'    INNER JOIN VALE_ITENS I'#13#10'    ON V.id = I.id' +
      #13#10'    WHERE I.FATURADO = '#39'N'#39#13#10'      AND V.FILIAL = :FILIAL'#13#10'    ' +
      '  AND V.DTEMISSAO >= :DTINICIAL'#13#10'      AND V.DTEMISSAO <= :DTFIN' +
      'AL ) VLR_PENDENTE'#13#10'FROM VALE V'#13#10'INNER JOIN VALE_ITENS I'#13#10'ON V.id' +
      ' = I.id'#13#10'WHERE V.FILIAL = :FILIAL'#13#10'       AND V.DTEMISSAO >= :DT' +
      'INICIAL'#13#10'       AND V.DTEMISSAO <= :DTFINAL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTINICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTFINAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTINICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTFINAL'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 218
  end
  object dspVale: TDataSetProvider
    DataSet = sdsVale
    Left = 72
    Top = 218
  end
  object cdsVale: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVale'
    Left = 120
    Top = 218
    object cdsValeVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsValeVLR_PENDENTE: TFloatField
      FieldName = 'VLR_PENDENTE'
    end
  end
  object dsVale: TDataSource
    DataSet = cdsVale
    Left = 160
    Top = 218
  end
  object sdsDuplicata: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT SUM(D.VLR_RESTANTE) VLR_RESTANTE, D.TIPO_ES, D.tipo_mov'#13#10 +
      'FROM DUPLICATA D'#13#10'WHERE D.FILIAL = :FILIAL'#13#10'  AND D.dtvencimento' +
      ' >= :DTINICIAL'#13#10'  AND D.dtvencimento <= :DTFINAL'#13#10'  AND D.vlr_re' +
      'stante > 0'#13#10'GROUP BY D.TIPO_ES, D.TIPO_MOV'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTINICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTFINAL'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 520
    Top = 400
  end
  object dspDuplicata: TDataSetProvider
    DataSet = sdsDuplicata
    Left = 560
    Top = 400
  end
  object cdsDuplicata: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDuplicata'
    OnCalcFields = cdsDuplicataCalcFields
    Left = 608
    Top = 400
    object cdsDuplicataVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsDuplicataTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      Size = 1
    end
    object cdsDuplicataTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataNome: TStringField
      FieldKind = fkCalculated
      FieldName = 'Nome'
      Size = 60
      Calculated = True
    end
  end
  object dsDuplicata: TDataSource
    DataSet = cdsDuplicata
    Left = 648
    Top = 400
  end
  object qNotaFiscal_Canc: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTINICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTFINAL'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT COUNT(N.CANCELADA) CONTADOR'
      'FROM NOTAFISCAL N'
      'WHERE N.FILIAL = :FILIAL'
      '  AND N.DTEMISSAO >= :DTINICIAL'
      '  AND N.DTEMISSAO <= :DTFINAL'
      '  AND N.CANCELADA = '#39'S'#39
      '  AND N.TIPO_REG = '#39'NTS'#39)
    SQLConnection = dmDatabase.scoDados
    Left = 808
    Top = 272
    object qNotaFiscal_CancCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      Required = True
    end
  end
  object qNotaFiscal_CCE: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTINICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTFINAL'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT COUNT(1) CONTADOR'
      'FROM NOTAFISCAL_NFE NFE'
      'INNER JOIN NOTAFISCAL N'
      'ON NFE.ID = N.ID'
      'WHERE N.FILIAL = :FILIAL'
      '  AND NFE.DTCADASTRO >= :DTINICIAL'
      '  AND NFE.DTCADASTRO <= :DTFINAL'
      '  AND N.TIPO_REG = '#39'NTS'#39
      '  and NFE.TIPO = '#39'CCE'#39)
    SQLConnection = dmDatabase.scoDados
    Left = 808
    Top = 336
    object qNotaFiscal_CCECONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      Required = True
    end
  end
  object mImp: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 784
    Top = 440
    Data = {
      250000009619E0BD010000001800000001000000000003000000250002494404
      000100000000000000}
    object mImpID: TIntegerField
      FieldName = 'ID'
    end
  end
  object dsmImp: TDataSource
    DataSet = mImp
    Left = 816
    Top = 440
  end
  object qNotaFiscal_Ped: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT PED.DTEMISSAO, SUM(NI.vlr_total) VLR_TOTAL'
      'FROM NOTAFISCAL_PED NP'
      'INNER JOIN NOTAFISCAL_ITENS NI'
      'ON NP.id = NI.id'
      'AND NP.item = NI.item'
      ''
      'INNER JOIN PEDIDO PED'
      'ON NP.id_pedido = PED.id'
      'WHERE NP.ID = :ID'
      ''
      'GROUP BY PED.DTEMISSAO')
    SQLConnection = dmDatabase.scoDados
    Left = 728
    Top = 152
    object qNotaFiscal_PedDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object qNotaFiscal_PedVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
  end
  object qNotaFiscal_Vale: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT SUM(NI.vlr_total) VLR_TOTAL'
      'FROM NOTAFISCAL_ITENS NI'
      'WHERE NI.ID = :ID'
      '  AND NI.ID_VALE IS NOT NULL')
    SQLConnection = dmDatabase.scoDados
    Left = 728
    Top = 192
    object qNotaFiscal_ValeVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
  end
  object sdsPessoa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT CODIGO, NOME, CNPJ_CPF'#13#10'FROM PESSOA'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 520
    Top = 448
  end
  object dspPessoa: TDataSetProvider
    DataSet = sdsPessoa
    Left = 560
    Top = 448
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoa'
    OnCalcFields = cdsDuplicataCalcFields
    Left = 608
    Top = 448
    object cdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsPessoaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
  end
  object dsPessoa: TDataSource
    DataSet = cdsPessoa
    Left = 648
    Top = 448
  end
  object sdsFinAgrupado: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT FIN.DTMOVIMENTO, SUM(VLR_SAIDA) SAIDA, SUM(VLR_ENTRADA) E' +
      'NTRADA, COB.NOME, 2 AS FLAG'#13#10'FROM FINANCEIRO FIN'#13#10'LEFT JOIN TIPO' +
      'COBRANCA COB ON (FIN.ID_FORMA_PAGAMENTO = COB.ID)'#13#10'WHERE DTMOVIM' +
      'ENTO BETWEEN :D1 AND :D2 AND FILIAL = :FIL'#13#10'GROUP BY FIN.DTMOVIM' +
      'ENTO, COB.NOME'#13#10#13#10'UNION ALL'#13#10#13#10'SELECT DISTINCT FIN.DTMOVIMENTO, ' +
      '0 AS VLR_SAIDA, 0 AS VLR_ENTRADA, '#39#39' AS NOME, 1 AS FLAG'#13#10'FROM FI' +
      'NANCEIRO FIN'#13#10'LEFT JOIN TIPOCOBRANCA COB ON (FIN.ID_FORMA_PAGAME' +
      'NTO = COB.ID)'#13#10'WHERE DTMOVIMENTO BETWEEN :D1 AND :D2 AND FILIAL ' +
      '= :FIL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'D1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'D2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FIL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'D1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'D2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FIL'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 248
    Top = 72
  end
  object dspFinAgrupado: TDataSetProvider
    DataSet = sdsFinAgrupado
    OnUpdateError = dspFinanceiroUpdateError
    Left = 280
    Top = 72
  end
  object cdsFinAgrupado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFinAgrupado'
    OnCalcFields = cdsFinAgrupadoCalcFields
    Left = 320
    Top = 72
    object cdsFinAgrupadoDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object cdsFinAgrupadoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsFinAgrupadoSAIDA: TFloatField
      FieldName = 'SAIDA'
      DisplayFormat = '0.00'
    end
    object cdsFinAgrupadoENTRADA: TFloatField
      FieldName = 'ENTRADA'
      DisplayFormat = '0.00'
    end
    object cdsFinAgrupadoclSALDO: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'clSALDO'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object cdsFinAgrupadoFLAG: TIntegerField
      FieldName = 'FLAG'
      Required = True
    end
  end
  object dsFinAgrupado: TDataSource
    DataSet = cdsFinAgrupado
    Left = 360
    Top = 72
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
    ReportOptions.CreateDate = 43399.644061967600000000
    ReportOptions.LastChange = 43402.369452349540000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnBeforePrint = frxReport1BeforePrint
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 520
    Top = 504
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
    Left = 560
    Top = 504
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxFinAgrupado'
    CloseDataSource = False
    FieldAliases.Strings = (
      'DTMOVIMENTO=DTMOVIMENTO'
      'NOME=NOME'
      'SAIDA=SAIDA'
      'ENTRADA=ENTRADA'
      'clSALDO=clSALDO'
      'FLAG=FLAG')
    DataSet = cdsFinAgrupado
    BCDToCurrency = False
    Left = 368
    Top = 472
  end
  object mDupAuxiliar: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Tipo_ES'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Tipo_Mov'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Valor'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'TIPO_ES;TIPO_MOV'
    Params = <>
    StoreDefs = True
    Left = 768
    Top = 512
    Data = {
      7A0000009619E0BD0100000018000000040000000000030000007A0007546970
      6F5F45530100490000000100055749445448020002000100085469706F5F4D6F
      760100490000000100055749445448020002000100044E6F6D65010049000000
      01000557494454480200020028000556616C6F7208000400000000000000}
    object mDupAuxiliarTipo_ES: TStringField
      FieldName = 'Tipo_ES'
      Size = 1
    end
    object mDupAuxiliarTipo_Mov: TStringField
      FieldName = 'Tipo_Mov'
      Size = 1
    end
    object mDupAuxiliarNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object mDupAuxiliarValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '0.00'
    end
  end
  object dsmDupAuxiliar: TDataSource
    DataSet = mDupAuxiliar
    Left = 824
    Top = 512
  end
  object sdsOC_Emi: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT SUM(V.VLR_TOTAL) VLR_TOTAL'#13#10'FROM VPEDIDO_ITEM V'#13#10'WHERE V.' +
      'QTD > 0'#13#10'  AND V.TIPO_REG = '#39'C'#39#13#10'  AND FILIAL = :FILIAL'#13#10'  AND D' +
      'TEMISSAO >= :DTINICIAL'#13#10'  AND DTEMISSAO <= :DTFINAL'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTINICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTFINAL'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 256
    Top = 280
  end
  object dspOC_Emi: TDataSetProvider
    DataSet = sdsOC_Emi
    Left = 296
    Top = 280
  end
  object cdsOC_Emi: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOC_Emi'
    Left = 344
    Top = 280
    object cdsOC_EmiVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
  end
  object dsOC_Emi: TDataSource
    DataSet = cdsOC_Emi
    Left = 384
    Top = 280
  end
  object qParametros_Geral: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT EMPRESA_VAREJO'
      'FROM PARAMETROS_GERAL')
    SQLConnection = dmDatabase.scoDados
    Left = 384
    Top = 376
    object qParametros_GeralEMPRESA_VAREJO: TStringField
      FieldName = 'EMPRESA_VAREJO'
      FixedChar = True
      Size = 1
    end
  end
  object qConsulta_Data: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'D1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'D2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FIL'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select FIN.DTMOVIMENTO, FIN.ID, sum(VLR_SAIDA) SAIDA, sum(VLR_EN' +
        'TRADA) ENTRADA, COB.NOME'
      'from FINANCEIRO FIN'
      'left join TIPOCOBRANCA COB on (FIN.ID_FORMA_PAGAMENTO = COB.ID)'
      'where DTMOVIMENTO between :D1 and :D2 and'
      '      FILIAL = :FIL'
      'group by FIN.DTMOVIMENTO, FIN.ID, COB.NOME')
    SQLConnection = dmDatabase.scoDados
    Left = 256
    Top = 400
    object qConsulta_DataDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object qConsulta_DataID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qConsulta_DataSAIDA: TFloatField
      FieldName = 'SAIDA'
    end
    object qConsulta_DataENTRADA: TFloatField
      FieldName = 'ENTRADA'
    end
    object qConsulta_DataNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object frxMovimentoData: TfrxDBDataset
    UserName = 'frxMovimentoData'
    OnFirst = frxMovimentoDataFirst
    OnNext = frxMovimentoDataNext
    CloseDataSource = False
    FieldAliases.Strings = (
      'DTMOVIMENTO=DTMOVIMENTO'
      'ID=ID'
      'SAIDA=SAIDA'
      'ENTRADA=ENTRADA'
      'NOME=NOME'
      'HISTORICO_COMPL=HISTORICO_COMPL'
      'NOME_CONTA=NOME_CONTA'
      'SALDO=SALDO')
    DataSource = dsMovimentoData
    BCDToCurrency = False
    Left = 280
    Top = 472
  end
  object sdsMovimentoData: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select FIN.DTMOVIMENTO, FIN.ID, sum(VLR_SAIDA) SAIDA, sum(VLR_EN' +
      'TRADA) ENTRADA, sum(VLR_ENTRADA - VLR_SAIDA) SALDO,'#13#10'       COB.' +
      'NOME, FIN.HISTORICO_COMPL, CON.NOME NOME_CONTA'#13#10'from FINANCEIRO ' +
      'FIN'#13#10'left join TIPOCOBRANCA COB on (FIN.ID_FORMA_PAGAMENTO = COB' +
      '.ID)'#13#10'left join CONTAS CON on CON.ID = FIN.ID_CONTA'#13#10'where DTMOV' +
      'IMENTO between :D1 and :D2 and'#13#10'      FIN.FILIAL = :FIL'#13#10'group b' +
      'y FIN.DTMOVIMENTO, FIN.ID, COB.NOME, FIN.HISTORICO_COMPL, CON.NO' +
      'ME  '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'D1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'D2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FIL'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 200
    Top = 336
    object sdsMovimentoDataDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object sdsMovimentoDataID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsMovimentoDataSAIDA: TFloatField
      FieldName = 'SAIDA'
    end
    object sdsMovimentoDataENTRADA: TFloatField
      FieldName = 'ENTRADA'
    end
    object sdsMovimentoDataNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object sdsMovimentoDataHISTORICO_COMPL: TStringField
      FieldName = 'HISTORICO_COMPL'
      Size = 100
    end
    object sdsMovimentoDataNOME_CONTA: TStringField
      FieldName = 'NOME_CONTA'
      Size = 30
    end
    object sdsMovimentoDataSALDO: TFloatField
      FieldName = 'SALDO'
    end
  end
  object dspMovimentoData: TDataSetProvider
    DataSet = sdsMovimentoData
    Left = 232
    Top = 336
  end
  object cdsMovimentoData: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMovimentoData'
    Left = 264
    Top = 336
    object cdsMovimentoDataDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object cdsMovimentoDataID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMovimentoDataSAIDA: TFloatField
      FieldName = 'SAIDA'
    end
    object cdsMovimentoDataENTRADA: TFloatField
      FieldName = 'ENTRADA'
    end
    object cdsMovimentoDataNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsMovimentoDataHISTORICO_COMPL: TStringField
      FieldName = 'HISTORICO_COMPL'
      Size = 100
    end
    object cdsMovimentoDataNOME_CONTA: TStringField
      FieldName = 'NOME_CONTA'
      Size = 30
    end
    object cdsMovimentoDataSALDO: TFloatField
      FieldName = 'SALDO'
    end
  end
  object dsMovimentoData: TDataSource
    DataSet = cdsMovimentoData
    Left = 288
    Top = 336
  end
  object frxSaldoMov: TfrxDBDataset
    UserName = 'frxSaldoMov'
    CloseDataSource = False
    FieldAliases.Strings = (
      'VLR_ENTRADA=VLR_ENTRADA'
      'VLR_SAIDA=VLR_SAIDA'
      'SALDO_INICIAL=SALDO_INICIAL')
    DataSet = qSaldoMovData
    BCDToCurrency = False
    Left = 320
    Top = 472
  end
  object qSaldoMovData: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DTMOVIMENTO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select sum(F.VLR_ENTRADA) VLR_ENTRADA, sum(F.VLR_SAIDA) VLR_SAID' +
        'A, sum(F.VLR_ENTRADA - F.VLR_SAIDA) SALDO_INICIAL'
      'from FINANCEIRO F'
      'inner join SALDO_CONTA SC on F.ID_CONTA = SC.ID_CONTA'
      'where F.DTMOVIMENTO < :DTMOVIMENTO')
    SQLConnection = dmDatabase.scoDados
    Left = 264
    Top = 536
    object qSaldoMovDataVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object qSaldoMovDataVLR_SAIDA: TFloatField
      FieldName = 'VLR_SAIDA'
    end
    object qSaldoMovDataSALDO_INICIAL: TFloatField
      FieldName = 'SALDO_INICIAL'
    end
  end
  object qParametros_Fin: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT EXIGIR_CONTA_ORC_DUP'
      'FROM PARAMETROS_FIN')
    SQLConnection = dmDatabase.scoDados
    Left = 312
    Top = 216
    object qParametros_FinEXIGIR_CONTA_ORC_DUP: TStringField
      FieldName = 'EXIGIR_CONTA_ORC_DUP'
      FixedChar = True
      Size = 1
    end
  end
  object mRecibo: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Filial'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Filial_End'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Filial_Cidade'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Filial_UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Filial_CEP'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'Pessoa_Nome'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Pessoa_Doc'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'Financeiro_Valor'
        DataType = ftCurrency
      end
      item
        Name = 'Financeiro_Forma'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'Financeiro_Data'
        DataType = ftDate
      end
      item
        Name = 'Financeiro_Descr'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'Filial_Fone'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Filial_Email'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Financeiro_VlrExtenso'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'Filial_CNPJ'
        DataType = ftString
        Size = 18
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 728
    Top = 80
    Data = {
      0C0200009619E0BD01000000180000000F0000000000030000000C020646696C
      69616C0100490000000100055749445448020002001E000A46696C69616C5F45
      6E6401004900000001000557494454480200020028000D46696C69616C5F4369
      646164650100490000000100055749445448020002001E000946696C69616C5F
      554601004900000001000557494454480200020002000A46696C69616C5F4345
      5001004900000001000557494454480200020009000B506573736F615F4E6F6D
      6501004900000001000557494454480200020028000A506573736F615F446F63
      01004900000001000557494454480200020012001046696E616E636569726F5F
      56616C6F72080004000000010007535542545950450200490006004D6F6E6579
      001046696E616E636569726F5F466F726D610100490000000100055749445448
      0200020019000F46696E616E636569726F5F4461746104000600000000001046
      696E616E636569726F5F44657363720100490000000100055749445448020002
      00C8000B46696C69616C5F466F6E650100490000000100055749445448020002
      0014000C46696C69616C5F456D61696C01004900000001000557494454480200
      020028001546696E616E636569726F5F566C72457874656E736F010049000000
      01000557494454480200020096000B46696C69616C5F434E504A010049000000
      01000557494454480200020012000000}
    object mReciboFilial: TStringField
      FieldName = 'Filial'
      Size = 30
    end
    object mReciboFilial_End: TStringField
      FieldName = 'Filial_End'
      Size = 40
    end
    object mReciboFilial_Cidade: TStringField
      FieldName = 'Filial_Cidade'
      Size = 30
    end
    object mReciboFilial_UF: TStringField
      FieldName = 'Filial_UF'
      Size = 2
    end
    object mReciboFilial_CEP: TStringField
      FieldName = 'Filial_CEP'
      Size = 9
    end
    object mReciboPessoa_Nome: TStringField
      FieldName = 'Pessoa_Nome'
      Size = 40
    end
    object mReciboPessoa_Doc: TStringField
      FieldName = 'Pessoa_Doc'
      Size = 18
    end
    object mReciboFinanceiro_Valor: TCurrencyField
      FieldName = 'Financeiro_Valor'
    end
    object mReciboFinanceiro_Forma: TStringField
      FieldName = 'Financeiro_Forma'
      Size = 25
    end
    object mReciboFinanceiro_Data: TDateField
      FieldName = 'Financeiro_Data'
    end
    object mReciboFinanceiro_Descr: TStringField
      FieldName = 'Financeiro_Descr'
      Size = 200
    end
    object mReciboFilial_Fone: TStringField
      FieldName = 'Filial_Fone'
    end
    object mReciboFilial_Email: TStringField
      FieldName = 'Filial_Email'
      Size = 40
    end
    object mReciboFinanceiro_VlrExtenso: TStringField
      FieldName = 'Financeiro_VlrExtenso'
      Size = 150
    end
    object mReciboFilial_CNPJ: TStringField
      FieldName = 'Filial_CNPJ'
      Size = 18
    end
  end
  object dsmRecibo: TDataSource
    DataSet = mRecibo
    Left = 760
    Top = 80
  end
  object frxRecibo: TfrxDBDataset
    UserName = 'frxRecibo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Filial=Filial'
      'Filial_End=Filial_End'
      'Filial_Cidade=Filial_Cidade'
      'Filial_UF=Filial_UF'
      'Filial_CEP=Filial_CEP'
      'Pessoa_Nome=Pessoa_Nome'
      'Pessoa_Doc=Pessoa_Doc'
      'Financeiro_Valor=Financeiro_Valor'
      'Financeiro_Forma=Financeiro_Forma'
      'Financeiro_Data=Financeiro_Data'
      'Financeiro_Descr=Financeiro_Descr'
      'Filial_Fone=Filial_Fone'
      'Filial_Email=Filial_Email'
      'Financeiro_VlrExtenso=Financeiro_VlrExtenso'
      'Filial_CNPJ=Filial_CNPJ')
    DataSet = mRecibo
    BCDToCurrency = False
    Left = 792
    Top = 80
  end
end
