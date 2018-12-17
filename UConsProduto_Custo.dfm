object frmConsProduto_Custo: TfrmConsProduto_Custo
  Left = 251
  Top = 136
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmConsProduto_Custo'
  ClientHeight = 441
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 41
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Shape1: TShape
      Left = 456
      Top = 6
      Width = 33
      Height = 16
      Brush.Color = clYellow
    end
    object Shape2: TShape
      Left = 456
      Top = 21
      Width = 33
      Height = 16
      Brush.Color = 8421631
    end
    object Label1: TLabel
      Left = 496
      Top = 8
      Width = 119
      Height = 13
      Caption = 'Pre'#231'o de Custo Diferente'
    end
    object Label2: TLabel
      Left = 496
      Top = 24
      Width = 187
      Height = 13
      Caption = 'Material no Consumo com pre'#231'o zerado'
    end
    object btnAjusteCusto: TNxButton
      Left = 7
      Top = 7
      Width = 144
      Height = 30
      Caption = 'Consulta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 0
      Transparent = True
      OnClick = btnAjusteCustoClick
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 41
    Width = 912
    Height = 400
    Align = alClient
    Ctl3D = False
    DataSource = DMConsProduto.dsProduto_Custo
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    OnGetCellParams = SMDBGrid1GetCellParams
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
        Expanded = False
        FieldName = 'NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 253
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_CUSTO'
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o Custo'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_CUSTO_TOTAL'
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o Custo Total'
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_VENDA'
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o Venda'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_CUSTO_CALC'
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o do Consumo'
        Width = 101
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CONTADOR'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.Mat. Com Pre'#231'o Zerado'
        Width = 78
        Visible = True
      end>
  end
end
