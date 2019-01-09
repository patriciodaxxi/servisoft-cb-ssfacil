object DMCadFechamento: TDMCadFechamento
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 178
  Top = 74
  Height = 592
  Width = 1098
  object sdsFechamento: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT FI.*, CFI.NOME TERMINAL'#13#10'FROM FECHAMENTO FI'#13#10'LEFT JOIN CU' +
      'POMFISCAL_TERMINAL CFI ON (CFI.ID = FI.TERMINAL_ID)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 32
    object sdsFechamentoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFechamentoTIPO_FECHAMENTO: TStringField
      FieldName = 'TIPO_FECHAMENTO'
      FixedChar = True
      Size = 1
    end
    object sdsFechamentoID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object sdsFechamentoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsFechamentoVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object sdsFechamentoVLR_SAIDA: TFloatField
      FieldName = 'VLR_SAIDA'
    end
    object sdsFechamentoVLR_SALDO: TFloatField
      FieldName = 'VLR_SALDO'
    end
    object sdsFechamentoDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsFechamentoVLR_INICIAL: TFloatField
      FieldName = 'VLR_INICIAL'
    end
    object sdsFechamentoVLR_SUBSALDO: TFloatField
      FieldName = 'VLR_SUBSALDO'
    end
    object sdsFechamentoVLR_INFORMADO: TFloatField
      FieldName = 'VLR_INFORMADO'
    end
    object sdsFechamentoVLR_DIFERENCA: TFloatField
      FieldName = 'VLR_DIFERENCA'
    end
    object sdsFechamentoVLR_SANGRIA: TFloatField
      FieldName = 'VLR_SANGRIA'
    end
    object sdsFechamentoTERMINAL_ID: TSmallintField
      FieldName = 'TERMINAL_ID'
    end
    object sdsFechamentoTERMINAL: TStringField
      FieldName = 'TERMINAL'
      ProviderFlags = []
    end
    object sdsFechamentoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object sdsFechamentoHRABERTURA: TTimeField
      FieldName = 'HRABERTURA'
    end
    object sdsFechamentoHRFECHAMENTO: TTimeField
      FieldName = 'HRFECHAMENTO'
    end
    object sdsFechamentoDTFECHAMENTO: TDateField
      FieldName = 'DTFECHAMENTO'
    end
    object sdsFechamentoNUM_COMANDA: TIntegerField
      FieldName = 'NUM_COMANDA'
    end
    object sdsFechamentoVLR_NAO_FATURADO: TFloatField
      FieldName = 'VLR_NAO_FATURADO'
    end
    object sdsFechamentoDT_HR_CONFERENCIA: TSQLTimeStampField
      FieldName = 'DT_HR_CONFERENCIA'
    end
    object sdsFechamentoVLR_RECEBIMENTO: TFloatField
      FieldName = 'VLR_RECEBIMENTO'
    end
    object sdsFechamentoOBS_FECHAMENTO: TStringField
      FieldName = 'OBS_FECHAMENTO'
      Size = 200
    end
    object sdsFechamentoOBS_CONFERENCIA: TStringField
      FieldName = 'OBS_CONFERENCIA'
      Size = 200
    end
  end
  object dspFechamento: TDataSetProvider
    DataSet = sdsFechamento
    Options = [poCascadeDeletes, poCascadeUpdates]
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspFechamentoUpdateError
    Left = 160
    Top = 32
  end
  object cdsFechamento: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspFechamento'
    OnNewRecord = cdsFechamentoNewRecord
    Left = 224
    Top = 32
    object cdsFechamentoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFechamentoTIPO_FECHAMENTO: TStringField
      FieldName = 'TIPO_FECHAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsFechamentoID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsFechamentoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsFechamentoVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
      DisplayFormat = '0.00'
    end
    object cdsFechamentoVLR_SAIDA: TFloatField
      FieldName = 'VLR_SAIDA'
      DisplayFormat = '0.00'
    end
    object cdsFechamentoVLR_SALDO: TFloatField
      FieldName = 'VLR_SALDO'
      DisplayFormat = '0.00'
    end
    object cdsFechamentoDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsFechamentoVLR_INICIAL: TFloatField
      FieldName = 'VLR_INICIAL'
      DisplayFormat = '0.00'
    end
    object cdsFechamentoVLR_SUBSALDO: TFloatField
      FieldName = 'VLR_SUBSALDO'
      DisplayFormat = '0.00'
    end
    object cdsFechamentoVLR_INFORMADO: TFloatField
      FieldName = 'VLR_INFORMADO'
      DisplayFormat = '0.00'
    end
    object cdsFechamentoVLR_DIFERENCA: TFloatField
      FieldName = 'VLR_DIFERENCA'
      DisplayFormat = '0.00'
    end
    object cdsFechamentoVLR_SANGRIA: TFloatField
      FieldName = 'VLR_SANGRIA'
      DisplayFormat = '0.00'
    end
    object cdsFechamentosdsFechamento_Itens: TDataSetField
      FieldName = 'sdsFechamento_Itens'
    end
    object cdsFechamentoTERMINAL_ID: TSmallintField
      FieldName = 'TERMINAL_ID'
    end
    object cdsFechamentoTERMINAL: TStringField
      FieldName = 'TERMINAL'
      ProviderFlags = []
    end
    object cdsFechamentoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsFechamentosdsFechamento_Sup: TDataSetField
      FieldName = 'sdsFechamento_Sup'
    end
    object cdsFechamentosdsFechamento_San: TDataSetField
      FieldName = 'sdsFechamento_San'
    end
    object cdsFechamentosdsFechamento_Ret: TDataSetField
      FieldName = 'sdsFechamento_Ret'
    end
    object cdsFechamentoHRABERTURA: TTimeField
      FieldName = 'HRABERTURA'
    end
    object cdsFechamentoHRFECHAMENTO: TTimeField
      FieldName = 'HRFECHAMENTO'
    end
    object cdsFechamentoDTFECHAMENTO: TDateField
      FieldName = 'DTFECHAMENTO'
    end
    object cdsFechamentoNUM_COMANDA: TIntegerField
      FieldName = 'NUM_COMANDA'
    end
    object cdsFechamentoVLR_NAO_FATURADO: TFloatField
      FieldName = 'VLR_NAO_FATURADO'
      DisplayFormat = '0.00'
    end
    object cdsFechamentoDT_HR_CONFERENCIA: TSQLTimeStampField
      FieldName = 'DT_HR_CONFERENCIA'
    end
    object cdsFechamentoVLR_RECEBIMENTO: TFloatField
      FieldName = 'VLR_RECEBIMENTO'
      DisplayFormat = '0.00'
    end
    object cdsFechamentoOBS_FECHAMENTO: TStringField
      FieldName = 'OBS_FECHAMENTO'
      Size = 200
    end
    object cdsFechamentoOBS_CONFERENCIA: TStringField
      FieldName = 'OBS_CONFERENCIA'
      Size = 200
    end
  end
  object dsFechamento: TDataSource
    DataSet = cdsFechamento
    Left = 296
    Top = 32
  end
  object sdsTipoCobranca: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TIPOCOBRANCA'#13#10'WHERE MOSTRARNOCUPOM = '#39'S'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 410
    Top = 158
  end
  object dspTipoCobranca: TDataSetProvider
    DataSet = sdsTipoCobranca
    Left = 482
    Top = 158
  end
  object cdsTipoCobranca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTipoCobranca'
    Left = 546
    Top = 158
    object cdsTipoCobrancaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTipoCobrancaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsTipoCobrancaDINHEIRO: TStringField
      FieldName = 'DINHEIRO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaFECHAMENTO_AUTOMATICO: TStringField
      FieldName = 'FECHAMENTO_AUTOMATICO'
      FixedChar = True
      Size = 1
    end
  end
  object dsTipoCobranca: TDataSource
    DataSet = cdsTipoCobranca
    Left = 618
    Top = 158
  end
  object dsFechamento_Mestre: TDataSource
    DataSet = sdsFechamento
    Left = 56
    Top = 96
  end
  object sdsFechamento_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT FI.*, COB.NOME TIPO_COB_NOME, COB.FATURAMENTO_BRUTO, COB.' +
      'FATURAMENTO_LIQUIDO'#13#10'FROM FECHAMENTO_ITENS FI'#13#10'LEFT JOIN TIPOCOB' +
      'RANCA COB ON (FI.ID_TIPOCOBRANCA = COB.ID)'#13#10'WHERE FI.ID = :ID'
    DataSource = dsFechamento_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 160
    object sdsFechamento_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFechamento_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFechamento_ItensID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object sdsFechamento_ItensVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object sdsFechamento_ItensVLR_SAIDA: TFloatField
      FieldName = 'VLR_SAIDA'
    end
    object sdsFechamento_ItensVLR_SALDO: TFloatField
      FieldName = 'VLR_SALDO'
    end
    object sdsFechamento_ItensVLR_INFORMADO: TFloatField
      FieldName = 'VLR_INFORMADO'
    end
    object sdsFechamento_ItensTIPO_COB_NOME: TStringField
      FieldName = 'TIPO_COB_NOME'
      ProviderFlags = []
      Size = 30
    end
    object sdsFechamento_ItensNOME_TIPOCOBRANCA: TStringField
      FieldName = 'NOME_TIPOCOBRANCA'
      Size = 30
    end
    object sdsFechamento_ItensVLR_CONFERENCIA: TFloatField
      FieldName = 'VLR_CONFERENCIA'
    end
    object sdsFechamento_ItensVLR_DIF_INFORMADO: TFloatField
      FieldName = 'VLR_DIF_INFORMADO'
    end
    object sdsFechamento_ItensVLR_DIF_CONFERIDO: TFloatField
      FieldName = 'VLR_DIF_CONFERIDO'
    end
    object sdsFechamento_ItensVLR_NAO_FATURADO: TFloatField
      FieldName = 'VLR_NAO_FATURADO'
    end
    object sdsFechamento_ItensVLR_RECEBIMENTO: TFloatField
      FieldName = 'VLR_RECEBIMENTO'
    end
    object sdsFechamento_ItensFATURAMENTO_BRUTO: TStringField
      FieldName = 'FATURAMENTO_BRUTO'
      FixedChar = True
      Size = 1
    end
    object sdsFechamento_ItensFATURAMENTO_LIQUIDO: TStringField
      FieldName = 'FATURAMENTO_LIQUIDO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsFechamento_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsFechamentosdsFechamento_Itens
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    OnCalcFields = cdsFechamento_ItensCalcFields
    OnNewRecord = cdsFechamento_ItensNewRecord
    Left = 168
    Top = 160
    object cdsFechamento_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFechamento_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFechamento_ItensID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsFechamento_ItensVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
      DisplayFormat = '0.00'
    end
    object cdsFechamento_ItensVLR_SAIDA: TFloatField
      FieldName = 'VLR_SAIDA'
      DisplayFormat = '0.00'
    end
    object cdsFechamento_ItensVLR_SALDO: TFloatField
      FieldName = 'VLR_SALDO'
      DisplayFormat = '0.00'
    end
    object cdsFechamento_ItensVLR_INFORMADO: TFloatField
      FieldName = 'VLR_INFORMADO'
      ProviderFlags = []
      DisplayFormat = '0.00'
    end
    object cdsFechamento_ItensTIPO_COB_NOME: TStringField
      FieldName = 'TIPO_COB_NOME'
      ProviderFlags = []
      Size = 30
    end
    object cdsFechamento_ItensNOME_TIPOCOBRANCA: TStringField
      FieldName = 'NOME_TIPOCOBRANCA'
      Size = 30
    end
    object cdsFechamento_ItensVLR_CONFERENCIA: TFloatField
      FieldName = 'VLR_CONFERENCIA'
      DisplayFormat = '0.00'
    end
    object cdsFechamento_ItensVLR_DIF_INFORMADO: TFloatField
      FieldName = 'VLR_DIF_INFORMADO'
      DisplayFormat = '0.00'
    end
    object cdsFechamento_ItensVLR_DIF_CONFERIDO: TFloatField
      FieldName = 'VLR_DIF_CONFERIDO'
      DisplayFormat = '0.00'
    end
    object cdsFechamento_ItensVLR_NAO_FATURADO: TFloatField
      FieldName = 'VLR_NAO_FATURADO'
      DisplayFormat = '0.00'
    end
    object cdsFechamento_ItensVLR_RECEBIMENTO: TFloatField
      FieldName = 'VLR_RECEBIMENTO'
    end
    object cdsFechamento_ItensFATURAMENTO_BRUTO: TStringField
      FieldName = 'FATURAMENTO_BRUTO'
      FixedChar = True
      Size = 1
    end
    object cdsFechamento_ItensFATURAMENTO_LIQUIDO: TStringField
      FieldName = 'FATURAMENTO_LIQUIDO'
      FixedChar = True
      Size = 1
    end
  end
  object dsFechamento_Itens: TDataSource
    DataSet = cdsFechamento_Itens
    Left = 240
    Top = 160
  end
  object sdsFechamento_Consulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT F.*, C.NOME NOME_CONTA, FIL.NOME NOME_FILIAL, CFT.NOME TE' +
      'RMINAL'#13#10'FROM FECHAMENTO F'#13#10'INNER JOIN CONTAS C ON F.ID_CONTA = C' +
      '.ID'#13#10'INNER JOIN FILIAL FIL ON F.FILIAL = FIL.ID'#13#10'LEFT JOIN CUPOM' +
      'FISCAL_TERMINAL CFT ON (CFT.ID = F.TERMINAL_ID)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 424
    Top = 32
  end
  object dspFechamento_Consulta: TDataSetProvider
    DataSet = sdsFechamento_Consulta
    Left = 456
    Top = 32
  end
  object cdsFechamento_Consulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFechamento_Consulta'
    Left = 488
    Top = 32
    object cdsFechamento_ConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFechamento_ConsultaTIPO_FECHAMENTO: TStringField
      FieldName = 'TIPO_FECHAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsFechamento_ConsultaID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsFechamento_ConsultaNOME_CONTA: TStringField
      FieldName = 'NOME_CONTA'
      Size = 30
    end
    object cdsFechamento_ConsultaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsFechamento_ConsultaNOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object cdsFechamento_ConsultaDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsFechamento_ConsultaVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsFechamento_ConsultaVLR_SAIDA: TFloatField
      FieldName = 'VLR_SAIDA'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsFechamento_ConsultaVLR_SALDO: TFloatField
      FieldName = 'VLR_SALDO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsFechamento_ConsultaVLR_INICIAL: TFloatField
      FieldName = 'VLR_INICIAL'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsFechamento_ConsultaVLR_SUBSALDO: TFloatField
      FieldName = 'VLR_SUBSALDO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsFechamento_ConsultaVLR_INFORMADO: TFloatField
      FieldName = 'VLR_INFORMADO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsFechamento_ConsultaVLR_DIFERENCA: TFloatField
      FieldName = 'VLR_DIFERENCA'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsFechamento_ConsultaVLR_SANGRIA: TFloatField
      FieldName = 'VLR_SANGRIA'
      DisplayFormat = '0.00'
    end
    object cdsFechamento_ConsultaTERMINAL_ID: TSmallintField
      FieldName = 'TERMINAL_ID'
    end
    object cdsFechamento_ConsultaTERMINAL: TStringField
      FieldName = 'TERMINAL'
    end
    object cdsFechamento_ConsultaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsFechamento_Consulta: TDataSource
    DataSet = cdsFechamento_Consulta
    Left = 528
    Top = 32
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 424
    object qParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametrosID_CONTA_FECHAMENTO: TIntegerField
      FieldName = 'ID_CONTA_FECHAMENTO'
    end
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FILIAL'#13#10' WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 410
    Top = 270
    object sdsFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsFilialNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 482
    Top = 270
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFilial'
    Left = 546
    Top = 270
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
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 618
    Top = 270
  end
  object sdsFinanceiro: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT SUM(FIN.VLR_ENTRADA) VLR_ENTRADA , SUM(FIN.VLR_SAIDA) VLR' +
      '_SAIDA, FIN.ID_FORMA_PAGAMENTO, TC.NOME NOME_FORMA_PAGAMENTO, FI' +
      'N.ID_CONTA'#13#10'FROM FINANCEIRO FIN'#13#10'LEFT JOIN TIPOCOBRANCA TC ON FI' +
      'N.ID_FORMA_PAGAMENTO = TC.ID'#13#10'WHERE ID_MOVDUPLICATA = 0'#13#10'  AND (' +
      '(FIN.ID_CONTA = :ID_CONTA) OR (FIN.ID_CONTA = :ID_CONTA_PER))'#13#10' ' +
      ' AND FIN.FILIAL = :FILIAL'#13#10'  AND (FIN.DTMOVIMENTO = :DTMOVIMENTO' +
      ' or  FIN.ID_FECHAMENTO = :FECHAMENTO)'#13#10'  AND FIN.ID_TERMINAL = :' +
      'TERMINAL '#13#10'  AND (FIN.ID_FECHAMENTO = :FECHAMENTO'#13#10'  OR FIN.ID_F' +
      'ECHAMENTO IS NULL)'#13#10'GROUP BY FIN.ID_FORMA_PAGAMENTO, TC.NOME, FI' +
      'N.ID_CONTA'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID_CONTA'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ID_CONTA_PER'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DTMOVIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'FECHAMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'TERMINAL'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'FECHAMENTO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 410
    Top = 318
    object sdsFinanceiroVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object sdsFinanceiroVLR_SAIDA: TFloatField
      FieldName = 'VLR_SAIDA'
    end
    object sdsFinanceiroID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object sdsFinanceiroNOME_FORMA_PAGAMENTO: TStringField
      FieldName = 'NOME_FORMA_PAGAMENTO'
      Size = 30
    end
  end
  object dspFinanceiro: TDataSetProvider
    DataSet = sdsFinanceiro
    Left = 482
    Top = 318
  end
  object cdsFinanceiro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFinanceiro'
    Left = 546
    Top = 318
    object cdsFinanceiroVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object cdsFinanceiroVLR_SAIDA: TFloatField
      FieldName = 'VLR_SAIDA'
    end
    object cdsFinanceiroID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object cdsFinanceiroNOME_FORMA_PAGAMENTO: TStringField
      FieldName = 'NOME_FORMA_PAGAMENTO'
      Size = 30
    end
  end
  object qUltimoFechamento: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'T1'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT MAX(DATA) DATA'
      'FROM FECHAMENTO'
      'WHERE TERMINAL_ID = :T1')
    SQLConnection = dmDatabase.scoDados
    Left = 64
    Top = 424
    object qUltimoFechamentoDATA: TDateField
      FieldName = 'DATA'
    end
  end
  object sdsContas: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CONTAS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 402
    Top = 222
    object sdsContasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsContasNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dspContas: TDataSetProvider
    DataSet = sdsContas
    Left = 474
    Top = 222
  end
  object cdsContas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspContas'
    Left = 546
    Top = 222
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
    Left = 610
    Top = 222
  end
  object qDuplicidade: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID, DATA'
      'FROM FECHAMENTO'
      'WHERE DATA = :DATA')
    SQLConnection = dmDatabase.scoDados
    Left = 280
    Top = 424
    object qDuplicidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qDuplicidadeDATA: TDateField
      FieldName = 'DATA'
    end
  end
  object sdsFechamento_Sup: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT FR.*'#13#10'FROM FECHAMENTO_RET FR'#13#10'WHERE FR.ID = :ID AND ES = ' +
      #39'E'#39
    DataSource = dsFechamento_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 256
    object sdsFechamento_SupID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFechamento_SupITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFechamento_SupDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object sdsFechamento_SupVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sdsFechamento_SupES: TStringField
      FieldName = 'ES'
      FixedChar = True
      Size = 1
    end
    object sdsFechamento_SupDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object cdsFechamento_Sup: TClientDataSet
    Aggregates = <>
    DataSetField = cdsFechamentosdsFechamento_Sup
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    BeforePost = cdsFechamento_RetBeforePost
    Left = 168
    Top = 256
    object cdsFechamento_SupID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFechamento_SupITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFechamento_SupDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object cdsFechamento_SupVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '0.00'
    end
    object cdsFechamento_SupES: TStringField
      FieldName = 'ES'
      FixedChar = True
      Size = 1
    end
    object cdsFechamento_SupDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object dsFechamento_Sup: TDataSource
    DataSet = cdsFechamento_Sup
    Left = 240
    Top = 256
  end
  object qCaixaAberto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'T1'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'D1'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT ID, TIPO_FECHAMENTO'
      'FROM FECHAMENTO'
      'WHERE TERMINAL_ID = :T1'
      ' AND DATA = :D1'
      ' AND TIPO_FECHAMENTO = '#39'N'#39)
    SQLConnection = dmDatabase.scoDados
    Left = 112
    Top = 424
    object qCaixaAbertoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCaixaAbertoTIPO_FECHAMENTO: TStringField
      FieldName = 'TIPO_FECHAMENTO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsDuplicata: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT SUM(DUP.VLR_PARCELA) VLR_ENTRADA, TC.NOME NOME_FORMA_PAGA' +
      'MENTO, DUP.ID_TIPOCOBRANCA'#13#10'FROM DUPLICATA DUP'#13#10'LEFT JOIN TIPOCO' +
      'BRANCA TC ON (DUP.ID_TIPOCOBRANCA = TC.ID)'#13#10'WHERE DUP.FILIAL = :' +
      'FILIAL'#13#10'  AND DUP.DTEMISSAO = :DTMOVIMENTO'#13#10'  AND DUP.ID_TERMINA' +
      'L = :TERM1'#13#10'  AND DUP.ID_CONTA = :ID_CONTA'#13#10'  AND ((DUP.id_fecha' +
      'mento IS NULL) or (DUP.id_fechamento = :ID_FECHAMENTO))'#13#10'  AND D' +
      'UP.tipo_es = '#39'E'#39#13#10'  AND VLR_RESTANTE > 0'#13#10'GROUP BY TC.NOME, DUP.' +
      'ID_TIPOCOBRANCA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DTMOVIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'TERM1'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ID_CONTA'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ID_FECHAMENTO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 410
    Top = 414
    object sdsDuplicataVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object sdsDuplicataNOME_FORMA_PAGAMENTO: TStringField
      FieldName = 'NOME_FORMA_PAGAMENTO'
      Size = 30
    end
    object sdsDuplicataID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
  end
  object dspDuplicata: TDataSetProvider
    DataSet = sdsDuplicata
    Left = 482
    Top = 414
  end
  object cdsDuplicata: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDuplicata'
    Left = 546
    Top = 414
    object cdsDuplicataVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object cdsDuplicataNOME_FORMA_PAGAMENTO: TStringField
      FieldName = 'NOME_FORMA_PAGAMENTO'
      Size = 30
    end
    object cdsDuplicataID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
  end
  object sdsVale: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT SUM(V.VLR_TOTAL) VLR_VALE'#13#10'FROM VALE V'#13#10'WHERE FATURADO = ' +
      #39'N'#39' '#13#10' AND V.FILIAL = :FILIAL'#13#10' AND V.DTEMISSAO = :DTMOVIMENTO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DTMOVIMENTO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 410
    Top = 462
    object sdsValeVLR_VALE: TFloatField
      FieldName = 'VLR_VALE'
    end
  end
  object dspVale: TDataSetProvider
    DataSet = sdsVale
    Left = 482
    Top = 462
  end
  object cdsVale: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVale'
    Left = 546
    Top = 462
    object cdsValeVLR_VALE: TFloatField
      FieldName = 'VLR_VALE'
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
      'SELECT ID, NOME'
      'FROM TIPOCOBRANCA'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 336
    Top = 424
    object qTipoCobrancaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qTipoCobrancaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object sdsFechamento_San: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT FR.*'#13#10'FROM FECHAMENTO_RET FR'#13#10'WHERE FR.ID = :ID AND ES = ' +
      #39'S'#39
    DataSource = dsFechamento_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 304
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object FloatField1: TFloatField
      FieldName = 'VALOR'
    end
    object sdsFechamento_SanES: TStringField
      FieldName = 'ES'
      FixedChar = True
      Size = 1
    end
    object sdsFechamento_SanDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object cdsFechamento_San: TClientDataSet
    Aggregates = <>
    DataSetField = cdsFechamentosdsFechamento_San
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    BeforePost = cdsFechamento_RetBeforePost
    Left = 168
    Top = 304
    object cdsFechamento_SanID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFechamento_SanITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFechamento_SanDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object cdsFechamento_SanVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '0.00'
    end
    object cdsFechamento_SanES: TStringField
      FieldName = 'ES'
      FixedChar = True
      Size = 1
    end
    object cdsFechamento_SanDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object dsFechamento_San: TDataSource
    DataSet = cdsFechamento_San
    Left = 240
    Top = 304
  end
  object sdsFechamento_Ret: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT FR.*'#13#10'FROM FECHAMENTO_RET FR'#13#10'WHERE FR.ID = :ID'
    DataSource = dsFechamento_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 208
    object sdsFechamento_RetIntegerField5: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFechamento_RetIntegerField6: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFechamento_RetSQLTimeStampField3: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object sdsFechamento_RetFloatField3: TFloatField
      FieldName = 'VALOR'
    end
    object sdsFechamento_RetES: TStringField
      FieldName = 'ES'
      FixedChar = True
      Size = 1
    end
    object sdsFechamento_RetDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object cdsFechamento_Ret: TClientDataSet
    Aggregates = <>
    DataSetField = cdsFechamentosdsFechamento_Ret
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    BeforePost = cdsFechamento_RetBeforePost
    OnCalcFields = cdsFechamento_RetCalcFields
    OnNewRecord = cdsFechamento_RetNewRecord
    Left = 168
    Top = 208
    object cdsFechamento_RetID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFechamento_RetITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFechamento_RetDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object cdsFechamento_RetVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '0.00'
    end
    object cdsFechamento_RetES: TStringField
      FieldName = 'ES'
      FixedChar = True
      Size = 1
    end
    object cdsFechamento_RetclTipoES: TStringField
      FieldKind = fkCalculated
      FieldName = 'clTipoES'
      Calculated = True
    end
    object cdsFechamento_RetDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object dsFechamento_Ret: TDataSource
    DataSet = cdsFechamento_Ret
    Left = 240
    Top = 208
  end
  object mContagem: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_TIPOCOBRANCA'
        DataType = ftInteger
      end
      item
        Name = 'NOME_TIPOCOBRANCA'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'VALOR'
        DataType = ftCurrency
      end
      item
        Name = 'VALOR_CONFERENCIA'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'ID_TIPOCOBRANCA'
    Params = <>
    StoreDefs = True
    Left = 168
    Top = 360
    Data = {
      940000009619E0BD01000000180000000400000000000300000094000F49445F
      5449504F434F4252414E43410400010000000000114E4F4D455F5449504F434F
      4252414E43410100490000000100055749445448020002001E000556414C4F52
      080004000000010007535542545950450200490006004D6F6E6579001156414C
      4F525F434F4E464552454E43494108000400000000000000}
    object mContagemID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object mContagemNOME_TIPOCOBRANCA: TStringField
      FieldName = 'NOME_TIPOCOBRANCA'
      Size = 30
    end
    object mContagemVALOR: TCurrencyField
      FieldName = 'VALOR'
      DisplayFormat = '0.00'
    end
    object mContagemVALOR_CONFERENCIA: TFloatField
      FieldName = 'VALOR_CONFERENCIA'
    end
  end
  object dsmContagem: TDataSource
    DataSet = mContagem
    Left = 240
    Top = 360
  end
  object qVerifica_Inf: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT COUNT(1) CONTADOR_INF, ('
      'SELECT COUNT(1) CONTADOR_CONF'
      'FROM fechamento_itens IC'
      'WHERE IC.VLR_CONFERENCIA > 0'
      '  AND IC.ID = :ID)  CONTADOR_CONF'
      'FROM fechamento_itens I'
      'WHERE I.vlr_informado > 0'
      '  AND I.ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 648
    Top = 448
    object qVerifica_InfCONTADOR_INF: TIntegerField
      FieldName = 'CONTADOR_INF'
      Required = True
    end
    object qVerifica_InfCONTADOR_CONF: TIntegerField
      FieldName = 'CONTADOR_CONF'
    end
  end
  object sdsProduto_Vendido: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CI.ID_PRODUTO,  CI.REFERENCIA, CI.NOME_PRODUTO, SUM(CI.QT' +
      'D) QTD,'#13#10'SUM(CI.VLR_TOTAL) VLR_TOTAL'#13#10'FROM CUPOMFISCAL CF'#13#10'INNER' +
      ' JOIN CUPOMFISCAL_ITENS CI ON (CF.ID = CI.ID)'#13#10'WHERE CF.TERMINAL' +
      '_ID = :TERMINAL_ID'#13#10'  AND CF.CANCELADO = '#39'N'#39#13#10'  AND CF.ID_FECHAM' +
      'ENTO = :ID_FECHAMENTO'#13#10'  AND CI.CANCELADO = '#39'N'#39#13#10'GROUP BY CI.ID_' +
      'PRODUTO, CI.REFERENCIA, CI.NOME_PRODUTO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'TERMINAL_ID'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ID_FECHAMENTO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 816
    Top = 80
  end
  object dspProduto_Vendido: TDataSetProvider
    DataSet = sdsProduto_Vendido
    Left = 856
    Top = 80
  end
  object cdsProduto_Vendido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto_Vendido'
    Left = 896
    Top = 80
    object cdsProduto_VendidoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsProduto_VendidoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsProduto_VendidoNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsProduto_VendidoQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsProduto_VendidoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
  end
  object dsProduto_Vendido: TDataSource
    DataSet = cdsProduto_Vendido
    Left = 936
    Top = 80
  end
  object qCupomParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT CP.ID_CONTAPERDAS, CP.ALTURA_SALTO_LINHA, P.IMPRESSORA_FI' +
        'SCAL, IMP_VENDAS_FECHAMENTO'
      'FROM CUPOMFISCAL_PARAMETROS CP'
      'INNER JOIN PARAMETROS P ON (CP.ID = P.ID)')
    SQLConnection = dmDatabase.scoDados
    Left = 152
    Top = 456
    object qCupomParametrosID_CONTAPERDAS: TIntegerField
      FieldName = 'ID_CONTAPERDAS'
    end
    object qCupomParametrosALTURA_SALTO_LINHA: TSmallintField
      FieldName = 'ALTURA_SALTO_LINHA'
    end
    object qCupomParametrosIMPRESSORA_FISCAL: TStringField
      FieldName = 'IMPRESSORA_FISCAL'
      FixedChar = True
      Size = 1
    end
    object qCupomParametrosIMP_VENDAS_FECHAMENTO: TStringField
      FieldName = 'IMP_VENDAS_FECHAMENTO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsCupomTipoCobranca: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT TC.NOME, SUM(CFP.VLR_VENCIMENTO) TOTAL'#13#10'FROM CUPOMFISCAL_' +
      'PARC CFP'#13#10'INNER JOIN CUPOMFISCAL CF ON (CF.ID = CFP.ID)'#13#10'INNER J' +
      'OIN TIPOCOBRANCA TC ON (TC.ID = CFP.ID_TIPOCOBRANCA)'#13#10'WHERE CF.I' +
      'D_FECHAMENTO = :ID_FECHAMENTO'#13#10' AND CF.TERMINAL_ID = :TERMINAL_I' +
      'D'#13#10' AND CF.CANCELADO = '#39'N'#39#13#10'GROUP BY TC.NOME'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID_FECHAMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'TERMINAL_ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 816
    Top = 128
  end
  object dspCupomTipoCobranca: TDataSetProvider
    DataSet = sdsCupomTipoCobranca
    UpdateMode = upWhereKeyOnly
    Left = 856
    Top = 128
  end
  object cdsCupomTipoCobranca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCupomTipoCobranca'
    Left = 896
    Top = 128
    object cdsCupomTipoCobrancaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsCupomTipoCobrancaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object sdsCupomComandas: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT SUM(CF.QTD_PESSOA) QTD'#13#10'FROM CUPOMFISCAL CF'#13#10'WHERE CF.ID_' +
      'FECHAMENTO = :ID_FECHAMENTO'#13#10' AND TERMINAL_ID = :TERMINAL_ID '#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_FECHAMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TERMINAL_ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 816
    Top = 176
  end
  object dspCupomComandas: TDataSetProvider
    DataSet = sdsCupomComandas
    UpdateMode = upWhereKeyOnly
    Left = 856
    Top = 176
  end
  object cdsCupomComandas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCupomComandas'
    Left = 896
    Top = 176
    object cdsCupomComandasQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 0
    end
  end
  object sdsFinanceiroDup: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT SUM(FIN.VLR_ENTRADA) VLR_ENTRADA , SUM(FIN.VLR_SAIDA) VLR' +
      '_SAIDA, FIN.ID_FORMA_PAGAMENTO, TC.NOME NOME_FORMA_PAGAMENTO, FI' +
      'N.ID_CONTA'#13#10'FROM FINANCEIRO FIN'#13#10'LEFT JOIN TIPOCOBRANCA TC ON FI' +
      'N.ID_FORMA_PAGAMENTO = TC.ID'#13#10'WHERE ID_MOVDUPLICATA > 0'#13#10'  AND (' +
      '(FIN.ID_CONTA = :ID_CONTA) OR (FIN.ID_CONTA = :ID_CONTA_PER))'#13#10' ' +
      ' AND FIN.FILIAL = :FILIAL'#13#10'  AND FIN.DTMOVIMENTO = :DTMOVIMENTO'#13 +
      #10'  AND FIN.ID_TERMINAL = :TERMINAL '#13#10'  AND (FIN.ID_FECHAMENTO = ' +
      ':FECHAMENTO'#13#10'  OR FIN.ID_FECHAMENTO IS NULL)'#13#10'GROUP BY FIN.ID_FO' +
      'RMA_PAGAMENTO, TC.NOME, FIN.ID_CONTA'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_CONTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_CONTA_PER'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTMOVIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TERMINAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FECHAMENTO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 410
    Top = 366
  end
  object dspFinanceiroDup: TDataSetProvider
    DataSet = sdsFinanceiroDup
    Left = 482
    Top = 366
  end
  object cdsFinanceiroDup: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFinanceiroDup'
    Left = 546
    Top = 366
    object cdsFinanceiroDupVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object cdsFinanceiroDupVLR_SAIDA: TFloatField
      FieldName = 'VLR_SAIDA'
    end
    object cdsFinanceiroDupID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object cdsFinanceiroDupNOME_FORMA_PAGAMENTO: TStringField
      FieldName = 'NOME_FORMA_PAGAMENTO'
      Size = 30
    end
    object cdsFinanceiroDupID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
  end
  object sdsDetalhamento: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT FIN.VLR_ENTRADA VLR_ENTRADA , FIN.VLR_SAIDA VLR_SAIDA,'#13#10'F' +
      'IN.ID_FORMA_PAGAMENTO, TC.NOME NOME_FORMA_PAGAMENTO, FIN.ID_CONT' +
      'A, fin.dtmovimento,'#13#10'fin.id_terminal, fin.id_fechamento, fin.id,' +
      ' fin.historico_compl, fin.usuario,'#13#10'case'#13#10'  when fin.id_movdupli' +
      'cata > 0 then fin.vlr_entrada'#13#10'  else 0'#13#10'  end VLR_RECEBIMENTO'#13#10 +
      'FROM FINANCEIRO FIN'#13#10'LEFT JOIN TIPOCOBRANCA TC ON FIN.ID_FORMA_P' +
      'AGAMENTO = TC.ID'#13#10'WHERE ID_MOVDUPLICATA = 0'#13#10'  AND ((FIN.ID_CONT' +
      'A = :ID_CONTA) OR (FIN.ID_CONTA = :ID_CONTA_PER))'#13#10'  AND FIN.FIL' +
      'IAL = :FILIAL'#13#10'  AND FIN.ID_TERMINAL = :TERMINAL '#13#10'  AND (FIN.ID' +
      '_FECHAMENTO = :FECHAMENTO'#13#10'  OR FIN.ID_FECHAMENTO IS NULL)'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_CONTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_CONTA_PER'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TERMINAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FECHAMENTO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 816
    Top = 272
  end
  object dspDetalhamento: TDataSetProvider
    DataSet = sdsDetalhamento
    UpdateMode = upWhereKeyOnly
    Left = 856
    Top = 272
  end
  object cdsDetalhamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDetalhamento'
    Left = 896
    Top = 272
    object cdsDetalhamentoVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object cdsDetalhamentoVLR_SAIDA: TFloatField
      FieldName = 'VLR_SAIDA'
    end
    object cdsDetalhamentoID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object cdsDetalhamentoNOME_FORMA_PAGAMENTO: TStringField
      FieldName = 'NOME_FORMA_PAGAMENTO'
      Size = 30
    end
    object cdsDetalhamentoID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsDetalhamentoDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object cdsDetalhamentoID_TERMINAL: TIntegerField
      FieldName = 'ID_TERMINAL'
    end
    object cdsDetalhamentoID_FECHAMENTO: TIntegerField
      FieldName = 'ID_FECHAMENTO'
    end
    object cdsDetalhamentoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsDetalhamentoHISTORICO_COMPL: TStringField
      FieldName = 'HISTORICO_COMPL'
      Size = 100
    end
    object cdsDetalhamentoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsDetalhamentoVLR_RECEBIMENTO: TFloatField
      FieldName = 'VLR_RECEBIMENTO'
    end
  end
  object dsDetalhamento: TDataSource
    DataSet = cdsDetalhamento
    Left = 936
    Top = 272
  end
  object sdsDetalhamento_Dup: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT DUP.VLR_PARCELA VLR_ENTRADA, TC.NOME NOME_FORMA_PAGAMENTO' +
      ', DUP.ID_TIPOCOBRANCA,'#13#10'DUP.NUMDUPLICATA, DUP.DTVENCIMENTO, DUP.' +
      'ID_PESSOA, CLI.NOME NOME_CLIENTE, DUP.USUARIO'#13#10'FROM DUPLICATA DU' +
      'P'#13#10'LEFT JOIN TIPOCOBRANCA TC ON (DUP.ID_TIPOCOBRANCA = TC.ID)'#13#10'L' +
      'EFT JOIN PESSOA CLI ON (DUP.ID_PESSOA = CLI.CODIGO)'#13#10'WHERE DUP.F' +
      'ILIAL = :FILIAL'#13#10'  AND DUP.DTEMISSAO = :DTMOVIMENTO'#13#10'  AND DUP.I' +
      'D_TERMINAL = :TERM1'#13#10'  AND DUP.VLR_RESTANTE > 0'#13#10'  AND DUP.ID_CO' +
      'NTA = :ID_CONTA'#13#10'  AND DUP.TIPO_ES = '#39'E'#39#13#10'  AND ((DUP.ID_FECHAME' +
      'NTO IS NULL) or (DUP.ID_FECHAMENTO = :ID_FECHAMENTO))'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTMOVIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TERM1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_CONTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_FECHAMENTO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 816
    Top = 336
  end
  object dspDetalhamento_Dup: TDataSetProvider
    DataSet = sdsDetalhamento_Dup
    UpdateMode = upWhereKeyOnly
    Left = 856
    Top = 336
  end
  object cdsDetalhamento_Dup: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDetalhamento_Dup'
    Left = 896
    Top = 336
    object cdsDetalhamento_DupVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object cdsDetalhamento_DupNOME_FORMA_PAGAMENTO: TStringField
      FieldName = 'NOME_FORMA_PAGAMENTO'
      Size = 30
    end
    object cdsDetalhamento_DupID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsDetalhamento_DupNUMDUPLICATA: TStringField
      FieldName = 'NUMDUPLICATA'
    end
    object cdsDetalhamento_DupDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object cdsDetalhamento_DupID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsDetalhamento_DupNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsDetalhamento_DupUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsDetalhamento_Dup: TDataSource
    DataSet = cdsDetalhamento_Dup
    Left = 936
    Top = 336
  end
  object sdsTerminal: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM CUPOMFISCAL_TERMINAL ORDER BY NOME'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 424
    Top = 80
  end
  object dspTerminal: TDataSetProvider
    DataSet = sdsTerminal
    Left = 456
    Top = 80
  end
  object cdsTerminal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTerminal'
    Left = 488
    Top = 80
    object cdsTerminalID: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object cdsTerminalNOME: TStringField
      FieldName = 'NOME'
    end
  end
  object dsTerminal: TDataSource
    DataSet = cdsTerminal
    Left = 528
    Top = 80
  end
end
