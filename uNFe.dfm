object fNFe: TfNFe
  Left = 298
  Top = 9
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'NFe'
  ClientHeight = 649
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
  object Label5: TLabel
    Left = 10
    Top = 10
    Width = 133
    Height = 13
    Caption = 'Endere'#231'o do Arquivo Texto:'
  end
  object Label1: TLabel
    Left = 31
    Top = 32
    Width = 112
    Height = 13
    Caption = 'Forma de Emiss'#227'o NFe:'
  end
  object Label2: TLabel
    Left = 96
    Top = 54
    Width = 47
    Height = 13
    Caption = 'Ambiente:'
  end
  object Label3: TLabel
    Left = 92
    Top = 76
    Width = 51
    Height = 13
    Caption = 'Finalidade:'
  end
  object Label4: TLabel
    Left = 39
    Top = 99
    Width = 104
    Height = 13
    Caption = 'Processo de Emiss'#227'o:'
  end
  object Label9: TLabel
    Left = 60
    Top = 121
    Width = 83
    Height = 13
    Caption = 'Tipo de Gera'#231#227'o:'
  end
  object Label15: TLabel
    Left = 316
    Top = 33
    Width = 131
    Height = 13
    Caption = 'Tipo de arquivo para Envio:'
    Visible = False
  end
  object lbErro: TLabel
    Left = 345
    Top = 131
    Width = 368
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
  object Image1: TImage
    Left = 184
    Top = 144
    Width = 105
    Height = 105
  end
  object DirectoryEdit1: TDirectoryEdit
    Left = 147
    Top = 2
    Width = 293
    Height = 21
    InitialDir = 'C:\'
    MultipleDirs = True
    NumGlyphs = 1
    TabOrder = 0
    Text = 'C:\'
  end
  object ComboBox1: TComboBox
    Left = 147
    Top = 24
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 1
    Items.Strings = (
      '1- Normal'
      '2- Conting'#234'ncia FS-IA'
      '3- Conting'#234'ncia SCAN'
      '5- Conting'#234'ncia FS-DA')
  end
  object ComboBox2: TComboBox
    Left = 147
    Top = 46
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 1
    TabOrder = 2
    Text = 'Homologa'#231#227'o'
    Items.Strings = (
      'Produ'#231#227'o'
      'Homologa'#231#227'o')
  end
  object ComboBox3: TComboBox
    Left = 147
    Top = 68
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 3
    Items.Strings = (
      'NFe Normal'
      'NFe Complementar'
      'NFe de Ajuste'
      'NFe de Devolu'#231#227'o / Retorno')
  end
  object ComboBox4: TComboBox
    Left = 147
    Top = 90
    Width = 293
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 4
    Text = '0- Emiss'#227'o de NFe com aplicativo do contribuinte'
    Items.Strings = (
      '0- Emiss'#227'o de NFe com aplicativo do contribuinte'
      '1- Emiss'#227'o de NFe avulsa pelo fisco'
      
        '2- Emiss'#227'o de NFe avulsa, pelo contribuinte com seu certificado ' +
        'digital atrav'#233's do site do Fisco'
      
        '3- Emiss'#227'o NFe pelo contribuinte com aplicativo fornecido pelo F' +
        'isco')
  end
  object ComboBox5: TComboBox
    Left = 147
    Top = 112
    Width = 197
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 5
    Text = 'Gera direto (Envio)'
    OnClick = ComboBox5Click
    Items.Strings = (
      'Gera direto (Envio)'
      'Gera em arquivo texto'
      'Reenvio para valida'#231#227'o'
      'Reenvio do XML para o cliente')
  end
  object CheckBox1: TCheckBox
    Left = 464
    Top = 49
    Width = 97
    Height = 17
    Caption = 'Vers'#227'o Antiga'
    TabOrder = 6
    Visible = False
  end
  object CheckBox2: TCheckBox
    Left = 464
    Top = 63
    Width = 145
    Height = 17
    Caption = 'Enviar I18 (Importa'#231#227'o)'
    Checked = True
    State = cbChecked
    TabOrder = 7
    Visible = False
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 173
    Width = 724
    Height = 476
    ActivePage = tsEnvio
    Align = alBottom
    TabIndex = 0
    TabOrder = 8
    FixedDimension = 19
    object tsEnvio: TRzTabSheet
      Caption = 'Controle de Envio'
      DesignSize = (
        720
        453)
      object Label12: TLabel
        Left = 2
        Top = 345
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
        object btEnviarAnt: TButton
          Left = 534
          Top = 38
          Width = 89
          Height = 25
          Caption = '&Enviar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Visible = False
          OnClick = btEnviarAntClick
        end
        object btDanfe: TButton
          Left = 622
          Top = 38
          Width = 89
          Height = 25
          Caption = '&DANFE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btDanfeClick
        end
        object btEnviarNovo: TButton
          Left = 534
          Top = 7
          Width = 89
          Height = 25
          Caption = 'Enviar Novo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = btEnviarNovoClick
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
        Top = 432
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
        Top = 264
        Width = 720
        Height = 151
        Align = alTop
        Caption = ' Outras Op'#231#245'es '
        TabOrder = 3
        object Label13: TLabel
          Left = 71
          Top = 110
          Width = 57
          Height = 13
          Caption = 'Chave NFe:'
        end
        object Label17: TLabel
          Left = 8
          Top = 130
          Width = 120
          Height = 13
          Caption = 'C'#243'd.Barras Conting'#234'ncia:'
        end
        object btGerarChave: TButton
          Left = 9
          Top = 43
          Width = 120
          Height = 25
          Caption = 'Gera Chave NFe'
          TabOrder = 0
          OnClick = btGerarChaveClick
        end
        object Button6: TButton
          Left = 129
          Top = 43
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
          Top = 43
          Width = 120
          Height = 25
          Caption = 'Consultar NFe'
          TabOrder = 2
          OnClick = Button7Click
        end
        object btGravaNota: TButton
          Left = 369
          Top = 43
          Width = 120
          Height = 25
          Caption = 'Grava Chave na Nota'
          TabOrder = 3
          OnClick = btGravaNotaClick
        end
        object Button8: TButton
          Left = 9
          Top = 68
          Width = 120
          Height = 25
          Caption = 'Converter XML'
          TabOrder = 4
          OnClick = Button8Click
        end
        object edChaveNfe: TEdit
          Left = 131
          Top = 104
          Width = 480
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
        end
        object edCodBarras: TEdit
          Left = 131
          Top = 124
          Width = 480
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 6
        end
        object Button2: TButton
          Left = 9
          Top = 16
          Width = 120
          Height = 25
          Caption = 'Verifica WebService'
          TabOrder = 7
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 129
          Top = 16
          Width = 120
          Height = 25
          Caption = 'Verifica Contingencia'
          TabOrder = 8
          OnClick = Button3Click
        end
        object btConexao: TButton
          Left = 249
          Top = 16
          Width = 120
          Height = 25
          Caption = 'Verificar Internet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnClick = btConexaoClick
        end
        object btBuscarStatus: TButton
          Left = 489
          Top = 16
          Width = 120
          Height = 25
          Caption = 'Buscar Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          OnClick = btBuscarStatusClick
        end
        object btnInfHora: TButton
          Left = 369
          Top = 16
          Width = 120
          Height = 25
          Caption = 'Informar a Hora'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          OnClick = btnInfHoraClick
        end
        object btnBuscarXML: TButton
          Left = 490
          Top = 43
          Width = 120
          Height = 25
          Caption = 'Busca/Envia XML'
          TabOrder = 12
          OnClick = btnBuscarXMLClick
        end
        object btnAjustaRec: TButton
          Left = 490
          Top = 68
          Width = 120
          Height = 25
          Caption = 'Atualizar Recibo'
          TabOrder = 13
          OnClick = btnAjustaRecClick
        end
        object btnLog: TButton
          Left = 370
          Top = 68
          Width = 120
          Height = 25
          Caption = 'Log'
          TabOrder = 14
          OnClick = btnLogClick
        end
        object btnLimpaXML_Assinado_Proc: TButton
          Left = 128
          Top = 68
          Width = 242
          Height = 25
          Caption = 'Limpa XML_ASSINADO_PROC'
          TabOrder = 15
          Visible = False
          OnClick = btnLimpaXML_Assinado_ProcClick
        end
        object btnRegravarDanfe: TButton
          Left = 610
          Top = 68
          Width = 102
          Height = 25
          Caption = 'Regravar Danfe'
          TabOrder = 16
          OnClick = btnRegravarDanfeClick
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
      object GroupBox6: TGroupBox
        Left = 0
        Top = 216
        Width = 720
        Height = 48
        Align = alTop
        Caption = 'Carta Corre'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        object Label18: TLabel
          Left = 9
          Top = 16
          Width = 87
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nro. Protocolo:'
        end
        object lbNroProtocoloCCe: TLabel
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
        object btCCe: TBitBtn
          Left = 568
          Top = 16
          Width = 145
          Height = 25
          Caption = 'Carta Corre'#231#227'o'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btCCeClick
        end
      end
    end
    object tsConfig: TRzTabSheet
      Caption = 'Configura'#231#227'o'
      object ckAnexarDanfe: TCheckBox
        Left = 264
        Top = 24
        Width = 97
        Height = 17
        Caption = 'Anexar Danfe'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object ckFilialNao: TCheckBox
        Left = 264
        Top = 56
        Width = 249
        Height = 17
        Caption = 'N'#227'o Possui Filial na Chave da Nota Fiscal'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object GroupBox7: TGroupBox
        Left = 32
        Top = 8
        Width = 209
        Height = 169
        Caption = ' Tipos de Email '
        TabOrder = 2
        object ckUsarOutlook: TCheckBox
          Left = 16
          Top = 24
          Width = 97
          Height = 17
          Caption = 'Usar Outlook'
          TabOrder = 0
        end
        object ckUsarPadrao: TCheckBox
          Left = 16
          Top = 48
          Width = 97
          Height = 17
          Caption = 'Usar Padr'#227'o'
          TabOrder = 1
        end
        object ckUsarJv: TCheckBox
          Left = 16
          Top = 72
          Width = 97
          Height = 17
          Caption = 'Usar JV Mail'
          TabOrder = 2
        end
        object ckUsarOutlookOLE: TCheckBox
          Left = 16
          Top = 96
          Width = 121
          Height = 17
          Caption = 'Usar Outlook (OLE)'
          TabOrder = 3
        end
        object ckEmailConfigurado: TCheckBox
          Left = 16
          Top = 120
          Width = 121
          Height = 17
          Caption = 'Usar NFeConfig'
          TabOrder = 4
        end
      end
    end
    object TabSheet1: TRzTabSheet
      Caption = 'XML'
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 720
        Height = 453
        Align = alClient
        Lines.Strings = (
          'Memo1')
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object cbConvTxtXml: TComboBox
    Left = 451
    Top = 25
    Width = 94
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 9
    Text = 'TXT'
    Visible = False
    Items.Strings = (
      'TXT'
      'XML')
  end
  object CheckBox3: TCheckBox
    Left = 480
    Top = 96
    Width = 121
    Height = 17
    Caption = 'Usar Enviar Novo'
    TabOrder = 10
    Visible = False
    OnClick = CheckBox3Click
  end
  object ComboBox6: TComboBox
    Left = 451
    Top = 1
    Width = 230
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 11
    Text = 'Danfe - Pelo NFeBD'
    Items.Strings = (
      'Danfe - Pelo NFeBD'
      'Danfe - Pelo XML (montar)'
      'Danfe - Pelo XML (gravado na pasta)')
  end
  object Button4: TButton
    Left = 632
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Button4'
    TabOrder = 12
    Visible = False
    OnClick = Button4Click
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
  object RzSendMessage1: TRzSendMessage
    Left = 288
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
  object JvMail1: TJvMail
    BlindCopy = <>
    CarbonCopy = <>
    Recipient = <>
    Left = 264
    Top = 201
  end
  object UCControls1: TUCControls
    GroupName = 'NFe Envio'
    UserControl = fMenu.UserControl1
    NotAllowed = naInvisible
    Left = 416
    Top = 160
  end
end
