object fCupomFiscalCli: TfCupomFiscalCli
  Left = 343
  Top = 217
  Hint = 'Pesquisar'
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'fCupomFiscalCli - Cliente'
  ClientHeight = 387
  ClientWidth = 527
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 53
    Top = 45
    Width = 54
    Height = 18
    Alignment = taRightJustify
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 44
    Top = 16
    Width = 63
    Height = 18
    Alignment = taRightJustify
    Caption = 'C'#243'digo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 346
    Width = 527
    Height = 41
    Align = alBottom
    Color = clMoneyGreen
    TabOrder = 5
    object btConfirmar: TNxButton
      Left = 190
      Top = 5
      Width = 150
      Height = 30
      Caption = '&Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 1
      Transparent = True
      OnClick = btConfirmarClick
    end
    object brCancelar: TNxButton
      Left = 340
      Top = 5
      Width = 150
      Height = 30
      Caption = 'Ca&ncelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 2
      TabStop = False
      Transparent = True
      OnClick = brCancelarClick
    end
    object NxButton1: TNxButton
      Left = 40
      Top = 5
      Width = 150
      Height = 30
      Caption = 'F&inanceiro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 0
      Transparent = True
      OnClick = NxButton1Click
    end
  end
  object MaskEdit1: TMaskEdit
    Left = 320
    Top = 8
    Width = 192
    Height = 26
    EditMask = '000.000.000-00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    MaxLength = 14
    ParentFont = False
    TabOrder = 3
    Text = '   .   .   -  '
    OnExit = MaskEdit1Exit
  end
  object Edit1: TEdit
    Left = 109
    Top = 37
    Width = 377
    Height = 26
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyDown = Edit1KeyDown
  end
  object ValueListEditor1: TValueListEditor
    Left = 0
    Top = 68
    Width = 527
    Height = 278
    Align = alBottom
    FixedColor = clInfoBk
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect, goThumbTracking]
    TabOrder = 4
    TitleCaptions.Strings = (
      'ID'
      'NOME')
    Visible = False
    OnDblClick = ValueListEditor1DblClick
    OnKeyDown = ValueListEditor1KeyDown
    ColWidths = (
      34
      487)
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 109
    Top = 8
    Width = 100
    Height = 26
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnEnter = CurrencyEdit1Enter
    OnExit = CurrencyEdit1Exit
  end
  object BitBtn4: TBitBtn
    Left = 488
    Top = 37
    Width = 25
    Height = 27
    Caption = '?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn4Click
  end
  object ComboBox1: TComboBox
    Left = 238
    Top = 8
    Width = 81
    Height = 26
    DropDownCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ItemHeight = 18
    ItemIndex = 0
    ParentFont = False
    TabOrder = 6
    Text = 'CPF'
    OnChange = ComboBox1Change
    Items.Strings = (
      'CPF'
      'CNPJ')
  end
end
