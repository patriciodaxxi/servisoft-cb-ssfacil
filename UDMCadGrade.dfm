object DMCadGrade: TDMCadGrade
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 345
  Top = 202
  Height = 400
  Width = 643
  object sdsGrade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM GRADE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 120
    Top = 32
    object sdsGradeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsGradeNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsGradePOSSUI_MARCACAO: TStringField
      FieldName = 'POSSUI_MARCACAO'
      FixedChar = True
      Size = 1
    end
  end
  object dspGrade: TDataSetProvider
    DataSet = sdsGrade
    OnUpdateError = dspGradeUpdateError
    Left = 192
    Top = 32
  end
  object cdsGrade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspGrade'
    OnNewRecord = cdsGradeNewRecord
    Left = 256
    Top = 32
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
    object cdsGradesdsGrade_Itens: TDataSetField
      FieldName = 'sdsGrade_Itens'
    end
  end
  object dsGrade: TDataSource
    DataSet = cdsGrade
    Left = 328
    Top = 32
  end
  object dsGrade_Mestre: TDataSource
    DataSet = sdsGrade
    Left = 80
    Top = 80
  end
  object sdsGrade_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM GRADE_ITENS'#13#10'WHERE ID = :ID'
    DataSource = dsGrade_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 112
    Top = 144
    object sdsGrade_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsGrade_ItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
    object sdsGrade_ItensTAMANHO_USA: TStringField
      FieldName = 'TAMANHO_USA'
      Size = 10
    end
    object sdsGrade_ItensTAMANHO_EUR: TStringField
      FieldName = 'TAMANHO_EUR'
      Size = 10
    end
  end
  object cdsGrade_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsGradesdsGrade_Itens
    IndexFieldNames = 'ID;TAMANHO'
    Params = <>
    Left = 200
    Top = 144
    object cdsGrade_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsGrade_ItensTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
      Size = 10
    end
    object cdsGrade_ItensTAMANHO_USA: TStringField
      FieldName = 'TAMANHO_USA'
      Size = 10
    end
    object cdsGrade_ItensTAMANHO_EUR: TStringField
      FieldName = 'TAMANHO_EUR'
      Size = 10
    end
  end
  object dsGrade_Itens: TDataSource
    DataSet = cdsGrade_Itens
    Left = 272
    Top = 144
  end
  object sdsTamanho: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAMANHO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 336
    Top = 248
    object sdsTamanhoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTamanhoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
  end
  object dspTamanho: TDataSetProvider
    DataSet = sdsTamanho
    Left = 408
    Top = 248
  end
  object cdsTamanho: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTamanho'
    Left = 472
    Top = 248
    object cdsTamanhoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTamanhoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
  end
  object dsTamanho: TDataSource
    DataSet = cdsTamanho
    Left = 544
    Top = 248
  end
end
