object dmPasta: TdmPasta
  OldCreateOrder = False
  Left = 318
  Top = 124
  Height = 320
  Width = 415
  object sdsPasta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * '#13#10'FROM CARTO_PASTA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 48
    Top = 40
    object sdsPastaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPastaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object dspPasta: TDataSetProvider
    DataSet = sdsPasta
    Left = 96
    Top = 40
  end
  object cdsPasta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPasta'
    Left = 144
    Top = 40
    object cdsPastaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPastaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object dsPasta: TDataSource
    DataSet = cdsPasta
    Left = 192
    Top = 40
  end
end
