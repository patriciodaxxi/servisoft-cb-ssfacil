object frmExcluirPed: TfrmExcluirPed
  Left = 78
  Top = 64
  Width = 1173
  Height = 613
  Caption = 'frmExcluirPed'
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
  object pnlPesquisa: TPanel
    Left = 0
    Top = 0
    Width = 1165
    Height = 36
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label5: TLabel
      Left = 22
      Top = 17
      Width = 86
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Emiss'#227'o Inicial:'
    end
    object Label6: TLabel
      Left = 219
      Top = 17
      Width = 81
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Emiss'#227'o Final:'
    end
    object btnConsultar: TNxButton
      Left = 393
      Top = 6
      Width = 153
      Height = 24
      Caption = 'Efetuar Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 2
      Transparent = True
      OnClick = btnConsultarClick
    end
    object NxDatePicker1: TNxDatePicker
      Left = 111
      Top = 9
      Width = 90
      Height = 21
      TabOrder = 0
      Text = '22/05/2013'
      HideFocus = False
      Date = 41416.000000000000000000
      NoneCaption = 'Limpar'
      TodayCaption = 'Hoje'
    end
    object NxDatePicker2: TNxDatePicker
      Left = 303
      Top = 9
      Width = 90
      Height = 21
      TabOrder = 1
      Text = '22/05/2013'
      HideFocus = False
      Date = 41416.000000000000000000
      NoneCaption = 'Limpar'
      TodayCaption = 'Hoje'
    end
    object RadioGroup1: TRadioGroup
      Left = 584
      Top = 2
      Width = 221
      Height = 30
      Caption = ' Selecionar por '
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Pedido'
        'Item')
      TabOrder = 3
      OnClick = RadioGroup1Click
    end
  end
  object pnlPedido: TPanel
    Left = 0
    Top = 36
    Width = 1165
    Height = 28
    Align = alTop
    BevelOuter = bvNone
    Color = 14024682
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 6
      Width = 75
      Height = 16
      Caption = 'Pedidos ....'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object NxButton3: TNxButton
      Left = 104
      Top = 1
      Width = 116
      Height = 24
      Caption = 'Selecionar todos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = NxButton3Click
    end
    object NxButton4: TNxButton
      Left = 220
      Top = 1
      Width = 116
      Height = 24
      Caption = 'Demarcar todos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = NxButton4Click
    end
    object NxButton5: TNxButton
      Left = 336
      Top = 1
      Width = 116
      Height = 24
      Caption = 'Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = NxButton5Click
    end
  end
  object grid_Pedido: TSMDBGrid
    Left = 0
    Top = 64
    Width = 1165
    Height = 263
    Hint = 'Duplo clique para selecionar os Pedidos'
    Align = alClient
    Ctl3D = False
    DataSource = DMExcluirPed.dsConsulta_Ped
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = grid_PedidoDblClick
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
    ColCount = 15
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SELECIONADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Sel.'
        Title.Color = 9109445
        Width = 38
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUM_PEDIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Pedido'
        Title.Color = 9109445
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PEDIDO_CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 9109445
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 93
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTEMISSAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 9109445
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Nome do Cliente'
        Title.Color = 9109445
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 265
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Color = 9109445
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_ITENS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Color = 9109445
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Qtd. Produtos'
        Title.Color = 9109445
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 79
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 9109445
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 9109445
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CONSUMIDOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 9109445
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 294
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUARIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Usu'#225'rio'
        Title.Color = 9109445
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_VENDEDOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 9109445
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 232
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 9109445
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 28
        Visible = True
      end>
  end
  object NxPanel1: TNxPanel
    Left = 0
    Top = 327
    Width = 1165
    Height = 255
    Align = alBottom
    Caption = 'NxPanel1'
    UseDockManager = False
    ParentBackground = False
    TabOrder = 3
    object pnlItens: TPanel
      Left = 0
      Top = 0
      Width = 1165
      Height = 27
      Align = alTop
      BevelOuter = bvNone
      Color = 16777158
      TabOrder = 0
      Visible = False
      object Label2: TLabel
        Left = 8
        Top = 6
        Width = 128
        Height = 16
        Caption = 'Itens do Pedido ....'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object NxButton8: TNxButton
        Left = 140
        Top = 1
        Width = 116
        Height = 24
        Caption = 'Excluir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = NxButton8Click
      end
    end
    object grid_Itens: TSMDBGrid
      Left = 0
      Top = 27
      Width = 1165
      Height = 228
      Align = alClient
      Ctl3D = False
      DataSource = DMExcluirPed.dsConsulta_Itens
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentCtl3D = False
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
      ExOptions = [eoBooleanAsCheckBox, eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 16
      ScrollBars = ssHorizontal
      ColCount = 9
      RowCount = 2
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ITEM'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Item'
          Title.Color = 16769444
          Width = 36
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ID_PRODUTO'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'ID Produto'
          Title.Color = 16769444
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'REFERENCIA'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Title.Color = 16769444
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEPRODUTO'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Nome Produto'
          Title.Color = 16769444
          Width = 457
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNIDADE'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Unid.'
          Title.Color = 16769444
          Width = 64
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTD'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.'
          Title.Color = 16769444
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_UNITARIO'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Unit'#225'rio'
          Title.Color = 16769444
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_TOTAL'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Total'
          Title.Color = 16769444
          Visible = True
        end>
    end
  end
end
