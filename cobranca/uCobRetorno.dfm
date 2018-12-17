object fCobRetorno: TfCobRetorno
  Left = 288
  Top = 90
  Width = 988
  Height = 563
  Caption = 'fCobRetorno'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 972
    Height = 51
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label6: TLabel
      Left = 67
      Top = 12
      Width = 34
      Height = 13
      Alignment = taRightJustify
      Caption = 'Banco:'
    end
    object Label1: TLabel
      Left = 62
      Top = 34
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'Arquivo:'
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 104
      Top = 4
      Width = 354
      Height = 21
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMCob_Eletronica.dsContas
      TabOrder = 0
      OnEnter = RxDBLookupCombo3Enter
      OnExit = RxDBLookupCombo3Exit
    end
    object FilenameEdit1: TFilenameEdit
      Left = 104
      Top = 26
      Width = 354
      Height = 21
      OnBeforeDialog = FilenameEdit1BeforeDialog
      OnButtonClick = FilenameEdit1ButtonClick
      NumGlyphs = 1
      TabOrder = 1
      OnExit = FilenameEdit1Exit
    end
    object btnLocalizar: TNxButton
      Left = 459
      Top = 24
      Width = 113
      Caption = 'Abrir arquivo'
      TabOrder = 2
      OnClick = btnLocalizarClick
    end
    object NxButton1: TNxButton
      Left = 572
      Top = 24
      Width = 113
      Caption = 'Processar retorno'
      TabOrder = 3
      OnClick = NxButton1Click
    end
    object btnEnviarEmail: TNxButton
      Left = 798
      Top = 24
      Width = 113
      Hint = 'Vai enviar emails dos t'#237'tulos vencidos e a vencer no dia'
      Caption = 'Email Atrasados'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 4
      OnClick = btnEnviarEmailClick
    end
    object NxButton2: TNxButton
      Left = 685
      Top = 24
      Width = 113
      Hint = 'Imprimir a consulta'
      Caption = 'Imprimir'
      TabOrder = 5
      OnClick = NxButton2Click
    end
    object ProgressBar1: TProgressBar
      Left = 462
      Top = 5
      Width = 385
      Height = 17
      TabOrder = 6
      Visible = False
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 51
    Width = 972
    Height = 400
    Align = alClient
    Ctl3D = False
    DataSource = DMCob_Eletronica.dsmRetorno
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyDown = SMDBGrid1KeyDown
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 35
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'NossoNumero'
        Title.Alignment = taCenter
        Title.Caption = 'Nosso N'#186
        Width = 128
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NumNota'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Nota'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Parcela'
        Title.Alignment = taCenter
        Width = 52
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtVenc'
        Title.Alignment = taCenter
        Title.Caption = 'Data Vencimento'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtOcorrencia'
        Title.Alignment = taCenter
        Title.Caption = 'Data Ocorr'#234'ncia'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtLiquidacao'
        Title.Alignment = taCenter
        Title.Caption = 'Data Liquida'#231#227'o'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrTitulo'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. T'#237'tulo'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrDespesaCobranca'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Despesa (Taxa Cobran'#231'a/Cart'#243'rio)'
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrPago'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Pago'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrDesconto'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Desconto'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrJurosPagos'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Juros Pagos'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrJurosdeMora'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Juros de Mora/Multa Calculado'
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeCliente'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Cliente'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodOcorrenciaRet'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Ocorr'#234'ncia Ret.'
        Width = 85
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodCarteira'
        Title.Alignment = taCenter
        Title.Caption = 'Carteira'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeOcorrenciaRet'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o da Ocorr'#234'ncia'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'InstrCancelada'
        Title.Alignment = taCenter
        Title.Caption = 'Instru'#231#227'o Cancelada'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Erros'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Erros'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodLiquidacao'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Liquida'#231#227'o'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DescLiquidacao'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o da Liquida'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodCliente'
        Title.Alignment = taCenter
        Title.Caption = 'ID Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DescErro1'
        Title.Caption = 'Desc. Erro 1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DescErro2'
        Title.Caption = 'Desc. Erro 2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DescErro3'
        Title.Caption = 'Desc. Erro 3'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DescErro4'
        Title.Caption = 'Desc. Erro 4'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodMotivo'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Motivo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DescMotivo'
        Title.Caption = 'Descri'#231#227'o Motivo'
        Width = 500
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ConfNossoNumero'
        Title.Alignment = taCenter
        Title.Caption = 'Nosso N'#186' Confirmado'
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SeuNumero'
        Title.Alignment = taCenter
        Title.Caption = 'Seu N'#250'mero'
        Width = 117
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_Duplicata'
        Title.Alignment = taCenter
        Title.Caption = 'ID Duplicata'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Titulo_OK'
        Title.Alignment = taCenter
        Title.Caption = 'Achou o T'#237'tulo na Base'
        Width = 86
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Tipo_Ret'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo Retorno'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Atualizar'
        Title.Alignment = taCenter
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Atualizado'
        Title.Alignment = taCenter
        Width = 59
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 468
    Width = 972
    Height = 56
    Align = alBottom
    Color = clSilver
    TabOrder = 2
    object Shape1: TShape
      Left = 16
      Top = 5
      Width = 24
      Height = 14
      Brush.Color = clMoneyGreen
    end
    object Label33: TLabel
      Left = 45
      Top = 6
      Width = 52
      Height = 13
      Caption = 'Liquida'#231#227'o'
    end
    object Shape2: TShape
      Left = 16
      Top = 18
      Width = 24
      Height = 14
      Brush.Color = 16763799
    end
    object Label2: TLabel
      Left = 45
      Top = 19
      Width = 94
      Height = 13
      Caption = 'Outras Atualiza'#231#245'es'
    end
    object Shape3: TShape
      Left = 214
      Top = 5
      Width = 24
      Height = 14
      Brush.Color = clYellow
    end
    object Label3: TLabel
      Left = 243
      Top = 6
      Width = 39
      Height = 13
      Caption = 'Protesto'
    end
    object Shape4: TShape
      Left = 214
      Top = 18
      Width = 24
      Height = 14
      Brush.Color = clRed
    end
    object Label4: TLabel
      Left = 243
      Top = 19
      Width = 19
      Height = 13
      Caption = 'Erro'
    end
    object Shape5: TShape
      Left = 336
      Top = 18
      Width = 24
      Height = 14
      Brush.Color = 14145495
    end
    object Label5: TLabel
      Left = 365
      Top = 19
      Width = 49
      Height = 13
      Caption = 'Atualizado'
    end
    object Shape6: TShape
      Left = 480
      Top = 20
      Width = 24
      Height = 14
      Brush.Color = clMaroon
    end
    object Label7: TLabel
      Left = 509
      Top = 21
      Width = 106
      Height = 13
      Caption = 'N'#227'o achou o cadastro'
    end
    object Shape7: TShape
      Left = 336
      Top = 5
      Width = 24
      Height = 14
      Brush.Color = 8421631
    end
    object Label8: TLabel
      Left = 365
      Top = 6
      Width = 84
      Height = 13
      Caption = 'Verificar os t'#237'tulos'
    end
    object CheckBox1: TCheckBox
      Left = 632
      Top = 16
      Width = 185
      Height = 17
      Caption = 'Ler o retorno pelo nosso n'#250'mero'
      TabOrder = 0
    end
    object DateEdit1: TDateEdit
      Left = 824
      Top = 10
      Width = 120
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
      Text = '05/12/2016'
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 944
      Top = 10
      Width = 25
      Height = 25
      Caption = '...'
      TabOrder = 2
      Visible = False
      OnClick = BitBtn1Click
    end
    object stat1: TStatusBar
      Left = 1
      Top = 39
      Width = 970
      Height = 16
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
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 451
    Width = 972
    Height = 17
    Align = alBottom
    BevelKind = bkTile
    Caption = 
      'F3=para escolher a duplicata que o sistema n'#227'o encontrou     F4=' +
      'Desvincula o t'#237'tulo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object ACBrBoleto1: TACBrBoleto
    Banco.Numero = 41
    Banco.TamanhoMaximoNossoNum = 8
    Banco.TipoCobranca = cobBanrisul
    Banco.OrientacoesBanco.Strings = (
      
        'SAC       BANRISUL - 0800 646 1515'#13#10'OUVIDORIA BANRISUL - 0800 64' +
        '4 2200')
    Cedente.TipoInscricao = pJuridica
    NumeroArquivo = 0
    LeCedenteRetorno = True
    Left = 368
    Top = 216
  end
end
