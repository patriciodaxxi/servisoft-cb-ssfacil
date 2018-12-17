object fPrevVendas: TfPrevVendas
  Left = 337
  Top = 207
  Width = 436
  Height = 151
  BorderIcons = [biSystemMenu]
  Caption = 'fPrevVendas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 34
    Width = 44
    Height = 13
    Alignment = taRightJustify
    Caption = 'Dt.Inicial:'
  end
  object Label2: TLabel
    Left = 240
    Top = 34
    Width = 25
    Height = 13
    Caption = 'Final:'
  end
  object DateEdit1: TDateEdit
    Left = 97
    Top = 26
    Width = 90
    Height = 21
    NumGlyphs = 2
    TabOrder = 0
  end
  object DateEdit2: TDateEdit
    Left = 268
    Top = 26
    Width = 90
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 79
    Width = 428
    Height = 41
    Align = alBottom
    TabOrder = 2
    object brCancelar: TNxButton
      Left = 205
      Top = 5
      Width = 187
      Height = 30
      Caption = 'Ca&ncelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 1
      TabStop = False
      Transparent = True
      OnClick = brCancelarClick
    end
    object btConfirmar: TNxButton
      Left = 18
      Top = 5
      Width = 187
      Height = 30
      Caption = 'Im&primir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 0
      Transparent = True
      OnClick = btConfirmarClick
    end
  end
end
