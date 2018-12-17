object frmConsMatPrima: TfrmConsMatPrima
  Left = 219
  Top = 125
  Width = 928
  Height = 551
  Caption = 'Consulta Materia Prima'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 54
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 16
      Width = 102
      Height = 13
      Caption = 'ID Materia Prima:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 272
      Top = 13
      Width = 99
      Height = 13
      Caption = 'F2 Consultar Material'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 143
      Top = 8
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      ParentCtl3D = False
      TabOrder = 0
      OnKeyDown = CurrencyEdit1KeyDown
    end
    object btnConsultar: TNxButton
      Left = 142
      Top = 29
      Width = 79
      Height = 24
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnConsultarClick
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 54
    Width = 912
    Height = 411
    Align = alClient
    Ctl3D = False
    DataSource = DMConsMaterial.dsConsMatPrima
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
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
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 471
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_REG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFERENCIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_CONSUMO'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 465
    Width = 912
    Height = 47
    Align = alBottom
    Color = 16764780
    TabOrder = 2
    object Label3: TLabel
      Left = 688
      Top = 32
      Width = 87
      Height = 13
      Alignment = taRightJustify
      Caption = 'Qtd. Consumo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 423
      Top = 10
      Width = 128
      Height = 26
      Alignment = taRightJustify
      Caption = 'Total de Produtos que '#13#10'usam o Material:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 10
      Top = 18
      Width = 157
      Height = 13
      Alignment = taRightJustify
      Caption = 'Informar a Qtd. a Produzir:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 725
      Top = 10
      Width = 50
      Height = 13
      Alignment = taRightJustify
      Caption = 'Estoque:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 776
      Top = 24
      Width = 121
      Height = 21
      AutoSize = False
      Color = 16777088
      Ctl3D = False
      DecimalPlaces = 5
      DisplayFormat = '0.00###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object CurrencyEdit3: TCurrencyEdit
      Left = 552
      Top = 10
      Width = 57
      Height = 21
      AutoSize = False
      Color = 16777088
      Ctl3D = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object CurrencyEdit4: TCurrencyEdit
      Left = 168
      Top = 10
      Width = 65
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      ParentCtl3D = False
      TabOrder = 2
    end
    object btnCalcular: TNxButton
      Left = 235
      Top = 8
      Width = 79
      Height = 24
      Caption = 'Calcular'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnCalcularClick
    end
    object CurrencyEdit5: TCurrencyEdit
      Left = 776
      Top = 2
      Width = 121
      Height = 21
      AutoSize = False
      Color = 16777088
      Ctl3D = False
      DecimalPlaces = 5
      DisplayFormat = '0.00###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
  end
end
