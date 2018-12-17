object Form1: TForm1
  Left = 192
  Top = 107
  BorderStyle = bsDialog
  Caption = 'Form1'
  ClientHeight = 426
  ClientWidth = 570
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 44
    Width = 39
    Height = 13
    Caption = 'client_id'
  end
  object Label2: TLabel
    Left = 200
    Top = 45
    Width = 60
    Height = 13
    Caption = 'client_secret'
  end
  object Label3: TLabel
    Left = 16
    Top = 76
    Width = 67
    Height = 13
    Caption = 'access_token'
  end
  object Label4: TLabel
    Left = 15
    Top = 4
    Width = 292
    Height = 29
    Caption = '1 - Obter o access_token'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 15
    Top = 124
    Width = 509
    Height = 29
    Caption = '2 - Use as funcionalidades da API Directcall'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object client_id: TEdit
    Left = 64
    Top = 41
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'adriano@jwmetais.com.br'
  end
  object client_secret: TEdit
    Left = 270
    Top = 42
    Width = 147
    Height = 21
    TabOrder = 1
    Text = '6163730'
  end
  object access_token: TEdit
    Left = 88
    Top = 72
    Width = 457
    Height = 21
    TabOrder = 2
  end
  object request_token: TButton
    Left = 432
    Top = 42
    Width = 113
    Height = 25
    Caption = 'request_token'
    TabOrder = 3
    OnClick = request_tokenClick
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 168
    Width = 529
    Height = 129
    Caption = 'Enviar Mensage'
    TabOrder = 4
    object Label6: TLabel
      Left = 256
      Top = 26
      Width = 17
      Height = 13
      Caption = 'De:'
    end
    object d: TLabel
      Left = 256
      Top = 74
      Width = 25
      Height = 13
      Caption = 'Para:'
    end
    object sms: TMemo
      Left = 16
      Top = 24
      Width = 233
      Height = 89
      Lines.Strings = (
        'Teste da API Directcall')
      TabOrder = 0
    end
    object enviar_sms: TButton
      Left = 408
      Top = 56
      Width = 105
      Height = 25
      Caption = 'Enviar como SMS'
      TabOrder = 1
      OnClick = enviar_smsClick
    end
    object enviar_voz: TButton
      Left = 408
      Top = 88
      Width = 105
      Height = 25
      Caption = 'Enviar como VOZ'
      TabOrder = 2
    end
    object de_sms: TEdit
      Left = 256
      Top = 43
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object para_sms: TEdit
      Left = 256
      Top = 92
      Width = 121
      Height = 21
      TabOrder = 4
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 320
    Width = 529
    Height = 65
    Caption = 'Realizar chamadas'
    TabOrder = 5
    object Label7: TLabel
      Left = 16
      Top = 32
      Width = 36
      Height = 13
      Caption = 'Origem:'
    end
    object Label8: TLabel
      Left = 198
      Top = 32
      Width = 39
      Height = 13
      Caption = 'Destino:'
    end
    object origem: TEdit
      Left = 60
      Top = 29
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object destino: TEdit
      Left = 241
      Top = 29
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object chamar: TButton
      Left = 376
      Top = 27
      Width = 137
      Height = 25
      Caption = 'Realizar Chamada'
      TabOrder = 2
      OnClick = chamarClick
    end
  end
  object IdHTTP: TIdHTTP
    MaxLineAction = maException
    ReadTimeout = 0
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 448
  end
end
