object frmGerar_Necessidade_Compras_MProd: TfrmGerar_Necessidade_Compras_MProd
  Left = 235
  Top = 172
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Produtos que usam o Material'
  ClientHeight = 442
  ClientWidth = 912
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
  object SMDBGrid4: TSMDBGrid
    Left = 0
    Top = 41
    Width = 912
    Height = 384
    Align = alClient
    Ctl3D = False
    DataSource = DMCadNecessidade_Compras.dsMProduto
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid4DblClick
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
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_MATERIAL'
        Title.Alignment = taCenter
        Title.Caption = 'ID Material'
        Title.Color = 16777164
        Width = 85
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUM_ORDEM'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Ordem'
        Title.Color = 16777164
        Width = 84
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_PRODUTO'
        Title.Alignment = taCenter
        Title.Caption = 'ID Produto'
        Title.Color = 16777164
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFERENCIA'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Title.Color = 16777164
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_COMBINACAO'
        Title.Alignment = taCenter
        Title.Caption = 'ID Combina'#231#227'o'
        Title.Color = 16777164
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_COMBINACAO'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Combina'#231#227'o'
        Title.Color = 16777164
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 41
    Align = alTop
    Color = clSilver
    TabOrder = 1
    object Label1: TLabel
      Left = 48
      Top = 16
      Width = 50
      Height = 13
      Caption = 'Material:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 99
      Top = 15
      Width = 457
      Height = 15
      DataField = 'Nome_Material'
      DataSource = DMCadNecessidade_Compras.dsmMaterial
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 425
    Width = 912
    Height = 17
    Align = alBottom
    Caption = 'Duplo clique para abrir a tela de produto'
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 2
  end
end
