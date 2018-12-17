object frmConsPedido_Fat: TfrmConsPedido_Fat
  Left = 143
  Top = 60
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Consulta Pedidos'
  ClientHeight = 611
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
      Left = 492
      Top = 10
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Caption = 'Pedido (OC):'
    end
    object Label2: TLabel
      Left = 103
      Top = 10
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'Filial:'
    end
    object Label3: TLabel
      Left = 91
      Top = 32
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente:'
    end
    object Label4: TLabel
      Left = 29
      Top = 76
      Width = 97
      Height = 13
      Alignment = taRightJustify
      Caption = 'Refer'#234'ncia/Produto:'
    end
    object Label6: TLabel
      Left = 229
      Top = 98
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
    end
    object Label5: TLabel
      Left = 53
      Top = 98
      Width = 73
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Faturado Ini:'
    end
    object Label7: TLabel
      Left = 53
      Top = 54
      Width = 73
      Height = 13
      Alignment = taRightJustify
      Caption = 'Representante:'
    end
    object Label9: TLabel
      Left = 497
      Top = 76
      Width = 87
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tran'#231'adeira/Tear:'
    end
    object Edit1: TEdit
      Left = 553
      Top = 2
      Width = 150
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 7
      OnKeyDown = Edit1KeyDown
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 127
      Top = 2
      Width = 359
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      LookupField = 'ID'
      LookupDisplay = 'NOME_INTERNO'
      LookupSource = DMConsPedido.dsFilial
      ParentCtl3D = False
      TabOrder = 0
    end
    object ckMostrarPreco: TCheckBox
      Left = 606
      Top = 23
      Width = 97
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Mostrar Pre'#231'o'
      TabOrder = 8
      OnClick = RadioGroup2Click
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 127
      Top = 24
      Width = 359
      Height = 21
      DropDownCount = 15
      Ctl3D = True
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = DMConsPedido.dsCliente
      ParentCtl3D = False
      TabOrder = 1
      OnEnter = RxDBLookupCombo2Enter
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 247
      Top = 68
      Width = 239
      Height = 21
      DropDownCount = 15
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMConsPedido.dsProduto
      TabOrder = 4
      OnChange = RxDBLookupCombo3Change
      OnEnter = RxDBLookupCombo3Enter
    end
    object RxDBLookupCombo4: TRxDBLookupCombo
      Left = 127
      Top = 68
      Width = 121
      Height = 21
      DropDownCount = 15
      Ctl3D = True
      LookupField = 'ID'
      LookupDisplay = 'REFERENCIA'
      LookupSource = DMConsPedido.dsProduto
      ParentCtl3D = False
      TabOrder = 3
      OnChange = RxDBLookupCombo4Change
      OnEnter = RxDBLookupCombo4Enter
    end
    object DateEdit2: TDateEdit
      Left = 255
      Top = 90
      Width = 100
      Height = 21
      Ctl3D = True
      NumGlyphs = 2
      ParentCtl3D = False
      StartOfWeek = Sun
      TabOrder = 6
    end
    object DateEdit1: TDateEdit
      Left = 127
      Top = 90
      Width = 100
      Height = 21
      Ctl3D = True
      NumGlyphs = 2
      ParentCtl3D = False
      StartOfWeek = Sun
      TabOrder = 5
    end
    object RxDBLookupCombo5: TRxDBLookupCombo
      Left = 127
      Top = 46
      Width = 359
      Height = 21
      DropDownCount = 15
      Ctl3D = True
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = DMConsPedido.dsVendedor
      ParentCtl3D = False
      TabOrder = 2
      OnEnter = RxDBLookupCombo5Enter
    end
    object ComboBox2: TComboBox
      Left = 586
      Top = 68
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 9
      Text = 'Ambos'
      Items.Strings = (
        'Ambos'
        'Tran'#231'adeira'
        'Tear')
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 146
    Width = 898
    Height = 465
    ActivePage = TS_Item
    ActivePageDefault = TS_Item
    Align = alClient
    Color = 16755027
    UseColoredTabs = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    FlatColor = clSilver
    ParentColor = False
    ParentFont = False
    TabColors.Unselected = clGray
    TabIndex = 0
    TabOrder = 1
    TextColors.Unselected = 5197647
    FixedDimension = 19
    object TS_Item: TRzTabSheet
      Color = 16755027
      Caption = 'Consulta Por Item (Produto)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 25
        Width = 700
        Height = 417
        Align = alClient
        Ctl3D = False
        DataSource = DMConsPedido.dsPedido_Fat
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
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
        ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        OnGetCellParams = SMDBGrid1GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 24
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'FILIAL'
            Width = 26
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DESC_TIPO_PRODUCAO'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Produ'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERIE'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DESC_NOTA'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Width = 31
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMNOTA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTEMISSAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEM_NOTA'
            Width = 29
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUM_PEDIDO'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PEDIDO_CLIENTE'
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEM_PEDIDO'
            Title.Caption = 'Item Ped.'
            Width = 27
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Width = 249
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESOBRUTO'
            Title.Alignment = taCenter
            Title.Caption = 'Peso'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_UNITARIO'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_TOTAL'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REFERENCIA'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_PRODUTO'
            Width = 321
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTENTREGA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_PEDIDO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_FATURADO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_RESTANTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_RESTANTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_COR_COMBINACAO'
            Title.Alignment = taCenter
            Title.Caption = 'Cor Combina'#231#227'o'
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 894
        Height = 25
        Align = alTop
        Color = clSilver
        TabOrder = 1
        object Label8: TLabel
          Left = 24
          Top = 8
          Width = 100
          Height = 13
          Caption = 'Ordem de Impress'#227'o:'
        end
        object ComboBox1: TComboBox
          Left = 126
          Top = 2
          Width = 168
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 0
          Text = 'Por Pedido'
          Items.Strings = (
            'Por Pedido'
            'Por Nota'
            'Por Tipo Produ'#231#227'o')
        end
      end
      object SMDBGrid3: TSMDBGrid
        Left = 700
        Top = 25
        Width = 194
        Height = 417
        Align = alRight
        Ctl3D = False
        DataSource = DMConsPedido.dsTipoMaterial
        Options = [dgEditing, dgTitles, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
        ColCount = 2
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'DESC_TIPO_MATERIAL'
            Title.Alignment = taCenter
            Title.Caption = 'Material'
            Title.Color = 13434828
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESOBRUTO'
            Title.Alignment = taCenter
            Title.Caption = 'Peso'
            Title.Color = 13434828
            Width = 84
            Visible = True
          end>
      end
    end
    object TS_Pedido: TRzTabSheet
      Color = 16755027
      Caption = 'Pedido (OC)'
      object SMDBGrid4: TSMDBGrid
        Left = 0
        Top = 0
        Width = 894
        Height = 442
        Align = alClient
        Ctl3D = False
        DataSource = DMConsPedido.dsPedido_FatPed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnTitleClick = SMDBGrid4TitleClick
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
        OnGetCellParams = SMDBGrid1GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 8
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'FILIAL'
            Title.Alignment = taCenter
            Title.Caption = 'Filial'
            Width = 36
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTEMISSAO'
            Title.Alignment = taCenter
            Title.Caption = 'Data Nota'
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PEDIDO_CLIENTE'
            Title.Alignment = taCenter
            Title.Caption = 'Pedido Cliente (OC)'
            Width = 119
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUM_PEDIDO'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Ped. Interno'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FANTASIA'
            Title.Alignment = taCenter
            Title.Caption = 'Cliente (Fantasia)'
            Width = 286
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_NOTA'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_TOTAL'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Total'
            Width = 89
            Visible = True
          end>
      end
    end
    object TS_Fatura: TRzTabSheet
      Color = 16755027
      Caption = 'Pedidos - Faturas'
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 0
        Width = 894
        Height = 442
        Align = alClient
        Ctl3D = False
        DataSource = DMConsPedido.dsPedidoFaturas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnTitleClick = SMDBGrid4TitleClick
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
        OnGetCellParams = SMDBGrid1GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 8
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'PEDIDO_CLIENTE'
            Title.Caption = 'Pedido'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_CLIENTE'
            Title.Caption = 'Cliente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMNOTA'
            Title.Caption = 'Nota'
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTEMISSAO'
            Title.Caption = 'Emiss'#227'o'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEM'
            Title.Caption = 'Parcela'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTVENCIMENTO'
            Title.Caption = 'Vencimento'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_VENCIMENTO'
            Title.Caption = 'Valor'
            Width = 77
            Visible = True
          end>
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 115
    Width = 898
    Height = 31
    Align = alTop
    Color = clSilver
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 127
      Top = 4
      Width = 98
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
    object BitBtn2: TBitBtn
      Left = 225
      Top = 4
      Width = 98
      Height = 25
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object BitBtn3: TBitBtn
      Left = 323
      Top = 4
      Width = 98
      Height = 25
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
  end
  object UCControls1: TUCControls
    GroupName = 'Consulta Pedido Faturado'
    UserControl = fMenu.UserControl1
    NotAllowed = naInvisible
    Left = 768
    Top = 40
  end
end
