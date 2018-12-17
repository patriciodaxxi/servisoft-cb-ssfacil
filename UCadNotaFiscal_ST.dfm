object frmCadNotaFiscal_ST: TfrmCadNotaFiscal_ST
  Left = 239
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Substitui'#231#227'o Tribut'#225'ria'
  ClientHeight = 442
  ClientWidth = 979
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
  object SMDBGrid2: TSMDBGrid
    Left = 0
    Top = 0
    Width = 979
    Height = 344
    Align = alClient
    DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
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
    ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 16
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'ITEM'
        Title.Alignment = taCenter
        Title.Color = 16763025
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFERENCIA'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Title.Color = 16763025
        Width = 105
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODCFOP'
        Title.Alignment = taCenter
        Title.Caption = 'CFOP'
        Title.Color = 16763025
        Width = 46
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NCM'
        Title.Alignment = taCenter
        Title.Color = 16763025
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Title.Alignment = taCenter
        Title.Caption = 'QTD.'
        Title.Color = 16763025
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_UNITARIO'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Unit'#225'rio'
        Title.Color = 16763025
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PERC_ICMSSUBST_INTERNO'
        Title.Alignment = taCenter
        Title.Caption = '% ICMS Interno'
        Title.Color = 16763025
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_ICMSSUBST_INTERNO'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Icms Interno'
        Title.Color = 16763025
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PERC_MVA'
        Title.Alignment = taCenter
        Title.Caption = '% MVA'
        Title.Color = 16763025
        Width = 38
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PERC_IPI'
        Title.Alignment = taCenter
        Title.Caption = '% IPI'
        Title.Color = 16763025
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BASE_ICMSSUBST_PROPRIO'
        Title.Alignment = taCenter
        Title.Caption = 'Base Icms Pr'#243'prio'
        Title.Color = 16763025
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERC_ICMSSUBST_PROPRIO'
        Title.Alignment = taCenter
        Title.Caption = '% ICMS Pr'#243'prio'
        Title.Color = 16763025
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_ICMSSUBST_PROPRIO'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Icms Pr'#243'prio'
        Title.Color = 16763025
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BASE_ICMSSUBST'
        Title.Alignment = taCenter
        Title.Caption = 'Base ST'
        Title.Color = 16763025
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_ICMSSUBST'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. ST'
        Title.Color = 16763025
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 78
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 344
    Width = 979
    Height = 98
    Align = alBottom
    Color = clSilver
    TabOrder = 1
    object Label1: TLabel
      Left = 64
      Top = 8
      Width = 110
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr. Total dos Produtos:'
    end
    object DBText1: TDBText
      Left = 180
      Top = 7
      Width = 89
      Height = 14
      DataField = 'VLR_ITENS'
      DataSource = DMCadNotaFiscal.dsNotaFiscal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 67
      Top = 24
      Width = 107
      Height = 13
      Alignment = taRightJustify
      Caption = 'Base de ICMS Pr'#243'prio:'
    end
    object DBText2: TDBText
      Left = 180
      Top = 23
      Width = 89
      Height = 14
      DataField = 'BASE_ICMSSUBST_PROPRIO'
      DataSource = DMCadNotaFiscal.dsNotaFiscal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 76
      Top = 40
      Width = 98
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr. de ICMS Pr'#243'prio:'
    end
    object DBText3: TDBText
      Left = 180
      Top = 39
      Width = 89
      Height = 14
      DataField = 'VLR_ICMSSUBST_PROPRIO'
      DataSource = DMCadNotaFiscal.dsNotaFiscal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 64
      Top = 64
      Width = 135
      Height = 13
      Alignment = taRightJustify
      Caption = 'Base Substitui'#231#227'o Tribut'#225'ria:'
    end
    object DBText4: TDBText
      Left = 204
      Top = 63
      Width = 89
      Height = 14
      DataField = 'BASE_ICMSSUBST'
      DataSource = DMCadNotaFiscal.dsNotaFiscal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 64
      Top = 80
      Width = 135
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor Substitui'#231#227'o Tribut'#225'ria:'
    end
    object DBText5: TDBText
      Left = 204
      Top = 79
      Width = 89
      Height = 14
      DataField = 'VLR_ICMSSUBST'
      DataSource = DMCadNotaFiscal.dsNotaFiscal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 644
      Top = 8
      Width = 34
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr. IPI:'
    end
    object Label7: TLabel
      Left = 633
      Top = 24
      Width = 45
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr. Frete:'
    end
    object DBText6: TDBText
      Left = 681
      Top = 24
      Width = 89
      Height = 14
      DataField = 'VLR_FRETE'
      DataSource = DMCadNotaFiscal.dsNotaFiscal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText7: TDBText
      Left = 681
      Top = 8
      Width = 89
      Height = 14
      DataField = 'VLR_IPI'
      DataSource = DMCadNotaFiscal.dsNotaFiscal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 581
      Top = 40
      Width = 97
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr. Outras Despesa:'
    end
    object DBText8: TDBText
      Left = 681
      Top = 40
      Width = 89
      Height = 14
      DataField = 'VLR_OUTRASDESP'
      DataSource = DMCadNotaFiscal.dsNotaFiscal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 623
      Top = 56
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr. Seguro:'
    end
    object DBText9: TDBText
      Left = 681
      Top = 56
      Width = 89
      Height = 14
      DataField = 'VLR_SEGURO'
      DataSource = DMCadNotaFiscal.dsNotaFiscal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end
