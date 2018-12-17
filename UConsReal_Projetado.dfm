object frmConsReal_Projetado: TfrmConsReal_Projetado
  Left = 266
  Top = 132
  Width = 928
  Height = 480
  Caption = 'Consulta Relizado x Projetado'
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
    Height = 59
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 10
      Width = 56
      Height = 13
      Caption = 'Data In'#237'cio:'
    end
    object Label2: TLabel
      Left = 180
      Top = 10
      Width = 51
      Height = 13
      Caption = 'Data Final:'
    end
    object NxButton1: TNxButton
      Left = 72
      Top = 30
      Width = 129
      Height = 25
      Caption = 'Efetuar Pesquisa'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      OnClick = NxButton1Click
    end
    object DateEdit1: TDateEdit
      Left = 69
      Top = 3
      Width = 100
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 0
    end
    object DateEdit2: TDateEdit
      Left = 233
      Top = 3
      Width = 100
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 1
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 59
    Width = 920
    Height = 372
    Align = alClient
    Ctl3D = False
    DataSource = DMConsReal.dsmConsAux
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 6
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'Cod_Conta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Color = 12713860
        Width = 142
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome_Conta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Nome Conta'
        Title.Color = 12713860
        Width = 428
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Vlr_Realizado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Realizado'
        Title.Color = 12713860
        Width = 124
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Vlr_Projetado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Projetado'
        Title.Color = 12713860
        Width = 140
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Resultado'
        Title.Alignment = taCenter
        Title.Caption = ' '
        Title.Color = 12713860
        Width = 19
        Visible = True
      end>
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 431
    Width = 920
    Height = 18
    Align = alBottom
    Caption = 'Duplo Clique para detalhar por Fornecedor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
end
