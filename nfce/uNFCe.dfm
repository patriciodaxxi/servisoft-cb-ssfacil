object fNFCe: TfNFCe
  Left = 248
  Top = 93
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cupom Eletr'#244'nica'
  ClientHeight = 496
  ClientWidth = 724
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
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 31
    Top = 11
    Width = 112
    Height = 13
    Caption = 'Forma de Emiss'#227'o NFe:'
  end
  object Label2: TLabel
    Left = 96
    Top = 33
    Width = 47
    Height = 13
    Caption = 'Ambiente:'
  end
  object lbErro: TLabel
    Left = 9
    Top = 51
    Width = 584
    Height = 23
    AutoSize = False
    Caption = 'Nota Denegada - Irregularidade Destinat'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label3: TLabel
    Left = 524
    Top = 33
    Width = 32
    Height = 13
    Caption = 'Danfe:'
  end
  object ComboBox1: TComboBox
    Left = 147
    Top = 3
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 0
    Text = '1- Normal'
    Items.Strings = (
      '1- Normal'
      
        '5- Contig'#234'ncia FS-DA, com impress'#227'o do Danfe em formul'#225'rio de se' +
        'guran'#231'a'
      '9- Contig'#234'ncia off-line')
  end
  object ComboBox2: TComboBox
    Left = 147
    Top = 25
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 1
    TabOrder = 1
    Text = 'Homologa'#231#227'o'
    Items.Strings = (
      'Produ'#231#227'o'
      'Homologa'#231#227'o')
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 81
    Width = 724
    Height = 415
    ActivePage = tsEnvio
    Align = alBottom
    TabIndex = 0
    TabOrder = 2
    FixedDimension = 19
    object tsEnvio: TRzTabSheet
      Caption = 'Controle de Envio'
      DesignSize = (
        720
        392)
      object Label12: TLabel
        Left = 4
        Top = 353
        Width = 228
        Height = 13
        Caption = 'Endere'#231'o de grava'#231#227'o do arquivo (XML / TXT):'
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 720
        Height = 72
        Align = alTop
        Caption = 'Envio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label6: TLabel
          Left = 51
          Top = 14
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Caption = 'Recibo:'
        end
        object Label7: TLabel
          Left = 9
          Top = 30
          Width = 87
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nro. Protocolo:'
        end
        object Label8: TLabel
          Left = 10
          Top = 46
          Width = 86
          Height = 13
          Alignment = taRightJustify
          Caption = 'Chave Acesso:'
        end
        object lbRecibo: TLabel
          Left = 98
          Top = 14
          Width = 352
          Height = 13
          AutoSize = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lbNroProtocolo: TLabel
          Left = 98
          Top = 30
          Width = 352
          Height = 13
          AutoSize = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lbChaveAcesso: TLabel
          Left = 98
          Top = 46
          Width = 352
          Height = 13
          AutoSize = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object btDanfe: TButton
          Left = 623
          Top = 39
          Width = 89
          Height = 25
          Caption = '&DANFE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btDanfeClick
        end
        object btEnviarNovo: TButton
          Left = 532
          Top = 39
          Width = 89
          Height = 25
          Caption = 'Enviar Novo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = btEnviarNovoClick
        end
        object btEnviarSincrono: TButton
          Left = 533
          Top = 8
          Width = 176
          Height = 25
          Caption = 'Enviar S'#237'ncrono'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = btEnviarSincronoClick
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 120
        Width = 720
        Height = 48
        Align = alTop
        Caption = 'Cancelamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label10: TLabel
          Left = 9
          Top = 16
          Width = 87
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nro. Protocolo:'
        end
        object lbNroProtocoloCancelamento: TLabel
          Left = 100
          Top = 14
          Width = 413
          Height = 13
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object btCancelar: TBitBtn
          Left = 568
          Top = 16
          Width = 145
          Height = 25
          Caption = 'Cancelar Nota'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btCancelarClick
        end
      end
      object Edit1: TEdit
        Left = -1
        Top = 371
        Width = 714
        Height = 21
        TabStop = False
        Anchors = [akLeft, akBottom]
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 2
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 216
        Width = 720
        Height = 131
        Align = alTop
        Caption = ' Outras Op'#231#245'es '
        TabOrder = 3
        object Label13: TLabel
          Left = 71
          Top = 94
          Width = 57
          Height = 13
          Caption = 'Chave NFe:'
        end
        object Label17: TLabel
          Left = 8
          Top = 114
          Width = 120
          Height = 13
          Caption = 'C'#243'd.Barras Conting'#234'ncia:'
        end
        object btGerarChave: TButton
          Left = 9
          Top = 49
          Width = 120
          Height = 25
          Caption = 'Gera Chave NFe'
          TabOrder = 0
          OnClick = btGerarChaveClick
        end
        object Button6: TButton
          Left = 129
          Top = 49
          Width = 120
          Height = 25
          Hint = 
            'Gera o c'#243'digo de barras adicional para emiss'#227'o da Danfe em conti' +
            'ng'#234'ncia'
          Caption = 'Gera C'#243'd. Barras'
          TabOrder = 1
          OnClick = Button6Click
        end
        object Button7: TButton
          Left = 249
          Top = 49
          Width = 120
          Height = 25
          Caption = 'Consultar NFe'
          TabOrder = 2
          OnClick = Button7Click
        end
        object btGravaNota: TButton
          Left = 369
          Top = 49
          Width = 120
          Height = 25
          Caption = 'Grava Chave na Nota'
          TabOrder = 3
          OnClick = btGravaNotaClick
        end
        object edChaveNfe: TEdit
          Left = 131
          Top = 88
          Width = 480
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
        end
        object edCodBarras: TEdit
          Left = 131
          Top = 108
          Width = 480
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
        end
        object Button2: TButton
          Left = 9
          Top = 22
          Width = 120
          Height = 25
          Caption = 'Verifica WebService'
          TabOrder = 6
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 129
          Top = 22
          Width = 120
          Height = 25
          Caption = 'Verifica Contingencia'
          TabOrder = 7
          OnClick = Button3Click
        end
        object btConexao: TButton
          Left = 249
          Top = 22
          Width = 120
          Height = 25
          Caption = 'Verificar Internet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnClick = btConexaoClick
        end
        object btBuscarStatus: TButton
          Left = 369
          Top = 22
          Width = 120
          Height = 25
          Caption = 'Buscar Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnClick = btBuscarStatusClick
        end
        object btnAjustaRec: TButton
          Left = 594
          Top = 49
          Width = 118
          Height = 25
          Caption = 'Atualizar Recibo'
          TabOrder = 10
          OnClick = btnAjustaRecClick
        end
        object btnLog: TButton
          Left = 490
          Top = 49
          Width = 101
          Height = 25
          Caption = 'Log'
          TabOrder = 11
          OnClick = btnLogClick
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 168
        Width = 720
        Height = 48
        Align = alTop
        Caption = 'Inutilizar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object Label16: TLabel
          Left = 9
          Top = 16
          Width = 87
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nro. Protocolo:'
        end
        object lbNroProtocoloInutil: TLabel
          Left = 100
          Top = 14
          Width = 413
          Height = 13
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object btInutilizar: TBitBtn
          Left = 568
          Top = 16
          Width = 145
          Height = 25
          Caption = 'Inutilizar'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btInutilizarClick
        end
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 72
        Width = 720
        Height = 48
        Align = alTop
        Caption = 'Conting'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object Label11: TLabel
          Left = 10
          Top = 16
          Width = 123
          Height = 13
          Alignment = taRightJustify
          Caption = 'C'#243'd.Barras Adicional:'
        end
        object lbCodBarraContingencia: TLabel
          Left = 138
          Top = 16
          Width = 382
          Height = 13
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object btContingencia: TBitBtn
          Left = 568
          Top = 16
          Width = 145
          Height = 25
          Caption = 'Gerar Conting'#234'ncia'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btContingenciaClick
        end
      end
    end
    object TabSheet1: TRzTabSheet
      Caption = 'XML'
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 720
        Height = 392
        Align = alClient
        Lines.Strings = (
          'Memo1')
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object ComboBox6: TComboBox
    Left = 451
    Top = 3
    Width = 230
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 3
    Text = 'Danfe - Pelo NFeBD'
    Items.Strings = (
      'Danfe - Pelo NFeBD'
      'Danfe - Pelo XML (montar)'
      'Danfe - Pelo XML (gravado na pasta)')
  end
  object ComboBox3: TComboBox
    Left = 560
    Top = 25
    Width = 121
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 4
    Text = 'Imprimir Direto'
    Items.Strings = (
      'Imprimir Direto'
      'Imprimir na tela')
  end
  object CheckBox1: TCheckBox
    Left = 451
    Top = 29
    Width = 56
    Height = 17
    Caption = 'Teste'
    TabOrder = 5
    Visible = False
    OnClick = CheckBox1Click
  end
  object XMLDocument1: TXMLDocument
    Left = 32
    Top = 64
    DOMVendorDesc = 'MSXML'
  end
  object TCPClient: TIdTCPClient
    IOHandler = IOHandlerSocket
    MaxLineAction = maException
    ReadTimeout = 0
    Host = 'localhost'
    Port = 7001
    Left = 320
    Top = 201
  end
  object IOHandlerSocket: TIdIOHandlerSocket
    Left = 352
    Top = 201
  end
  object OpenDialog: TOpenDialog
    Filter = 'Arquivo XML|*.xml'
    Title = 'Selecione o arquivo xml para converter'
    Left = 384
    Top = 201
  end
  object MailMessage: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    Recipients = <>
    ReplyTo = <>
    Left = 416
    Top = 203
  end
  object SMTP: TIdSMTP
    IOHandler = IdSSLIOHandlerSocket1
    MaxLineAction = maException
    ReadTimeout = 1000
    Port = 25
    AuthenticationType = atLogin
    Left = 448
    Top = 203
  end
  object AttachmentDialog: TOpenDialog
    Options = [ofReadOnly, ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 361
    Top = 348
  end
  object IdSSLIOHandlerSocket1: TIdSSLIOHandlerSocket
    SSLOptions.Method = sslvSSLv2
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 481
    Top = 203
  end
  object UCControls1: TUCControls
    GroupName = 'NFe Envio'
    UserControl = fMenu.UserControl1
    NotAllowed = naInvisible
    Left = 416
    Top = 160
  end
end
