object DMCadTransferencia: TDMCadTransferencia
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 308
  Top = 178
  Height = 434
  Width = 751
  object sdsTransferencia: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT T.*'#13#10'FROM TRANSFERENCIA T'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsTransferenciaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTransferenciaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsTransferenciaID_CONTA_ORI: TIntegerField
      FieldName = 'ID_CONTA_ORI'
    end
    object sdsTransferenciaID_CONTA_DEST: TIntegerField
      FieldName = 'ID_CONTA_DEST'
    end
    object sdsTransferenciaVLR_MOVIMENTO: TFloatField
      FieldName = 'VLR_MOVIMENTO'
    end
    object sdsTransferenciaID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object sdsTransferenciaID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object sdsTransferenciaID_CONTA_ORC_ORIGEM: TIntegerField
      FieldName = 'ID_CONTA_ORC_ORIGEM'
    end
    object sdsTransferenciaID_CONTA_ORC_DESTINO: TIntegerField
      FieldName = 'ID_CONTA_ORC_DESTINO'
    end
    object sdsTransferenciaNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
  end
  object dspTransferencia: TDataSetProvider
    DataSet = sdsTransferencia
    OnUpdateError = dspTransferenciaUpdateError
    Left = 128
    Top = 32
  end
  object cdsTransferencia: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTransferencia'
    Left = 192
    Top = 32
    object cdsTransferenciaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTransferenciaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsTransferenciaID_CONTA_ORI: TIntegerField
      FieldName = 'ID_CONTA_ORI'
    end
    object cdsTransferenciaID_CONTA_DEST: TIntegerField
      FieldName = 'ID_CONTA_DEST'
    end
    object cdsTransferenciaVLR_MOVIMENTO: TFloatField
      FieldName = 'VLR_MOVIMENTO'
      DisplayFormat = '0.00'
    end
    object cdsTransferenciaID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object cdsTransferenciaID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsTransferenciaID_CONTA_ORC_ORIGEM: TIntegerField
      FieldName = 'ID_CONTA_ORC_ORIGEM'
    end
    object cdsTransferenciaID_CONTA_ORC_DESTINO: TIntegerField
      FieldName = 'ID_CONTA_ORC_DESTINO'
    end
    object cdsTransferenciaNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
  end
  object dsTransferencia: TDataSource
    DataSet = cdsTransferencia
    Left = 264
    Top = 32
  end
  object sdsContas: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME, TIPO_CONTA, ID_BANCO, FILIAL'#13#10'FROM CONTAS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 416
    Top = 176
    object sdsContasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsContasNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object sdsContasTIPO_CONTA: TStringField
      FieldName = 'TIPO_CONTA'
      FixedChar = True
      Size = 1
    end
    object sdsContasID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object sdsContasFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
  end
  object dspContas: TDataSetProvider
    DataSet = sdsContas
    Left = 448
    Top = 176
  end
  object cdsContas: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspContas'
    Left = 488
    Top = 176
    object cdsContasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsContasNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsContasTIPO_CONTA: TStringField
      FieldName = 'TIPO_CONTA'
      FixedChar = True
      Size = 1
    end
    object cdsContasID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object cdsContasFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
  end
  object dsContas: TDataSource
    DataSet = cdsContas
    Left = 528
    Top = 176
  end
  object sdsTransferencia_Consulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT T.*, CO.nome NOME_CONTA_ORIGEM, CD.nome NOME_CONTA_DESTIN' +
      'O'#13#10'FROM TRANSFERENCIA T'#13#10'INNER JOIN CONTAS CO'#13#10'ON T.id_conta_ori' +
      ' = CO.id'#13#10'INNER JOIN CONTAS CD'#13#10'ON T.id_conta_dest = CD.ID'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 424
    Top = 24
  end
  object dspTransferencia_Consulta: TDataSetProvider
    DataSet = sdsTransferencia_Consulta
    OnUpdateError = dspTransferenciaUpdateError
    Left = 496
    Top = 24
  end
  object cdsTransferencia_Consulta: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTransferencia_Consulta'
    Left = 560
    Top = 24
    object cdsTransferencia_ConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTransferencia_ConsultaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsTransferencia_ConsultaID_CONTA_ORI: TIntegerField
      FieldName = 'ID_CONTA_ORI'
    end
    object cdsTransferencia_ConsultaID_CONTA_DEST: TIntegerField
      FieldName = 'ID_CONTA_DEST'
    end
    object cdsTransferencia_ConsultaVLR_MOVIMENTO: TFloatField
      FieldName = 'VLR_MOVIMENTO'
      DisplayFormat = '0.00'
    end
    object cdsTransferencia_ConsultaID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object cdsTransferencia_ConsultaID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsTransferencia_ConsultaNOME_CONTA_ORIGEM: TStringField
      FieldName = 'NOME_CONTA_ORIGEM'
      Size = 30
    end
    object cdsTransferencia_ConsultaNOME_CONTA_DESTINO: TStringField
      FieldName = 'NOME_CONTA_DESTINO'
      Size = 30
    end
  end
  object dsTransferencia_Consulta: TDataSource
    DataSet = cdsTransferencia_Consulta
    Left = 632
    Top = 24
  end
  object qConta_Orcamento: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM CONTA_ORCAMENTO'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 624
    Top = 168
    object qConta_OrcamentoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qConta_OrcamentoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qConta_OrcamentoCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object qConta_OrcamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object sdsTipoCobranca: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT T.id, T.NOME, T.deposito, T.cheque, T.cartaocredito, T.ca' +
      'rtaodebito,'#13#10'T.dinheiro'#13#10'FROM TIPOCOBRANCA T'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 424
    Top = 240
  end
  object dspTipoCobranca: TDataSetProvider
    DataSet = sdsTipoCobranca
    Left = 456
    Top = 240
  end
  object cdsTipoCobranca: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspTipoCobranca'
    Left = 496
    Top = 240
    object cdsTipoCobrancaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTipoCobrancaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsTipoCobrancaDEPOSITO: TStringField
      FieldName = 'DEPOSITO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaCHEQUE: TStringField
      FieldName = 'CHEQUE'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaCARTAOCREDITO: TStringField
      FieldName = 'CARTAOCREDITO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaCARTAODEBITO: TStringField
      FieldName = 'CARTAODEBITO'
      FixedChar = True
      Size = 1
    end
    object cdsTipoCobrancaDINHEIRO: TStringField
      FieldName = 'DINHEIRO'
      FixedChar = True
      Size = 1
    end
  end
  object dsTipoCobranca: TDataSource
    DataSet = cdsTipoCobranca
    Left = 536
    Top = 240
  end
end
