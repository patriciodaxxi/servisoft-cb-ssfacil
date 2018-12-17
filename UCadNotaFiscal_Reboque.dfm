object frmCadNotaFiscal_Reboque: TfrmCadNotaFiscal_Reboque
  Left = 195
  Top = 74
  Width = 494
  Height = 340
  Caption = 'frmCadNotaFiscal_Reboque'
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 478
    Height = 86
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 0
    object Label3: TLabel
      Left = 107
      Top = 19
      Width = 17
      Height = 13
      Alignment = taRightJustify
      Caption = 'UF:'
    end
    object Label4: TLabel
      Left = 94
      Top = 43
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'Placa:'
    end
    object Label7: TLabel
      Left = 91
      Top = 66
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'RNTC:'
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 127
      Top = 11
      Width = 67
      Height = 21
      DropDownCount = 8
      LookupField = 'UF'
      LookupDisplay = 'UF'
      LookupSource = DMCadNotaFiscal.dsUF
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 127
      Top = 35
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 8
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 127
      Top = 59
      Width = 177
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 20
      TabOrder = 2
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 120
    Width = 478
    Height = 182
    Align = alClient
    DataSource = DMCadNotaFiscal.dsNotaFiscal_Reboque
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
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
        FieldName = 'ITEM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PLACA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RNTC'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 86
    Width = 478
    Height = 34
    Align = alTop
    Color = 8404992
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 125
      Top = 5
      Width = 75
      Height = 25
      Caption = '&Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 201
      Top = 5
      Width = 75
      Height = 25
      Caption = 'E&xcluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn4: TBitBtn
      Left = 277
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Ca&ncelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn4Click
    end
  end
end
