object DMConsFat_Mensal: TDMConsFat_Mensal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 388
  Top = 191
  Height = 440
  Width = 503
  object sdsConsulta_Fat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT NS.ID_CLIENTE, NS.NUMNOTA, NS.FILIAL, NS.VLR_TOTAL, NS.DT' +
      'EMISSAO_CAD, NS.NUMRPS, CLI.NOME NOME_CLIENTE, CLI.CNPJ_CPF'#13#10'FRO' +
      'M NOTASERVICO NS'#13#10'INNER JOIN PESSOA CLI'#13#10'ON NS.ID_CLIENTE = CLI.' +
      'CODIGO'#13#10'WHERE NS.STATUS_RPS = '#39'1'#39#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
  end
  object dspConsulta_Fat: TDataSetProvider
    DataSet = sdsConsulta_Fat
    Left = 96
    Top = 32
  end
  object cdsConsulta_Fat: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta_Fat'
    Left = 144
    Top = 32
    object cdsConsulta_FatID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsConsulta_FatNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsConsulta_FatFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsConsulta_FatVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsConsulta_FatDTEMISSAO_CAD: TDateField
      FieldName = 'DTEMISSAO_CAD'
    end
    object cdsConsulta_FatNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsConsulta_FatCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsConsulta_FatNUMRPS: TIntegerField
      FieldName = 'NUMRPS'
    end
  end
  object dsConsulta_Fat: TDataSource
    DataSet = cdsConsulta_Fat
    Left = 192
    Top = 32
  end
  object sdsCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PESSOA'#13#10'WHERE INATIVO = '#39'N'#39#13#10'      AND TP_CLIENTE' +
      ' = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 104
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 88
    Top = 104
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCliente'
    Left = 128
    Top = 104
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
    object cdsClienteCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsClientePESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 168
    Top = 104
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FILIAL '#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 168
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 88
    Top = 168
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 128
    Top = 168
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
    Left = 168
    Top = 168
  end
end
