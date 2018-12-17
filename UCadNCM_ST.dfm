object frmCadNCM_ST: TfrmCadNCM_ST
  Left = 62
  Top = 113
  Width = 1249
  Height = 480
  BorderIcons = [biSystemMenu]
  Caption = 'Digitar a ST'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 23
    Top = 19
    Width = 17
    Height = 13
    Alignment = taRightJustify
    Caption = 'UF:'
  end
  object Label3: TLabel
    Left = 6
    Top = 38
    Width = 37
    Height = 13
    Alignment = taRightJustify
    Caption = '% MVA:'
  end
  object Label4: TLabel
    Left = 215
    Top = 115
    Width = 95
    Height = 26
    Alignment = taRightJustify
    Caption = '% Red.  MVA'#13#10'Empresa do Simples'
  end
  object Label10: TLabel
    Left = 406
    Top = 130
    Width = 76
    Height = 13
    Alignment = taRightJustify
    Caption = 'Tipo do Produto'
  end
  object Label11: TLabel
    Left = 171
    Top = 118
    Width = 37
    Height = 26
    Alignment = taRightJustify
    Caption = '% ICMS'#13#10' Interno'
  end
  object Label12: TLabel
    Left = 315
    Top = 115
    Width = 84
    Height = 26
    Alignment = taRightJustify
    Caption = '% Red. MVA'#13#10'Empresa do Geral'
  end
  object Label13: TLabel
    Left = 498
    Top = 117
    Width = 78
    Height = 26
    Alignment = taRightJustify
    Caption = 'Ajustar MVA'#13#10'Para Cliente do..'
  end
  object Label9: TLabel
    Left = 761
    Top = 130
    Width = 14
    Height = 13
    Alignment = taRightJustify
    Caption = 'Lei'
  end
  object Label29: TLabel
    Left = 74
    Top = 175
    Width = 131
    Height = 13
    Alignment = taRightJustify
    Caption = '% Red.Base ST Dest. Geral'
  end
  object Label31: TLabel
    Left = 247
    Top = 175
    Width = 160
    Height = 13
    Alignment = taRightJustify
    Caption = '% Red.Base ST Dest. do Simples '
  end
  object Label38: TLabel
    Left = 416
    Top = 175
    Width = 159
    Height = 13
    Alignment = taRightJustify
    Caption = '% Red.MVA Destinat'#225'rio do Geral'
  end
  object Label39: TLabel
    Left = 584
    Top = 175
    Width = 159
    Height = 13
    Alignment = taRightJustify
    Caption = '% Red.MVA Destinat'#225'rio do Geral'
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 50
    Top = 13
    Width = 53
    Height = 21
    DropDownCount = 8
    LookupField = 'UF'
    LookupDisplay = 'UF'
    LookupSource = DMCadNCM.dsUF
    TabOrder = 0
  end
  object CurrencyEdit2: TCurrencyEdit
    Left = 219
    Top = 150
    Width = 91
    Height = 21
    AutoSize = False
    DisplayFormat = '0.00'
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 401
    Top = 150
    Width = 87
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 2
    TabOrder = 2
    Text = 'Ambos'
    Items.Strings = (
      'Importado'
      'Nacional'
      'Ambos')
  end
  object CurrencyEdit3: TCurrencyEdit
    Left = 154
    Top = 150
    Width = 64
    Height = 21
    AutoSize = False
    DisplayFormat = '0.00'
    TabOrder = 3
  end
  object CurrencyEdit4: TCurrencyEdit
    Left = 310
    Top = 150
    Width = 91
    Height = 21
    AutoSize = False
    DisplayFormat = '0.00'
    TabOrder = 4
  end
  object ComboBox2: TComboBox
    Left = 487
    Top = 150
    Width = 104
    Height = 21
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    ItemIndex = 3
    ParentFont = False
    TabOrder = 5
    Text = 'N'#227'o Ajustar'
    Items.Strings = (
      'Simples'
      'Geral'
      'Ambos'
      'N'#227'o Ajustar')
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 707
    Top = 150
    Width = 131
    Height = 21
    DropDownCount = 8
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = DMCadNCM.dsObs_Lei
    TabOrder = 6
  end
  object CurrencyEdit6: TCurrencyEdit
    Left = 112
    Top = 190
    Width = 91
    Height = 21
    AutoSize = False
    DisplayFormat = '0.00'
    TabOrder = 7
  end
  object CurrencyEdit7: TCurrencyEdit
    Left = 314
    Top = 189
    Width = 91
    Height = 21
    AutoSize = False
    DisplayFormat = '0.00'
    TabOrder = 8
  end
  object CurrencyEdit8: TCurrencyEdit
    Left = 483
    Top = 189
    Width = 91
    Height = 21
    AutoSize = False
    DisplayFormat = '0.00'
    TabOrder = 9
  end
  object CurrencyEdit9: TCurrencyEdit
    Left = 651
    Top = 189
    Width = 91
    Height = 21
    AutoSize = False
    DisplayFormat = '0.00'
    TabOrder = 10
  end
  object DBEdit1: TDBEdit
    Left = 51
    Top = 34
    Width = 121
    Height = 21
    TabOrder = 11
  end
end
