object frmMostraPDF: TfrmMostraPDF
  Left = 158
  Top = 57
  Width = 1078
  Height = 551
  Caption = 'frmMostraPDF'
  Color = clBtnFace
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
  object pnlImagem: TPanel
    Left = 0
    Top = 65
    Width = 1062
    Height = 447
    Align = alClient
    TabOrder = 0
    object ScrollBox1: TScrollBox
      Left = 1
      Top = 1
      Width = 1060
      Height = 445
      Align = alClient
      TabOrder = 0
      object Image: TImage
        Left = 8
        Top = 2
        Width = 209
        Height = 279
        AutoSize = True
        Center = True
        Stretch = True
      end
    end
  end
  object pnlControler: TPanel
    Left = 0
    Top = 0
    Width = 1062
    Height = 65
    Align = alTop
    TabOrder = 1
    object lblCount: TLabel
      Left = 595
      Top = 28
      Width = 9
      Height = 13
      Caption = '   '
    end
    object Label1: TLabel
      Left = 32
      Top = 24
      Width = 83
      Height = 13
      Caption = 'Caminho Arquivo:'
    end
    object btnPrev: TButton
      Left = 524
      Top = 20
      Width = 29
      Height = 21
      Hint = 'Previous page'
      Caption = '<'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnPrevClick
    end
    object edPage: TEdit
      Left = 556
      Top = 20
      Width = 35
      Height = 21
      Hint = 'Current page'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Text = '1'
    end
    object btnNext: TButton
      Left = 612
      Top = 20
      Width = 29
      Height = 21
      Hint = 'Next page'
      Caption = '>'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnNextClick
    end
    object edtCaminhoPDF: TEdit
      Left = 120
      Top = 16
      Width = 369
      Height = 21
      TabOrder = 3
    end
    object btnZoomIn: TButton
      Left = 652
      Top = 20
      Width = 29
      Height = 21
      Hint = 'Zoom in'
      Caption = '+'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btnZoomInClick
    end
    object btnZoomOut: TButton
      Left = 684
      Top = 20
      Width = 29
      Height = 21
      Hint = 'Zoom out'
      Caption = '-'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnZoomOutClick
    end
    object BitBtn1: TBitBtn
      Left = 728
      Top = 16
      Width = 75
      Height = 25
      Caption = 'BitBtn1'
      TabOrder = 6
      OnClick = BitBtn1Click
    end
  end
  object frxReport1: TfrxReport
    Version = '5.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43620.596425983790000000
    ReportOptions.LastChange = 43620.615316122680000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnBeforePrint = frxReport1BeforePrint
    Left = 632
    Top = 145
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Picture1: TfrxPictureView
        Left = 3.779530000000000000
        Top = 207.874150000000000000
        Width = 706.772110000000000000
        Height = 582.047620000000000000
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
    end
  end
end
