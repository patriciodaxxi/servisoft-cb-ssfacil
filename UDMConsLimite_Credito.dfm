object DMConsLimite_Credito: TDMConsLimite_Credito
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 307
  Top = 234
  Height = 269
  Width = 479
  object sdsCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME, FANTASIA, VLR_LIMITE_CREDITO'#13#10'FROM PESSOA'#13#10 +
      'WHERE INATIVO = '#39'N'#39#13#10'   AND TP_CLIENTE = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 64
    Top = 48
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 120
    Top = 48
  end
  object cdsCliete: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCliente'
    Left = 176
    Top = 48
    object cdsClieteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsClieteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsClieteFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsClieteVLR_LIMITE_CREDITO: TFloatField
      FieldName = 'VLR_LIMITE_CREDITO'
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliete
    Left = 224
    Top = 48
  end
end
