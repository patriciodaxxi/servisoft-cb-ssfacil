object DMCadProcesso_Grupo: TDMCadProcesso_Grupo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 290
  Top = 205
  Height = 357
  Width = 832
  object sdsProcesso_Grupo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PROCESSO_GRUPO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 104
    Top = 32
    object sdsProcesso_GrupoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProcesso_GrupoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dspProcesso_Grupo: TDataSetProvider
    DataSet = sdsProcesso_Grupo
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspProcesso_GrupoUpdateError
    Left = 176
    Top = 32
  end
  object cdsProcesso_Grupo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspProcesso_Grupo'
    Left = 240
    Top = 32
    object cdsProcesso_GrupoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProcesso_GrupoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsProcesso_GruposdsProcesso_Grupo_Itens: TDataSetField
      FieldName = 'sdsProcesso_Grupo_Itens'
    end
  end
  object dsProcesso_Grupo: TDataSource
    DataSet = cdsProcesso_Grupo
    Left = 312
    Top = 32
  end
  object dsProcesso_Mestre: TDataSource
    DataSet = sdsProcesso_Grupo
    Left = 48
    Top = 80
  end
  object sdsProcesso_Grupo_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PROCESSO_GRUPO_ITENS'#13#10'WHERE ID = :ID'
    DataSource = dsProcesso_Mestre
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
    object sdsProcesso_Grupo_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProcesso_Grupo_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProcesso_Grupo_ItensID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object sdsProcesso_Grupo_ItensID_SERVICO_OS: TIntegerField
      FieldName = 'ID_SERVICO_OS'
    end
    object sdsProcesso_Grupo_ItensORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object sdsProcesso_Grupo_ItensOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
  end
  object cdsProcesso_Grupo_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsProcesso_GruposdsProcesso_Grupo_Itens
    IndexFieldNames = 'ID;ORDEM;ITEM'
    Params = <>
    OnCalcFields = cdsProcesso_Grupo_ItensCalcFields
    Left = 208
    Top = 144
    object cdsProcesso_Grupo_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProcesso_Grupo_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProcesso_Grupo_ItensID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object cdsProcesso_Grupo_ItensclNome_Processo: TStringField
      FieldKind = fkCalculated
      FieldName = 'clNome_Processo'
      Size = 60
      Calculated = True
    end
    object cdsProcesso_Grupo_ItensID_SERVICO_OS: TIntegerField
      FieldName = 'ID_SERVICO_OS'
    end
    object cdsProcesso_Grupo_ItensclNome_Servico_OS: TStringField
      FieldKind = fkCalculated
      FieldName = 'clNome_Servico_OS'
      Size = 60
      Calculated = True
    end
    object cdsProcesso_Grupo_ItensORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object cdsProcesso_Grupo_ItensOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsProcesso_Grupo_ItensclTipo_Processo: TStringField
      FieldKind = fkCalculated
      FieldName = 'clTipo_Processo'
      Size = 15
      Calculated = True
    end
    object cdsProcesso_Grupo_ItensclEncerado: TStringField
      FieldKind = fkCalculated
      FieldName = 'clEncerado'
      Size = 1
      Calculated = True
    end
    object cdsProcesso_Grupo_ItensclEntrada_Auto: TStringField
      FieldKind = fkCalculated
      FieldName = 'clEntrada_Auto'
      Size = 1
      Calculated = True
    end
  end
  object dsProcesso_Grupo_Itens: TDataSource
    DataSet = cdsProcesso_Grupo_Itens
    Left = 312
    Top = 144
  end
  object sdsProcesso: TSQLDataSet
    CommandText = 'SELECT ID, NOME, TIPO, ENCERADO, ENTRADA_AUTO'#13#10'FROM PROCESSO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 528
    Top = 48
  end
  object dspProcesso: TDataSetProvider
    DataSet = sdsProcesso
    Left = 576
    Top = 48
  end
  object cdsProcesso: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspProcesso'
    Left = 616
    Top = 48
    object cdsProcessoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProcessoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsProcessoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsProcessoENCERADO: TStringField
      FieldName = 'ENCERADO'
      FixedChar = True
      Size = 1
    end
    object cdsProcessoENTRADA_AUTO: TStringField
      FieldName = 'ENTRADA_AUTO'
      FixedChar = True
      Size = 1
    end
  end
  object dsProcesso: TDataSource
    DataSet = cdsProcesso
    Left = 656
    Top = 48
  end
  object qParametros_Ser: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_SER'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 472
    Top = 144
    object qParametros_SerUSA_PROCESSO_OS: TStringField
      FieldName = 'USA_PROCESSO_OS'
      FixedChar = True
      Size = 1
    end
  end
  object qServico_OS: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select S.id, S.nome'
      'FROM SERVICO_OS S'
      'WHERE S.ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 656
    Top = 192
    object qServico_OSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qServico_OSNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object sdsServico_OS: TSQLDataSet
    CommandText = 'SELECT ID, NOME'#13#10'FROM SERVICO_OS'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 544
    Top = 104
  end
  object dspServico_OS: TDataSetProvider
    DataSet = sdsServico_OS
    Left = 592
    Top = 104
  end
  object cdsServico_OS: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspServico_OS'
    Left = 632
    Top = 104
    object cdsServico_OSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsServico_OSNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object dsServico_OS: TDataSource
    DataSet = cdsServico_OS
    Left = 672
    Top = 104
  end
  object qParametros_Lote: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT L.lote_textil'
      'FROM PARAMETROS_LOTE L')
    SQLConnection = dmDatabase.scoDados
    Left = 472
    Top = 216
    object qParametros_LoteLOTE_TEXTIL: TStringField
      FieldName = 'LOTE_TEXTIL'
      FixedChar = True
      Size = 1
    end
  end
end
