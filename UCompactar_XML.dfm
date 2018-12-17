object frmCompactar_XML: TfrmCompactar_XML
  Left = 237
  Top = 222
  Width = 812
  Height = 177
  Caption = 'frmCompactar_XML'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 796
    Height = 97
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 56
      Top = 16
      Width = 68
      Height = 13
      Caption = 'Gerar Arquivo:'
    end
    object Label2: TLabel
      Left = 101
      Top = 40
      Width = 23
      Height = 13
      Caption = 'M'#234's:'
    end
    object Label3: TLabel
      Left = 277
      Top = 40
      Width = 22
      Height = 13
      Caption = 'Ano:'
    end
    object Label4: TLabel
      Left = 96
      Top = 80
      Width = 28
      Height = 13
      Caption = 'Email:'
    end
    object ComboBox1: TComboBox
      Left = 128
      Top = 8
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        'XML NFe'
        'PDF NFe'
        'XML NFSe'
        'XML NFCe')
    end
    object ComboBox2: TComboBox
      Left = 128
      Top = 32
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      Items.Strings = (
        'Janeiro'
        'Fevereiro'
        'Mar'#231'o'
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Outubro'
        'Novembro'
        'Dezembro')
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 304
      Top = 32
      Width = 73
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 2
    end
    object CheckBox1: TCheckBox
      Left = 128
      Top = 56
      Width = 225
      Height = 17
      Caption = 'Enviar Email ao contador:'
      Checked = True
      ParentShowHint = False
      ShowHint = False
      State = cbChecked
      TabOrder = 3
    end
    object Edit1: TEdit
      Left = 128
      Top = 72
      Width = 649
      Height = 21
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 97
    Width = 796
    Height = 41
    Align = alTop
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 128
      Top = 6
      Width = 161
      Height = 29
      Caption = 'Compactar / Enviar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object ZipMaster1: TZipMaster
    AddOptions = []
    AddStoreSuffixes = [assGIF, assPNG, assZ, assZIP, assZOO, assARC, assLZH, assARJ, assTAZ, assTGZ, assLHA, assRAR, assACE, assCAB, assGZ, assGZIP, assJAR, assJPG, assJPEG, ass7Zp, assMP3, assWMV, assWMA, assDVR, assAVI]
    ConfirmErase = False
    DLL_Load = False
    ExtrOptions = []
    KeepFreeOnAllDisks = 0
    KeepFreeOnDisk1 = 0
    LanguageID = 0
    MaxVolumeSizeKb = 0
    NoReadAux = False
    SFXOptions = []
    SFXOverwriteMode = ovrAlways
    SpanOptions = []
    Trace = False
    Unattended = False
    UseUTF8 = False
    Verbose = False
    Version = '1.9.1.0012'
    WriteOptions = []
    Left = 672
    Top = 32
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 480
    Top = 24
    object qParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametrosENDXMLNFE: TStringField
      FieldName = 'ENDXMLNFE'
      Size = 250
    end
    object qParametrosENDPDFNFE: TStringField
      FieldName = 'ENDPDFNFE'
      Size = 250
    end
    object qParametrosEMAILRESPONSAVELSISTEMA: TStringField
      FieldName = 'EMAILRESPONSAVELSISTEMA'
      Size = 200
    end
    object qParametrosEMAIL_CONTADOR: TStringField
      FieldName = 'EMAIL_CONTADOR'
      Size = 250
    end
    object qParametrosLOCALSERVIDORNFE: TStringField
      FieldName = 'LOCALSERVIDORNFE'
      Size = 100
    end
    object qParametrosENDXMLNFSE: TStringField
      FieldName = 'ENDXMLNFSE'
      Size = 250
    end
    object qParametrosUSA_ENVIO_EMAIL_CATEGORIA: TStringField
      FieldName = 'USA_ENVIO_EMAIL_CATEGORIA'
      FixedChar = True
      Size = 1
    end
    object qParametrosENDXMLNFCE: TStringField
      FieldName = 'ENDXMLNFCE'
      Size = 250
    end
  end
  object qFilial: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ID, NOME, CNPJ_CPF, PESSOA, LOCALSERVIDORNFE'
      'FROM FILIAL'
      'WHERE INATIVO = '#39'N'#39)
    SQLConnection = dmDatabase.scoDados
    Left = 552
    Top = 24
    object qFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qFilialCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object qFilialPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object qFilialLOCALSERVIDORNFE: TStringField
      FieldName = 'LOCALSERVIDORNFE'
      Size = 100
    end
  end
  object qFilial_Email: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT FE.ID ID_FILIAL, FE.id_config_email, CE.nome_config, CE.r' +
        'emetente_nome, CE.remetente_email,'
      
        'CE.smtp_cliente, CE.smtp_porta, CE.smtp_requer_ssl, CE.smtp_usua' +
        'rio, CE.smtp_senha,'
      'CE.solicitar_confirmacao, CE.base, F.cnpj_cpf CNPJ_CPF_FILIAL'
      'FROM FILIAL_EMAIL FE'
      'INNER JOIN FILIAL F'
      'ON FE.ID = F.ID'
      'INNER JOIN CONFIG_EMAIL CE'
      'ON FE.id_config_email = CE.id'
      'WHERE FE.ID = :ID'
      '   AND FE.TIPO_REG = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 608
    Top = 24
    object qFilial_EmailID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
      Required = True
    end
    object qFilial_EmailID_CONFIG_EMAIL: TIntegerField
      FieldName = 'ID_CONFIG_EMAIL'
    end
    object qFilial_EmailNOME_CONFIG: TStringField
      FieldName = 'NOME_CONFIG'
      Required = True
      Size = 40
    end
    object qFilial_EmailREMETENTE_NOME: TStringField
      FieldName = 'REMETENTE_NOME'
      Size = 100
    end
    object qFilial_EmailREMETENTE_EMAIL: TStringField
      FieldName = 'REMETENTE_EMAIL'
      Size = 150
    end
    object qFilial_EmailSMTP_CLIENTE: TStringField
      FieldName = 'SMTP_CLIENTE'
      Size = 100
    end
    object qFilial_EmailSMTP_PORTA: TIntegerField
      FieldName = 'SMTP_PORTA'
    end
    object qFilial_EmailSMTP_REQUER_SSL: TStringField
      FieldName = 'SMTP_REQUER_SSL'
      FixedChar = True
      Size = 1
    end
    object qFilial_EmailSMTP_USUARIO: TStringField
      FieldName = 'SMTP_USUARIO'
      Size = 100
    end
    object qFilial_EmailSMTP_SENHA: TStringField
      FieldName = 'SMTP_SENHA'
      Size = 100
    end
    object qFilial_EmailSOLICITAR_CONFIRMACAO: TStringField
      FieldName = 'SOLICITAR_CONFIRMACAO'
      FixedChar = True
      Size = 1
    end
    object qFilial_EmailBASE: TSmallintField
      FieldName = 'BASE'
    end
    object qFilial_EmailCNPJ_CPF_FILIAL: TStringField
      FieldName = 'CNPJ_CPF_FILIAL'
      Size = 18
    end
  end
end
