object fCupomFiscalCanc: TfCupomFiscalCanc
  Left = 308
  Top = 217
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cancelar'
  ClientHeight = 99
  ClientWidth = 369
  Color = clMoneyGreen
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
    Left = 16
    Top = 16
    Width = 70
    Height = 13
    Caption = 'Informe o Item:'
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 88
    Top = 8
    Width = 65
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    TabOrder = 0
    OnKeyDown = CurrencyEdit1KeyDown
  end
  object BitBtn1: TBitBtn
    Left = 71
    Top = 56
    Width = 130
    Height = 25
    Caption = 'Confirmar Cancelamento'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 201
    Top = 56
    Width = 130
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
end
