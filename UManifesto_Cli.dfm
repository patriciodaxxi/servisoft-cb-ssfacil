object frmManifesto_Cli: TfrmManifesto_Cli
  Left = 229
  Top = 123
  Width = 928
  Height = 509
  Caption = 'frmManifesto_Cli'
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
    Width = 912
    Height = 58
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 11
      Width = 72
      Height = 13
      Alignment = taRightJustify
      Caption = 'Chave Acesso:'
    end
    object Label2: TLabel
      Left = 64
      Top = 43
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Nota:'
    end
    object Label3: TLabel
      Left = 78
      Top = 27
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'S'#233'rie:'
    end
    object lblSerie: TLabel
      Left = 110
      Top = 27
      Width = 8
      Height = 13
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblNota: TLabel
      Left = 110
      Top = 43
      Width = 8
      Height = 13
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object labConsRetorno: TLabel
      Left = 342
      Top = 26
      Width = 51
      Height = 13
      Caption = '< retorno >'
    end
    object edtConsChave: TEdit
      Left = 107
      Top = 3
      Width = 574
      Height = 21
      TabOrder = 0
    end
    object btnConsultar: TBitBtn
      Left = 688
      Top = 29
      Width = 78
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
    object chkConsSalvarXML: TCheckBox
      Left = 712
      Top = 7
      Width = 153
      Height = 17
      Caption = 'Salvar XML na pasta'
      TabOrder = 2
      Visible = False
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 58
    Width = 912
    Height = 412
    ActivePage = TabSheet1
    ActivePageDefault = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 1
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Resultado (Manifesto)'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 41
        Width = 908
        Height = 348
        Align = alClient
        DataSource = DMManifesto_Cli.dsNFeEventos
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 7
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'dhEvento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tpEvento'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nSeqEvento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descEvento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'xJust'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'xCorrecao'
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 908
        Height = 41
        Align = alTop
        Color = clSilver
        TabOrder = 1
        object btnConfirmar: TBitBtn
          Left = 8
          Top = 8
          Width = 193
          Height = 25
          Caption = 'Confirmar Evento Na Nota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btnConfirmarClick
        end
      end
    end
    object TabSheet3: TRzTabSheet
      Caption = 'Outros Resultados'
      object gbxVendedor: TRzGroupBox
        Left = 0
        Top = 217
        Width = 908
        Height = 108
        Align = alTop
        BorderColor = clNavy
        BorderInner = fsButtonUp
        BorderOuter = fsBump
        Caption = 'Protocolo Cancelamento'
        Ctl3D = True
        FlatColor = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        VisualStyle = vsGradient
        object SMDBGrid2: TSMDBGrid
          Left = 5
          Top = 18
          Width = 898
          Height = 85
          Align = alClient
          DataSource = DMManifesto_Cli.dsNFeCancelamento
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clNavy
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
        Top = 0
        Width = 908
        Height = 102
        Align = alTop
        BorderColor = clNavy
        BorderInner = fsButtonUp
        BorderOuter = fsBump
        Caption = 'Nota Fiscal'
        Ctl3D = True
        FlatColor = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        VisualStyle = vsGradient
        object SMDBGrid3: TSMDBGrid
          Left = 5
          Top = 18
          Width = 898
          Height = 79
          Align = alClient
          DataSource = DMManifesto_Cli.dsConsultaNFe
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clNavy
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
      object RzGroupBox2: TRzGroupBox
        Left = 0
        Top = 102
        Width = 908
        Height = 115
        Align = alTop
        BorderColor = clNavy
        BorderInner = fsButtonUp
        BorderOuter = fsBump
        Caption = ' Protocolo / Recibo '
        Ctl3D = True
        FlatColor = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        VisualStyle = vsGradient
        object SMDBGrid4: TSMDBGrid
          Left = 5
          Top = 18
          Width = 898
          Height = 92
          Align = alClient
          DataSource = DMManifesto_Cli.dsNFeProtocolo
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clNavy
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
    object TabSheet2: TRzTabSheet
      Caption = 'XML'
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 908
        Height = 389
        Align = alClient
        Lines.Strings = (
          'Memo1')
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
end
