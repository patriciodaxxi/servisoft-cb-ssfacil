object frmCadOC_Itens_Cli: TfrmCadOC_Itens_Cli
  Left = 337
  Top = 217
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Informar o Projeto'
  ClientHeight = 273
  ClientWidth = 556
  Color = clMoneyGreen
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
    Top = 230
    Width = 556
    Height = 43
    Align = alBottom
    Color = clSilver
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 1
    object Label1: TLabel
      Left = 34
      Top = 9
      Width = 40
      Height = 13
      Caption = 'Produto:'
    end
    object DBText1: TDBText
      Left = 77
      Top = 8
      Width = 673
      Height = 14
      DataField = 'NOMEPRODUTO'
      DataSource = DMCadPedido.dsPedido_Itens
    end
    object Label2: TLabel
      Left = 16
      Top = 26
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
    end
    object DBText2: TDBText
      Left = 77
      Top = 26
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'QTD'
      DataSource = DMCadPedido.dsPedido_Itens
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 77
    Width = 556
    Height = 153
    TabStop = False
    Align = alClient
    Ctl3D = False
    DataSource = DMCadPedido.dsPedido_Cli
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 2
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 16
    ScrollBars = ssHorizontal
    ColCount = 3
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME_CENTROCUSTO'
        Title.Alignment = taCenter
        Title.Caption = 'Projeto (Cliente)'
        Width = 345
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Title.Alignment = taCenter
        Title.Caption = 'Quantidade'
        Width = 91
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 556
    Height = 77
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 0
    object Label3: TLabel
      Left = 16
      Top = 9
      Width = 77
      Height = 13
      Alignment = taRightJustify
      Caption = 'Projeto (Cliente):'
    end
    object Label4: TLabel
      Left = 35
      Top = 30
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quantidade:'
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 94
      Top = 2
      Width = 384
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMCadPedido.dsProjeto
      ParentCtl3D = False
      TabOrder = 0
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 94
      Top = 22
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 5
      DisplayFormat = '0.000##'
      ParentCtl3D = False
      TabOrder = 1
    end
    object btnConfirmar: TRzBitBtn
      Left = 95
      Top = 44
      Width = 96
      Caption = 'Confirmar'
      Color = 16776176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnConfirmarClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333377FF333333333000033334224333333333333
        337777FF333333330000333422224333333333333777777FF333333300003342
        2222243333333333777777777F333333000034222A22224333333337777F7777
        7F33333300003222A3A222433333333777F3F7777FF3333300003A2A333A2224
        333333377F333F7777FF3333000033A33333A22243333333F33333F7777FF333
        0000333333333A22243333333333333F7777FF3300003333333333A222433333
        33333333F7777F33000033333333333A22243333333333333F7777F300003333
        33333333A22243333333333333F7777F00003333333333333A22433333333333
        333F7773000033333333333333A22333333333333333F7730000333333333333
        333A33333333333333333F330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object btnExcluir: TRzBitBtn
      Left = 192
      Top = 44
      Width = 113
      Caption = 'Excluir'
      Color = 16776176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnExcluirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
        03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
        33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
        0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
        3333333337FFF7F3333333333000003333333333377777333333}
      NumGlyphs = 2
    end
  end
end
