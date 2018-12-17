object frmCadTabPreco_Sel_Produto: TfrmCadTabPreco_Sel_Produto
  Left = 191
  Top = 154
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Transfer'#234'ncia do produto para a tabela de pre'#231'o'
  ClientHeight = 471
  ClientWidth = 914
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 914
    Height = 68
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 509
      Top = 40
      Width = 40
      Height = 13
      Caption = 'Aplicar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 34
      Width = 80
      Height = 13
      Caption = 'Pesquisar Nome:'
    end
    object Label3: TLabel
      Left = 96
      Top = 50
      Width = 242
      Height = 13
      Caption = 'Informe o nome e pressione ENTER para pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label68: TLabel
      Left = 20
      Top = 12
      Width = 66
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tipo Registro:'
    end
    object BitBtn1: TBitBtn
      Left = 505
      Top = 4
      Width = 347
      Height = 25
      Caption = 'Transferir Produtos selecionados para a tabela de Pre'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 552
      Top = 32
      Width = 73
      Height = 21
      AutoSize = False
      Ctl3D = True
      DisplayFormat = '0.00'
      ParentCtl3D = False
      TabOrder = 1
    end
    object ComboBox1: TComboBox
      Left = 627
      Top = 32
      Width = 201
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      Text = '% sobre o Pre'#231'o de Custo'
      Items.Strings = (
        '% sobre o Pre'#231'o de Custo'
        '% sobre o Pre'#231'o de Venda')
    end
    object Edit1: TEdit
      Left = 88
      Top = 26
      Width = 289
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
      OnKeyDown = Edit1KeyDown
    end
    object ComboBox2: TComboBox
      Left = 88
      Top = 4
      Width = 177
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 4
      Items.Strings = (
        'Produto'
        'Material'
        'Semiacabado')
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 68
    Width = 914
    Height = 386
    Align = alClient
    Ctl3D = False
    DataSource = DMCadTab_Preco.dsProduto
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentCtl3D = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
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
    ExOptions = [eoCheckBoxSelect, eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 27
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 6
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'REFERENCIA'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Width = 135
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 390
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_MARCA'
        Title.Caption = 'Marca'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_CUSTO'
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o Custo'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_VENDA'
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o Venda'
        Width = 92
        Visible = True
      end>
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 454
    Width = 914
    Height = 17
    Align = alBottom
    BorderStyle = sbsSingle
    Caption = 
      'Duplo Clique  ou   Enter para selecionar o produto       ESC= Fe' +
      'char tela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
end
