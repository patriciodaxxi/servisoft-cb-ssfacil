object dmCor: TdmCor
  OldCreateOrder = False
  Left = 528
  Top = 158
  Height = 320
  Width = 415
  object sdsCor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * '#13#10'FROM COR'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.scoDados
    Left = 48
    Top = 40
    object sdsCorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCorNOME: TStringField
      FieldName = 'NOME'
      Size = 45
    end
    object sdsCorPANTONE: TStringField
      FieldName = 'PANTONE'
      Size = 15
    end
  end
  object dspCor: TDataSetProvider
    DataSet = sdsCor
    Left = 96
    Top = 40
  end
  object cdsCor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCor'
    Left = 144
    Top = 40
    object cdsCorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCorNOME: TStringField
      FieldName = 'NOME'
      Size = 45
    end
    object cdsCorPANTONE: TStringField
      FieldName = 'PANTONE'
      Size = 15
    end
  end
  object dsCor: TDataSource
    DataSet = cdsCor
    Left = 192
    Top = 40
  end
end
