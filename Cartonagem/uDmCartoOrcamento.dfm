object dmCartoOrcamento: TdmCartoOrcamento
  OldCreateOrder = False
  Left = 451
  Top = 140
  Height = 690
  Width = 787
  object sdsCartoOrcamento: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT CO.*, CO.ID ORCAMENTO_ID'#13#10'FROM CARTO_ORCAMENTO CO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 40
    Top = 16
    object sdsCartoOrcamentoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCartoOrcamentoFILIAL_ID: TIntegerField
      FieldName = 'FILIAL_ID'
    end
    object sdsCartoOrcamentoCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
    end
    object sdsCartoOrcamentoREPRESENTANTE_ID: TIntegerField
      FieldName = 'REPRESENTANTE_ID'
    end
    object sdsCartoOrcamentoDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsCartoOrcamentoCONDPGTO_ID: TIntegerField
      FieldName = 'CONDPGTO_ID'
    end
    object sdsCartoOrcamentoPRODUTO_ID: TIntegerField
      FieldName = 'PRODUTO_ID'
    end
    object sdsCartoOrcamentoVALIDADE: TIntegerField
      FieldName = 'VALIDADE'
    end
    object sdsCartoOrcamentoQTD1: TIntegerField
      FieldName = 'QTD1'
    end
    object sdsCartoOrcamentoQTD2: TIntegerField
      FieldName = 'QTD2'
    end
    object sdsCartoOrcamentoQTD3: TIntegerField
      FieldName = 'QTD3'
    end
    object sdsCartoOrcamentoPRECO1: TFloatField
      FieldName = 'PRECO1'
    end
    object sdsCartoOrcamentoPRECO2: TFloatField
      FieldName = 'PRECO2'
    end
    object sdsCartoOrcamentoPRECO3: TFloatField
      FieldName = 'PRECO3'
    end
    object sdsCartoOrcamentoPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object sdsCartoOrcamentoFRETE_TIPO: TStringField
      FieldName = 'FRETE_TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsCartoOrcamentoCLIENTE_NOME: TStringField
      FieldName = 'CLIENTE_NOME'
      Size = 50
    end
    object sdsCartoOrcamentoACABADO_NOME: TStringField
      FieldName = 'ACABADO_NOME'
      Size = 50
    end
    object sdsCartoOrcamentoFICHA_TECNICA_ID: TIntegerField
      FieldName = 'FICHA_TECNICA_ID'
    end
    object sdsCartoOrcamentoFACA_ID: TIntegerField
      FieldName = 'FACA_ID'
    end
    object sdsCartoOrcamentoORCAMENTO_ID: TIntegerField
      FieldName = 'ORCAMENTO_ID'
      ProviderFlags = []
      Required = True
    end
  end
  object dspCartoOrcamento: TDataSetProvider
    DataSet = sdsCartoOrcamento
    UpdateMode = upWhereKeyOnly
    Left = 96
    Top = 16
  end
  object cdsCartoOrcamento: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCartoOrcamento'
    Left = 152
    Top = 16
    object cdsCartoOrcamentoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCartoOrcamentoFILIAL_ID: TIntegerField
      FieldName = 'FILIAL_ID'
    end
    object cdsCartoOrcamentoCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
    end
    object cdsCartoOrcamentoREPRESENTANTE_ID: TIntegerField
      FieldName = 'REPRESENTANTE_ID'
    end
    object cdsCartoOrcamentoDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsCartoOrcamentoCONDPGTO_ID: TIntegerField
      FieldName = 'CONDPGTO_ID'
    end
    object cdsCartoOrcamentoPRODUTO_ID: TIntegerField
      FieldName = 'PRODUTO_ID'
    end
    object cdsCartoOrcamentoVALIDADE: TIntegerField
      FieldName = 'VALIDADE'
    end
    object cdsCartoOrcamentoQTD1: TIntegerField
      FieldName = 'QTD1'
    end
    object cdsCartoOrcamentoQTD2: TIntegerField
      FieldName = 'QTD2'
    end
    object cdsCartoOrcamentoQTD3: TIntegerField
      FieldName = 'QTD3'
    end
    object cdsCartoOrcamentoPRECO1: TFloatField
      FieldName = 'PRECO1'
      DisplayFormat = '0.00'
    end
    object cdsCartoOrcamentoPRECO2: TFloatField
      FieldName = 'PRECO2'
      DisplayFormat = '0.00'
    end
    object cdsCartoOrcamentoPRECO3: TFloatField
      FieldName = 'PRECO3'
      DisplayFormat = '0.00'
    end
    object cdsCartoOrcamentoPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
      DisplayFormat = '0.00'
    end
    object cdsCartoOrcamentoFRETE_TIPO: TStringField
      FieldName = 'FRETE_TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsCartoOrcamentosdsCartoOrcamentoItem: TDataSetField
      FieldName = 'sdsCartoOrcamentoItem'
    end
    object cdsCartoOrcamentoCLIENTE_NOME: TStringField
      FieldName = 'CLIENTE_NOME'
      Size = 50
    end
    object cdsCartoOrcamentoACABADO_NOME: TStringField
      FieldName = 'ACABADO_NOME'
      Size = 50
    end
    object cdsCartoOrcamentoFICHA_TECNICA_ID: TIntegerField
      FieldName = 'FICHA_TECNICA_ID'
    end
    object cdsCartoOrcamentoFACA_ID: TIntegerField
      FieldName = 'FACA_ID'
    end
    object cdsCartoOrcamentoORCAMENTO_ID: TIntegerField
      FieldName = 'ORCAMENTO_ID'
      ProviderFlags = []
      Required = True
    end
    object cdsCartoOrcamentosdsCartoOrcamentoProc: TDataSetField
      FieldName = 'sdsCartoOrcamentoProc'
    end
  end
  object dsCartoOrcamento: TDataSource
    DataSet = cdsCartoOrcamento
    Left = 208
    Top = 16
  end
  object dsmCartoOrcamento: TDataSource
    DataSet = sdsCartoOrcamento
    Left = 256
    Top = 16
  end
  object sdsFaca: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT CF.*, CF.ID FACA_ID'#13#10'FROM CARTO_FACA CF'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 40
    Top = 208
    object sdsFacaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFacaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsFacaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object sdsFacaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsFacaFD_COMPR: TFMTBCDField
      FieldName = 'FD_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsFacaFD_LARGURA: TFMTBCDField
      FieldName = 'FD_LARGURA'
      Precision = 15
      Size = 2
    end
    object sdsFacaFD_ALTURA: TFMTBCDField
      FieldName = 'FD_ALTURA'
      Precision = 15
      Size = 2
    end
    object sdsFacaFD_ABA_INT_CAB: TFMTBCDField
      FieldName = 'FD_ABA_INT_CAB'
      Precision = 15
      Size = 2
    end
    object sdsFacaFD_ABA_INT_LAT: TFMTBCDField
      FieldName = 'FD_ABA_INT_LAT'
      Precision = 15
      Size = 2
    end
    object sdsFacaTP_ABA_EXT_CAB: TFMTBCDField
      FieldName = 'TP_ABA_EXT_CAB'
      Precision = 15
      Size = 2
    end
    object sdsFacaTP_ABA_INT_CAB: TFMTBCDField
      FieldName = 'TP_ABA_INT_CAB'
      Precision = 15
      Size = 2
    end
    object sdsFacaTP_ABA_EXT_LAT: TFMTBCDField
      FieldName = 'TP_ABA_EXT_LAT'
      Precision = 15
      Size = 2
    end
    object sdsFacaTP_ABA_INT_LAT: TFMTBCDField
      FieldName = 'TP_ABA_INT_LAT'
      Precision = 15
      Size = 2
    end
    object sdsFacaSP_COMPR: TFMTBCDField
      FieldName = 'SP_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsFacaSP_LARGURA: TFMTBCDField
      FieldName = 'SP_LARGURA'
      Precision = 15
      Size = 2
    end
    object sdsFacaSP_ALTURA: TFMTBCDField
      FieldName = 'SP_ALTURA'
      Precision = 15
      Size = 2
    end
    object sdsFacaTP_LARGURA: TFMTBCDField
      FieldName = 'TP_LARGURA'
      Precision = 15
      Size = 2
    end
    object sdsFacaTP_COMPR: TFMTBCDField
      FieldName = 'TP_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsFacaTP_ALTURA: TFMTBCDField
      FieldName = 'TP_ALTURA'
      Precision = 15
      Size = 2
    end
    object sdsFacaFD_DIMENSAO1: TFMTBCDField
      FieldName = 'FD_DIMENSAO1'
      Precision = 15
      Size = 2
    end
    object sdsFacaFD_DIMENSAO2: TFMTBCDField
      FieldName = 'FD_DIMENSAO2'
      Precision = 15
      Size = 2
    end
    object sdsFacaTP_DIMENSAO1: TFMTBCDField
      FieldName = 'TP_DIMENSAO1'
      Precision = 15
      Size = 2
    end
    object sdsFacaTP_DIMENSAO2: TFMTBCDField
      FieldName = 'TP_DIMENSAO2'
      Precision = 15
      Size = 2
    end
    object sdsFacaTP_TIPO_MAT: TStringField
      FieldName = 'TP_TIPO_MAT'
      Size = 2
    end
    object sdsFacaSP_ABA_INT_CAB: TFMTBCDField
      FieldName = 'SP_ABA_INT_CAB'
      Precision = 15
      Size = 2
    end
    object sdsFacaSP_ABA_INT_LAT: TFMTBCDField
      FieldName = 'SP_ABA_INT_LAT'
      Precision = 15
      Size = 2
    end
    object sdsFacaFD_TIPO_MAT: TStringField
      FieldName = 'FD_TIPO_MAT'
      Size = 2
    end
    object sdsFacaSP_TIPO_MAT: TStringField
      FieldName = 'SP_TIPO_MAT'
      Size = 2
    end
    object sdsFacaSP_DIMENSAO1: TFMTBCDField
      FieldName = 'SP_DIMENSAO1'
      Precision = 15
      Size = 2
    end
    object sdsFacaSP_DIMENSAO2: TFMTBCDField
      FieldName = 'SP_DIMENSAO2'
      Precision = 15
      Size = 2
    end
    object sdsFacaFACA_FD: TIntegerField
      FieldName = 'FACA_FD'
    end
    object sdsFacaFACA_TP: TIntegerField
      FieldName = 'FACA_TP'
    end
    object sdsFacaFACA_SP: TIntegerField
      FieldName = 'FACA_SP'
    end
    object sdsFacaFACA_ID: TIntegerField
      FieldName = 'FACA_ID'
    end
    object sdsFacaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsFacaFD_COPIAS_C: TSmallintField
      FieldName = 'FD_COPIAS_C'
    end
    object sdsFacaTP_COPIAS_C: TSmallintField
      FieldName = 'TP_COPIAS_C'
    end
    object sdsFacaSP_COPIAS_C: TSmallintField
      FieldName = 'SP_COPIAS_C'
    end
    object sdsFacaFD_INT_L: TFMTBCDField
      FieldName = 'FD_INT_L'
      Precision = 15
      Size = 1
    end
    object sdsFacaFD_INT_C: TFMTBCDField
      FieldName = 'FD_INT_C'
      Precision = 15
      Size = 1
    end
    object sdsFacaTP_INT_L: TFMTBCDField
      FieldName = 'TP_INT_L'
      Precision = 15
      Size = 1
    end
    object sdsFacaTP_INT_C: TFMTBCDField
      FieldName = 'TP_INT_C'
      Precision = 15
      Size = 1
    end
    object sdsFacaSP_INT_L: TFMTBCDField
      FieldName = 'SP_INT_L'
      Precision = 15
      Size = 1
    end
    object sdsFacaSP_INT_C: TFMTBCDField
      FieldName = 'SP_INT_C'
      Precision = 15
      Size = 1
    end
    object sdsFacaFD_COPIAS_L: TSmallintField
      FieldName = 'FD_COPIAS_L'
    end
    object sdsFacaTP_COPIAS_L: TSmallintField
      FieldName = 'TP_COPIAS_L'
    end
    object sdsFacaSP_COPIAS_L: TSmallintField
      FieldName = 'SP_COPIAS_L'
    end
    object sdsFacaFD_FIO_C: TFMTBCDField
      FieldName = 'FD_FIO_C'
      Precision = 15
      Size = 2
    end
    object sdsFacaFD_FIO_L: TFMTBCDField
      FieldName = 'FD_FIO_L'
      Precision = 15
      Size = 2
    end
    object sdsFacaTP_FIO_C: TFMTBCDField
      FieldName = 'TP_FIO_C'
      Precision = 15
      Size = 2
    end
    object sdsFacaTP_FIO_L: TFMTBCDField
      FieldName = 'TP_FIO_L'
      Precision = 15
      Size = 2
    end
    object sdsFacaSP_FIO_C: TFMTBCDField
      FieldName = 'SP_FIO_C'
      Precision = 15
      Size = 2
    end
    object sdsFacaSP_FIO_L: TFMTBCDField
      FieldName = 'SP_FIO_L'
      Precision = 15
      Size = 2
    end
    object sdsFacaARQUIVO_FD: TStringField
      FieldName = 'ARQUIVO_FD'
      Size = 200
    end
    object sdsFacaARQUIVO_TP: TStringField
      FieldName = 'ARQUIVO_TP'
      Size = 200
    end
    object sdsFacaARQUIVO_SP: TStringField
      FieldName = 'ARQUIVO_SP'
      Size = 200
    end
    object sdsFacaENDERECO_FD: TStringField
      FieldName = 'ENDERECO_FD'
    end
    object sdsFacaENDERECO_TP: TStringField
      FieldName = 'ENDERECO_TP'
    end
    object sdsFacaENDERECO_SP: TStringField
      FieldName = 'ENDERECO_SP'
    end
    object sdsFacaFECHAMENTO_FD: TStringField
      FieldName = 'FECHAMENTO_FD'
      Size = 4
    end
    object sdsFacaFECHAMENTO_CT: TStringField
      FieldName = 'FECHAMENTO_CT'
      Size = 4
    end
    object sdsFacaFECHAMENTO_TP: TStringField
      FieldName = 'FECHAMENTO_TP'
      Size = 4
    end
    object sdsFacaFECHAMENTO_SP: TStringField
      FieldName = 'FECHAMENTO_SP'
      Size = 4
    end
    object sdsFacaINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsFacaDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object sdsFacaFD_OBS: TStringField
      FieldName = 'FD_OBS'
      Size = 250
    end
    object sdsFacaTP_OBS: TStringField
      FieldName = 'TP_OBS'
      Size = 250
    end
    object sdsFacaSP_OBS: TStringField
      FieldName = 'SP_OBS'
      Size = 250
    end
    object sdsFacaFD_FIBRA: TStringField
      FieldName = 'FD_FIBRA'
      FixedChar = True
      Size = 1
    end
    object sdsFacaTP_FIBRA: TStringField
      FieldName = 'TP_FIBRA'
      FixedChar = True
      Size = 1
    end
    object sdsFacaSP_FIBRA: TStringField
      FieldName = 'SP_FIBRA'
      FixedChar = True
      Size = 1
    end
  end
  object cdsFaca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFaca'
    ReadOnly = True
    Left = 152
    Top = 208
    object cdsFacaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFacaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsFacaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsFacaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsFacaFD_COMPR: TFMTBCDField
      FieldName = 'FD_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsFacaFD_LARGURA: TFMTBCDField
      FieldName = 'FD_LARGURA'
      Precision = 15
      Size = 2
    end
    object cdsFacaFD_ALTURA: TFMTBCDField
      FieldName = 'FD_ALTURA'
      Precision = 15
      Size = 2
    end
    object cdsFacaFD_ABA_INT_CAB: TFMTBCDField
      FieldName = 'FD_ABA_INT_CAB'
      Precision = 15
      Size = 2
    end
    object cdsFacaFD_ABA_INT_LAT: TFMTBCDField
      FieldName = 'FD_ABA_INT_LAT'
      Precision = 15
      Size = 2
    end
    object cdsFacaTP_ABA_EXT_CAB: TFMTBCDField
      FieldName = 'TP_ABA_EXT_CAB'
      Precision = 15
      Size = 2
    end
    object cdsFacaTP_ABA_INT_CAB: TFMTBCDField
      FieldName = 'TP_ABA_INT_CAB'
      Precision = 15
      Size = 2
    end
    object cdsFacaTP_ABA_EXT_LAT: TFMTBCDField
      FieldName = 'TP_ABA_EXT_LAT'
      Precision = 15
      Size = 2
    end
    object cdsFacaTP_ABA_INT_LAT: TFMTBCDField
      FieldName = 'TP_ABA_INT_LAT'
      Precision = 15
      Size = 2
    end
    object cdsFacaSP_COMPR: TFMTBCDField
      FieldName = 'SP_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsFacaSP_LARGURA: TFMTBCDField
      FieldName = 'SP_LARGURA'
      Precision = 15
      Size = 2
    end
    object cdsFacaSP_ALTURA: TFMTBCDField
      FieldName = 'SP_ALTURA'
      Precision = 15
      Size = 2
    end
    object cdsFacaTP_LARGURA: TFMTBCDField
      FieldName = 'TP_LARGURA'
      Precision = 15
      Size = 2
    end
    object cdsFacaTP_COMPR: TFMTBCDField
      FieldName = 'TP_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsFacaTP_ALTURA: TFMTBCDField
      FieldName = 'TP_ALTURA'
      Precision = 15
      Size = 2
    end
    object cdsFacaFD_DIMENSAO1: TFMTBCDField
      FieldName = 'FD_DIMENSAO1'
      Precision = 15
      Size = 2
    end
    object cdsFacaFD_DIMENSAO2: TFMTBCDField
      FieldName = 'FD_DIMENSAO2'
      Precision = 15
      Size = 2
    end
    object cdsFacaTP_DIMENSAO1: TFMTBCDField
      FieldName = 'TP_DIMENSAO1'
      Precision = 15
      Size = 2
    end
    object cdsFacaTP_DIMENSAO2: TFMTBCDField
      FieldName = 'TP_DIMENSAO2'
      Precision = 15
      Size = 2
    end
    object cdsFacaTP_TIPO_MAT: TStringField
      FieldName = 'TP_TIPO_MAT'
      Size = 2
    end
    object cdsFacaSP_ABA_INT_CAB: TFMTBCDField
      FieldName = 'SP_ABA_INT_CAB'
      Precision = 15
      Size = 2
    end
    object cdsFacaSP_ABA_INT_LAT: TFMTBCDField
      FieldName = 'SP_ABA_INT_LAT'
      Precision = 15
      Size = 2
    end
    object cdsFacaFD_TIPO_MAT: TStringField
      FieldName = 'FD_TIPO_MAT'
      Size = 2
    end
    object cdsFacaSP_TIPO_MAT: TStringField
      FieldName = 'SP_TIPO_MAT'
      Size = 2
    end
    object cdsFacaSP_DIMENSAO1: TFMTBCDField
      FieldName = 'SP_DIMENSAO1'
      Precision = 15
      Size = 2
    end
    object cdsFacaSP_DIMENSAO2: TFMTBCDField
      FieldName = 'SP_DIMENSAO2'
      Precision = 15
      Size = 2
    end
    object cdsFacaFACA_FD: TIntegerField
      FieldName = 'FACA_FD'
    end
    object cdsFacaFACA_TP: TIntegerField
      FieldName = 'FACA_TP'
    end
    object cdsFacaFACA_SP: TIntegerField
      FieldName = 'FACA_SP'
    end
    object cdsFacaFACA_ID: TIntegerField
      FieldName = 'FACA_ID'
    end
    object cdsFacaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsFacaFD_COPIAS_C: TSmallintField
      FieldName = 'FD_COPIAS_C'
    end
    object cdsFacaTP_COPIAS_C: TSmallintField
      FieldName = 'TP_COPIAS_C'
    end
    object cdsFacaSP_COPIAS_C: TSmallintField
      FieldName = 'SP_COPIAS_C'
    end
    object cdsFacaFD_INT_L: TFMTBCDField
      FieldName = 'FD_INT_L'
      Precision = 15
      Size = 1
    end
    object cdsFacaFD_INT_C: TFMTBCDField
      FieldName = 'FD_INT_C'
      Precision = 15
      Size = 1
    end
    object cdsFacaTP_INT_L: TFMTBCDField
      FieldName = 'TP_INT_L'
      Precision = 15
      Size = 1
    end
    object cdsFacaTP_INT_C: TFMTBCDField
      FieldName = 'TP_INT_C'
      Precision = 15
      Size = 1
    end
    object cdsFacaSP_INT_L: TFMTBCDField
      FieldName = 'SP_INT_L'
      Precision = 15
      Size = 1
    end
    object cdsFacaSP_INT_C: TFMTBCDField
      FieldName = 'SP_INT_C'
      Precision = 15
      Size = 1
    end
    object cdsFacaFD_COPIAS_L: TSmallintField
      FieldName = 'FD_COPIAS_L'
    end
    object cdsFacaTP_COPIAS_L: TSmallintField
      FieldName = 'TP_COPIAS_L'
    end
    object cdsFacaSP_COPIAS_L: TSmallintField
      FieldName = 'SP_COPIAS_L'
    end
    object cdsFacaFD_FIO_C: TFMTBCDField
      FieldName = 'FD_FIO_C'
      Precision = 15
      Size = 2
    end
    object cdsFacaFD_FIO_L: TFMTBCDField
      FieldName = 'FD_FIO_L'
      Precision = 15
      Size = 2
    end
    object cdsFacaTP_FIO_C: TFMTBCDField
      FieldName = 'TP_FIO_C'
      Precision = 15
      Size = 2
    end
    object cdsFacaTP_FIO_L: TFMTBCDField
      FieldName = 'TP_FIO_L'
      Precision = 15
      Size = 2
    end
    object cdsFacaSP_FIO_C: TFMTBCDField
      FieldName = 'SP_FIO_C'
      Precision = 15
      Size = 2
    end
    object cdsFacaSP_FIO_L: TFMTBCDField
      FieldName = 'SP_FIO_L'
      Precision = 15
      Size = 2
    end
    object cdsFacaARQUIVO_FD: TStringField
      FieldName = 'ARQUIVO_FD'
      Size = 200
    end
    object cdsFacaARQUIVO_TP: TStringField
      FieldName = 'ARQUIVO_TP'
      Size = 200
    end
    object cdsFacaARQUIVO_SP: TStringField
      FieldName = 'ARQUIVO_SP'
      Size = 200
    end
    object cdsFacaENDERECO_FD: TStringField
      FieldName = 'ENDERECO_FD'
    end
    object cdsFacaENDERECO_TP: TStringField
      FieldName = 'ENDERECO_TP'
    end
    object cdsFacaENDERECO_SP: TStringField
      FieldName = 'ENDERECO_SP'
    end
    object cdsFacaFECHAMENTO_FD: TStringField
      FieldName = 'FECHAMENTO_FD'
      Size = 4
    end
    object cdsFacaFECHAMENTO_CT: TStringField
      FieldName = 'FECHAMENTO_CT'
      Size = 4
    end
    object cdsFacaFECHAMENTO_TP: TStringField
      FieldName = 'FECHAMENTO_TP'
      Size = 4
    end
    object cdsFacaFECHAMENTO_SP: TStringField
      FieldName = 'FECHAMENTO_SP'
      Size = 4
    end
    object cdsFacaINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsFacaDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object cdsFacaFD_OBS: TStringField
      FieldName = 'FD_OBS'
      Size = 250
    end
    object cdsFacaTP_OBS: TStringField
      FieldName = 'TP_OBS'
      Size = 250
    end
    object cdsFacaSP_OBS: TStringField
      FieldName = 'SP_OBS'
      Size = 250
    end
    object cdsFacaFD_FIBRA: TStringField
      FieldName = 'FD_FIBRA'
      FixedChar = True
      Size = 1
    end
    object cdsFacaTP_FIBRA: TStringField
      FieldName = 'TP_FIBRA'
      FixedChar = True
      Size = 1
    end
    object cdsFacaSP_FIBRA: TStringField
      FieldName = 'SP_FIBRA'
      FixedChar = True
      Size = 1
    end
    object cdsFacasdsFacaProcesso: TDataSetField
      FieldName = 'sdsFacaProcesso'
    end
  end
  object dsFaca: TDataSource
    DataSet = cdsFaca
    Left = 208
    Top = 208
  end
  object sdsCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME, FANTASIA, TELEFONE1'#13#10'FROM PESSOA '#13#10'WHERE TP' +
      '_CLIENTE = '#39'S'#39#13#10' AND INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 448
    Top = 16
    object sdsClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsClienteFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object sdsClienteTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 504
    Top = 16
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCliente'
    Left = 560
    Top = 16
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
    object cdsClienteTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 616
    Top = 16
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.ID, P.NOME, P.REFERENCIA, CA.FACA_ID, CA.FICHA_TEC_ID'#13#10 +
      'FROM PRODUTO P'#13#10'INNER JOIN CARTO_ACABADO CA ON (P.ID = CA.ID)'#13#10'W' +
      'HERE P.TIPO_REG = '#39'P'#39' '#13#10' AND P.INATIVO = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 448
    Top = 64
    object sdsProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsProdutoFACA_ID: TIntegerField
      FieldName = 'FACA_ID'
    end
    object sdsProdutoFICHA_TEC_ID: TIntegerField
      FieldName = 'FICHA_TEC_ID'
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 504
    Top = 64
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    Left = 560
    Top = 64
    object cdsProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsProdutoFACA_ID: TIntegerField
      FieldName = 'FACA_ID'
    end
    object cdsProdutoFICHA_TEC_ID: TIntegerField
      FieldName = 'FICHA_TEC_ID'
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 616
    Top = 64
  end
  object sdsRepresentante: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME, FANTASIA, TELEFONE1'#13#10'FROM PESSOA '#13#10'WHERE TP' +
      '_VENDEDOR = '#39'S'#39#13#10' AND INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 448
    Top = 112
    object sdsRepresentanteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsRepresentanteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsRepresentanteFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object sdsRepresentanteTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
  end
  object dspRepresentante: TDataSetProvider
    DataSet = sdsRepresentante
    Left = 504
    Top = 112
  end
  object cdsRepresentante: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRepresentante'
    Left = 560
    Top = 112
    object cdsRepresentanteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsRepresentanteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsRepresentanteFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsRepresentanteTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
  end
  object dsRepresentante: TDataSource
    DataSet = cdsRepresentante
    Left = 616
    Top = 112
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, NOME, SIMPLES, ID_REGIME_TRIB, CNPJ_CPF,'#13#10'ENDERECO, N' +
      'UM_END, CIDADE, UF, DDD1, FONE'#13#10'FROM FILIAL'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 448
    Top = 160
    object sdsFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsFilialSIMPLES: TStringField
      FieldName = 'SIMPLES'
      FixedChar = True
      Size = 1
    end
    object sdsFilialID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object sdsFilialCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object sdsFilialENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object sdsFilialNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object sdsFilialCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsFilialUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sdsFilialDDD1: TIntegerField
      FieldName = 'DDD1'
    end
    object sdsFilialFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 504
    Top = 160
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFilial'
    Left = 560
    Top = 160
    object cdsFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsFilialSIMPLES: TStringField
      FieldName = 'SIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsFilialID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object cdsFilialCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsFilialENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsFilialNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
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
    object cdsFilialFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 616
    Top = 160
  end
  object sdsCartoOrcamentoCons: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CO.ID, DATA, CLIENTE_NOME CLIENTE, ACABADO_NOME PRODUTO, ' +
      'VALIDADE'#13#10'FROM CARTO_ORCAMENTO CO'#13#10'WHERE 1 = 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 448
    Top = 208
    object sdsCartoOrcamentoConsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCartoOrcamentoConsDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsCartoOrcamentoConsCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 60
    end
    object sdsCartoOrcamentoConsPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 100
    end
    object sdsCartoOrcamentoConsVALIDADE: TIntegerField
      FieldName = 'VALIDADE'
    end
  end
  object dspCartoOrcamentoCons: TDataSetProvider
    DataSet = sdsCartoOrcamentoCons
    Left = 504
    Top = 208
  end
  object cdsCartoOrcamentoCons: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCartoOrcamentoCons'
    Left = 560
    Top = 208
    object cdsCartoOrcamentoConsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCartoOrcamentoConsDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsCartoOrcamentoConsCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 60
    end
    object cdsCartoOrcamentoConsPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 100
    end
    object cdsCartoOrcamentoConsVALIDADE: TIntegerField
      FieldName = 'VALIDADE'
    end
  end
  object dsCartoOrcamentoCons: TDataSource
    DataSet = cdsCartoOrcamentoCons
    Left = 616
    Top = 208
  end
  object sdsFichaTecnicaFD: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT FT_FD.*'#13#10'FROM CARTO_FT_FD FT_FD'#13#10'WHERE FT_FD.ID = :ID'
    DataSource = dsmCartoFT
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 40
    Top = 424
    object sdsFichaTecnicaFDID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFichaTecnicaFDMATERIAL1: TIntegerField
      FieldName = 'MATERIAL1'
    end
    object sdsFichaTecnicaFDMATERIAL2: TIntegerField
      FieldName = 'MATERIAL2'
    end
    object sdsFichaTecnicaFDMATERIAL3: TIntegerField
      FieldName = 'MATERIAL3'
    end
    object sdsFichaTecnicaFDREVEST_FT: TStringField
      FieldName = 'REVEST_FT'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaFDREVEST_FT_MAT: TIntegerField
      FieldName = 'REVEST_FT_MAT'
    end
    object sdsFichaTecnicaFDREVEST_FT_BRIL: TStringField
      FieldName = 'REVEST_FT_BRIL'
      Size = 2
    end
    object sdsFichaTecnicaFDREVEST_FT_ATRITO: TStringField
      FieldName = 'REVEST_FT_ATRITO'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaFDREVEST_FT_LUZ: TStringField
      FieldName = 'REVEST_FT_LUZ'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaFDREVEST_VS: TStringField
      FieldName = 'REVEST_VS'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaFDREVEST_VS_MAT: TIntegerField
      FieldName = 'REVEST_VS_MAT'
    end
    object sdsFichaTecnicaFDREVEST_VS_BRIL: TStringField
      FieldName = 'REVEST_VS_BRIL'
      Size = 2
    end
    object sdsFichaTecnicaFDREVEST_VS_ATRITO: TStringField
      FieldName = 'REVEST_VS_ATRITO'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaFDREVEST_VS_LUZ: TStringField
      FieldName = 'REVEST_VS_LUZ'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaFDAR: TStringField
      FieldName = 'AR'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaFDAR_COMPR: TFMTBCDField
      FieldName = 'AR_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaFDAR_LARG: TFMTBCDField
      FieldName = 'AR_LARG'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaFDAR_LOCAL: TStringField
      FieldName = 'AR_LOCAL'
      Size = 2
    end
    object sdsFichaTecnicaFDBR: TStringField
      FieldName = 'BR'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaFDBR_COMPR: TFMTBCDField
      FieldName = 'BR_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaFDBR_LARG: TFMTBCDField
      FieldName = 'BR_LARG'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaFDBR_LOCAL: TStringField
      FieldName = 'BR_LOCAL'
      Size = 2
    end
    object sdsFichaTecnicaFDHS: TStringField
      FieldName = 'HS'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaFDHS_COMPR: TFMTBCDField
      FieldName = 'HS_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaFDHS_LARG: TFMTBCDField
      FieldName = 'HS_LARG'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaFDHS_LOCAL: TStringField
      FieldName = 'HS_LOCAL'
      Size = 2
    end
    object sdsFichaTecnicaFDVISOR: TStringField
      FieldName = 'VISOR'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaFDVISOR_COMPR: TFMTBCDField
      FieldName = 'VISOR_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaFDVISOR_LARG: TFMTBCDField
      FieldName = 'VISOR_LARG'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaFDVISOR_LOCAL: TStringField
      FieldName = 'VISOR_LOCAL'
      Size = 2
    end
    object sdsFichaTecnicaFDVERNIZUV: TStringField
      FieldName = 'VERNIZUV'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaFDVERNIZUV_COMPR: TFMTBCDField
      FieldName = 'VERNIZUV_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaFDVERNIZUV_LARG: TFMTBCDField
      FieldName = 'VERNIZUV_LARG'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaFDVERNIZUV_LOCAL: TStringField
      FieldName = 'VERNIZUV_LOCAL'
      Size = 2
    end
    object sdsFichaTecnicaFDPICOTE: TStringField
      FieldName = 'PICOTE'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaFDPICOTE_LOCAL: TStringField
      FieldName = 'PICOTE_LOCAL'
      Size = 2
    end
    object sdsFichaTecnicaFDPICOTE_TIPO: TStringField
      FieldName = 'PICOTE_TIPO'
      Size = 2
    end
    object sdsFichaTecnicaFDPASSAFITA: TStringField
      FieldName = 'PASSAFITA'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaFDPASSAFITA_LOCAL: TStringField
      FieldName = 'PASSAFITA_LOCAL'
      Size = 2
    end
    object sdsFichaTecnicaFDPASSAFITA_TIPO: TStringField
      FieldName = 'PASSAFITA_TIPO'
      Size = 2
    end
    object sdsFichaTecnicaFDILHOS: TStringField
      FieldName = 'ILHOS'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaFDILHOS_LOCAL: TStringField
      FieldName = 'ILHOS_LOCAL'
      Size = 2
    end
    object sdsFichaTecnicaFDALCA: TStringField
      FieldName = 'ALCA'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaFDALCA_LOCAL: TStringField
      FieldName = 'ALCA_LOCAL'
      Size = 2
    end
    object sdsFichaTecnicaFDVERNIZUV_TOTAL: TStringField
      FieldName = 'VERNIZUV_TOTAL'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaFDPINCA: TStringField
      FieldName = 'PINCA'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaFDTRAVA: TStringField
      FieldName = 'TRAVA'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaFDDISPLAY: TStringField
      FieldName = 'DISPLAY'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaFDPINCA_TAM: TFMTBCDField
      FieldName = 'PINCA_TAM'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaFDGRUPO1: TIntegerField
      FieldName = 'GRUPO1'
    end
    object sdsFichaTecnicaFDSUBGRUPO1: TIntegerField
      FieldName = 'SUBGRUPO1'
    end
    object sdsFichaTecnicaFDGRUPO2: TIntegerField
      FieldName = 'GRUPO2'
    end
    object sdsFichaTecnicaFDSUBGRUPO2: TIntegerField
      FieldName = 'SUBGRUPO2'
    end
    object sdsFichaTecnicaFDGRUPO3: TIntegerField
      FieldName = 'GRUPO3'
    end
    object sdsFichaTecnicaFDSUBGRUPO3: TIntegerField
      FieldName = 'SUBGRUPO3'
    end
    object sdsFichaTecnicaFDOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object sdsFichaTecnicaFDENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 150
    end
    object sdsFichaTecnicaFDARQUIVO_FD: TStringField
      FieldName = 'ARQUIVO_FD'
      Size = 150
    end
    object sdsFichaTecnicaFDBRANCO: TStringField
      FieldName = 'BRANCO'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaFDAREA_IMPRESSAO: TFMTBCDField
      FieldName = 'AREA_IMPRESSAO'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaFDFURO: TStringField
      FieldName = 'FURO'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaFDFURO_LADO: TStringField
      FieldName = 'FURO_LADO'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaFDFURO_CABECEIRA: TStringField
      FieldName = 'FURO_CABECEIRA'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaFDGRAM1_MIN: TSmallintField
      FieldName = 'GRAM1_MIN'
    end
    object sdsFichaTecnicaFDGRAM1_MAX: TSmallintField
      FieldName = 'GRAM1_MAX'
    end
    object sdsFichaTecnicaFDGRAM2_MIN: TSmallintField
      FieldName = 'GRAM2_MIN'
    end
    object sdsFichaTecnicaFDGRAM2_MAX: TSmallintField
      FieldName = 'GRAM2_MAX'
    end
    object sdsFichaTecnicaFDGRAM3_MIN: TSmallintField
      FieldName = 'GRAM3_MIN'
    end
    object sdsFichaTecnicaFDGRAM3_MAX: TSmallintField
      FieldName = 'GRAM3_MAX'
    end
  end
  object cdsFichaTecnicaFD: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCartoFTsdsFichaTecnicaFD
    Params = <>
    ReadOnly = True
    Left = 152
    Top = 424
    object cdsFichaTecnicaFDID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFichaTecnicaFDMATERIAL1: TIntegerField
      FieldName = 'MATERIAL1'
    end
    object cdsFichaTecnicaFDMATERIAL2: TIntegerField
      FieldName = 'MATERIAL2'
    end
    object cdsFichaTecnicaFDMATERIAL3: TIntegerField
      FieldName = 'MATERIAL3'
    end
    object cdsFichaTecnicaFDREVEST_FT: TStringField
      FieldName = 'REVEST_FT'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaFDREVEST_FT_MAT: TIntegerField
      FieldName = 'REVEST_FT_MAT'
    end
    object cdsFichaTecnicaFDREVEST_FT_BRIL: TStringField
      FieldName = 'REVEST_FT_BRIL'
      Size = 2
    end
    object cdsFichaTecnicaFDREVEST_FT_ATRITO: TStringField
      FieldName = 'REVEST_FT_ATRITO'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaFDREVEST_FT_LUZ: TStringField
      FieldName = 'REVEST_FT_LUZ'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaFDREVEST_VS: TStringField
      FieldName = 'REVEST_VS'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaFDREVEST_VS_MAT: TIntegerField
      FieldName = 'REVEST_VS_MAT'
    end
    object cdsFichaTecnicaFDREVEST_VS_BRIL: TStringField
      FieldName = 'REVEST_VS_BRIL'
      Size = 2
    end
    object cdsFichaTecnicaFDREVEST_VS_ATRITO: TStringField
      FieldName = 'REVEST_VS_ATRITO'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaFDREVEST_VS_LUZ: TStringField
      FieldName = 'REVEST_VS_LUZ'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaFDAR: TStringField
      FieldName = 'AR'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaFDAR_COMPR: TFMTBCDField
      FieldName = 'AR_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaFDAR_LARG: TFMTBCDField
      FieldName = 'AR_LARG'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaFDAR_LOCAL: TStringField
      FieldName = 'AR_LOCAL'
      Size = 2
    end
    object cdsFichaTecnicaFDBR: TStringField
      FieldName = 'BR'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaFDBR_COMPR: TFMTBCDField
      FieldName = 'BR_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaFDBR_LARG: TFMTBCDField
      FieldName = 'BR_LARG'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaFDBR_LOCAL: TStringField
      FieldName = 'BR_LOCAL'
      Size = 2
    end
    object cdsFichaTecnicaFDHS: TStringField
      FieldName = 'HS'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaFDHS_COMPR: TFMTBCDField
      FieldName = 'HS_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaFDHS_LARG: TFMTBCDField
      FieldName = 'HS_LARG'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaFDHS_LOCAL: TStringField
      FieldName = 'HS_LOCAL'
      Size = 2
    end
    object cdsFichaTecnicaFDVISOR: TStringField
      FieldName = 'VISOR'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaFDVISOR_COMPR: TFMTBCDField
      FieldName = 'VISOR_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaFDVISOR_LARG: TFMTBCDField
      FieldName = 'VISOR_LARG'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaFDVISOR_LOCAL: TStringField
      FieldName = 'VISOR_LOCAL'
      Size = 2
    end
    object cdsFichaTecnicaFDVERNIZUV: TStringField
      FieldName = 'VERNIZUV'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaFDVERNIZUV_COMPR: TFMTBCDField
      FieldName = 'VERNIZUV_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaFDVERNIZUV_LARG: TFMTBCDField
      FieldName = 'VERNIZUV_LARG'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaFDVERNIZUV_LOCAL: TStringField
      FieldName = 'VERNIZUV_LOCAL'
      Size = 2
    end
    object cdsFichaTecnicaFDPICOTE: TStringField
      FieldName = 'PICOTE'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaFDPICOTE_LOCAL: TStringField
      FieldName = 'PICOTE_LOCAL'
      Size = 2
    end
    object cdsFichaTecnicaFDPICOTE_TIPO: TStringField
      FieldName = 'PICOTE_TIPO'
      Size = 2
    end
    object cdsFichaTecnicaFDPASSAFITA: TStringField
      FieldName = 'PASSAFITA'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaFDPASSAFITA_LOCAL: TStringField
      FieldName = 'PASSAFITA_LOCAL'
      Size = 2
    end
    object cdsFichaTecnicaFDPASSAFITA_TIPO: TStringField
      FieldName = 'PASSAFITA_TIPO'
      Size = 2
    end
    object cdsFichaTecnicaFDILHOS: TStringField
      FieldName = 'ILHOS'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaFDILHOS_LOCAL: TStringField
      FieldName = 'ILHOS_LOCAL'
      Size = 2
    end
    object cdsFichaTecnicaFDALCA: TStringField
      FieldName = 'ALCA'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaFDALCA_LOCAL: TStringField
      FieldName = 'ALCA_LOCAL'
      Size = 2
    end
    object cdsFichaTecnicaFDVERNIZUV_TOTAL: TStringField
      FieldName = 'VERNIZUV_TOTAL'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaFDPINCA: TStringField
      FieldName = 'PINCA'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaFDTRAVA: TStringField
      FieldName = 'TRAVA'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaFDDISPLAY: TStringField
      FieldName = 'DISPLAY'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaFDPINCA_TAM: TFMTBCDField
      FieldName = 'PINCA_TAM'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaFDGRUPO1: TIntegerField
      FieldName = 'GRUPO1'
    end
    object cdsFichaTecnicaFDSUBGRUPO1: TIntegerField
      FieldName = 'SUBGRUPO1'
    end
    object cdsFichaTecnicaFDGRUPO2: TIntegerField
      FieldName = 'GRUPO2'
    end
    object cdsFichaTecnicaFDSUBGRUPO2: TIntegerField
      FieldName = 'SUBGRUPO2'
    end
    object cdsFichaTecnicaFDGRUPO3: TIntegerField
      FieldName = 'GRUPO3'
    end
    object cdsFichaTecnicaFDSUBGRUPO3: TIntegerField
      FieldName = 'SUBGRUPO3'
    end
    object cdsFichaTecnicaFDOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object cdsFichaTecnicaFDENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 150
    end
    object cdsFichaTecnicaFDARQUIVO_FD: TStringField
      FieldName = 'ARQUIVO_FD'
      Size = 150
    end
    object cdsFichaTecnicaFDBRANCO: TStringField
      FieldName = 'BRANCO'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaFDAREA_IMPRESSAO: TFMTBCDField
      FieldName = 'AREA_IMPRESSAO'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaFDFURO: TStringField
      FieldName = 'FURO'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaFDFURO_LADO: TStringField
      FieldName = 'FURO_LADO'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaFDFURO_CABECEIRA: TStringField
      FieldName = 'FURO_CABECEIRA'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaFDGRAM1_MIN: TSmallintField
      FieldName = 'GRAM1_MIN'
    end
    object cdsFichaTecnicaFDGRAM1_MAX: TSmallintField
      FieldName = 'GRAM1_MAX'
    end
    object cdsFichaTecnicaFDGRAM2_MIN: TSmallintField
      FieldName = 'GRAM2_MIN'
    end
    object cdsFichaTecnicaFDGRAM2_MAX: TSmallintField
      FieldName = 'GRAM2_MAX'
    end
    object cdsFichaTecnicaFDGRAM3_MIN: TSmallintField
      FieldName = 'GRAM3_MIN'
    end
    object cdsFichaTecnicaFDGRAM3_MAX: TSmallintField
      FieldName = 'GRAM3_MAX'
    end
  end
  object dsFichaTecnicaFD: TDataSource
    DataSet = cdsFichaTecnicaFD
    Left = 208
    Top = 424
  end
  object sdsCartoOrcamentoItem: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT COI.*, P.NOME MATERIAL'#13#10'FROM CARTO_ORCAMENTO_ITEM COI'#13#10'LE' +
      'FT JOIN PRODUTO P ON (COI.MATERIAL_ID = P.ID)'#13#10'WHERE COI.ORCAMEN' +
      'TO_ID = :ID'
    DataSource = dsmCartoOrcamento
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 40
    Top = 72
    object sdsCartoOrcamentoItemORCAMENTO_ID: TIntegerField
      FieldName = 'ORCAMENTO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCartoOrcamentoItemITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCartoOrcamentoItemPOSICAO: TStringField
      FieldName = 'POSICAO'
      Size = 2
    end
    object sdsCartoOrcamentoItemMATERIAL: TStringField
      FieldName = 'MATERIAL'
      ProviderFlags = []
      Size = 100
    end
    object sdsCartoOrcamentoItemMATERIAL_ID: TIntegerField
      FieldName = 'MATERIAL_ID'
    end
    object sdsCartoOrcamentoItemMATERIAL_FORN_ID: TIntegerField
      FieldName = 'MATERIAL_FORN_ID'
    end
    object sdsCartoOrcamentoItemQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsCartoOrcamentoItemVLR_UNIT: TFloatField
      FieldName = 'VLR_UNIT'
    end
    object sdsCartoOrcamentoItemVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsCartoOrcamentoItemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object sdsCartoOrcamentoItemGRAMATURA: TSmallintField
      FieldName = 'GRAMATURA'
    end
    object sdsCartoOrcamentoItemBOBINA: TSmallintField
      FieldName = 'BOBINA'
    end
    object sdsCartoOrcamentoItemQUEBRA: TSmallintField
      FieldName = 'QUEBRA'
    end
    object sdsCartoOrcamentoItemDEFINIDO: TStringField
      FieldName = 'DEFINIDO'
      FixedChar = True
      Size = 1
    end
    object sdsCartoOrcamentoItemGR_MIN: TSmallintField
      FieldName = 'GR_MIN'
    end
    object sdsCartoOrcamentoItemGR_MAX: TSmallintField
      FieldName = 'GR_MAX'
    end
    object sdsCartoOrcamentoItemGRUPO_ID: TIntegerField
      FieldName = 'GRUPO_ID'
    end
    object sdsCartoOrcamentoItemCI1: TFloatField
      FieldName = 'CI1'
    end
    object sdsCartoOrcamentoItemCI2: TFloatField
      FieldName = 'CI2'
    end
    object sdsCartoOrcamentoItemCF1: TFloatField
      FieldName = 'CF1'
    end
    object sdsCartoOrcamentoItemCF2: TFloatField
      FieldName = 'CF2'
    end
  end
  object cdsCartoOrcamentoItem: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = cdsCartoOrcamentosdsCartoOrcamentoItem
    Params = <>
    Left = 152
    Top = 72
    object cdsCartoOrcamentoItemORCAMENTO_ID: TIntegerField
      FieldName = 'ORCAMENTO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCartoOrcamentoItemITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCartoOrcamentoItemMATERIAL_ID: TIntegerField
      FieldName = 'MATERIAL_ID'
    end
    object cdsCartoOrcamentoItemPOSICAO: TStringField
      FieldName = 'POSICAO'
      Size = 2
    end
    object cdsCartoOrcamentoItemMATERIAL_FORN_ID: TIntegerField
      FieldName = 'MATERIAL_FORN_ID'
    end
    object cdsCartoOrcamentoItemQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsCartoOrcamentoItemVLR_UNIT: TFloatField
      FieldName = 'VLR_UNIT'
      DisplayFormat = '0.00'
    end
    object cdsCartoOrcamentoItemVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsCartoOrcamentoItemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object cdsCartoOrcamentoItemMATERIAL: TStringField
      FieldName = 'MATERIAL'
      ProviderFlags = []
      Size = 100
    end
    object cdsCartoOrcamentoItemGRAMATURA: TSmallintField
      FieldName = 'GRAMATURA'
    end
    object cdsCartoOrcamentoItemBOBINA: TSmallintField
      FieldName = 'BOBINA'
      DisplayFormat = '0.0'
    end
    object cdsCartoOrcamentoItemQUEBRA: TSmallintField
      FieldName = 'QUEBRA'
    end
    object cdsCartoOrcamentoItemDEFINIDO: TStringField
      FieldName = 'DEFINIDO'
      FixedChar = True
      Size = 1
    end
    object cdsCartoOrcamentoItemGR_MIN: TSmallintField
      FieldName = 'GR_MIN'
    end
    object cdsCartoOrcamentoItemGR_MAX: TSmallintField
      FieldName = 'GR_MAX'
    end
    object cdsCartoOrcamentoItemGRUPO_ID: TIntegerField
      FieldName = 'GRUPO_ID'
    end
    object cdsCartoOrcamentoItemCI1: TFloatField
      FieldName = 'CI1'
    end
    object cdsCartoOrcamentoItemCI2: TFloatField
      FieldName = 'CI2'
    end
    object cdsCartoOrcamentoItemCF1: TFloatField
      FieldName = 'CF1'
    end
    object cdsCartoOrcamentoItemCF2: TFloatField
      FieldName = 'CF2'
    end
  end
  object dsCartoOrcamentoItem: TDataSource
    DataSet = cdsCartoOrcamentoItem
    Left = 208
    Top = 72
  end
  object sdsMaterial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.ID, P.NOME, P.REFERENCIA, P.ID_GRUPO, P.PRECO_CUSTO, PP' +
      '.COMPRIMENTO, PP.LARGURA, PP.FORMATO, PP.GRAMATURA, PP.PRECO_CAL' +
      'CULO'#13#10'FROM PRODUTO P'#13#10'LEFT JOIN PRODUTO_PCP PP ON (P.ID = PP.ID)' +
      #13#10'WHERE P.TIPO_REG = '#39'M'#39' '#13#10' AND P.INATIVO = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 448
    Top = 256
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object StringField2: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsMaterialPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object sdsMaterialPRECO_CALCULO: TFloatField
      FieldName = 'PRECO_CALCULO'
      ProviderFlags = []
    end
    object sdsMaterialCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object sdsMaterialLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object sdsMaterialFORMATO: TStringField
      FieldName = 'FORMATO'
      FixedChar = True
      Size = 1
    end
    object sdsMaterialGRAMATURA: TIntegerField
      FieldName = 'GRAMATURA'
    end
    object sdsMaterialID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
  end
  object dspMaterial: TDataSetProvider
    DataSet = sdsMaterial
    Left = 504
    Top = 256
  end
  object cdsMaterial: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMaterial'
    Left = 560
    Top = 256
    object cdsMaterialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMaterialNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsMaterialREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsMaterialPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsMaterialPRECO_CALCULO: TFloatField
      FieldName = 'PRECO_CALCULO'
    end
    object cdsMaterialCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object cdsMaterialLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object cdsMaterialFORMATO: TStringField
      FieldName = 'FORMATO'
      FixedChar = True
      Size = 1
    end
    object cdsMaterialGRAMATURA: TIntegerField
      FieldName = 'GRAMATURA'
    end
    object cdsMaterialID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
  end
  object dsMaterial: TDataSource
    DataSet = cdsMaterial
    Left = 616
    Top = 256
  end
  object sdsFichaTecnicaTP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT FT_TP.*'#13#10'FROM CARTO_FT_TP FT_TP'#13#10'WHERE FT_TP.ID = :ID'
    DataSource = dsmCartoFT
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 40
    Top = 472
    object sdsFichaTecnicaTPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFichaTecnicaTPMATERIAL1: TIntegerField
      FieldName = 'MATERIAL1'
    end
    object sdsFichaTecnicaTPMATERIAL2: TIntegerField
      FieldName = 'MATERIAL2'
    end
    object sdsFichaTecnicaTPMATERIAL3: TIntegerField
      FieldName = 'MATERIAL3'
    end
    object sdsFichaTecnicaTPFECHAMENTO: TStringField
      FieldName = 'FECHAMENTO'
      Size = 3
    end
    object sdsFichaTecnicaTPREVEST_FT: TStringField
      FieldName = 'REVEST_FT'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaTPREVEST_FT_MAT: TIntegerField
      FieldName = 'REVEST_FT_MAT'
    end
    object sdsFichaTecnicaTPREVEST_FT_BRIL: TStringField
      FieldName = 'REVEST_FT_BRIL'
      Size = 2
    end
    object sdsFichaTecnicaTPREVEST_FT_ATRITO: TStringField
      FieldName = 'REVEST_FT_ATRITO'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaTPREVEST_FT_LUZ: TStringField
      FieldName = 'REVEST_FT_LUZ'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaTPREVEST_VS: TStringField
      FieldName = 'REVEST_VS'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaTPREVEST_VS_MAT: TIntegerField
      FieldName = 'REVEST_VS_MAT'
    end
    object sdsFichaTecnicaTPREVEST_VS_BRIL: TStringField
      FieldName = 'REVEST_VS_BRIL'
      Size = 2
    end
    object sdsFichaTecnicaTPREVEST_VS_ATRITO: TStringField
      FieldName = 'REVEST_VS_ATRITO'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaTPREVEST_VS_LUZ: TStringField
      FieldName = 'REVEST_VS_LUZ'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaTPAR: TStringField
      FieldName = 'AR'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaTPAR_COMPR: TFMTBCDField
      FieldName = 'AR_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaTPAR_LARG: TFMTBCDField
      FieldName = 'AR_LARG'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaTPAR_LOCAL: TStringField
      FieldName = 'AR_LOCAL'
      Size = 2
    end
    object sdsFichaTecnicaTPBR: TStringField
      FieldName = 'BR'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaTPBR_COMPR: TFMTBCDField
      FieldName = 'BR_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaTPBR_LARG: TFMTBCDField
      FieldName = 'BR_LARG'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaTPBR_LOCAL: TStringField
      FieldName = 'BR_LOCAL'
      Size = 2
    end
    object sdsFichaTecnicaTPHS: TStringField
      FieldName = 'HS'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaTPHS_COMPR: TFMTBCDField
      FieldName = 'HS_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaTPHS_LARG: TFMTBCDField
      FieldName = 'HS_LARG'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaTPHS_LOCAL: TStringField
      FieldName = 'HS_LOCAL'
      Size = 2
    end
    object sdsFichaTecnicaTPVISOR: TStringField
      FieldName = 'VISOR'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaTPVISOR_COMPR: TFMTBCDField
      FieldName = 'VISOR_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaTPVISOR_LARG: TFMTBCDField
      FieldName = 'VISOR_LARG'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaTPVISOR_LOCAL: TStringField
      FieldName = 'VISOR_LOCAL'
      Size = 2
    end
    object sdsFichaTecnicaTPVERNIZUV: TStringField
      FieldName = 'VERNIZUV'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaTPVERNIZUV_COMPR: TFMTBCDField
      FieldName = 'VERNIZUV_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaTPVERNIZUV_LARG: TFMTBCDField
      FieldName = 'VERNIZUV_LARG'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaTPVERNIZUV_LOCAL: TStringField
      FieldName = 'VERNIZUV_LOCAL'
      Size = 2
    end
    object sdsFichaTecnicaTPPICOTE: TStringField
      FieldName = 'PICOTE'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaTPPICOTE_LOCAL: TStringField
      FieldName = 'PICOTE_LOCAL'
      Size = 2
    end
    object sdsFichaTecnicaTPPICOTE_TIPO: TStringField
      FieldName = 'PICOTE_TIPO'
      Size = 2
    end
    object sdsFichaTecnicaTPPASSAFITA: TStringField
      FieldName = 'PASSAFITA'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaTPPASSAFITA_LOCAL: TStringField
      FieldName = 'PASSAFITA_LOCAL'
      Size = 2
    end
    object sdsFichaTecnicaTPPASSAFITA_TIPO: TStringField
      FieldName = 'PASSAFITA_TIPO'
      Size = 2
    end
    object sdsFichaTecnicaTPILHOS: TStringField
      FieldName = 'ILHOS'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaTPILHOS_LOCAL: TStringField
      FieldName = 'ILHOS_LOCAL'
      Size = 2
    end
    object sdsFichaTecnicaTPALCA: TStringField
      FieldName = 'ALCA'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaTPALCA_LOCAL: TStringField
      FieldName = 'ALCA_LOCAL'
      Size = 2
    end
    object sdsFichaTecnicaTPVERNIZUV_TOTAL: TStringField
      FieldName = 'VERNIZUV_TOTAL'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaTPPINCA: TStringField
      FieldName = 'PINCA'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaTPPINCA_TAM: TFMTBCDField
      FieldName = 'PINCA_TAM'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaTPGRUPO1: TIntegerField
      FieldName = 'GRUPO1'
    end
    object sdsFichaTecnicaTPSUBGRUPO1: TIntegerField
      FieldName = 'SUBGRUPO1'
    end
    object sdsFichaTecnicaTPGRUPO2: TIntegerField
      FieldName = 'GRUPO2'
    end
    object sdsFichaTecnicaTPSUBGRUPO2: TIntegerField
      FieldName = 'SUBGRUPO2'
    end
    object sdsFichaTecnicaTPGRUPO3: TIntegerField
      FieldName = 'GRUPO3'
    end
    object sdsFichaTecnicaTPSUBGRUPO3: TIntegerField
      FieldName = 'SUBGRUPO3'
    end
    object sdsFichaTecnicaTPOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object sdsFichaTecnicaTPENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 150
    end
    object sdsFichaTecnicaTPARQUIVO_TP: TStringField
      FieldName = 'ARQUIVO_TP'
      Size = 150
    end
    object sdsFichaTecnicaTPBRANCO: TStringField
      FieldName = 'BRANCO'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaTPAREA_IMPRESSAO: TFMTBCDField
      FieldName = 'AREA_IMPRESSAO'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaTPGRAM1_MIN: TSmallintField
      FieldName = 'GRAM1_MIN'
    end
    object sdsFichaTecnicaTPGRAM1_MAX: TSmallintField
      FieldName = 'GRAM1_MAX'
    end
    object sdsFichaTecnicaTPGRAM2_MIN: TSmallintField
      FieldName = 'GRAM2_MIN'
    end
    object sdsFichaTecnicaTPGRAM2_MAX: TSmallintField
      FieldName = 'GRAM2_MAX'
    end
    object sdsFichaTecnicaTPGRAM3_MIN: TSmallintField
      FieldName = 'GRAM3_MIN'
    end
    object sdsFichaTecnicaTPGRAM3_MAX: TSmallintField
      FieldName = 'GRAM3_MAX'
    end
  end
  object cdsFichaTecnicaTP: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCartoFTsdsFichaTecnicaTP
    Params = <>
    ReadOnly = True
    Left = 152
    Top = 472
    object cdsFichaTecnicaTPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFichaTecnicaTPMATERIAL1: TIntegerField
      FieldName = 'MATERIAL1'
    end
    object cdsFichaTecnicaTPMATERIAL2: TIntegerField
      FieldName = 'MATERIAL2'
    end
    object cdsFichaTecnicaTPMATERIAL3: TIntegerField
      FieldName = 'MATERIAL3'
    end
    object cdsFichaTecnicaTPFECHAMENTO: TStringField
      FieldName = 'FECHAMENTO'
      Size = 3
    end
    object cdsFichaTecnicaTPREVEST_FT: TStringField
      FieldName = 'REVEST_FT'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaTPREVEST_FT_MAT: TIntegerField
      FieldName = 'REVEST_FT_MAT'
    end
    object cdsFichaTecnicaTPREVEST_FT_BRIL: TStringField
      FieldName = 'REVEST_FT_BRIL'
      Size = 2
    end
    object cdsFichaTecnicaTPREVEST_FT_ATRITO: TStringField
      FieldName = 'REVEST_FT_ATRITO'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaTPREVEST_FT_LUZ: TStringField
      FieldName = 'REVEST_FT_LUZ'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaTPREVEST_VS: TStringField
      FieldName = 'REVEST_VS'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaTPREVEST_VS_MAT: TIntegerField
      FieldName = 'REVEST_VS_MAT'
    end
    object cdsFichaTecnicaTPREVEST_VS_BRIL: TStringField
      FieldName = 'REVEST_VS_BRIL'
      Size = 2
    end
    object cdsFichaTecnicaTPREVEST_VS_ATRITO: TStringField
      FieldName = 'REVEST_VS_ATRITO'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaTPREVEST_VS_LUZ: TStringField
      FieldName = 'REVEST_VS_LUZ'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaTPAR: TStringField
      FieldName = 'AR'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaTPAR_COMPR: TFMTBCDField
      FieldName = 'AR_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaTPAR_LARG: TFMTBCDField
      FieldName = 'AR_LARG'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaTPAR_LOCAL: TStringField
      FieldName = 'AR_LOCAL'
      Size = 2
    end
    object cdsFichaTecnicaTPBR: TStringField
      FieldName = 'BR'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaTPBR_COMPR: TFMTBCDField
      FieldName = 'BR_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaTPBR_LARG: TFMTBCDField
      FieldName = 'BR_LARG'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaTPBR_LOCAL: TStringField
      FieldName = 'BR_LOCAL'
      Size = 2
    end
    object cdsFichaTecnicaTPHS: TStringField
      FieldName = 'HS'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaTPHS_COMPR: TFMTBCDField
      FieldName = 'HS_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaTPHS_LARG: TFMTBCDField
      FieldName = 'HS_LARG'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaTPHS_LOCAL: TStringField
      FieldName = 'HS_LOCAL'
      Size = 2
    end
    object cdsFichaTecnicaTPVISOR: TStringField
      FieldName = 'VISOR'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaTPVISOR_COMPR: TFMTBCDField
      FieldName = 'VISOR_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaTPVISOR_LARG: TFMTBCDField
      FieldName = 'VISOR_LARG'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaTPVISOR_LOCAL: TStringField
      FieldName = 'VISOR_LOCAL'
      Size = 2
    end
    object cdsFichaTecnicaTPVERNIZUV: TStringField
      FieldName = 'VERNIZUV'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaTPVERNIZUV_COMPR: TFMTBCDField
      FieldName = 'VERNIZUV_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaTPVERNIZUV_LARG: TFMTBCDField
      FieldName = 'VERNIZUV_LARG'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaTPVERNIZUV_LOCAL: TStringField
      FieldName = 'VERNIZUV_LOCAL'
      Size = 2
    end
    object cdsFichaTecnicaTPPICOTE: TStringField
      FieldName = 'PICOTE'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaTPPICOTE_LOCAL: TStringField
      FieldName = 'PICOTE_LOCAL'
      Size = 2
    end
    object cdsFichaTecnicaTPPICOTE_TIPO: TStringField
      FieldName = 'PICOTE_TIPO'
      Size = 2
    end
    object cdsFichaTecnicaTPPASSAFITA: TStringField
      FieldName = 'PASSAFITA'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaTPPASSAFITA_LOCAL: TStringField
      FieldName = 'PASSAFITA_LOCAL'
      Size = 2
    end
    object cdsFichaTecnicaTPPASSAFITA_TIPO: TStringField
      FieldName = 'PASSAFITA_TIPO'
      Size = 2
    end
    object cdsFichaTecnicaTPILHOS: TStringField
      FieldName = 'ILHOS'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaTPILHOS_LOCAL: TStringField
      FieldName = 'ILHOS_LOCAL'
      Size = 2
    end
    object cdsFichaTecnicaTPALCA: TStringField
      FieldName = 'ALCA'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaTPALCA_LOCAL: TStringField
      FieldName = 'ALCA_LOCAL'
      Size = 2
    end
    object cdsFichaTecnicaTPVERNIZUV_TOTAL: TStringField
      FieldName = 'VERNIZUV_TOTAL'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaTPPINCA: TStringField
      FieldName = 'PINCA'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaTPPINCA_TAM: TFMTBCDField
      FieldName = 'PINCA_TAM'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaTPGRUPO1: TIntegerField
      FieldName = 'GRUPO1'
    end
    object cdsFichaTecnicaTPSUBGRUPO1: TIntegerField
      FieldName = 'SUBGRUPO1'
    end
    object cdsFichaTecnicaTPGRUPO2: TIntegerField
      FieldName = 'GRUPO2'
    end
    object cdsFichaTecnicaTPSUBGRUPO2: TIntegerField
      FieldName = 'SUBGRUPO2'
    end
    object cdsFichaTecnicaTPGRUPO3: TIntegerField
      FieldName = 'GRUPO3'
    end
    object cdsFichaTecnicaTPSUBGRUPO3: TIntegerField
      FieldName = 'SUBGRUPO3'
    end
    object cdsFichaTecnicaTPOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object cdsFichaTecnicaTPENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 150
    end
    object cdsFichaTecnicaTPARQUIVO_TP: TStringField
      FieldName = 'ARQUIVO_TP'
      Size = 150
    end
    object cdsFichaTecnicaTPBRANCO: TStringField
      FieldName = 'BRANCO'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaTPAREA_IMPRESSAO: TFMTBCDField
      FieldName = 'AREA_IMPRESSAO'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaTPGRAM1_MIN: TSmallintField
      FieldName = 'GRAM1_MIN'
    end
    object cdsFichaTecnicaTPGRAM1_MAX: TSmallintField
      FieldName = 'GRAM1_MAX'
    end
    object cdsFichaTecnicaTPGRAM2_MIN: TSmallintField
      FieldName = 'GRAM2_MIN'
    end
    object cdsFichaTecnicaTPGRAM2_MAX: TSmallintField
      FieldName = 'GRAM2_MAX'
    end
    object cdsFichaTecnicaTPGRAM3_MIN: TSmallintField
      FieldName = 'GRAM3_MIN'
    end
    object cdsFichaTecnicaTPGRAM3_MAX: TSmallintField
      FieldName = 'GRAM3_MAX'
    end
  end
  object dsFichaTecnicaTP: TDataSource
    DataSet = cdsFichaTecnicaTP
    Left = 208
    Top = 472
  end
  object sdsFichaTecnicaSP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT FT_SP.*'#13#10'FROM CARTO_FT_SP FT_SP'#13#10'WHERE FT_SP.ID = :ID'
    DataSource = dsmCartoFT
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 40
    Top = 520
    object sdsFichaTecnicaSPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFichaTecnicaSPMATERIAL1: TIntegerField
      FieldName = 'MATERIAL1'
    end
    object sdsFichaTecnicaSPMATERIAL2: TIntegerField
      FieldName = 'MATERIAL2'
    end
    object sdsFichaTecnicaSPMATERIAL3: TIntegerField
      FieldName = 'MATERIAL3'
    end
    object sdsFichaTecnicaSPFECHAMENTO: TStringField
      FieldName = 'FECHAMENTO'
      Size = 3
    end
    object sdsFichaTecnicaSPREVEST_FT: TStringField
      FieldName = 'REVEST_FT'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaSPREVEST_FT_MAT: TIntegerField
      FieldName = 'REVEST_FT_MAT'
    end
    object sdsFichaTecnicaSPREVEST_FT_BRIL: TStringField
      FieldName = 'REVEST_FT_BRIL'
      Size = 2
    end
    object sdsFichaTecnicaSPREVEST_FT_ATRITO: TStringField
      FieldName = 'REVEST_FT_ATRITO'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaSPREVEST_FT_LUZ: TStringField
      FieldName = 'REVEST_FT_LUZ'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaSPREVEST_VS: TStringField
      FieldName = 'REVEST_VS'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaSPREVEST_VS_MAT: TIntegerField
      FieldName = 'REVEST_VS_MAT'
    end
    object sdsFichaTecnicaSPREVEST_VS_BRIL: TStringField
      FieldName = 'REVEST_VS_BRIL'
      Size = 2
    end
    object sdsFichaTecnicaSPREVEST_VS_ATRITO: TStringField
      FieldName = 'REVEST_VS_ATRITO'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaSPREVEST_VS_LUZ: TStringField
      FieldName = 'REVEST_VS_LUZ'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaSPAR: TStringField
      FieldName = 'AR'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaSPAR_COMPR: TFMTBCDField
      FieldName = 'AR_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaSPAR_LARG: TFMTBCDField
      FieldName = 'AR_LARG'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaSPAR_LOCAL: TStringField
      FieldName = 'AR_LOCAL'
      Size = 2
    end
    object sdsFichaTecnicaSPBR: TStringField
      FieldName = 'BR'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaSPBR_COMPR: TFMTBCDField
      FieldName = 'BR_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaSPBR_LARG: TFMTBCDField
      FieldName = 'BR_LARG'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaSPBR_LOCAL: TStringField
      FieldName = 'BR_LOCAL'
      Size = 2
    end
    object sdsFichaTecnicaSPHS: TStringField
      FieldName = 'HS'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaSPHS_COMPR: TFMTBCDField
      FieldName = 'HS_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaSPHS_LARG: TFMTBCDField
      FieldName = 'HS_LARG'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaSPHS_LOCAL: TStringField
      FieldName = 'HS_LOCAL'
      Size = 2
    end
    object sdsFichaTecnicaSPVISOR: TStringField
      FieldName = 'VISOR'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaSPVISOR_COMPR: TFMTBCDField
      FieldName = 'VISOR_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaSPVISOR_LARG: TFMTBCDField
      FieldName = 'VISOR_LARG'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaSPVISOR_LOCAL: TStringField
      FieldName = 'VISOR_LOCAL'
      Size = 2
    end
    object sdsFichaTecnicaSPVERNIZUV: TStringField
      FieldName = 'VERNIZUV'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaSPVERNIZUV_COMPR: TFMTBCDField
      FieldName = 'VERNIZUV_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaSPVERNIZUV_LARG: TFMTBCDField
      FieldName = 'VERNIZUV_LARG'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaSPVERNIZUV_LOCAL: TStringField
      FieldName = 'VERNIZUV_LOCAL'
      Size = 2
    end
    object sdsFichaTecnicaSPPICOTE: TStringField
      FieldName = 'PICOTE'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaSPPICOTE_LOCAL: TStringField
      FieldName = 'PICOTE_LOCAL'
      Size = 2
    end
    object sdsFichaTecnicaSPPICOTE_TIPO: TStringField
      FieldName = 'PICOTE_TIPO'
      Size = 2
    end
    object sdsFichaTecnicaSPPASSAFITA: TStringField
      FieldName = 'PASSAFITA'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaSPPASSAFITA_LOCAL: TStringField
      FieldName = 'PASSAFITA_LOCAL'
      Size = 2
    end
    object sdsFichaTecnicaSPPASSAFITA_TIPO: TStringField
      FieldName = 'PASSAFITA_TIPO'
      Size = 2
    end
    object sdsFichaTecnicaSPILHOS: TStringField
      FieldName = 'ILHOS'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaSPILHOS_LOCAL: TStringField
      FieldName = 'ILHOS_LOCAL'
      Size = 2
    end
    object sdsFichaTecnicaSPALCA: TStringField
      FieldName = 'ALCA'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaSPALCA_LOCAL: TStringField
      FieldName = 'ALCA_LOCAL'
      Size = 2
    end
    object sdsFichaTecnicaSPVERNIZUV_TOTAL: TStringField
      FieldName = 'VERNIZUV_TOTAL'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaSPPINCA: TStringField
      FieldName = 'PINCA'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaSPPINCA_TAM: TFMTBCDField
      FieldName = 'PINCA_TAM'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaSPGRUPO1: TIntegerField
      FieldName = 'GRUPO1'
    end
    object sdsFichaTecnicaSPSUBGRUPO1: TIntegerField
      FieldName = 'SUBGRUPO1'
    end
    object sdsFichaTecnicaSPGRUPO2: TIntegerField
      FieldName = 'GRUPO2'
    end
    object sdsFichaTecnicaSPSUBGRUPO2: TIntegerField
      FieldName = 'SUBGRUPO2'
    end
    object sdsFichaTecnicaSPGRUPO3: TIntegerField
      FieldName = 'GRUPO3'
    end
    object sdsFichaTecnicaSPSUBGRUPO3: TIntegerField
      FieldName = 'SUBGRUPO3'
    end
    object sdsFichaTecnicaSPOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object sdsFichaTecnicaSPENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 150
    end
    object sdsFichaTecnicaSPARQUIVO_SP: TStringField
      FieldName = 'ARQUIVO_SP'
      Size = 150
    end
    object sdsFichaTecnicaSPBRANCO: TStringField
      FieldName = 'BRANCO'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaSPAREA_IMPRESSAO: TFMTBCDField
      FieldName = 'AREA_IMPRESSAO'
      Precision = 15
      Size = 2
    end
    object sdsFichaTecnicaSPGRAM1_MIN: TSmallintField
      FieldName = 'GRAM1_MIN'
    end
    object sdsFichaTecnicaSPGRAM1_MAX: TSmallintField
      FieldName = 'GRAM1_MAX'
    end
    object sdsFichaTecnicaSPGRAM2_MIN: TSmallintField
      FieldName = 'GRAM2_MIN'
    end
    object sdsFichaTecnicaSPGRAM2_MAX: TSmallintField
      FieldName = 'GRAM2_MAX'
    end
    object sdsFichaTecnicaSPGRAM3_MIN: TSmallintField
      FieldName = 'GRAM3_MIN'
    end
    object sdsFichaTecnicaSPGRAM3_MAX: TSmallintField
      FieldName = 'GRAM3_MAX'
    end
  end
  object cdsFichaTecnicaSP: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCartoFTsdsFichaTecnicaSP
    Params = <>
    ReadOnly = True
    Left = 152
    Top = 520
    object cdsFichaTecnicaSPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFichaTecnicaSPMATERIAL1: TIntegerField
      FieldName = 'MATERIAL1'
    end
    object cdsFichaTecnicaSPMATERIAL2: TIntegerField
      FieldName = 'MATERIAL2'
    end
    object cdsFichaTecnicaSPMATERIAL3: TIntegerField
      FieldName = 'MATERIAL3'
    end
    object cdsFichaTecnicaSPFECHAMENTO: TStringField
      FieldName = 'FECHAMENTO'
      Size = 3
    end
    object cdsFichaTecnicaSPREVEST_FT: TStringField
      FieldName = 'REVEST_FT'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaSPREVEST_FT_MAT: TIntegerField
      FieldName = 'REVEST_FT_MAT'
    end
    object cdsFichaTecnicaSPREVEST_FT_BRIL: TStringField
      FieldName = 'REVEST_FT_BRIL'
      Size = 2
    end
    object cdsFichaTecnicaSPREVEST_FT_ATRITO: TStringField
      FieldName = 'REVEST_FT_ATRITO'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaSPREVEST_FT_LUZ: TStringField
      FieldName = 'REVEST_FT_LUZ'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaSPREVEST_VS: TStringField
      FieldName = 'REVEST_VS'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaSPREVEST_VS_MAT: TIntegerField
      FieldName = 'REVEST_VS_MAT'
    end
    object cdsFichaTecnicaSPREVEST_VS_BRIL: TStringField
      FieldName = 'REVEST_VS_BRIL'
      Size = 2
    end
    object cdsFichaTecnicaSPREVEST_VS_ATRITO: TStringField
      FieldName = 'REVEST_VS_ATRITO'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaSPREVEST_VS_LUZ: TStringField
      FieldName = 'REVEST_VS_LUZ'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaSPAR: TStringField
      FieldName = 'AR'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaSPAR_COMPR: TFMTBCDField
      FieldName = 'AR_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaSPAR_LARG: TFMTBCDField
      FieldName = 'AR_LARG'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaSPAR_LOCAL: TStringField
      FieldName = 'AR_LOCAL'
      Size = 2
    end
    object cdsFichaTecnicaSPBR: TStringField
      FieldName = 'BR'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaSPBR_COMPR: TFMTBCDField
      FieldName = 'BR_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaSPBR_LARG: TFMTBCDField
      FieldName = 'BR_LARG'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaSPBR_LOCAL: TStringField
      FieldName = 'BR_LOCAL'
      Size = 2
    end
    object cdsFichaTecnicaSPHS: TStringField
      FieldName = 'HS'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaSPHS_COMPR: TFMTBCDField
      FieldName = 'HS_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaSPHS_LARG: TFMTBCDField
      FieldName = 'HS_LARG'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaSPHS_LOCAL: TStringField
      FieldName = 'HS_LOCAL'
      Size = 2
    end
    object cdsFichaTecnicaSPVISOR: TStringField
      FieldName = 'VISOR'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaSPVISOR_COMPR: TFMTBCDField
      FieldName = 'VISOR_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaSPVISOR_LARG: TFMTBCDField
      FieldName = 'VISOR_LARG'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaSPVISOR_LOCAL: TStringField
      FieldName = 'VISOR_LOCAL'
      Size = 2
    end
    object cdsFichaTecnicaSPVERNIZUV: TStringField
      FieldName = 'VERNIZUV'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaSPVERNIZUV_COMPR: TFMTBCDField
      FieldName = 'VERNIZUV_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaSPVERNIZUV_LARG: TFMTBCDField
      FieldName = 'VERNIZUV_LARG'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaSPVERNIZUV_LOCAL: TStringField
      FieldName = 'VERNIZUV_LOCAL'
      Size = 2
    end
    object cdsFichaTecnicaSPPICOTE: TStringField
      FieldName = 'PICOTE'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaSPPICOTE_LOCAL: TStringField
      FieldName = 'PICOTE_LOCAL'
      Size = 2
    end
    object cdsFichaTecnicaSPPICOTE_TIPO: TStringField
      FieldName = 'PICOTE_TIPO'
      Size = 2
    end
    object cdsFichaTecnicaSPPASSAFITA: TStringField
      FieldName = 'PASSAFITA'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaSPPASSAFITA_LOCAL: TStringField
      FieldName = 'PASSAFITA_LOCAL'
      Size = 2
    end
    object cdsFichaTecnicaSPPASSAFITA_TIPO: TStringField
      FieldName = 'PASSAFITA_TIPO'
      Size = 2
    end
    object cdsFichaTecnicaSPILHOS: TStringField
      FieldName = 'ILHOS'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaSPILHOS_LOCAL: TStringField
      FieldName = 'ILHOS_LOCAL'
      Size = 2
    end
    object cdsFichaTecnicaSPALCA: TStringField
      FieldName = 'ALCA'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaSPALCA_LOCAL: TStringField
      FieldName = 'ALCA_LOCAL'
      Size = 2
    end
    object cdsFichaTecnicaSPVERNIZUV_TOTAL: TStringField
      FieldName = 'VERNIZUV_TOTAL'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaSPPINCA: TStringField
      FieldName = 'PINCA'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaSPPINCA_TAM: TFMTBCDField
      FieldName = 'PINCA_TAM'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaSPGRUPO1: TIntegerField
      FieldName = 'GRUPO1'
    end
    object cdsFichaTecnicaSPSUBGRUPO1: TIntegerField
      FieldName = 'SUBGRUPO1'
    end
    object cdsFichaTecnicaSPGRUPO2: TIntegerField
      FieldName = 'GRUPO2'
    end
    object cdsFichaTecnicaSPSUBGRUPO2: TIntegerField
      FieldName = 'SUBGRUPO2'
    end
    object cdsFichaTecnicaSPGRUPO3: TIntegerField
      FieldName = 'GRUPO3'
    end
    object cdsFichaTecnicaSPSUBGRUPO3: TIntegerField
      FieldName = 'SUBGRUPO3'
    end
    object cdsFichaTecnicaSPOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object cdsFichaTecnicaSPENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 150
    end
    object cdsFichaTecnicaSPARQUIVO_SP: TStringField
      FieldName = 'ARQUIVO_SP'
      Size = 150
    end
    object cdsFichaTecnicaSPBRANCO: TStringField
      FieldName = 'BRANCO'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaSPAREA_IMPRESSAO: TFMTBCDField
      FieldName = 'AREA_IMPRESSAO'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaSPGRAM1_MIN: TSmallintField
      FieldName = 'GRAM1_MIN'
    end
    object cdsFichaTecnicaSPGRAM1_MAX: TSmallintField
      FieldName = 'GRAM1_MAX'
    end
    object cdsFichaTecnicaSPGRAM2_MIN: TSmallintField
      FieldName = 'GRAM2_MIN'
    end
    object cdsFichaTecnicaSPGRAM2_MAX: TSmallintField
      FieldName = 'GRAM2_MAX'
    end
    object cdsFichaTecnicaSPGRAM3_MIN: TSmallintField
      FieldName = 'GRAM3_MIN'
    end
    object cdsFichaTecnicaSPGRAM3_MAX: TSmallintField
      FieldName = 'GRAM3_MAX'
    end
  end
  object dsFichaTecnicaSP: TDataSource
    DataSet = cdsFichaTecnicaSP
    Left = 208
    Top = 520
  end
  object sdsCartoFT: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT C.* '#13#10'FROM CARTO_FT C'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 40
    Top = 376
    object sdsCartoFTID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCartoFTNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsCartoFTSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFTINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dspCartoFT: TDataSetProvider
    DataSet = sdsCartoFT
    Left = 96
    Top = 376
  end
  object cdsCartoFT: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCartoFT'
    Left = 152
    Top = 376
    object cdsCartoFTID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCartoFTNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsCartoFTSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFTsdsFichaTecnicaFD: TDataSetField
      FieldName = 'sdsFichaTecnicaFD'
    end
    object cdsCartoFTsdsFichaTecnicaSP: TDataSetField
      FieldName = 'sdsFichaTecnicaSP'
    end
    object cdsCartoFTsdsFichaTecnicaTP: TDataSetField
      FieldName = 'sdsFichaTecnicaTP'
    end
    object cdsCartoFTsdsCorFD: TDataSetField
      FieldName = 'sdsCorFD'
    end
  end
  object dsCartoFT: TDataSource
    DataSet = cdsCartoFT
    Left = 208
    Top = 376
  end
  object dsmCartoFT: TDataSource
    DataSet = sdsCartoFT
    Left = 256
    Top = 376
  end
  object dspFaca: TDataSetProvider
    DataSet = sdsFaca
    Left = 96
    Top = 208
  end
  object dsmFaca: TDataSource
    DataSet = sdsFaca
    Left = 256
    Top = 208
  end
  object sdsFacaProcesso: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT FP.*'#13#10'FROM CARTO_FACA_PROCESSO FP'#13#10'WHERE FACA_ID = :FACA_' +
      'ID'
    DataSource = dsmFaca
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FACA_ID'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 40
    Top = 264
    object sdsFacaProcessoFACA_ID: TIntegerField
      FieldName = 'FACA_ID'
      Required = True
    end
    object sdsFacaProcessoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFacaProcessoPOSICAO: TStringField
      FieldName = 'POSICAO'
      Size = 2
    end
    object sdsFacaProcessoPROCESSO_ID: TIntegerField
      FieldName = 'PROCESSO_ID'
    end
    object sdsFacaProcessoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 100
    end
  end
  object cdsFacaProcesso: TClientDataSet
    Aggregates = <>
    DataSetField = cdsFacasdsFacaProcesso
    Params = <>
    Left = 152
    Top = 264
    object cdsFacaProcessoFACA_ID: TIntegerField
      FieldName = 'FACA_ID'
      Required = True
    end
    object cdsFacaProcessoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFacaProcessoPOSICAO: TStringField
      FieldName = 'POSICAO'
      Size = 2
    end
    object cdsFacaProcessoPROCESSO_ID: TIntegerField
      FieldName = 'PROCESSO_ID'
    end
    object cdsFacaProcessoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 100
    end
  end
  object dsFacaProcesso: TDataSource
    DataSet = cdsFacaProcesso
    Left = 208
    Top = 264
  end
  object sdsCartoOrcamentoProc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT COP.*, P.DESCRICAO PROCESSO'#13#10'FROM CARTO_ORCAMENTO_PROC CO' +
      'P'#13#10'LEFT JOIN CARTO_PROCESSO P ON (COP.PROCESSO_ID = P.ID)'#13#10'WHERE' +
      ' COP.ORCAMENTO_ID = :ORCAMENTO_ID'
    DataSource = dsmCartoOrcamento
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ORCAMENTO_ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 40
    Top = 120
    object sdsCartoOrcamentoProcORCAMENTO_ID: TIntegerField
      FieldName = 'ORCAMENTO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCartoOrcamentoProcID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCartoOrcamentoProcPOSICAO: TStringField
      FieldName = 'POSICAO'
      Size = 2
    end
    object sdsCartoOrcamentoProcPROCESSO_ID: TIntegerField
      FieldName = 'PROCESSO_ID'
    end
    object sdsCartoOrcamentoProcOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object sdsCartoOrcamentoProcQTD: TIntegerField
      FieldName = 'QTD'
    end
    object sdsCartoOrcamentoProcVLR_UNIT: TFloatField
      FieldName = 'VLR_UNIT'
    end
    object sdsCartoOrcamentoProcVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsCartoOrcamentoProcPROCESSO: TStringField
      FieldName = 'PROCESSO'
      ProviderFlags = []
      Size = 50
    end
    object sdsCartoOrcamentoProcMAQUINA_ID: TIntegerField
      FieldName = 'MAQUINA_ID'
    end
    object sdsCartoOrcamentoProcDEFINIDO: TStringField
      FieldName = 'DEFINIDO'
      FixedChar = True
      Size = 1
    end
    object sdsCartoOrcamentoProcTEMPO_PROD: TFMTBCDField
      FieldName = 'TEMPO_PROD'
      Precision = 15
      Size = 2
    end
    object sdsCartoOrcamentoProcTEMPO_SETUP: TFMTBCDField
      FieldName = 'TEMPO_SETUP'
      Precision = 15
      Size = 2
    end
  end
  object cdsCartoOrcamentoProc: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCartoOrcamentosdsCartoOrcamentoProc
    Params = <>
    Left = 152
    Top = 120
    object cdsCartoOrcamentoProcORCAMENTO_ID: TIntegerField
      FieldName = 'ORCAMENTO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCartoOrcamentoProcID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCartoOrcamentoProcPOSICAO: TStringField
      FieldName = 'POSICAO'
      Size = 2
    end
    object cdsCartoOrcamentoProcPROCESSO_ID: TIntegerField
      FieldName = 'PROCESSO_ID'
    end
    object cdsCartoOrcamentoProcOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object cdsCartoOrcamentoProcQTD: TIntegerField
      FieldName = 'QTD'
    end
    object cdsCartoOrcamentoProcVLR_UNIT: TFloatField
      FieldName = 'VLR_UNIT'
      DisplayFormat = '0.00'
    end
    object cdsCartoOrcamentoProcVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsCartoOrcamentoProcPROCESSO: TStringField
      FieldName = 'PROCESSO'
      ProviderFlags = []
      Size = 50
    end
    object cdsCartoOrcamentoProcMAQUINA_ID: TIntegerField
      FieldName = 'MAQUINA_ID'
    end
    object cdsCartoOrcamentoProcDEFINIDO: TStringField
      FieldName = 'DEFINIDO'
      FixedChar = True
      Size = 1
    end
    object cdsCartoOrcamentoProcTEMPO_PROD: TFMTBCDField
      FieldName = 'TEMPO_PROD'
      Precision = 15
      Size = 2
    end
    object cdsCartoOrcamentoProcTEMPO_SETUP: TFMTBCDField
      FieldName = 'TEMPO_SETUP'
      Precision = 15
      Size = 2
    end
  end
  object dsCartoOrcamentoProc: TDataSource
    DataSet = cdsCartoOrcamentoProc
    Left = 208
    Top = 120
  end
  object sdsCartoProcesso: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CARTO_PROCESSO'#13#10'WHERE TIPO = 2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 451
    Top = 305
    object sdsCartoProcessoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCartoProcessoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object sdsCartoProcessoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object dspCartoProcesso: TDataSetProvider
    DataSet = sdsCartoProcesso
    Left = 507
    Top = 305
  end
  object cdsCartoProcesso: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCartoProcesso'
    Left = 561
    Top = 305
    object cdsCartoProcessoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCartoProcessoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsCartoProcessoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object dsCartoProcesso: TDataSource
    DataSet = cdsCartoProcesso
    Left = 619
    Top = 305
  end
  object sdsCorFD: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CC.*, C.NOME CORNOME'#13#10'FROM CARTO_FT_COR CC'#13#10'INNER JOIN CO' +
      'R C ON (CC.COR_ID = C.ID)'#13#10'WHERE CC.ID = :ID AND POSICAO = '#39'FD'#39
    DataSource = dsmCartoFT
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 376
    Top = 376
    object sdsCorFDID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCorFDITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsCorFDPOSICAO: TStringField
      FieldName = 'POSICAO'
      Required = True
      Size = 2
    end
    object sdsCorFDFRENTEVERSO: TStringField
      FieldName = 'FRENTEVERSO'
      FixedChar = True
      Size = 1
    end
    object sdsCorFDCOR_ID: TIntegerField
      FieldName = 'COR_ID'
    end
    object sdsCorFDMATERIAL_ID: TIntegerField
      FieldName = 'MATERIAL_ID'
    end
    object sdsCorFDCORNOME: TStringField
      FieldName = 'CORNOME'
      ProviderFlags = []
      Size = 45
    end
    object sdsCorFDCONSUMO: TFloatField
      FieldName = 'CONSUMO'
    end
    object sdsCorFDAREA_PERCENT: TFloatField
      FieldName = 'AREA_PERCENT'
    end
  end
  object cdsCorFD: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    Left = 408
    Top = 376
    object cdsCorFDID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCorFDITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsCorFDPOSICAO: TStringField
      FieldName = 'POSICAO'
      Required = True
      Size = 2
    end
    object cdsCorFDFRENTEVERSO: TStringField
      FieldName = 'FRENTEVERSO'
      FixedChar = True
      Size = 1
    end
    object cdsCorFDCOR_ID: TIntegerField
      FieldName = 'COR_ID'
    end
    object cdsCorFDMATERIAL_ID: TIntegerField
      FieldName = 'MATERIAL_ID'
    end
    object cdsCorFDCORNOME: TStringField
      FieldName = 'CORNOME'
      ProviderFlags = []
      Size = 45
    end
    object cdsCorFDCONSUMO: TFloatField
      FieldName = 'CONSUMO'
    end
    object cdsCorFDAREA_PERCENT: TFloatField
      FieldName = 'AREA_PERCENT'
    end
  end
  object dsCorFD: TDataSource
    DataSet = cdsCorFD
    Left = 440
    Top = 376
  end
  object sdsAcabamentoFD: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM CARTO_FT_ACAB'#13#10'WHERE POSICAO = '#39'FD'#39#13#10' AND ID = :I' +
      'D'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 451
    Top = 433
  end
  object dspAcabamentoFD: TDataSetProvider
    DataSet = sdsAcabamentoFD
    Left = 507
    Top = 433
  end
  object cdsAcabamentoFD: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAcabamentoFD'
    Left = 561
    Top = 433
    object cdsAcabamentoFDID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsAcabamentoFDPOSICAO: TStringField
      FieldName = 'POSICAO'
      Required = True
      Size = 2
    end
    object cdsAcabamentoFDITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsAcabamentoFDACAB_ID: TIntegerField
      FieldName = 'ACAB_ID'
    end
    object cdsAcabamentoFDACAB_POSICAO_ID: TStringField
      FieldName = 'ACAB_POSICAO_ID'
      Size = 2
    end
    object cdsAcabamentoFDCOMPRIMENTO: TFMTBCDField
      FieldName = 'COMPRIMENTO'
      Precision = 15
      Size = 2
    end
    object cdsAcabamentoFDLARGURA: TFMTBCDField
      FieldName = 'LARGURA'
      Precision = 15
      Size = 2
    end
    object cdsAcabamentoFDMATERIAL_ID: TIntegerField
      FieldName = 'MATERIAL_ID'
    end
    object cdsAcabamentoFDVLR: TIntegerField
      FieldName = 'VLR'
    end
    object cdsAcabamentoFDALINHAMENTO_ID: TIntegerField
      FieldName = 'ALINHAMENTO_ID'
    end
  end
  object sdsCartoAcabamento: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CARTO_ACABAMENTO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 451
    Top = 481
  end
  object dspCartoAcabamento: TDataSetProvider
    DataSet = sdsCartoAcabamento
    Left = 507
    Top = 481
  end
  object cdsCartoAcabamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCartoAcabamento'
    Left = 561
    Top = 481
    object cdsCartoAcabamentoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCartoAcabamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object sdsMaquina: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MAQUINA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 455
    Top = 537
  end
  object dspMaquina: TDataSetProvider
    DataSet = sdsMaquina
    Left = 511
    Top = 537
  end
  object cdsMaquina: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMaquina'
    Left = 565
    Top = 537
    object cdsMaquinaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMaquinaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsMaquinaVALORMERCADO: TFloatField
      FieldName = 'VALORMERCADO'
    end
    object cdsMaquinaVIDAUTIL: TSmallintField
      FieldName = 'VIDAUTIL'
    end
    object cdsMaquinaRESIDUAL: TFloatField
      FieldName = 'RESIDUAL'
    end
    object cdsMaquinaDEPRECIACAO: TFloatField
      FieldName = 'DEPRECIACAO'
    end
    object cdsMaquinaHORASPRODUTIVAS: TSmallintField
      FieldName = 'HORASPRODUTIVAS'
    end
    object cdsMaquinaVALORHORACALC: TFloatField
      FieldName = 'VALORHORACALC'
    end
    object cdsMaquinaCUSTOOPERACIONAL: TFloatField
      FieldName = 'CUSTOOPERACIONAL'
    end
    object cdsMaquinaPROD_ALTA: TIntegerField
      FieldName = 'PROD_ALTA'
    end
    object cdsMaquinaPROD_MEDIA: TIntegerField
      FieldName = 'PROD_MEDIA'
    end
    object cdsMaquinaPROD_BAIXA: TIntegerField
      FieldName = 'PROD_BAIXA'
    end
    object cdsMaquinaCORES_QTD: TSmallintField
      FieldName = 'CORES_QTD'
    end
    object cdsMaquinaFORMATO_MIN: TStringField
      FieldName = 'FORMATO_MIN'
    end
    object cdsMaquinaSETOR_ID: TIntegerField
      FieldName = 'SETOR_ID'
    end
    object cdsMaquinaDESPESA_RATEIO: TFloatField
      FieldName = 'DESPESA_RATEIO'
    end
    object cdsMaquinaLARG_MAX: TIntegerField
      FieldName = 'LARG_MAX'
    end
    object cdsMaquinaLARG_MIN: TIntegerField
      FieldName = 'LARG_MIN'
    end
    object cdsMaquinaCOMPR_MAX: TIntegerField
      FieldName = 'COMPR_MAX'
    end
    object cdsMaquinaCOMPR_MIN: TIntegerField
      FieldName = 'COMPR_MIN'
    end
    object cdsMaquinaCUSTODESPESAS: TFloatField
      FieldName = 'CUSTODESPESAS'
    end
    object cdsMaquinaVALORHORAEFETIVO: TFloatField
      FieldName = 'VALORHORAEFETIVO'
    end
    object cdsMaquinaCONSUMO: TFMTBCDField
      FieldName = 'CONSUMO'
      Precision = 15
      Size = 2
    end
    object cdsMaquinaTEMPO_MINIMO: TIntegerField
      FieldName = 'TEMPO_MINIMO'
    end
    object cdsMaquinaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsMaquinaMATERIAL_ID: TIntegerField
      FieldName = 'MATERIAL_ID'
    end
    object cdsMaquinaAJUSTE_COR_0: TIntegerField
      FieldName = 'AJUSTE_COR_0'
    end
    object cdsMaquinaAJUSTE_COR_1: TIntegerField
      FieldName = 'AJUSTE_COR_1'
    end
    object cdsMaquinaAJUSTE_COR_2_3: TIntegerField
      FieldName = 'AJUSTE_COR_2_3'
    end
    object cdsMaquinaAJUSTE_COR_4: TIntegerField
      FieldName = 'AJUSTE_COR_4'
    end
    object cdsMaquinaCOBRANCA_MIN_HORAS: TSmallintField
      FieldName = 'COBRANCA_MIN_HORAS'
    end
    object cdsMaquinaPROCESSO_ID: TIntegerField
      FieldName = 'PROCESSO_ID'
    end
  end
  object dsMaquina: TDataSource
    DataSet = cdsMaquina
    Left = 623
    Top = 537
  end
end
