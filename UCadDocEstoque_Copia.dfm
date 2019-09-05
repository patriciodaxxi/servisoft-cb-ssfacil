object frmCadDocEstoque_Copia: TfrmCadDocEstoque_Copia
  Left = 384
  Top = 237
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Copiar Documento Estoque'
  ClientHeight = 156
  ClientWidth = 494
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 8
    Width = 3
    Height = 13
  end
  object Label2: TLabel
    Left = 40
    Top = 21
    Width = 143
    Height = 13
    Alignment = taRightJustify
    Caption = 'N'#186' Doc Origem da C'#243'pia:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 187
    Top = 13
    Width = 97
    Height = 21
    TabStop = False
    AutoSize = False
    Color = clSilver
    Ctl3D = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object btnCopiar: TBitBtn
    Left = 135
    Top = 54
    Width = 111
    Height = 28
    Caption = 'Copiar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnCopiarClick
  end
  object btnCancelar: TBitBtn
    Left = 247
    Top = 54
    Width = 111
    Height = 28
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnCancelarClick
  end
  object ProgressBar1: TProgressBar
    Left = 16
    Top = 136
    Width = 465
    Height = 17
    TabOrder = 3
  end
end
