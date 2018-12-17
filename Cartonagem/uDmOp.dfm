object dmOP: TdmOP
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 446
  Top = 116
  Height = 632
  Width = 681
  object sdsOP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT OP.*, P.NOME ACABADO, P.REFERENCIA, PE.NOME CLIENTE'#13#10'FROM' +
      ' CARTO_OP OP'#13#10'INNER JOIN PRODUTO P ON (OP.ACABADO_ID = P.ID)'#13#10'IN' +
      'NER JOIN PESSOA PE ON (OP.CLIENTE_ID = PE.CODIGO)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 40
    Top = 16
    object sdsOPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsOPDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
    end
    object sdsOPDT_ENTREGA: TDateField
      FieldName = 'DT_ENTREGA'
    end
    object sdsOPACABADO_ID: TIntegerField
      FieldName = 'ACABADO_ID'
    end
    object sdsOPQTD: TIntegerField
      FieldName = 'QTD'
    end
    object sdsOPOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
    object sdsOPCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
    end
    object sdsOPACABADO: TStringField
      FieldName = 'ACABADO'
      ProviderFlags = []
      Size = 100
    end
    object sdsOPREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      ProviderFlags = []
    end
    object sdsOPCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 60
    end
    object sdsOPOC: TStringField
      FieldName = 'OC'
    end
    object sdsOPQTD_QUEBRA: TIntegerField
      FieldName = 'QTD_QUEBRA'
    end
  end
  object dspOP: TDataSetProvider
    DataSet = sdsOP
    Left = 88
    Top = 16
  end
  object cdsOP: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOP'
    AfterInsert = cdsOPAfterInsert
    Left = 136
    Top = 16
    object cdsOPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOPDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
    end
    object cdsOPDT_ENTREGA: TDateField
      FieldName = 'DT_ENTREGA'
    end
    object cdsOPACABADO_ID: TIntegerField
      FieldName = 'ACABADO_ID'
    end
    object cdsOPQTD: TIntegerField
      FieldName = 'QTD'
    end
    object cdsOPOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
    object cdsOPCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
    end
    object cdsOPACABADO: TStringField
      FieldName = 'ACABADO'
      ProviderFlags = []
      Size = 100
    end
    object cdsOPREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      ProviderFlags = []
    end
    object cdsOPCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 60
    end
    object cdsOPOC: TStringField
      FieldName = 'OC'
    end
    object cdsOPQTD_QUEBRA: TIntegerField
      FieldName = 'QTD_QUEBRA'
    end
    object cdsOPsdsOPProcesso: TDataSetField
      FieldName = 'sdsOPProcesso'
    end
  end
  object dsOP: TDataSource
    DataSet = cdsOP
    Left = 184
    Top = 16
  end
  object sdsOPCons: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT OP.*, P.NOME ACABADO, P.REFERENCIA, PE.NOME'#13#10'FROM CARTO_O' +
      'P OP'#13#10'INNER JOIN PRODUTO P ON (OP.ACABADO_ID = P.ID)'#13#10'INNER JOIN' +
      ' PESSOA PE ON (OP.CLIENTE_ID = PE.CODIGO)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 392
    Top = 40
    object sdsOPConsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsOPConsDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
    end
    object sdsOPConsDT_ENTREGA: TDateField
      FieldName = 'DT_ENTREGA'
    end
    object sdsOPConsACABADO_ID: TIntegerField
      FieldName = 'ACABADO_ID'
    end
    object sdsOPConsQTD: TIntegerField
      FieldName = 'QTD'
    end
    object sdsOPConsOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
    object sdsOPConsACABADO: TStringField
      FieldName = 'ACABADO'
      ProviderFlags = []
      Size = 100
    end
    object sdsOPConsREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      ProviderFlags = []
    end
    object sdsOPConsCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
    end
    object sdsOPConsNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 60
    end
  end
  object dspOPCons: TDataSetProvider
    DataSet = sdsOPCons
    Left = 440
    Top = 40
  end
  object cdsOPCons: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOPCons'
    Left = 488
    Top = 40
    object cdsOPConsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOPConsDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
    end
    object cdsOPConsDT_ENTREGA: TDateField
      FieldName = 'DT_ENTREGA'
    end
    object cdsOPConsACABADO_ID: TIntegerField
      FieldName = 'ACABADO_ID'
    end
    object cdsOPConsQTD: TIntegerField
      FieldName = 'QTD'
      DisplayFormat = '#,###,##0'
    end
    object cdsOPConsOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
    object cdsOPConsACABADO: TStringField
      FieldName = 'ACABADO'
      ProviderFlags = []
      Size = 100
    end
    object cdsOPConsREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      ProviderFlags = []
    end
    object cdsOPConsCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
    end
    object cdsOPConsNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 60
    end
  end
  object dsOPCons: TDataSource
    DataSet = cdsOPCons
    Left = 536
    Top = 40
  end
  object sdsAcabado: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.ID IDP, P.REFERENCIA, P.NOME, P.INATIVO, PA.*'#13#10'FROM PRO' +
      'DUTO P'#13#10'LEFT JOIN CARTO_ACABADO PA ON (P.ID = PA.ID)'#13#10'WHERE P.IN' +
      'ATIVO <> '#39'S'#39' '#13#10'AND TIPO_REG = '#39'P'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 64
    Top = 128
    object sdsAcabadoIDP: TIntegerField
      FieldName = 'IDP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsAcabadoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsAcabadoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsAcabadoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsAcabadoID: TIntegerField
      FieldName = 'ID'
    end
    object sdsAcabadoFACA_ID: TIntegerField
      FieldName = 'FACA_ID'
    end
    object sdsAcabadoFICHA_TEC_ID: TIntegerField
      FieldName = 'FICHA_TEC_ID'
    end
    object sdsAcabadoPASTA_ID: TIntegerField
      FieldName = 'PASTA_ID'
    end
  end
  object dspAcabado: TDataSetProvider
    DataSet = sdsAcabado
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 128
  end
  object cdsAcabado: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    PacketRecords = 50
    Params = <>
    ProviderName = 'dspAcabado'
    Left = 160
    Top = 128
    object cdsAcabadoIDP: TIntegerField
      FieldName = 'IDP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsAcabadoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsAcabadoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsAcabadoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsAcabadoID: TIntegerField
      FieldName = 'ID'
    end
    object cdsAcabadoFACA_ID: TIntegerField
      FieldName = 'FACA_ID'
    end
    object cdsAcabadoFICHA_TEC_ID: TIntegerField
      FieldName = 'FICHA_TEC_ID'
    end
    object cdsAcabadoPASTA_ID: TIntegerField
      FieldName = 'PASTA_ID'
    end
    object cdsAcabadosdsFaca: TDataSetField
      FieldName = 'sdsFaca'
    end
    object cdsAcabadosdsFichaTecnica: TDataSetField
      FieldName = 'sdsFichaTecnica'
    end
    object cdsAcabadosdsFichaTecnicaFD: TDataSetField
      FieldName = 'sdsFichaTecnicaFD'
    end
    object cdsAcabadosdsFichaTecnicaSP: TDataSetField
      FieldName = 'sdsFichaTecnicaSP'
    end
    object cdsAcabadosdsFichaTecnicaTP: TDataSetField
      FieldName = 'sdsFichaTecnicaTP'
    end
    object cdsAcabadosdsFTCorFD: TDataSetField
      FieldName = 'sdsFTCorFD'
    end
    object cdsAcabadosdsAcabadoProcessoFD: TDataSetField
      FieldName = 'sdsAcabadoProcessoFD'
    end
  end
  object dsAcabado: TDataSource
    DataSet = cdsAcabado
    Left = 208
    Top = 128
  end
  object sdsCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME, FANTASIA'#13#10'FROM PESSOA'#13#10'WHERE TP_CLIENTE = '#39 +
      'S'#39' '#13#10'AND INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 40
    Top = 64
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
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 88
    Top = 64
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCliente'
    AfterInsert = cdsOPAfterInsert
    Left = 136
    Top = 64
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
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 184
    Top = 64
  end
  object dsmOP: TDataSource
    DataSet = sdsOP
    Left = 232
    Top = 16
  end
  object dsmAcabado: TDataSource
    DataSet = sdsAcabado
    Left = 256
    Top = 128
  end
  object sdsFaca: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CARTO_FACA  '#13#10'WHERE ID = :FACA_ID'#13#10
    DataSource = dsmAcabado
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FACA_ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 64
    Top = 176
    object sdsFacaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
  end
  object sdsFichaTecnica: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CARTO_FT'#13#10'WHERE ID = :FICHA_TEC_ID'
    DataSource = dsmAcabado
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FICHA_TEC_ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 64
    Top = 232
    object sdsFichaTecnicaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFichaTecnicaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsFichaTecnicaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsFaca: TClientDataSet
    Aggregates = <>
    DataSetField = cdsAcabadosdsFaca
    Params = <>
    OnCalcFields = cdsFacaCalcFields
    Left = 112
    Top = 176
    object cdsFacaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFacaFD_LARGURA: TFMTBCDField
      FieldName = 'FD_LARGURA'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFacaFD_ALTURA: TFMTBCDField
      FieldName = 'FD_ALTURA'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFacaFD_ABA_INT_CAB: TFMTBCDField
      FieldName = 'FD_ABA_INT_CAB'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFacaFD_ABA_INT_LAT: TFMTBCDField
      FieldName = 'FD_ABA_INT_LAT'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFacaTP_ABA_EXT_CAB: TFMTBCDField
      FieldName = 'TP_ABA_EXT_CAB'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFacaTP_ABA_INT_CAB: TFMTBCDField
      FieldName = 'TP_ABA_INT_CAB'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFacaTP_ABA_EXT_LAT: TFMTBCDField
      FieldName = 'TP_ABA_EXT_LAT'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFacaTP_ABA_INT_LAT: TFMTBCDField
      FieldName = 'TP_ABA_INT_LAT'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFacaSP_COMPR: TFMTBCDField
      FieldName = 'SP_COMPR'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFacaSP_LARGURA: TFMTBCDField
      FieldName = 'SP_LARGURA'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFacaSP_ALTURA: TFMTBCDField
      FieldName = 'SP_ALTURA'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFacaTP_LARGURA: TFMTBCDField
      FieldName = 'TP_LARGURA'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFacaTP_COMPR: TFMTBCDField
      FieldName = 'TP_COMPR'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFacaTP_ALTURA: TFMTBCDField
      FieldName = 'TP_ALTURA'
      DisplayFormat = '0.0'
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
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFacaSP_DIMENSAO2: TFMTBCDField
      FieldName = 'SP_DIMENSAO2'
      DisplayFormat = '0.0'
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
      DisplayFormat = '0.0'
      Precision = 15
      Size = 1
    end
    object cdsFacaFD_INT_C: TFMTBCDField
      FieldName = 'FD_INT_C'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 1
    end
    object cdsFacaTP_INT_L: TFMTBCDField
      FieldName = 'TP_INT_L'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 1
    end
    object cdsFacaTP_INT_C: TFMTBCDField
      FieldName = 'TP_INT_C'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 1
    end
    object cdsFacaSP_INT_L: TFMTBCDField
      FieldName = 'SP_INT_L'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 1
    end
    object cdsFacaSP_INT_C: TFMTBCDField
      FieldName = 'SP_INT_C'
      DisplayFormat = '0.0'
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
    object cdsFacaclFechamentoCT: TStringField
      FieldKind = fkCalculated
      FieldName = 'clFechamentoCT'
      Size = 50
      Calculated = True
    end
    object cdsFacaclFechamentoFD: TStringField
      FieldKind = fkCalculated
      FieldName = 'clFechamentoFD'
      Size = 50
      Calculated = True
    end
    object cdsFacaclMaterialFD: TStringField
      FieldKind = fkCalculated
      FieldName = 'clMaterialFD'
      Size = 30
      Calculated = True
    end
  end
  object cdsFichaTecnica: TClientDataSet
    Aggregates = <>
    DataSetField = cdsAcabadosdsFichaTecnica
    Params = <>
    Left = 112
    Top = 232
    object cdsFichaTecnicaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFichaTecnicaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsFichaTecnicaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dsFaca: TDataSource
    DataSet = cdsFaca
    Left = 160
    Top = 176
  end
  object dsFichaTecnica: TDataSource
    DataSet = cdsFichaTecnica
    Left = 160
    Top = 232
  end
  object sdsAcabadoProcessoFD: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM CARTO_ACAB_PROCESSO'#13#10'WHERE POSICAO IN ('#39'CX'#39','#39'FD'#39')' +
      ' AND ID = :IDP'
    DataSource = dsmAcabado
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDP'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 64
    Top = 464
    object sdsAcabadoProcessoFDID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsAcabadoProcessoFDPOSICAO: TStringField
      FieldName = 'POSICAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object sdsAcabadoProcessoFDITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsAcabadoProcessoFDDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
  end
  object cdsAcabadoProcessoFD: TClientDataSet
    Aggregates = <>
    DataSetField = cdsAcabadosdsAcabadoProcessoFD
    IndexFieldNames = 'ID;POSICAO;ITEM'
    Params = <>
    Left = 112
    Top = 464
    object cdsAcabadoProcessoFDID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsAcabadoProcessoFDPOSICAO: TStringField
      FieldName = 'POSICAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object cdsAcabadoProcessoFDITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsAcabadoProcessoFDDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
  end
  object dsAcabadoProcessoFD: TDataSource
    DataSet = cdsAcabadoProcessoFD
    Left = 160
    Top = 464
  end
  object sdsFTCorFD: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CC.*, C.NOME COR_NOME, C.PANTONE'#13#10'FROM CARTO_FT_COR CC'#13#10'I' +
      'NNER JOIN COR C ON (CC.COR_ID = C.ID)'#13#10'WHERE CC.POSICAO = '#39'FD'#39' A' +
      'ND CC.ID = :FICHA_TEC_ID'
    DataSource = dsmAcabado
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FICHA_TEC_ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 64
    Top = 520
    object sdsFTCorFDID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFTCorFDITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsFTCorFDPOSICAO: TStringField
      FieldName = 'POSICAO'
      Required = True
      Size = 2
    end
    object sdsFTCorFDFRENTEVERSO: TStringField
      FieldName = 'FRENTEVERSO'
      FixedChar = True
      Size = 1
    end
    object sdsFTCorFDCOR_ID: TIntegerField
      FieldName = 'COR_ID'
    end
    object sdsFTCorFDMATERIAL_ID: TIntegerField
      FieldName = 'MATERIAL_ID'
    end
    object sdsFTCorFDCONSUMO: TFloatField
      FieldName = 'CONSUMO'
    end
    object sdsFTCorFDAREA_PERCENT: TFloatField
      FieldName = 'AREA_PERCENT'
    end
    object sdsFTCorFDCOR_NOME: TStringField
      FieldName = 'COR_NOME'
      Size = 45
    end
    object sdsFTCorFDPANTONE: TStringField
      FieldName = 'PANTONE'
      Size = 15
    end
  end
  object cdsFTCorFD: TClientDataSet
    Aggregates = <>
    DataSetField = cdsAcabadosdsFTCorFD
    Params = <>
    Left = 112
    Top = 520
    object cdsFTCorFDID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFTCorFDITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsFTCorFDPOSICAO: TStringField
      FieldName = 'POSICAO'
      Required = True
      Size = 2
    end
    object cdsFTCorFDFRENTEVERSO: TStringField
      FieldName = 'FRENTEVERSO'
      FixedChar = True
      Size = 1
    end
    object cdsFTCorFDCOR_ID: TIntegerField
      FieldName = 'COR_ID'
    end
    object cdsFTCorFDMATERIAL_ID: TIntegerField
      FieldName = 'MATERIAL_ID'
    end
    object cdsFTCorFDCONSUMO: TFloatField
      FieldName = 'CONSUMO'
    end
    object cdsFTCorFDAREA_PERCENT: TFloatField
      FieldName = 'AREA_PERCENT'
    end
    object cdsFTCorFDCOR_NOME: TStringField
      FieldName = 'COR_NOME'
      Size = 45
    end
    object cdsFTCorFDPANTONE: TStringField
      FieldName = 'PANTONE'
      Size = 15
    end
  end
  object dsFTCorFD: TDataSource
    DataSet = cdsFTCorFD
    Left = 160
    Top = 520
  end
  object sdsFichaTecnicaFD: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT FFD.*, CAPAR.DESCRICAO POSAR, CAPBR.DESCRICAO POSBR, CAPH' +
      'S.DESCRICAO POSHS, CAPVS.DESCRICAO POSVS, CAPUV.DESCRICAO POSUV,' +
      ' CAPPIC.DESCRICAO POSPIC, CAPAL.DESCRICAO POSAL, CAPIL.DESCRICAO' +
      ' POSIL, CAPPF.DESCRICAO POSPF, MAT1.NOME MAT_NOME1, MAT2.NOME MA' +
      'T_NOME2, MAT3.NOME MAT_NOME3'#13#10'FROM CARTO_FT_FD FFD'#13#10'LEFT JOIN CA' +
      'RTO_ACAB_POSICAO CAPAR ON (FFD.AR_LOCAL = CAPAR.ID)'#13#10'LEFT JOIN C' +
      'ARTO_ACAB_POSICAO CAPBR ON (FFD.BR_LOCAL = CAPBR.ID)'#13#10'LEFT JOIN ' +
      'CARTO_ACAB_POSICAO CAPHS ON (FFD.HS_LOCAL = CAPHS.ID)'#13#10'LEFT JOIN' +
      ' CARTO_ACAB_POSICAO CAPVS ON (FFD.VISOR_LOCAL = CAPVS.ID)'#13#10'LEFT ' +
      'JOIN CARTO_ACAB_POSICAO CAPUV ON (FFD.VERNIZUV_LOCAL = CAPUV.ID)' +
      #13#10'LEFT JOIN CARTO_ACAB_POSICAO CAPPIC ON (FFD.PICOTE_LOCAL = CAP' +
      'PIC.ID)'#13#10'LEFT JOIN CARTO_ACAB_POSICAO CAPAL ON (FFD.ALCA_LOCAL =' +
      ' CAPAL.ID)'#13#10'LEFT JOIN CARTO_ACAB_POSICAO CAPIL ON (FFD.ILHOS_LOC' +
      'AL = CAPIL.ID)'#13#10'LEFT JOIN CARTO_ACAB_POSICAO CAPPF ON (FFD.PASSA' +
      'FITA_LOCAL = CAPPF.ID)'#13#10'LEFT JOIN PRODUTO MAT1 ON (FFD.MATERIAL1' +
      ' = MAT1.ID)'#13#10'LEFT JOIN PRODUTO MAT2 ON (FFD.MATERIAL2 = MAT2.ID)' +
      #13#10'LEFT JOIN PRODUTO MAT3 ON (FFD.MATERIAL3 = MAT2.ID)'#13#10'WHERE FFD' +
      '.ID = :FICHA_TEC_ID'
    DataSource = dsmAcabado
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FICHA_TEC_ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 96
    Top = 288
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
    object sdsFichaTecnicaFDPICOTE: TStringField
      FieldName = 'PICOTE'
      FixedChar = True
      Size = 1
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
    object sdsFichaTecnicaFDPASSAFITA_TIPO: TStringField
      FieldName = 'PASSAFITA_TIPO'
      Size = 2
    end
    object sdsFichaTecnicaFDILHOS: TStringField
      FieldName = 'ILHOS'
      FixedChar = True
      Size = 1
    end
    object sdsFichaTecnicaFDALCA: TStringField
      FieldName = 'ALCA'
      FixedChar = True
      Size = 1
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
    object sdsFichaTecnicaFDPOSAR: TStringField
      FieldName = 'POSAR'
      ProviderFlags = []
      Size = 50
    end
    object sdsFichaTecnicaFDPOSBR: TStringField
      FieldName = 'POSBR'
      ProviderFlags = []
      Size = 50
    end
    object sdsFichaTecnicaFDPOSHS: TStringField
      FieldName = 'POSHS'
      ProviderFlags = []
      Size = 50
    end
    object sdsFichaTecnicaFDPOSVS: TStringField
      FieldName = 'POSVS'
      ProviderFlags = []
      Size = 50
    end
    object sdsFichaTecnicaFDPOSUV: TStringField
      FieldName = 'POSUV'
      ProviderFlags = []
      Size = 50
    end
    object sdsFichaTecnicaFDPOSPIC: TStringField
      FieldName = 'POSPIC'
      ProviderFlags = []
      Size = 50
    end
    object sdsFichaTecnicaFDPOSAL: TStringField
      FieldName = 'POSAL'
      ProviderFlags = []
      Size = 50
    end
    object sdsFichaTecnicaFDPOSIL: TStringField
      FieldName = 'POSIL'
      ProviderFlags = []
      Size = 50
    end
    object sdsFichaTecnicaFDPOSPF: TStringField
      FieldName = 'POSPF'
      ProviderFlags = []
      Size = 50
    end
    object sdsFichaTecnicaFDMAT_NOME1: TStringField
      FieldName = 'MAT_NOME1'
      ProviderFlags = []
      Size = 100
    end
    object sdsFichaTecnicaFDMAT_NOME2: TStringField
      FieldName = 'MAT_NOME2'
      ProviderFlags = []
      Size = 100
    end
    object sdsFichaTecnicaFDMAT_NOME3: TStringField
      FieldName = 'MAT_NOME3'
      ProviderFlags = []
      Size = 100
    end
  end
  object cdsFichaTecnicaFD: TClientDataSet
    Aggregates = <>
    DataSetField = cdsAcabadosdsFichaTecnicaFD
    Params = <>
    OnCalcFields = cdsFichaTecnicaFDCalcFields
    Left = 144
    Top = 288
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
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaFDAR_LARG: TFMTBCDField
      FieldName = 'AR_LARG'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaFDBR: TStringField
      FieldName = 'BR'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaFDBR_COMPR: TFMTBCDField
      FieldName = 'BR_COMPR'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaFDBR_LARG: TFMTBCDField
      FieldName = 'BR_LARG'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaFDHS: TStringField
      FieldName = 'HS'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaFDHS_COMPR: TFMTBCDField
      FieldName = 'HS_COMPR'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaFDHS_LARG: TFMTBCDField
      FieldName = 'HS_LARG'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaFDVISOR: TStringField
      FieldName = 'VISOR'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaFDVISOR_COMPR: TFMTBCDField
      FieldName = 'VISOR_COMPR'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaFDVISOR_LARG: TFMTBCDField
      FieldName = 'VISOR_LARG'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaFDVERNIZUV: TStringField
      FieldName = 'VERNIZUV'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaFDVERNIZUV_COMPR: TFMTBCDField
      FieldName = 'VERNIZUV_COMPR'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaFDVERNIZUV_LARG: TFMTBCDField
      FieldName = 'VERNIZUV_LARG'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 2
    end
    object cdsFichaTecnicaFDPICOTE: TStringField
      FieldName = 'PICOTE'
      FixedChar = True
      Size = 1
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
    object cdsFichaTecnicaFDPASSAFITA_TIPO: TStringField
      FieldName = 'PASSAFITA_TIPO'
      Size = 2
    end
    object cdsFichaTecnicaFDILHOS: TStringField
      FieldName = 'ILHOS'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaFDALCA: TStringField
      FieldName = 'ALCA'
      FixedChar = True
      Size = 1
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
    object cdsFichaTecnicaFDclRevestFT: TStringField
      FieldKind = fkCalculated
      FieldName = 'clRevestFT'
      Size = 30
      Calculated = True
    end
    object cdsFichaTecnicaFDclRevestVS: TStringField
      FieldKind = fkCalculated
      FieldName = 'clRevestVS'
      Size = 30
      Calculated = True
    end
    object cdsFichaTecnicaFDclRevestFTBrilho: TStringField
      FieldKind = fkCalculated
      FieldName = 'clRevestFTBrilho'
      Size = 15
      Calculated = True
    end
    object cdsFichaTecnicaFDclRevestVSBrilho: TStringField
      FieldKind = fkCalculated
      FieldName = 'clRevestVSBrilho'
      Size = 15
      Calculated = True
    end
    object cdsFichaTecnicaFDclFuro: TStringField
      FieldKind = fkCalculated
      FieldName = 'clFuro'
      Size = 10
      Calculated = True
    end
    object cdsFichaTecnicaFDclPassaFitaTipo: TStringField
      FieldKind = fkCalculated
      FieldName = 'clPassaFitaTipo'
      Size = 10
      Calculated = True
    end
    object cdsFichaTecnicaFDclPicoteTipo: TStringField
      FieldKind = fkCalculated
      FieldName = 'clPicoteTipo'
      Size = 10
      Calculated = True
    end
    object cdsFichaTecnicaFDFURO_CABECEIRA: TStringField
      FieldName = 'FURO_CABECEIRA'
      FixedChar = True
      Size = 1
    end
    object cdsFichaTecnicaFDPOSAR: TStringField
      FieldName = 'POSAR'
      ProviderFlags = []
      Size = 50
    end
    object cdsFichaTecnicaFDPOSBR: TStringField
      FieldName = 'POSBR'
      ProviderFlags = []
      Size = 50
    end
    object cdsFichaTecnicaFDPOSHS: TStringField
      FieldName = 'POSHS'
      ProviderFlags = []
      Size = 50
    end
    object cdsFichaTecnicaFDPOSVS: TStringField
      FieldName = 'POSVS'
      ProviderFlags = []
      Size = 50
    end
    object cdsFichaTecnicaFDPOSUV: TStringField
      FieldName = 'POSUV'
      ProviderFlags = []
      Size = 50
    end
    object cdsFichaTecnicaFDPOSPIC: TStringField
      FieldName = 'POSPIC'
      ProviderFlags = []
      Size = 50
    end
    object cdsFichaTecnicaFDPOSAL: TStringField
      FieldName = 'POSAL'
      ProviderFlags = []
      Size = 50
    end
    object cdsFichaTecnicaFDPOSIL: TStringField
      FieldName = 'POSIL'
      ProviderFlags = []
      Size = 50
    end
    object cdsFichaTecnicaFDPOSPF: TStringField
      FieldName = 'POSPF'
      ProviderFlags = []
      Size = 50
    end
    object cdsFichaTecnicaFDMAT_NOME1: TStringField
      FieldName = 'MAT_NOME1'
      ProviderFlags = []
      Size = 100
    end
    object cdsFichaTecnicaFDMAT_NOME2: TStringField
      FieldName = 'MAT_NOME2'
      ProviderFlags = []
      Size = 100
    end
    object cdsFichaTecnicaFDMAT_NOME3: TStringField
      FieldName = 'MAT_NOME3'
      ProviderFlags = []
      Size = 100
    end
  end
  object dsFichaTecnicaFD: TDataSource
    DataSet = cdsFichaTecnicaFD
    Left = 192
    Top = 288
  end
  object sdsFichaTecnicaTP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CARTO_FT_TP'#13#10'WHERE ID = :FICHA_TEC_ID'
    DataSource = dsmAcabado
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FICHA_TEC_ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 96
    Top = 336
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
  end
  object cdsFichaTecnicaTP: TClientDataSet
    Aggregates = <>
    DataSetField = cdsAcabadosdsFichaTecnicaTP
    Params = <>
    Left = 144
    Top = 336
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
  end
  object dsFichaTecnicaTP: TDataSource
    DataSet = cdsFichaTecnicaTP
    Left = 192
    Top = 336
  end
  object sdsFichaTecnicaSP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CARTO_FT_SP'#13#10'WHERE ID = :FICHA_TEC_ID'
    DataSource = dsmAcabado
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FICHA_TEC_ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 96
    Top = 384
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
  end
  object cdsFichaTecnicaSP: TClientDataSet
    Aggregates = <>
    DataSetField = cdsAcabadosdsFichaTecnicaSP
    Params = <>
    Left = 144
    Top = 384
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
  end
  object dsFichaTecnicaSP: TDataSource
    DataSet = cdsFichaTecnicaSP
    Left = 192
    Top = 384
  end
  object sdsAcabadoCons: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.ID IDP, P.REFERENCIA, P.NOME, P.INATIVO'#13#10'FROM PRODUTO P' +
      #13#10'WHERE P.INATIVO <> '#39'S'#39' '#13#10'AND TIPO_REG = '#39'P'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 392
    Top = 88
    object sdsAcabadoConsIDP: TIntegerField
      FieldName = 'IDP'
      Required = True
    end
    object sdsAcabadoConsREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsAcabadoConsNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsAcabadoConsINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dspAcabadoCons: TDataSetProvider
    DataSet = sdsAcabadoCons
    Left = 440
    Top = 88
  end
  object cdsAcabadoCons: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAcabadoCons'
    Left = 488
    Top = 88
    object cdsAcabadoConsIDP: TIntegerField
      FieldName = 'IDP'
      Required = True
    end
    object cdsAcabadoConsREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsAcabadoConsNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsAcabadoConsINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dsAcabadoCons: TDataSource
    DataSet = cdsAcabadoCons
    Left = 536
    Top = 88
  end
  object sdsOPProcesso: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT OPP.*'#13#10'FROM CARTO_OP_PROCESSO OPP'#13#10'WHERE ID = :ID'
    DataSource = dsmOP
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DmDatabase.scoDados
    Left = 392
    Top = 176
    object sdsOPProcessoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsOPProcessoPOSICAO: TStringField
      FieldName = 'POSICAO'
      Required = True
      Size = 2
    end
    object sdsOPProcessoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsOPProcessoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object sdsOPProcessoTEMPO_SETUP: TSmallintField
      FieldName = 'TEMPO_SETUP'
    end
    object sdsOPProcessoTEMPO_EXECUCAO: TSmallintField
      FieldName = 'TEMPO_EXECUCAO'
    end
    object sdsOPProcessoQUEBRA: TSmallintField
      FieldName = 'QUEBRA'
    end
  end
  object cdsOPProcesso: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = cdsOPsdsOPProcesso
    Params = <>
    Left = 440
    Top = 176
    object cdsOPProcessoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOPProcessoPOSICAO: TStringField
      FieldName = 'POSICAO'
      Required = True
      Size = 2
    end
    object cdsOPProcessoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsOPProcessoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object cdsOPProcessoTEMPO_SETUP: TSmallintField
      FieldName = 'TEMPO_SETUP'
    end
    object cdsOPProcessoTEMPO_EXECUCAO: TSmallintField
      FieldName = 'TEMPO_EXECUCAO'
    end
    object cdsOPProcessoQUEBRA: TSmallintField
      FieldName = 'QUEBRA'
    end
  end
  object dsOPProcesso: TDataSource
    DataSet = cdsOPProcesso
    Left = 488
    Top = 176
  end
end
