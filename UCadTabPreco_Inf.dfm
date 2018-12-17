object frmCadTabPreco_Inf: TfrmCadTabPreco_Inf
  Left = 277
  Top = 215
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmCadTabPreco_Inf'
  ClientHeight = 88
  ClientWidth = 767
  Color = 12582879
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
    Left = 72
    Top = 32
    Width = 406
    Height = 16
    Caption = 'Informar o Valor de Venda para os produtos selecionados:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 480
    Top = 24
    Width = 145
    Height = 25
    AutoSize = False
    DecimalPlaces = 6
    DisplayFormat = '0.00####'
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 480
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 560
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
end
