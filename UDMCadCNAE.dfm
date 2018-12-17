object DMCadCNAE: TDMCadCNAE
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 392
  Top = 222
  Height = 296
  Width = 478
  object sdsCNAE: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CNAE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsCNAEID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCNAECODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object sdsCNAENOME: TStringField
      FieldName = 'NOME'
      Size = 250
    end
  end
  object dspCNAE: TDataSetProvider
    DataSet = sdsCNAE
    OnUpdateError = dspCNAEUpdateError
    Left = 128
    Top = 32
  end
  object cdsCNAE: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCNAE'
    Left = 192
    Top = 32
    object cdsCNAEID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCNAECODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object cdsCNAENOME: TStringField
      FieldName = 'NOME'
      Size = 250
    end
  end
  object dsCNAE: TDataSource
    DataSet = cdsCNAE
    Left = 264
    Top = 32
  end
end
