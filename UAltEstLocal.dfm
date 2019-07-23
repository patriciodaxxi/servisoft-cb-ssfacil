object frmAltEstLocal: TfrmAltEstLocal
  Left = 565
  Top = 255
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmAltEstLocal'
  ClientHeight = 88
  ClientWidth = 282
  Color = 16761220
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
    Left = 24
    Top = 19
    Width = 86
    Height = 16
    Caption = 'Quantidade: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 110
    Top = 14
    Width = 105
    Height = 21
    AutoSize = False
    DecimalPlaces = 4
    DisplayFormat = '0.00##'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 114
    Top = 40
    Width = 78
    Height = 25
    Caption = 'Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
end
