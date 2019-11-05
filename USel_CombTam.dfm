object frmSel_CombTam: TfrmSel_CombTam
  Left = 312
  Top = 113
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmSel_CombTam'
  ClientHeight = 449
  ClientWidth = 920
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
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 41
    Width = 920
    Height = 408
    Align = alClient
    Ctl3D = False
    DataSource = DMConsPedido.dsCor_Tam
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
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
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 8
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_COR_COMBINACAO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'ID Comb.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_COMBINACAO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Nome Cor/Combina'#231#227'o'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TAMANHO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Tamanho'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'COD_BARRA'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Barra'
        Width = 97
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TAMANHO_EUR'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Tam. EUR'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TAMANHO_USA'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Tam. USA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_IMP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Etiqueta'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 92
        Visible = True
      end>
  end
  object NxPanel1: TNxPanel
    Left = 0
    Top = 0
    Width = 920
    Height = 41
    Align = alTop
    UseDockManager = False
    ParentBackground = False
    TabOrder = 1
    object btnFechar: TNxButton
      Left = 139
      Top = 10
      Width = 75
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnFecharClick
    end
    object btnConfirmar: TNxButton
      Left = 11
      Top = 10
      Width = 123
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnConfirmarClick
    end
  end
end
