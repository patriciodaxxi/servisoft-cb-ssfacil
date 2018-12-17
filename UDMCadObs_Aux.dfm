object DMCadObs_Aux: TDMCadObs_Aux
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 178
  Top = 250
  Height = 239
  Width = 637
  object sdsObs_Aux: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM OBS_AUX'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 33
    object sdsObs_AuxID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsObs_AuxNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsObs_AuxOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
    object sdsObs_AuxOBS_PEDIDO: TMemoField
      FieldName = 'OBS_PEDIDO'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dspObs_Aux: TDataSetProvider
    DataSet = sdsObs_Aux
    OnUpdateError = dspObs_AuxUpdateError
    Left = 160
    Top = 32
  end
  object cdsObs_Aux: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspObs_Aux'
    Left = 224
    Top = 32
    object cdsObs_AuxID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsObs_AuxNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 50
    end
    object cdsObs_AuxOBS: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBS'
      Size = 250
    end
    object cdsObs_AuxOBS_PEDIDO: TMemoField
      FieldName = 'OBS_PEDIDO'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dsObs_Aux: TDataSource
    DataSet = cdsObs_Aux
    Left = 296
    Top = 32
  end
end
