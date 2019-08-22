object frmAltCFOPProd: TfrmAltCFOPProd
  Left = 366
  Top = 194
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmAltCFOPProd'
  ClientHeight = 151
  ClientWidth = 642
  Color = 16764002
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label23: TLabel
    Left = 35
    Top = 34
    Width = 82
    Height = 13
    Alignment = taRightJustify
    Caption = '% Base de ICMS:'
  end
  object Label161: TLabel
    Left = 393
    Top = 34
    Width = 103
    Height = 13
    Alignment = taRightJustify
    Caption = 'CST ICMS Base Red:'
  end
  object Label35: TLabel
    Left = 222
    Top = 24
    Width = 84
    Height = 26
    Caption = 'Somente quando '#13#10'for base reduzida'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label112: TLabel
    Left = 19
    Top = 67
    Width = 98
    Height = 13
    Alignment = taRightJustify
    Caption = 'CFOP Padr'#227'o NFCe:'
  end
  object Label253: TLabel
    Left = 266
    Top = 67
    Width = 70
    Height = 13
    Alignment = taRightJustify
    Caption = '% ICMS NFCe:'
  end
  object Label243: TLabel
    Left = 441
    Top = 67
    Width = 53
    Height = 13
    Alignment = taRightJustify
    Caption = 'CST ICMS:'
  end
  object DBEdit10: TDBEdit
    Left = 121
    Top = 26
    Width = 100
    Height = 21
    CharCase = ecUpperCase
    DataField = 'PERC_REDUCAOICMS'
    DataSource = DMConsProduto.dsProduto
    TabOrder = 0
  end
  object RxDBLookupCombo20: TRxDBLookupCombo
    Left = 499
    Top = 26
    Width = 104
    Height = 21
    DropDownCount = 8
    DropDownWidth = 500
    DataField = 'ID_CSTICMS_BRED'
    DataSource = DMConsProduto.dsProduto
    LookupField = 'ID'
    LookupDisplay = 'COD_CST;PERCENTUAL'
    LookupSource = DMConsProduto.dsCSTICMS
    TabOrder = 1
  end
  object RxDBLookupCombo17: TRxDBLookupCombo
    Left = 121
    Top = 59
    Width = 119
    Height = 21
    DropDownCount = 8
    DropDownWidth = 600
    DataField = 'ID_CFOP_NFCE'
    DataSource = DMConsProduto.dsProduto
    LookupField = 'ID'
    LookupDisplay = 'CODCFOP;NOME'
    LookupSource = DMConsProduto.dsCFOP
    TabOrder = 2
  end
  object DBEdit162: TDBEdit
    Left = 339
    Top = 59
    Width = 83
    Height = 21
    CharCase = ecUpperCase
    DataField = 'PERC_ICMS_NFCE'
    DataSource = DMConsProduto.dsProduto
    TabOrder = 3
  end
  object RxDBLookupCombo25: TRxDBLookupCombo
    Left = 497
    Top = 59
    Width = 119
    Height = 21
    DropDownCount = 8
    DropDownWidth = 500
    DataField = 'ID_CSTICMS'
    DataSource = DMConsProduto.dsProduto
    LookupField = 'ID'
    LookupDisplay = 'COD_CST;PERCENTUAL'
    LookupSource = DMConsProduto.dsCSTICMS
    TabOrder = 4
  end
  object Panel1: TPanel
    Left = 0
    Top = 110
    Width = 642
    Height = 41
    Align = alBottom
    TabOrder = 5
    object btnConfirmar: TNxButton
      Left = 221
      Top = 6
      Width = 101
      Height = 26
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnConfirmarClick
    end
    object NxButton2: TNxButton
      Left = 328
      Top = 6
      Width = 101
      Height = 26
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = NxButton2Click
    end
  end
end
