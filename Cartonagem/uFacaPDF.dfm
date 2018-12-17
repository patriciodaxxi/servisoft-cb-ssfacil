object fFacaPdf: TfFacaPdf
  Left = 356
  Top = 124
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'fFacaPdf'
  ClientHeight = 84
  ClientWidth = 632
  Color = clBtnFace
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 632
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 16
      Width = 39
      Height = 13
      Caption = 'Arquivo:'
    end
    object BitBtn1: TBitBtn
      Left = 80
      Top = 32
      Width = 100
      Height = 25
      Caption = 'Gravar / Visualizar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object FilenameEdit1: TFilenameEdit
      Left = 80
      Top = 8
      Width = 521
      Height = 21
      Filter = 'Arquivos PDF|*.pdf|Todos os arquivos|*.*'
      NumGlyphs = 1
      TabOrder = 1
    end
  end
end
