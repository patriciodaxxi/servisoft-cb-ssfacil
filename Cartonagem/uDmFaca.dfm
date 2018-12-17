object dmFaca: TdmFaca
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 423
  Top = 152
  Height = 536
  Width = 501
  object dspCartoFaca: TDataSetProvider
    DataSet = sdsCartoFaca
    Options = [poCascadeDeletes]
    UpdateMode = upWhereKeyOnly
    Left = 56
    Top = 32
  end
  object sdsCartoFaca: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT CF.*, CF.ID FACA_ID'#13#10'FROM CARTO_FACA CF'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 24
    Top = 32
    object sdsCartoFacaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCartoFacaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsCartoFacaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFacaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFacaFD_COMPR: TFMTBCDField
      FieldName = 'FD_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsCartoFacaFD_LARGURA: TFMTBCDField
      FieldName = 'FD_LARGURA'
      Precision = 15
      Size = 2
    end
    object sdsCartoFacaFD_ALTURA: TFMTBCDField
      FieldName = 'FD_ALTURA'
      Precision = 15
      Size = 2
    end
    object sdsCartoFacaFD_ABA_INT_CAB: TFMTBCDField
      FieldName = 'FD_ABA_INT_CAB'
      Precision = 15
      Size = 2
    end
    object sdsCartoFacaFD_ABA_INT_LAT: TFMTBCDField
      FieldName = 'FD_ABA_INT_LAT'
      Precision = 15
      Size = 2
    end
    object sdsCartoFacaTP_ABA_EXT_CAB: TFMTBCDField
      FieldName = 'TP_ABA_EXT_CAB'
      Precision = 15
      Size = 2
    end
    object sdsCartoFacaTP_ABA_INT_CAB: TFMTBCDField
      FieldName = 'TP_ABA_INT_CAB'
      Precision = 15
      Size = 2
    end
    object sdsCartoFacaTP_ABA_EXT_LAT: TFMTBCDField
      FieldName = 'TP_ABA_EXT_LAT'
      Precision = 15
      Size = 2
    end
    object sdsCartoFacaTP_ABA_INT_LAT: TFMTBCDField
      FieldName = 'TP_ABA_INT_LAT'
      Precision = 15
      Size = 2
    end
    object sdsCartoFacaSP_COMPR: TFMTBCDField
      FieldName = 'SP_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsCartoFacaSP_LARGURA: TFMTBCDField
      FieldName = 'SP_LARGURA'
      Precision = 15
      Size = 2
    end
    object sdsCartoFacaSP_ALTURA: TFMTBCDField
      FieldName = 'SP_ALTURA'
      Precision = 15
      Size = 2
    end
    object sdsCartoFacaTP_LARGURA: TFMTBCDField
      FieldName = 'TP_LARGURA'
      Precision = 15
      Size = 2
    end
    object sdsCartoFacaTP_COMPR: TFMTBCDField
      FieldName = 'TP_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsCartoFacaTP_ALTURA: TFMTBCDField
      FieldName = 'TP_ALTURA'
      Precision = 15
      Size = 2
    end
    object sdsCartoFacaFD_DIMENSAO1: TFMTBCDField
      FieldName = 'FD_DIMENSAO1'
      Precision = 15
      Size = 2
    end
    object sdsCartoFacaFD_DIMENSAO2: TFMTBCDField
      FieldName = 'FD_DIMENSAO2'
      Precision = 15
      Size = 2
    end
    object sdsCartoFacaTP_DIMENSAO1: TFMTBCDField
      FieldName = 'TP_DIMENSAO1'
      Precision = 15
      Size = 2
    end
    object sdsCartoFacaTP_DIMENSAO2: TFMTBCDField
      FieldName = 'TP_DIMENSAO2'
      Precision = 15
      Size = 2
    end
    object sdsCartoFacaTP_TIPO_MAT: TStringField
      FieldName = 'TP_TIPO_MAT'
      Size = 2
    end
    object sdsCartoFacaSP_ABA_INT_CAB: TFMTBCDField
      FieldName = 'SP_ABA_INT_CAB'
      Precision = 15
      Size = 2
    end
    object sdsCartoFacaSP_ABA_INT_LAT: TFMTBCDField
      FieldName = 'SP_ABA_INT_LAT'
      Precision = 15
      Size = 2
    end
    object sdsCartoFacaFD_TIPO_MAT: TStringField
      FieldName = 'FD_TIPO_MAT'
      Size = 2
    end
    object sdsCartoFacaSP_TIPO_MAT: TStringField
      FieldName = 'SP_TIPO_MAT'
      Size = 2
    end
    object sdsCartoFacaSP_DIMENSAO1: TFMTBCDField
      FieldName = 'SP_DIMENSAO1'
      Precision = 15
      Size = 2
    end
    object sdsCartoFacaSP_DIMENSAO2: TFMTBCDField
      FieldName = 'SP_DIMENSAO2'
      Precision = 15
      Size = 2
    end
    object sdsCartoFacaFACA_FD: TIntegerField
      FieldName = 'FACA_FD'
    end
    object sdsCartoFacaFACA_TP: TIntegerField
      FieldName = 'FACA_TP'
    end
    object sdsCartoFacaFACA_SP: TIntegerField
      FieldName = 'FACA_SP'
    end
    object sdsCartoFacaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsCartoFacaFD_COPIAS_C: TSmallintField
      FieldName = 'FD_COPIAS_C'
    end
    object sdsCartoFacaTP_COPIAS_C: TSmallintField
      FieldName = 'TP_COPIAS_C'
    end
    object sdsCartoFacaSP_COPIAS_C: TSmallintField
      FieldName = 'SP_COPIAS_C'
    end
    object sdsCartoFacaFD_INT_L: TFMTBCDField
      FieldName = 'FD_INT_L'
      Precision = 15
      Size = 1
    end
    object sdsCartoFacaFD_INT_C: TFMTBCDField
      FieldName = 'FD_INT_C'
      Precision = 15
      Size = 1
    end
    object sdsCartoFacaTP_INT_L: TFMTBCDField
      FieldName = 'TP_INT_L'
      Precision = 15
      Size = 1
    end
    object sdsCartoFacaTP_INT_C: TFMTBCDField
      FieldName = 'TP_INT_C'
      Precision = 15
      Size = 1
    end
    object sdsCartoFacaSP_INT_L: TFMTBCDField
      FieldName = 'SP_INT_L'
      Precision = 15
      Size = 1
    end
    object sdsCartoFacaSP_INT_C: TFMTBCDField
      FieldName = 'SP_INT_C'
      Precision = 15
      Size = 1
    end
    object sdsCartoFacaFD_COPIAS_L: TSmallintField
      FieldName = 'FD_COPIAS_L'
    end
    object sdsCartoFacaTP_COPIAS_L: TSmallintField
      FieldName = 'TP_COPIAS_L'
    end
    object sdsCartoFacaSP_COPIAS_L: TSmallintField
      FieldName = 'SP_COPIAS_L'
    end
    object sdsCartoFacaFD_FIO_C: TFMTBCDField
      FieldName = 'FD_FIO_C'
      Precision = 15
      Size = 2
    end
    object sdsCartoFacaFD_FIO_L: TFMTBCDField
      FieldName = 'FD_FIO_L'
      Precision = 15
      Size = 2
    end
    object sdsCartoFacaTP_FIO_C: TFMTBCDField
      FieldName = 'TP_FIO_C'
      Precision = 15
      Size = 2
    end
    object sdsCartoFacaTP_FIO_L: TFMTBCDField
      FieldName = 'TP_FIO_L'
      Precision = 15
      Size = 2
    end
    object sdsCartoFacaSP_FIO_C: TFMTBCDField
      FieldName = 'SP_FIO_C'
      Precision = 15
      Size = 2
    end
    object sdsCartoFacaSP_FIO_L: TFMTBCDField
      FieldName = 'SP_FIO_L'
      Precision = 15
      Size = 2
    end
    object sdsCartoFacaARQUIVO_FD: TStringField
      FieldName = 'ARQUIVO_FD'
      Size = 200
    end
    object sdsCartoFacaARQUIVO_TP: TStringField
      FieldName = 'ARQUIVO_TP'
      Size = 200
    end
    object sdsCartoFacaARQUIVO_SP: TStringField
      FieldName = 'ARQUIVO_SP'
      Size = 200
    end
    object sdsCartoFacaENDERECO_FD: TStringField
      FieldName = 'ENDERECO_FD'
    end
    object sdsCartoFacaENDERECO_TP: TStringField
      FieldName = 'ENDERECO_TP'
    end
    object sdsCartoFacaENDERECO_SP: TStringField
      FieldName = 'ENDERECO_SP'
    end
    object sdsCartoFacaFECHAMENTO_FD: TStringField
      FieldName = 'FECHAMENTO_FD'
      Size = 4
    end
    object sdsCartoFacaFECHAMENTO_CT: TStringField
      FieldName = 'FECHAMENTO_CT'
      Size = 4
    end
    object sdsCartoFacaFECHAMENTO_TP: TStringField
      FieldName = 'FECHAMENTO_TP'
      Size = 4
    end
    object sdsCartoFacaFECHAMENTO_SP: TStringField
      FieldName = 'FECHAMENTO_SP'
      Size = 4
    end
    object sdsCartoFacaINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFacaDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object sdsCartoFacaFD_OBS: TStringField
      FieldName = 'FD_OBS'
      Size = 250
    end
    object sdsCartoFacaTP_OBS: TStringField
      FieldName = 'TP_OBS'
      Size = 250
    end
    object sdsCartoFacaSP_OBS: TStringField
      FieldName = 'SP_OBS'
      Size = 250
    end
    object sdsCartoFacaFD_FIBRA: TStringField
      FieldName = 'FD_FIBRA'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFacaTP_FIBRA: TStringField
      FieldName = 'TP_FIBRA'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFacaSP_FIBRA: TStringField
      FieldName = 'SP_FIBRA'
      FixedChar = True
      Size = 1
    end
    object sdsCartoFacaFACA_ID: TIntegerField
      FieldName = 'FACA_ID'
      ProviderFlags = []
      Required = True
    end
  end
  object cdsCartoFaca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCartoFaca'
    Left = 88
    Top = 32
    object cdsCartoFacaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCartoFacaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsCartoFacaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFacaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFacaFD_COMPR: TFMTBCDField
      FieldName = 'FD_COMPR'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsCartoFacaFD_LARGURA: TFMTBCDField
      FieldName = 'FD_LARGURA'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsCartoFacaFD_ALTURA: TFMTBCDField
      FieldName = 'FD_ALTURA'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsCartoFacaFD_ABA_INT_CAB: TFMTBCDField
      FieldName = 'FD_ABA_INT_CAB'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsCartoFacaFD_ABA_INT_LAT: TFMTBCDField
      FieldName = 'FD_ABA_INT_LAT'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsCartoFacaTP_ABA_EXT_CAB: TFMTBCDField
      FieldName = 'TP_ABA_EXT_CAB'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsCartoFacaTP_ABA_INT_CAB: TFMTBCDField
      FieldName = 'TP_ABA_INT_CAB'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsCartoFacaTP_ABA_EXT_LAT: TFMTBCDField
      FieldName = 'TP_ABA_EXT_LAT'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsCartoFacaTP_ABA_INT_LAT: TFMTBCDField
      FieldName = 'TP_ABA_INT_LAT'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsCartoFacaSP_COMPR: TFMTBCDField
      FieldName = 'SP_COMPR'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsCartoFacaSP_LARGURA: TFMTBCDField
      FieldName = 'SP_LARGURA'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsCartoFacaSP_ALTURA: TFMTBCDField
      FieldName = 'SP_ALTURA'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsCartoFacaTP_LARGURA: TFMTBCDField
      FieldName = 'TP_LARGURA'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsCartoFacaTP_COMPR: TFMTBCDField
      FieldName = 'TP_COMPR'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsCartoFacaTP_ALTURA: TFMTBCDField
      FieldName = 'TP_ALTURA'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsCartoFacaFD_DIMENSAO1: TFMTBCDField
      FieldName = 'FD_DIMENSAO1'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsCartoFacaFD_DIMENSAO2: TFMTBCDField
      FieldName = 'FD_DIMENSAO2'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsCartoFacaTP_DIMENSAO1: TFMTBCDField
      FieldName = 'TP_DIMENSAO1'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsCartoFacaTP_DIMENSAO2: TFMTBCDField
      FieldName = 'TP_DIMENSAO2'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsCartoFacaTP_TIPO_MAT: TStringField
      FieldName = 'TP_TIPO_MAT'
      Size = 2
    end
    object cdsCartoFacaSP_ABA_INT_CAB: TFMTBCDField
      FieldName = 'SP_ABA_INT_CAB'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsCartoFacaSP_ABA_INT_LAT: TFMTBCDField
      FieldName = 'SP_ABA_INT_LAT'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsCartoFacaFD_TIPO_MAT: TStringField
      FieldName = 'FD_TIPO_MAT'
      Size = 2
    end
    object cdsCartoFacaSP_TIPO_MAT: TStringField
      FieldName = 'SP_TIPO_MAT'
      Size = 2
    end
    object cdsCartoFacaSP_DIMENSAO1: TFMTBCDField
      FieldName = 'SP_DIMENSAO1'
      Precision = 15
      Size = 2
    end
    object cdsCartoFacaSP_DIMENSAO2: TFMTBCDField
      FieldName = 'SP_DIMENSAO2'
      Precision = 15
      Size = 2
    end
    object cdsCartoFacaFACA_FD: TIntegerField
      FieldName = 'FACA_FD'
    end
    object cdsCartoFacaFACA_TP: TIntegerField
      FieldName = 'FACA_TP'
    end
    object cdsCartoFacaFACA_SP: TIntegerField
      FieldName = 'FACA_SP'
    end
    object cdsCartoFacaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsCartoFacaFD_COPIAS_C: TSmallintField
      FieldName = 'FD_COPIAS_C'
    end
    object cdsCartoFacaTP_COPIAS_C: TSmallintField
      FieldName = 'TP_COPIAS_C'
    end
    object cdsCartoFacaSP_COPIAS_C: TSmallintField
      FieldName = 'SP_COPIAS_C'
    end
    object cdsCartoFacaFD_INT_L: TFMTBCDField
      FieldName = 'FD_INT_L'
      Precision = 15
      Size = 1
    end
    object cdsCartoFacaFD_INT_C: TFMTBCDField
      FieldName = 'FD_INT_C'
      Precision = 15
      Size = 1
    end
    object cdsCartoFacaTP_INT_L: TFMTBCDField
      FieldName = 'TP_INT_L'
      Precision = 15
      Size = 1
    end
    object cdsCartoFacaTP_INT_C: TFMTBCDField
      FieldName = 'TP_INT_C'
      Precision = 15
      Size = 1
    end
    object cdsCartoFacaSP_INT_L: TFMTBCDField
      FieldName = 'SP_INT_L'
      Precision = 15
      Size = 1
    end
    object cdsCartoFacaSP_INT_C: TFMTBCDField
      FieldName = 'SP_INT_C'
      Precision = 15
      Size = 1
    end
    object cdsCartoFacaFD_COPIAS_L: TSmallintField
      FieldName = 'FD_COPIAS_L'
    end
    object cdsCartoFacaTP_COPIAS_L: TSmallintField
      FieldName = 'TP_COPIAS_L'
    end
    object cdsCartoFacaSP_COPIAS_L: TSmallintField
      FieldName = 'SP_COPIAS_L'
    end
    object cdsCartoFacaFD_FIO_C: TFMTBCDField
      FieldName = 'FD_FIO_C'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsCartoFacaFD_FIO_L: TFMTBCDField
      FieldName = 'FD_FIO_L'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsCartoFacaTP_FIO_C: TFMTBCDField
      FieldName = 'TP_FIO_C'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsCartoFacaTP_FIO_L: TFMTBCDField
      FieldName = 'TP_FIO_L'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsCartoFacaSP_FIO_C: TFMTBCDField
      FieldName = 'SP_FIO_C'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsCartoFacaSP_FIO_L: TFMTBCDField
      FieldName = 'SP_FIO_L'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsCartoFacaARQUIVO_FD: TStringField
      FieldName = 'ARQUIVO_FD'
      Size = 200
    end
    object cdsCartoFacaARQUIVO_TP: TStringField
      FieldName = 'ARQUIVO_TP'
      Size = 200
    end
    object cdsCartoFacaARQUIVO_SP: TStringField
      FieldName = 'ARQUIVO_SP'
      Size = 200
    end
    object cdsCartoFacaENDERECO_FD: TStringField
      FieldName = 'ENDERECO_FD'
    end
    object cdsCartoFacaENDERECO_TP: TStringField
      FieldName = 'ENDERECO_TP'
    end
    object cdsCartoFacaENDERECO_SP: TStringField
      FieldName = 'ENDERECO_SP'
    end
    object cdsCartoFacaFECHAMENTO_FD: TStringField
      FieldName = 'FECHAMENTO_FD'
      Size = 4
    end
    object cdsCartoFacaFECHAMENTO_CT: TStringField
      FieldName = 'FECHAMENTO_CT'
      Size = 4
    end
    object cdsCartoFacaFECHAMENTO_TP: TStringField
      FieldName = 'FECHAMENTO_TP'
      Size = 4
    end
    object cdsCartoFacaFECHAMENTO_SP: TStringField
      FieldName = 'FECHAMENTO_SP'
      Size = 4
    end
    object cdsCartoFacaINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFacaDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object cdsCartoFacaFD_OBS: TStringField
      FieldName = 'FD_OBS'
      Size = 250
    end
    object cdsCartoFacaTP_OBS: TStringField
      FieldName = 'TP_OBS'
      Size = 250
    end
    object cdsCartoFacaSP_OBS: TStringField
      FieldName = 'SP_OBS'
      Size = 250
    end
    object cdsCartoFacaFD_FIBRA: TStringField
      FieldName = 'FD_FIBRA'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFacaTP_FIBRA: TStringField
      FieldName = 'TP_FIBRA'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFacaSP_FIBRA: TStringField
      FieldName = 'SP_FIBRA'
      FixedChar = True
      Size = 1
    end
    object cdsCartoFacasdsFacaProcesso: TDataSetField
      FieldName = 'sdsFacaProcesso'
    end
    object cdsCartoFacaFACA_ID: TIntegerField
      FieldName = 'FACA_ID'
      ProviderFlags = []
      Required = True
    end
  end
  object dsCartoFaca: TDataSource
    DataSet = cdsCartoFaca
    Left = 120
    Top = 32
  end
  object sdsFacaCons: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CF.ID, CF.NOME, FD_LARGURA, FD_COMPR, FD_ALTURA, FD_ABA_I' +
      'NT_CAB, FD_ABA_INT_LAT, TP_ABA_EXT_CAB,'#13#10'TP_ABA_INT_CAB, TP_ABA_' +
      'EXT_LAT, TP_ABA_INT_LAT, SP_COMPR, SP_LARGURA, SP_ALTURA, TP_LAR' +
      'GURA, TP_COMPR,'#13#10'TP_ALTURA, SP_ABA_INT_CAB, SP_ABA_INT_LAT, FD_T' +
      'IPO_MAT, TP_TIPO_MAT, FD_COPIAS_C, TP_COPIAS_C, SP_COPIAS_C,'#13#10'FD' +
      '_COPIAS_L, TP_COPIAS_L, SP_COPIAS_L, SP_TIPO_MAT, CF.FECHAMENTO_' +
      'FD, CF.FECHAMENTO_CT, CF.FECHAMENTO_TP,'#13#10'CF.FECHAMENTO_SP, CF.EN' +
      'DERECO_FD, CF.ENDERECO_TP, CF.ENDERECO_SP, SITUACAO, CF.INATIVO,' +
      ' CF.TIPO'#13#10'FROM CARTO_FACA CF'#13#10'WHERE 0 = 0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 256
    Top = 80
    object sdsFacaConsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFacaConsNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsFacaConsFD_LARGURA: TFMTBCDField
      FieldName = 'FD_LARGURA'
      Precision = 15
      Size = 2
    end
    object sdsFacaConsFD_COMPR: TFMTBCDField
      FieldName = 'FD_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsFacaConsFD_ALTURA: TFMTBCDField
      FieldName = 'FD_ALTURA'
      Precision = 15
      Size = 2
    end
    object sdsFacaConsFD_ABA_INT_CAB: TFMTBCDField
      FieldName = 'FD_ABA_INT_CAB'
      Precision = 15
      Size = 2
    end
    object sdsFacaConsFD_ABA_INT_LAT: TFMTBCDField
      FieldName = 'FD_ABA_INT_LAT'
      Precision = 15
      Size = 2
    end
    object sdsFacaConsTP_ABA_EXT_CAB: TFMTBCDField
      FieldName = 'TP_ABA_EXT_CAB'
      Precision = 15
      Size = 2
    end
    object sdsFacaConsTP_ABA_INT_CAB: TFMTBCDField
      FieldName = 'TP_ABA_INT_CAB'
      Precision = 15
      Size = 2
    end
    object sdsFacaConsTP_ABA_EXT_LAT: TFMTBCDField
      FieldName = 'TP_ABA_EXT_LAT'
      Precision = 15
      Size = 2
    end
    object sdsFacaConsTP_ABA_INT_LAT: TFMTBCDField
      FieldName = 'TP_ABA_INT_LAT'
      Precision = 15
      Size = 2
    end
    object sdsFacaConsSP_COMPR: TFMTBCDField
      FieldName = 'SP_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsFacaConsSP_LARGURA: TFMTBCDField
      FieldName = 'SP_LARGURA'
      Precision = 15
      Size = 2
    end
    object sdsFacaConsSP_ALTURA: TFMTBCDField
      FieldName = 'SP_ALTURA'
      Precision = 15
      Size = 2
    end
    object sdsFacaConsTP_LARGURA: TFMTBCDField
      FieldName = 'TP_LARGURA'
      Precision = 15
      Size = 2
    end
    object sdsFacaConsTP_COMPR: TFMTBCDField
      FieldName = 'TP_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsFacaConsTP_ALTURA: TFMTBCDField
      FieldName = 'TP_ALTURA'
      Precision = 15
      Size = 2
    end
    object sdsFacaConsSP_ABA_INT_CAB: TFMTBCDField
      FieldName = 'SP_ABA_INT_CAB'
      Precision = 15
      Size = 2
    end
    object sdsFacaConsSP_ABA_INT_LAT: TFMTBCDField
      FieldName = 'SP_ABA_INT_LAT'
      Precision = 15
      Size = 2
    end
    object sdsFacaConsFD_TIPO_MAT: TStringField
      FieldName = 'FD_TIPO_MAT'
      Size = 2
    end
    object sdsFacaConsTP_TIPO_MAT: TStringField
      FieldName = 'TP_TIPO_MAT'
      Size = 2
    end
    object sdsFacaConsFD_COPIAS_C: TSmallintField
      FieldName = 'FD_COPIAS_C'
    end
    object sdsFacaConsTP_COPIAS_C: TSmallintField
      FieldName = 'TP_COPIAS_C'
    end
    object sdsFacaConsSP_COPIAS_C: TSmallintField
      FieldName = 'SP_COPIAS_C'
    end
    object sdsFacaConsFD_COPIAS_L: TSmallintField
      FieldName = 'FD_COPIAS_L'
    end
    object sdsFacaConsTP_COPIAS_L: TSmallintField
      FieldName = 'TP_COPIAS_L'
    end
    object sdsFacaConsSP_COPIAS_L: TSmallintField
      FieldName = 'SP_COPIAS_L'
    end
    object sdsFacaConsSP_TIPO_MAT: TStringField
      FieldName = 'SP_TIPO_MAT'
      Size = 2
    end
    object sdsFacaConsFECHAMENTO_FD: TStringField
      FieldName = 'FECHAMENTO_FD'
      Size = 4
    end
    object sdsFacaConsFECHAMENTO_CT: TStringField
      FieldName = 'FECHAMENTO_CT'
      Size = 4
    end
    object sdsFacaConsFECHAMENTO_TP: TStringField
      FieldName = 'FECHAMENTO_TP'
      Size = 4
    end
    object sdsFacaConsFECHAMENTO_SP: TStringField
      FieldName = 'FECHAMENTO_SP'
      Size = 4
    end
    object sdsFacaConsENDERECO_FD: TStringField
      FieldName = 'ENDERECO_FD'
    end
    object sdsFacaConsENDERECO_TP: TStringField
      FieldName = 'ENDERECO_TP'
    end
    object sdsFacaConsENDERECO_SP: TStringField
      FieldName = 'ENDERECO_SP'
    end
    object sdsFacaConsSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object sdsFacaConsINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsFacaConsTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object dspFacaCons: TDataSetProvider
    DataSet = sdsFacaCons
    Left = 288
    Top = 80
  end
  object cdsFacaCons: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspFacaCons'
    OnCalcFields = cdsFacaConsCalcFields
    Left = 320
    Top = 80
    object cdsFacaConsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFacaConsNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsFacaConsFD_LARGURA: TFMTBCDField
      FieldName = 'FD_LARGURA'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFacaConsFD_COMPR: TFMTBCDField
      FieldName = 'FD_COMPR'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFacaConsFD_ALTURA: TFMTBCDField
      FieldName = 'FD_ALTURA'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFacaConsFD_ABA_INT_CAB: TFMTBCDField
      FieldName = 'FD_ABA_INT_CAB'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFacaConsFD_ABA_INT_LAT: TFMTBCDField
      FieldName = 'FD_ABA_INT_LAT'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFacaConsTP_ABA_EXT_CAB: TFMTBCDField
      FieldName = 'TP_ABA_EXT_CAB'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFacaConsTP_ABA_INT_CAB: TFMTBCDField
      FieldName = 'TP_ABA_INT_CAB'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFacaConsTP_ABA_EXT_LAT: TFMTBCDField
      FieldName = 'TP_ABA_EXT_LAT'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFacaConsTP_ABA_INT_LAT: TFMTBCDField
      FieldName = 'TP_ABA_INT_LAT'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFacaConsSP_COMPR: TFMTBCDField
      FieldName = 'SP_COMPR'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFacaConsSP_LARGURA: TFMTBCDField
      FieldName = 'SP_LARGURA'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFacaConsSP_ALTURA: TFMTBCDField
      FieldName = 'SP_ALTURA'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFacaConsTP_LARGURA: TFMTBCDField
      FieldName = 'TP_LARGURA'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFacaConsTP_COMPR: TFMTBCDField
      FieldName = 'TP_COMPR'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFacaConsTP_ALTURA: TFMTBCDField
      FieldName = 'TP_ALTURA'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFacaConsSP_ABA_INT_CAB: TFMTBCDField
      FieldName = 'SP_ABA_INT_CAB'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFacaConsSP_ABA_INT_LAT: TFMTBCDField
      FieldName = 'SP_ABA_INT_LAT'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFacaConsFD_TIPO_MAT: TStringField
      FieldName = 'FD_TIPO_MAT'
      Size = 2
    end
    object cdsFacaConsTP_TIPO_MAT: TStringField
      FieldName = 'TP_TIPO_MAT'
      Size = 2
    end
    object cdsFacaConsFD_COPIAS_C: TSmallintField
      FieldName = 'FD_COPIAS_C'
    end
    object cdsFacaConsTP_COPIAS_C: TSmallintField
      FieldName = 'TP_COPIAS_C'
    end
    object cdsFacaConsSP_COPIAS_C: TSmallintField
      FieldName = 'SP_COPIAS_C'
    end
    object cdsFacaConsFD_COPIAS_L: TSmallintField
      FieldName = 'FD_COPIAS_L'
    end
    object cdsFacaConsTP_COPIAS_L: TSmallintField
      FieldName = 'TP_COPIAS_L'
    end
    object cdsFacaConsSP_COPIAS_L: TSmallintField
      FieldName = 'SP_COPIAS_L'
    end
    object cdsFacaConsSP_TIPO_MAT: TStringField
      FieldName = 'SP_TIPO_MAT'
      Size = 2
    end
    object cdsFacaConsFECHAMENTO_FD: TStringField
      FieldName = 'FECHAMENTO_FD'
      Size = 4
    end
    object cdsFacaConsFECHAMENTO_CT: TStringField
      FieldName = 'FECHAMENTO_CT'
      Size = 4
    end
    object cdsFacaConsFECHAMENTO_TP: TStringField
      FieldName = 'FECHAMENTO_TP'
      Size = 4
    end
    object cdsFacaConsFECHAMENTO_SP: TStringField
      FieldName = 'FECHAMENTO_SP'
      Size = 4
    end
    object cdsFacaConsENDERECO_FD: TStringField
      FieldName = 'ENDERECO_FD'
    end
    object cdsFacaConsENDERECO_TP: TStringField
      FieldName = 'ENDERECO_TP'
    end
    object cdsFacaConsENDERECO_SP: TStringField
      FieldName = 'ENDERECO_SP'
    end
    object cdsFacaConsSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsFacaConsclFDTipoMat: TStringField
      FieldKind = fkCalculated
      FieldName = 'clFDTipoMat'
      Size = 25
      Calculated = True
    end
    object cdsFacaConsclTPTipoMat: TStringField
      FieldKind = fkCalculated
      FieldName = 'clTPTipoMat'
      Size = 25
      Calculated = True
    end
    object cdsFacaConsclSPTipoMat: TStringField
      FieldKind = fkCalculated
      FieldName = 'clSPTipoMat'
      Size = 25
      Calculated = True
    end
    object cdsFacaConsINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsFacaConsclCaixaTipo: TStringField
      FieldKind = fkCalculated
      FieldName = 'clCaixaTipo'
      Size = 40
      Calculated = True
    end
    object cdsFacaConsTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object dsFacaCons: TDataSource
    DataSet = cdsFacaCons
    Left = 352
    Top = 80
  end
  object sdsFacaFD: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, NOME, FD_COMPR, FD_LARGURA, FD_ALTURA, FD_ABA_INT_CAB' +
      ', FD_ABA_INT_LAT, FD_COPIAS_C, FD_COPIAS_L, FD_INT_C, FD_INT_L, ' +
      'FD_FIO_C, FD_FIO_L, FD_DIMENSAO1, FD_DIMENSAO2, FD_OBS'#13#10'FROM CAR' +
      'TO_FACA '#13#10'WHERE 0 = 0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 75
    Top = 145
    object sdsFacaFDID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFacaFDNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsFacaFDFD_COMPR: TFMTBCDField
      FieldName = 'FD_COMPR'
      Precision = 15
      Size = 2
    end
    object sdsFacaFDFD_LARGURA: TFMTBCDField
      FieldName = 'FD_LARGURA'
      Precision = 15
      Size = 2
    end
    object sdsFacaFDFD_ALTURA: TFMTBCDField
      FieldName = 'FD_ALTURA'
      Precision = 15
      Size = 2
    end
    object sdsFacaFDFD_ABA_INT_CAB: TFMTBCDField
      FieldName = 'FD_ABA_INT_CAB'
      Precision = 15
      Size = 2
    end
    object sdsFacaFDFD_ABA_INT_LAT: TFMTBCDField
      FieldName = 'FD_ABA_INT_LAT'
      Precision = 15
      Size = 2
    end
    object sdsFacaFDFD_COPIAS_C: TSmallintField
      FieldName = 'FD_COPIAS_C'
    end
    object sdsFacaFDFD_COPIAS_L: TSmallintField
      FieldName = 'FD_COPIAS_L'
    end
    object sdsFacaFDFD_INT_C: TFMTBCDField
      FieldName = 'FD_INT_C'
      Precision = 15
      Size = 1
    end
    object sdsFacaFDFD_INT_L: TFMTBCDField
      FieldName = 'FD_INT_L'
      Precision = 15
      Size = 1
    end
    object sdsFacaFDFD_FIO_C: TFMTBCDField
      FieldName = 'FD_FIO_C'
      Precision = 15
      Size = 2
    end
    object sdsFacaFDFD_FIO_L: TFMTBCDField
      FieldName = 'FD_FIO_L'
      Precision = 15
      Size = 2
    end
    object sdsFacaFDFD_DIMENSAO1: TFMTBCDField
      FieldName = 'FD_DIMENSAO1'
      Precision = 15
      Size = 2
    end
    object sdsFacaFDFD_DIMENSAO2: TFMTBCDField
      FieldName = 'FD_DIMENSAO2'
      Precision = 15
      Size = 2
    end
    object sdsFacaFDFD_OBS: TStringField
      FieldName = 'FD_OBS'
      Size = 250
    end
  end
  object dspFacaFD: TDataSetProvider
    DataSet = sdsFacaFD
    Left = 107
    Top = 145
  end
  object cdsFacaFD: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFacaFD'
    Left = 137
    Top = 145
    object cdsFacaFDID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFacaFDNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsFacaFDFD_COMPR: TFMTBCDField
      FieldName = 'FD_COMPR'
      Precision = 15
      Size = 2
    end
    object cdsFacaFDFD_LARGURA: TFMTBCDField
      FieldName = 'FD_LARGURA'
      Precision = 15
      Size = 2
    end
    object cdsFacaFDFD_ALTURA: TFMTBCDField
      FieldName = 'FD_ALTURA'
      Precision = 15
      Size = 2
    end
    object cdsFacaFDFD_ABA_INT_CAB: TFMTBCDField
      FieldName = 'FD_ABA_INT_CAB'
      Precision = 15
      Size = 2
    end
    object cdsFacaFDFD_ABA_INT_LAT: TFMTBCDField
      FieldName = 'FD_ABA_INT_LAT'
      Precision = 15
      Size = 2
    end
    object cdsFacaFDFD_COPIAS_C: TSmallintField
      FieldName = 'FD_COPIAS_C'
    end
    object cdsFacaFDFD_COPIAS_L: TSmallintField
      FieldName = 'FD_COPIAS_L'
    end
    object cdsFacaFDFD_INT_C: TFMTBCDField
      FieldName = 'FD_INT_C'
      Precision = 15
      Size = 1
    end
    object cdsFacaFDFD_INT_L: TFMTBCDField
      FieldName = 'FD_INT_L'
      Precision = 15
      Size = 1
    end
    object cdsFacaFDFD_FIO_C: TFMTBCDField
      FieldName = 'FD_FIO_C'
      Precision = 15
      Size = 2
    end
    object cdsFacaFDFD_FIO_L: TFMTBCDField
      FieldName = 'FD_FIO_L'
      Precision = 15
      Size = 2
    end
    object cdsFacaFDFD_DIMENSAO1: TFMTBCDField
      FieldName = 'FD_DIMENSAO1'
      Precision = 15
      Size = 2
    end
    object cdsFacaFDFD_DIMENSAO2: TFMTBCDField
      FieldName = 'FD_DIMENSAO2'
      Precision = 15
      Size = 2
    end
    object cdsFacaFDFD_OBS: TStringField
      FieldName = 'FD_OBS'
      Size = 250
    end
  end
  object dsFacaFD: TDataSource
    DataSet = cdsFacaFD
    Left = 171
    Top = 145
  end
  object sdsFacaTP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, TP_ABA_EXT_CAB, TP_ABA_INT_CAB, TP_ABA_EXT_LAT, TP_AB' +
      'A_INT_LAT, TP_COPIAS_C, TP_COPIAS_L, TP_INT_C, TP_INT_L, TP_FIO_' +
      'C, TP_FIO_L, TP_DIMENSAO1, TP_DIMENSAO2, TP_OBS'#13#10'FROM CARTO_FACA' +
      #13#10'WHERE 0 = 0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 75
    Top = 193
    object sdsFacaTPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFacaTPTP_ABA_EXT_CAB: TFMTBCDField
      FieldName = 'TP_ABA_EXT_CAB'
      Precision = 15
      Size = 2
    end
    object sdsFacaTPTP_ABA_INT_CAB: TFMTBCDField
      FieldName = 'TP_ABA_INT_CAB'
      Precision = 15
      Size = 2
    end
    object sdsFacaTPTP_ABA_EXT_LAT: TFMTBCDField
      FieldName = 'TP_ABA_EXT_LAT'
      Precision = 15
      Size = 2
    end
    object sdsFacaTPTP_ABA_INT_LAT: TFMTBCDField
      FieldName = 'TP_ABA_INT_LAT'
      Precision = 15
      Size = 2
    end
    object sdsFacaTPTP_COPIAS_C: TSmallintField
      FieldName = 'TP_COPIAS_C'
    end
    object sdsFacaTPTP_COPIAS_L: TSmallintField
      FieldName = 'TP_COPIAS_L'
    end
    object sdsFacaTPTP_INT_C: TFMTBCDField
      FieldName = 'TP_INT_C'
      Precision = 15
      Size = 1
    end
    object sdsFacaTPTP_INT_L: TFMTBCDField
      FieldName = 'TP_INT_L'
      Precision = 15
      Size = 1
    end
    object sdsFacaTPTP_FIO_C: TFMTBCDField
      FieldName = 'TP_FIO_C'
      Precision = 15
      Size = 2
    end
    object sdsFacaTPTP_FIO_L: TFMTBCDField
      FieldName = 'TP_FIO_L'
      Precision = 15
      Size = 2
    end
    object sdsFacaTPTP_DIMENSAO1: TFMTBCDField
      FieldName = 'TP_DIMENSAO1'
      Precision = 15
      Size = 2
    end
    object sdsFacaTPTP_DIMENSAO2: TFMTBCDField
      FieldName = 'TP_DIMENSAO2'
      Precision = 15
      Size = 2
    end
    object sdsFacaTPTP_OBS: TStringField
      FieldName = 'TP_OBS'
      Size = 250
    end
  end
  object dspFacaTP: TDataSetProvider
    DataSet = sdsFacaTP
    Left = 107
    Top = 193
  end
  object cdsFacaTP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFacaTP'
    Left = 137
    Top = 193
    object cdsFacaTPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFacaTPTP_ABA_EXT_CAB: TFMTBCDField
      FieldName = 'TP_ABA_EXT_CAB'
      Precision = 15
      Size = 2
    end
    object cdsFacaTPTP_ABA_INT_CAB: TFMTBCDField
      FieldName = 'TP_ABA_INT_CAB'
      Precision = 15
      Size = 2
    end
    object cdsFacaTPTP_ABA_EXT_LAT: TFMTBCDField
      FieldName = 'TP_ABA_EXT_LAT'
      Precision = 15
      Size = 2
    end
    object cdsFacaTPTP_ABA_INT_LAT: TFMTBCDField
      FieldName = 'TP_ABA_INT_LAT'
      Precision = 15
      Size = 2
    end
    object cdsFacaTPTP_COPIAS_C: TSmallintField
      FieldName = 'TP_COPIAS_C'
    end
    object cdsFacaTPTP_COPIAS_L: TSmallintField
      FieldName = 'TP_COPIAS_L'
    end
    object cdsFacaTPTP_INT_C: TFMTBCDField
      FieldName = 'TP_INT_C'
      Precision = 15
      Size = 1
    end
    object cdsFacaTPTP_INT_L: TFMTBCDField
      FieldName = 'TP_INT_L'
      Precision = 15
      Size = 1
    end
    object cdsFacaTPTP_FIO_C: TFMTBCDField
      FieldName = 'TP_FIO_C'
      Precision = 15
      Size = 2
    end
    object cdsFacaTPTP_FIO_L: TFMTBCDField
      FieldName = 'TP_FIO_L'
      Precision = 15
      Size = 2
    end
    object cdsFacaTPTP_DIMENSAO1: TFMTBCDField
      FieldName = 'TP_DIMENSAO1'
      Precision = 15
      Size = 2
    end
    object cdsFacaTPTP_DIMENSAO2: TFMTBCDField
      FieldName = 'TP_DIMENSAO2'
      Precision = 15
      Size = 2
    end
    object cdsFacaTPTP_OBS: TStringField
      FieldName = 'TP_OBS'
      Size = 250
    end
  end
  object dsFacaTP: TDataSource
    DataSet = cdsFacaTP
    Left = 171
    Top = 193
  end
  object sdsFacaNome: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID'#13#10'FROM CARTO_FACA'#13#10'WHERE NOME = :N1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'N1'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 75
    Top = 241
    object sdsFacaNomeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object dspFacaNome: TDataSetProvider
    DataSet = sdsFacaNome
    Left = 107
    Top = 241
  end
  object cdsFacaNome: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFacaNome'
    Left = 137
    Top = 241
    object cdsFacaNomeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object sdsCartoProcesso: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CARTO_PROCESSO'#13#10'WHERE TIPO = 2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 75
    Top = 297
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
    Left = 107
    Top = 297
  end
  object cdsCartoProcesso: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCartoProcesso'
    Left = 137
    Top = 297
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
    Left = 171
    Top = 297
  end
  object dsmCartoFaca: TDataSource
    DataSet = sdsCartoFaca
    Left = 152
    Top = 32
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 224
    Top = 232
  end
  object sdsFacaProcesso: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CFP.*, CP.DESCRICAO PROCESSO'#13#10'FROM CARTO_FACA_PROCESSO CF' +
      'P'#13#10'INNER JOIN CARTO_PROCESSO CP ON (CFP.PROCESSO_ID = CP.ID)'#13#10'WH' +
      'ERE FACA_ID = :FACA_ID'
    DataSource = dsmCartoFaca
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FACA_ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 27
    Top = 80
    object sdsFacaProcessoFACA_ID: TIntegerField
      FieldName = 'FACA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFacaProcessoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object sdsFacaProcessoPROCESSO: TStringField
      FieldName = 'PROCESSO'
      ProviderFlags = []
      Size = 50
    end
  end
  object cdsCartoFacaProcesso: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCartoFacasdsFacaProcesso
    Params = <>
    Left = 89
    Top = 80
    object cdsCartoFacaProcessoFACA_ID: TIntegerField
      FieldName = 'FACA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCartoFacaProcessoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCartoFacaProcessoPOSICAO: TStringField
      FieldName = 'POSICAO'
      Size = 2
    end
    object cdsCartoFacaProcessoPROCESSO_ID: TIntegerField
      FieldName = 'PROCESSO_ID'
    end
    object cdsCartoFacaProcessoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 100
    end
    object cdsCartoFacaProcessoPROCESSO: TStringField
      FieldName = 'PROCESSO'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsCartoFacaProcesso: TDataSource
    DataSet = cdsCartoFacaProcesso
    Left = 123
    Top = 80
  end
end
