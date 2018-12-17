object fProcesso: TfProcesso
  Left = 318
  Top = 124
  Width = 537
  Height = 585
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fProcesso'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 521
    Height = 29
    Align = alTop
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 2
      Top = 2
      Width = 74
      Height = 25
      Caption = '&Confirmar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 77
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Ca&ncelar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 29
    Width = 521
    Height = 84
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 82
      Top = 16
      Width = 14
      Height = 13
      Alignment = taRightJustify
      Caption = 'ID:'
    end
    object Label2: TLabel
      Left = 69
      Top = 40
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'Faca:'
    end
    object Label3: TLabel
      Left = 25
      Top = 64
      Width = 71
      Height = 13
      Alignment = taRightJustify
      Caption = 'Ficha T'#233'cnica:'
    end
    object DBEdit1: TDBEdit
      Left = 104
      Top = 8
      Width = 121
      Height = 21
      TabStop = False
      DataField = 'ID'
      DataSource = dmProcesso.dsmProcesso
      ReadOnly = True
      TabOrder = 0
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 104
      Top = 32
      Width = 145
      Height = 21
      DropDownCount = 8
      DataField = 'FACA_ID'
      DataSource = dmProcesso.dsProcesso
      LookupField = 'ID'
      LookupDisplay = 'REFERENCIA'
      LookupSource = dmProcesso.dsFaca
      TabOrder = 1
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 104
      Top = 56
      Width = 313
      Height = 21
      DropDownCount = 8
      DataField = 'FICHA_TEC_ID'
      DataSource = dmProcesso.dsProcesso
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = dmProcesso.dsFichaTecnica
      TabOrder = 2
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 113
    Width = 521
    Height = 32
    Align = alTop
    TabOrder = 2
    object BitBtn4: TBitBtn
      Left = 80
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Incluir'
      TabOrder = 1
    end
    object BitBtn5: TBitBtn
      Left = 155
      Top = 4
      Width = 75
      Height = 25
      Caption = 'E&xcluir'
      TabOrder = 2
      OnClick = BitBtn5Click
    end
    object BitBtn3: TBitBtn
      Left = 8
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Gerar'
      TabOrder = 0
      OnClick = BitBtn3Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 145
    Width = 521
    Height = 402
    Align = alClient
    DataSource = dmProcesso.dsProcessoItem
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
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
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'ITEM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'POSICAO'
        Title.Caption = 'POSI'#199#195'O'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Visible = True
      end>
  end
end
