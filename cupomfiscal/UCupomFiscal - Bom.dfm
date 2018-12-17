object fCupomFiscal: TfCupomFiscal
  Left = 3
  Top = 3
  Width = 1292
  Height = 727
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Emiss'#227'o Cupom Fiscal'
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
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 400
    Top = 0
    Width = 884
    Height = 696
    Align = alClient
    TabOrder = 1
    object SMDBGrid1: TSMDBGrid
      Left = 1
      Top = 1
      Width = 882
      Height = 476
      Align = alClient
      Ctl3D = False
      DataSource = dmCupomFiscal.dsCupom_Itens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
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
      ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoRowHeightAutofit, eoTitleWordWrap]
      OnGetCellParams = SMDBGrid1GetCellParams
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 22
      ScrollBars = ssHorizontal
      ColCount = 7
      RowCount = 2
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ITEM'
          Title.Alignment = taCenter
          Title.Caption = 'Item'
          Title.Color = 16777183
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 49
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ID_PRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Color = 16777183
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REFERENCIA'
          Title.Caption = 'Refer'#234'ncia'
          Title.Color = 16777183
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 116
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEPRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'Produto'
          Title.Color = 16777183
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 358
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTD'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.'
          Title.Color = 16777183
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_TOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr.Total'
          Title.Color = 16777183
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 71
          Visible = True
        end>
    end
    object SMDBGrid2: TSMDBGrid
      Left = 1
      Top = 531
      Width = 882
      Height = 110
      Align = alBottom
      Ctl3D = False
      DataSource = dmCupomFiscal.dsCupom_Parc
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Visible = False
      OnDblClick = SMDBGrid2DblClick
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
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      RowCount = 2
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PARCELA'
          Title.Alignment = taCenter
          Title.Caption = 'Parcela'
          Width = 56
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DTVENCIMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Dt. Vencimento'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_VENCIMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Vencimento'
          Width = 119
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_COBRANCA'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo Cobran'#231'a'
          Width = 191
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 1
      Top = 477
      Width = 882
      Height = 54
      Align = alBottom
      Anchors = [akLeft, akBottom]
      Color = clSilver
      Constraints.MaxHeight = 126
      Constraints.MinWidth = 400
      Enabled = False
      TabOrder = 2
      object Label7: TLabel
        Left = 4
        Top = 24
        Width = 236
        Height = 25
        Alignment = taRightJustify
        Caption = 'Valor Total do Cupom:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -21
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Shape1: TShape
        Left = 243
        Top = 5
        Width = 241
        Height = 44
        Brush.Color = clGray
        Pen.Color = clNavy
        Pen.Width = 2
        Shape = stRoundRect
      end
      object DBEdit1: TDBEdit
        Left = 252
        Top = 8
        Width = 222
        Height = 38
        BorderStyle = bsNone
        Color = clGray
        DataField = 'VLR_TOTAL'
        DataSource = dmCupomFiscal.dsCupomFiscal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -33
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 641
      Width = 882
      Height = 54
      Align = alBottom
      Anchors = [akLeft, akBottom]
      Color = clSilver
      Constraints.MaxHeight = 126
      Constraints.MinWidth = 400
      Enabled = False
      TabOrder = 3
      Visible = False
      object Label18: TLabel
        Left = 28
        Top = 12
        Width = 59
        Height = 13
        Caption = 'Vendedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 8
        Top = 36
        Width = 79
        Height = 13
        Caption = 'Observa'#231#245'es:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit2: TDBEdit
        Left = 89
        Top = 4
        Width = 214
        Height = 21
        DataField = 'NOME_VENDEDOR'
        DataSource = dmCupomFiscal.dsCupomFiscal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 89
        Top = 28
        Width = 214
        Height = 21
        DataField = 'CLIENTE_OBS'
        DataSource = dmCupomFiscal.dsCupomFiscal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 400
    Height = 696
    Align = alLeft
    BevelOuter = bvNone
    Constraints.MinWidth = 400
    TabOrder = 0
    object Panel4: TPanel
      Left = 0
      Top = 29
      Width = 400
      Height = 300
      Align = alTop
      Color = clBlack
      Constraints.MaxHeight = 300
      Constraints.MaxWidth = 400
      Constraints.MinHeight = 225
      Constraints.MinWidth = 400
      TabOrder = 0
      object Label4: TLabel
        Left = 3
        Top = 145
        Width = 78
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vlr.Unit'#225'rio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 15
        Top = 251
        Width = 65
        Height = 13
        Alignment = taRightJustify
        Caption = 'Sub.Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 34
        Top = 168
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vlr.IPI:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 8
        Top = 214
        Width = 64
        Height = 13
        Alignment = taRightJustify
        Caption = 'Desconto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 214
        Top = 164
        Width = 151
        Height = 12
        Alignment = taCenter
        Caption = '(IPI inclu'#237'do no valor unit'#225'rio)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 59
        Top = 192
        Width = 20
        Height = 13
        Alignment = taRightJustify
        Caption = 'ST:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label15: TLabel
        Left = 81
        Top = 214
        Width = 14
        Height = 13
        Alignment = taRightJustify
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label16: TLabel
        Left = 155
        Top = 214
        Width = 16
        Height = 13
        Alignment = taRightJustify
        Caption = 'R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label17: TLabel
        Left = 254
        Top = 214
        Width = 34
        Height = 13
        Alignment = taRightJustify
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ValueListEditor1: TValueListEditor
        Left = 1
        Top = 96
        Width = 398
        Height = 203
        Align = alBottom
        FixedColor = clInfoBk
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect, goThumbTracking]
        TabOrder = 10
        TitleCaptions.Strings = (
          'ID'
          'NOME')
        Visible = False
        OnDblClick = ValueListEditor1DblClick
        OnKeyDown = ValueListEditor1KeyDown
        ColWidths = (
          34
          358)
      end
      object CurrencyEdit2: TCurrencyEdit
        Left = 84
        Top = 127
        Width = 298
        Height = 31
        AutoSize = False
        DecimalPlaces = 4
        DisplayFormat = '0.00##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnEnter = CurrencyEdit2Enter
        OnExit = CurrencyEdit2Exit
        OnKeyDown = CurrencyEdit2KeyDown
      end
      object CurrencyEdit3: TCurrencyEdit
        Left = 84
        Top = 233
        Width = 298
        Height = 31
        TabStop = False
        AutoSize = False
        Color = clSilver
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
      end
      object Panel8: TPanel
        Left = 1
        Top = 1
        Width = 398
        Height = 95
        Align = alTop
        BevelOuter = bvNone
        Color = clBlack
        TabOrder = 0
        OnExit = Panel8Exit
        object Label1: TLabel
          Left = 33
          Top = 11
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'C'#243'digo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 40
          Top = 67
          Width = 41
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nome:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 55
          Top = 43
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtd:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 78
          Top = 82
          Width = 281
          Height = 12
          Caption = 'Pressione F2 para consultar o produto, F5 para atualizar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 296
          Top = 4
          Width = 100
          Height = 24
          Caption = 'C'#243'digo de barras ou'#13#10'c'#243'digo de cadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 208
          Top = 38
          Width = 81
          Height = 12
          Caption = 'F3 para ler peso'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Edit2: TEdit
          Left = 360
          Top = 4
          Width = 33
          Height = 21
          Color = clBtnFace
          TabOrder = 2
          Text = '0,00'
          Visible = False
        end
        object Edit1: TEdit
          Left = 84
          Top = 3
          Width = 209
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnEnter = Edit1Enter
          OnExit = Edit1Exit
          OnKeyDown = Edit1KeyDown
        end
        object CurrencyEdit1: TCurrencyEdit
          Left = 84
          Top = 25
          Width = 118
          Height = 31
          AutoSize = False
          Ctl3D = False
          DecimalPlaces = 3
          DisplayFormat = '0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Value = 1.000000000000000000
          OnEnter = CurrencyEdit1Enter
          OnExit = CurrencyEdit1Exit
          OnKeyDown = CurrencyEdit1KeyDown
        end
      end
      object CurrencyEdit5: TCurrencyEdit
        Left = 84
        Top = 160
        Width = 118
        Height = 21
        TabStop = False
        AutoSize = False
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object CurrencyEdit6: TCurrencyEdit
        Left = 101
        Top = 206
        Width = 47
        Height = 25
        AutoSize = False
        DecimalPlaces = 1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnEnter = CurrencyEdit6Enter
        OnExit = CurrencyEdit6Exit
        OnKeyDown = CurrencyEdit6KeyDown
      end
      object RxDBLookupCombo2: TRxDBLookupCombo
        Left = 84
        Top = 183
        Width = 118
        Height = 21
        DropDownCount = 8
        LookupField = 'ID'
        LookupDisplay = 'CODIGO'
        LookupSource = dmCupomFiscal.dsSitTribCF
        TabOrder = 5
        TabStop = False
        Visible = False
        OnEnter = RxDBLookupCombo2Enter
      end
      object pnlTamanho: TPanel
        Left = 1
        Top = 96
        Width = 398
        Height = 28
        Align = alTop
        TabOrder = 1
        Visible = False
        object Label14: TLabel
          Left = 24
          Top = 12
          Width = 57
          Height = 13
          Caption = 'Tamanho:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RxDBLookupCombo3: TRxDBLookupCombo
          Left = 83
          Top = 4
          Width = 118
          Height = 21
          DropDownCount = 12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          LookupField = 'TAMANHO'
          LookupDisplay = 'TAMANHO'
          LookupSource = dmCupomFiscal.dsProduto_Tam
          ParentFont = False
          TabOrder = 0
        end
      end
      object Edit3: TEdit
        Left = 85
        Top = 60
        Width = 304
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        OnExit = Edit3Exit
        OnKeyDown = Edit3KeyDown
      end
      object CurrencyEdit4: TCurrencyEdit
        Left = 174
        Top = 206
        Width = 73
        Height = 25
        AutoSize = False
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnEnter = CurrencyEdit4Enter
        OnExit = CurrencyEdit4Exit
        OnKeyDown = CurrencyEdit4KeyDown
      end
      object CurrencyEdit7: TCurrencyEdit
        Left = 292
        Top = 206
        Width = 89
        Height = 25
        AutoSize = False
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnEnter = CurrencyEdit7Enter
        OnExit = CurrencyEdit7Exit
        OnKeyDown = CurrencyEdit7KeyDown
      end
    end
    object PnlParcial: TPanel
      Left = 0
      Top = 365
      Width = 400
      Height = 36
      Align = alTop
      Color = clGray
      Constraints.MaxHeight = 70
      Constraints.MaxWidth = 400
      Constraints.MinHeight = 36
      Constraints.MinWidth = 400
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object btComanda: TNxButton
        Left = 269
        Top = 1
        Width = 130
        Height = 34
        Align = alRight
        Caption = 'F12 Comanda'
        EnableDblClick = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        GlyphSpacing = 5
        ParentFont = False
        TabOrder = 2
        TabStop = False
        Transparent = True
        OnClick = btComandaClick
      end
      object btPedido: TNxButton
        Left = 131
        Top = 1
        Width = 138
        Height = 34
        Align = alClient
        Caption = 'F9 Pedido'
        EnableDblClick = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        GlyphSpacing = 5
        ParentFont = False
        TabOrder = 1
        TabStop = False
        Transparent = True
        OnClick = btPedidoClick
      end
      object btOrcamento: TNxButton
        Left = 1
        Top = 1
        Width = 130
        Height = 34
        Align = alLeft
        Caption = 'F8 Or'#231'amento'
        EnableDblClick = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        GlyphSpacing = 5
        ParentFont = False
        TabOrder = 0
        TabStop = False
        Transparent = True
        OnClick = btOrcamentoClick
      end
    end
    object Panel7: TPanel
      Left = 0
      Top = 650
      Width = 400
      Height = 46
      Align = alBottom
      Anchors = [akLeft, akBottom]
      Color = clGray
      Constraints.MaxHeight = 46
      Constraints.MaxWidth = 400
      Constraints.MinHeight = 46
      Constraints.MinWidth = 400
      TabOrder = 4
      object btCancelar: TNxButton
        Left = 13
        Top = 8
        Width = 187
        Height = 30
        Caption = 'Cancelar produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        GlyphSpacing = 5
        ParentFont = False
        TabOrder = 1
        TabStop = False
        Transparent = True
        OnClick = btCancelarClick
      end
      object btFinalizar: TNxButton
        Left = 199
        Top = 8
        Width = 187
        Height = 30
        Caption = 'F10 Finalizar Cupom'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        GlyphSpacing = 5
        ParentFont = False
        TabOrder = 0
        Transparent = True
        OnClick = btFinalizarClick
      end
    end
    object Panel6: TPanel
      Left = 0
      Top = 401
      Width = 400
      Height = 249
      Align = alClient
      Anchors = [akLeft, akTop, akBottom]
      Constraints.MaxWidth = 400
      Constraints.MinHeight = 160
      Constraints.MinWidth = 400
      TabOrder = 3
      DesignSize = (
        400
        249)
      object Image1: TImage
        Left = 61
        Top = 27
        Width = 278
        Height = 200
        Anchors = [akLeft, akTop, akRight]
        Center = True
        Picture.Data = {
          0A544A504547496D6167653D170000FFD8FFE000104A46494600010101006000
          600000FFDB004300020101020101020202020202020203050303030303060404
          0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
          0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108008200AE03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00E23F
          631FD8C7C51FB737C50BFF0009784AFF0041D3F51D3F4B9357924D5E796281A2
          496188A83145236FDD3A606D0301B9E80FD33FF10ED7C6BFFA1A3E16FF00E0CA
          FF00FF0090E8FF008376BFE4F5BC51FF006245DFFE97E9F5FB355F9F64190613
          178455AB277BBEA7F6DF8D3E34F1370CF134B2BCAE505494212F7A09BBB5AEA7
          E32FFC43B5F1AFFE868F85BFF832BFFF00E43A3FE21DAF8D7FF4347C2DFF00C1
          95FF00FF0021D7ECD515EDFF00AA397F67F79F937FC4CCF1BFF3D3FF00C16BFC
          CFC65FF8876BE35FFD0D1F0B7FF0657FFF00C8747FC43B5F1AFF00E868F85BFF
          00832BFF00FE43AFD9AA28FF005472FECFEF0FF8999E37FE7A7FF82D7F99F8CB
          FF0010ED7C6BFF00A1A3E16FFE0CAFFF00F90E8FF8876BE35FFD0D1F0B7FF065
          7FFF00C875FB35451FEA8E5FD9FDE1FF001333C6FF00CF4FFF0005AFF33F197F
          E21DAF8D7FF4347C2DFF00C195FF00FF0021D1FF0010ED7C6BFF00A1A3E16FFE
          0CAFFF00F90EBF66A8A3FD51CBFB3FBC3FE26678DFF9E9FF00E0B5FE67E32FFC
          43B5F1AFFE868F85BFF832BFFF00E43A3FE21DAF8D7FF4347C2DFF00C195FF00
          FF0021D7ECD5147FAA397F67F787FC4CCF1BFF003D3FFC16BFCCFC65FF008876
          BE35FF00D0D1F0B7FF000657FF00FC8747FC43B5F1AFFE868F85BFF832BFFF00
          E43AFD9AA28FF5472FECFEF0FF008999E37FE7A7FF0082D7F99F8CBFF10ED7C6
          BFFA1A3E16FF00E0CAFF00FF0090E8FF008876BE35FF00D0D1F0B7FF000657FF
          00FC875FB35451FEA8E5FD9FDE1FF1333C6FFCF4FF00F05AFF0033F197FE21DA
          F8D7FF004347C2DFFC195FFF00F21D1FF10ED7C6BFFA1A3E16FF00E0CAFF00FF
          0090EBF66A8A3FD51CBFB3FBC3FE26678DFF009E9FFE0B5FE67E32FF00C43B5F
          1AFF00E868F85BFF00832BFF00FE43A3FE21DAF8D7FF004347C2DFFC195FFF00
          F21D7ECD5147FAA397F67F787FC4CCF1BFF3D3FF00C16BFCCFC65FF8876BE35F
          FD0D1F0B7FF0657FFF00C875F147C55F8777BF083E287893C25A94B6B3EA3E17
          D56EB48BA92D999A0925B795A27642CAAC54B21C12A0E31903A57F4E35FCE0FE
          DC7FF27ADF183FEC77D6BFF4BE6AF99E25C9B0D82A509504EEDF567EFBE01F8A
          D9FF0016E618AC3E7128B8D38464B963CBAB958FA93FE0DDAFF93D6F147FD891
          77FF00A5FA7D7ECD57E32FFC1BB5FF0027ADE28FFB122EFF00F4BF4FAFD9AAFA
          5E11FF00917AF567E05F499FF92DE7FF005EE9FE4C28A28AFA73F9F428A28A00
          28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002BF9C1FD
          B8FF00E4F5BE307FD8EFAD7FE97CD5FD1F57F383FB71FF00C9EB7C60FF00B1DF
          5AFF00D2F9ABE278DBF814BD5FE47F5B7D12BFE46F8FFF00AF71FF00D28FA93F
          E0DDAFF93D6F147FD89177FF00A5FA7D7ECD57E32FFC1BB5FF0027ADE28FFB12
          2EFF00F4BF4FAFD9AAEFE11FF917AF567C5FD267FE4B79FF00D7BA7F930A28A2
          BE9CFE7D0A28A2800A2B85FDA03F68EF09FECC3E0FB3D73C5F71AC4365A8EA30
          E93671695A15FEB779797736EF2E18AD6CA19A7919B6B7DD8CF4E6B99F107EDD
          9F0E3C21F0A34AF18EB175E2DD1EC35FD40E93A569BA8782F5AB4F106AD76377
          EE6DB4792D17519DF6A3BE23B76FDDA3C9F714B04A49DEDD1DBE6EDA7AEABEF5
          DC7669A4FAEBF2D75FC1FDCFB1EC145786E9DFF0516F85BAD780355F11585C78
          EF518740D4D348D5F4BB3F87BE21B9D7B46B8784CE82EF494B237F6D1B4403AC
          B340B1B2B290C772E6A781BFE0A6FF0006FE20FC12D43E23DA6B9E26B0F03D84
          16B711EAFAD782B5CD160D545D12B6CBA7FDB2CE26D4249580548ED04AECD246
          A14B48819F77DADF8EDF7F4EE2FEBEED1FDC7BED15E5DF027F6C9F007ED19E29
          D5B40F0E5F6BF69E23D0EDA2BDBCD17C47E18D53C35AAC76D2B32C772B69A95B
          DBCEF03323A89510C7B94AEEDC3156B43FDADBE1E788FF0069BD6BE0DDA788E2
          7F893E1ED263D72FB457B49E374B372804A92B208A5C1962DC237664F313705D
          C3259DD47ABBDBCEC9B76F449B7E49F60BE8DF6DFE764BF1697CD1E8F457CC5F
          B61FED45E7FEC8F69F13FC07F1534DF0078334BD624FEDBF13DCE813EA530861
          7B9B35B682C4DBC924ED26A8B690BC6A8923C267F2658E468A41D6FC39FDA2BF
          E1527EC8D6BF127E31F8BBC33141AA3C9AAA5DE912C97B62B6F7970CDA759591
          16D0CF78E6196DE28C0B7F3E790801199802269A93ED64FE7B7DFADBD1F95DB5
          6E5B6BCD7B7CB7FBB4BDBF9A3E76F70A2BCBBE04FED93E00FDA33C53AB681E1C
          BED7ED3C47A1DB457B79A2F88FC31AA786B558EDA56658EE56D352B7B79DE066
          47512A218F7295DDB862BD469D9ADC574145145200A28A2800AFE707F6E3FF00
          93D6F8C1FF0063BEB5FF00A5F357F47D5FCE0FEDC7FF0027ADF183FEC77D6BFF
          004BE6AF89E36FE052F57F91FD6DF44AFF0091BE3FFEBDC7FF004A3EA4FF0083
          76BFE4F5BC51FF006245DFFE97E9F5FB355F8CBFF06ED7FC9EB78A3FEC48BBFF
          00D2FD3EBF66ABBF847FE45EBD59F17F499FF92DE7FF005EE9FE4C28A28AFA73
          F9F428A28A00F9C7FE0A49F0AFC47F17FC27F0AF4CF0CDEF8A347BD83E24E8F7
          73EB1E1FB282EEF3448116E37DD05B882E20555C805A689D06EE474AE3FE36F8
          1FC4BFB34FED15F04BE236BF3FC47F8C5E16F0668FE22D035CD622D0A2D575ED
          3EE35196C64B5BE3A769169179D1AADB4B6CCD6968CE8B2A33A9532CABF5F514
          A9274EFCBD64E5F7C2306BEE5F7BBF44393E6926FF009797EE72927F7CB6DB4F
          367CA9F012CF56F8D5FB58FC5CF8BD63E17F14F86BC17AEF82747F09E91FDBDA
          34FA36A3E22B9B39F549E6BA361731C7790C69F6D8E18CDC471B4856465431F9
          6EFE3FF0FBE11F8D3E1F7FC138BF62ED6EF3C13E28D45FE0B5C68FAD78BBC2F1
          69B336B305B2E8D7967248962712CD3DACD7314DF6755331F25BCB47902C6DFA
          1745545F2FC1DE0F5D758394B5F57277B5ADF65AD2CDC9CB9B9BED2927E92828
          69E6A297CF5773E53F036BF75FB56FFC1403C17F11BC37E15F1BE85E0AF87BE0
          ED7344BFD63C4FE19BDF0D4FABDE6A373A649159C369A8410DE3C712593CAF37
          9421DD246A8EEC2409E7DF1D7F656F1AF8CBF698F8D3F127C15A45CD97C48F00
          EA1A0788BC037B776C62B4F10BC5A53C37DA579CC00682EA267B790AB7EEE468
          643F344057DDB454C97B908C34E4BB4FCDC9CBD376F4B59AD1DF56D27EF37257
          4FA795AD6EFAAEB7F4B2B25F985F087C3FF1A7E297C04FD9ABC23E1FF8417F04
          361AC6B9F12FC55A4FC4196EFC2D65008F55BB6D334EB9B85B1BC65BAF3EEE3B
          B10884E459062C15949D2F869F0EFE2C7C31F803F0CF49F17FC38D76ED7F65BF
          8B325D5EE93A20B9D662D4FC33269D7BF60B8D29DA181F531609A8DB47B23844
          C5B4F9152132048DBF4AE8AA8BE46DC175E6F2BA945A7F28C543BDAED34F5529
          7BBC92FE5E5F3B38CA2FEF7294B6B5EDA34B5F94FC0DAFDD7ED5BFF0500F05FC
          46F0DF857C6FA1782BE1EF83B5CD12FF0058F13F866F7C353EAF79A8DCE99245
          670DA6A104378F1C4964F2BCDE50877491AA3BB09027D5945145D28460B657FC
          64E4FF00193B795B7776DEADB6FF00AB24BF4FF2B2B245145148028A28A002BF
          9C1FDB8FFE4F5BE307FD8EFAD7FE97CD5FD1F57F383FB71FFC9EB7C60FFB1DF5
          AFFD2F9ABE278DBF814BD5FE47F5B7D12BFE46F8FF00FAF71FFD28FA93FE0DDA
          FF0093D6F147FD89177FFA5FA7D7ECD57E32FF00C1BB5FF27ADE28FF00B122EF
          FF004BF4FAFD9AAEFE11FF00917AF567C5FD267FE4B79FFD7BA7F930A28A2BE9
          CFE7D0A476DA84FA0CD2D23AEF423D462A677E57CBB823E0BF845FB7AFC73D37
          F66CF875F1DBC753FC27D77E1AF8C759B2D2758D1743F0E6A1A46B1E1C8AFB53
          5D36DEEE3BA9750BB8AF44734917991791016477657CA08DEEFC60FF0082947C
          40F077C34F196AD0C3E0BF0DE9DE1CF8CB73F0F6FBC5DA9E8B7DA9E91E0FD1E2
          B78E55D4F50B682E229240D2B240D279F6F0C46E12472AA8C1B7FE0E7FC1317C
          6BE1CF84DE09F85FE3AF8AFE1EF13FC27F026A96DACDAE8DA2F82A5D1B51D626
          B5BE17D6B15FDE4DA8DDA4B6E9384768E1B781A468A305C26F8E4F41F0DFEC85
          F103E0F5978D67F875F13B42D1757F1978F750F19CFF00DB9E0F6D5B4D30DDC1
          1446CE4823BDB7999A36855D668EE221924346C38A237BFBDB59DBFF0002A2D2
          7AAE8AADDDEF67BFC28753A72EF7D7B5B92AABAFFB79D3D36BA5A7C4DF2DE2DF
          DA2BE2EEBD27C09F0EF837C69F04AE356F89F16AF7775E2DB7F0FDEEBDA06A36
          B690ACD6F71656F16A76EC8278DD1883753AC658AABCA0091B97F85BFF00050A
          F897FB44F85BE1E784BC21A77816C7E25F8BB50F125BDF788EEED6EAFF00C310
          69FA06A0B6175AB5ADA24D14F709753496E21B76BA8CC7F6862D3CA21066DAF0
          EFFC11F3C0D7FA2FC3AD3FC7B1F84FE23E9BE10D67C43E24D5B49D63C2169269
          1AB6A3AC399657B7B37678ED21865673121F39C2901A467DD237A6FC72FD8E25
          F12EBFF0FBC4DF0C35DD1FE19F8C3E1759DCE91A0B49A02EA5A11D2EE56049F4
          F9EC239AD98C38B6B768FC99E1689E14C314DF1BD7FCBC6E5F0B6B45E9DF4D14
          B46925CD1BBB2959097C365BABD9F96B656D77D1DDB76692BB57678AFC61FDBA
          3E317ECF5E07F8D5E15D7D3E19EB1F153E1FE89A3788FC37ACD9E977967A16B7
          63A9DF496286E34F6BC96E209209E09D5D56EDC3AB44EACA59A35EBBE09FFC14
          1B5AF8B9ACFC12D2A7D1B49D1BC41E28D6B5BF0B7C41D1E4DD2CFE1CD5F4BD3E
          69A7B7858498D866895D1DC37996F344E00DE0D59F10FF00C13AB59F8A3E0DF8
          8D75E39F88906B7F113E25DB693A6DE6B161E1F361A469361A65E35D5B5AD969
          ED732C88A5E59DA4696EA57792666DC115224D6F15FF00C13BAC354FF828B785
          BF680D1FC4D71A1B69D653C5E20F0E2582C96DE24BBFB1CB676B7C65DEAD0CF1
          413C91336D7F3634814EDF254D38FC569758AD7B3576BEF5EECB4D6767A45326
          A2BDDD3D2CD5BCD3E552FC6F28EBA46EAD77A78D7EC39FB4E5FF008434DF821A
          8C9E19F0968BE19FDA175CF14DA6BF7B6915E497F2789A09EE1ECA596EAE2E65
          79567B2D3EE622252CCAD05BA46C91AAC4B73E397FC14B3C61E1AF016A3E29B2
          D73E15FC37F06DE7C5F6F875A378ABC67633DC69B0E9F6B6B3A5E6A1703EDD66
          ADBB51B5B88622268D3622925CB0AF467FF82705C59FFC13EEC3E0BE9BE3D974
          CF10F87F52FEDCD07C61169197D2B514D59F53B7B816BE77CE11D846C9E68F31
          3702406C0BFE32FD81F52D3BF66DF83DE08F87DE32D37C3BAB7C1BD56C757B0D
          5B5FD064D6E1D52682D6E2091AE6DE2BBB476799AE649599661F393D7358C54A
          D152E9282FFB739E0E4FA3BC62A71B7F2C972DDAD2FECE9BB8C9FF00DBDCB24B
          CBDE6E0EF67EF464E5A3D6AFC18FDADBC41E26F891F07B441E3DF84DF16744F8
          8F63E23BE9BC53E09D364B5D3661A7B5A24496DFF131BD4CABCD324A4CCF9640
          008CA907E9DAF9A7C7FF00B2BFC6BF1B78B7E1DF8CD7E2B7C2DB4F881E034D5E
          D1EE8FC35BF9347D42D6FC5B0DA2CFFB704D1CB1FD987CFF006A756DC7E45C57
          D07E0CB5D62C7C27A743E21BFD3354D762B745BFBCD3AC1EC2D2E6603E778A07
          9A678909C908D34840E0BB75ADB7BBFEBFA5B3F3FBC95A7F5E7FD7FC0D8D3A28
          A290C28A28A002BF9C1FDB8FFE4F5BE307FD8EFAD7FE97CD5FD1F57F383FB71F
          FC9EB7C60FFB1DF5AFFD2F9ABE278DBF814BD5FE47F5B7D12BFE46F8FF00FAF7
          1FFD28FA93FE0DDAFF0093D6F147FD89177FFA5FA7D7ECD57E32FF00C1BB5FF2
          7ADE28FF00B122EFFF004BF4FAFD9AAEFE11FF00917AF567C5FD267FE4B79FFD
          7BA7F930A28A2BE9CFE7D0A28A2800A28A2800A28A2800A28A2800A28A2800A2
          8A2800A28A2800A28A2800AFE707F6E3FF0093D6F8C1FF0063BEB5FF00A5F357
          F47D5FCE0FEDC7FF0027ADF183FEC77D6BFF004BE6AF89E36FE052F57F91FD6D
          F44AFF0091BE3FFEBDC7FF004A3EA4FF008376BFE4F5BC51FF006245DFFE97E9
          F5FB355F8CBFF06ED7FC9EB78A3FEC48BBFF00D2FD3EBF66ABBF847FE45EBD59
          F17F499FF92DE7FF005EE9FE4C28A28AFA73F9F428A28A0028A28A0028A28A00
          28A28A0028A28A0028A28A0028A28A0028A28A002BF9C1FDB8FF00E4F5BE307F
          D8EFAD7FE97CD5FD1F57F383FB71FF00C9EB7C60FF00B1DF5AFF00D2F9ABE278
          DBF814BD5FE47F5B7D12BFE46F8FFF00AF71FF00D28FA93FE0DDAFF93D6F147F
          D89177FF00A5FA7D7ECD57E04FFC12A3F6CEF0BFEC33FB436B3E2DF16D86BFA8
          69DA878767D2238F48822967595EE6D650C44B2C6BB76C0F93B89C95E3A91FA0
          1FF1112FC14FFA15FE297FE0B6C3FF00932970D66B84C3E0953AD5127763F1F7
          C39E26CE78B278ECAF073AB49C20B9A295AE93BADCFBDA8AF827FE2225F829FF
          0042BFC52FFC16D87FF2651FF1112FC14FFA15FE297FE0B6C3FF00932BE83FB7
          B2FF00F9FA8FC5BFE20CF1BFFD0B6A7DCBFCCFBDA8AF827FE2225F829FF42BFC
          52FF00C16D87FF002651FF001112FC14FF00A15FE297FE0B6C3FF9328FEDECBF
          FE7EA0FF008833C6FF00F42DA9F72FF33EF6A2BE09FF0088897E0A7FD0AFF14B
          FF0005B61FFC9947FC444BF053FE857F8A5FF82DB0FF00E4CA3FB7B2FF00F9FA
          83FE20CF1BFF00D0B6A7DCBFCCFBDA8AF827FE2225F829FF0042BFC52FFC16D8
          7FF2651FF1112FC14FFA15FE297FE0B6C3FF009328FEDECBFF00E7EA0FF8833C
          6FFF0042DA9F72FF0033EF6A2BE09FF88897E0A7FD0AFF0014BFF05B61FF00C9
          947FC444BF053FE857F8A5FF0082DB0FFE4CA3FB7B2FFF009FA83FE20CF1BFFD
          0B6A7DCBFCCFBDA8AF827FE2225F829FF42BFC52FF00C16D87FF002651FF0011
          12FC14FF00A15FE297FE0B6C3FF9328FEDECBFFE7EA0FF008833C6FF00F42DA9
          F72FF33EF6A2BE09FF0088897E0A7FD0AFF14BFF0005B61FFC9947FC444BF053
          FE857F8A5FF82DB0FF00E4CA3FB7B2FF00F9FA83FE20CF1BFF00D0B6A7DCBFCC
          FBDA8AF827FE2225F829FF0042BFC52FFC16D87FF2651FF1112FC14FFA15FE29
          7FE0B6C3FF009328FEDECBFF00E7EA0FF8833C6FFF0042DA9F72FF0033EF6A2B
          E09FF88897E0A7FD0AFF0014BFF05B61FF00C9947FC444BF053FE857F8A5FF00
          82DB0FFE4CA3FB7B2FFF009FA83FE20CF1BFFD0B6A7DCBFCCFBDABF9C1FDB8FF
          00E4F5BE307FD8EFAD7FE97CD5FA91FF001112FC14FF00A15FE297FE0B6C3FF9
          32BF267F68EF88B65F17FF00686F1E78B74D8AEA0D3BC51E22D4357B58EE5556
          78E2B8B99254570ACCA1C2B8C80C4673827AD7C9F1666386C4D2A71A135269BD
          BD0FE94FA36702E7F90E658CAD9C61654633845272EAD4AF6DCE2E8A28AF863F
          AF828A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
          A0028A28A0028A28A00FFFD9}
      end
    end
    object pnlCopiar: TPanel
      Left = 0
      Top = 0
      Width = 400
      Height = 29
      Align = alTop
      TabOrder = 5
      object btnCopiarSacola: TBitBtn
        Left = 6
        Top = 2
        Width = 111
        Height = 25
        Caption = 'Copiar Sacola'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = False
        Visible = False
        OnClick = btnCopiarSacolaClick
      end
      object btnCopiarPedido: TBitBtn
        Left = 120
        Top = 2
        Width = 111
        Height = 25
        Caption = 'Copiar Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TabStop = False
        Visible = False
        OnClick = btnCopiarPedidoClick
      end
      object btnCopiarComanda: TBitBtn
        Left = 234
        Top = 2
        Width = 111
        Height = 25
        Caption = 'Copiar Comanda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TabStop = False
        Visible = False
        OnClick = btnCopiarComandaClick
      end
    end
    object Panel9: TPanel
      Left = 0
      Top = 329
      Width = 400
      Height = 36
      Align = alTop
      Color = clGray
      Constraints.MaxHeight = 70
      Constraints.MaxWidth = 400
      Constraints.MinHeight = 36
      Constraints.MinWidth = 400
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object BtPreco: TNxButton
        Left = 1
        Top = 1
        Width = 100
        Height = 34
        Align = alLeft
        Caption = 'F4  Pre'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 33023
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        GlyphSpacing = 5
        ParentFont = False
        TabOrder = 1
        Transparent = True
        OnClick = btPrecoClick
      end
      object btConfirmarIt: TNxButton
        Left = 201
        Top = 1
        Width = 198
        Height = 34
        Align = alClient
        Caption = 'F7  Confirmar produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        GlyphSpacing = 5
        ParentFont = False
        TabOrder = 0
        Transparent = True
        OnClick = btConfirmarItClick
      end
      object btCliente: TNxButton
        Left = 101
        Top = 1
        Width = 100
        Height = 34
        Align = alLeft
        Caption = 'F6  Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clOlive
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        GlyphSpacing = 5
        ParentFont = False
        TabOrder = 2
        Transparent = True
        OnClick = btClienteClick
      end
    end
  end
  object UCControls1: TUCControls
    GroupName = 'Cupom'
    UserControl = fMenu.UserControl1
    NotAllowed = naInvisible
    Left = 361
    Top = 614
  end
end
