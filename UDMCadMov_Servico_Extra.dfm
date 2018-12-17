object DMCadMov_Servico_Extra: TDMCadMov_Servico_Extra
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 293
  Top = 165
  Height = 542
  Width = 812
  object sdsMov_Servico_Extra: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MOV_SERVICO_EXTRA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 32
    object sdsMov_Servico_ExtraID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMov_Servico_ExtraID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object sdsMov_Servico_ExtraID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object sdsMov_Servico_ExtraCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 100
    end
    object sdsMov_Servico_ExtraDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsMov_Servico_ExtraQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsMov_Servico_ExtraVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsMov_Servico_ExtraVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsMov_Servico_ExtraID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsMov_Servico_ExtraFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsMov_Servico_ExtraID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object sdsMov_Servico_ExtraID_RECIBO: TIntegerField
      FieldName = 'ID_RECIBO'
    end
    object sdsMov_Servico_ExtraENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      FixedChar = True
      Size = 1
    end
    object sdsMov_Servico_ExtraID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
  end
  object dspMov_Servico_Extra: TDataSetProvider
    DataSet = sdsMov_Servico_Extra
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspMov_Servico_ExtraUpdateError
    Left = 160
    Top = 32
  end
  object cdsMov_Servico_Extra: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspMov_Servico_Extra'
    BeforePost = cdsMov_Servico_ExtraBeforePost
    OnNewRecord = cdsMov_Servico_ExtraNewRecord
    Left = 224
    Top = 32
    object cdsMov_Servico_ExtraID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMov_Servico_ExtraID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object cdsMov_Servico_ExtraID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsMov_Servico_ExtraCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 100
    end
    object cdsMov_Servico_ExtraDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsMov_Servico_ExtraQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsMov_Servico_ExtraVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.00##'
    end
    object cdsMov_Servico_ExtraVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsMov_Servico_ExtraID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsMov_Servico_ExtraFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsMov_Servico_ExtraID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object cdsMov_Servico_ExtraID_RECIBO: TIntegerField
      FieldName = 'ID_RECIBO'
    end
    object cdsMov_Servico_ExtraENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      FixedChar = True
      Size = 1
    end
    object cdsMov_Servico_ExtraID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
  end
  object dsMov_Servico_Extra: TDataSource
    DataSet = cdsMov_Servico_Extra
    Left = 296
    Top = 32
  end
  object sdsMov_Consulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT MOV.*, S.nome NOME_SERVICO, SI.nome NOME_SERVICO_INT,'#13#10'CL' +
      'I.NOME NOME_CLIENTE, FIL.nome NOME_FILIAL, FIL.nome_interno FANT' +
      'ASIA_FILIAL,'#13#10'SI.NOME || '#39' '#39' || MOV.COMPLEMENTO SERVICO_COMPLEME' +
      'NTO, OS.NUM_CONTRATO'#13#10'FROM MOV_SERVICO_EXTRA MOV'#13#10'INNER JOIN SER' +
      'VICO S'#13#10'ON MOV.id_servico = S.id'#13#10'INNER JOIN SERVICO_INT SI'#13#10'ON ' +
      'MOV.ID_SERVICO_INT = SI.id'#13#10'INNER JOIN PESSOA CLI'#13#10'ON MOV.id_cli' +
      'ente = CLI.CODIGO'#13#10'INNER JOIN FILIAL FIL'#13#10'ON MOV.FILIAL = FIL.ID' +
      #13#10'LEFT JOIN OS '#13#10'ON MOV.ID_CONTRATO = OS.ID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 568
    Top = 16
  end
  object dspMov_Consulta: TDataSetProvider
    DataSet = sdsMov_Consulta
    Left = 600
    Top = 16
  end
  object cdsMov_Consulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMov_Consulta'
    Left = 632
    Top = 16
    object cdsMov_ConsultaID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
      Required = True
    end
    object cdsMov_ConsultaID_SERVICO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Servi'#231'o'
      FieldName = 'ID_SERVICO'
    end
    object cdsMov_ConsultaID_SERVICO_INT: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Servi'#231'o Interno'
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsMov_ConsultaCOMPLEMENTO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Size = 100
    end
    object cdsMov_ConsultaDTEMISSAO: TDateField
      Alignment = taCenter
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'DTEMISSAO'
    end
    object cdsMov_ConsultaQTD: TFloatField
      DisplayLabel = 'Qtde.'
      FieldName = 'QTD'
    end
    object cdsMov_ConsultaVLR_UNITARIO: TFloatField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      FieldName = 'VLR_UNITARIO'
    end
    object cdsMov_ConsultaVLR_TOTAL: TFloatField
      DisplayLabel = 'Vlr. Total'
      FieldName = 'VLR_TOTAL'
    end
    object cdsMov_ConsultaID_CLIENTE: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Cliente'
      FieldName = 'ID_CLIENTE'
    end
    object cdsMov_ConsultaFILIAL: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Filial'
      FieldName = 'FILIAL'
    end
    object cdsMov_ConsultaID_NOTA: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Nota'
      FieldName = 'ID_NOTA'
    end
    object cdsMov_ConsultaID_RECIBO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Recibo'
      FieldName = 'ID_RECIBO'
    end
    object cdsMov_ConsultaENCERRADO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Encerrado'
      FieldName = 'ENCERRADO'
      FixedChar = True
      Size = 1
    end
    object cdsMov_ConsultaNOME_SERVICO: TStringField
      DisplayLabel = 'Nome Servi'#231'o'
      FieldName = 'NOME_SERVICO'
      Size = 500
    end
    object cdsMov_ConsultaNOME_SERVICO_INT: TStringField
      DisplayLabel = 'Nome Servi'#231'o Interno'
      FieldName = 'NOME_SERVICO_INT'
      Size = 70
    end
    object cdsMov_ConsultaNOME_CLIENTE: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsMov_ConsultaNOME_FILIAL: TStringField
      DisplayLabel = 'Filial'
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object cdsMov_ConsultaFANTASIA_FILIAL: TStringField
      DisplayLabel = 'Nome Interno Filial'
      FieldName = 'FANTASIA_FILIAL'
      Size = 30
    end
    object cdsMov_ConsultaSERVICO_COMPLEMENTO: TStringField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'SERVICO_COMPLEMENTO'
      Size = 171
    end
    object cdsMov_ConsultaID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object cdsMov_ConsultaNUM_CONTRATO: TIntegerField
      FieldName = 'NUM_CONTRATO'
    end
  end
  object dsMov_Consulta: TDataSource
    DataSet = cdsMov_Consulta
    Left = 672
    Top = 16
  end
  object sdsCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME, CNPJ_CPF'#13#10'FROM PESSOA '#13#10'WHERE TP_CLIENTE = ' +
      #39'S'#39#13#10'  AND INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 560
    Top = 72
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 592
    Top = 72
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCliente'
    Left = 624
    Top = 72
    object cdsClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsClienteCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 664
    Top = 72
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT FIL.ID, FIL.NOME, FIL.NOME_INTERNO, '#13#10'SER.CODIGO COD_SERV' +
      'ICO_SINT, FIL.ID_SERVICO_SINT,'#13#10'ID_SERVICO_PAD'#13#10'FROM FILIAL FIL'#13 +
      #10'LEFT JOIN SERVICO SER ON (FIL.ID_SERVICO_SINT = SER.ID)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 560
    Top = 128
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 592
    Top = 128
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 624
    Top = 128
    object cdsFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsFilialNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object cdsFilialCOD_SERVICO_SINT: TStringField
      FieldName = 'COD_SERVICO_SINT'
      Size = 5
    end
    object cdsFilialID_SERVICO_SINT: TIntegerField
      FieldName = 'ID_SERVICO_SINT'
    end
    object cdsFilialID_SERVICO_PAD: TIntegerField
      FieldName = 'ID_SERVICO_PAD'
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 664
    Top = 128
  end
  object sdsServico: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, CODIGO, NOME, TIPO_AS , CODIGO || '#39'-'#39' || NOME AS NOME' +
      '_SERVICO, CNAE, PERC_ISS, ID_ATIVIDADE_CID, CODIGO_NBS'#13#10'FROM SER' +
      'VICO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 568
    Top = 246
  end
  object dspServico: TDataSetProvider
    DataSet = sdsServico
    Left = 600
    Top = 246
  end
  object cdsServico: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspServico'
    Left = 640
    Top = 246
    object cdsServicoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsServicoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 5
    end
    object cdsServicoNOME: TStringField
      FieldName = 'NOME'
      Size = 500
    end
    object cdsServicoTIPO_AS: TStringField
      FieldName = 'TIPO_AS'
      FixedChar = True
      Size = 1
    end
    object cdsServicoNOME_SERVICO: TStringField
      FieldName = 'NOME_SERVICO'
      Size = 506
    end
    object cdsServicoCNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object cdsServicoPERC_ISS: TFloatField
      FieldName = 'PERC_ISS'
    end
    object cdsServicoID_ATIVIDADE_CID: TIntegerField
      FieldName = 'ID_ATIVIDADE_CID'
    end
    object cdsServicoCODIGO_NBS: TStringField
      FieldName = 'CODIGO_NBS'
      Size = 10
    end
  end
  object dsServico: TDataSource
    DataSet = cdsServico
    Left = 680
    Top = 246
  end
  object sdsServico_Int: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM SERVICO_INT'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 568
    Top = 198
  end
  object dspServico_Int: TDataSetProvider
    DataSet = sdsServico_Int
    Left = 600
    Top = 198
  end
  object cdsServico_Int: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspServico_Int'
    Left = 640
    Top = 198
    object cdsServico_IntID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsServico_IntNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object cdsServico_IntVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsServico_IntCODIGO_NBS: TStringField
      FieldName = 'CODIGO_NBS'
      Size = 10
    end
    object cdsServico_IntID_SERVICO_PADRAO: TIntegerField
      FieldName = 'ID_SERVICO_PADRAO'
    end
  end
  object dsServico_Int: TDataSource
    DataSet = cdsServico_Int
    Left = 680
    Top = 198
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT P.USA_ANO_CONTRATO'
      'FROM PARAMETROS P')
    SQLConnection = dmDatabase.scoDados
    Left = 440
    Top = 200
    object qParametrosUSA_ANO_CONTRATO: TStringField
      FieldName = 'USA_ANO_CONTRATO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsContrato: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT OS.id,  OS.num_contrato, os.id_cliente, os.vlr_total, os.' +
      'dtemissao,'#13#10'OS.ANO_CONTRATO, CLI.NOME NOME_CLIENTE,'#13#10'OS.ano_cont' +
      'rato || '#39'/'#39' || OS.num_contrato Num_Contrato2'#13#10'FROM OS'#13#10'INNER JOI' +
      'N PESSOA CLI'#13#10'ON CLI.codigo = OS.id_cliente'#13#10'where OS.tipo_reg =' +
      ' '#39'C'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 560
    Top = 304
  end
  object dspContrato: TDataSetProvider
    DataSet = sdsContrato
    Left = 616
    Top = 304
  end
  object cdsContrato: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ANO_CONTRATO;NUM_CONTRATO'
    Params = <>
    ProviderName = 'dspContrato'
    Left = 656
    Top = 304
    object cdsContratoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsContratoNUM_CONTRATO: TIntegerField
      FieldName = 'NUM_CONTRATO'
    end
    object cdsContratoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsContratoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsContratoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsContratoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsContratoANO_CONTRATO: TIntegerField
      FieldName = 'ANO_CONTRATO'
    end
    object cdsContratoNUM_CONTRATO2: TStringField
      FieldName = 'NUM_CONTRATO2'
      Size = 23
    end
  end
  object dsContrato: TDataSource
    DataSet = cdsContrato
    Left = 712
    Top = 304
  end
end
