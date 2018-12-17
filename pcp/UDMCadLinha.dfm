object DMCadLinha: TDMCadLinha
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 362
  Top = 129
  Height = 577
  Width = 782
  object sdsLinha: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM LINHA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 120
    Top = 32
    object sdsLinhaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsLinhaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object sdsLinhaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object sdsLinhaID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object sdsLinhaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsLinhaINATIVA: TStringField
      FieldName = 'INATIVA'
      FixedChar = True
      Size = 1
    end
  end
  object dspLinha: TDataSetProvider
    DataSet = sdsLinha
    UpdateMode = upWhereKeyOnly
    Left = 192
    Top = 32
  end
  object cdsLinha: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspLinha'
    OnNewRecord = cdsLinhaNewRecord
    Left = 256
    Top = 32
    object cdsLinhaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLinhaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object cdsLinhaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsLinhaID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsLinhaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsLinhaINATIVA: TStringField
      FieldName = 'INATIVA'
      FixedChar = True
      Size = 1
    end
  end
  object dsLinha: TDataSource
    DataSet = cdsLinha
    Left = 328
    Top = 32
  end
  object sdsNCM: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NCM, NOME'#13#10'FROM TAB_NCM'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 464
    Top = 192
  end
  object dspNCM: TDataSetProvider
    DataSet = sdsNCM
    Left = 496
    Top = 192
  end
  object cdsNCM: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NCM'
    Params = <>
    ProviderName = 'dspNCM'
    Left = 536
    Top = 192
    object cdsNCMID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNCMNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsNCMNOME: TStringField
      FieldName = 'NOME'
      Size = 250
    end
  end
  object dsNCM: TDataSource
    DataSet = cdsNCM
    Left = 576
    Top = 192
  end
  object sdsUNIDADE: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM UNIDADE'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 466
    Top = 236
  end
  object dspUNIDADE: TDataSetProvider
    DataSet = sdsUNIDADE
    Left = 498
    Top = 236
  end
  object cdsUNIDADE: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UNIDADE'
    Params = <>
    ProviderName = 'dspUNIDADE'
    Left = 538
    Top = 236
    object cdsUNIDADEUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 6
    end
    object cdsUNIDADECONVERSOR: TFloatField
      FieldName = 'CONVERSOR'
    end
    object cdsUNIDADENOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsUNIDADE: TDataSource
    DataSet = cdsUNIDADE
    Left = 578
    Top = 236
  end
  object sdsLinha_Consulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT L.*, N.NCM'#13#10'FROM LINHA L'#13#10'LEFT JOIN TAB_NCM N'#13#10'ON L.ID_NC' +
      'M = N.id'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 24
  end
  object dspLinha_Consulta: TDataSetProvider
    DataSet = sdsLinha_Consulta
    Left = 488
    Top = 24
  end
  object cdsLinha_Consulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLinha_Consulta'
    Left = 528
    Top = 24
    object cdsLinha_ConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsLinha_ConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object cdsLinha_ConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsLinha_ConsultaID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsLinha_ConsultaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsLinha_ConsultaNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsLinha_ConsultaINATIVA: TStringField
      FieldName = 'INATIVA'
      FixedChar = True
      Size = 1
    end
  end
  object dsLinha_Consulta: TDataSource
    DataSet = cdsLinha_Consulta
    Left = 568
    Top = 24
  end
end
