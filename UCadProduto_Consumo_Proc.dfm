object frmCadProduto_Consumo_Proc: TfrmCadProduto_Consumo_Proc
  Left = 384
  Top = 258
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmCadProduto_Consumo_Proc'
  ClientHeight = 97
  ClientWidth = 599
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
    Top = 63
    Width = 599
    Height = 34
    Align = alBottom
    Color = 8404992
    TabOrder = 1
    object BitBtn4: TBitBtn
      Left = 300
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
      Left = 201
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
    Width = 599
    Height = 63
    Align = alClient
    Color = clMoneyGreen
    TabOrder = 0
    object Label10: TLabel
      Left = 28
      Top = 29
      Width = 47
      Height = 13
      Alignment = taRightJustify
      Caption = 'Processo:'
    end
    object SpeedButton1: TSpeedButton
      Left = 560
      Top = 20
      Width = 23
      Height = 22
      Hint = 'Abre a tela de Processos'
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 78
      Top = 21
      Width = 480
      Height = 21
      DropDownCount = 15
      DataField = 'ID_PROCESSO'
      DataSource = dmCadProduto.dsProduto_Consumo_Proc
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = dmCadProduto.dsProcesso
      TabOrder = 0
      OnEnter = RxDBLookupCombo2Enter
    end
  end
end
