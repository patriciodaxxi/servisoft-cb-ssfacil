object DMCadQtdGrade: TDMCadQtdGrade
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 292
  Top = 181
  Height = 400
  Width = 897
  object sdsQtdGrade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM QTDGRADE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 24
    object sdsQtdGradeID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsQtdGradeQTD: TIntegerField
      FieldName = 'QTD'
    end
    object sdsQtdGradeID_GRADE: TIntegerField
      FieldName = 'ID_GRADE'
    end
  end
  object dspQtdGrade: TDataSetProvider
    DataSet = sdsQtdGrade
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspQtdGradeUpdateError
    Left = 168
    Top = 24
  end
  object cdsQtdGrade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspQtdGrade'
    Left = 232
    Top = 24
    object cdsQtdGradeID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsQtdGradeQTD: TIntegerField
      FieldName = 'QTD'
    end
    object cdsQtdGradeID_GRADE: TIntegerField
      FieldName = 'ID_GRADE'
    end
    object cdsQtdGradesdsQtdGrade_Itens: TDataSetField
      FieldName = 'sdsQtdGrade_Itens'
    end
  end
  object dsQtdGrade: TDataSource
    DataSet = cdsQtdGrade
    Left = 304
    Top = 24
  end
  object sdsQtdGrade_Mestre: TDataSource
    DataSet = sdsQtdGrade
    Left = 40
    Top = 80
  end
  object sdsQtdGrade_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM QTDGRADE_ITENS'#13#10'WHERE ID = :ID'
    DataSource = sdsQtdGrade_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 136
    object sdsQtdGrade_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsQtdGrade_ItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object sdsQtdGrade_ItensQTD: TIntegerField
      FieldName = 'QTD'
    end
  end
  object cdsQtdGrade_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsQtdGradesdsQtdGrade_Itens
    IndexFieldNames = 'ID;TAMANHO'
    Params = <>
    Left = 176
    Top = 136
    object cdsQtdGrade_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsQtdGrade_ItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object cdsQtdGrade_ItensQTD: TIntegerField
      FieldName = 'QTD'
    end
  end
  object dsQtdGrade_Itens: TDataSource
    DataSet = cdsQtdGrade_Itens
    Left = 264
    Top = 136
  end
  object sdsQtdGrade_Consulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT Q.*, G.NOME NOME_GRADE'#13#10'FROM QTDGRADE Q'#13#10'INNER JOIN GRADE' +
      ' G'#13#10'ON Q.ID_GRADE = G.ID'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 464
    Top = 16
  end
  object dspQtdGrade_Consulta: TDataSetProvider
    DataSet = sdsQtdGrade_Consulta
    Left = 496
    Top = 16
  end
  object cdsQtdGrade_Consulta: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME_GRADE'
    Params = <>
    ProviderName = 'dspQtdGrade_Consulta'
    Left = 528
    Top = 16
    object cdsQtdGrade_ConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsQtdGrade_ConsultaQTD: TIntegerField
      FieldName = 'QTD'
    end
    object cdsQtdGrade_ConsultaID_GRADE: TIntegerField
      FieldName = 'ID_GRADE'
    end
    object cdsQtdGrade_ConsultaNOME_GRADE: TStringField
      FieldName = 'NOME_GRADE'
      Size = 50
    end
  end
  object dsQtdGrade_Consulta: TDataSource
    DataSet = cdsQtdGrade_Consulta
    Left = 560
    Top = 16
  end
  object sdsGrade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM GRADE'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 472
    Top = 112
  end
  object dspGrade: TDataSetProvider
    DataSet = sdsGrade
    Left = 504
    Top = 112
  end
  object cdsGrade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspGrade'
    Left = 536
    Top = 112
    object cdsGradeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsGradeNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsGradePOSSUI_MARCACAO: TStringField
      FieldName = 'POSSUI_MARCACAO'
      FixedChar = True
      Size = 1
    end
  end
  object dsGrade: TDataSource
    DataSet = cdsGrade
    Left = 568
    Top = 112
  end
  object qGrade_Tam: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM GRADE_ITENS'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 176
    object qGrade_TamID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qGrade_TamTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
    object qGrade_TamTAMANHO_USA: TStringField
      FieldName = 'TAMANHO_USA'
      Size = 10
    end
    object qGrade_TamTAMANHO_EUR: TStringField
      FieldName = 'TAMANHO_EUR'
      Size = 10
    end
  end
end
