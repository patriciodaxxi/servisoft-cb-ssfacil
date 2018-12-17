object DMCadManifesto: TDMCadManifesto
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 254
  Top = 47
  Height = 594
  Width = 1051
  object sdsManifesto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MANIFESTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 80
    Top = 32
    object sdsManifestoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsManifestoDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsManifestoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object sdsManifestoSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object sdsManifestoPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object sdsManifestoPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
    end
    object sdsManifestoVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
    end
    object sdsManifestoVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object sdsManifestoNUM_MANIFESTO: TIntegerField
      FieldName = 'NUM_MANIFESTO'
    end
    object sdsManifestoPLACA: TStringField
      FieldName = 'PLACA'
      Size = 7
    end
    object sdsManifestoVLR_DESPESA: TFloatField
      FieldName = 'VLR_DESPESA'
    end
    object sdsManifestoNOME_MOTORISTA: TStringField
      FieldName = 'NOME_MOTORISTA'
      Size = 70
    end
    object sdsManifestoNOME_AJUDANTE: TStringField
      FieldName = 'NOME_AJUDANTE'
      Size = 70
    end
    object sdsManifestoHORARIO: TTimeField
      FieldName = 'HORARIO'
    end
  end
  object dspManifesto: TDataSetProvider
    DataSet = sdsManifesto
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspManifestoUpdateError
    Left = 152
    Top = 32
  end
  object cdsManifesto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspManifesto'
    Left = 216
    Top = 32
    object cdsManifestoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsManifestoDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsManifestoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object cdsManifestoSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsManifestoPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object cdsManifestoPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
    end
    object cdsManifestoVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
    end
    object cdsManifestoVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object cdsManifestoNUM_MANIFESTO: TIntegerField
      FieldName = 'NUM_MANIFESTO'
    end
    object cdsManifestoPLACA: TStringField
      FieldName = 'PLACA'
      Size = 7
    end
    object cdsManifestoVLR_DESPESA: TFloatField
      FieldName = 'VLR_DESPESA'
    end
    object cdsManifestoNOME_MOTORISTA: TStringField
      FieldName = 'NOME_MOTORISTA'
      Size = 70
    end
    object cdsManifestoNOME_AJUDANTE: TStringField
      FieldName = 'NOME_AJUDANTE'
      Size = 70
    end
    object cdsManifestoHORARIO: TTimeField
      FieldName = 'HORARIO'
    end
    object cdsManifestosdsManifesto_Cob: TDataSetField
      FieldName = 'sdsManifesto_Cob'
    end
    object cdsManifestosdsManifesto_Nota: TDataSetField
      FieldName = 'sdsManifesto_Nota'
    end
  end
  object dsManifesto: TDataSource
    DataSet = cdsManifesto
    Left = 288
    Top = 32
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT P.SERIENORMAL'
      'FROM PARAMETROS P')
    SQLConnection = dmDatabase.scoDados
    Left = 232
    Top = 360
    object qParametrosSERIENORMAL: TStringField
      FieldName = 'SERIENORMAL'
      Size = 3
    end
  end
  object sdsFilial: TSQLDataSet
    CommandText = 'select f.id, f.nome, f.email_financeiro'#13#10'from filial f'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 464
    Top = 184
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFilial'
    Left = 568
    Top = 184
    object cdsFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsFilialEMAIL_FINANCEIRO: TStringField
      FieldName = 'EMAIL_FINANCEIRO'
      Size = 200
    end
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 520
    Top = 184
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 608
    Top = 184
  end
  object dsManifesto_Mestre: TDataSource
    DataSet = sdsManifesto
    Left = 40
    Top = 72
  end
  object sdsManifesto_Nota: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MANIFESTO_NOTA'#13#10'WHERE ID = :ID'
    DataSource = dsManifesto_Mestre
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
    Top = 120
    object sdsManifesto_NotaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsManifesto_NotaITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsManifesto_NotaID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object sdsManifesto_NotaPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object sdsManifesto_NotaPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
    end
    object sdsManifesto_NotaVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
    end
    object sdsManifesto_NotaVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object sdsManifesto_NotaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object sdsManifesto_NotaNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
  end
  object cdsManifesto_Nota: TClientDataSet
    Aggregates = <>
    DataSetField = cdsManifestosdsManifesto_Nota
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 168
    Top = 120
    object cdsManifesto_NotaID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsManifesto_NotaITEM: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsManifesto_NotaID_NOTA: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Nota'
      FieldName = 'ID_NOTA'
    end
    object cdsManifesto_NotaPESO_LIQUIDO: TFloatField
      DisplayLabel = 'Peso L'#237'quido'
      FieldName = 'PESO_LIQUIDO'
      DisplayFormat = '0.000#'
    end
    object cdsManifesto_NotaPESO_BRUTO: TFloatField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'PESO_BRUTO'
      DisplayFormat = '0.000#'
    end
    object cdsManifesto_NotaVLR_NOTA: TFloatField
      DisplayLabel = 'Vlr. Nota'
      FieldName = 'VLR_NOTA'
      DisplayFormat = '0.00'
    end
    object cdsManifesto_NotaVLR_DUPLICATA: TFloatField
      DisplayLabel = 'Vlr. Duplicata'
      FieldName = 'VLR_DUPLICATA'
      DisplayFormat = '0.00'
    end
    object cdsManifesto_NotaSERIE: TStringField
      Alignment = taCenter
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Size = 5
    end
    object cdsManifesto_NotaNUM_NOTA: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'N'#186' Nota'
      FieldName = 'NUM_NOTA'
    end
  end
  object dsManifesto_Nota: TDataSource
    DataSet = cdsManifesto_Nota
    Left = 232
    Top = 120
  end
  object sdsNotas: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT N.ID, N.ID_CLIENTE, N.id_transportadora, N.qtdvolume, N.q' +
      'tdtotal_itens, N.SERIE, N.NUMNOTA, '#13#10'N.vlr_nota, n.tipo_frete, n' +
      '.pesoliquido, n.pesobruto, CLI.nome NOME_CLIENTE,'#13#10'TRANSP.NOME N' +
      'OME_TRANSPORTADORA, CLI.UF, CLI.cidade, cli.endereco, cli.num_en' +
      'd Num_End,'#13#10'cli.cep, Cli.Bairro, N.VLR_DUPLICATA,'#13#10#13#10'case'#13#10'   WH' +
      'EN N.TIPO_FRETE = '#39'1'#39' THEN '#39'Emitente'#39#13#10'   WHEN N.TIPO_FRETE = '#39'2' +
      #39' THEN '#39'Destinatario'#39#13#10'   WHEN N.TIPO_FRETE = '#39'3'#39' THEN '#39'Terceiro' +
      's'#39#13#10'   WHEN N.TIPO_FRETE = '#39'9'#39' THEN '#39'Sem Frete'#39#13#10'   ELSE '#39#39#13#10'   ' +
      'END AS TIPO_FRETE_DESC, N.SELECIONADO'#13#10'FROM NOTAFISCAL N'#13#10'INNER ' +
      'JOIN PESSOA CLI ON (N.id_cliente = CLI.codigo)'#13#10'LEFT JOIN PESSOA' +
      ' TRANSP ON (N.id_transportadora = TRANSP.CODIGO)'#13#10'WHERE ((N.TIPO' +
      '_REG = '#39'NTS'#39') or (N.TIPO_REG = '#39'RNF'#39'))'#13#10' AND N.cancelada  = '#39'N'#39#13 +
      #10' AND N.nfedenegada = '#39'N'#39#13#10' AND N.tipo_nota = '#39'S'#39#13#10' AND (SELECT ' +
      'COUNT(1) CONTADOR_MAN FROM MANIFESTO_NOTA MAN'#13#10'                 ' +
      ' WHERE MAN.id_nota = N.ID) <= 0'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 448
    Top = 120
  end
  object dspNotas: TDataSetProvider
    DataSet = sdsNotas
    Left = 480
    Top = 120
  end
  object cdsNotas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotas'
    Left = 520
    Top = 120
    object cdsNotasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotasID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsNotasID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsNotasQTDVOLUME: TIntegerField
      FieldName = 'QTDVOLUME'
    end
    object cdsNotasQTDTOTAL_ITENS: TIntegerField
      FieldName = 'QTDTOTAL_ITENS'
    end
    object cdsNotasSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsNotasNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsNotasVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
    end
    object cdsNotasTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
    object cdsNotasPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object cdsNotasPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object cdsNotasNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsNotasNOME_TRANSPORTADORA: TStringField
      FieldName = 'NOME_TRANSPORTADORA'
      Size = 60
    end
    object cdsNotasUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsNotasCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsNotasENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsNotasNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object cdsNotasCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsNotasBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsNotasTIPO_FRETE_DESC: TStringField
      FieldName = 'TIPO_FRETE_DESC'
      Required = True
      FixedChar = True
      Size = 12
    end
    object cdsNotasSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      FixedChar = True
      Size = 1
    end
    object cdsNotasVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
  end
  object dsNotas: TDataSource
    DataSet = cdsNotas
    Left = 560
    Top = 120
  end
  object qProximoMan: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MAX(M.num_manifesto) NUM_MANIFESTO'
      'FROM MANIFESTO M')
    SQLConnection = dmDatabase.scoDados
    Left = 304
    Top = 328
    object qProximoManNUM_MANIFESTO: TIntegerField
      FieldName = 'NUM_MANIFESTO'
    end
  end
  object frxReport1: TfrxReport
    Version = '5.1.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42184.844171990700000000
    ReportOptions.LastChange = 43096.963003923610000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Left = 400
    Top = 335
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 440
    Top = 335
  end
  object frxMailExport1: TfrxMailExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ShowExportDialog = True
    SmtpPort = 25
    UseIniFile = True
    TimeOut = 60
    ConfurmReading = False
    UseMAPI = SMTP
    Left = 480
    Top = 335
  end
  object frxRichObject1: TfrxRichObject
    Left = 512
    Top = 335
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxAgrupaQtd'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_PRODUTO=ID_PRODUTO'
      'QTD=QTD'
      'NOME_PRODUTO=NOME_PRODUTO')
    DataSource = dsAgrupaQtd
    BCDToCurrency = False
    Left = 400
    Top = 383
  end
  object sdsAgrupaQtd: TSQLDataSet
    CommandText = 
      'SELECT NI.ID_PRODUTO, SUM(NI.QTD) QTD, PROD.NOME NOME_PRODUTO'#13#10'F' +
      'ROM MANIFESTO_NOTA MN'#13#10'INNER JOIN NOTAFISCAL_ITENS NI'#13#10'on MN.id_' +
      'nota = NI.ID'#13#10'INNER JOIN PRODUTO PROD'#13#10'ON NI.ID_PRODUTO = PROD.I' +
      'D'#13#10'WHERE MN.ID = :ID'#13#10'GROUP BY NI.ID_PRODUTO, PROD.NOME'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 608
    Top = 256
  end
  object cdsAgrupaQtd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAgrupaQtd'
    Left = 712
    Top = 256
    object cdsAgrupaQtdID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsAgrupaQtdQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsAgrupaQtdNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
  end
  object dspAgrupaQtd: TDataSetProvider
    DataSet = sdsAgrupaQtd
    Left = 664
    Top = 256
  end
  object dsAgrupaQtd: TDataSource
    DataSet = cdsAgrupaQtd
    Left = 752
    Top = 256
  end
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MANIFESTO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 432
    Top = 24
    object sdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsConsultaDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object sdsConsultaSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object sdsConsultaPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object sdsConsultaPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
    end
    object sdsConsultaVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
    end
    object sdsConsultaVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object sdsConsultaNUM_MANIFESTO: TIntegerField
      FieldName = 'NUM_MANIFESTO'
    end
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Left = 464
    Top = 24
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 504
    Top = 24
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object cdsConsultaSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
      DisplayFormat = '0.000#'
    end
    object cdsConsultaPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
      DisplayFormat = '0.000#'
    end
    object cdsConsultaVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
      DisplayFormat = '0.00'
    end
    object cdsConsultaVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
      DisplayFormat = '0.00'
    end
    object cdsConsultaNUM_MANIFESTO: TIntegerField
      FieldName = 'NUM_MANIFESTO'
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 544
    Top = 24
  end
  object sdsEndereco: TSQLDataSet
    CommandText = 
      'SELECT MN.id ID_MANIFESTO, MN.id_nota, MN.num_nota, MN.serie, NT' +
      '.id_cliente,'#13#10'CLI.nome, CLI.cnpj_cpf,'#13#10'case'#13#10'  when nt.localentr' +
      'ega = '#39'E'#39' then cli.endereco_ent || '#39','#39' || cli.num_end_ent'#13#10'  els' +
      'e cli.endereco || '#39','#39' || cli.num_end'#13#10'  end ENDERECO,'#13#10'case'#13#10'  w' +
      'hen nt.localentrega = '#39'E'#39' then cli.bairro_ent'#13#10'  else cli.bairro' +
      #13#10'  end BAIRRO,'#13#10'case'#13#10'  when nt.localentrega = '#39'E'#39' then cli.cep' +
      '_ent'#13#10'  else cli.cep'#13#10'  end CEP,'#13#10'case'#13#10'  when nt.localentrega =' +
      ' '#39'E'#39' then cli.cidade_ent'#13#10'  else cli.cidade'#13#10'  end CIDADE,'#13#10'case' +
      #13#10'  when nt.localentrega = '#39'E'#39' then cli.uf_ent'#13#10'  else cli.uf'#13#10' ' +
      ' end UF,'#13#10'case'#13#10'  when nt.localentrega = '#39'E'#39' then cli.complement' +
      'o_end_ent'#13#10'  else cli.complemento_end'#13#10'  end Complemento_END'#13#10#13#10 +
      'FROM MANIFESTO_NOTA MN'#13#10'INNER JOIN NOTAFISCAL NT'#13#10'on MN.id_nota ' +
      '= NT.ID'#13#10'INNER JOIN PESSOA CLI'#13#10'ON NT.ID_CLIENTE = CLI.codigo'#13#10'W' +
      'HERE MN.ID = :ID'#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 608
    Top = 312
  end
  object cdsEndereco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEndereco'
    Left = 712
    Top = 312
    object cdsEnderecoID_MANIFESTO: TIntegerField
      FieldName = 'ID_MANIFESTO'
      Required = True
    end
    object cdsEnderecoID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object cdsEnderecoNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object cdsEnderecoSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object cdsEnderecoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsEnderecoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsEnderecoCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsEnderecoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 81
    end
    object cdsEnderecoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsEnderecoCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsEnderecoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsEnderecoUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsEnderecoCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
  end
  object dspEndereco: TDataSetProvider
    DataSet = sdsEndereco
    Left = 664
    Top = 312
  end
  object dsEndereco: TDataSource
    DataSet = cdsEndereco
    Left = 752
    Top = 312
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxEndereco'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_MANIFESTO=ID_MANIFESTO'
      'ID_NOTA=ID_NOTA'
      'NUM_NOTA=NUM_NOTA'
      'SERIE=SERIE'
      'ID_CLIENTE=ID_CLIENTE'
      'NOME=NOME'
      'CNPJ_CPF=CNPJ_CPF'
      'ENDERECO=ENDERECO'
      'BAIRRO=BAIRRO'
      'CEP=CEP'
      'CIDADE=CIDADE'
      'UF=UF'
      'COMPLEMENTO_END=COMPLEMENTO_END')
    DataSource = dsEndereco
    BCDToCurrency = False
    Left = 448
    Top = 383
  end
  object sdsFechamento: TSQLDataSet
    CommandText = 
      'SELECT SUM(NI.QTD) QTD, sum(ni.vlr_duplicata) vlr_duplicata,'#13#10'cl' +
      'i.nome nome_cliente, tc.nome nome_tipocobranca, cp.tipo,'#13#10'case'#13#10 +
      '  when cp.tipo = '#39'P'#39' then '#39'A Prazo'#39#13#10'  when cp.tipo = '#39'V'#39' then '#39 +
      #192' Vista'#39#13#10'  end Nome_VP'#13#10#13#10'FROM MANIFESTO_NOTA MN'#13#10'INNER JOIN NO' +
      'TAFISCAL_ITENS NI'#13#10'on MN.id_nota = NI.ID'#13#10'inner join notafiscal ' +
      'nt'#13#10'on mn.id_nota = nt.id'#13#10'inner join pessoa cli'#13#10'on nt.id_clien' +
      'te = cli.codigo'#13#10'left join tipocobranca tc'#13#10'on nt.id_tipo_cobran' +
      'ca = tc.id'#13#10'left join condpgto cp'#13#10'on nt.id_condpgto = cp.id'#13#10'WH' +
      'ERE MN.ID = :ID'#13#10'group by cli.nome, tc.nome, cp.tipo'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 608
    Top = 368
  end
  object cdsFechamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFechamento'
    Left = 712
    Top = 368
    object cdsFechamentoQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsFechamentoVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
      DisplayFormat = '0.00'
    end
    object cdsFechamentoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsFechamentoNOME_TIPOCOBRANCA: TStringField
      FieldName = 'NOME_TIPOCOBRANCA'
      Size = 30
    end
    object cdsFechamentoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsFechamentoNOME_VP: TStringField
      FieldName = 'NOME_VP'
      FixedChar = True
      Size = 7
    end
  end
  object dspFechamento: TDataSetProvider
    DataSet = sdsFechamento
    Left = 664
    Top = 368
  end
  object dsFechamento: TDataSource
    DataSet = cdsFechamento
    Left = 752
    Top = 368
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxFechamento'
    CloseDataSource = False
    FieldAliases.Strings = (
      'QTD=QTD'
      'VLR_DUPLICATA=VLR_DUPLICATA'
      'NOME_CLIENTE=NOME_CLIENTE'
      'NOME_TIPOCOBRANCA=NOME_TIPOCOBRANCA'
      'TIPO=TIPO'
      'NOME_VP=NOME_VP')
    DataSource = dsFechamento
    BCDToCurrency = False
    Left = 488
    Top = 383
  end
  object mTotalCobranca: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 616
    Top = 432
    Data = {
      6F0000009619E0BD0100000018000000030000000000030000006F00074E6F6D
      655F56500100490000000100055749445448020002001400124E6F6D655F5469
      706F5F436F6272616E6361010049000000010005574944544802000200280009
      566C725F546F74616C08000400000000000000}
    object mTotalCobrancaNome_VP: TStringField
      FieldName = 'Nome_VP'
    end
    object mTotalCobrancaNome_Tipo_Cobranca: TStringField
      FieldName = 'Nome_Tipo_Cobranca'
      Size = 40
    end
    object mTotalCobrancaVlr_Total: TFloatField
      FieldName = 'Vlr_Total'
    end
  end
  object dsmTotalCobranca: TDataSource
    DataSet = mTotalCobranca
    Left = 648
    Top = 432
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxmTotalCobranca'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Nome_VP=Nome_VP'
      'Nome_Tipo_Cobranca=Nome_Tipo_Cobranca'
      'Vlr_Total=Vlr_Total')
    DataSource = dsmTotalCobranca
    BCDToCurrency = False
    Left = 528
    Top = 383
  end
  object sdsManifesto_Cob: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MANIFESTO_COB'#13#10'WHERE ID = :ID'
    DataSource = dsManifesto_Mestre
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
    Top = 184
    object sdsManifesto_CobID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsManifesto_CobITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsManifesto_CobDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sdsManifesto_CobNUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object sdsManifesto_CobTIPO: TStringField
      FieldName = 'TIPO'
      Size = 3
    end
    object sdsManifesto_CobVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sdsManifesto_CobOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
  end
  object cdsManifesto_Cob: TClientDataSet
    Aggregates = <>
    DataSetField = cdsManifestosdsManifesto_Cob
    Params = <>
    Left = 176
    Top = 184
    object cdsManifesto_CobID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsManifesto_CobITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsManifesto_CobDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsManifesto_CobNUM_DOC: TIntegerField
      DisplayLabel = 'N'#186' Doc.'
      FieldName = 'NUM_DOC'
    end
    object cdsManifesto_CobTIPO: TStringField
      DisplayLabel = 'Tipo Doc.'
      FieldName = 'TIPO'
      Size = 3
    end
    object cdsManifesto_CobVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
    end
    object cdsManifesto_CobOBS: TStringField
      DisplayLabel = 'Obs.'
      FieldName = 'OBS'
      Size = 250
    end
  end
  object dsManifesto_Cob: TDataSource
    DataSet = cdsManifesto_Cob
    Left = 248
    Top = 184
  end
  object sdsImp: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT M.*'#13#10'FROM MANIFESTO M'#13#10'WHERE M.ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 752
    Top = 32
  end
  object cdsImp: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspImp'
    Left = 840
    Top = 32
    object cdsImpID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsImpDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsImpDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object cdsImpSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsImpPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object cdsImpPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
    end
    object cdsImpVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
    end
    object cdsImpVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object cdsImpNUM_MANIFESTO: TIntegerField
      FieldName = 'NUM_MANIFESTO'
    end
    object cdsImpPLACA: TStringField
      FieldName = 'PLACA'
      Size = 7
    end
    object cdsImpVLR_DESPESA: TFloatField
      FieldName = 'VLR_DESPESA'
      DisplayFormat = '0.00'
    end
    object cdsImpNOME_MOTORISTA: TStringField
      FieldName = 'NOME_MOTORISTA'
      Size = 70
    end
    object cdsImpNOME_AJUDANTE: TStringField
      FieldName = 'NOME_AJUDANTE'
      Size = 70
    end
    object cdsImpHORARIO: TTimeField
      FieldName = 'HORARIO'
    end
  end
  object dspImp: TDataSetProvider
    DataSet = sdsImp
    Left = 792
    Top = 32
  end
  object dsImp: TDataSource
    DataSet = cdsImp
    Left = 880
    Top = 32
  end
  object sdsImp_Nota: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT M.*, N.id_cliente, CLI.NOME NOME_CLIENTE, TCOB.NOME NOME_' +
      'COBRANCA,'#13#10'CASE'#13#10'  WHEN M.SERIE = '#39'RNF'#39' THEN '#39'RC.'#39#13#10'  ELSE '#39'NF.'#39 +
      #13#10'  END TIPO_DOC'#13#10'FROM MANIFESTO_NOTA M'#13#10'INNER JOIN NOTAFISCAL N' +
      #13#10'ON M.id_nota = N.ID'#13#10'INNER JOIN PESSOA CLI'#13#10'ON N.ID_CLIENTE = ' +
      'CLI.CODIGO'#13#10'LEFT JOIN TIPOCOBRANCA TCOB'#13#10'ON N.ID_TIPO_COBRANCA =' +
      ' TCOB.ID'#13#10'WHERE M.ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 752
    Top = 80
  end
  object cdsImp_Nota: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspImp_Nota'
    Left = 840
    Top = 80
    object cdsImp_NotaVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
    end
    object cdsImp_NotaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsImp_NotaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsImp_NotaID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object cdsImp_NotaPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object cdsImp_NotaPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
    end
    object cdsImp_NotaVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
      DisplayFormat = '0.00'
    end
    object cdsImp_NotaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object cdsImp_NotaNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object cdsImp_NotaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsImp_NotaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsImp_NotaNOME_COBRANCA: TStringField
      FieldName = 'NOME_COBRANCA'
      Size = 30
    end
    object cdsImp_NotaTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      Required = True
      FixedChar = True
      Size = 3
    end
  end
  object dspImp_Nota: TDataSetProvider
    DataSet = sdsImp_Nota
    Left = 792
    Top = 80
  end
  object dsImp_Nota: TDataSource
    DataSet = cdsImp_Nota
    Left = 880
    Top = 80
  end
  object sdsImp_Cob: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MANIFESTO_COB'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 752
    Top = 128
  end
  object cdsImp_Cob: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspImp_Cob'
    Left = 840
    Top = 128
    object cdsImp_CobID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsImp_CobITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsImp_CobDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsImp_CobNUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object cdsImp_CobTIPO: TStringField
      FieldName = 'TIPO'
      Size = 3
    end
    object cdsImp_CobVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '0.00'
    end
    object cdsImp_CobOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
  end
  object dspImp_Cob: TDataSetProvider
    DataSet = sdsImp_Cob
    Left = 792
    Top = 128
  end
  object dsImp_Cob: TDataSource
    DataSet = cdsImp_Cob
    Left = 880
    Top = 128
  end
  object frxImp: TfrxDBDataset
    UserName = 'frxImp'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'DATA=DATA'
      'DESCRICAO=DESCRICAO'
      'STATUS=STATUS'
      'PESO_LIQUIDO=PESO_LIQUIDO'
      'PESO_BRUTO=PESO_BRUTO'
      'VLR_NOTA=VLR_NOTA'
      'VLR_DUPLICATA=VLR_DUPLICATA'
      'NUM_MANIFESTO=NUM_MANIFESTO'
      'PLACA=PLACA'
      'VLR_DESPESA=VLR_DESPESA'
      'NOME_MOTORISTA=NOME_MOTORISTA'
      'NOME_AJUDANTE=NOME_AJUDANTE'
      'HORARIO=HORARIO')
    DataSource = dsImp
    BCDToCurrency = False
    Left = 400
    Top = 447
  end
  object frxImp_Nota: TfrxDBDataset
    UserName = 'frxImp_Nota'
    CloseDataSource = False
    FieldAliases.Strings = (
      'VLR_DUPLICATA=VLR_DUPLICATA'
      'ID=ID'
      'ITEM=ITEM'
      'ID_NOTA=ID_NOTA'
      'PESO_LIQUIDO=PESO_LIQUIDO'
      'PESO_BRUTO=PESO_BRUTO'
      'VLR_NOTA=VLR_NOTA'
      'SERIE=SERIE'
      'NUM_NOTA=NUM_NOTA'
      'ID_CLIENTE=ID_CLIENTE'
      'NOME_CLIENTE=NOME_CLIENTE'
      'NOME_COBRANCA=NOME_COBRANCA'
      'TIPO_DOC=TIPO_DOC')
    DataSource = dsImp_Nota
    BCDToCurrency = False
    Left = 456
    Top = 447
  end
  object frxImp_Cob: TfrxDBDataset
    UserName = 'frxImp_Cob'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ITEM=ITEM'
      'DESCRICAO=DESCRICAO'
      'NUM_DOC=NUM_DOC'
      'TIPO=TIPO'
      'VALOR=VALOR'
      'OBS=OBS')
    DataSource = dsImp_Cob
    BCDToCurrency = False
    Left = 504
    Top = 447
  end
end
