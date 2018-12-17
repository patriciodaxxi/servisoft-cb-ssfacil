object frmSenha: TfrmSenha
  Left = 487
  Top = 296
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Senha'
  ClientHeight = 133
  ClientWidth = 275
  Color = clSilver
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 80
    Width = 41
    Height = 13
    Caption = 'Senha:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 67
    Top = 72
    Width = 166
    Height = 21
    PasswordChar = '*'
    TabOrder = 0
    OnKeyDown = Edit1KeyDown
  end
  object btnConfirmar: TBitBtn
    Left = 76
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnConfirmarClick
  end
  object btnCancelar: TBitBtn
    Left = 151
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnCancelarClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 275
    Height = 65
    Align = alTop
    Color = clSilver
    TabOrder = 3
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 32
      Height = 13
      Caption = 'Label2'
    end
    object Label3: TLabel
      Left = 8
      Top = 26
      Width = 32
      Height = 13
      Caption = 'Label3'
    end
    object Label4: TLabel
      Left = 8
      Top = 46
      Width = 32
      Height = 13
      Caption = 'Label4'
    end
  end
end
