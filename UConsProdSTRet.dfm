object frmConsProdSTRet: TfrmConsProdSTRet
  Left = 248
  Top = 144
  Width = 928
  Height = 480
  Caption = 'frmConsProdSTRet'
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
    Top = 0
    Width = 920
    Height = 83
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 183
      Top = 13
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = 'Refer'#234'ncia:'
    end
    object Label3: TLabel
      Left = 166
      Top = 33
      Width = 71
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome Produto:'
    end
    object Label5: TLabel
      Left = 480
      Top = 13
      Width = 54
      Height = 13
      Caption = 'ID Produto:'
    end
    object edtRef: TEdit
      Left = 240
      Top = 7
      Width = 182
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 240
      Top = 25
      Width = 361
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
    end
    object ceIDProduto: TCurrencyEdit
      Left = 536
      Top = 5
      Width = 65
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      ParentCtl3D = False
      TabOrder = 2
    end
    object RadioGroup1: TRadioGroup
      Left = 1
      Top = 1
      Width = 158
      Height = 81
      Align = alLeft
      Caption = ' Op'#231#227'o '
      ItemIndex = 0
      Items.Strings = (
        'Ambos'
        'Possuem Base Ret.'
        'N'#227'o Possuem Base Ret.')
      TabOrder = 3
    end
    object btnConsultar: TNxButton
      Left = 241
      Top = 47
      Width = 124
      Height = 25
      Caption = 'Efetuar Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnConsultarClick
    end
    object btnImprimir: TNxButton
      Left = 365
      Top = 47
      Width = 124
      Height = 25
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btnImprimirClick
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 83
    Width = 920
    Height = 366
    Align = alClient
    Ctl3D = False
    DataSource = DmCadMovProdST.dsConsProdST
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
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
    ColCount = 9
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taCenter
        Width = 58
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'REFERENCIA'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 318
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NCM'
        Title.Alignment = taCenter
        Width = 81
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'GERAR_ST'
        Title.Alignment = taCenter
        Title.Caption = 'Gerar ST'
        Width = 35
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTEMISSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BASE_ST'
        Title.Alignment = taCenter
        Title.Caption = 'Base ST'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BASE_ST_RET'
        Title.Alignment = taCenter
        Title.Caption = 'Base ST Ret.'
        Width = 78
        Visible = True
      end>
  end
end
