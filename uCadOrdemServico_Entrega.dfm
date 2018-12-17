object frmCadOrdemServico_Entrega: TfrmCadOrdemServico_Entrega
  Left = 401
  Top = 113
  Width = 346
  Height = 141
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'frmCadOrdemServico_Entrega'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 76
    Width = 338
    Height = 34
    Align = alBottom
    Color = 8404992
    TabOrder = 0
    object BitBtn4: TBitBtn
      Left = 169
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
      Left = 71
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
    Width = 338
    Height = 76
    Align = alClient
    Color = clMoneyGreen
    TabOrder = 1
    object Label13: TLabel
      Left = 71
      Top = 38
      Width = 81
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data da Entrega:'
    end
    object DtEntrega: TDateEdit
      Left = 161
      Top = 30
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 0
    end
  end
end
