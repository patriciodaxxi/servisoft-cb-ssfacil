object frmConsEstoque_Bal_Det: TfrmConsEstoque_Bal_Det
  Left = 116
  Top = 126
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmConsEstoque_Bal_Det'
  ClientHeight = 506
  ClientWidth = 1102
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
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 41
    Width = 1102
    Height = 465
    Align = alClient
    Ctl3D = False
    DataSource = DMConsEstoque.dsEstoque_Mov
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
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
    ExOptions = [eoCheckBoxSelect, eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 27
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 28
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FILIAL'
        Title.Alignment = taCenter
        Title.Caption = 'Filial'
        Title.Color = 16777145
        Width = 34
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_LOCAL'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Local'
        Title.Color = 16777145
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_LOCAL'
        Title.Alignment = taCenter
        Title.Caption = 'Local Estoque'
        Title.Color = 16777145
        Width = 138
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TIPO_ES'
        Title.Alignment = taCenter
        Title.Caption = 'E / S'
        Title.Color = 16777145
        Width = 32
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TIPO_MOV'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo Movim.'
        Title.Color = 16777145
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODCFOP'
        Title.Alignment = taCenter
        Title.Caption = 'CFOP'
        Title.Color = 16777145
        Width = 41
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMNOTA'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Documento'
        Title.Color = 16777145
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTMOVIMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Movimento'
        Title.Color = 16777145
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'GERAR_CUSTO'
        Title.Alignment = taCenter
        Title.Caption = 'Gerar Custo M'#233'dio'
        Title.Color = 16777145
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Title.Alignment = taCenter
        Title.Caption = 'Quantidade'
        Title.Color = 16777145
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_UNITARIO'
        Title.Caption = 'Vlr. Unit'#225'rio'
        Title.Color = 16777145
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDADE'
        Title.Caption = 'Unidade'
        Title.Color = 16777145
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDADE_ORIG'
        Title.Alignment = taCenter
        Title.Caption = 'Unid. da Nota'
        Title.Color = 16777145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_ORIG'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. da Nota'
        Title.Color = 16777145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAMANHO'
        Title.Alignment = taCenter
        Title.Caption = 'Tamanho'
        Title.Color = 16777145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_COR'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Cor'
        Title.Color = 16777145
        Width = 142
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUM_LOTE_CONTROLE'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Lote Controle'
        Title.Color = 16777145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEPESSOA'
        Title.Caption = 'Cliente / Fornecedor'
        Title.Color = 16777145
        Width = 227
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERC_ICMS'
        Title.Caption = '% ICMS'
        Title.Color = 16777145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERC_IPI'
        Title.Caption = '% IPI'
        Title.Color = 16777145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_DESCONTO'
        Title.Caption = 'Vlr. Desconto'
        Title.Color = 16777145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_FRETE'
        Title.Caption = 'Vlr. Frete'
        Title.Color = 16777145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERIE'
        Title.Alignment = taCenter
        Title.Caption = 'S'#233'rie Nota'
        Title.Color = 16777145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_PESSOA'
        Title.Caption = 'ID Pessoa'
        Title.Color = 16777145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_UNITARIOORIG'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Unit'#225'rio da Nota'
        Title.Color = 16777145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_GRUPO'
        Title.Alignment = taCenter
        Title.Caption = 'Estrutura'
        Title.Color = 16777145
        Width = 183
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taCenter
        Title.Caption = 'ID Estoque'
        Title.Color = 16777145
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1102
    Height = 41
    Align = alTop
    Color = 11796403
    TabOrder = 1
    object Label1: TLabel
      Left = 12
      Top = 8
      Width = 67
      Height = 13
      Caption = 'Refer'#234'ncia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 82
      Top = 8
      Width = 151
      Height = 15
      DataField = 'REFERENCIA'
      DataSource = DMConsEstoque.dsBalanco
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 82
      Top = 23
      Width = 527
      Height = 15
      DataField = 'NOME_PRODUTO'
      DataSource = DMConsEstoque.dsBalanco
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 672
      Top = 16
      Width = 93
      Height = 16
      Caption = 'Pre'#231'o M'#233'dio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 770
      Top = 16
      Width = 151
      Height = 15
      DataField = 'clPreco_Medio'
      DataSource = DMConsEstoque.dsBalanco
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 424
      Top = 16
      Width = 66
      Height = 13
      Caption = 'Pre'#231'o Gravar:'
      Visible = False
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 496
      Top = 8
      Width = 121
      Height = 21
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = '0.000##'
      TabOrder = 0
      Visible = False
    end
  end
end
