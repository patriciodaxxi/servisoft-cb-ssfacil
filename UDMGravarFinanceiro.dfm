object DMGravarFinanceiro: TDMGravarFinanceiro
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 325
  Top = 129
  Height = 542
  Width = 774
  object sdsFinanceiro: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FINANCEIRO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 112
    object sdsFinanceiroID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object sdsFinanceiroID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object sdsFinanceiroID_NOTA_SERVICO: TIntegerField
      FieldName = 'ID_NOTA_SERVICO'
    end
    object sdsFinanceiroID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
    end
    object sdsFinanceiroID_CHEQUE: TIntegerField
      FieldName = 'ID_CHEQUE'
    end
    object sdsFinanceiroID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object sdsFinanceiroID_TERMINAL: TIntegerField
      FieldName = 'ID_TERMINAL'
    end
    object sdsFinanceiroID_TRANSFERENCIA: TIntegerField
      FieldName = 'ID_TRANSFERENCIA'
    end
    object sdsFinanceiroID_MOVATELIER: TIntegerField
      FieldName = 'ID_MOVATELIER'
    end
    object sdsFinanceiroID_FECHAMENTO: TIntegerField
      FieldName = 'ID_FECHAMENTO'
    end
    object sdsFinanceiroQUITADO_AUTOMATICO: TStringField
      FieldName = 'QUITADO_AUTOMATICO'
      FixedChar = True
      Size = 1
    end
  end
  object dspFinanceiro: TDataSetProvider
    DataSet = sdsFinanceiro
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspFinanceiroUpdateError
    Left = 88
    Top = 112
  end
  object cdsFinanceiro: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspFinanceiro'
    Left = 128
    Top = 112
    object cdsFinanceiroID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    end
    object cdsFinanceiroVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object cdsFinanceiroID_EXTCOMISSAO: TIntegerField
      FieldName = 'ID_EXTCOMISSAO'
    end
    object cdsFinanceiroID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object cdsFinanceiroID_NOTA_SERVICO: TIntegerField
      FieldName = 'ID_NOTA_SERVICO'
    end
    object cdsFinanceiroID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
    end
    object cdsFinanceiroID_CHEQUE: TIntegerField
      FieldName = 'ID_CHEQUE'
    end
    object cdsFinanceiroID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsFinanceiroID_TERMINAL: TIntegerField
      FieldName = 'ID_TERMINAL'
    end
    object cdsFinanceiroID_TRANSFERENCIA: TIntegerField
      FieldName = 'ID_TRANSFERENCIA'
    end
    object cdsFinanceiroID_MOVATELIER: TIntegerField
      FieldName = 'ID_MOVATELIER'
    end
    object cdsFinanceiroID_FECHAMENTO: TIntegerField
      FieldName = 'ID_FECHAMENTO'
    end
    object cdsFinanceiroQUITADO_AUTOMATICO: TStringField
      FieldName = 'QUITADO_AUTOMATICO'
      FixedChar = True
      Size = 1
    end
  end
  object dsFinanceiro: TDataSource
    DataSet = cdsFinanceiro
    Left = 168
    Top = 112
  end
  object qPessoa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT CODIGO, NOME, CNPJ_CPF'
      'FROM PESSOA'
      'WHERE CODIGO = :CODIGO')
    SQLConnection = dmDatabase.scoDados
    Left = 384
    Top = 232
    object qPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qPessoaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
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
    Left = 320
    Top = 316
    object qParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametrosID_CONTA_ORC_COMISSAO: TIntegerField
      FieldName = 'ID_CONTA_ORC_COMISSAO'
    end
    object qParametrosID_CONTA_ORC_SERVICO: TIntegerField
      FieldName = 'ID_CONTA_ORC_SERVICO'
    end
  end
end
