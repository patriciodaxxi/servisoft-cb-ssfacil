object DMCadMaquina: TDMCadMaquina
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 148
  Top = 122
  Height = 483
  Width = 1103
  object sdsMaquina: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MAQUINA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 32
    object sdsMaquinaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsMaquinaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object sdsMaquinaVALORHORACALC: TFloatField
      FieldName = 'VALORHORACALC'
    end
    object sdsMaquinaID_TIPO_MAQUINA: TIntegerField
      FieldName = 'ID_TIPO_MAQUINA'
    end
    object sdsMaquinaESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
    end
    object sdsMaquinaQTD_BOCA: TIntegerField
      FieldName = 'QTD_BOCA'
    end
    object sdsMaquinaQTD_FUSO: TIntegerField
      FieldName = 'QTD_FUSO'
    end
    object sdsMaquinaBORRACHA: TStringField
      FieldName = 'BORRACHA'
      FixedChar = True
      Size = 1
    end
    object sdsMaquinaFIO_AUXILIAR: TStringField
      FieldName = 'FIO_AUXILIAR'
      FixedChar = True
      Size = 1
    end
    object sdsMaquinaQTD_QUADRO: TIntegerField
      FieldName = 'QTD_QUADRO'
    end
    object sdsMaquinaMAX_BATIDA: TFloatField
      FieldName = 'MAX_BATIDA'
    end
  end
  object dspMaquina: TDataSetProvider
    DataSet = sdsMaquina
    OnUpdateError = dspMaquinaUpdateError
    Left = 168
    Top = 32
  end
  object cdsMaquina: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspMaquina'
    OnNewRecord = cdsMaquinaNewRecord
    Left = 240
    Top = 32
    object cdsMaquinaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMaquinaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsMaquinaVALORHORACALC: TFloatField
      FieldName = 'VALORHORACALC'
      DisplayFormat = '0.00'
    end
    object cdsMaquinasdsMaquina_Matriz: TDataSetField
      FieldName = 'sdsMaquina_Matriz'
    end
    object cdsMaquinaID_TIPO_MAQUINA: TIntegerField
      FieldName = 'ID_TIPO_MAQUINA'
    end
    object cdsMaquinaESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
    end
    object cdsMaquinaQTD_BOCA: TIntegerField
      FieldName = 'QTD_BOCA'
    end
    object cdsMaquinaQTD_FUSO: TIntegerField
      FieldName = 'QTD_FUSO'
    end
    object cdsMaquinaBORRACHA: TStringField
      FieldName = 'BORRACHA'
      FixedChar = True
      Size = 1
    end
    object cdsMaquinaFIO_AUXILIAR: TStringField
      FieldName = 'FIO_AUXILIAR'
      FixedChar = True
      Size = 1
    end
    object cdsMaquinaQTD_QUADRO: TIntegerField
      FieldName = 'QTD_QUADRO'
    end
    object cdsMaquinaMAX_BATIDA: TFloatField
      FieldName = 'MAX_BATIDA'
    end
  end
  object dsMaquina: TDataSource
    DataSet = cdsMaquina
    Left = 304
    Top = 32
  end
  object dsMaquina_Mestre: TDataSource
    DataSet = sdsMaquina
    Left = 40
    Top = 80
  end
  object sdsMaquina_Matriz: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT MAQ.*, TM.NOME MATRIZ'#13#10'FROM MAQUINA_MATRIZ MAQ'#13#10'INNER JOI' +
      'N TIPO_MATRIZ TM'#13#10'ON MAQ.ID_TIPO_MATRIZ = TM.ID'#13#10'WHERE MAQ.ID = ' +
      ':ID'
    DataSource = dsMaquina_Mestre
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
    Top = 128
    object sdsMaquina_MatrizID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsMaquina_MatrizITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsMaquina_MatrizID_TIPO_MATRIZ: TIntegerField
      FieldName = 'ID_TIPO_MATRIZ'
    end
    object sdsMaquina_MatrizMATRIZ: TStringField
      FieldName = 'MATRIZ'
      ProviderFlags = []
      Size = 40
    end
  end
  object cdsMaquina_Matriz: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMaquinasdsMaquina_Matriz
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 192
    Top = 128
    object cdsMaquina_MatrizID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMaquina_MatrizITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsMaquina_MatrizID_TIPO_MATRIZ: TIntegerField
      FieldName = 'ID_TIPO_MATRIZ'
    end
    object cdsMaquina_MatrizMATRIZ: TStringField
      FieldName = 'MATRIZ'
      ProviderFlags = []
      Size = 40
    end
  end
  object dsMaquina_Matriz: TDataSource
    DataSet = cdsMaquina_Matriz
    Left = 272
    Top = 128
  end
  object sdsTipo_Matriz: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TIPO_MATRIZ'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 496
    Top = 216
  end
  object dspTipo_Matriz: TDataSetProvider
    DataSet = sdsTipo_Matriz
    Left = 560
    Top = 216
  end
  object cdsTipo_Matriz: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspTipo_Matriz'
    Left = 616
    Top = 216
    object cdsTipo_MatrizID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTipo_MatrizNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dsTipo_Matriz: TDataSource
    DataSet = cdsTipo_Matriz
    Left = 672
    Top = 216
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT EMPRESA_INJETADO'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 488
    Top = 296
    object qParametrosEMPRESA_INJETADO: TStringField
      FieldName = 'EMPRESA_INJETADO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsTipo_Maquina: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TIPO_MAQUINA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 496
    Top = 160
  end
  object dspTipo_Maquina: TDataSetProvider
    DataSet = sdsTipo_Maquina
    Left = 560
    Top = 160
  end
  object cdsTipo_Maquina: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspTipo_Maquina'
    Left = 616
    Top = 160
    object cdsTipo_MaquinaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTipo_MaquinaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsTipo_MaquinaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
  end
  object dsTipo_Maquina: TDataSource
    DataSet = cdsTipo_Maquina
    Left = 672
    Top = 160
  end
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT M.*, T.nome NOME_TIPO'#13#10'FROM MAQUINA M'#13#10'LEFT JOIN TIPO_MAQ' +
      'UINA T'#13#10'ON M.id_tipo_maquina = T.ID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 504
    Top = 16
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Left = 568
    Top = 16
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 624
    Top = 16
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsConsultaID_TIPO_MAQUINA: TIntegerField
      FieldName = 'ID_TIPO_MAQUINA'
    end
    object cdsConsultaESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
    end
    object cdsConsultaQTD_BOCA: TIntegerField
      FieldName = 'QTD_BOCA'
    end
    object cdsConsultaQTD_FUSO: TIntegerField
      FieldName = 'QTD_FUSO'
    end
    object cdsConsultaBORRACHA: TStringField
      FieldName = 'BORRACHA'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaFIO_AUXILIAR: TStringField
      FieldName = 'FIO_AUXILIAR'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaQTD_QUADRO: TIntegerField
      FieldName = 'QTD_QUADRO'
    end
    object cdsConsultaNOME_TIPO: TStringField
      FieldName = 'NOME_TIPO'
      Size = 30
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 680
    Top = 16
  end
end
