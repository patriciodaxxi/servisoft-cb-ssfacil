object frmConsFat: TfrmConsFat
  Left = 383
  Top = 99
  Width = 920
  Height = 543
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'frmConsFat'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object NxPanel1: TNxPanel
    Left = 0
    Top = 0
    Width = 904
    Height = 76
    Align = alTop
    UseDockManager = False
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 229
      Top = 31
      Width = 56
      Height = 13
      Caption = 'Data Inicial:'
      Transparent = True
    end
    object Label2: TLabel
      Left = 388
      Top = 31
      Width = 25
      Height = 13
      Caption = 'Final:'
      Transparent = True
    end
    object Label3: TLabel
      Left = 262
      Top = 12
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'Filial:'
      Transparent = True
    end
    object Label17: TLabel
      Left = 524
      Top = 31
      Width = 25
      Height = 13
      Caption = 'PDV:'
      Transparent = True
    end
    object NxDatePicker1: TNxDatePicker
      Left = 287
      Top = 24
      Width = 91
      Height = 21
      TabOrder = 1
      Text = '22/05/2013'
      HideFocus = False
      Date = 41416.000000000000000000
      NoneCaption = 'Limpar'
      TodayCaption = 'Hoje'
    end
    object NxDatePicker2: TNxDatePicker
      Left = 414
      Top = 24
      Width = 91
      Height = 21
      TabOrder = 2
      Text = '22/05/2013'
      HideFocus = False
      Date = 41416.000000000000000000
      NoneCaption = 'Limpar'
      TodayCaption = 'Hoje'
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 287
      Top = 4
      Width = 377
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      LookupField = 'ID'
      LookupDisplay = 'NOME_INTERNO'
      LookupSource = DMConsFat.dsFilial
      ParentCtl3D = False
      TabOrder = 0
    end
    object RzCheckList1: TRzCheckList
      Left = 0
      Top = 0
      Width = 222
      Height = 76
      Items.Strings = (
        '//...Descontar...'
        'Valor IPI'
        'Valor ST'
        'Valor ICMS'
        'Valor PIS'
        'Valor COFINS'
        'Valor Frete'
        'Difal (Dif. de Al'#237'q)'
        'Valor IR'
        'Valor CSLL')
      Items.ItemEnabled = (
        True
        True
        True
        True
        True
        True
        True
        True
        True
        True)
      Items.ItemState = (
        0
        0
        0
        0
        0
        0
        0
        0
        0
        0)
      HighlightColor = clBlack
      Align = alLeft
      Color = 15722978
      Columns = 2
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FocusColor = clInactiveCaption
      FrameColor = clInactiveCaption
      FrameHotColor = clInactiveCaption
      GroupColor = clInactiveCaption
      GroupFont.Charset = DEFAULT_CHARSET
      GroupFont.Color = clBlue
      GroupFont.Height = -11
      GroupFont.Name = 'MS Sans Serif'
      GroupFont.Style = [fsBold]
      ItemHeight = 13
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
    end
    object btnConsultar: TNxButton
      Left = 286
      Top = 46
      Width = 92
      Height = 24
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btnConsultarClick
    end
    object btnCancelar: TNxButton
      Left = 378
      Top = 46
      Width = 92
      Height = 24
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object btImprimir: TNxButton
      Left = 470
      Top = 46
      Width = 92
      Height = 24
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = btImprimirClick
    end
    object btExcel: TNxButton
      Left = 562
      Top = 46
      Width = 92
      Height = 24
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = btExcelClick
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 553
      Top = 24
      Width = 111
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      DisplayEmpty = '[Todos]'
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMConsFat.dsCupomTerminar
      ParentCtl3D = False
      TabOrder = 3
    end
  end
  object Panel1: TPanel
    Left = 684
    Top = 76
    Width = 220
    Height = 429
    Align = alRight
    TabOrder = 1
    object Label23: TLabel
      Left = 35
      Top = 5
      Width = 80
      Height = 13
      Alignment = taRightJustify
      Caption = 'V.Mercadoria:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label24: TLabel
      Left = 175
      Top = 5
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label25: TLabel
      Left = 67
      Top = 21
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'V.Bruto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label26: TLabel
      Left = 175
      Top = 21
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label27: TLabel
      Left = 58
      Top = 37
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = 'V.L'#237'quido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label28: TLabel
      Left = 175
      Top = 37
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label29: TLabel
      Left = 81
      Top = 95
      Width = 34
      Height = 13
      Alignment = taRightJustify
      Caption = 'V.IPI:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label30: TLabel
      Left = 83
      Top = 111
      Width = 32
      Height = 13
      Alignment = taRightJustify
      Caption = 'V.ST:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label31: TLabel
      Left = 175
      Top = 111
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label32: TLabel
      Left = 175
      Top = 95
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label33: TLabel
      Left = 175
      Top = 127
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label34: TLabel
      Left = 67
      Top = 127
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'V.ICMS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label35: TLabel
      Left = 78
      Top = 167
      Width = 37
      Height = 13
      Alignment = taRightJustify
      Caption = 'V.PIS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label36: TLabel
      Left = 175
      Top = 167
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label37: TLabel
      Left = 53
      Top = 183
      Width = 62
      Height = 13
      Alignment = taRightJustify
      Caption = 'V.COFINS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label38: TLabel
      Left = 175
      Top = 183
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label39: TLabel
      Left = 45
      Top = 271
      Width = 70
      Height = 13
      Alignment = taRightJustify
      Caption = 'V.Desconto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label40: TLabel
      Left = 175
      Top = 271
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label41: TLabel
      Left = 69
      Top = 255
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = 'V.Frete:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label42: TLabel
      Left = 175
      Top = 255
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 38
      Top = 53
      Width = 77
      Height = 13
      Alignment = taRightJustify
      Caption = 'V.Devolu'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 175
      Top = 53
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 34
      Top = 69
      Width = 81
      Height = 13
      Alignment = taRightJustify
      Caption = '(Liq. - Devol):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 175
      Top = 69
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 37
      Top = 143
      Width = 78
      Height = 13
      Alignment = taRightJustify
      Caption = 'V.ICMS Difal:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 175
      Top = 143
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 85
      Top = 207
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'V.IR:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 69
      Top = 223
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = 'V.CSLL:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 175
      Top = 223
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label14: TLabel
      Left = 175
      Top = 207
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label15: TLabel
      Left = 5
      Top = 303
      Width = 110
      Height = 13
      Alignment = taRightJustify
      Caption = 'V.Custo (Compra):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label16: TLabel
      Left = 175
      Top = 303
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 76
    Width = 684
    Height = 429
    Align = alClient
    TabOrder = 2
    object RzPageControl1: TRzPageControl
      Left = 1
      Top = 1
      Width = 682
      Height = 427
      ActivePage = ts_Data
      Align = alClient
      TabIndex = 2
      TabOrder = 0
      FixedDimension = 19
      object ts_Geral: TRzTabSheet
        Caption = 'Geral'
        object SMDBGrid1: TSMDBGrid
          Left = 0
          Top = 0
          Width = 678
          Height = 404
          Align = alClient
          Ctl3D = False
          DataSource = DMConsFat.dsFatAcum
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnTitleClick = SMDBGrid1TitleClick
          Flat = True
          BandsFont.Charset = DEFAULT_CHARSET
          BandsFont.Color = clWindowText
          BandsFont.Height = -11
          BandsFont.Name = 'MS Sans Serif'
          BandsFont.Style = []
          Groupings = <>
          GridStyle.Style = gsCustom
          GridStyle.OddColor = clWindow
          GridStyle.EvenColor = clWindow
          TitleHeight.PixelCount = 24
          FooterColor = clBtnFace
          ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 11
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
          ColCount = 25
          RowCount = 2
          Columns = <
            item
              Expanded = False
              FieldName = 'DTEMISSAO'
              Title.Alignment = taCenter
              Title.Caption = 'Data Emiss'#227'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UF_CLI'
              Title.Alignment = taCenter
              Title.Caption = 'UF'
              Width = 34
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUM_NOTA'
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' Nota'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DEVOLUCAO'
              Title.Alignment = taCenter
              Title.Caption = 'Dev.'
              Width = 64
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CODCFOP'
              Title.Alignment = taCenter
              Title.Caption = 'CFOP'
              Width = 43
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_TOTAL'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. Mercadoria'
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_TOTAL_BRU'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. Bruto'
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_TOTAL_LIQ'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. L'#237'quido'
              Width = 71
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_IPI'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. IPI'
              Width = 81
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_ICMSSUBST'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. ST'
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_ICMS'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. ICMS'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_ICMS_UF_DEST'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. Difal'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_PIS'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. PIS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_COFINS'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. COFINS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_FRETE'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. Frete'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_DESCONTO'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. Desconto'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_DUPLICATA'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. Duplicata'
              Width = 104
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_IR_VENDA'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. IR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_CSLL_VENDA'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. CSLL'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_CUSTO'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. Custo (Compra)'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_CLIFORN'
              Title.Alignment = taCenter
              Title.Caption = 'Nome Pessoa'
              Width = 349
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPO_REG'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo Reg'
              Width = 64
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'FILIAL'
              Title.Alignment = taCenter
              Title.Caption = 'Filial'
              Width = 39
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_PESSOA'
              Title.Alignment = taCenter
              Title.Caption = 'ID Pessoa'
              Visible = True
            end>
        end
      end
      object ts_Cliente: TRzTabSheet
        Caption = 'Clientes'
        object SMDBGrid2: TSMDBGrid
          Left = 0
          Top = 0
          Width = 678
          Height = 404
          Align = alClient
          DataSource = DMConsFat.dsConsCliente
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Flat = False
          BandsFont.Charset = DEFAULT_CHARSET
          BandsFont.Color = clWindowText
          BandsFont.Height = -11
          BandsFont.Name = 'MS Sans Serif'
          BandsFont.Style = []
          Groupings = <>
          GridStyle.Style = gsCustom
          GridStyle.OddColor = clWindow
          GridStyle.EvenColor = clWindow
          TitleHeight.PixelCount = 24
          FooterColor = clBtnFace
          ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 11
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
          ColCount = 17
          RowCount = 2
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_PESSOA'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_CLIFORN'
              Title.Caption = 'Nome Fornecedor'
              Width = 228
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_DUPLICATA'
              Title.Caption = 'Valor Duplicata'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_ICMS'
              Title.Caption = 'Valor ICMS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_TOTAL'
              Title.Caption = 'Valor Total'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_ICMSSUBST'
              Title.Caption = 'Valor ICMS ST'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_IPI'
              Title.Caption = 'Valor IPI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_FRETE'
              Title.Caption = 'Valor Frete'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_ICMS_UF_REMET'
              Title.Caption = 'Valor ICMS UF Rem'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_ICMS_UF_DEST'
              Title.Caption = 'Valor ICMS UF Dest'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_DESCONTO'
              Title.Caption = 'Valor Desconto'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_COFINS'
              Title.Caption = 'Valor Cofins'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_PIS'
              Title.Caption = 'Valor Pis'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_CUSTO'
              Title.Caption = 'Valor Custo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_IR_VENDA'
              Title.Caption = 'Valor IR Venda'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_CSLL_VENDA'
              Title.Caption = 'Valor CSSL Venda'
              Width = 64
              Visible = True
            end>
        end
      end
      object ts_Data: TRzTabSheet
        Caption = 'Data Emiss'#227'o'
        object SMDBGrid3: TSMDBGrid
          Left = 0
          Top = 0
          Width = 678
          Height = 404
          Align = alClient
          DataSource = DMConsFat.dsConsData
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Flat = False
          BandsFont.Charset = DEFAULT_CHARSET
          BandsFont.Color = clWindowText
          BandsFont.Height = -11
          BandsFont.Name = 'MS Sans Serif'
          BandsFont.Style = []
          Groupings = <>
          GridStyle.Style = gsCustom
          GridStyle.OddColor = clWindow
          GridStyle.EvenColor = clWindow
          TitleHeight.PixelCount = 24
          FooterColor = clBtnFace
          ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 11
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
          ColCount = 17
          RowCount = 2
          Columns = <
            item
              Expanded = False
              FieldName = 'DTEMISSAO'
              Title.Caption = 'Data Emiss'#227'o'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_DUPLICATA'
              Title.Caption = 'Valor Duplicata'
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_ICMS'
              Title.Caption = 'Valor ICMS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_TOTAL'
              Title.Caption = 'Valor Total'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_ICMSSUBST'
              Title.Caption = 'Valor ICMS ST'
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_IPI'
              Title.Caption = 'Valor IPI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_FRETE'
              Title.Caption = 'Valor Frete'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_ICMS_UF_REMET'
              Title.Caption = 'Valor ICMS UF Remet'
              Width = 117
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_ICMS_UF_DEST'
              Title.Caption = 'Difal'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_DESCONTO'
              Title.Caption = 'Valor Desconto'
              Width = 81
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_COFINS'
              Title.Caption = 'Valor Cofins'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_PIS'
              Title.Caption = 'Valor Pis'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_CUSTO'
              Title.Caption = 'Valor Custo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_IR_VENDA'
              Title.Caption = 'Valor IR Venda'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_CSLL_VENDA'
              Title.Caption = 'Valor CSSL'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_TOTAL_BRU'
              Title.Caption = 'Valor Bruto'
              Visible = True
            end>
        end
      end
    end
  end
end
