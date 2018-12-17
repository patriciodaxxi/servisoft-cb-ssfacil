object dmAcabamento: TdmAcabamento
  OldCreateOrder = False
  Left = 528
  Top = 158
  Height = 320
  Width = 415
  object sdsAcabamento: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * '#13#10'FROM CARTO_ACABAMENTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 48
    Top = 40
    object sdsAcabamentoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsAcabamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object dspAcabamento: TDataSetProvider
    DataSet = sdsAcabamento
    Left = 96
    Top = 40
  end
  object cdsAcabamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAcabamento'
    Left = 144
    Top = 40
    object cdsAcabamentoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsAcabamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object dsAcabamento: TDataSource
    DataSet = cdsAcabamento
    Left = 192
    Top = 40
  end
end
