object DMCadCSTIpi: TDMCadCSTIpi
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 526
  Top = 244
  Height = 296
  Width = 478
  object sdsTab_CSTIpi: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CSTIpi'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsTab_CSTIpiID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTab_CSTIpiCOD_IPI: TStringField
      FieldName = 'COD_IPI'
      Size = 2
    end
    object sdsTab_CSTIpiNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsTab_CSTIpiGERAR_IPI: TStringField
      FieldName = 'GERAR_IPI'
      FixedChar = True
      Size = 1
    end
  end
  object dspTab_CSTIpi: TDataSetProvider
    DataSet = sdsTab_CSTIpi
    OnUpdateError = dspTab_CSTIpiUpdateError
    Left = 128
    Top = 32
  end
  object cdsTab_CSTIpi: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_CSTIpi'
    OnNewRecord = cdsTab_CSTIpiNewRecord
    Left = 192
    Top = 32
    object cdsTab_CSTIpiID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_CSTIpiCOD_IPI: TStringField
      DisplayLabel = 'C'#243'd. CST'
      FieldName = 'COD_IPI'
      Size = 2
    end
    object cdsTab_CSTIpiNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 50
    end
    object cdsTab_CSTIpiGERAR_IPI: TStringField
      DisplayLabel = 'Gerar IPI'
      FieldName = 'GERAR_IPI'
      FixedChar = True
      Size = 1
    end
  end
  object dsTab_CSTIpi: TDataSource
    DataSet = cdsTab_CSTIpi
    Left = 264
    Top = 32
  end
end
