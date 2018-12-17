object DMCadPosicao: TDMCadPosicao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 281
  Top = 222
  Height = 328
  Width = 585
  object sdsPosicao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM POSICAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsPosicaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPosicaoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object sdsPosicaoIMP_TALAO: TStringField
      FieldName = 'IMP_TALAO'
      FixedChar = True
      Size = 1
    end
    object sdsPosicaoIMP_MATERIAL: TStringField
      FieldName = 'IMP_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object sdsPosicaoIMP_AGRUPADO_MATERIAL: TStringField
      FieldName = 'IMP_AGRUPADO_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object sdsPosicaoGERAR_TALAO: TStringField
      FieldName = 'GERAR_TALAO'
      FixedChar = True
      Size = 1
    end
    object sdsPosicaoTALAO_LIMITE_QTD: TStringField
      FieldName = 'TALAO_LIMITE_QTD'
      FixedChar = True
      Size = 1
    end
    object sdsPosicaoQTD_LIMITE: TIntegerField
      FieldName = 'QTD_LIMITE'
    end
    object sdsPosicaoPRIMEIRO_MAT: TStringField
      FieldName = 'PRIMEIRO_MAT'
      FixedChar = True
      Size = 1
    end
  end
  object dspPosicao: TDataSetProvider
    DataSet = sdsPosicao
    OnUpdateError = dspPosicaoUpdateError
    Left = 128
    Top = 32
  end
  object cdsPosicao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspPosicao'
    OnNewRecord = cdsPosicaoNewRecord
    Left = 200
    Top = 32
    object cdsPosicaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPosicaoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsPosicaoIMP_TALAO: TStringField
      FieldName = 'IMP_TALAO'
      FixedChar = True
      Size = 1
    end
    object cdsPosicaoIMP_MATERIAL: TStringField
      FieldName = 'IMP_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object cdsPosicaoIMP_AGRUPADO_MATERIAL: TStringField
      FieldName = 'IMP_AGRUPADO_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object cdsPosicaoGERAR_TALAO: TStringField
      FieldName = 'GERAR_TALAO'
      FixedChar = True
      Size = 1
    end
    object cdsPosicaoTALAO_LIMITE_QTD: TStringField
      FieldName = 'TALAO_LIMITE_QTD'
      FixedChar = True
      Size = 1
    end
    object cdsPosicaoQTD_LIMITE: TIntegerField
      FieldName = 'QTD_LIMITE'
    end
    object cdsPosicaoPRIMEIRO_MAT: TStringField
      FieldName = 'PRIMEIRO_MAT'
      FixedChar = True
      Size = 1
    end
  end
  object dsPosicao: TDataSource
    DataSet = cdsPosicao
    Left = 264
    Top = 32
  end
end
