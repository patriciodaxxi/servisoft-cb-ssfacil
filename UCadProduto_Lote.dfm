object frmCadProduto_Lote: TfrmCadProduto_Lote
  Left = 350
  Top = 266
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro dos Lotes'
  ClientHeight = 129
  ClientWidth = 650
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
    Top = 95
    Width = 650
    Height = 34
    Align = alBottom
    Color = 8404992
    TabOrder = 1
    object BitBtn4: TBitBtn
      Left = 320
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
      Left = 222
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
    Width = 650
    Height = 95
    Align = alClient
    Color = clMoneyGreen
    TabOrder = 0
    object Label10: TLabel
      Left = 134
      Top = 16
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Lote:'
    end
    object Label1: TLabel
      Left = 112
      Top = 52
      Width = 61
      Height = 13
      Alignment = taRightJustify
      Caption = 'Pre'#231'o Custo:'
    end
    object Label2: TLabel
      Left = 108
      Top = 70
      Width = 65
      Height = 13
      Alignment = taRightJustify
      Caption = 'Pre'#231'o Venda:'
    end
    object Label3: TLabel
      Left = 113
      Top = 34
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Caption = 'Localiza'#231#227'o:'
    end
    object DBEdit1: TDBEdit
      Left = 174
      Top = 46
      Width = 107
      Height = 19
      Ctl3D = False
      DataField = 'PRECO_CUSTO'
      DataSource = dmCadProduto.dsProduto_Lote
      ParentCtl3D = False
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 174
      Top = 10
      Width = 283
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'NUM_LOTE_CONTROLE'
      DataSource = dmCadProduto.dsProduto_Lote
      ParentCtl3D = False
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 174
      Top = 64
      Width = 107
      Height = 19
      Ctl3D = False
      DataField = 'PRECO_VENDA'
      DataSource = dmCadProduto.dsProduto_Lote
      ParentCtl3D = False
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 174
      Top = 28
      Width = 283
      Height = 19
      Ctl3D = False
      DataField = 'LOCALIZACAO'
      DataSource = dmCadProduto.dsProduto_Lote
      ParentCtl3D = False
      TabOrder = 1
    end
  end
end
