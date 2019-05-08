object frmConsProduto_Compras: TfrmConsProduto_Compras
  Left = 54
  Top = 116
  Width = 1166
  Height = 480
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'frmConsProduto_Compras'
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
    Width = 1158
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 17
      Width = 207
      Height = 13
      Caption = 'Data da '#250'ltima altera'#231#227'o do pre'#231'o de custo:'
    end
    object lblUltPreco: TLabel
      Left = 224
      Top = 8
      Width = 100
      Height = 22
      AutoSize = False
      Caption = '88/88/8888'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 41
    Width = 1158
    Height = 408
    Align = alClient
    DataSource = DMConsEstoque.dsCompras
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
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
        FieldName = 'DTMOVIMENTO'
        Title.Caption = 'DATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMNOTA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FORNECEDOR'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_MATERIAL_FORN'
        Title.Caption = 'C'#211'D. FORNECEDOR'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_MATERIAL_FORN'
        Title.Caption = 'NOME FORNECEDOR'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_COR'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_UNITARIO'
        Title.Caption = 'VLR. UNIT.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_FRETE'
        Title.Caption = 'FRETE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_DESCONTO'
        Title.Caption = 'DESCONTO'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end>
  end
end
