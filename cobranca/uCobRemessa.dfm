object fCobRemessa: TfCobRemessa
  Left = 148
  Top = 79
  BorderStyle = bsSingle
  Caption = 'fCobRemessa'
  ClientHeight = 493
  ClientWidth = 1086
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
    Width = 1086
    Height = 131
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object NxLabel1: TNxLabel
      Left = 14
      Top = 95
      Width = 98
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data Emiss'#227'o Inicial:'
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object NxLabel2: TNxLabel
      Left = 218
      Top = 95
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object NxLabel3: TNxLabel
      Left = 39
      Top = 10
      Width = 73
      Height = 13
      Alignment = taRightJustify
      Caption = 'Empresa (Filial):'
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object NxLabel4: TNxLabel
      Left = 453
      Top = -14
      Width = 34
      Height = 13
      Alignment = taRightJustify
      Caption = 'Banco:'
      Associate = btnEnviar_Email
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object NxLabel5: TNxLabel
      Left = 76
      Top = 73
      Width = 36
      Height = 13
      Alignment = taRightJustify
      Caption = 'T'#237'tulos:'
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object NxLabel6: TNxLabel
      Left = 57
      Top = 52
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = 'Ocorr'#234'ncia:'
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object NxLabel7: TNxLabel
      Left = 349
      Top = 73
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' T'#237'tulo:'
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object NxLabel8: TNxLabel
      Left = 79
      Top = 29
      Width = 34
      Height = 13
      Alignment = taRightJustify
      Caption = 'Banco:'
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object NxLabel9: TNxLabel
      Left = 538
      Top = 10
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'Emiss'#227'o:'
      Visible = False
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object NxLabel10: TNxLabel
      Left = 548
      Top = 31
      Width = 32
      Height = 13
      Alignment = taRightJustify
      Caption = 'Grupo:'
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object Shape1: TShape
      Left = 848
      Top = 14
      Width = 23
      Height = 14
      Brush.Color = clAqua
    end
    object Label2: TLabel
      Left = 874
      Top = 15
      Width = 123
      Height = 13
      Caption = 'T'#237'tulo com Taxa Banc'#225'ria'
    end
    object Shape2: TShape
      Left = 848
      Top = 30
      Width = 23
      Height = 14
      Brush.Color = clMoneyGreen
    end
    object Label4: TLabel
      Left = 874
      Top = 31
      Width = 153
      Height = 13
      Caption = 'T'#237'tulo com N'#250'mero de Remessa'
    end
    object Shape3: TShape
      Left = 848
      Top = 46
      Width = 23
      Height = 14
      Brush.Color = clRed
    end
    object Label5: TLabel
      Left = 874
      Top = 47
      Width = 170
      Height = 13
      Caption = 'T'#237'tulo com Nota pendente de Envio'
    end
    object NxDatePicker1: TNxDatePicker
      Left = 113
      Top = 88
      Width = 89
      Height = 21
      TabOrder = 5
      Text = '04/02/2014'
      HideFocus = False
      Date = 41674.000000000000000000
      NoneCaption = 'None'
      TodayCaption = 'Today'
    end
    object NxDatePicker2: TNxDatePicker
      Left = 249
      Top = 88
      Width = 89
      Height = 21
      TabOrder = 6
      Text = '04/02/2014'
      HideFocus = False
      Date = 41674.000000000000000000
      NoneCaption = 'None'
      TodayCaption = 'Today'
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 113
      Top = 2
      Width = 403
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      LookupField = 'ID'
      LookupDisplay = 'NOME_INTERNO'
      LookupSource = DMCob_Eletronica.dsFilial
      ParentCtl3D = False
      TabOrder = 0
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 113
      Top = 23
      Width = 403
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMCob_Eletronica.dsContas
      ParentCtl3D = False
      TabOrder = 1
      OnChange = RxDBLookupCombo2Change
      OnEnter = RxDBLookupCombo2Enter
      OnExit = RxDBLookupCombo2Exit
    end
    object ComboBox1: TComboBox
      Left = 113
      Top = 65
      Width = 225
      Height = 21
      Ctl3D = True
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 3
      Text = 'N'#195'O ENVIADOS'
      Items.Strings = (
        'N'#195'O ENVIADOS'
        'ENVIADOS'
        'TODOS')
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 113
      Top = 44
      Width = 403
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMCob_Eletronica.dsCob_Tipo_Cadastro
      ParentCtl3D = False
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 395
      Top = 65
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 4
      OnKeyDown = Edit1KeyDown
    end
    object ckReenviar: TCheckBox
      Left = 248
      Top = 109
      Width = 233
      Height = 17
      Caption = 'Reenviar t'#237'tulos com n'#250'mero de remessa'
      TabOrder = 7
    end
    object cbImpressao: TComboBox
      Left = 582
      Top = 2
      Width = 232
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 8
      Text = 'Pelo Banco'
      Visible = False
      Items.Strings = (
        'Pelo Banco'
        'Pelo Benefici'#225'rio')
    end
    object GroupBox1: TGroupBox
      Left = 632
      Top = 48
      Width = 180
      Height = 62
      Caption = ' Pr'#243'ximo n'#186' de remessa '
      TabOrder = 10
      object Label1: TLabel
        Left = 9
        Top = 22
        Width = 62
        Height = 13
        Caption = 'N'#186' Remessa:'
      end
      object Label3: TLabel
        Left = 27
        Top = 44
        Width = 44
        Height = 13
        Caption = 'Seq. Dia:'
      end
      object CurrencyEdit1: TCurrencyEdit
        Left = 72
        Top = 14
        Width = 100
        Height = 21
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '0'
        TabOrder = 0
      end
      object CurrencyEdit2: TCurrencyEdit
        Left = 72
        Top = 36
        Width = 100
        Height = 21
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '0'
        TabOrder = 1
      end
    end
    object RxDBLookupCombo4: TRxDBLookupCombo
      Left = 582
      Top = 23
      Width = 232
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMCob_Eletronica.dsGrupo_Pessoa
      ParentCtl3D = False
      TabOrder = 9
    end
    object ckVencidos: TCheckBox
      Left = 113
      Top = 110
      Width = 96
      Height = 17
      Caption = 'Exibir vencidos'
      TabOrder = 11
    end
    object Memo1: TMemo
      Left = 824
      Top = 64
      Width = 246
      Height = 66
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      Lines.Strings = (
        'Memo1')
      ParentCtl3D = False
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 12
      Visible = False
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 158
    Width = 1086
    Height = 316
    Align = alClient
    Ctl3D = False
    DataSource = DMCob_Eletronica.dsDuplicata
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentCtl3D = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
    OnTitleClick = SMDBGrid1TitleClick
    Flat = True
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 27
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 19
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FILIAL'
        Title.Alignment = taCenter
        Title.Caption = 'Filial'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_OCORRENCIA_COB'
        Title.Alignment = taCenter
        Title.Caption = 'Ocorr'#234'ncia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERIE'
        Title.Alignment = taCenter
        Title.Caption = 'S'#233'rie'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMDUPLICATA'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' T'#237'tulo'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARCELA'
        Title.Alignment = taCenter
        Title.Caption = 'Parcela'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOSSONUMERO'
        Title.Alignment = taCenter
        Title.Caption = 'Nosso N'#250'mero'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTVENCIMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Vencimento'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTEMISSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Emiss'#227'o'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_PARCELA'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr Parcela'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_GRUPO'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Grupo'
        Width = 135
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CLIENTE'
        Title.Caption = 'Nome Cliente'
        Width = 233
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CONTA'
        Title.Alignment = taCenter
        Title.Caption = 'Banco'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_REMESSA'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Remessa'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL_PGTO'
        Title.Alignment = taCenter
        Title.Caption = 'Email Cliente (Financeiro)'
        Width = 175
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CARTEIRA'
        Title.Caption = 'Nome da Carteira'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INSTRUCAO_PROTESTO'
        Title.Caption = 'Instru'#231#227'o de Protesto'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAXA_BANCO'
        Title.Caption = 'Cobrar Taxa Banc'#225'ria'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ACEITE'
        Width = 64
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 131
    Width = 1086
    Height = 27
    Align = alTop
    TabOrder = 2
    object btnLocalizar: TNxButton
      Left = 1
      Top = 1
      Width = 113
      Height = 25
      Align = alLeft
      Caption = 'Localizar Duplicatas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnLocalizarClick
    end
    object btnGerar_Remessa: TNxButton
      Left = 114
      Top = 1
      Width = 113
      Height = 25
      Align = alLeft
      Caption = 'Gerar Remessa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnGerar_RemessaClick
    end
    object btnImp_Boleto: TNxButton
      Left = 227
      Top = 1
      Width = 113
      Height = 25
      Align = alLeft
      Caption = 'Im&primir T'#237'tulos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnImp_BoletoClick
    end
    object btnImp_Remessa: TNxButton
      Left = 340
      Top = 1
      Width = 113
      Height = 25
      Align = alLeft
      Caption = 'Im&primir Remessa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnImp_RemessaClick
    end
    object btnEnviar_Email: TNxButton
      Left = 453
      Top = 1
      Width = 113
      Height = 25
      Align = alLeft
      Caption = 'Enviar Email'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnEnviar_EmailClick
    end
    object btnAlteraCarteira: TNxButton
      Left = 566
      Top = 1
      Width = 113
      Height = 25
      Align = alLeft
      Caption = 'Alterar Carteira'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btnAlteraCarteiraClick
    end
    object btnAlteraInstrucao: TNxButton
      Left = 679
      Top = 1
      Width = 128
      Height = 25
      Align = alLeft
      Caption = 'Alterar Instru'#231#227'o Protesto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = btnAlteraInstrucaoClick
    end
    object btnReimprimir: TNxButton
      Left = 807
      Top = 1
      Width = 128
      Height = 25
      Align = alLeft
      Caption = 'Reimprimir Boleto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = btnReimprimirClick
    end
    object NxButton1: TNxButton
      Left = 935
      Top = 1
      Width = 128
      Height = 25
      Align = alLeft
      Caption = 'Imprimir Capa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = NxButton1Click
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 474
    Width = 1086
    Height = 19
    Panels = <
      item
        Text = 'Usu'#225'rio'
        Width = 200
      end
      item
        Text = 'Empresa'
        Width = 50
      end>
  end
  object ACBrBoleto1: TACBrBoleto
    Banco.Numero = 1
    Banco.TamanhoMaximoNossoNum = 0
    Banco.TipoCobranca = cobBancoDoBrasil
    Cedente.TipoInscricao = pJuridica
    NumeroArquivo = 0
    ACBrBoletoFC = ACBrBoletoFCFortes1
    Left = 176
    Top = 280
  end
  object ACBrBoletoFCFortes1: TACBrBoletoFCFortes
    ACBrBoleto = ACBrBoleto1
    SoftwareHouse = 'ServiSoft Info.'
    Left = 208
    Top = 280
  end
end
