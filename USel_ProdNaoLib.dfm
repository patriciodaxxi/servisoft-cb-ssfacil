object frmSel_ProdNaoLib: TfrmSel_ProdNaoLib
  Left = 133
  Top = 55
  Width = 1075
  Height = 585
  Caption = 'frmSel_ProdNaoLib'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1067
    Height = 63
    Align = alTop
    Color = 16748834
    TabOrder = 0
    object Label1: TLabel
      Left = 51
      Top = 11
      Width = 71
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome Produto:'
    end
    object Label2: TLabel
      Left = 103
      Top = 29
      Width = 19
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cor:'
    end
    object Label3: TLabel
      Left = 74
      Top = 47
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tamanho:'
    end
    object Edit1: TEdit
      Left = 125
      Top = 5
      Width = 491
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnKeyDown = Edit1KeyDown
    end
    object btnConsultar: TNxButton
      Left = 618
      Top = 34
      Width = 114
      Height = 27
      Caption = 'Efetuar Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnConsultarClick
    end
    object Edit2: TEdit
      Left = 125
      Top = 23
      Width = 491
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnKeyDown = Edit2KeyDown
    end
    object Edit3: TEdit
      Left = 125
      Top = 41
      Width = 491
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnKeyDown = Edit3KeyDown
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 63
    Width = 1067
    Height = 491
    Align = alClient
    Ctl3D = False
    DataSource = DMProg_Terc.dsProdNaoLib
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
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
    ColCount = 6
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_PRODUTO'
        Title.Alignment = taCenter
        Title.Caption = 'ID Produto'
        Title.Color = 9174807
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFERENCIA'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Title.Color = 9174807
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_PRODUTO'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Produto'
        Title.Color = 9174807
        Width = 497
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_RESTANTE'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. N'#227'o Faturada'
        Title.Color = 9174807
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_PENDENTE_LIB'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Pendente de Libera'#231#227'o'
        Title.Color = 9174807
        Width = 91
        Visible = True
      end>
  end
end
