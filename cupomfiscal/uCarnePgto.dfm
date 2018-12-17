object fCarnePgto: TfCarnePgto
  Left = 245
  Top = 24
  BorderStyle = bsNone
  Caption = 'fCarnePgto'
  ClientHeight = 652
  ClientWidth = 885
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 885
    Height = 28
    Align = alTop
    Color = clGray
    TabOrder = 0
    DesignSize = (
      885
      28)
    object Label3: TLabel
      Left = 8
      Top = 8
      Width = 54
      Height = 18
      Alignment = taRightJustify
      Caption = 'Nome:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 532
      Top = 8
      Width = 50
      Height = 18
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Barra:'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 72
      Top = 3
      Width = 369
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = Edit1KeyDown
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 588
      Top = 2
      Width = 150
      Height = 24
      AutoSize = False
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      Anchors = [akTop, akRight]
      ParentFont = False
      TabOrder = 1
      OnKeyDown = CurrencyEdit1KeyDown
    end
    object btConfirmarIt: TNxButton
      Left = 739
      Top = 2
      Width = 144
      Height = 26
      Anchors = [akTop, akRight]
      Caption = 'F7  Confirmar parcela'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 2
      Transparent = True
      OnClick = btConfirmarItClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 611
    Width = 885
    Height = 41
    Align = alBottom
    Color = clGray
    TabOrder = 7
    object brCancelar: TNxButton
      Left = 349
      Top = 5
      Width = 187
      Height = 30
      Caption = 'Ca&ncelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 1
      TabStop = False
      Transparent = True
    end
    object btConfirmar: TNxButton
      Left = 162
      Top = 5
      Width = 187
      Height = 30
      Caption = 'Gravar Pgtos.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      GlyphSpacing = 5
      ParentFont = False
      PopupMenu = PopupMenu1
      ShowArrow = True
      TabOrder = 0
      Transparent = True
    end
    object btGaveta: TNxButton
      Left = 536
      Top = 5
      Width = 187
      Height = 30
      Caption = '&Gaveta (F8)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 2
      TabStop = False
      Transparent = True
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 160
    Width = 885
    Height = 148
    Align = alClient
    DataSource = dmPagamento.dsmParcelas
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
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
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 8
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'Cupom'
        Title.Alignment = taCenter
        Title.Caption = 'CUPOM'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Parcela'
        Title.Alignment = taCenter
        Title.Caption = 'PARC.'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DtVecto'
        Title.Alignment = taCenter
        Title.Caption = 'DT. VCTO.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Title.Alignment = taCenter
        Title.Caption = 'VALOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cliente'
        Title.Caption = 'CLIENTE'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Observacao'
        Title.Caption = 'OBSERVA'#199#195'O'
        Width = 370
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Id'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Width = 50
        Visible = True
      end>
  end
  object ValueListEditor1: TValueListEditor
    Left = 0
    Top = 28
    Width = 885
    Height = 104
    Align = alTop
    DefaultRowHeight = 16
    FixedColor = clInfoBk
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect, goThumbTracking]
    TabOrder = 1
    TitleCaptions.Strings = (
      'ID'
      'NOME')
    Visible = False
    OnDblClick = ValueListEditor1DblClick
    ColWidths = (
      34
      845)
  end
  object SMDBGrid2: TSMDBGrid
    Left = 0
    Top = 336
    Width = 885
    Height = 143
    Align = alBottom
    DataSource = dmPagamento.dsmSelecionadas
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 5
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
    ColCount = 12
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        ReadOnly = True
        Title.Alignment = taCenter
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_CUPOM'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'CUPOM'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARCELA'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'PARC.'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DT_EMISSAO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'EMISS'#195'O'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DT_VCTO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'DT. VCTO.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIAS_ATRASO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'ATRASO'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_VCTO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'VALOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_JUROS'
        Title.Alignment = taCenter
        Title.Caption = 'JUROS'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_DESC'
        Title.Alignment = taCenter
        Title.Caption = 'DESC.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_TOTAL'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'TOTAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_ABATIMENTO'
        Width = 109
        Visible = True
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 479
    Width = 885
    Height = 35
    Align = alBottom
    Color = clGray
    TabOrder = 6
    object Label15: TLabel
      Left = 19
      Top = 10
      Width = 55
      Height = 23
      Alignment = taRightJustify
      Caption = 'Total:'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 299
      Top = 9
      Width = 55
      Height = 23
      Alignment = taRightJustify
      Caption = 'Pago:'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 571
      Top = 9
      Width = 63
      Height = 23
      Alignment = taRightJustify
      Caption = 'Saldo:'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 77
      Top = 3
      Width = 180
      Height = 28
      AutoSize = False
      Color = 8454143
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object CurrencyEdit3: TCurrencyEdit
      Left = 357
      Top = 3
      Width = 180
      Height = 28
      AutoSize = False
      Color = 8454143
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object CurrencyEdit4: TCurrencyEdit
      Left = 637
      Top = 3
      Width = 180
      Height = 28
      AutoSize = False
      Color = 8454143
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 132
    Width = 885
    Height = 28
    Align = alTop
    Color = clGray
    TabOrder = 2
    DesignSize = (
      885
      28)
    object Label5: TLabel
      Left = 4
      Top = 6
      Width = 186
      Height = 18
      Caption = 'Presta'#231#245'es em aberto:'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object btTodas: TNxButton
      Left = 594
      Top = 2
      Width = 144
      Height = 26
      Anchors = [akTop, akRight]
      Caption = 'Pagar todas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16384
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 0
      TabStop = False
      Transparent = True
      OnClick = btTodasClick
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 308
    Width = 885
    Height = 28
    Align = alBottom
    Color = clGray
    TabOrder = 4
    DesignSize = (
      885
      28)
    object Label8: TLabel
      Left = 4
      Top = 6
      Width = 348
      Height = 18
      Caption = 'Presta'#231#245'es selecionadas para pagamento:'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object btExcluir: TNxButton
      Left = 739
      Top = 2
      Width = 144
      Height = 26
      Anchors = [akTop, akRight]
      Caption = 'Excluir parcela'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 0
      TabStop = False
      Transparent = True
      OnClick = btExcluirClick
    end
    object btRecalcular: TNxButton
      Left = 594
      Top = 2
      Width = 144
      Height = 26
      Anchors = [akTop, akRight]
      Caption = 'Recalcular'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16384
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 1
      TabStop = False
      Transparent = True
      OnClick = btRecalcularClick
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 514
    Width = 885
    Height = 97
    Align = alBottom
    Color = clBlack
    TabOrder = 8
    OnEnter = Panel6Enter
    object Label1: TLabel
      Left = 5
      Top = 19
      Width = 124
      Height = 16
      Alignment = taRightJustify
      Caption = 'Forma Pagamento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 91
      Top = 45
      Width = 38
      Height = 16
      Alignment = taRightJustify
      Caption = 'Valor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object SMDBGrid4: TSMDBGrid
      Left = 425
      Top = 1
      Width = 459
      Height = 95
      Align = alRight
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dmPagamento.dsmPagamentos
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
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
      ColCount = 3
      RowCount = 2
      Columns = <
        item
          Expanded = False
          FieldName = 'lkTIPOCOBRANCA'
          Title.Caption = 'Forma de Pagamento'
          Width = 320
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_PAGO'
          Title.Caption = 'Vlr. Pago'
          Width = 100
          Visible = True
        end>
    end
    object ceFormaPgto: TCurrencyEdit
      Left = 133
      Top = 10
      Width = 43
      Height = 24
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnExit = ceFormaPgtoExit
      OnKeyDown = ceFormaPgtoKeyDown
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 178
      Top = 10
      Width = 243
      Height = 24
      DropDownCount = 10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = dmPagamento.dsTipoCobranca
      ParentFont = False
      TabOrder = 2
      OnChange = RxDBLookupCombo1Change
      OnEnter = RxDBLookupCombo1Enter
    end
    object ceValor: TCurrencyEdit
      Left = 133
      Top = 36
      Width = 125
      Height = 24
      AutoSize = False
      DisplayFormat = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object NxButton1: TNxButton
      Left = 260
      Top = 35
      Width = 159
      Height = 26
      Caption = 'Confirmar forma'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 4
      Transparent = True
      OnClick = NxButton1Click
    end
    object NxButton2: TNxButton
      Left = 260
      Top = 62
      Width = 159
      Height = 26
      Caption = 'Excluir forma'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 5
      Transparent = True
      OnClick = NxButton2Click
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 128
    Top = 619
    object Confirmar1: TMenuItem
      Caption = 'Confirmar'
      OnClick = Confirmar1Click
    end
    object ConfimareImprimirrecibo1: TMenuItem
      Caption = 'Confimar e Imprimir Recibo'
      OnClick = ConfimareImprimirrecibo1Click
    end
  end
end
