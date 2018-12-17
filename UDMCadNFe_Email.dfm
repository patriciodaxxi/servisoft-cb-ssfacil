object DMCadNFe_Email: TDMCadNFe_Email
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 281
  Top = 222
  Height = 296
  Width = 478
  object sdsNFe_Email: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM NFE_EMAIL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 32
    object sdsNFe_EmailID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNFe_EmailNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsNFe_EmailEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 200
    end
  end
  object dspNFe_Email: TDataSetProvider
    DataSet = sdsNFe_Email
    OnUpdateError = dspNFe_EmailUpdateError
    Left = 160
    Top = 32
  end
  object cdsNFe_Email: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspNFe_Email'
    Left = 224
    Top = 32
    object cdsNFe_EmailID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
      Required = True
    end
    object cdsNFe_EmailNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 60
    end
    object cdsNFe_EmailEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      Size = 200
    end
  end
  object dsNFe_Email: TDataSource
    DataSet = cdsNFe_Email
    Left = 296
    Top = 32
  end
end
