object fOPC: TfOPC
  Left = 318
  Top = 124
  Width = 712
  Height = 563
  Caption = 'fOPC'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 696
    Height = 34
    Align = alTop
    TabOrder = 0
    object BitBtn4: TBitBtn
      Left = 4
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Incluir'
      TabOrder = 0
      OnClick = BitBtn4Click
    end
    object BitBtn1: TBitBtn
      Left = 154
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Consultar'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object BitBtn5: TBitBtn
      Left = 79
      Top = 4
      Width = 75
      Height = 25
      Caption = 'E&xcluir'
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 229
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Im&primir'
      TabOrder = 3
      OnClick = BitBtn2Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 70
    Width = 696
    Height = 455
    Align = alClient
    DataSource = dmOP.dsOPCons
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNavy
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
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
        FieldName = 'ID'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DT_EMISSAO'
        Title.Caption = 'EMISS'#195'O'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DT_ENTREGA'
        Title.Caption = 'ENTREGA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'CLIENTE'
        Width = 217
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ACABADO'
        Width = 298
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFERENCIA'
        Title.Caption = 'REFER'#202'NCIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 34
    Width = 696
    Height = 36
    Align = alTop
    TabOrder = 2
    Visible = False
    object Label2: TLabel
      Left = 237
      Top = 16
      Width = 19
      Height = 13
      Alignment = taRightJustify
      Caption = 'At'#233':'
    end
    object NxDatePicker1: TNxDatePicker
      Left = 136
      Top = 8
      Width = 90
      Height = 21
      TabOrder = 1
      Text = '22/05/2013'
      HideFocus = False
      Date = 41416.000000000000000000
      NoneCaption = 'Limpar'
      TodayCaption = 'Hoje'
    end
    object NxDatePicker2: TNxDatePicker
      Left = 260
      Top = 8
      Width = 90
      Height = 21
      TabOrder = 2
      Text = '22/05/2013'
      HideFocus = False
      Date = 41416.000000000000000000
      NoneCaption = 'Limpar'
      TodayCaption = 'Hoje'
    end
    object NxButton1: TNxButton
      Left = 360
      Top = 7
      Width = 75
      Caption = 'Pesquisar'
      TabOrder = 3
      OnClick = NxButton1Click
    end
    object NxComboBox1: TNxComboBox
      Left = 8
      Top = 8
      Width = 129
      Height = 21
      TabOrder = 0
      Text = 'Data de cadastro de:'
      HideFocus = False
      AutoCompleteDelay = 0
      DropDownCount = 2
      ItemIndex = 0
      Items.Strings = (
        'Data de cadastro de:'
        'Data de entrega de:')
    end
  end
end
