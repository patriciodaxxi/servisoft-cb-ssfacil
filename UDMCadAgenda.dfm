object DMCadAgenda: TDMCadAgenda
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 293
  Top = 165
  Height = 542
  Width = 823
  object sdsAgenda: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT A.*, F.NOME NOMEFUNCIONARIO, F_ORI.NOME NOMEFUNCIONARIO_O' +
      'RI'#13#10'FROM AGENDA A'#13#10'LEFT JOIN FUNCIONARIO F'#13#10'ON A.ID_FUNCIONARIO ' +
      '= F.CODIGO'#13#10'LEFT JOIN FUNCIONARIO F_ORI'#13#10'ON A.ID_FUNCIONARIO_ORI' +
      ' = F_ORI.CODIGO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 32
    object sdsAgendaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsAgendaDTAGENDA: TDateField
      FieldName = 'DTAGENDA'
    end
    object sdsAgendaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsAgendaPAUTA: TMemoField
      FieldName = 'PAUTA'
      BlobType = ftMemo
      Size = 1
    end
    object sdsAgendaDESCISOES: TMemoField
      FieldName = 'DESCISOES'
      BlobType = ftMemo
      Size = 1
    end
    object sdsAgendaPENDENCIAS: TMemoField
      FieldName = 'PENDENCIAS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsAgendaNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object sdsAgendaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsAgendaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object sdsAgendaHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
    object sdsAgendaCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object sdsAgendaHRAGENDA: TTimeField
      FieldName = 'HRAGENDA'
    end
    object sdsAgendaID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object sdsAgendaDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object sdsAgendaTITULO: TStringField
      FieldName = 'TITULO'
      Size = 250
    end
    object sdsAgendaID_FUNCIONARIO_ORI: TIntegerField
      FieldName = 'ID_FUNCIONARIO_ORI'
    end
    object sdsAgendaID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object sdsAgendaNOMEFUNCIONARIO: TStringField
      FieldName = 'NOMEFUNCIONARIO'
      ProviderFlags = []
      Size = 50
    end
    object sdsAgendaNOMEFUNCIONARIO_ORI: TStringField
      FieldName = 'NOMEFUNCIONARIO_ORI'
      ProviderFlags = []
      Size = 50
    end
  end
  object dspAgenda: TDataSetProvider
    DataSet = sdsAgenda
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspAgendaUpdateError
    Left = 160
    Top = 32
  end
  object cdsAgenda: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspAgenda'
    OnNewRecord = cdsAgendaNewRecord
    Left = 224
    Top = 32
    object cdsAgendaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsAgendaDTAGENDA: TDateField
      FieldName = 'DTAGENDA'
    end
    object cdsAgendaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsAgendaPAUTA: TMemoField
      FieldName = 'PAUTA'
      BlobType = ftMemo
      Size = 1
    end
    object cdsAgendaDESCISOES: TMemoField
      FieldName = 'DESCISOES'
      BlobType = ftMemo
      Size = 1
    end
    object cdsAgendaPENDENCIAS: TMemoField
      FieldName = 'PENDENCIAS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsAgendaNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object cdsAgendaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsAgendaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object cdsAgendaHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
    object cdsAgendaCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object cdsAgendaHRAGENDA: TTimeField
      FieldName = 'HRAGENDA'
    end
    object cdsAgendaID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsAgendaDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object cdsAgendaTITULO: TStringField
      FieldName = 'TITULO'
      Size = 250
    end
    object cdsAgendaID_FUNCIONARIO_ORI: TIntegerField
      FieldName = 'ID_FUNCIONARIO_ORI'
    end
    object cdsAgendaID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsAgendaNOMEFUNCIONARIO: TStringField
      FieldName = 'NOMEFUNCIONARIO'
      ProviderFlags = []
      Size = 50
    end
    object cdsAgendaNOMEFUNCIONARIO_ORI: TStringField
      FieldName = 'NOMEFUNCIONARIO_ORI'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsAgenda: TDataSource
    DataSet = cdsAgenda
    Left = 296
    Top = 32
  end
  object qAgenda: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DTAGENDA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT DISTINCT DTAGENDA'
      'FROM AGENDA'
      'WHERE DTAGENDA = :DTAGENDA'
      '    AND CONCLUIDO = '#39'N'#39)
    SQLConnection = dmDatabase.scoDados
    Left = 424
    Top = 146
    object qAgendaDTAGENDA: TDateField
      FieldName = 'DTAGENDA'
    end
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 416
    Top = 210
    object qParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametrosUSA_AGENDA_POR_FUNC: TStringField
      FieldName = 'USA_AGENDA_POR_FUNC'
      FixedChar = True
      Size = 1
    end
  end
  object sdsPessoa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT CODIGO, NOME'#13#10'FROM PESSOA'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 136
    object sdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dspPessoa: TDataSetProvider
    DataSet = sdsPessoa
    OnUpdateError = dspAgendaUpdateError
    Left = 160
    Top = 136
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspPessoa'
    Left = 224
    Top = 136
    object cdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsPessoa: TDataSource
    DataSet = cdsPessoa
    Left = 296
    Top = 136
  end
  object sdsFuncionario: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT CODIGO, NOME'#13#10'FROM FUNCIONARIO'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 224
    object sdsFuncionarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsFuncionarioNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object dspFuncionario: TDataSetProvider
    DataSet = sdsFuncionario
    OnUpdateError = dspAgendaUpdateError
    Left = 160
    Top = 224
  end
  object cdsFuncionario: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFuncionario'
    Left = 224
    Top = 224
    object cdsFuncionarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsFuncionarioNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object dsFuncionario: TDataSource
    DataSet = cdsFuncionario
    Left = 296
    Top = 224
  end
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT A.*, F.NOME NOMEFUNCIONARIO, F_ORI.NOME NOMEFUNCIONARIO_O' +
      'RI'#13#10'FROM AGENDA A'#13#10'LEFT JOIN FUNCIONARIO F'#13#10'ON A.ID_FUNCIONARIO ' +
      '= F.CODIGO'#13#10'LEFT JOIN FUNCIONARIO F_ORI'#13#10'ON A.ID_FUNCIONARIO_ORI' +
      ' = F_ORI.CODIGO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 456
    Top = 376
    object sdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsConsultaDTAGENDA: TDateField
      FieldName = 'DTAGENDA'
    end
    object sdsConsultaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsConsultaPAUTA: TMemoField
      FieldName = 'PAUTA'
      BlobType = ftMemo
      Size = 1
    end
    object sdsConsultaDESCISOES: TMemoField
      FieldName = 'DESCISOES'
      BlobType = ftMemo
      Size = 1
    end
    object sdsConsultaPENDENCIAS: TMemoField
      FieldName = 'PENDENCIAS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsConsultaNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object sdsConsultaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsConsultaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object sdsConsultaHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
    object sdsConsultaCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object sdsConsultaHRAGENDA: TTimeField
      FieldName = 'HRAGENDA'
    end
    object sdsConsultaID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object sdsConsultaDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object sdsConsultaTITULO: TStringField
      FieldName = 'TITULO'
      Size = 250
    end
    object sdsConsultaID_FUNCIONARIO_ORI: TIntegerField
      FieldName = 'ID_FUNCIONARIO_ORI'
    end
    object sdsConsultaID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object sdsConsultaNOMEFUNCIONARIO: TStringField
      FieldName = 'NOMEFUNCIONARIO'
      Size = 50
    end
    object sdsConsultaNOMEFUNCIONARIO_ORI: TStringField
      FieldName = 'NOMEFUNCIONARIO_ORI'
      Size = 50
    end
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    OnUpdateError = dspAgendaUpdateError
    Left = 528
    Top = 376
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'DTAGENDA;HRAGENDA'
    Params = <>
    ProviderName = 'dspConsulta'
    OnNewRecord = cdsAgendaNewRecord
    Left = 592
    Top = 376
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaDTAGENDA: TDateField
      DisplayLabel = 'Dt. Agenda'
      FieldName = 'DTAGENDA'
    end
    object cdsConsultaHRAGENDA: TTimeField
      DisplayLabel = 'Hr. Agenda'
      FieldName = 'HRAGENDA'
    end
    object cdsConsultaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsultaPAUTA: TMemoField
      FieldName = 'PAUTA'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsultaDESCISOES: TMemoField
      FieldName = 'DESCISOES'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsultaPENDENCIAS: TMemoField
      FieldName = 'PENDENCIAS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsultaNOME_PESSOA: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object cdsConsultaUSUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsConsultaDTCADASTRO: TDateField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'DTCADASTRO'
    end
    object cdsConsultaHRCADASTRO: TTimeField
      DisplayLabel = 'Hr. Cadastro'
      FieldName = 'HRCADASTRO'
    end
    object cdsConsultaCONCLUIDO: TStringField
      DisplayLabel = 'Concluido'
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaID_FUNCIONARIO: TIntegerField
      DisplayLabel = 'ID Funcion'#225'rio'
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsConsultaDTCONCLUIDO: TDateField
      DisplayLabel = 'Dt. Concluido'
      FieldName = 'DTCONCLUIDO'
    end
    object cdsConsultaTITULO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TITULO'
      Size = 250
    end
    object cdsConsultaID_FUNCIONARIO_ORI: TIntegerField
      DisplayLabel = 'ID Funcion'#225'rio Origem'
      FieldName = 'ID_FUNCIONARIO_ORI'
    end
    object cdsConsultaID_PESSOA: TIntegerField
      DisplayLabel = 'ID Pessoa'
      FieldName = 'ID_PESSOA'
    end
    object cdsConsultaNOMEFUNCIONARIO: TStringField
      DisplayLabel = 'Agenda para'
      FieldName = 'NOMEFUNCIONARIO'
      Size = 50
    end
    object cdsConsultaNOMEFUNCIONARIO_ORI: TStringField
      DisplayLabel = 'Fez o agendamento'
      FieldName = 'NOMEFUNCIONARIO_ORI'
      Size = 50
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 664
    Top = 376
  end
end
