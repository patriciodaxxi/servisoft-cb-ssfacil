object frmCadPedido_Copia: TfrmCadPedido_Copia
  Left = 384
  Top = 237
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Copiar Pedido'
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
    Left = 16
    Top = 21
    Width = 156
    Height = 13
    Caption = 'N'#186' Pedido Origem da C'#243'pa:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 168
    Top = 70
    Width = 66
    Height = 13
    Caption = 'Data Entrega:'
    Visible = False
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 171
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
    Left = 132
    Top = 102
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
    Left = 244
    Top = 102
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
  object CheckBox1: TCheckBox
    Left = 168
    Top = 40
    Width = 153
    Height = 17
    Caption = 'Usar nova data de entrega'
    TabOrder = 4
    OnClick = CheckBox1Click
  end
  object DateEdit1: TDateEdit
    Left = 236
    Top = 62
    Width = 100
    Height = 21
    NumGlyphs = 2
    TabOrder = 5
    Visible = False
  end
end
