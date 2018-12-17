object DMMovimento: TDMMovimento
  OldCreateOrder = False
  Left = 504
  Top = 207
  Height = 478
  Width = 454
  object sdsMovimento: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MOVIMENTO'#13#10'WHERE ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 16
    object sdsMovimentoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMovimentoITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object sdsMovimentoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object sdsMovimentoSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object sdsMovimentoNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object sdsMovimentoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsMovimentoID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object sdsMovimentoID_NOTAFISCAL: TIntegerField
      FieldName = 'ID_NOTAFISCAL'
    end
    object sdsMovimentoID_NOTASERVICO: TIntegerField
      FieldName = 'ID_NOTASERVICO'
    end
    object sdsMovimentoID_CUPOMFISCAL: TIntegerField
      FieldName = 'ID_CUPOMFISCAL'
    end
    object sdsMovimentoID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object sdsMovimentoID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object sdsMovimentoVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsMovimentoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsMovimentoVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object sdsMovimentoVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object sdsMovimentoVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object sdsMovimentoVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
    end
    object sdsMovimentoVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
    end
    object sdsMovimentoVLR_ISSQN: TFloatField
      FieldName = 'VLR_ISSQN'
    end
    object sdsMovimentoVLR_IR: TFloatField
      FieldName = 'VLR_IR'
    end
    object sdsMovimentoVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object sdsMovimentoVLR_INSS: TFloatField
      FieldName = 'VLR_INSS'
    end
    object sdsMovimentoVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
    end
    object sdsMovimentoVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
    end
    object sdsMovimentoVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object sdsMovimentoVLR_CSLL: TFloatField
      FieldName = 'VLR_CSLL'
    end
    object sdsMovimentoVLR_IMPORTACAO: TFloatField
      FieldName = 'VLR_IMPORTACAO'
    end
    object sdsMovimentoVLR_SEGURO: TFloatField
      FieldName = 'VLR_SEGURO'
    end
    object sdsMovimentoVLR_OUTRASDESPESAS: TFloatField
      FieldName = 'VLR_OUTRASDESPESAS'
    end
    object sdsMovimentoBASE_INSS: TFloatField
      FieldName = 'BASE_INSS'
    end
    object sdsMovimentoBASE_ISSQN: TFloatField
      FieldName = 'BASE_ISSQN'
    end
    object sdsMovimentoBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object sdsMovimentoBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
    end
    object sdsMovimentoBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
    end
    object sdsMovimentoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsMovimentoCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object sdsMovimentoDENEGADA: TStringField
      FieldName = 'DENEGADA'
      FixedChar = True
      Size = 1
    end
    object sdsMovimentoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsMovimentoDTENTRADASAIDA: TDateField
      FieldName = 'DTENTRADASAIDA'
    end
    object sdsMovimentoID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object sdsMovimentoID_CLIENTETRIANG: TIntegerField
      FieldName = 'ID_CLIENTETRIANG'
    end
    object sdsMovimentoVLR_ADUANEIRA: TFloatField
      FieldName = 'VLR_ADUANEIRA'
    end
    object sdsMovimentoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsMovimentoVLR_ISSQN_RETIDO: TFloatField
      FieldName = 'VLR_ISSQN_RETIDO'
    end
    object sdsMovimentoVLR_CSRF: TFloatField
      FieldName = 'VLR_CSRF'
    end
    object sdsMovimentoTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object sdsMovimentoQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsMovimentoPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object sdsMovimentoPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object sdsMovimentoPERC_ICMSSIMPLES: TFloatField
      FieldName = 'PERC_ICMSSIMPLES'
    end
    object sdsMovimentoPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object sdsMovimentoPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object sdsMovimentoMOTIVO_CD: TStringField
      FieldName = 'MOTIVO_CD'
      Size = 200
    end
    object sdsMovimentoTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 3
    end
    object sdsMovimentoPERC_ISSQN: TFloatField
      FieldName = 'PERC_ISSQN'
    end
    object sdsMovimentoTP_SAIDA: TStringField
      FieldName = 'TP_SAIDA'
      FixedChar = True
      Size = 1
    end
    object sdsMovimentoTP_ENTRADA: TStringField
      FieldName = 'TP_ENTRADA'
      FixedChar = True
      Size = 1
    end
    object sdsMovimentoTP_SERVICO: TStringField
      FieldName = 'TP_SERVICO'
      FixedChar = True
      Size = 1
    end
    object sdsMovimentoTP_CUPOMFISCAL: TStringField
      FieldName = 'TP_CUPOMFISCAL'
      FixedChar = True
      Size = 1
    end
    object sdsMovimentoNUM_RPS: TIntegerField
      FieldName = 'NUM_RPS'
    end
    object sdsMovimentoVLR_LIQUIDO_NFSE: TFloatField
      FieldName = 'VLR_LIQUIDO_NFSE'
    end
    object sdsMovimentoVLR_CUPOMFISCAL: TFloatField
      FieldName = 'VLR_CUPOMFISCAL'
    end
    object sdsMovimentoNOME_PRODUTO_SERV: TStringField
      FieldName = 'NOME_PRODUTO_SERV'
      Size = 100
    end
    object sdsMovimentoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsMovimentoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsMovimentoID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object sdsMovimentoTIPO_CONDICAO: TStringField
      FieldName = 'TIPO_CONDICAO'
      FixedChar = True
      Size = 1
    end
    object sdsMovimentoID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsMovimentoID_RECIBO: TIntegerField
      FieldName = 'ID_RECIBO'
    end
    object sdsMovimentoID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsMovimentoPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsMovimentoID_FECHAMENTO: TIntegerField
      FieldName = 'ID_FECHAMENTO'
    end
    object sdsMovimentoVLR_ICMS_UF_REMET: TFloatField
      FieldName = 'VLR_ICMS_UF_REMET'
    end
    object sdsMovimentoVLR_ICMS_UF_DEST: TFloatField
      FieldName = 'VLR_ICMS_UF_DEST'
    end
    object sdsMovimentoTERMINAL_ID: TIntegerField
      FieldName = 'TERMINAL_ID'
    end
    object sdsMovimentoPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
    object sdsMovimentoRETEM_PISCOFINS: TStringField
      FieldName = 'RETEM_PISCOFINS'
      FixedChar = True
      Size = 1
    end
  end
  object dspMovimento: TDataSetProvider
    DataSet = sdsMovimento
    UpdateMode = upWhereKeyOnly
    Left = 144
    Top = 16
  end
  object cdsMovimento: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspMovimento'
    OnReconcileError = cdsMovimentoReconcileError
    Left = 200
    Top = 16
    object cdsMovimentoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMovimentoITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object cdsMovimentoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsMovimentoSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsMovimentoNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object cdsMovimentoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsMovimentoID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object cdsMovimentoID_NOTAFISCAL: TIntegerField
      FieldName = 'ID_NOTAFISCAL'
    end
    object cdsMovimentoID_NOTASERVICO: TIntegerField
      FieldName = 'ID_NOTASERVICO'
    end
    object cdsMovimentoID_CUPOMFISCAL: TIntegerField
      FieldName = 'ID_CUPOMFISCAL'
    end
    object cdsMovimentoID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsMovimentoID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsMovimentoID_CLIENTETRIANG: TIntegerField
      FieldName = 'ID_CLIENTETRIANG'
    end
    object cdsMovimentoID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsMovimentoVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsMovimentoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsMovimentoVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object cdsMovimentoVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object cdsMovimentoVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object cdsMovimentoVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
    end
    object cdsMovimentoVLR_ICMSSIMPLES: TFloatField
      FieldName = 'VLR_ICMSSIMPLES'
    end
    object cdsMovimentoVLR_ISSQN: TFloatField
      FieldName = 'VLR_ISSQN'
    end
    object cdsMovimentoVLR_IR: TFloatField
      FieldName = 'VLR_IR'
    end
    object cdsMovimentoVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object cdsMovimentoVLR_INSS: TFloatField
      FieldName = 'VLR_INSS'
    end
    object cdsMovimentoVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
    end
    object cdsMovimentoVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
    end
    object cdsMovimentoVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object cdsMovimentoVLR_CSLL: TFloatField
      FieldName = 'VLR_CSLL'
    end
    object cdsMovimentoVLR_IMPORTACAO: TFloatField
      FieldName = 'VLR_IMPORTACAO'
    end
    object cdsMovimentoVLR_SEGURO: TFloatField
      FieldName = 'VLR_SEGURO'
    end
    object cdsMovimentoVLR_OUTRASDESPESAS: TFloatField
      FieldName = 'VLR_OUTRASDESPESAS'
    end
    object cdsMovimentoVLR_ADUANEIRA: TFloatField
      FieldName = 'VLR_ADUANEIRA'
    end
    object cdsMovimentoBASE_INSS: TFloatField
      FieldName = 'BASE_INSS'
    end
    object cdsMovimentoBASE_ISSQN: TFloatField
      FieldName = 'BASE_ISSQN'
    end
    object cdsMovimentoBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object cdsMovimentoBASE_ICMSSIMPLES: TFloatField
      FieldName = 'BASE_ICMSSIMPLES'
    end
    object cdsMovimentoBASE_ICMSSUBST: TFloatField
      FieldName = 'BASE_ICMSSUBST'
    end
    object cdsMovimentoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsMovimentoCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsMovimentoDENEGADA: TStringField
      FieldName = 'DENEGADA'
      FixedChar = True
      Size = 1
    end
    object cdsMovimentoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsMovimentoDTENTRADASAIDA: TDateField
      FieldName = 'DTENTRADASAIDA'
    end
    object cdsMovimentoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsMovimentoVLR_ISSQN_RETIDO: TFloatField
      FieldName = 'VLR_ISSQN_RETIDO'
    end
    object cdsMovimentoVLR_CSRF: TFloatField
      FieldName = 'VLR_CSRF'
    end
    object cdsMovimentoTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object cdsMovimentoQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsMovimentoPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsMovimentoPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsMovimentoPERC_ICMSSIMPLES: TFloatField
      FieldName = 'PERC_ICMSSIMPLES'
    end
    object cdsMovimentoPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object cdsMovimentoPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object cdsMovimentoMOTIVO_CD: TStringField
      FieldName = 'MOTIVO_CD'
      Size = 200
    end
    object cdsMovimentoTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 3
    end
    object cdsMovimentoPERC_ISSQN: TFloatField
      FieldName = 'PERC_ISSQN'
    end
    object cdsMovimentoTP_SAIDA: TStringField
      FieldName = 'TP_SAIDA'
      FixedChar = True
      Size = 1
    end
    object cdsMovimentoTP_ENTRADA: TStringField
      FieldName = 'TP_ENTRADA'
      FixedChar = True
      Size = 1
    end
    object cdsMovimentoTP_SERVICO: TStringField
      FieldName = 'TP_SERVICO'
      FixedChar = True
      Size = 1
    end
    object cdsMovimentoTP_CUPOMFISCAL: TStringField
      FieldName = 'TP_CUPOMFISCAL'
      FixedChar = True
      Size = 1
    end
    object cdsMovimentoNUM_RPS: TIntegerField
      FieldName = 'NUM_RPS'
    end
    object cdsMovimentoVLR_LIQUIDO_NFSE: TFloatField
      FieldName = 'VLR_LIQUIDO_NFSE'
    end
    object cdsMovimentoVLR_CUPOMFISCAL: TFloatField
      FieldName = 'VLR_CUPOMFISCAL'
    end
    object cdsMovimentoNOME_PRODUTO_SERV: TStringField
      FieldName = 'NOME_PRODUTO_SERV'
      Size = 100
    end
    object cdsMovimentoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsMovimentoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsMovimentoID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsMovimentoTIPO_CONDICAO: TStringField
      FieldName = 'TIPO_CONDICAO'
      FixedChar = True
      Size = 1
    end
    object cdsMovimentoID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsMovimentoID_RECIBO: TIntegerField
      FieldName = 'ID_RECIBO'
    end
    object cdsMovimentoID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsMovimentoPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsMovimentoID_FECHAMENTO: TIntegerField
      FieldName = 'ID_FECHAMENTO'
    end
    object cdsMovimentoVLR_ICMS_UF_REMET: TFloatField
      FieldName = 'VLR_ICMS_UF_REMET'
    end
    object cdsMovimentoVLR_ICMS_UF_DEST: TFloatField
      FieldName = 'VLR_ICMS_UF_DEST'
    end
    object cdsMovimentoTERMINAL_ID: TIntegerField
      FieldName = 'TERMINAL_ID'
    end
    object cdsMovimentoPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
    object cdsMovimentoRETEM_PISCOFINS: TStringField
      FieldName = 'RETEM_PISCOFINS'
      FixedChar = True
      Size = 1
    end
  end
  object dsMovimento: TDataSource
    DataSet = cdsMovimento
    Left = 256
    Top = 16
  end
  object qCondPgto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID, TIPO'
      'FROM CONDPGTO'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 192
    Top = 144
    object qCondPgtoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCondPgtoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsVendaCFiscal: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT MOV.ID_PRODUTO, MOV.REFERENCIA, MOV.NOME_PRODUTO_SERV, MO' +
      'V.TIPO_MOV, MOV.TIPO_REG, MOV.TIPO_ES,'#13#10'SUM(MOV.QTD) QTD, '#13#10'SUM ' +
      '(MOV.VLR_DUPLICATA) VLR_DUPLICATA'#13#10'FROM MOVIMENTO MOV'#13#10'INNER JOI' +
      'N PESSOA CLI ON (MOV.ID_PESSOA = CLI.CODIGO)'#13#10'WHERE MOV.CANCELAD' +
      'O = '#39'N'#39' AND MOV.DENEGADA = '#39'N'#39' AND MOV.TIPO_ES = '#39'S'#39#13#10'AND ((MOV.' +
      'VLR_DUPLICATA > 0) OR (MOV.VLR_LIQUIDO_NFSE > 0))'#13#10'AND MOV.FILIA' +
      'L = 1 AND MOV.DTEMISSAO >= :D1'#13#10'AND MOV.DTEMISSAO <= :D2'#13#10'GROUP ' +
      'BY MOV.ID_PRODUTO, MOV.REFERENCIA, MOV.NOME_PRODUTO_SERV, MOV.TI' +
      'PO_MOV, MOV.TIPO_REG, MOV.TIPO_ES'#13#10'ORDER BY VLR_DUPLICATA DESC'
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
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 104
    Top = 224
  end
  object dspVendaCFiscal: TDataSetProvider
    DataSet = sdsVendaCFiscal
    Left = 152
    Top = 224
  end
  object cdsVendaCFiscal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVendaCFiscal'
    OnReconcileError = cdsMovimentoReconcileError
    Left = 208
    Top = 224
    object cdsVendaCFiscalID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsVendaCFiscalREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsVendaCFiscalNOME_PRODUTO_SERV: TStringField
      FieldName = 'NOME_PRODUTO_SERV'
      Size = 100
    end
    object cdsVendaCFiscalTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 3
    end
    object cdsVendaCFiscalTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsVendaCFiscalTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object cdsVendaCFiscalQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsVendaCFiscalVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
  end
  object dsVendaCFiscal: TDataSource
    DataSet = cdsVendaCFiscal
    Left = 264
    Top = 224
  end
  object qCupomParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT CP.ID_CONTAPERDAS, CP.ALTURA_SALTO_LINHA, P.IMPRESSORA_FI' +
        'SCAL'
      'FROM CUPOMFISCAL_PARAMETROS CP'
      'INNER JOIN PARAMETROS P ON (CP.ID = P.ID)')
    SQLConnection = dmDatabase.scoDados
    Left = 104
    Top = 296
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
  end
end
