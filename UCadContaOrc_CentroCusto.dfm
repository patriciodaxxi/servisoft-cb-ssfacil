object frmCadContaOrc_CentroCusto: TfrmCadContaOrc_CentroCusto
  Left = 360
  Top = 213
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro Centro de Custo'
  ClientHeight = 167
  ClientWidth = 624
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
    Top = 133
    Width = 624
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
    Width = 624
    Height = 133
    Align = alClient
    Color = clMoneyGreen
    TabOrder = 0
    object Label10: TLabel
      Left = 38
      Top = 24
      Width = 79
      Height = 13
      Alignment = taRightJustify
      Caption = 'Centro de Custo:'
    end
    object Label1: TLabel
      Left = 37
      Top = 70
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Caption = '% do Custo:'
    end
    object lblF2: TLabel
      Left = 536
      Top = 48
      Width = 76
      Height = 13
      Caption = 'F2 - Consulta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object DBEdit1: TDBEdit
      Left = 37
      Top = 86
      Width = 121
      Height = 21
      DataField = 'PERCENTUAL'
      DataSource = dmCadContaOrc.dsContaOrc_CCusto
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 37
      Top = 40
      Width = 121
      Height = 21
      DataField = 'ID_CENTROCUSTO'
      DataSource = dmCadContaOrc.dsContaOrc_CCusto
      TabOrder = 0
      OnEnter = DBEdit2Enter
      OnExit = DBEdit2Exit
      OnKeyDown = DBEdit2KeyDown
    end
    object edtNomeCentroCusto: TEdit
      Left = 163
      Top = 40
      Width = 364
      Height = 21
      TabStop = False
      Color = clSilver
      TabOrder = 2
    end
  end
end
