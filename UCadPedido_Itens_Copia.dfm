object frmCadPedido_Itens_Copia: TfrmCadPedido_Itens_Copia
  Left = 263
  Top = 165
  Width = 781
  Height = 179
  BorderIcons = [biSystemMenu]
  Caption = 'Copia do Item'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 107
    Width = 765
    Height = 34
    Align = alBottom
    Color = 8404992
    TabOrder = 2
    object BitBtn4: TBitBtn
      Left = 393
      Top = 5
      Width = 128
      Height = 25
      Caption = '(F10) Ca&ncelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn4Click
    end
    object BitBtn1: TBitBtn
      Left = 266
      Top = 5
      Width = 127
      Height = 25
      Caption = '(F7) &Confirmar Copia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 27
    Width = 765
    Height = 80
    Align = alClient
    Color = clMoneyGreen
    TabOrder = 1
    object Label7: TLabel
      Left = 84
      Top = 16
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr.Unit'#225'rio:'
    end
    object Label10: TLabel
      Left = 65
      Top = 34
      Width = 73
      Height = 13
      Alignment = taRightJustify
      Caption = 'OS / Remessa:'
    end
    object Label25: TLabel
      Left = 97
      Top = 52
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'Carimbo:'
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 141
      Top = 8
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 4
      DisplayFormat = '0.00##'
      ParentCtl3D = False
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 141
      Top = 28
      Width = 216
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 141
      Top = 46
      Width = 443
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
    end
  end
  object pnlCor: TPanel
    Left = 0
    Top = 0
    Width = 765
    Height = 27
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 0
    object Label31: TLabel
      Left = 54
      Top = 12
      Width = 83
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cor/Combina'#231#227'o:'
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 139
      Top = 4
      Width = 457
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      LookupField = 'ID_COMBINACAO_COR'
      LookupDisplay = 'NOME'
      LookupSource = DMCadPedido.dsCombinacao
      ParentCtl3D = False
      TabOrder = 0
    end
  end
end
