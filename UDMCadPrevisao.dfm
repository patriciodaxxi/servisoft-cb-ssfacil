object DMCadPrevisao: TDMCadPrevisao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 281
  Top = 222
  Height = 344
  Width = 897
  object sdsPrevisao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PR.*, CC.DESCRICAO NOME_CENTROCUSTO, PES.NOME NOME_PESSOA' +
      #13#10'FROM PREVISAO PR'#13#10'INNER JOIN CENTROCUSTO CC'#13#10'ON PR.ID_CENTRO_C' +
      'USTO = CC.ID'#13#10'INNER JOIN PESSOA PES'#13#10'ON PR.ID_PESSOA = PES.CODIG' +
      'O'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsPrevisaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPrevisaoID_CENTRO_CUSTO: TIntegerField
      FieldName = 'ID_CENTRO_CUSTO'
    end
    object sdsPrevisaoID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object sdsPrevisaoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object sdsPrevisaoVLR_PREVISAO: TFloatField
      FieldName = 'VLR_PREVISAO'
    end
    object sdsPrevisaoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsPrevisaoNOME_CENTROCUSTO: TStringField
      FieldName = 'NOME_CENTROCUSTO'
      ProviderFlags = []
      Size = 50
    end
    object sdsPrevisaoNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      ProviderFlags = []
      Size = 60
    end
  end
  object dspPrevisao: TDataSetProvider
    DataSet = sdsPrevisao
    OnUpdateError = dspPrevisaoUpdateError
    Left = 128
    Top = 32
  end
  object cdsPrevisao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspPrevisao'
    OnNewRecord = cdsPrevisaoNewRecord
    Left = 200
    Top = 32
    object cdsPrevisaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPrevisaoID_CENTRO_CUSTO: TIntegerField
      FieldName = 'ID_CENTRO_CUSTO'
    end
    object cdsPrevisaoID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsPrevisaoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsPrevisaoVLR_PREVISAO: TFloatField
      FieldName = 'VLR_PREVISAO'
      DisplayFormat = '0.00'
    end
    object cdsPrevisaoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsPrevisaoNOME_CENTROCUSTO: TStringField
      FieldName = 'NOME_CENTROCUSTO'
      ProviderFlags = []
      Size = 50
    end
    object cdsPrevisaoNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      ProviderFlags = []
      Size = 60
    end
  end
  object dsPrevisao: TDataSource
    DataSet = cdsPrevisao
    Left = 264
    Top = 32
  end
  object sdsCentroCusto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CENTROCUSTO'#13#10'WHERE TIPO = '#39'A'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 32
    object sdsCentroCustoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCentroCustoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsCentroCustoCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object sdsCentroCustoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object dspCentroCusto: TDataSetProvider
    DataSet = sdsCentroCusto
    OnUpdateError = dspPrevisaoUpdateError
    Left = 560
    Top = 32
  end
  object cdsCentroCusto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'DESCRICAO'
    Params = <>
    ProviderName = 'dspCentroCusto'
    Left = 632
    Top = 32
    object cdsCentroCustoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCentroCustoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsCentroCustoCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsCentroCustoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object dsCentroCusto: TDataSource
    DataSet = cdsCentroCusto
    Left = 696
    Top = 32
  end
  object sdsPessoa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PESSOA'#13#10'WHERE INATIVO = '#39'N'#39#13#10'  AND TP_FORNECEDOR ' +
      '= '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 104
    object sdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsPessoaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
  end
  object dspPessoa: TDataSetProvider
    DataSet = sdsPessoa
    OnUpdateError = dspPrevisaoUpdateError
    Left = 560
    Top = 104
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspPessoa'
    Left = 632
    Top = 104
    object cdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsPessoaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
  end
  object dsPessoa: TDataSource
    DataSet = cdsPessoa
    Left = 696
    Top = 104
  end
end
