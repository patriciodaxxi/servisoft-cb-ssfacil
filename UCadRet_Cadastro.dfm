object frmCadRet_Cadastro: TfrmCadRet_Cadastro
  Left = 216
  Top = 130
  Width = 800
  Height = 600
  Caption = 'Cadastro Cobran'#231'a Eletr'#244'nica (Ocorr'#234'ncia de Retorno)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 784
    Height = 562
    ActivePage = TS_Cadastro
    ActivePageDefault = TS_Consulta
    Align = alClient
    BackgroundColor = clSilver
    BoldCurrentTab = True
    FlatColor = clGray
    ParentBackgroundColor = False
    TabColors.Shadow = clSilver
    TabIndex = 1
    TabOrder = 0
    OnChange = RzPageControl1Change
    FixedDimension = 19
    object TS_Consulta: TRzTabSheet
      Caption = 'Consulta'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 83
        Width = 780
        Height = 439
        Align = alClient
        Ctl3D = False
        DataSource = DMCadRet_Cadastro.dsRet_Cadastro
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 8
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Width = 459
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO_REG'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Reg'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO_RET'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Retorno'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_BANCO'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Banco'
            Width = 341
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TIPO_LIQ'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Liquida'#231#227'o'
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 51
        Width = 780
        Height = 32
        Align = alTop
        Color = clSilver
        TabOrder = 0
        object btnInserir: TBitBtn
          Left = 4
          Top = 4
          Width = 75
          Height = 25
          Caption = '&Inserir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btnInserirClick
        end
        object btnExcluir: TBitBtn
          Left = 79
          Top = 4
          Width = 75
          Height = 25
          Caption = 'E&xcluir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TabStop = False
          OnClick = btnExcluirClick
        end
      end
      object StaticText1: TStaticText
        Left = 0
        Top = 522
        Width = 780
        Height = 17
        Align = alBottom
        BorderStyle = sbsSunken
        Caption = 'Duplo clique para consultar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16384
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 780
        Height = 51
        Align = alTop
        TabOrder = 3
        object Label3: TLabel
          Left = 21
          Top = 14
          Width = 34
          Height = 13
          Caption = 'Banco:'
        end
        object Label4: TLabel
          Left = 8
          Top = 36
          Width = 47
          Height = 13
          Caption = 'Tipo Reg:'
        end
        object BitBtn3: TBitBtn
          Left = 395
          Top = 24
          Width = 118
          Height = 25
          Caption = 'Consultar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = btnConsultarClick
        end
        object RxDBLookupCombo1: TRxDBLookupCombo
          Left = 58
          Top = 6
          Width = 335
          Height = 21
          DropDownCount = 8
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DMCadRet_Cadastro.dsBanco
          TabOrder = 0
        end
        object ComboBox1: TComboBox
          Left = 58
          Top = 28
          Width = 191
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 1
          Items.Strings = (
            'Ocorr'#234'ncia'
            'Registro com Erro'
            'Liquida'#231#227'o')
        end
      end
    end
    object TS_Cadastro: TRzTabSheet
      Caption = 'Cadastro'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 780
        Height = 35
        Align = alTop
        Color = 8404992
        TabOrder = 1
        object btnConfirmar: TBitBtn
          Left = 80
          Top = 5
          Width = 75
          Height = 25
          Caption = '&Confirmar'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btnConfirmarClick
        end
        object btnCancelar: TBitBtn
          Left = 155
          Top = 5
          Width = 75
          Height = 25
          Caption = 'Ca&ncelar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = btnCancelarClick
        end
        object btnAlterar: TBitBtn
          Left = 5
          Top = 5
          Width = 75
          Height = 25
          Caption = 'Alterar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btnAlterarClick
        end
      end
      object pnlCadastro: TPanel
        Left = 0
        Top = 35
        Width = 780
        Height = 504
        Align = alClient
        Enabled = False
        TabOrder = 0
        object Label1: TLabel
          Left = 64
          Top = 36
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nome:'
        end
        object Label8: TLabel
          Left = 601
          Top = 15
          Width = 14
          Height = 13
          Alignment = taRightJustify
          Caption = 'ID:'
        end
        object Label2: TLabel
          Left = 59
          Top = 15
          Width = 36
          Height = 13
          Alignment = taRightJustify
          Caption = 'C'#243'digo:'
        end
        object Label5: TLabel
          Left = 29
          Top = 80
          Width = 66
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo Registro:'
        end
        object Label6: TLabel
          Left = 61
          Top = 58
          Width = 34
          Height = 13
          Caption = 'Banco:'
        end
        object Label9: TLabel
          Left = 21
          Top = 103
          Width = 74
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo Opera'#231#227'o:'
          Visible = False
        end
        object Label7: TLabel
          Left = 16
          Top = 126
          Width = 79
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo Liquida'#231#227'o:'
          Visible = False
        end
        object Label10: TLabel
          Left = 80
          Top = 232
          Width = 283
          Height = 52
          Caption = 
            'Tipo de Opera'#231#227'o:  Os 3 itens abaixo v'#227'o atualizar na base '#13#10'  O' +
            'pera'#231#227'o Confirmada '#13#10'  Liquida'#231#227'o'#13#10'  Protestado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 80
          Top = 176
          Width = 316
          Height = 39
          Caption = 
            'Tipo de Registro: Os 2 itens abaixo v'#227'o atualizar na base de dad' +
            'os'#13#10'  Ocorr'#234'ncia'#13#10'  Liquida'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit7: TDBEdit
          Left = 96
          Top = 28
          Width = 497
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = DMCadRet_Cadastro.dsRet_Cadastro
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 616
          Top = 7
          Width = 113
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clSilver
          DataField = 'ID'
          DataSource = DMCadRet_Cadastro.dsRet_Cadastro
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit1: TDBEdit
          Left = 96
          Top = 7
          Width = 113
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CODIGO'
          DataSource = DMCadRet_Cadastro.dsRet_Cadastro
          TabOrder = 0
        end
        object RxDBComboBox1: TRxDBComboBox
          Left = 96
          Top = 72
          Width = 177
          Height = 21
          Style = csDropDownList
          DataField = 'TIPO_REG'
          DataSource = DMCadRet_Cadastro.dsRet_Cadastro
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'Ocorr'#234'ncia'
            'Registro com Erro'
            'Liquida'#231#227'o')
          TabOrder = 4
          Values.Strings = (
            'OCO'
            'ERR'
            'LIQ')
          OnChange = RxDBComboBox1Change
          OnKeyDown = RxDBComboBox1KeyDown
        end
        object RxDBLookupCombo2: TRxDBLookupCombo
          Left = 96
          Top = 50
          Width = 335
          Height = 21
          DropDownCount = 8
          DataField = 'ID_BANCO'
          DataSource = DMCadRet_Cadastro.dsRet_Cadastro
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DMCadRet_Cadastro.dsBanco
          TabOrder = 3
        end
        object RxDBComboBox2: TRxDBComboBox
          Left = 96
          Top = 95
          Width = 177
          Height = 21
          Style = csDropDownList
          DataField = 'TIPO_RET'
          DataSource = DMCadRet_Cadastro.dsRet_Cadastro
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'Opera'#231#227'o Confirmada'
            'Liquida'#231#227'o'
            'Opera'#231#227'o Rejeitada'
            'Outros'
            'Protestado')
          TabOrder = 5
          Values.Strings = (
            'OCF'
            'LIQ'
            'ORJ'
            'OUT'
            'PRO')
          Visible = False
          OnChange = RxDBComboBox2Change
          OnKeyDown = RxDBComboBox2KeyDown
        end
        object RxDBComboBox3: TRxDBComboBox
          Left = 96
          Top = 118
          Width = 177
          Height = 21
          Style = csDropDownList
          DataField = 'TIPO_LIQ'
          DataSource = DMCadRet_Cadastro.dsRet_Cadastro
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'Normal'
            'Cart'#243'rio')
          TabOrder = 6
          Values.Strings = (
            'LNO'
            'LCA')
          Visible = False
          OnKeyDown = RxDBComboBox3KeyDown
        end
      end
    end
  end
  object UCControls1: TUCControls
    GroupName = 'Ocorr'#234'ncia Retorno'
    UserControl = fMenu.UserControl1
    NotAllowed = naDisabled
    Left = 537
    Top = 175
  end
end
