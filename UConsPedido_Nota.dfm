object frmConsPedido_Nota: TfrmConsPedido_Nota
  Left = 212
  Top = 174
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Notas/Baixas Pedido'
  ClientHeight = 481
  ClientWidth = 1041
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
    Width = 1041
    Height = 295
    Align = alTop
    TabOrder = 0
    object RzGroupBox2: TRzGroupBox
      Left = 1
      Top = 1
      Width = 580
      Height = 293
      Align = alClient
      BorderColor = clNavy
      BorderInner = fsButtonUp
      BorderOuter = fsBump
      Caption = ' Notas dos Pedidos '
      Color = clSilver
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
      object SMDBGrid3: TSMDBGrid
        Left = 5
        Top = 18
        Width = 570
        Height = 270
        Align = alClient
        Ctl3D = False
        DataSource = DMConsPedido.dsPedido_Nota
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
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
        ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 16
        ScrollBars = ssHorizontal
        ColCount = 8
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SERIE'
            Title.Alignment = taCenter
            Title.Caption = 'S'#233'rie'
            Width = 34
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUMNOTA'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Nota'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ITEM_NOTA'
            Title.Alignment = taCenter
            Title.Caption = 'Item Nota'
            Width = 79
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTD'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Width = 91
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTEMISSAO'
            Title.Alignment = taCenter
            Title.Caption = 'Data Emiss'#227'o'
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO_NOTA'
            Title.Alignment = taCenter
            Title.Caption = 'E/S'
            Width = 30
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ITEM_PEDIDO'
            Title.Alignment = taCenter
            Title.Caption = 'Item Ped.'
            Visible = True
          end>
      end
    end
    object RzGroupBox3: TRzGroupBox
      Left = 581
      Top = 1
      Width = 459
      Height = 293
      Align = alRight
      BorderColor = clNavy
      BorderInner = fsButtonUp
      BorderOuter = fsBump
      Caption = ' Vales do Pedido '
      Color = clSilver
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
      object SMDBGrid1: TSMDBGrid
        Left = 5
        Top = 18
        Width = 449
        Height = 270
        Align = alClient
        Ctl3D = False
        DataSource = DMConsPedido.dsPedido_Vale
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
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
        ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 16
        ScrollBars = ssHorizontal
        ColCount = 6
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'NUM_VALE'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Vale'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEM_VALE'
            Title.Alignment = taCenter
            Title.Caption = 'Item'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTEMISSAO'
            Title.Alignment = taCenter
            Title.Caption = 'Dt. Emiss'#227'o'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.'
            Width = 103
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ITEM_PEDIDO'
            Title.Alignment = taCenter
            Title.Caption = 'Item Ped.'
            Visible = True
          end>
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 295
    Width = 1041
    Height = 297
    Align = alTop
    Caption = 'Panel3'
    TabOrder = 1
    object RzGroupBox1: TRzGroupBox
      Left = 595
      Top = 1
      Width = 445
      Height = 295
      Align = alRight
      BorderColor = clNavy
      BorderInner = fsButtonUp
      BorderOuter = fsBump
      Caption = ' Pedido Enviado Sem Cobran'#231'a '
      Color = clSilver
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
        Width = 435
        Height = 272
        Align = alClient
        Ctl3D = False
        DataSource = DMConsPedido.dsPedido_Fut
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
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
        ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 16
        ScrollBars = ssHorizontal
        ColCount = 8
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SERIE'
            Title.Alignment = taCenter
            Title.Caption = 'S'#233'rie'
            Width = 34
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUMNOTA'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Nota'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ITEM_NOTA'
            Title.Alignment = taCenter
            Title.Caption = 'Item Nota'
            Width = 43
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTD'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Width = 91
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTEMISSAO'
            Title.Alignment = taCenter
            Title.Caption = 'Data Emiss'#227'o'
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO_NOTA'
            Title.Alignment = taCenter
            Title.Caption = 'E/S'
            Width = 30
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ITEM_PEDIDO'
            Title.Alignment = taCenter
            Title.Caption = 'Item Ped.'
            Visible = True
          end>
      end
    end
    object RzGroupBox4: TRzGroupBox
      Left = 1
      Top = 1
      Width = 594
      Height = 295
      Align = alClient
      BorderColor = clNavy
      BorderInner = fsButtonUp
      BorderOuter = fsBump
      Caption = ' Baixa Manual '
      Color = clSilver
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
      object SMDBGrid4: TSMDBGrid
        Left = 52
        Top = 18
        Width = 537
        Height = 272
        Align = alRight
        Anchors = [akLeft, akTop, akRight, akBottom]
        Ctl3D = False
        DataSource = DMConsPedido.dsBaixa_Pedido
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
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
        ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 16
        ScrollBars = ssHorizontal
        ColCount = 8
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Mov Baixa'
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTBAIXA'
            Title.Alignment = taCenter
            Title.Caption = 'Data Baixa'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_MOVESTOQUE'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Mov Estoque'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO_BAIXA'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo da Baixa'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ITEM_PEDIDO'
            Title.Alignment = taCenter
            Title.Caption = 'Item Ped.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUM_OS'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' OS'
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 5
        Top = 18
        Width = 46
        Height = 272
        Align = alLeft
        BevelOuter = bvNone
        Color = clSilver
        TabOrder = 1
        object RzBitBtn1: TRzBitBtn
          Left = 3
          Top = 20
          Width = 42
          Height = 60
          AlignmentVertical = avBottom
          Caption = 'Excluir Baixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btnExcluirBaixaClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000040404040404040
            4040404040202020000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF404040808080BFBFBFDFDFDF9F9F9FBFBFBF707070606060000000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040BFBFBF7F7F7FBFBFBF60
            6060DFDFDFA0A0A0404040000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF404040BFBFBF7F7F7FBFBFBF606060DFDFDFA0A0A0404040000000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040BFBFBF7F7F7FBFBFBF60
            6060DFDFDFA0A0A0404040000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF404040BFBFBF7F7F7FBFBFBF606060DFDFDFA0A0A0404040000000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040BFBFBF7F7F7FBFBFBF60
            6060DFDFDFA0A0A0404040000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF404040BFBFBF7F7F7FBFBFBF606060DFDFDFA0A0A0404040000000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040BFBFBF7F7F7FBFBFBF60
            6060DFDFDFA0A0A0404040000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF404040BFBFBF7F7F7FBFBFBF606060DFDFDFA0A0A0404040000000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040909090FFFFFFFFFFFFBF
            BFBFDFDFDF909090808080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            000000202020404040A0A0A0A0A0A0A0A0A09090904040400000000000000000
            00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000005050506F6F6FBFBFBFBFBFBFBF
            BFBFAFAFAF606060404040000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF0000003F3F3FAFAFAF202020000000FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Layout = blGlyphTop
        end
      end
    end
  end
  object UCControls1: TUCControls
    GroupName = 'Excluir Baixa Pedido/Ordem de Comrpa'
    UserControl = fMenu.UserControl1
    NotAllowed = naDisabled
    Left = 160
    Top = 241
  end
end
