object frmProdutoAtualizaPreco: TfrmProdutoAtualizaPreco
  Left = 203
  Top = 139
  Width = 622
  Height = 329
  Caption = 'frmProdutoAtualizaPreco'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 35
    Width = 102
    Height = 13
    Alignment = taRightJustify
    Caption = 'ID ou C'#243'd. de Barras:'
  end
  object Label2: TLabel
    Left = 135
    Top = 67
    Width = 31
    Height = 13
    Alignment = taRightJustify
    Caption = 'Nome:'
  end
  object Label3: TLabel
    Left = 111
    Top = 99
    Width = 55
    Height = 13
    Alignment = taRightJustify
    Caption = 'Refer'#234'ncia:'
  end
  object Label4: TLabel
    Left = 108
    Top = 161
    Width = 58
    Height = 13
    Alignment = taRightJustify
    Caption = 'Pre'#231'o Atual:'
  end
  object Label5: TLabel
    Left = 106
    Top = 194
    Width = 60
    Height = 13
    Alignment = taRightJustify
    Caption = 'Pre'#231'o Novo:'
  end
  object Edit1: TEdit
    Left = 176
    Top = 24
    Width = 201
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnExit = Edit1Exit
    OnKeyDown = Edit1KeyDown
  end
  object Edit2: TEdit
    Left = 176
    Top = 56
    Width = 353
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 176
    Top = 88
    Width = 201
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 176
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 176
    Top = 144
    Width = 201
    Height = 30
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object CurrencyEdit2: TCurrencyEdit
    Left = 176
    Top = 177
    Width = 201
    Height = 30
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
end
