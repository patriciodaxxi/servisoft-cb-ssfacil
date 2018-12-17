object frmSel_Titulos: TfrmSel_Titulos
  Left = 214
  Top = 103
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmSel_Titulos'
  ClientHeight = 523
  ClientWidth = 1010
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
    Width = 1010
    Height = 65
    Align = alTop
    Color = 16777147
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 12
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' T'#237'tulo:'
    end
    object Label2: TLabel
      Left = 13
      Top = 32
      Width = 73
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nosso N'#250'mero:'
    end
    object Label3: TLabel
      Left = 51
      Top = 50
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente:'
    end
    object Label4: TLabel
      Left = 247
      Top = 12
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'Parcela:'
    end
    object Edit1: TEdit
      Left = 88
      Top = 6
      Width = 145
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 88
      Top = 24
      Width = 145
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 88
      Top = 42
      Width = 361
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
    end
    object btnConsultar: TNxButton
      Left = 451
      Top = 38
      Width = 113
      Caption = 'Efetuar Pesquisar'
      TabOrder = 4
      OnClick = btnConsultarClick
    end
    object btnFechar: TNxButton
      Left = 565
      Top = 38
      Width = 113
      Caption = 'Fechar'
      TabOrder = 5
      OnClick = btnFecharClick
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 287
      Top = 4
      Width = 58
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      ParentCtl3D = False
      TabOrder = 1
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 65
    Width = 1010
    Height = 441
    Align = alClient
    Ctl3D = False
    DataSource = DMCob_Eletronica.dsDuplicata
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
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
    ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 15
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 13
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FILIAL'
        Title.Alignment = taCenter
        Title.Caption = 'Filial'
        Title.Color = 12582784
        Width = 39
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SERIE'
        Title.Alignment = taCenter
        Title.Caption = 'S'#233'rie'
        Title.Color = 12582784
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMDUPLICATA'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' T'#237'tulo (Seu N'#250'mero)'
        Title.Color = 12582784
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PARCELA'
        Title.Alignment = taCenter
        Title.Caption = 'Parcela'
        Title.Color = 12582784
        Width = 53
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NOSSONUMERO'
        Title.Alignment = taCenter
        Title.Caption = 'Nosso N'#250'mero'
        Title.Color = 12582784
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTVENCIMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Vencimento'
        Title.Color = 12582784
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_PARCELA'
        Title.Alignment = taCenter
        Title.Caption = 'Valor T'#237'tulo'
        Title.Color = 12582784
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTEMISSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Emiss'#227'o'
        Title.Color = 12582784
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Title.Color = 12582784
        Width = 266
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CONTA'
        Title.Alignment = taCenter
        Title.Caption = 'Conta'
        Title.Color = 12582784
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CNPJ_CPF'
        Title.Alignment = taCenter
        Title.Caption = 'CNPJ/CPF Cliente'
        Title.Color = 12582784
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUM_REMESSA'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Remessa'
        Title.Color = 12582784
        Visible = True
      end>
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 506
    Width = 1010
    Height = 17
    Align = alBottom
    Caption = 'Duplo Clique para selecionar a duplicata'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
end
