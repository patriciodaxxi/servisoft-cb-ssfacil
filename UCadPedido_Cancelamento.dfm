object frmCadPedido_Cancelamento: TfrmCadPedido_Cancelamento
  Left = 238
  Top = 191
  Width = 784
  Height = 432
  Caption = 'Cancelar Pedido'
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
  object Panel3: TPanel
    Left = 0
    Top = 210
    Width = 776
    Height = 34
    Align = alBottom
    Color = 8404992
    TabOrder = 1
    object BitBtn4: TBitBtn
      Left = 205
      Top = 5
      Width = 98
      Height = 25
      Caption = '(F10) Voltar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn4Click
    end
    object btnConfirmar: TBitBtn
      Left = 106
      Top = 5
      Width = 98
      Height = 25
      Caption = '(F7) &Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnConfirmarClick
    end
    object btnExcluir: TBitBtn
      Left = 584
      Top = 5
      Width = 129
      Height = 25
      Caption = 'Excluir Cancelamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnExcluirClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 111
    Width = 776
    Height = 99
    Align = alClient
    Color = clMoneyGreen
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 23
      Width = 126
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quantidade para cancelar:'
    end
    object Label2: TLabel
      Left = 103
      Top = 67
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Motivo:'
    end
    object Label3: TLabel
      Left = 50
      Top = 45
      Width = 88
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt. Cancelamento:'
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 139
      Top = 15
      Width = 121
      Height = 21
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = '0.#####'
      TabOrder = 0
    end
    object DateEdit1: TDateEdit
      Left = 139
      Top = 37
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 139
      Top = 59
      Width = 608
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 200
      TabOrder = 2
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 41
    Width = 776
    Height = 70
    Align = alTop
    Color = clSilver
    TabOrder = 2
    object Label4: TLabel
      Left = 16
      Top = 8
      Width = 59
      Height = 13
      Caption = 'Item Pedido:'
    end
    object DBText1: TDBText
      Left = 79
      Top = 8
      Width = 65
      Height = 11
      DataField = 'ITEM'
      DataSource = DMCadPedido.dsPedido_Itens
    end
    object Label5: TLabel
      Left = 20
      Top = 24
      Width = 55
      Height = 13
      Caption = 'Refer'#234'ncia:'
    end
    object DBText2: TDBText
      Left = 79
      Top = 24
      Width = 146
      Height = 11
      DataField = 'REFERENCIA'
      DataSource = DMCadPedido.dsPedido_Itens
    end
    object DBText3: TDBText
      Left = 296
      Top = 24
      Width = 409
      Height = 11
      DataField = 'NOMEPRODUTO'
      DataSource = DMCadPedido.dsPedido_Itens
    end
    object Label6: TLabel
      Left = 252
      Top = 24
      Width = 40
      Height = 13
      Caption = 'Produto:'
    end
    object Label7: TLabel
      Left = 48
      Top = 50
      Width = 29
      Height = 13
      Alignment = taRightJustify
      Caption = 'Qtd.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 79
      Top = 50
      Width = 65
      Height = 13
      DataField = 'QTD'
      DataSource = DMCadPedido.dsPedido_Itens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 444
      Top = 50
      Width = 89
      Height = 13
      Alignment = taRightJustify
      Caption = 'Qtd.Cancelada:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 535
      Top = 50
      Width = 65
      Height = 11
      DataField = 'QTD_CANCELADO'
      DataSource = DMCadPedido.dsPedido_Itens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 206
      Top = 50
      Width = 87
      Height = 13
      Alignment = taRightJustify
      Caption = 'Qtd. Pendente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText6: TDBText
      Left = 295
      Top = 50
      Width = 65
      Height = 13
      DataField = 'QTD_RESTANTE'
      DataSource = DMCadPedido.dsPedido_Itens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 776
    Height = 41
    Align = alTop
    Color = clSilver
    TabOrder = 3
    object Label10: TLabel
      Left = 184
      Top = 8
      Width = 243
      Height = 25
      Caption = 'Cancelamento do Pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 244
    Width = 776
    Height = 157
    Align = alBottom
    DataSource = DMCadPedido.dsPedido_Cancelado
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 4
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
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ITEM_CANC'
        Title.Alignment = taCenter
        Title.Caption = 'Item Canc.'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATA'
        Title.Alignment = taCenter
        Title.Caption = 'Data'
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MOTIVO'
        Title.Alignment = taCenter
        Title.Caption = 'Motivo'
        Width = 500
        Visible = True
      end>
  end
  object UCControls1: TUCControls
    GroupName = 'Cancelamento Pedido'
    UserControl = fMenu.UserControl1
    NotAllowed = naDisabled
    Left = 632
    Top = 65
  end
end
