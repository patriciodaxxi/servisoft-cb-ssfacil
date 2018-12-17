object fSel_CorTamanho: TfSel_CorTamanho
  Left = 331
  Top = 218
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'fSel_CorTamanho'
  ClientHeight = 126
  ClientWidth = 568
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 24
    Width = 96
    Height = 16
    Alignment = taRightJustify
    Caption = 'Selecione a Cor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 48
    Width = 128
    Height = 16
    Alignment = taRightJustify
    Caption = 'Selecione o Tamanho:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 85
    Width = 568
    Height = 41
    Align = alBottom
    Color = clMoneyGreen
    TabOrder = 2
    object btConfirmar: TNxButton
      Left = 134
      Top = 5
      Width = 150
      Height = 30
      Caption = '&Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 0
      Transparent = True
      OnClick = btConfirmarClick
    end
    object brCancelar: TNxButton
      Left = 284
      Top = 5
      Width = 150
      Height = 30
      Caption = 'Ca&ncelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 1
      TabStop = False
      Transparent = True
      OnClick = brCancelarClick
    end
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 156
    Top = 16
    Width = 361
    Height = 23
    DropDownCount = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    LookupField = 'ITEM'
    LookupDisplay = 'NOME'
    LookupSource = dmCupomFiscal.dsCombinacao
    ParentFont = False
    TabOrder = 0
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 156
    Top = 40
    Width = 145
    Height = 23
    DropDownCount = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    LookupField = 'TAMANHO'
    LookupDisplay = 'TAMANHO'
    LookupSource = dmCupomFiscal.dsTamanho
    ParentFont = False
    TabOrder = 1
  end
end
