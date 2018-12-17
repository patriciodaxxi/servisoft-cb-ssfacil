object DMCadProvedor: TDMCadProvedor
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 319
  Top = 129
  Height = 542
  Width = 637
  object sdsProvedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PROVEDOR'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 32
    object sdsProvedorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProvedorNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object sdsProvedorOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsProvedorTIPO_NATUREZA: TStringField
      FieldName = 'TIPO_NATUREZA'
      FixedChar = True
      Size = 1
    end
    object sdsProvedorTIPO_RETORNO: TStringField
      FieldName = 'TIPO_RETORNO'
      Size = 1
    end
    object sdsProvedorMOSTRAR_ALIQUOTA_PD: TStringField
      FieldName = 'MOSTRAR_ALIQUOTA_PD'
      FixedChar = True
      Size = 1
    end
    object sdsProvedorINF_COD_SERVICO: TStringField
      FieldName = 'INF_COD_SERVICO'
      FixedChar = True
      Size = 1
    end
    object sdsProvedorRETENCAO_ISSQN: TStringField
      FieldName = 'RETENCAO_ISSQN'
      FixedChar = True
      Size = 1
    end
    object sdsProvedorUSA_ATIVIDADE_CID_SERV: TStringField
      FieldName = 'USA_ATIVIDADE_CID_SERV'
      FixedChar = True
      Size = 1
    end
  end
  object dspProvedor: TDataSetProvider
    DataSet = sdsProvedor
    OnUpdateError = dspProvedorUpdateError
    Left = 160
    Top = 32
  end
  object cdsProvedor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspProvedor'
    OnNewRecord = cdsProvedorNewRecord
    Left = 224
    Top = 32
    object cdsProvedorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProvedorNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsProvedorOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsProvedorTIPO_NATUREZA: TStringField
      FieldName = 'TIPO_NATUREZA'
      FixedChar = True
      Size = 1
    end
    object cdsProvedorTIPO_RETORNO: TStringField
      FieldName = 'TIPO_RETORNO'
      Size = 1
    end
    object cdsProvedorMOSTRAR_ALIQUOTA_PD: TStringField
      FieldName = 'MOSTRAR_ALIQUOTA_PD'
      FixedChar = True
      Size = 1
    end
    object cdsProvedorINF_COD_SERVICO: TStringField
      FieldName = 'INF_COD_SERVICO'
      FixedChar = True
      Size = 1
    end
    object cdsProvedorRETENCAO_ISSQN: TStringField
      FieldName = 'RETENCAO_ISSQN'
      FixedChar = True
      Size = 1
    end
    object cdsProvedorUSA_ATIVIDADE_CID_SERV: TStringField
      FieldName = 'USA_ATIVIDADE_CID_SERV'
      FixedChar = True
      Size = 1
    end
  end
  object dsProvedor: TDataSource
    DataSet = cdsProvedor
    Left = 296
    Top = 32
  end
end
