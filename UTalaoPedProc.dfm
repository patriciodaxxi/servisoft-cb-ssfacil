object frmTalaoPedProc: TfrmTalaoPedProc
  Left = 258
  Top = 179
  Width = 928
  Height = 480
  Caption = 'frmTalaoPedProc'
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
    Width = 920
    Height = 65
    Align = alTop
    Color = clSilver
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object Label1: TLabel
      Left = 227
      Top = 12
      Width = 51
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Pedido:'
    end
    object Label2: TLabel
      Left = 32
      Top = 32
      Width = 70
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Emiss'#227'o Ini:'
    end
    object Label3: TLabel
      Left = 253
      Top = 32
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
    end
    object Label4: TLabel
      Left = 67
      Top = 50
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente:'
    end
    object Label5: TLabel
      Left = 16
      Top = 12
      Width = 86
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Pedido Cliente:'
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 280
      Top = 4
      Width = 100
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      ParentCtl3D = False
      TabOrder = 1
    end
    object DateEdit1: TDateEdit
      Left = 104
      Top = 24
      Width = 100
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 2
    end
    object DateEdit2: TDateEdit
      Left = 280
      Top = 24
      Width = 100
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 3
    end
    object Edit1: TEdit
      Left = 104
      Top = 44
      Width = 337
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
    end
    object btnConsultar: TNxButton
      Left = 444
      Top = 39
      Width = 116
      Height = 25
      Caption = 'Efetuar Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btnConsultarClick
    end
    object btnImprimir: TNxButton
      Left = 560
      Top = 39
      Width = 116
      Height = 25
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = btnImprimirClick
    end
    object Edit2: TEdit
      Left = 104
      Top = 6
      Width = 100
      Height = 19
      TabOrder = 0
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 65
    Width = 920
    Height = 384
    Align = alClient
    Ctl3D = False
    DataSource = DMPedidoImp.dsTalao_Proc
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
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
    ColCount = 12
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME_PROCESSO'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Processo'
        Width = 169
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PEDIDO_CLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Pedido Cliente'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ITEM_PEDIDO'
        Title.Alignment = taCenter
        Title.Caption = 'Item Pedido'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FANTASIA'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Width = 191
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'REFERENCIA'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEPRODUTO'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Produto'
        Width = 136
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_COMBINACAO'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Cor'
        Width = 177
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_RESTANTE'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'UNIDADE'
        Title.Alignment = taCenter
        Title.Caption = 'Unid.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTENTREGA'
        Title.Alignment = taCenter
        Title.Caption = 'Data Entrega'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_PEDIDO'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Pedido'
        Visible = True
      end>
  end
end
