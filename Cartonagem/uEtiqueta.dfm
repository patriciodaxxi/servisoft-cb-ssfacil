object fEtiqueta: TfEtiqueta
  Left = 395
  Top = 146
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'fEtiqueta'
  ClientHeight = 328
  ClientWidth = 511
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 93
    Top = 56
    Width = 23
    Height = 13
    Alignment = taRightJustify
    Caption = 'Filial:'
  end
  object Label2: TLabel
    Left = 70
    Top = 152
    Width = 46
    Height = 13
    Alignment = taRightJustify
    Caption = 'Acabado:'
  end
  object Label3: TLabel
    Left = 52
    Top = 176
    Width = 64
    Height = 13
    Alignment = taRightJustify
    Caption = 'Comprimento:'
  end
  object Label4: TLabel
    Left = 70
    Top = 224
    Width = 46
    Height = 13
    Alignment = taRightJustify
    Caption = 'Qtd. total:'
  end
  object Label5: TLabel
    Left = 98
    Top = 248
    Width = 18
    Height = 13
    Alignment = taRightJustify
    Caption = 'OC:'
  end
  object Label6: TLabel
    Left = 98
    Top = 80
    Width = 18
    Height = 13
    Alignment = taRightJustify
    Caption = 'OP:'
  end
  object Label7: TLabel
    Left = 72
    Top = 104
    Width = 44
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data OP:'
  end
  object Label11: TLabel
    Left = 197
    Top = 176
    Width = 39
    Height = 13
    Alignment = taRightJustify
    Caption = 'Largura:'
  end
  object Label12: TLabel
    Left = 326
    Top = 176
    Width = 30
    Height = 13
    Alignment = taRightJustify
    Caption = 'Altura:'
  end
  object Label8: TLabel
    Left = 43
    Top = 291
    Width = 73
    Height = 26
    Alignment = taRightJustify
    Caption = 'Quantidade de '#13#10'Etiquetas:'
  end
  object Label9: TLabel
    Left = 92
    Top = 200
    Width = 24
    Height = 13
    Alignment = taRightJustify
    Caption = 'Tipo:'
  end
  object Label10: TLabel
    Left = 81
    Top = 128
    Width = 35
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cliente:'
  end
  object Label13: TLabel
    Left = 218
    Top = 224
    Width = 98
    Height = 13
    Alignment = taRightJustify
    Caption = 'Qtd. por embalagem:'
  end
  object Label14: TLabel
    Left = 223
    Top = 102
    Width = 185
    Height = 13
    Caption = 'Pression F2 nos campos para consultar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label15: TLabel
    Left = 264
    Top = 80
    Width = 52
    Height = 13
    Alignment = taRightJustify
    Caption = 'OP avulsa:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 511
    Height = 29
    Align = alTop
    TabOrder = 14
    object BitBtn1: TBitBtn
      Left = 2
      Top = 2
      Width = 74
      Height = 25
      Caption = '&Gerar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 77
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Visualizar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 152
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Im&primir'
      TabOrder = 2
      OnClick = BitBtn3Click
    end
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 120
    Top = 48
    Width = 289
    Height = 21
    DropDownCount = 8
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = dmEtiqueta.dsFilial
    TabOrder = 0
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 120
    Top = 144
    Width = 289
    Height = 21
    DropDownCount = 15
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = dmEtiqueta.dsAcabado
    TabOrder = 5
    OnChange = RxDBLookupCombo2Change
    OnKeyDown = RxDBLookupCombo2KeyDown
  end
  object Edit1: TEdit
    Left = 120
    Top = 168
    Width = 49
    Height = 21
    TabOrder = 6
  end
  object Edit2: TEdit
    Left = 240
    Top = 168
    Width = 57
    Height = 21
    TabOrder = 7
  end
  object Edit3: TEdit
    Left = 360
    Top = 168
    Width = 49
    Height = 21
    TabOrder = 8
  end
  object Edit5: TEdit
    Left = 120
    Top = 240
    Width = 90
    Height = 21
    TabOrder = 12
  end
  object DateEdit1: TDateEdit
    Left = 120
    Top = 96
    Width = 90
    Height = 21
    NumGlyphs = 2
    StartOfWeek = Sun
    TabOrder = 3
  end
  object ComboBox1: TComboBox
    Left = 120
    Top = 192
    Width = 178
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    Text = 'FUNDO'
    Items.Strings = (
      'FUNDO'
      'TAMPA'
      'SUPORTE'
      'CARTUCHO'
      'SACOLA'
      'ACOPLADA')
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 120
    Top = 296
    Width = 121
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    TabOrder = 13
    Value = 1.000000000000000000
  end
  object RxDBLookupCombo3: TRxDBLookupCombo
    Left = 120
    Top = 72
    Width = 90
    Height = 21
    DropDownCount = 15
    LookupField = 'ID'
    LookupDisplay = 'ID'
    LookupSource = dmEtiqueta.dsOP
    TabOrder = 1
    OnChange = RxDBLookupCombo3Change
  end
  object RxDBLookupCombo4: TRxDBLookupCombo
    Left = 120
    Top = 120
    Width = 289
    Height = 21
    DropDownCount = 15
    LookupField = 'CODIGO'
    LookupDisplay = 'NOME'
    LookupSource = dmEtiqueta.dsPessoa
    TabOrder = 4
    OnChange = RxDBLookupCombo2Change
    OnKeyDown = RxDBLookupCombo4KeyDown
  end
  object CurrencyEdit2: TCurrencyEdit
    Left = 120
    Top = 216
    Width = 90
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    TabOrder = 10
    Value = 1.000000000000000000
    OnExit = CurrencyEdit2Exit
  end
  object CurrencyEdit3: TCurrencyEdit
    Left = 320
    Top = 216
    Width = 90
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    TabOrder = 11
    Value = 100.000000000000000000
    OnChange = CurrencyEdit2Exit
  end
  object CurrencyEdit4: TCurrencyEdit
    Left = 320
    Top = 72
    Width = 90
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    TabOrder = 2
  end
end
