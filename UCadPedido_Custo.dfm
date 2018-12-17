object frmCadPedido_Custo: TfrmCadPedido_Custo
  Left = 107
  Top = 156
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Lucratividade'
  ClientHeight = 442
  ClientWidth = 1119
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1119
    Height = 36
    Align = alTop
    Color = 16770250
    TabOrder = 0
    object NxButton1: TNxButton
      Left = 6
      Top = 5
      Width = 126
      Height = 27
      Caption = 'Fechar'
      Color = 16752448
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      GlyphSpacing = 5
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Transparent = True
      OnClick = NxButton1Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 36
    Width = 1119
    Height = 365
    Align = alClient
    Ctl3D = False
    DataSource = DMCadPedido.dsPedido_Itens
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnExit = SMDBGrid1Exit
    OnKeyDown = SMDBGrid1KeyDown
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
    ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
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
        FieldName = 'ITEM'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Color = 16777162
        Width = 24
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_PRODUTO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Color = 16777162
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEPRODUTO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Color = 16777162
        Width = 326
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Title.Alignment = taCenter
        Title.Color = 16777162
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_CUSTO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o Custo Unit'#225'rio'
        Title.Color = 16777162
        Width = 77
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PERC_MARGEM'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = '% Margem Original'
        Title.Color = 16777162
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_UNITARIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Venda Unit'#225'rio'
        Title.Color = clAqua
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 84
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PERC_MARGEM2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = '% Margem Alterada'
        Title.Color = clAqua
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'clVlr_Total_Custo'
        Title.Alignment = taCenter
        Title.Caption = 'Total Custo'
        Title.Color = 16777162
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_TOTAL'
        Title.Alignment = taCenter
        Title.Caption = 'Total Venda'
        Title.Color = 16777162
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'clVlr_Diferenca'
        Title.Alignment = taCenter
        Title.Caption = 'Diferen'#231'a'
        Title.Color = 16777162
        Width = 78
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 401
    Width = 1119
    Height = 41
    Align = alBottom
    TabOrder = 2
    object Label1: TLabel
      Left = 136
      Top = 8
      Width = 110
      Height = 16
      Alignment = taRightJustify
      Caption = 'Vlr. Total Custo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 248
      Top = 8
      Width = 113
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = '0'
      Color = 14671839
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 376
      Top = 8
      Width = 113
      Height = 16
      Alignment = taRightJustify
      Caption = 'Vlr. Total Venda:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 666
      Top = 8
      Width = 95
      Height = 16
      Alignment = taRightJustify
      Caption = 'Vlr. Diferen'#231'a:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 765
      Top = 8
      Width = 116
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = '0'
      Color = 14671839
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 493
      Top = 9
      Width = 141
      Height = 16
      Alignment = taCenter
      Color = 14671839
      DataField = 'VLR_TOTAL'
      DataSource = DMCadPedido.dsPedido
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object btnRecalcular: TNxButton
      Left = 886
      Top = 11
      Width = 113
      Caption = 'Recalcular'
      Color = 16752448
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      GlyphSpacing = 5
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Transparent = True
      OnClick = btnRecalcularClick
    end
    object NxButton2: TNxButton
      Left = 1004
      Top = 11
      Width = 113
      Caption = 'Atualiza Custo'
      Color = 16752448
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      GlyphSpacing = 5
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Transparent = True
      OnClick = NxButton2Click
    end
  end
end
