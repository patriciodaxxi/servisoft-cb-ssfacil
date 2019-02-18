object DMCadPosicao: TDMCadPosicao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 281
  Top = 222
  Height = 409
  Width = 862
  object sdsPosicao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM POSICAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 32
    object sdsPosicaoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object sdsPosicaoID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object sdsPosicaoUSA_PROCESSO: TStringField
      FieldName = 'USA_PROCESSO'
      FixedChar = True
      Size = 1
    end
  end
  object dspPosicao: TDataSetProvider
    DataSet = sdsPosicao
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspPosicaoUpdateError
    Left = 144
    Top = 32
  end
  object cdsPosicao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspPosicao'
    OnNewRecord = cdsPosicaoNewRecord
    Left = 216
    Top = 32
    object cdsPosicaoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object cdsPosicaoID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object cdsPosicaoUSA_PROCESSO: TStringField
      FieldName = 'USA_PROCESSO'
      FixedChar = True
      Size = 1
    end
    object cdsPosicaosdsPosicao_Proc: TDataSetField
      FieldName = 'sdsPosicao_Proc'
    end
  end
  object dsPosicao: TDataSource
    DataSet = cdsPosicao
    Left = 280
    Top = 32
  end
  object sdsSetor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME'#13#10'FROM SETOR'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 240
  end
  object dspSetor: TDataSetProvider
    DataSet = sdsSetor
    OnUpdateError = dspPosicaoUpdateError
    Left = 120
    Top = 240
  end
  object cdsSetor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspSetor'
    Left = 192
    Top = 240
    object cdsSetorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsSetorNOME: TStringField
      FieldName = 'NOME'
    end
  end
  object dsSetor: TDataSource
    DataSet = cdsSetor
    Left = 256
    Top = 240
  end
  object dsPosicao_Mestre: TDataSource
    DataSet = sdsPosicao
    Left = 24
    Top = 80
  end
  object sdsPosicao_Proc: TSQLDataSet
    CommandText = 
      'SELECT PC.*, P.NOME NOME_PROCESSO'#13#10'FROM POSICAO_PROC PC'#13#10'LEFT JO' +
      'IN PROCESSO P'#13#10'ON PC.ID_PROCESSO = P.ID'#13#10'WHERE PC.ID = :ID'
    DataSource = dsPosicao_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 128
    object sdsPosicao_ProcID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPosicao_ProcITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPosicao_ProcID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object sdsPosicao_ProcNOME_PROCESSO: TStringField
      FieldName = 'NOME_PROCESSO'
      ProviderFlags = []
      Size = 30
    end
  end
  object cdsPosicao_Proc: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPosicaosdsPosicao_Proc
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 152
    Top = 128
    object cdsPosicao_ProcID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPosicao_ProcITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPosicao_ProcID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object cdsPosicao_ProcNOME_PROCESSO: TStringField
      FieldName = 'NOME_PROCESSO'
      ProviderFlags = []
      Size = 30
    end
  end
  object dsPosicao_Proc: TDataSource
    DataSet = cdsPosicao_Proc
    Left = 224
    Top = 128
  end
  object sdsProcesso: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME'#13#10'FROM PROCESSO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 392
    Top = 232
  end
  object dspProcesso: TDataSetProvider
    DataSet = sdsProcesso
    OnUpdateError = dspPosicaoUpdateError
    Left = 464
    Top = 232
  end
  object cdsProcesso: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspProcesso'
    Left = 536
    Top = 232
    object cdsProcessoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProcessoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsProcesso: TDataSource
    DataSet = cdsProcesso
    Left = 600
    Top = 232
  end
end
