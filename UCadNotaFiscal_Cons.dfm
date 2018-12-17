object frmCadNotaFiscal_Cons: TfrmCadNotaFiscal_Cons
  Left = 194
  Top = 40
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'frmCadNotaFiscal_Cons'
  ClientHeight = 634
  ClientWidth = 973
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SMDBGrid6: TSMDBGrid
    Left = 0
    Top = 41
    Width = 973
    Height = 311
    Align = alClient
    Ctl3D = False
    DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
    ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 16
    ScrollBars = ssHorizontal
    ColCount = 17
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'ITEM'
        Title.Color = 16758897
        Width = 36
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERC_TRIBICMS'
        Title.Alignment = taCenter
        Title.Caption = '% Tributa'#231#227'o ICMS'
        Title.Color = 16758897
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'COD_CST'
        Title.Alignment = taCenter
        Title.Caption = 'CST ICMS'
        Title.Color = 16758897
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BASE_ICMS'
        Title.Alignment = taCenter
        Title.Caption = 'Base ICMS'
        Title.Color = 16758897
        Width = 40
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PERC_ICMS'
        Title.Alignment = taCenter
        Title.Caption = '% ICMS'
        Title.Color = 16758897
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_ICMS'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. ICMS'
        Title.Color = 16758897
        Width = 54
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'COD_IPI'
        Title.Alignment = taCenter
        Title.Caption = 'CST IPI'
        Title.Color = 16758897
        Width = 38
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PERC_IPI'
        Title.Alignment = taCenter
        Title.Caption = '% IPI'
        Title.Color = 16758897
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_IPI'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. IPI'
        Title.Color = 16758897
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BASE_ICMSSIMPLES'
        Title.Alignment = taCenter
        Title.Caption = 'Base ICMS Simples'
        Title.Color = 16758897
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_ICMSSIMPLES'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. ICMS Simples'
        Title.Color = 16758897
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERC_MVA'
        Title.Alignment = taCenter
        Title.Caption = '% MVA'
        Title.Color = 16758897
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BASE_ICMSSUBST'
        Title.Alignment = taCenter
        Title.Caption = 'Base Icms Subst.'
        Title.Color = 16758897
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_ICMSSUBST'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Icms Substitui'#231#227'o'
        Title.Color = 16758897
        Width = 85
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_MOVESTOQUE'
        Title.Alignment = taCenter
        Title.Caption = 'ID Mov. Estoque'
        Title.Color = 16758897
        Width = 73
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_VARIACAO'
        Title.Alignment = taCenter
        Title.Caption = 'ID Varia'#231#227'o CFOP'
        Title.Color = 16758897
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 973
    Height = 41
    Align = alTop
    Color = 8404992
    TabOrder = 1
    object btnCancelar: TNxButton
      Left = 776
      Top = 3
      Width = 171
      Height = 33
      Caption = '(ESC) Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 0
      Transparent = True
      OnClick = btnCancelarClick
    end
  end
  object SMDBGrid7: TSMDBGrid
    Left = 0
    Top = 352
    Width = 973
    Height = 282
    Align = alBottom
    Ctl3D = False
    DataSource = DMCadNotaFiscal.dsNotaFiscal_Itens
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 2
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
    ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 16
    ScrollBars = ssHorizontal
    ColCount = 19
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'ITEM'
        Title.Color = 16758639
        Width = 36
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ORIGEM_PROD'
        Title.Alignment = taCenter
        Title.Caption = 'Origem Prod.'
        Title.Color = 16758639
        Width = 36
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODCOFINS'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. COFINS'
        Title.Color = 16758639
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERC_COFINS'
        Title.Alignment = taCenter
        Title.Caption = '% Cofins'
        Title.Color = 16758639
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_COFINS'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. COFINS'
        Title.Color = 16758639
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODPIS'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. PIS'
        Title.Color = 16758639
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERC_PIS'
        Title.Alignment = taCenter
        Title.Caption = '% Pis'
        Title.Color = 16758639
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_PIS'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. PIS'
        Title.Color = 16758639
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_FRETE'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Frete'
        Title.Color = 16758639
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_OUTRASDESPESAS'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Outras Despesas'
        Title.Color = 16758639
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_DUPLICATA'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Duplicata'
        Title.Color = 16758639
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERC_TRIBUTO'
        Title.Alignment = taCenter
        Title.Caption = '% Tributos'
        Title.Color = 16758639
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_TRIBUTOS'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Tributos 12.741/12'
        Title.Color = 16758639
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERC_IMPORTACAO'
        Title.Alignment = taCenter
        Title.Caption = '% Importa'#231#227'o'
        Title.Color = 16758639
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_IMPORTACAO'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Importa'#231#227'o'
        Title.Color = 16758639
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_SEGURO'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Seguro'
        Title.Color = 16758639
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_ADUANEIRA'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Aduaneira'
        Title.Color = 16758639
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERC_DESCONTO'
        Title.Alignment = taCenter
        Title.Caption = '% Desconto'
        Title.Color = 16758639
        Width = 52
        Visible = True
      end>
  end
end
