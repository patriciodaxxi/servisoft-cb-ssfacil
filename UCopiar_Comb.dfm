object frmCopiar_Comb: TfrmCopiar_Comb
  Left = 259
  Top = 171
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmCopiar_Comb'
  ClientHeight = 442
  ClientWidth = 899
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 899
    Height = 67
    Align = alTop
    Color = 13499844
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 16
      Width = 55
      Height = 13
      Caption = 'Refer'#234'ncia:'
    end
    object Label2: TLabel
      Left = 352
      Top = 16
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 88
      Top = 8
      Width = 241
      Height = 21
      DropDownCount = 8
      DropDownWidth = 700
      LookupField = 'ID'
      LookupDisplay = 'REFERENCIA;NOME'
      LookupSource = DMCopiarProduto.dsSel_Produto
      TabOrder = 0
      OnChange = RxDBLookupCombo1Change
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 384
      Top = 8
      Width = 433
      Height = 21
      DropDownCount = 8
      DropDownWidth = 700
      LookupField = 'ID'
      LookupDisplay = 'NOME;REFERENCIA'
      LookupSource = DMCopiarProduto.dsSel_Produto
      TabOrder = 1
      OnChange = RxDBLookupCombo2Change
    end
    object btnConsultar: TNxButton
      Left = 88
      Top = 33
      Width = 158
      Height = 30
      Caption = 'Efetuar Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 2
      Transparent = True
      OnClick = btnConsultarClick
    end
    object btnCopiar: TNxButton
      Left = 247
      Top = 33
      Width = 158
      Height = 30
      Caption = 'Copiar Selecionados'
      Color = 13499844
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      GlyphSpacing = 5
      ParentColor = False
      ParentFont = False
      TabOrder = 3
      Transparent = True
      OnClick = btnCopiarClick
    end
    object ckCopiarSemi: TCheckBox
      Left = 456
      Top = 40
      Width = 129
      Height = 17
      Caption = 'Copiar Semi'
      TabOrder = 4
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 67
    Width = 899
    Height = 375
    Align = alClient
    Ctl3D = False
    DataSource = DMCopiarProduto.dsProduto_Comb
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
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
    ExOptions = [eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 27
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 4
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'ITEM'
        Title.Alignment = taCenter
        Title.Caption = 'Item'
        Title.Color = 16777134
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Title.Color = 16777134
        Width = 319
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_COR_COMBINACAO'
        Title.Alignment = taCenter
        Title.Caption = 'ID Cod. Combina'#231#227'o'
        Title.Color = 16777134
        Width = 120
        Visible = True
      end>
  end
end
