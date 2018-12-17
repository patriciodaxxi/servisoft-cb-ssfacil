object frmProcesso_ES: TfrmProcesso_ES
  Left = 275
  Top = 140
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Ordem de Produ'#231#227'o/Lote/Tal'#227'o Controle de Entrada e Sa'#237'da'
  ClientHeight = 462
  ClientWidth = 886
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 886
    Height = 462
    Align = alClient
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 30
      Top = 98
      Width = 165
      Height = 13
      Caption = 'C'#243'd.Barra (Ordem Produ'#231#227'o/Lote):'
    end
    object Label5: TLabel
      Left = 40
      Top = 168
      Width = 673
      Height = 258
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -33
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 169
      Top = 46
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data:'
    end
    object Label7: TLabel
      Left = 356
      Top = 46
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = 'Hora:'
      Visible = False
    end
    object Label2: TLabel
      Left = 466
      Top = 33
      Width = 209
      Height = 26
      Caption = 
        'Deixar Data e Hora em branco para assumir '#13#10'a hora do sistema au' +
        'tom'#225'tico'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 196
      Top = 92
      Width = 146
      Height = 19
      Color = 16777119
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnChange = Edit1Change
      OnKeyDown = Edit1KeyDown
    end
    object DateEdit1: TDateEdit
      Left = 196
      Top = 38
      Width = 144
      Height = 21
      Ctl3D = False
      DefaultToday = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object RzDateTimeEdit1: TRzDateTimeEdit
      Left = 384
      Top = 38
      Width = 78
      Height = 21
      EditType = etTime
      BorderStyle = bsNone
      TabOrder = 1
      Visible = False
    end
  end
end
