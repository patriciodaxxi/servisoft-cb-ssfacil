object DMCadObs_Lei: TDMCadObs_Lei
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 302
  Top = 245
  Height = 239
  Width = 637
  object sdsObs_Lei: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM OBS_LEI'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 32
    object sdsObs_LeiID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsObs_LeiNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsObs_LeiOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
  end
  object dspObs_Lei: TDataSetProvider
    DataSet = sdsObs_Lei
    OnUpdateError = dspObs_LeiUpdateError
    Left = 160
    Top = 32
  end
  object cdsObs_Lei: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspObs_Lei'
    Left = 224
    Top = 32
    object cdsObs_LeiID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsObs_LeiNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsObs_LeiOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
  end
  object dsObs_Lei: TDataSource
    DataSet = cdsObs_Lei
    Left = 296
    Top = 32
  end
end
