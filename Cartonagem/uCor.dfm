object fCor: TfCor
  Left = 318
  Top = 124
  Width = 537
  Height = 221
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fCor'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 66
    Top = 56
    Width = 14
    Height = 13
    Alignment = taRightJustify
    Caption = 'ID:'
  end
  object Label2: TLabel
    Left = 29
    Top = 80
    Width = 51
    Height = 13
    Alignment = taRightJustify
    Caption = 'Descri'#231#227'o:'
  end
  object Label3: TLabel
    Left = 37
    Top = 104
    Width = 43
    Height = 13
    Alignment = taRightJustify
    Caption = 'Pantone:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 521
    Height = 29
    Align = alTop
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 2
      Top = 2
      Width = 74
      Height = 25
      Caption = '&Confirmar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 77
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Ca&ncelar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object DBEdit1: TDBEdit
    Left = 88
    Top = 48
    Width = 121
    Height = 21
    TabStop = False
    DataField = 'ID'
    DataSource = dmCor.dsCor
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 88
    Top = 72
    Width = 369
    Height = 21
    TabStop = False
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = dmCor.dsCor
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 88
    Top = 96
    Width = 369
    Height = 21
    TabStop = False
    CharCase = ecUpperCase
    DataField = 'PANTONE'
    DataSource = dmCor.dsCor
    TabOrder = 3
  end
end
