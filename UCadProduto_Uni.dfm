object frmCadProduto_Uni: TfrmCadProduto_Uni
  Left = 280
  Top = 262
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro das Unidades'
  ClientHeight = 87
  ClientWidth = 561
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 53
    Width = 561
    Height = 34
    Align = alBottom
    Color = 8404992
    TabOrder = 1
    object BitBtn4: TBitBtn
      Left = 265
      Top = 5
      Width = 98
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
      Left = 166
      Top = 5
      Width = 98
      Height = 25
      Caption = '&Confirmar'
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
    Top = 0
    Width = 561
    Height = 53
    Align = alClient
    Color = clMoneyGreen
    TabOrder = 0
    object Label7: TLabel
      Left = 29
      Top = 23
      Width = 157
      Height = 13
      Alignment = taRightJustify
      Caption = 'Conversor Unidade (Cadastrado):'
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 187
      Top = 15
      Width = 139
      Height = 21
      DropDownCount = 8
      DropDownWidth = 200
      DataField = 'ITEM_UNIDADE'
      DataSource = dmCadProduto.dsProduto_Uni
      LookupField = 'ITEM'
      LookupDisplay = 'UNIDADE_CONV;NOME'
      LookupSource = dmCadProduto.dsUnidade_Conv
      TabOrder = 0
    end
  end
end
