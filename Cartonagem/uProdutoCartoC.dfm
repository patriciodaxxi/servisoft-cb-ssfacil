object fProdutoCartoC: TfProdutoCartoC
  Left = 525
  Top = 150
  Width = 718
  Height = 573
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fProdutoCartoC'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 702
    Height = 33
    Align = alTop
    TabOrder = 0
    object BitBtn4: TBitBtn
      Left = 79
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Incluir'
      TabOrder = 1
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 154
      Top = 4
      Width = 75
      Height = 25
      Caption = 'E&xcluir'
      TabOrder = 2
      OnClick = BitBtn5Click
    end
    object BitBtn3: TBitBtn
      Left = 229
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Im&primir'
      TabOrder = 3
      OnClick = BitBtn3Click
    end
    object BitBtn1: TBitBtn
      Left = 4
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Consultar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 33
    Width = 702
    Height = 502
    Align = alClient
    DataSource = dmProdutoCarto.dsConsProduto
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
    ColCount = 4
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFERENCIA'
        Title.Caption = 'C'#211'DIGO (REF.)'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end>
  end
end
