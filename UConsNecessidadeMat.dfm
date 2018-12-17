object frmConsNecessidadeMat: TfrmConsNecessidadeMat
  Left = 50
  Top = 99
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Necessidade de Materiais'
  ClientHeight = 518
  ClientWidth = 898
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 898
    Height = 115
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 490
      Top = 11
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Caption = 'Pedido (OC):'
    end
    object Label2: TLabel
      Left = 79
      Top = 11
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'Filial:'
    end
    object Label3: TLabel
      Left = 67
      Top = 33
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente:'
    end
    object Label4: TLabel
      Left = 5
      Top = 55
      Width = 97
      Height = 13
      Alignment = taRightJustify
      Caption = 'Refer'#234'ncia/Produto:'
    end
    object Label5: TLabel
      Left = 32
      Top = 75
      Width = 70
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Emiss'#227'o Ini:'
    end
    object Label6: TLabel
      Left = 205
      Top = 75
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
    end
    object Label7: TLabel
      Left = 34
      Top = 97
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Entrega Ini:'
    end
    object Label8: TLabel
      Left = 205
      Top = 97
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
    end
    object Label10: TLabel
      Left = 492
      Top = 33
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Ped.Interno:'
    end
    object Edit1: TEdit
      Left = 551
      Top = 3
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyDown = Edit1KeyDown
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 103
      Top = 3
      Width = 377
      Height = 21
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'NOME_INTERNO'
      LookupSource = DMConsPedido.dsFilial
      TabOrder = 0
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 103
      Top = 25
      Width = 377
      Height = 21
      DropDownCount = 8
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = DMConsPedido.dsCliente
      TabOrder = 2
      OnEnter = RxDBLookupCombo2Enter
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 223
      Top = 47
      Width = 257
      Height = 21
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMConsPedido.dsProduto
      TabOrder = 3
      OnChange = RxDBLookupCombo3Change
      OnEnter = RxDBLookupCombo3Enter
    end
    object RxDBLookupCombo4: TRxDBLookupCombo
      Left = 103
      Top = 47
      Width = 121
      Height = 21
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'REFERENCIA'
      LookupSource = DMConsPedido.dsProduto
      TabOrder = 4
      OnChange = RxDBLookupCombo4Change
      OnEnter = RxDBLookupCombo4Enter
    end
    object DateEdit1: TDateEdit
      Left = 103
      Top = 69
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 5
    end
    object DateEdit2: TDateEdit
      Left = 231
      Top = 69
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 6
    end
    object DateEdit3: TDateEdit
      Left = 103
      Top = 91
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 7
    end
    object DateEdit4: TDateEdit
      Left = 231
      Top = 91
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 8
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 552
      Top = 25
      Width = 121
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 9
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 146
    Width = 898
    Height = 372
    Align = alClient
    DataSource = DMConsPedido.dsPedido_Item
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnTitleClick = SMDBGrid1TitleClick
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
    ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 19
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FILIAL'
        Title.Alignment = taCenter
        Title.Caption = 'Filial'
        Width = 36
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PEDIDO_CLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'Pedido Cliente (OC)'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_PEDIDO'
        Title.Alignment = taCenter
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ITEM'
        Title.Alignment = taCenter
        Title.Caption = 'Item'
        Width = 33
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTEMISSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Emiss'#227'o'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTENTREGA_ITEM'
        Title.Alignment = taCenter
        Title.Caption = 'Data Entrega'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFERENCIA'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_PRODUTO'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Produto'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Pedido'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_FATURADO'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd Faturada'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_RESTANTE'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Pendente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_CANCELADO'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Cancelada'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Cliente'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_PRODUTO'
        Title.Alignment = taCenter
        Title.Caption = 'ID Produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_VENDEDOR'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Vendedor'
        Width = 200
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_CLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'ID Cliente'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taCenter
        Title.Caption = 'Ped. Interno'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_FILIAL'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Filial'
        Width = 217
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 115
    Width = 898
    Height = 31
    Align = alTop
    Color = clSilver
    TabOrder = 2
    object Shape2: TShape
      Left = 589
      Top = 7
      Width = 30
      Height = 16
      Brush.Color = clRed
    end
    object Label13: TLabel
      Left = 621
      Top = 10
      Width = 51
      Height = 13
      Caption = 'Cancelada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Shape3: TShape
      Left = 685
      Top = 7
      Width = 30
      Height = 16
      Brush.Color = clAqua
    end
    object Label14: TLabel
      Left = 717
      Top = 10
      Width = 53
      Height = 13
      Caption = 'Fat. Parcial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Shape4: TShape
      Left = 780
      Top = 7
      Width = 30
      Height = 16
      Brush.Color = clGreen
    end
    object Label15: TLabel
      Left = 812
      Top = 10
      Width = 42
      Height = 13
      Caption = 'Faturado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 248
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
end
