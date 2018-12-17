object frmSel_CodCest: TfrmSel_CodCest
  Left = 230
  Top = 144
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmSel_CodCest'
  ClientHeight = 475
  ClientWidth = 914
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 914
    Height = 33
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 52
      Top = 15
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'NCM:'
    end
    object Label3: TLabel
      Left = 240
      Top = 15
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'd.Cest:'
    end
    object Edit1: TEdit
      Left = 80
      Top = 7
      Width = 153
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyDown = Edit1KeyDown
    end
    object BitBtn1: TBitBtn
      Left = 420
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object Edit2: TEdit
      Left = 288
      Top = 7
      Width = 129
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyDown = Edit1KeyDown
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 33
    Width = 914
    Height = 336
    Align = alClient
    Ctl3D = False
    DataSource = dsTab_Cest
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
    OnKeyDown = SMDBGrid1KeyDown
    OnTitleClick = SMDBGrid1TitleClick
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
    ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 4
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'COD_CEST'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. CEST'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NCM'
        Title.Alignment = taCenter
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 661
        Visible = True
      end>
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 458
    Width = 914
    Height = 17
    Align = alBottom
    BorderStyle = sbsSingle
    Caption = 
      'Duplo Clique  ou   Enter para selecionar o produto       ESC= Fe' +
      'char tela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object DBMemo1: TDBMemo
    Left = 0
    Top = 369
    Width = 914
    Height = 89
    Align = alBottom
    Color = clBtnFace
    Ctl3D = False
    DataField = 'DESCRICAO'
    DataSource = dsTab_Cest
    ParentCtl3D = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object sdsTab_Cest: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CEST'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 168
  end
  object cdsTab_Cest: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTab_Cest'
    Left = 304
    Top = 168
    object cdsTab_CestCOD_CEST: TStringField
      FieldName = 'COD_CEST'
      Size = 7
    end
    object cdsTab_CestNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object cdsTab_CestDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 600
    end
  end
  object dspTab_Cest: TDataSetProvider
    DataSet = sdsTab_Cest
    Left = 256
    Top = 168
  end
  object dsTab_Cest: TDataSource
    DataSet = cdsTab_Cest
    Left = 360
    Top = 168
  end
end
