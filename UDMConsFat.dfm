object DMConsFat: TDMConsFat
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 332
  Top = 111
  Height = 445
  Width = 817
  object sdsFatAcum: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT V.*,  (V.VLR_TOTAL + V.VLR_IPI) VLR_TOTAL_BRU,'#13#10'(V.VLR_TO' +
      'TAL + V.VLR_IPI) VLR_TOTAL_LIQ'#13#10'FROM VFAT_ACUM V'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 48
  end
  object dspFatAcum: TDataSetProvider
    DataSet = sdsFatAcum
    Left = 128
    Top = 48
  end
  object cdsFatAcum: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NUM_NOTA;CODCFOP'
    Params = <>
    ProviderName = 'dspFatAcum'
    Left = 160
    Top = 48
    object cdsFatAcumTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 3
    end
    object cdsFatAcumVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumVLR_LIQUIDO_NFSE: TFloatField
      FieldName = 'VLR_LIQUIDO_NFSE'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsFatAcumNOME_CLIFORN: TStringField
      FieldName = 'NOME_CLIFORN'
      Size = 60
    end
    object cdsFatAcumNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object cdsFatAcumDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsFatAcumDTENTRADASAIDA: TDateField
      FieldName = 'DTENTRADASAIDA'
    end
    object cdsFatAcumTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsFatAcumFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsFatAcumUF_CLI: TStringField
      FieldName = 'UF_CLI'
      FixedChar = True
      Size = 2
    end
    object cdsFatAcumID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsFatAcumVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumVLR_TOTAL_LIQ: TFloatField
      FieldName = 'VLR_TOTAL_LIQ'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsFatAcumVLR_TOTAL_BRU: TFloatField
      FieldName = 'VLR_TOTAL_BRU'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumDEVOLUCAO: TStringField
      FieldName = 'DEVOLUCAO'
      FixedChar = True
      Size = 1
    end
    object cdsFatAcumVLR_ICMS_UF_REMET: TFloatField
      FieldName = 'VLR_ICMS_UF_REMET'
    end
    object cdsFatAcumVLR_ICMS_UF_DEST: TFloatField
      FieldName = 'VLR_ICMS_UF_DEST'
    end
    object cdsFatAcumVLR_CUSTO: TFloatField
      FieldName = 'VLR_CUSTO'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumVLR_IR_VENDA: TFloatField
      FieldName = 'VLR_IR_VENDA'
      DisplayFormat = '0.00'
    end
    object cdsFatAcumVLR_CSLL_VENDA: TFloatField
      FieldName = 'VLR_CSLL_VENDA'
      DisplayFormat = '0.00'
    end
  end
  object dsFatAcum: TDataSource
    DataSet = cdsFatAcum
    Left = 200
    Top = 48
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT F.ID, F.NOME, F.NOME_INTERNO, F.CNPJ_CPF, F.PERC_IR, F.PE' +
      'RC_CSLL'#13#10'FROM FILIAL F'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 136
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 336
    Top = 136
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 375
    Top = 135
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
    object cdsFilialCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsFilialPERC_IR: TFloatField
      FieldName = 'PERC_IR'
    end
    object cdsFilialPERC_CSLL: TFloatField
      FieldName = 'PERC_CSLL'
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 416
    Top = 136
  end
  object frxReport1: TfrxReport
    Tag = 1
    Version = '5.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42992.427233402800000000
    ReportOptions.LastChange = 43336.730716736110000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnBeforePrint = frxReport1BeforePrint
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 88
    Top = 177
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TIPO_MOV=TIPO_MOV'
      'VLR_DUPLICATA=VLR_DUPLICATA'
      'VLR_LIQUIDO_NFSE=VLR_LIQUIDO_NFSE'
      'VLR_TOTAL=VLR_TOTAL'
      'VLR_ICMSSUBST=VLR_ICMSSUBST'
      'VLR_IPI=VLR_IPI'
      'ID_PESSOA=ID_PESSOA'
      'NOME_CLIFORN=NOME_CLIFORN'
      'NUM_NOTA=NUM_NOTA'
      'DTEMISSAO=DTEMISSAO'
      'DTENTRADASAIDA=DTENTRADASAIDA'
      'TIPO_REG=TIPO_REG'
      'FILIAL=FILIAL'
      'UF_CLI=UF_CLI'
      'ID_CFOP=ID_CFOP'
      'VLR_DESCONTO=VLR_DESCONTO'
      'VLR_PIS=VLR_PIS'
      'VLR_COFINS=VLR_COFINS'
      'VLR_ICMS=VLR_ICMS'
      'VLR_TOTAL_LIQ=VLR_TOTAL_LIQ'
      'CODCFOP=CODCFOP'
      'VLR_TOTAL_BRU=VLR_TOTAL_BRU'
      'VLR_FRETE=VLR_FRETE'
      'DEVOLUCAO=DEVOLUCAO'
      'VLR_ICMS_UF_REMET=VLR_ICMS_UF_REMET'
      'VLR_ICMS_UF_DEST=VLR_ICMS_UF_DEST')
    DataSet = cdsFatAcum
    BCDToCurrency = False
    Left = 90
    Top = 233
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
    Left = 128
    Top = 177
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
    Left = 168
    Top = 177
  end
  object frxRichObject1: TfrxRichObject
    Left = 200
    Top = 177
  end
  object sdsCupomTerminal: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM CUPOMFISCAL_TERMINAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 48
  end
  object dspCupomTerminal: TDataSetProvider
    DataSet = sdsCupomTerminal
    Left = 336
    Top = 48
  end
  object cdsCupomTerminal: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCupomTerminal'
    Left = 376
    Top = 48
    object cdsCupomTerminalID: TSmallintField
      FieldName = 'ID'
      Required = True
    end
    object cdsCupomTerminalNOME: TStringField
      FieldName = 'NOME'
    end
  end
  object dsCupomTerminar: TDataSource
    DataSet = cdsCupomTerminal
    Left = 416
    Top = 48
  end
  object sdsComprasServicos: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT COALESCE(PC.CODIGO, '#39#39') CONTA, COALESCE(PC.NOME, '#39#39') NOME' +
      '_CONTA, NF.DTEMISSAO, P.CODIGO, P.FANTASIA NOME_CLI,'#13#10'       NF.' +
      'SERIE, NF.NUMNOTA, TC.CODCFOP, NF.ESPECIE, NF.VLR_NOTA - NF.VLR_' +
      'DESCONTO AS VALOR_LIQUIDO, NF.VLR_ICMS,'#13#10'       NF.VLR_IPI, NF.V' +
      'LR_PIS, NF.VLR_COFINS, NF.VLR_NOTA, ID_CONTA_ORCAMENTO,'#13#10'       ' +
      '(SELECT SUM(COALESCE(CD.QTDDIAS, 1))'#13#10'        FROM CONDPGTO_DIA ' +
      'CD'#13#10'        WHERE NF.ID_CONDPGTO = CD.ID) / (SELECT COUNT(COALES' +
      'CE(CD1.QTDDIAS, 1))'#13#10'                                         FR' +
      'OM CONDPGTO_DIA CD1'#13#10'                                         WH' +
      'ERE NF.ID_CONDPGTO = CD1.ID) AS MEDIA_DIAS'#13#10'FROM NOTAFISCAL NF'#13#10 +
      'LEFT JOIN CONTA_ORCAMENTO CO ON CO.ID = NF.ID_CONTA_ORCAMENTO'#13#10'L' +
      'EFT JOIN PLANO_CONTABIL PC ON PC.ID = CO.COD_CONTABIL'#13#10'LEFT JOIN' +
      ' PESSOA P ON P.CODIGO = NF.ID_CLIENTE'#13#10'LEFT JOIN TAB_CFOP TC ON ' +
      'TC.ID = NF.ID_CFOP'#13#10'LEFT JOIN FILIAL FL ON FL.ID = NF.FILIAL'#13#10'WH' +
      'ERE NF.TIPO_REG = '#39'NTE'#39' AND'#13#10'      NF.DTEMISSAO BETWEEN CAST(:DA' +
      'TA_INICIAL AS DATE) AND CAST(:DATA_FINAL AS DATE) AND'#13#10'      NF.' +
      'FILIAL = :FILIAL'#13#10'UNION ALL'#13#10'SELECT COALESCE(PC1.CODIGO, '#39#39') CON' +
      'TA, COALESCE(PC1.NOME, '#39#39') NOME_CONTA, CAST(NFS.DTEMISSAO AS DAT' +
      'E), P1.CODIGO,'#13#10'       P1.FANTASIA NOME_CLI, NFS.SERIE, NFS.NUMN' +
      'OTA, '#39'9999'#39' CODCFOP, '#39'ESP'#39' ESPECIE,'#13#10'       NFS.VLR_SERVICOS - N' +
      'FS.VLR_DESCONTO_INC AS VALOR_LIQUIDO1, NFS.VLR_ICMS, CAST('#39'0.00'#39 +
      ' AS NUMERIC(15,2)) VALOR_IPI,'#13#10'       NFS.VLR_PIS_CALC, NFS.VLR_' +
      'COFINS_CALC, NFS.VLR_SERVICOS,ID_CONTA_ORCAMENTO,'#13#10'       (SELEC' +
      'T SUM(COALESCE(CD.QTDDIAS, 1))'#13#10'        FROM CONDPGTO_DIA CD'#13#10'  ' +
      '      WHERE NFS.ID_CONDPGTO = CD.ID) / (SELECT COUNT(COALESCE(CD' +
      '1.QTDDIAS, 1))'#13#10'                                          FROM C' +
      'ONDPGTO_DIA CD1'#13#10'                                          WHERE' +
      ' NFS.ID_CONDPGTO = CD1.ID) AS MEDIA_DIAS1'#13#10'FROM NOTASERVICO NFS'#13 +
      #10'LEFT JOIN CONTA_ORCAMENTO CO1 ON CO1.ID = NFS.ID_CONTA_ORCAMENT' +
      'O'#13#10'LEFT JOIN PLANO_CONTABIL PC1 ON PC1.ID = CO1.COD_CONTABIL'#13#10'LE' +
      'FT JOIN PESSOA P1 ON P1.CODIGO = NFS.ID_CLIENTE'#13#10'LEFT JOIN FILIA' +
      'L FL1 ON FL1.ID = NFS.FILIAL'#13#10'WHERE NFS.DTEMISSAO BETWEEN CAST(:' +
      'DATA_INICIAL AS DATE) AND CAST(:DATA_FINAL AS DATE) AND'#13#10'      N' +
      'FS.FILIAL = :FILIAL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_FINAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_FINAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 309
    Top = 214
  end
  object dspComprasServicos: TDataSetProvider
    DataSet = sdsComprasServicos
    Left = 347
    Top = 214
  end
  object cdsComprasServicos: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CONTA'
    Params = <>
    ProviderName = 'dspComprasServicos'
    OnCalcFields = cdsComprasServicosCalcFields
    Left = 382
    Top = 212
    object cdsComprasServicosCONTA: TStringField
      FieldName = 'CONTA'
      Size = 60
    end
    object cdsComprasServicosNOME_CONTA: TStringField
      FieldName = 'NOME_CONTA'
      Size = 100
    end
    object cdsComprasServicosDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsComprasServicosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsComprasServicosNOME_CLI: TStringField
      FieldName = 'NOME_CLI'
      Size = 30
    end
    object cdsComprasServicosSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object cdsComprasServicosNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsComprasServicosCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsComprasServicosESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 30
    end
    object cdsComprasServicosVALOR_LIQUIDO: TFloatField
      FieldName = 'VALOR_LIQUIDO'
    end
    object cdsComprasServicosVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
    end
    object cdsComprasServicosVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
    end
    object cdsComprasServicosVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
    end
    object cdsComprasServicosVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
    end
    object cdsComprasServicosVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
    end
    object cdsComprasServicosID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsComprasServicosMEDIA_DIAS: TFMTBCDField
      FieldName = 'MEDIA_DIAS'
      Precision = 15
      Size = 0
    end
    object cdsComprasServicosCTA_CONTA: TStringField
      FieldKind = fkCalculated
      FieldName = 'CTA_CONTA'
      Size = 100
      Calculated = True
    end
  end
  object dsComprasServico: TDataSource
    DataSet = cdsComprasServicos
    Left = 411
    Top = 214
  end
  object sdsConsComprasServico: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT A.ID, A.CODIGO ||'#39' - '#39'|| A.DESCRICAO CONTA_ORCAMENTO'#13#10'FRO' +
      'M CONTA_ORCAMENTO A'#13#10'WHERE TIPO = '#39'A'#39'  '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 94
    Top = 109
  end
  object dspConsComprasServico: TDataSetProvider
    DataSet = sdsConsComprasServico
    Left = 132
    Top = 106
  end
  object cdsConsComprasServico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsComprasServico'
    Left = 166
    Top = 106
    object cdsConsComprasServicoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsComprasServicoCONTA_ORCAMENTO: TStringField
      FieldName = 'CONTA_ORCAMENTO'
      Size = 73
    end
  end
  object dsConsComprasServico: TDataSource
    DataSet = cdsConsComprasServico
    Left = 197
    Top = 106
  end
  object frxComprasServicos: TfrxDBDataset
    UserName = 'frxComprasServicos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CONTA=CONTA'
      'NOME_CONTA=NOME_CONTA'
      'DTEMISSAO=DTEMISSAO'
      'CODIGO=CODIGO'
      'NOME_CLI=NOME_CLI'
      'SERIE=SERIE'
      'NUMNOTA=NUMNOTA'
      'CODCFOP=CODCFOP'
      'ESPECIE=ESPECIE'
      'VALOR_LIQUIDO=VALOR_LIQUIDO'
      'VLR_ICMS=VLR_ICMS'
      'VLR_IPI=VLR_IPI'
      'VLR_PIS=VLR_PIS'
      'VLR_COFINS=VLR_COFINS'
      'VLR_NOTA=VLR_NOTA'
      'MEDIA_DIAS=MEDIA_DIAS'
      'CTA_CONTA=CTA_CONTA')
    DataSource = dsComprasServico
    BCDToCurrency = False
    Left = 174
    Top = 232
  end
  object sdsConsCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID_PESSOA, NOME_CLIFORN, SUM(VLR_DUPLICATA) VLR_DUPLICATA' +
      ', SUM(VLR_ICMS) VLR_ICMS, SUM(VLR_TOTAL) VLR_TOTAL,'#13#10'       SUM(' +
      'VLR_ICMSSUBST) VLR_ICMSSUBST, SUM(VLR_IPI) VLR_IPI, SUM(VLR_FRET' +
      'E) VLR_FRETE,'#13#10'       SUM(VLR_ICMS_UF_REMET) VLR_ICMS_UF_REMET, ' +
      'SUM(VLR_ICMS_UF_DEST) VLR_ICMS_UF_DEST, SUM(VLR_DESCONTO) VLR_DE' +
      'SCONTO,'#13#10'       SUM(VLR_COFINS) VLR_COFINS, SUM(VLR_PIS) VLR_PIS' +
      ', SUM(VLR_CUSTO) VLR_CUSTO, SUM(VLR_IR_VENDA) VLR_IR_VENDA,'#13#10'   ' +
      '    SUM(VLR_CSLL_VENDA) VLR_CSLL_VENDA,'#13#10'       (SUM(V.VLR_TOTAL' +
      ') + SUM(V.VLR_IPI) + SUM(V.VLR_FRETE)) VLR_TOTAL_BRU, SUM(V.VLR_' +
      'DUPLICATA) VLR_TOTAL_LIQ'#13#10'FROM VFAT_ACUM V'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 300
    Top = 275
  end
  object dspConsCliente: TDataSetProvider
    DataSet = sdsConsCliente
    Left = 333
    Top = 277
  end
  object cdsConsCliente: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_PESSOA'
    Params = <>
    ProviderName = 'dspConsCliente'
    Left = 365
    Top = 276
    object cdsConsClienteID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsConsClienteNOME_CLIFORN: TStringField
      FieldName = 'NOME_CLIFORN'
      Size = 60
    end
    object cdsConsClienteVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteVLR_ICMS_UF_REMET: TFloatField
      FieldName = 'VLR_ICMS_UF_REMET'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteVLR_ICMS_UF_DEST: TFloatField
      FieldName = 'VLR_ICMS_UF_DEST'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteVLR_CUSTO: TFloatField
      FieldName = 'VLR_CUSTO'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteVLR_IR_VENDA: TFloatField
      FieldName = 'VLR_IR_VENDA'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteVLR_CSLL_VENDA: TFloatField
      FieldName = 'VLR_CSLL_VENDA'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteVLR_TOTAL_BRU: TFloatField
      FieldName = 'VLR_TOTAL_BRU'
      DisplayFormat = '##0.00'
    end
    object cdsConsClienteVLR_TOTAL_LIQ: TFloatField
      FieldName = 'VLR_TOTAL_LIQ'
    end
  end
  object dsConsCliente: TDataSource
    DataSet = cdsConsCliente
    Left = 397
    Top = 277
  end
  object frxConsCliente: TfrxDBDataset
    UserName = 'frxConsCliente'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_PESSOA=ID_PESSOA'
      'NOME_CLIFORN=NOME_CLIFORN'
      'VLR_DUPLICATA=VLR_DUPLICATA'
      'VLR_ICMS=VLR_ICMS'
      'VLR_TOTAL=VLR_TOTAL'
      'VLR_ICMSSUBST=VLR_ICMSSUBST'
      'VLR_IPI=VLR_IPI'
      'VLR_FRETE=VLR_FRETE'
      'VLR_ICMS_UF_REMET=VLR_ICMS_UF_REMET'
      'VLR_ICMS_UF_DEST=VLR_ICMS_UF_DEST'
      'VLR_DESCONTO=VLR_DESCONTO'
      'VLR_COFINS=VLR_COFINS'
      'VLR_PIS=VLR_PIS'
      'VLR_CUSTO=VLR_CUSTO'
      'VLR_IR_VENDA=VLR_IR_VENDA'
      'VLR_CSLL_VENDA=VLR_CSLL_VENDA'
      'VLR_TOTAL_BRU=VLR_TOTAL_BRU'
      'VLR_TOTAL_LIQ=VLR_TOTAL_LIQ')
    DataSource = dsConsCliente
    BCDToCurrency = False
    Left = 89
    Top = 285
  end
  object sdsConsData: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT DTEMISSAO, SUM(VLR_DUPLICATA) VLR_DUPLICATA, SUM(VLR_ICMS' +
      ') VLR_ICMS, SUM(VLR_TOTAL) VLR_TOTAL,'#13#10'       SUM(VLR_ICMSSUBST)' +
      ' VLR_ICMSSUBST, SUM(VLR_IPI) VLR_IPI, SUM(VLR_FRETE) VLR_FRETE,'#13 +
      #10'       SUM(VLR_ICMS_UF_REMET) VLR_ICMS_UF_REMET, SUM(VLR_ICMS_U' +
      'F_DEST) VLR_ICMS_UF_DEST, SUM(VLR_DESCONTO) VLR_DESCONTO,'#13#10'     ' +
      '  SUM(VLR_COFINS) VLR_COFINS, SUM(VLR_PIS) VLR_PIS, SUM(VLR_CUST' +
      'O) VLR_CUSTO, SUM(VLR_IR_VENDA) VLR_IR_VENDA,'#13#10'       SUM(VLR_CS' +
      'LL_VENDA) VLR_CSLL_VENDA,'#13#10'       (SUM(V.VLR_TOTAL) + SUM(V.VLR_' +
      'IPI) + SUM(V.VLR_FRETE)) VLR_TOTAL_BRU, SUM(V.VLR_TOTAL) VLR_TOT' +
      'AL_LIQ'#13#10'FROM VFAT_ACUM V'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 303
    Top = 328
  end
  object dspConsData: TDataSetProvider
    DataSet = sdsConsData
    Left = 335
    Top = 328
  end
  object cdsConsData: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'DTEMISSAO'
    Params = <>
    ProviderName = 'dspConsData'
    Left = 367
    Top = 330
    object cdsConsDataDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsConsDataVLR_DUPLICATA: TFloatField
      FieldName = 'VLR_DUPLICATA'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataVLR_ICMSSUBST: TFloatField
      FieldName = 'VLR_ICMSSUBST'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataVLR_ICMS_UF_REMET: TFloatField
      FieldName = 'VLR_ICMS_UF_REMET'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataVLR_ICMS_UF_DEST: TFloatField
      FieldName = 'VLR_ICMS_UF_DEST'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataVLR_CUSTO: TFloatField
      FieldName = 'VLR_CUSTO'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataVLR_IR_VENDA: TFloatField
      FieldName = 'VLR_IR_VENDA'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataVLR_CSLL_VENDA: TFloatField
      FieldName = 'VLR_CSLL_VENDA'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataVLR_TOTAL_BRU: TFloatField
      FieldName = 'VLR_TOTAL_BRU'
      DisplayFormat = '##0.00'
    end
    object cdsConsDataVLR_TOTAL_LIQ: TFloatField
      FieldName = 'VLR_TOTAL_LIQ'
      DisplayFormat = '##0.00'
    end
  end
  object dsConsData: TDataSource
    DataSet = cdsConsData
    Left = 399
    Top = 328
  end
  object frxConsData: TfrxDBDataset
    UserName = 'frxConsData'
    CloseDataSource = False
    FieldAliases.Strings = (
      'DTEMISSAO=DTEMISSAO'
      'VLR_DUPLICATA=VLR_DUPLICATA'
      'VLR_ICMS=VLR_ICMS'
      'VLR_TOTAL=VLR_TOTAL'
      'VLR_ICMSSUBST=VLR_ICMSSUBST'
      'VLR_IPI=VLR_IPI'
      'VLR_FRETE=VLR_FRETE'
      'VLR_ICMS_UF_REMET=VLR_ICMS_UF_REMET'
      'VLR_ICMS_UF_DEST=VLR_ICMS_UF_DEST'
      'VLR_DESCONTO=VLR_DESCONTO'
      'VLR_COFINS=VLR_COFINS'
      'VLR_PIS=VLR_PIS'
      'VLR_CUSTO=VLR_CUSTO'
      'VLR_IR_VENDA=VLR_IR_VENDA'
      'VLR_CSLL_VENDA=VLR_CSLL_VENDA'
      'VLR_TOTAL_BRU=VLR_TOTAL_BRU'
      'VLR_TOTAL_LIQ=VLR_TOTAL_LIQ')
    DataSource = dsConsData
    BCDToCurrency = False
    Left = 173
    Top = 284
  end
end
