object frmCadRet_Tabela_Rej: TfrmCadRet_Tabela_Rej
  Left = 216
  Top = 130
  Width = 754
  Height = 542
  Caption = 'Cadastro Cobran'#231'a Eletr'#244'nica (Retorno Tabela de Rejei'#231#227'o)'
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
    Width = 738
    Height = 504
    ActivePage = TS_Consulta
    ActivePageDefault = TS_Consulta
    Align = alClient
    BackgroundColor = clSilver
    BoldCurrentTab = True
    FlatColor = clGray
    ParentBackgroundColor = False
    TabColors.Shadow = clSilver
    TabIndex = 0
    TabOrder = 0
    FixedDimension = 19
    object TS_Consulta: TRzTabSheet
      Caption = 'Consulta'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 73
        Width = 734
        Height = 391
        Align = alClient
        Ctl3D = True
        DataSource = DMCadRet_Tabela_Rej.dsRet_Tabela_Rej
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
        Flat = False
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
        ColCount = 4
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Rejei'#231#227'o'
            Width = 405
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_BANCO'
            Title.Alignment = taCenter
            Title.Caption = 'Banco'
            Width = 200
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 41
        Width = 734
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
        Top = 464
        Width = 734
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
        Width = 734
        Height = 41
        Align = alTop
        TabOrder = 3
        object Label3: TLabel
          Left = 21
          Top = 21
          Width = 34
          Height = 13
          Caption = 'Banco:'
        end
        object BitBtn3: TBitBtn
          Left = 393
          Top = 9
          Width = 118
          Height = 25
          Caption = 'Consultar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btnConsultarClick
        end
        object RxDBLookupCombo1: TRxDBLookupCombo
          Left = 58
          Top = 13
          Width = 335
          Height = 21
          DropDownCount = 8
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DMCadRet_Tabela_Rej.dsBanco
          TabOrder = 0
        end
      end
    end
    object TS_Cadastro: TRzTabSheet
      Caption = 'Cadastro'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 734
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
        Width = 734
        Height = 446
        Align = alClient
        Enabled = False
        TabOrder = 0
        object Label1: TLabel
          Left = 64
          Top = 37
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
        object Label6: TLabel
          Left = 61
          Top = 59
          Width = 34
          Height = 13
          Caption = 'Banco:'
        end
        object DBEdit7: TDBEdit
          Left = 96
          Top = 29
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
          DataSource = DMCadRet_Tabela_Rej.dsRet_Tabela_Rej
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
          DataSource = DMCadRet_Tabela_Rej.dsRet_Tabela_Rej
          TabOrder = 0
        end
        object RxDBLookupCombo2: TRxDBLookupCombo
          Left = 96
          Top = 51
          Width = 335
          Height = 21
          DropDownCount = 8
          DataField = 'ID_BANCO'
          DataSource = DMCadRet_Tabela_Rej.dsRet_Tabela_Rej
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DMCadRet_Tabela_Rej.dsBanco
          TabOrder = 3
        end
      end
    end
  end
  object UCControls1: TUCControls
    GroupName = 'Retorno Tabela Rejei'#231#227'o'
    UserControl = fMenu.UserControl1
    NotAllowed = naDisabled
    Left = 545
    Top = 148
  end
end
