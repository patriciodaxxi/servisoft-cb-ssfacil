object frmAprovacao_Ped_Item2: TfrmAprovacao_Ped_Item2
  Left = 399
  Top = 188
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmAprovacao_Ped_Item2'
  ClientHeight = 135
  ClientWidth = 621
  Color = 11796403
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
    Left = 26
    Top = 60
    Width = 35
    Height = 14
    Caption = 'Data:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 15
    Top = 82
    Width = 46
    Height = 14
    Caption = 'Motivo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Labe5: TLabel
    Left = 264
    Top = 11
    Width = 58
    Height = 13
    Alignment = taRightJustify
    Caption = 'Funcion'#225'rio:'
  end
  object Label6: TLabel
    Left = 283
    Top = 27
    Width = 39
    Height = 13
    Alignment = taRightJustify
    Caption = 'Usu'#225'rio:'
  end
  object lblFuncionario: TLabel
    Left = 325
    Top = 11
    Width = 58
    Height = 13
    Caption = 'Funcion'#225'rio:'
  end
  object lblUsuario: TLabel
    Left = 325
    Top = 27
    Width = 39
    Height = 13
    Caption = 'Usu'#225'rio:'
  end
  object RadioGroup1: TRadioGroup
    Left = 3
    Top = 4
    Width = 243
    Height = 40
    Caption = ' Op'#231#227'o '
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    Items.Strings = (
      'Aprovar'
      'N'#227'o Aprovar')
    ParentFont = False
    TabOrder = 0
    OnClick = RadioGroup1Click
  end
  object DateEdit1: TDateEdit
    Left = 65
    Top = 52
    Width = 104
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 65
    Top = 75
    Width = 538
    Height = 21
    TabStop = False
    Color = clSilver
    MaxLength = 250
    ReadOnly = True
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 101
    Width = 621
    Height = 34
    Align = alBottom
    Color = clSilver
    TabOrder = 3
    object NxButton1: TNxButton
      Left = 206
      Top = 5
      Width = 92
      Height = 26
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = NxButton1Click
    end
    object NxButton2: TNxButton
      Left = 296
      Top = 5
      Width = 92
      Height = 26
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = NxButton2Click
    end
  end
end
