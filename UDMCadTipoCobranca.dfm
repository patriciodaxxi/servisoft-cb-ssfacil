object DMCadTipoCobranca: TDMCadTipoCobranca
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 432
  Top = 122
  Height = 346
  Width = 636
  object sdsTipoCobranca: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TIPOCOBRANCA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsTipoCobrancaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTipoCobrancaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object sdsTipoCobrancaDESCONTADO: TStringField
      FieldName = 'DESCONTADO'
      FixedChar = True
      Size = 1
    end
    object sdsTipoCobrancaDEPOSITO: TStringField
      FieldName = 'DEPOSITO'
      FixedChar = True
      Size = 1
    end
    object sdsTipoCobrancaGERARBOLETO: TStringField
      FieldName = 'GERARBOLETO'
      FixedChar = True
      Size = 1
    end
    object sdsTipoCobrancaQTDDIAS: TIntegerField
      FieldName = 'QTDDIAS'
    end
    object sdsTipoCobrancaCARTAOCREDITO: TStringField
      FieldName = 'CARTAOCREDITO'
      FixedChar = True
      Size = 1
    end
    object sdsTipoCobrancaCHEQUE: TStringField
      FieldName = 'CHEQUE'
      FixedChar = True
      Size = 1
    end
    object sdsTipoCobrancaDINHEIRO: TStringField
      FieldName = 'DINHEIRO'
      FixedChar = True
      Size = 1
    end
    object sdsTipoCobrancaMOSTRARNOCUPOM: TStringField
      FieldName = 'MOSTRARNOCUPOM'
      FixedChar = True
      Size = 1
    end
    object sdsTipoCobrancaCARTAODEBITO: TStringField
      FieldName = 'CARTAODEBITO'
      FixedChar = True
      Size = 1
    end
    object sdsTipoCobrancaCOD_IMP_FISCAL: TStringField
      FieldName = 'COD_IMP_FISCAL'
      Size = 2
    end
    object sdsTipoCobrancaGERAR_NFCE: TStringField
      FieldName = 'GERAR_NFCE'
      FixedChar = True
      Size = 1
    end
    object sdsTipoCobrancaABRE_GAVETA: TStringField
      FieldName = 'ABRE_GAVETA'
      FixedChar = True
      Size = 1
    end
    object sdsTipoCobrancaEXIGE_CLIENTE: TStringField
      FieldName = 'EXIGE_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsTipoCobrancaIMPRIME_CARNE: TStringField
      FieldName = 'IMPRIME_CARNE'
      FixedChar = True
      Size = 1
    end
    object sdsTipoCobrancaCREDITO_LOJA: TStringField
      FieldName = 'CREDITO_LOJA'
      FixedChar = True
      Size = 1
    end
    object sdsTipoCobrancaPRECO_AVISTA: TStringField
      FieldName = 'PRECO_AVISTA'
      FixedChar = True
      Size = 1
    end
    object sdsTipoCobrancaENVIAR_APLICATIVO: TStringField
      FieldName = 'ENVIAR_APLICATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsTipoCobrancaVALE_ALIMENTACAO: TStringField
      FieldName = 'VALE_ALIMENTACAO'
      FixedChar = True
      Size = 1
    end
    object sdsTipoCobrancaVALE_REFEICAO: TStringField
      FieldName = 'VALE_REFEICAO'
      FixedChar = True
      Size = 1
    end
    object sdsTipoCobrancaVALE_PRESENTE: TStringField
      FieldName = 'VALE_PRESENTE'
      FixedChar = True
      Size = 1
    end
    object sdsTipoCobrancaVALE_COMBUSTIVEL: TStringField
      FieldName = 'VALE_COMBUSTIVEL'
      FixedChar = True
      Size = 1
    end
    object sdsTipoCobrancaOUTROS: TStringField
      FieldName = 'OUTROS'
      FixedChar = True
      Size = 1
    end
    object sdsTipoCobrancaFATURAMENTO_LIQUIDO: TStringField
      FieldName = 'FATURAMENTO_LIQUIDO'
      FixedChar = True
      Size = 1
    end
    object sdsTipoCobrancaFATURAMENTO_BRUTO: TStringField
      FieldName = 'FATURAMENTO_BRUTO'
      FixedChar = True
      Size = 1
    end
    object sdsTipoCobrancaFECHAMENTO_AUTOMATICO: TStringField
      FieldName = 'FECHAMENTO_AUTOMATICO'
      FixedChar = True
      Size = 1
    end
    object sdsTipoCobrancaPERC_JUROS: TFloatField
      FieldName = 'PERC_JUROS'
    end
    object sdsTipoCobrancaTAXA: TFloatField
      FieldName = 'TAXA'
    end
    object sdsTipoCobrancaTAXA_TIPO: TStringField
      FieldName = 'TAXA_TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsTipoCobrancaJUROS_TIPO: TStringField
      FieldName = 'JUROS_TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object dspTipoCobranca: TDataSetProvider
    DataSet = sdsTipoCobranca
    OnUpdateError = dspTipoCobrancaUpdateError
    Left = 87
    Top = 32
  end
  object cdsTipoCobranca: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTipoCobranca'
    OnNewRecord = cdsTipoCobrancaNewRecord
    Left = 120
    Top = 32
    object cdsTipoCobrancaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTipoCobrancaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 30
    end
    object cdsTipoCobrancaDESCONTADO: TStringField
      DisplayLabel = 'Descontado'
      FieldName = 'DESCONTADO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaDEPOSITO: TStringField
      DisplayLabel = 'Dep'#243'sito'
      FieldName = 'DEPOSITO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaGERARBOLETO: TStringField
      DisplayLabel = 'Gerar Boleto'
      FieldName = 'GERARBOLETO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaQTDDIAS: TIntegerField
      DisplayLabel = 'Qtd. Dias'
      FieldName = 'QTDDIAS'
    end
    object cdsTipoCobrancaCHEQUE: TStringField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaCARTAOCREDITO: TStringField
      DisplayLabel = 'Cart'#227'o Cr'#233'dito'
      FieldName = 'CARTAOCREDITO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaDINHEIRO: TStringField
      DisplayLabel = 'Dinheiro'
      FieldName = 'DINHEIRO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaMOSTRARNOCUPOM: TStringField
      DisplayLabel = 'Mostrar no Cupom'
      FieldName = 'MOSTRARNOCUPOM'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaCARTAODEBITO: TStringField
      FieldName = 'CARTAODEBITO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaCOD_IMP_FISCAL: TStringField
      FieldName = 'COD_IMP_FISCAL'
      Size = 2
    end
    object cdsTipoCobrancaGERAR_NFCE: TStringField
      FieldName = 'GERAR_NFCE'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaABRE_GAVETA: TStringField
      FieldName = 'ABRE_GAVETA'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaEXIGE_CLIENTE: TStringField
      FieldName = 'EXIGE_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaIMPRIME_CARNE: TStringField
      FieldName = 'IMPRIME_CARNE'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaCREDITO_LOJA: TStringField
      FieldName = 'CREDITO_LOJA'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaPRECO_AVISTA: TStringField
      FieldName = 'PRECO_AVISTA'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaENVIAR_APLICATIVO: TStringField
      FieldName = 'ENVIAR_APLICATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaVALE_ALIMENTACAO: TStringField
      FieldName = 'VALE_ALIMENTACAO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaVALE_REFEICAO: TStringField
      FieldName = 'VALE_REFEICAO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaVALE_PRESENTE: TStringField
      FieldName = 'VALE_PRESENTE'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaVALE_COMBUSTIVEL: TStringField
      FieldName = 'VALE_COMBUSTIVEL'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaOUTROS: TStringField
      FieldName = 'OUTROS'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaFATURAMENTO_LIQUIDO: TStringField
      FieldName = 'FATURAMENTO_LIQUIDO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaFATURAMENTO_BRUTO: TStringField
      FieldName = 'FATURAMENTO_BRUTO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaFECHAMENTO_AUTOMATICO: TStringField
      FieldName = 'FECHAMENTO_AUTOMATICO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaPERC_JUROS: TFloatField
      FieldName = 'PERC_JUROS'
    end
    object cdsTipoCobrancaTAXA: TFloatField
      FieldName = 'TAXA'
    end
    object cdsTipoCobrancaTAXA_TIPO: TStringField
      FieldName = 'TAXA_TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancasdsTipoCobranca_Itens: TDataSetField
      FieldName = 'sdsTipoCobranca_Itens'
    end
    object cdsTipoCobrancaJUROS_TIPO: TStringField
      FieldName = 'JUROS_TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object dsTipoCobranca: TDataSource
    DataSet = cdsTipoCobranca
    Left = 152
    Top = 32
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT P.impressora_fiscal'
      'FROM PARAMETROS P')
    SQLConnection = dmDatabase.scoDados
    Left = 400
    Top = 24
    object qParametrosIMPRESSORA_FISCAL: TStringField
      FieldName = 'IMPRESSORA_FISCAL'
      FixedChar = True
      Size = 1
    end
  end
  object dsMestre: TDataSource
    DataSet = sdsTipoCobranca
    Left = 56
    Top = 88
  end
  object sdsTipoCobranca_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM TIPOCOBRANCA_ITENS'#13#10'WHERE ID = :ID'
    DataSource = dsMestre
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
    Top = 152
    object sdsTipoCobranca_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTipoCobranca_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsTipoCobranca_ItensID_CONDPAGTO: TIntegerField
      FieldName = 'ID_CONDPAGTO'
      Required = True
    end
  end
  object cdsTipoCobranca_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsTipoCobrancasdsTipoCobranca_Itens
    Params = <>
    OnCalcFields = cdsTipoCobranca_ItensCalcFields
    Left = 128
    Top = 152
    object cdsTipoCobranca_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTipoCobranca_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsTipoCobranca_ItensID_CONDPAGTO: TIntegerField
      FieldName = 'ID_CONDPAGTO'
      Required = True
    end
    object cdsTipoCobranca_ItensNome_CondPagto: TStringField
      FieldKind = fkCalculated
      FieldName = 'Nome_CondPagto'
      Size = 50
      Calculated = True
    end
  end
  object dsTipoCobranca_Itens: TDataSource
    DataSet = cdsTipoCobranca_Itens
    Left = 168
    Top = 152
  end
  object sdsCondPagto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select ID, NOME from CONDPGTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 232
    object sdsCondPagtoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCondPagtoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dspCondPagto: TDataSetProvider
    DataSet = sdsCondPagto
    Left = 80
    Top = 232
  end
  object cdsCondPagto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCondPagto'
    Left = 112
    Top = 232
    object cdsCondPagtoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCondPagtoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dsCondPagto: TDataSource
    DataSet = cdsCondPagto
    Left = 144
    Top = 232
  end
end
