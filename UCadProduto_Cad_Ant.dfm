object frmCadProduto_Cad_Ant: TfrmCadProduto_Cad_Ant
  Left = 272
  Top = 174
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmCadProduto_Cad_Ant'
  ClientHeight = 330
  ClientWidth = 964
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 0
    Width = 964
    Height = 330
    Align = alClient
    Ctl3D = False
    DataSource = dmCadProduto.dsProduto_Cad_Ant
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 0
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 7
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'ITEM'
        Title.Color = 16777147
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Color = 16777147
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORA'
        Title.Color = 16777147
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Color = 16777147
        Width = 472
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFERENCIA'
        Title.Color = 16777147
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USUARIO'
        Title.Alignment = taCenter
        Title.Caption = 'Usu'#225'rio'
        Title.Color = 16777147
        Width = 119
        Visible = True
      end>
  end
end
