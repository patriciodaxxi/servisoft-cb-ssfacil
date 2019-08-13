object frmCadPessoa_ProdICMS: TfrmCadPessoa_ProdICMS
  Left = 257
  Top = 183
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmCadPessoa_ProdICMS'
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
  object NxPanel1: TNxPanel
    Left = 0
    Top = 0
    Width = 920
    Height = 69
    Align = alTop
    UseDockManager = False
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 17
      Width = 54
      Height = 13
      Caption = 'ID.Produto:'
      Transparent = True
    end
    object Label2: TLabel
      Left = 161
      Top = 15
      Width = 53
      Height = 13
      Caption = 'CST ICMS:'
      Transparent = True
    end
    object Label3: TLabel
      Left = 67
      Top = 35
      Width = 55
      Height = 13
      Caption = 'Refer'#234'ncia:'
    end
    object Label4: TLabel
      Left = 67
      Top = 52
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Label5: TLabel
      Left = 370
      Top = 12
      Width = 8
      Height = 13
      Caption = '%'
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 66
      Top = 9
      Width = 78
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      ParentCtl3D = False
      TabOrder = 0
      OnChange = CurrencyEdit1Change
      OnExit = CurrencyEdit1Exit
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 217
      Top = 8
      Width = 145
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      LookupField = 'ID'
      LookupDisplay = 'COD_CST;PERCENTUAL'
      LookupSource = DMCadPessoa.dsTab_CSTICMS
      ParentCtl3D = False
      TabOrder = 1
      OnChange = RxDBLookupCombo1Change
    end
  end
  object NxPanel2: TNxPanel
    Left = 0
    Top = 69
    Width = 920
    Height = 32
    Align = alTop
    UseDockManager = False
    ParentBackground = False
    TabOrder = 1
    object btnConfirmar: TNxButton
      Left = 73
      Top = 6
      Width = 75
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnConfirmarClick
    end
    object btnExcluir: TNxButton
      Left = 151
      Top = 6
      Width = 75
      Caption = 'Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnExcluirClick
    end
  end
  object SMDBGrid9: TSMDBGrid
    Left = 0
    Top = 101
    Width = 920
    Height = 348
    Align = alClient
    Ctl3D = False
    DataSource = DMCadPessoa.dsPessoa_ProdICMS
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
    ExOptions = [eoBooleanAsCheckBox, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    FixedCols = 1
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ITEM'
        Title.Alignment = taCenter
        Title.Caption = 'Item'
        Title.Color = 16760962
        Width = 71
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_PRODUTO'
        Title.Alignment = taCenter
        Title.Caption = 'ID Produto'
        Title.Color = 16760962
        Width = 79
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_CSTICMS'
        Title.Alignment = taCenter
        Title.Caption = 'ID CST ICMS'
        Title.Color = 16760962
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'clCod_CSTICMS'
        Title.Alignment = taCenter
        Title.Caption = 'CST ICMS'
        Title.Color = 16760962
        Width = 73
        Visible = True
      end>
  end
end
