object frmImportarXML_NFSe: TfrmImportarXML_NFSe
  Left = 302
  Top = 24
  Width = 861
  Height = 696
  Caption = 'Importa'#231#227'o NFSe  (10/04/2013) V.1.00'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 845
    Height = 73
    Align = alTop
    TabOrder = 0
    object Diretorio: TLabel
      Left = 81
      Top = 41
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'Pasta:'
    end
    object Label1: TLabel
      Left = 76
      Top = 21
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Layout:'
    end
    object edtDiretorio: TDirectoryEdit
      Left = 113
      Top = 35
      Width = 400
      Height = 21
      DialogKind = dkWin32
      InitialDir = 'C:\'
      MultipleDirs = True
      NumGlyphs = 1
      TabOrder = 0
      Text = 'D:\Documentos Servisoft\XMLNFe\2013-03'
    end
    object chkSub: TCheckBox
      Left = 292
      Top = 14
      Width = 145
      Height = 17
      Caption = 'Incluir Subpastas'
      TabOrder = 1
    end
    object ComboBox1: TComboBox
      Left = 113
      Top = 13
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Text = 'Campo Bom'
      Items.Strings = (
        'Campo Bom'
        'Novo Hamburgo'
        'S'#227'o Leopoldo')
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 73
    Width = 845
    Height = 585
    ActivePage = TabSheet2
    ActivePageDefault = TabSheet2
    Align = alClient
    UseColoredTabs = True
    TabIndex = 2
    TabOrder = 1
    FixedDimension = 19
    object TabSheet5: TRzTabSheet
      Caption = 'Campo Bom'
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 841
        Height = 35
        Align = alTop
        Color = 16751415
        TabOrder = 0
        object Label2: TLabel
          Left = 39
          Top = 20
          Width = 39
          Height = 13
          Alignment = taRightJustify
          Caption = 'Arquivo:'
        end
        object FilenameEdit1: TFilenameEdit
          Left = 80
          Top = 12
          Width = 361
          Height = 21
          Filter = 'Arquivo XML|*.xml|All files (*.*)|*.*'
          NumGlyphs = 1
          TabOrder = 0
          Text = 'FilenameEdit1'
        end
        object btnCarregaXML: TBitBtn
          Left = 445
          Top = 8
          Width = 212
          Height = 25
          Caption = 'Carregar um arquivo XML espec'#237'fico'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btnCarregaXMLClick
        end
      end
      object RzGroupBox2: TRzGroupBox
        Left = 0
        Top = 35
        Width = 841
        Height = 360
        Align = alClient
        BorderColor = clLime
        BorderInner = fsButtonUp
        BorderOuter = fsBump
        Caption = ' Notas '
        Color = clSilver
        Ctl3D = True
        FlatColor = clGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        VisualStyle = vsGradient
        object SMDBGrid1: TSMDBGrid
          Left = 5
          Top = 18
          Width = 831
          Height = 337
          Align = alClient
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clGreen
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
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
          ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 11
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
          ColCount = 2
          RowCount = 2
        end
      end
      object RzGroupBox1: TRzGroupBox
        Left = 0
        Top = 395
        Width = 841
        Height = 167
        Align = alBottom
        BorderColor = clLime
        BorderInner = fsButtonUp
        BorderOuter = fsBump
        Caption = ' Itens (Campo Bom)'
        Color = clSilver
        Ctl3D = True
        FlatColor = clGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        VisualStyle = vsGradient
        object SMDBGrid2: TSMDBGrid
          Left = 5
          Top = 18
          Width = 831
          Height = 144
          Align = alClient
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clGreen
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
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
          ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 11
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
          ColCount = 2
          RowCount = 2
        end
      end
    end
    object TabSheet6: TRzTabSheet
      Caption = 'Novo Hamburgo / S'#227'o Leopoldo'
      object RzPanel1: TRzPanel
        Left = 0
        Top = 0
        Width = 841
        Height = 50
        Align = alTop
        BorderShadow = clSilver
        Color = 16751415
        TabOrder = 0
        object btnCarregarXML: TBitBtn
          Left = 6
          Top = 16
          Width = 201
          Height = 30
          Caption = 'Carregar um arquivo XML espec'#237'fico'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btnCarregarXMLClick
        end
      end
      object dbgNFSeToCds: TDBGrid
        Left = 0
        Top = 50
        Width = 841
        Height = 512
        Align = alClient
        DataSource = DMImportarXML_NFSe.dsNFSe
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Gerar V'#225'rios XML'
      object Label4: TLabel
        Left = 111
        Top = 8
        Width = 97
        Height = 13
        Alignment = taRightJustify
        Caption = 'Total XML Lidos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 124
        Top = 28
        Width = 84
        Height = 13
        Alignment = taRightJustify
        Caption = 'Total XML OK:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 90
        Top = 48
        Width = 118
        Height = 13
        Alignment = taRightJustify
        Caption = 'Total XML Com Erro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 210
        Top = 48
        Width = 70
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label8: TLabel
        Left = 210
        Top = 28
        Width = 70
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label9: TLabel
        Left = 210
        Top = 8
        Width = 70
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object BitBtn2: TBitBtn
        Left = 424
        Top = 40
        Width = 145
        Height = 25
        Caption = 'Gerar Importa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtn2Click
      end
      object MemLista: TMemo
        Left = 0
        Top = 72
        Width = 841
        Height = 288
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        Lines.Strings = (
          'MemLista')
        ScrollBars = ssBoth
        TabOrder = 1
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 360
        Width = 841
        Height = 202
        Align = alBottom
        Caption = 
          ' Arquivos que apresentaram erros e n'#227'o gravaram os Clientes/Prod' +
          'utos '
        TabOrder = 2
        object Memo1: TMemo
          Left = 2
          Top = 15
          Width = 837
          Height = 185
          Align = alClient
          ScrollBars = ssBoth
          TabOrder = 0
        end
      end
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'Arquivo XML|*.xml'
    Title = 'Selecione o arquivo xml'
    Left = 616
    Top = 312
  end
end
