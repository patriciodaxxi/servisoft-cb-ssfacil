object DMConsFrete: TDMConsFrete
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 485
  Top = 175
  Height = 396
  Width = 603
  object sdsFrete: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT N.VLR_FRETE, N.VLR_FRETE_CUSTO, N.id,  N.numnota, N.dtemi' +
      'ssao, N.id_cliente,'#13#10'N.vlr_itens, N.vlr_nota, N.id_operacao_nota' +
      ', CLI.NOME NOME_CLIENTE, CLI.CNPJ_CPF, N.SERIE,'#13#10'CASE'#13#10'  WHEN N.' +
      'TIPO_FRETE = '#39'1'#39' THEN '#39'Emitente'#39#13#10'  WHEN N.TIPO_FRETE = '#39'2'#39' THEN' +
      ' '#39'Destinat'#225'rio'#39#13#10'  WHEN N.TIPO_FRETE = '#39'3'#39' THEN '#39'Terceiros'#39#13#10'  W' +
      'HEN N.TIPO_FRETE = '#39'9'#39' THEN '#39'Sem Frete'#39#13#10'  else '#39#39#13#10'  end TIPO_F' +
      'RETE'#13#10'FROM NOTAFISCAL N'#13#10'INNER JOIN TAB_CFOP CFOP'#13#10'ON N.ID_CFOP ' +
      '= CFOP.ID'#13#10'INNER JOIN PESSOA CLI'#13#10'ON N.ID_CLIENTE = CLI.CODIGO'#13#10 +
      'WHERE N.TIPO_REG = '#39'NTS'#39#13#10'  AND CFOP.FATURAMENTO = '#39'S'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 32
  end
  object dspFrete: TDataSetProvider
    DataSet = sdsFrete
    Left = 104
    Top = 32
  end
  object cdsFrete: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFrete'
    Left = 136
    Top = 32
    object cdsFreteVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
      DisplayFormat = '0.00'
    end
    object cdsFreteVLR_FRETE_CUSTO: TFloatField
      FieldName = 'VLR_FRETE_CUSTO'
      DisplayFormat = '0.00'
    end
    object cdsFreteID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFreteNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsFreteDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsFreteID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsFreteVLR_ITENS: TFloatField
      FieldName = 'VLR_ITENS'
      DisplayFormat = '0.00'
    end
    object cdsFreteVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
      DisplayFormat = '0.00'
    end
    object cdsFreteID_OPERACAO_NOTA: TIntegerField
      FieldName = 'ID_OPERACAO_NOTA'
    end
    object cdsFreteNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsFreteCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsFreteSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsFreteTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Required = True
      FixedChar = True
      Size = 12
    end
  end
  object dsFrete: TDataSource
    DataSet = cdsFrete
    Left = 168
    Top = 32
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME, NOME_INTERNO'#13#10'FROM FILIAL'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 320
    Top = 40
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 352
    Top = 40
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 392
    Top = 40
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
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 424
    Top = 40
  end
  object sdsCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME, FANTASIA'#13#10'FROM PESSOA'#13#10'WHERE TP_CLIENTE = '#39 +
      'S'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 320
    Top = 144
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 352
    Top = 144
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCliente'
    Left = 392
    Top = 144
    object cdsClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsClienteFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 432
    Top = 144
  end
  object frxReport1: TfrxReport
    Version = '5.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42222.414492245400000000
    ReportOptions.LastChange = 43130.403366736110000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Left = 88
    Top = 128
  end
  object frxFrete: TfrxDBDataset
    UserName = 'frxFrete'
    CloseDataSource = False
    FieldAliases.Strings = (
      'VLR_FRETE=VLR_FRETE'
      'VLR_FRETE_CUSTO=VLR_FRETE_CUSTO'
      'ID=ID'
      'NUMNOTA=NUMNOTA'
      'DTEMISSAO=DTEMISSAO'
      'ID_CLIENTE=ID_CLIENTE'
      'VLR_ITENS=VLR_ITENS'
      'VLR_NOTA=VLR_NOTA'
      'ID_OPERACAO_NOTA=ID_OPERACAO_NOTA'
      'NOME_CLIENTE=NOME_CLIENTE'
      'CNPJ_CPF=CNPJ_CPF'
      'SERIE=SERIE'
      'TIPO_FRETE=TIPO_FRETE')
    DataSet = cdsFrete
    BCDToCurrency = False
    Left = 88
    Top = 184
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
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 127
    Top = 127
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
    MAPISendFlag = 0
    Left = 167
    Top = 127
  end
  object frxRichObject1: TfrxRichObject
    Left = 199
    Top = 127
  end
end
