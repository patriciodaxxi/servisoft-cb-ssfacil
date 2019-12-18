object DMConsNCM_CFOP: TDMConsNCM_CFOP
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 302
  Top = 231
  Height = 339
  Width = 588
  object sdsFaturamentoNCM: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select N.NCM, sum(MOV.VLR_TOTAL) VLR_TOTAL'#13#10'from MOVIMENTO MOV'#13#10 +
      'left join PRODUTO PROD on MOV.ID_PRODUTO = PROD.ID'#13#10'left join TA' +
      'B_NCM N on N.ID = PROD.ID_NCM'#13#10'left join TAB_CFOP TCFOP on (MOV.' +
      'ID_CFOP = TCFOP.ID)'#13#10'where MOV.CANCELADO = '#39'N'#39' and'#13#10'      MOV.DE' +
      'NEGADA = '#39'N'#39' and'#13#10'      (MOV.TIPO_REG = '#39'NTS'#39' or MOV.TIPO_REG = ' +
      #39'CFI'#39')'#13#10'group by N.NCM, MOV.TIPO_REG'#13#10'order by VLR_TOTAL desc  '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 18
  end
  object dspFaturamentoNCM: TDataSetProvider
    DataSet = sdsFaturamentoNCM
    Options = [poAllowCommandText]
    Left = 64
    Top = 18
  end
  object cdsFaturamentoNCM: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFaturamentoNCM'
    Left = 96
    Top = 18
    object cdsFaturamentoNCMNCM: TStringField
      DisplayWidth = 20
      FieldName = 'NCM'
      Size = 10
    end
    object cdsFaturamentoNCMVLR_TOTAL: TFloatField
      DisplayLabel = 'Valor Total'
      DisplayWidth = 20
      FieldName = 'VLR_TOTAL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
  end
  object sdsFaturamentoCFOP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select CFOP.codcfop, CFOP.NOME, sum(MOV.VLR_TOTAL) VLR_TOTAL'#13#10'fr' +
      'om MOVIMENTO MOV'#13#10'inner join TAB_CFOP CFOP on CFOP.ID = MOV.ID_C' +
      'FOP'#13#10'where MOV.CANCELADO = '#39'N'#39' and'#13#10'      MOV.DENEGADA = '#39'N'#39#13#10'gr' +
      'oup by CFOP.codcfop, CFOP.NOME'#13#10'order by VLR_TOTAL desc'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 82
  end
  object dspFaturamentoCFOP: TDataSetProvider
    DataSet = sdsFaturamentoCFOP
    Options = [poAllowCommandText]
    Left = 64
    Top = 82
  end
  object cdsFaturamentoCFOP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFaturamentoCFOP'
    Left = 96
    Top = 82
    object cdsFaturamentoCFOPCODCFOP: TStringField
      DisplayWidth = 15
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsFaturamentoCFOPNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 70
      FieldName = 'NOME'
      Size = 50
    end
    object cdsFaturamentoCFOPVLR_TOTAL: TFloatField
      DisplayLabel = 'Valor Total'
      DisplayWidth = 15
      FieldName = 'VLR_TOTAL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME, NOME_INTERNO FROM FILIAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 138
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Options = [poAllowCommandText]
    Left = 64
    Top = 138
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFilial'
    Left = 96
    Top = 138
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
    Left = 128
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
    ReportOptions.CreateDate = 42032.577038136600000000
    ReportOptions.LastChange = 43817.700983599530000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 328
    Top = 40
    Datasets = <
      item
        DataSet = frxCFOP
        DataSetName = 'frxCFOP'
      end>
    Variables = <
      item
        Name = ' Variaveis'
        Value = Null
      end
      item
        Name = 'Opcao_Imp'
        Value = Null
      end
      item
        Name = 'Pedidos_Sel'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 8.000000000000000000
      RightMargin = 8.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 8.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 166.299320000000000000
        Width = 733.228820000000000000
        OnBeforePrint = 'MasterData2OnBeforePrint'
        AllowSplit = True
        DataSet = frxCFOP
        DataSetName = 'frxCFOP'
        RowCount = 0
        Stretched = True
        object Memo3: TfrxMemoView
          Left = 430.086890000000000000
          Top = 2.559060000000000000
          Width = 173.858131020000000000
          Height = 11.338590000000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxCFOP."VLR_TOTAL"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 2.314780000000000000
          Top = 2.614100000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataSetName = 'frxEstoque_Mov'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxCFOP."CODCFOP"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 60.472480000000000000
          Top = 3.779530000000000000
          Width = 325.039580000000000000
          Height = 11.338590000000000000
          DataSetName = 'frxEstoque_Mov'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxCFOP."NOME"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 120.944960000000000000
        Width = 733.228820000000000000
        object Shape1: TfrxShapeView
          Left = -0.220470000000000000
          Top = 2.559060000000000000
          Width = 733.228820000000000000
          Height = 18.897650000000000000
        end
        object Memo10: TfrxMemoView
          Left = 430.086890000000000000
          Top = 6.614100000000000000
          Width = 173.858131020000000000
          Height = 11.338590000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Valor')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 3.094310000000000000
          Top = 6.614100000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'CFOP')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 60.472480000000000000
          Top = 6.614100000000000000
          Width = 325.039580000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Descri'#195#167#195#163'o')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 207.874150000000000000
        Width = 733.228820000000000000
        object Line3: TfrxLineView
          Top = 3.779530000000000000
          Width = 729.449290000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo4: TfrxMemoView
          Left = 332.598640000000000000
          Top = 7.559060000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 430.086641020000000000
          Top = 7.559060000000000000
          Width = 173.858380000000000000
          Height = 11.338590000000000000
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxNCM."VLR_TOTAL">,MasterData2)]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 291.023810000000000000
        Width = 733.228820000000000000
        object Memo5: TfrxMemoView
          Left = 627.401980000000000000
          Top = 2.000000000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Estoque_CCusto.,fr3')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 18.897650000000000000
        Width = 733.228820000000000000
        object Memo2: TfrxMemoView
          Left = 1.779530000000000000
          Top = 7.338590000000000000
          Width = 593.386210000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'Relat'#195#179'rio do Movimento por CFOP')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 612.283860000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '.Pag.: [Page]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 612.283860000000000000
          Top = 17.118120000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '.Data: [Date]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baBottom
          Top = 41.574830000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo9: TfrxMemoView
          Left = 1.779530000000000000
          Top = 25.456710000000000000
          Width = 581.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Op'#195#167#195#163'o: [Opcao_Imp]')
          ParentFont = False
        end
      end
    end
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
    Left = 368
    Top = 40
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    RowsCount = 0
    Split = ssNotSplit
    Left = 424
    Top = 40
  end
  object frxNCM: TfrxDBDataset
    UserName = 'frxNCM'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NCM=NCM'
      'VLR_TOTAL=VLR_TOTAL')
    DataSet = cdsFaturamentoNCM
    BCDToCurrency = False
    Left = 328
    Top = 88
  end
  object frxCFOP: TfrxDBDataset
    UserName = 'frxCFOP'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODCFOP=CODCFOP'
      'NOME=NOME'
      'VLR_TOTAL=VLR_TOTAL')
    DataSet = cdsFaturamentoCFOP
    BCDToCurrency = False
    Left = 376
    Top = 88
  end
end
