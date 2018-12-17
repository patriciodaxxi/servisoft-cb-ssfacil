object dmAcabPosicao: TdmAcabPosicao
  OldCreateOrder = False
  Left = 383
  Top = 232
  Height = 300
  Width = 390
  object sdsAcabPosicao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CARTO_ACAB_POSICAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 72
    Top = 40
    object sdsAcabPosicaoID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 2
    end
    object sdsAcabPosicaoDESCRICAO: TStringField
      DisplayWidth = 50
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object sdsAcabPosicaoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object dspAcabPosicao: TDataSetProvider
    DataSet = sdsAcabPosicao
    Left = 136
    Top = 40
  end
  object cdsAcabPosicao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspAcabPosicao'
    Left = 200
    Top = 40
    object cdsAcabPosicaoID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 2
    end
    object cdsAcabPosicaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsAcabPosicaoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object dsAcabPosicao: TDataSource
    DataSet = cdsAcabPosicao
    Left = 264
    Top = 40
  end
end
