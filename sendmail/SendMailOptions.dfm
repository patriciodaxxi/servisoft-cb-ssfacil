object FormSendMailOptions: TFormSendMailOptions
  Left = 373
  Top = 162
  Width = 512
  Height = 465
  ActiveControl = EditDestinatarios
  Caption = 'Enviar relat'#243'rio via E-mail'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelOpcoes: TPanel
    Left = 0
    Top = 0
    Width = 496
    Height = 386
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 8
      Width = 70
      Height = 13
      Caption = 'Destinat'#225'rio(s):'
    end
    object Label2: TLabel
      Left = 12
      Top = 48
      Width = 244
      Height = 13
      Caption = 'Separe v'#225'rios destinat'#225'rios com ponto-e-v'#237'rgula ";".'
    end
    object Label3: TLabel
      Left = 11
      Top = 68
      Width = 84
      Height = 13
      Caption = 'Linha de assunto:'
    end
    object Label4: TLabel
      Left = 16
      Top = 240
      Width = 31
      Height = 13
      Caption = 'Corpo:'
    end
    object GroupBoxFormato: TGroupBox
      Left = 12
      Top = 112
      Width = 224
      Height = 89
      Caption = ' Escolha o formato do relat'#243'rio: '
      TabOrder = 2
      object RadioButtonEXE: TRadioButton
        Left = 8
        Top = 16
        Width = 198
        Height = 17
        Caption = 'Auto-imprim'#237'vel'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RadioButtonPDF: TRadioButton
        Left = 8
        Top = 32
        Width = 197
        Height = 17
        Caption = 'Documento PDF (Acrobat Reader)'
        TabOrder = 1
      end
      object RadioButtonRTF: TRadioButton
        Left = 8
        Top = 48
        Width = 205
        Height = 17
        Caption = 'Formato RichText (Word e OpenOffice)'
        TabOrder = 2
      end
      object RadioButtonHTM: TRadioButton
        Left = 8
        Top = 64
        Width = 198
        Height = 17
        Caption = 'P'#225'gina Web (HTML)'
        TabOrder = 3
      end
    end
    object EditDestinatarios: TEdit
      Left = 11
      Top = 24
      Width = 370
      Height = 21
      TabOrder = 0
    end
    object EditAssunto: TEdit
      Left = 11
      Top = 84
      Width = 370
      Height = 21
      TabOrder = 1
    end
    object CheckBoxAbrir: TCheckBox
      Left = 12
      Top = 212
      Width = 301
      Height = 17
      Caption = 'Abrir a mensagem para configurar outras op'#231#245'es'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object RadioGroup1: TRadioGroup
      Left = 252
      Top = 112
      Width = 101
      Height = 89
      Caption = ' Tipo de Email '
      ItemIndex = 0
      Items.Strings = (
        'Padr'#227'o'
        'Outlook'
        'Outlook (OLE)'
        'Email Direto')
      TabOrder = 4
    end
    object Memo1: TMemo
      Left = 52
      Top = 241
      Width = 417
      Height = 137
      ScrollBars = ssVertical
      TabOrder = 5
    end
  end
  object PanelSubmit: TPanel
    Left = 0
    Top = 386
    Width = 496
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      496
      41)
    object BitBtnEnviar: TBitBtn
      Left = 323
      Top = 4
      Width = 82
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Enviar'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtnEnviarClick
      NumGlyphs = 2
      Style = bsNew
    end
    object BitBtnCancelar: TBitBtn
      Left = 411
      Top = 4
      Width = 82
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtnCancelarClick
      Style = bsNew
    end
  end
end
