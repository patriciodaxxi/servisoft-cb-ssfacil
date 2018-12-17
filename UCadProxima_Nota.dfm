object frmCadProxima_Nota: TfrmCadProxima_Nota
  Left = 75
  Top = 6
  Width = 932
  Height = 739
  Caption = 'Cadastro da Nota '#218'ltima Nota Emitida'
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
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 916
    Height = 701
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
        Top = 138
        Width = 912
        Height = 499
        Align = alClient
        Ctl3D = True
        DataSource = DMCadNotaFiscal.dsNotaFiscal
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
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
        ColCount = 6
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FILIAL'
            Title.Alignment = taCenter
            Title.Caption = 'Filial'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SERIE'
            Title.Alignment = taCenter
            Title.Caption = 'S'#233'rie'
            Width = 47
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUMNOTA'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Nota ('#218'ltima Nota)'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO_DESC'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Width = 417
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 912
        Height = 106
        Align = alTop
        TabOrder = 0
        object lblSerie: TLabel
          Left = 66
          Top = 40
          Width = 27
          Height = 13
          Caption = 'S'#233'rie:'
        end
        object lblNumNota: TLabel
          Left = 20
          Top = 63
          Width = 73
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#186' '#218'ltima Nota:'
        end
        object Label12: TLabel
          Left = 70
          Top = 14
          Width = 23
          Height = 13
          Caption = 'Filial:'
        end
        object Label1: TLabel
          Left = 196
          Top = 55
          Width = 157
          Height = 26
          Caption = 
            'Informar a '#250'ltima nota emitida.'#13#10'Serve s'#243' para o in'#237'cio do siste' +
            'ma'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object btnConfirmar: TBitBtn
          Left = 94
          Top = 79
          Width = 77
          Height = 25
          Caption = 'Confirmar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = btnConfirmarClick
        end
        object edtSerie: TEdit
          Left = 95
          Top = 32
          Width = 55
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object CurrencyEdit1: TCurrencyEdit
          Left = 95
          Top = 55
          Width = 100
          Height = 21
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          TabOrder = 2
        end
        object RxDBLookupCombo1: TRxDBLookupCombo
          Left = 95
          Top = 8
          Width = 250
          Height = 21
          DropDownCount = 8
          LookupField = 'ID'
          LookupDisplay = 'NOME_INTERNO'
          LookupSource = DMCadNotaFiscal.dsFilial
          TabOrder = 0
        end
      end
      object StaticText1: TStaticText
        Left = 0
        Top = 661
        Width = 912
        Height = 17
        Align = alBottom
        BorderStyle = sbsSunken
        Caption = 'Duplo clique para consultar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object Panel11: TPanel
        Left = 0
        Top = 106
        Width = 912
        Height = 32
        Align = alTop
        TabOrder = 1
        object btnExcluir: TBitBtn
          Left = 6
          Top = 3
          Width = 70
          Height = 25
          Caption = 'E&xcluir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = False
          OnClick = btnExcluirClick
        end
      end
      object Panel12: TPanel
        Left = 0
        Top = 637
        Width = 912
        Height = 24
        Align = alBottom
        TabOrder = 4
      end
    end
  end
  object UCControls1: TUCControls
    GroupName = 'Informar '#218'ltima Nota'
    UserControl = fMenu.UserControl1
    NotAllowed = naInvisible
    Left = 609
    Top = 36
  end
end
