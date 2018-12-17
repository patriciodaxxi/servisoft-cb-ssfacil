object fFichaTecnicaCor: TfFichaTecnicaCor
  Left = 420
  Top = 157
  Width = 531
  Height = 253
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fFichaTecnicaCor'
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
  object Label1: TLabel
    Left = 98
    Top = 48
    Width = 14
    Height = 13
    Alignment = taRightJustify
    Caption = 'ID:'
  end
  object Label2: TLabel
    Left = 89
    Top = 72
    Width = 23
    Height = 13
    Alignment = taRightJustify
    Caption = 'Item:'
  end
  object Label3: TLabel
    Left = 93
    Top = 96
    Width = 19
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cor:'
  end
  object Label5: TLabel
    Left = 16
    Top = 168
    Width = 96
    Height = 13
    Alignment = taRightJustify
    Caption = '% da '#193'rea Impressa:'
  end
  object Label7: TLabel
    Left = 83
    Top = 120
    Width = 29
    Height = 13
    Alignment = taRightJustify
    Caption = 'Local:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 515
    Height = 29
    Align = alTop
    TabOrder = 5
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
      Left = 76
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Ca&ncelar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object DBEdit1: TDBEdit
    Left = 120
    Top = 40
    Width = 121
    Height = 21
    DataField = 'ID'
    DataSource = dmFichaTecnica.dsCorFD
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 120
    Top = 64
    Width = 121
    Height = 21
    TabStop = False
    DataField = 'ITEM'
    DataSource = dmFichaTecnica.dsCorFD
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 120
    Top = 160
    Width = 121
    Height = 21
    DataField = 'AREA_PERCENT'
    DataSource = dmFichaTecnica.dsCorFD
    TabOrder = 4
  end
  object RxDBComboBox1: TRxDBComboBox
    Left = 120
    Top = 112
    Width = 281
    Height = 21
    Style = csDropDownList
    DataField = 'FRENTEVERSO'
    DataSource = dmFichaTecnica.dsCorFD
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'FRENTE'
      'VERSO'
      'AMBOS')
    TabOrder = 3
    Values.Strings = (
      'F'
      'V'
      'A')
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 120
    Top = 88
    Width = 281
    Height = 21
    DropDownCount = 8
    DataField = 'COR_ID'
    DataSource = dmFichaTecnica.dsCorFD
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = dmFichaTecnica.dsCor
    TabOrder = 2
  end
end
