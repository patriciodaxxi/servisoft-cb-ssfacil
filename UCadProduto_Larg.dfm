object frmCadProduto_Larg: TfrmCadProduto_Larg
  Left = 311
  Top = 204
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmCadProduto_Larg'
  ClientHeight = 87
  ClientWidth = 507
  Color = 16769734
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
    Left = 17
    Top = 16
    Width = 54
    Height = 14
    Alignment = taRightJustify
    Caption = 'Largura:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 173
    Top = 14
    Width = 42
    Height = 14
    Alignment = taRightJustify
    Caption = 'Altura:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 312
    Top = 13
    Width = 71
    Height = 14
    Alignment = taRightJustify
    Caption = 'Espessura:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 132
    Top = 37
    Width = 83
    Height = 14
    Alignment = taRightJustify
    Caption = 'Multiplicador:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 74
    Top = 8
    Width = 86
    Height = 21
    AutoSize = False
    DecimalPlaces = 4
    DisplayFormat = '0.000#'
    TabOrder = 0
  end
  object CurrencyEdit2: TCurrencyEdit
    Left = 218
    Top = 6
    Width = 86
    Height = 21
    AutoSize = False
    DecimalPlaces = 4
    DisplayFormat = '0.000#'
    TabOrder = 1
  end
  object CurrencyEdit3: TCurrencyEdit
    Left = 386
    Top = 5
    Width = 86
    Height = 21
    AutoSize = False
    DecimalPlaces = 4
    DisplayFormat = '0.0000'
    TabOrder = 2
  end
  object NxButton1: TNxButton
    Left = 175
    Top = 56
    Width = 78
    Caption = 'Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = NxButton1Click
  end
  object NxButton2: TNxButton
    Left = 253
    Top = 56
    Width = 78
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = NxButton2Click
  end
  object CurrencyEdit4: TCurrencyEdit
    Left = 218
    Top = 29
    Width = 86
    Height = 21
    AutoSize = False
    DecimalPlaces = 4
    DisplayFormat = '0.0000'
    TabOrder = 3
  end
end