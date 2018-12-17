object fOP: TfOP
  Left = 265
  Top = 139
  Width = 560
  Height = 615
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fOP'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clNavy
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
    Width = 544
    Height = 29
    Align = alTop
    TabOrder = 1
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
    object BitBtn3: TBitBtn
      Left = 153
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Im&primir'
      TabOrder = 2
      OnClick = BitBtn3Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 29
    Width = 544
    Height = 214
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 86
      Top = 16
      Width = 14
      Height = 13
      Alignment = taRightJustify
      Caption = 'ID:'
    end
    object Label2: TLabel
      Left = 54
      Top = 136
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = 'Acabado:'
    end
    object Label6: TLabel
      Left = 42
      Top = 160
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quantidade:'
    end
    object Label3: TLabel
      Left = 74
      Top = 40
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data:'
    end
    object Label5: TLabel
      Left = 60
      Top = 88
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = 'Entrega:'
    end
    object Label4: TLabel
      Left = 75
      Top = 184
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Obs.:'
    end
    object Label7: TLabel
      Left = 65
      Top = 64
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente:'
    end
    object Label8: TLabel
      Left = 78
      Top = 112
      Width = 18
      Height = 13
      Alignment = taRightJustify
      Caption = 'OC:'
    end
    object DBEdit1: TDBEdit
      Left = 104
      Top = 8
      Width = 121
      Height = 21
      TabStop = False
      DataField = 'ID'
      DataSource = dmOP.dsOP
      ReadOnly = True
      TabOrder = 0
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 104
      Top = 128
      Width = 313
      Height = 21
      DropDownCount = 15
      DataField = 'ACABADO_ID'
      DataSource = dmOP.dsOP
      LookupField = 'IDP'
      LookupDisplay = 'NOME'
      LookupSource = dmOP.dsAcabadoCons
      TabOrder = 5
      OnEnter = RxDBLookupCombo1Enter
      OnKeyDown = RxDBLookupCombo1KeyDown
    end
    object DBEdit3: TDBEdit
      Left = 104
      Top = 152
      Width = 81
      Height = 21
      CharCase = ecUpperCase
      DataField = 'QTD'
      DataSource = dmOP.dsOP
      TabOrder = 6
    end
    object DBDateEdit1: TDBDateEdit
      Left = 104
      Top = 32
      Width = 90
      Height = 21
      DataField = 'DT_EMISSAO'
      DataSource = dmOP.dsOP
      NumGlyphs = 2
      TabOrder = 1
      StartOfWeek = Sun
    end
    object DBDateEdit2: TDBDateEdit
      Left = 104
      Top = 80
      Width = 90
      Height = 21
      DataField = 'DT_ENTREGA'
      DataSource = dmOP.dsOP
      NumGlyphs = 2
      TabOrder = 3
      StartOfWeek = Sun
    end
    object DBEdit2: TDBEdit
      Left = 104
      Top = 176
      Width = 313
      Height = 21
      CharCase = ecUpperCase
      DataField = 'OBS'
      DataSource = dmOP.dsOP
      TabOrder = 7
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 104
      Top = 56
      Width = 313
      Height = 21
      DropDownCount = 15
      DataField = 'CLIENTE_ID'
      DataSource = dmOP.dsOP
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = dmOP.dsCliente
      TabOrder = 2
      OnEnter = RxDBLookupCombo2Enter
      OnKeyDown = RxDBLookupCombo2KeyDown
    end
    object DBEdit4: TDBEdit
      Left = 104
      Top = 104
      Width = 81
      Height = 21
      CharCase = ecUpperCase
      DataField = 'OC'
      DataSource = dmOP.dsOP
      TabOrder = 4
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 243
    Width = 544
    Height = 32
    Align = alTop
    TabOrder = 2
    object BitBtn4: TBitBtn
      Left = 104
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Incluir'
      TabOrder = 1
    end
    object BitBtn5: TBitBtn
      Left = 179
      Top = 4
      Width = 75
      Height = 25
      Caption = 'E&xcluir'
      TabOrder = 2
    end
    object BitBtn6: TBitBtn
      Left = 5
      Top = 4
      Width = 100
      Height = 25
      Caption = 'Gerar Processos'
      TabOrder = 0
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 275
    Width = 544
    Height = 302
    Align = alClient
    DataSource = dmOP.dsOPProcesso
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNavy
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
    ColCount = 8
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'POSICAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ITEM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TEMPO_SETUP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TEMPO_EXECUCAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUEBRA'
        Visible = True
      end>
  end
end
