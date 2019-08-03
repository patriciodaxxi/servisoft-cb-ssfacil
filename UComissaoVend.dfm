object frmComissaoVend: TfrmComissaoVend
  Left = 236
  Top = 175
  Width = 928
  Height = 487
  Caption = 'frmComissaoVend'
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
  object Panel1: TPanel
    Left = 0
    Top = 394
    Width = 920
    Height = 62
    Align = alBottom
    Color = 16757092
    TabOrder = 0
    object Label1: TLabel
      Left = 30
      Top = 16
      Width = 73
      Height = 13
      Alignment = taRightJustify
      Caption = 'Representante:'
    end
    object Label2: TLabel
      Left = 408
      Top = 16
      Width = 59
      Height = 13
      Alignment = taRightJustify
      Caption = '% Comiss'#227'o:'
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 469
      Top = 8
      Width = 78
      Height = 21
      AutoSize = False
      Ctl3D = False
      DisplayFormat = '0.00'
      ParentCtl3D = False
      TabOrder = 1
    end
    object btnConfirmar: TNxButton
      Left = 105
      Top = 34
      Width = 366
      Height = 26
      Caption = 'Confirmar Produtos Selecionados No Representante'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnConfirmarClick
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 105
      Top = 8
      Width = 267
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = DMComissaoVend.dsVendedor
      ParentCtl3D = False
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 920
    Height = 68
    Align = alTop
    Color = clSilver
    TabOrder = 1
    object Label3: TLabel
      Left = 166
      Top = 14
      Width = 65
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'd. Produto:'
    end
    object Label4: TLabel
      Left = 200
      Top = 32
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome:'
    end
    object Label5: TLabel
      Left = 316
      Top = 14
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = 'Refer'#234'ncia:'
    end
    object Label6: TLabel
      Left = 133
      Top = 52
      Width = 98
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'd. Representante:'
    end
    object CurrencyEdit3: TCurrencyEdit
      Left = 232
      Top = 6
      Width = 78
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      ParentCtl3D = False
      TabOrder = 1
      OnKeyDown = CurrencyEdit3KeyDown
    end
    object Edit2: TEdit
      Left = 232
      Top = 26
      Width = 267
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 372
      Top = 8
      Width = 127
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
    end
    object btnConsultar: TNxButton
      Left = 769
      Top = 38
      Width = 111
      Height = 26
      Caption = 'Efetuar Pesquisa'
      TabOrder = 6
      OnClick = btnConsultarClick
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 232
      Top = 44
      Width = 267
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = DMComissaoVend.dsVendedor
      ParentCtl3D = False
      TabOrder = 4
      OnChange = RxDBLookupCombo1Change
    end
    object ckVendedor: TCheckBox
      Left = 505
      Top = 45
      Width = 237
      Height = 17
      Caption = 'Que n'#227'o existe no Representante Informado'
      TabOrder = 5
      Visible = False
    end
    object RadioGroup2: TRadioGroup
      Left = 1
      Top = 1
      Width = 110
      Height = 66
      Align = alLeft
      Caption = ' Tipo '
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Produto'
        'Semi Acabado')
      TabOrder = 0
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 68
    Width = 920
    Height = 326
    Align = alClient
    Ctl3D = False
    DataSource = DMComissaoVend.dsConsProduto
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
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
    ExOptions = [eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 27
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 6
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TIPO_PRODUTO'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo'
        Title.Color = 10223515
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taCenter
        Title.Color = 10223515
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'REFERENCIA'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Title.Color = 10223515
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Title.Color = 10223515
        Width = 496
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERC_COMISSAO'
        Title.Alignment = taCenter
        Title.Caption = '% Comiss'#227'o'
        Title.Color = 10223515
        Visible = True
      end>
  end
  object UCControls1: TUCControls
    GroupName = 'Comiss'#227'o Produto Vendedor'
    UserControl = fMenu.UserControl1
    NotAllowed = naDisabled
    Left = 561
    Top = 231
  end
end
