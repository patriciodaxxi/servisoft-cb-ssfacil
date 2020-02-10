object fCupomFiscal: TfCupomFiscal
  Left = 23
  Top = 1
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
    Left = 388
    Top = 0
    Width = 888
    Height = 688
    Align = alClient
    TabOrder = 1
    object SMDBGrid1: TSMDBGrid
      Left = 1
      Top = 1
      Width = 886
      Height = 469
      Align = alClient
      Color = 12633514
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
      ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoRowHeightAutofit, eoTitleWordWrap]
      OnGetCellParams = SMDBGrid1GetCellParams
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 22
      ScrollBars = ssHorizontal
      ColCount = 10
      RowCount = 2
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ITEM'
          Title.Alignment = taCenter
          Title.Caption = 'It.'
          Title.Color = 5585152
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -13
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 39
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ID_PRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Color = 5585152
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -13
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REFERENCIA'
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Title.Color = 5585152
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -13
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 111
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEPRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'Produto'
          Title.Color = 5585152
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
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
          Title.Color = 5585152
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -13
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_UNITARIO'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr.Unit.'
          Title.Color = 5585152
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -13
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_DESCONTO'
          Title.Caption = 'DESC.'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_DESCONTORATEIO'
          Title.Caption = 'DESC. RAT.'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_TOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr.Total'
          Title.Color = 5585152
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -13
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 72
          Visible = True
        end>
    end
    object SMDBGrid2: TSMDBGrid
      Left = 1
      Top = 524
      Width = 886
      Height = 110
      Align = alBottom
      Color = 12633514
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
      Top = 470
      Width = 886
      Height = 54
      Align = alBottom
      Anchors = [akLeft, akBottom]
      Color = 3683329
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
        Color = 3683329
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label10: TLabel
        Left = 493
        Top = 31
        Width = 83
        Height = 18
        Alignment = taRightJustify
        Caption = 'Desconto:'
        Color = 3683329
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Visible = False
      end
      object DBEdit1: TDBEdit
        Left = 244
        Top = 6
        Width = 236
        Height = 46
        Color = 12633514
        Ctl3D = False
        DataField = 'VLR_TOTAL'
        DataSource = dmCupomFiscal.dsCupomFiscal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 3683329
        Font.Height = -33
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit5: TDBEdit
        Left = 580
        Top = 20
        Width = 117
        Height = 29
        Color = 12633514
        Ctl3D = False
        DataField = 'VLR_DESCONTO'
        DataSource = dmCupomFiscal.dsCupomFiscal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 3683329
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Visible = False
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 634
      Width = 886
      Height = 53
      Align = alBottom
      Anchors = [akLeft, akBottom]
      Color = 7300393
      Constraints.MaxHeight = 126
      Constraints.MinWidth = 400
      TabOrder = 3
      Visible = False
      object Label18: TLabel
        Left = 28
        Top = 13
        Width = 59
        Height = 13
        Caption = 'Vendedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
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
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 316
        Top = 36
        Width = 27
        Height = 13
        Caption = 'CPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit2: TDBEdit
        Left = 89
        Top = 5
        Width = 214
        Height = 19
        Ctl3D = False
        DataField = 'NOME_VENDEDOR'
        DataSource = dmCupomFiscal.dsCupomFiscal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5585152
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 89
        Top = 28
        Width = 214
        Height = 19
        Ctl3D = False
        DataField = 'CLIENTE_OBS'
        DataSource = dmCupomFiscal.dsCupomFiscal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5585152
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 345
        Top = 28
        Width = 128
        Height = 19
        Ctl3D = False
        DataField = 'CPF'
        DataSource = dmCupomFiscal.dsCupomFiscal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5585152
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        OnKeyDown = DBEdit4KeyDown
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 388
    Height = 688
    Align = alLeft
    BevelOuter = bvNone
    Constraints.MinWidth = 380
    TabOrder = 0
    object Panel4: TPanel
      Left = 0
      Top = 29
      Width = 388
      Height = 300
      Align = alTop
      Color = 3683329
      Constraints.MaxHeight = 300
      Constraints.MaxWidth = 400
      Constraints.MinHeight = 225
      Constraints.MinWidth = 380
      TabOrder = 0
      object Label5: TLabel
        Left = 22
        Top = 266
        Width = 58
        Height = 13
        Alignment = taRightJustify
        Caption = 'Subtotal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ValueListEditor1: TValueListEditor
        Left = 1
        Top = 108
        Width = 386
        Height = 191
        Align = alBottom
        FixedColor = clInfoBk
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect, goThumbTracking]
        TabOrder = 4
        TitleCaptions.Strings = (
          'ID'
          'NOME            (Pressione ESC para fechar)')
        Visible = False
        OnDblClick = ValueListEditor1DblClick
        OnKeyDown = ValueListEditor1KeyDown
        ColWidths = (
          34
          346)
      end
      object CurrencyEdit3: TCurrencyEdit
        Left = 84
        Top = 245
        Width = 298
        Height = 35
        TabStop = False
        AutoSize = False
        Color = 12633514
        Ctl3D = False
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 3683329
        Font.Height = -24
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object Panel8: TPanel
        Left = 1
        Top = 1
        Width = 386
        Height = 144
        Align = alTop
        BevelOuter = bvNone
        Color = 3683329
        TabOrder = 0
        OnExit = Panel8Exit
        object Label1: TLabel
          Left = 33
          Top = 20
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
        object Label3: TLabel
          Left = 55
          Top = 53
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
          Left = 85
          Top = 96
          Width = 281
          Height = 12
          Caption = 'Pressione F2 para consultar o produto, F5 para atualizar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 296
          Top = 4
          Width = 88
          Height = 24
          Caption = 'C'#243'd. de barras ou'#13#10'c'#243'd. de cadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 296
          Top = 54
          Width = 81
          Height = 12
          Caption = 'F3 para ler peso'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 40
          Top = 85
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
        object Label4: TLabel
          Left = 3
          Top = 127
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
        object Edit1: TEdit
          Left = 84
          Top = 4
          Width = 209
          Height = 29
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5585152
          Font.Height = -19
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnEnter = Edit1Enter
          OnExit = Edit1Exit
          OnKeyDown = Edit1KeyDown
        end
        object CurrencyEdit1: TCurrencyEdit
          Left = 84
          Top = 35
          Width = 209
          Height = 31
          AutoSize = False
          Ctl3D = False
          DecimalPlaces = 3
          DisplayFormat = '0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5585152
          Font.Height = -19
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          Value = 1.000000000000000000
          OnEnter = CurrencyEdit1Enter
          OnExit = CurrencyEdit1Exit
          OnKeyDown = CurrencyEdit1KeyDown
        end
        object Edit3: TEdit
          Left = 84
          Top = 68
          Width = 301
          Height = 30
          AutoSize = False
          CharCase = ecUpperCase
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5585152
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          OnExit = Edit3Exit
          OnKeyDown = Edit3KeyDown
        end
        object Edit2: TEdit
          Left = 352
          Top = 4
          Width = 33
          Height = 21
          TabStop = False
          Color = clBtnFace
          TabOrder = 3
          Text = '0,00'
          Visible = False
        end
        object CurrencyEdit2: TCurrencyEdit
          Left = 84
          Top = 109
          Width = 209
          Height = 31
          AutoSize = False
          BorderStyle = bsNone
          Ctl3D = False
          DecimalPlaces = 4
          DisplayFormat = '0.00##'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5585152
          Font.Height = -19
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
          OnEnter = CurrencyEdit2Enter
          OnExit = CurrencyEdit2Exit
          OnKeyDown = CurrencyEdit2KeyDown
        end
      end
      object pnlDesconto: TPanel
        Left = 1
        Top = 173
        Width = 386
        Height = 56
        Align = alTop
        TabOrder = 2
        object Label9: TLabel
          Left = 9
          Top = 5
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = 'Desconto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3683329
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 9
          Top = 37
          Width = 14
          Height = 13
          Alignment = taRightJustify
          Caption = '%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3683329
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 115
          Top = 37
          Width = 16
          Height = 13
          Alignment = taRightJustify
          Caption = 'R$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3683329
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 214
          Top = 37
          Width = 34
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3683329
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CurrencyEdit4: TCurrencyEdit
          Left = 134
          Top = 25
          Width = 73
          Height = 25
          AutoSize = False
          Ctl3D = False
          DisplayFormat = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5585152
          Font.Height = -15
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          OnEnter = CurrencyEdit4Enter
          OnExit = CurrencyEdit4Exit
          OnKeyDown = CurrencyEdit4KeyDown
        end
        object CurrencyEdit6: TCurrencyEdit
          Left = 29
          Top = 25
          Width = 74
          Height = 25
          AutoSize = False
          Ctl3D = False
          DecimalPlaces = 1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5585152
          Font.Height = -15
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnEnter = CurrencyEdit6Enter
          OnExit = CurrencyEdit6Exit
          OnKeyDown = CurrencyEdit6KeyDown
        end
        object CurrencyEdit7: TCurrencyEdit
          Left = 251
          Top = 19
          Width = 130
          Height = 31
          AutoSize = False
          Ctl3D = False
          DisplayFormat = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5585152
          Font.Height = -19
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          OnEnter = CurrencyEdit7Enter
          OnExit = CurrencyEdit7Exit
          OnKeyDown = CurrencyEdit7KeyDown
        end
      end
      object pnlTamanho: TPanel
        Left = 1
        Top = 145
        Width = 386
        Height = 28
        Align = alTop
        Color = 7300393
        TabOrder = 1
        Visible = False
        object Label6: TLabel
          Left = 24
          Top = 12
          Width = 57
          Height = 13
          Caption = 'Tamanho:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object RxDBLookupCombo1: TRxDBLookupCombo
          Left = 83
          Top = 4
          Width = 118
          Height = 21
          DropDownCount = 12
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5585152
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          LookupField = 'TAMANHO'
          LookupDisplay = 'TAMANHO'
          LookupSource = dmCupomFiscal.dsProduto_Tam
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object PnlParcial: TPanel
      Left = 0
      Top = 598
      Width = 388
      Height = 36
      Align = alBottom
      Color = 5585152
      Constraints.MaxHeight = 70
      Constraints.MaxWidth = 400
      Constraints.MinHeight = 36
      Constraints.MinWidth = 380
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object btComanda: TNxButton
        Left = 257
        Top = 1
        Width = 130
        Height = 34
        Align = alRight
        Caption = 'F12 Comanda'
        EnableDblClick = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -15
        Font.Name = 'Verdana'
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
        Width = 126
        Height = 34
        Align = alClient
        Caption = 'F9 Pedido'
        EnableDblClick = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -15
        Font.Name = 'Verdana'
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
        Font.Name = 'Verdana'
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
      Top = 634
      Width = 388
      Height = 54
      Align = alBottom
      Anchors = [akLeft, akBottom]
      Color = 3683329
      Constraints.MaxHeight = 54
      Constraints.MaxWidth = 400
      Constraints.MinHeight = 54
      Constraints.MinWidth = 380
      TabOrder = 4
      object btCancelar: TNxButton
        Left = 6
        Top = 12
        Width = 187
        Height = 30
        Caption = 'Cancelar produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        GlyphSpacing = 5
        ParentFont = False
        TabOrder = 1
        TabStop = False
        Transparent = True
        OnClick = btCancelarClick
      end
      object btFinalizar: TNxButton
        Left = 194
        Top = 12
        Width = 187
        Height = 30
        Caption = 'F10 Finalizar Cupom'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Verdana'
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
      Top = 365
      Width = 388
      Height = 233
      Align = alClient
      Anchors = [akLeft, akTop, akBottom]
      Color = clBlack
      Constraints.MaxWidth = 400
      Constraints.MinHeight = 160
      Constraints.MinWidth = 380
      TabOrder = 3
      DesignSize = (
        388
        233)
      object Image1: TImage
        Left = 34
        Top = 5
        Width = 320
        Height = 240
        Anchors = [akLeft, akTop, akRight, akBottom]
        Center = True
        Picture.Data = {
          0A544A504547496D616765F1340000FFD8FFE000104A46494600010101006000
          600000FFE100224578696600004D4D002A000000080001011200030000000100
          01000000000000FFDB0043000201010201010202020202020202030503030303
          030604040305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C
          0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800F00140030122000211
          01031101FFC4001F000001050101010101010000000000000000010203040506
          0708090A0BFFC400B5100002010303020403050504040000017D010203000411
          05122131410613516107227114328191A1082342B1C11552D1F0243362728209
          0A161718191A25262728292A3435363738393A434445464748494A5354555657
          58595A636465666768696A737475767778797A838485868788898A9293949596
          9798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2
          D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F
          0100030101010101010101010000000000000102030405060708090A0BFFC400
          B511000201020404030407050404000102770001020311040521310612415107
          61711322328108144291A1B1C109233352F0156272D10A162434E125F1171819
          1A262728292A35363738393A434445464748494A535455565758595A63646566
          6768696A737475767778797A82838485868788898A92939495969798999AA2A3
          A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8
          D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C0301000211031100
          3F00FE7FE8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00
          28A28A0028A28A0028A3A5140051451400515DB68FF013C4FAA68F75A83587D8
          6CECE1334925E38842E3385607942DB5B05F6A90A4E715C4D001451450014514
          5001451450014514500145145001451450014514500145145001451450014514
          500145145001451450014514500145145001451450014514500140A28E86801E
          48FF000AB3A6E9F71AC5DADBDA4135CDC499DB14485DDB032700727804FE15EB
          5FB337EC5BE31FDA5752B89B4FB25B1D0F4A8E3BAD5754BE9D2C6CF4FB66FBB3
          4D713158618D8E155E461BDD82C6247210FDABFB317ECA5F0F7E1C47FF0014AE
          9F6FF10B50826686EBC65E20B19A3F0FC1265498AC34F3E4DD6A922E232BF6A3
          6F00C859ECF0EB23294945734B4472E371D430745E231325182DDB7FD7CBB9F2
          8FECD7FF0004E3F1E7C7EB6B5D5ACF4A6FEC58AED6DEF6E6F1D2C74FB6909529
          6D35ECEF14114D22EFDB1193CD3F2854762557EDDBAFF8278FC08FD8B3C1DA57
          89BE30EB71F8BFC4FA86DD4745F00783ACCD8CFA8C4C7CC4B9B9D4AEE213D9D9
          B1E030B45770736ED22A332779FB4CFED65A57EC79A5CD6D75341E24F8A5A3DA
          359EFD5D21B9B0F00C4C72D01B6545B65B8DD8C6976D0C7656EC104F0CD3EF86
          3FC9FF008B1FB4E78CBE32788F5CD4759D6AFAF26F105C3DC5F4B7137DA2EAE9
          DCE59A5B87CCB2337F1316F9B278C714A327257B1CF97E32AE297B6E47183F86
          EAD27E6D7D95D93D7BD8F66FDA97FE0A6FAA7C6DBB8B43D07C2BE13F07F80F49
          5961D3742D02D5EC6DA3CA0513B49B8DCCF3B150CF35C4B24AF8183170ABF29D
          14551E9051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          503AD1450068689A35D788B5582CECE06B8BAB83B238D472C7F90007249E0004
          9AFA9BF667FD87B4DF0DF87EDFE207C599DAD7C29379B0E97A3D9AA36A7E269D
          08578ED4C81A348E36DF1CB772472430B6762DCCCBF6739FFB047ECF7A4DEE99
          A97C4FF18FDABFE111F0D48B00B282458A5D7EEA5120834F8A4C3344D298E669
          255DA61B7B79D8177786297E82F02E85AAFED65F17AE755F114AB1695A74311B
          EFB1442DADEC6D106CB6D3ACD065614C0F2E245CF971A49261FCB6CCCA4A2B99
          EC7363F1D4305869E2F12F96104DB6FB23ACF06685A97ED17A6584FAD5ADB786
          3E1768972F2E8BE16D24C96F657138F9249016669657C0D935F4CEF7126D10A4
          8027FA3F77FB52FED3F63FB0BF862CF47B1D42C345F8957DA724B018CAC3FF00
          08269EC8248FECF18E9A94D1C8B226D19B58E54907FA4CC8D6FDA5EF8DB4EF81
          9F0CF56F8817DA7E9F35BF87BC9D2BC37A3C90E6CEF754911BEC90B46721AD6D
          A28A4B8954E55D608E1623ED2AD5F8F1FB447C4ED73E29FC5CD7F50F106A577A
          A5FC9A95D4934F73299259E57959A59A4624969647CBBB9E598FA600E5A37AD2
          F6B2D96CBF53F2AE158E238A715FDBF982B61E327EC69BDB4D1CDAD9BEDD8CCF
          88BF14F50F88F790B5C1FB3DBC31A28B789D8C46400E64DA4E3712CDCF503032
          7193CB5145761FAF051451400514514005145140051451400514514005145140
          0514514005145140051451400514514005145140051451400514514005145140
          0514514005145140056AF847C3E7C55E24B4B012F91F6A7DA64F29A4D8A0124E
          D5193C03E83D4819232ABE88FF00825BE9165AB7EDABE0D7D46D6DEF2C74DBC8
          752B98A640CAD05BCF14D38E7FBD0A4AA7D988EF401F44FC77B18BE19BE8FF00
          0C2C4791A77C31B77D3AEE30D9126B2E23FED3958FF1149624B357FE3834EB73
          D4927E83F83FE011F0BBE1168BA6B47E5EA1A9431EB5AA123E669AE23578A33D
          C08ADCC4A55B9495AE31F78D7CC5F093C2D2FC6BF8CDE15D1354B89E697C65AF
          59D8DF5C96CC8E6EAE5125909F5FDE3313F8D7D97AF6A9378D7C4B7B78EA90CD
          ABDD493B2A0C2C6D2B96C01E80B579B98546A2A0BAFE87E0FE3C6753A380C3E5
          94DDBDB4BDEFF0C6DA7CDBFC0F973FE0B1FF001863F0B47A07C39B2D53EC775E
          0FD12D2F5E2866D92CDA96A620BEBA9B00EE52B6BF62B46E8375891D5B07F388
          AFCDC57D3DFF000589D78788BFE0A41F1726C48123F15EB10A2B215091A6A776
          B1A29239558C228C640DB8EA081F3137439AF429C5462A28FD9B25CBE9E072FA
          384A6B48462BEE5FA8CA28A2A8F4828A28A0028A28A0028A28A0028A28A0028A
          28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A
          28A0028A28A0028A28A0028A28A002BE8FFF008254446F7F6CCF0FD82FFACD6E
          19B468FF00EBA5E01689FF008F4EB5F38577BFB34FC4CD4FE107C77F0AF88B47
          668F54D3353B79ED487DA04CB22B44CDEA16408F8EE5074EB401F6EFEC58E24F
          DA5FC0B2F74BA69A2FFAE8B048F1FE3BC2D7D305DA387721DAEA32A7D0F6AF00
          B4834BF82DFB74E8B7163FE8BE16B5F1569DACE9A5CFFCC16EA586EED4B7A6EB
          19E22476C91DABE849ECE4B19A4826468E6B7631C88C395607041AF2733BDE3F
          3FD0FE61FA424270C4E0AB74B4BEF4D1F9F5FF0005A3F0BCDA4FFC143BE255F2
          5BCCBA5EAFADDD6AF6737967CB306A17136A16C3774C9B7B989B1E8735F2791F
          9D7EA17FC15A3E15DEFC47F833E15F1AE8F6DF69BAD4ACE2F08EAE14AA9179A7
          B46D6923924055934D68228F27E63A64FE95F987736D258DC4914D1BC5344C51
          D1D4AB230E0820F20835E953973414FB9FD0DC379A4332CB286369BBA9C53F9D
          B55F27A15E8A0F5A2B43D80A28A2800A28A2800A28A2800A28A2800A28A2800A
          28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
          28A2800A28A2800A28A2800A9ED6EA4B0B88E686468A68983A3A315646072082
          39041A828A00FBCFC2DE2D1FB47FEC8FA0F89B6C6BAE78119BC39ADC30BEF3F6
          09A5965B1B92396F9267B9B772DC469269B1824B8CFD73A2F8CBFE163787F4EF
          116EF324D7ED52F6723EEFDA1B8B851ECB389547FBB5F9A1FB09FED11A7FC17F
          88B2DAF886DD6EFC2FAEDA49A5EB90B5DF94F75A6BE4C9045BF312CAAE45C40C
          FB552E618A43BCAAAD7DE7F042D2E3E1C6B3ADF80EF2FADF545D3766B3A2EA50
          2958358D36E551E3B984372B1BABC3288CFCEA67955C2BA381C39853E6A7CCBA
          1F8EF8DD90CB1F907D6692BCA8352FFB75E8FF0034DFA1EB1A6787B4DF89FE13
          D7BC03AF5DDBE9FA478CA18E38750B9FF53A2EA70966B1BE73CE234919E29580
          2C2DAEAEB682C457E46FED55F0175CF821F12B57B5D76DAE2CF508F54BBB4D42
          CE78B64BA65DC72B092DDF04AE54E4020FCDB5B030327F578F3583FB50FC09FF
          0086A8F87736BFA6DB4575F103C23A5793A8D8F97BA4F16E8D6D16D0E17FE5A5
          E59409B4AE3F7D6710C61ED313F365F88B2F652F91F9DF821C770C3CFF00B031
          D2B464EF4DBE8DEF1F9EEBCEFDCFC69A2BB41F01FC5126A9756D1696D38B5207
          9C24448650790C8CC406047A7233C8078AE4AEAD64B1B99219A368A6898A3A3A
          956461C1041E4106BD73FA98828A2AD5F69D71A7F95F6882683CE8C4B19910AF
          9887A32E7AA9C70471401568A28A0028A28A0028A28A0028A28A0028A28A0028
          A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
          AD4F0E7862FBC5DA97D974FB76B99F619080428451D59989000F727A903A9AFD
          23FD803FE0DEAF1F7C79D2ED7C5BE2C7B3F05F8464B33A87F6A6BF6A4F9B6850
          335D5BD8928F242A32C2E6E5EDAD995B72CB91C007E6C47E1CD425BBB7B75B0B
          C6B8BB8C4D0442062F3210486518CB2E01391C706BD4FE007EC3FF00113F69AF
          B6DAF83FC31E25D7B5AB79022699A7689777D70C382CEEB0C6CC8983C36D2090
          738C66BF5CAFBC47FB0FFEC332C96FA668BAAFED29E35B3041B9BA9E3B8D1639
          4755DECAB6050F51B6DF525EC25EB5CA7C50FF0082EF7C5EF10680341F02E8DE
          04F85DE19B738B4B1D33488F506B74FEE84BA0D6687DE0B487DB140F959F3CFC
          19FF0083637F681F8A1A82ADE59E9BE1B8640A57FB5B50B74B84F98677DADABD
          D5DA1DA1861A004120F38C1FA3345FF8367FC11F07BC33F63F8B5F1BFC13E156
          CF997065B386091B90702EB52BBD3DD0700710E319C83939F9AFE297ED8FF173
          E36DBC96FE2EF8A1E3ED7AC66CE6C2E75DB9FB02E7A85B5571020F65402BCB44
          167A60CEDB683BE70169E83E53F433C3DFF04CBFF827CFC1ABDFB46B7F182DB5
          EBB498DC16B7F1769F756FBF20E5134FB0B99500C70A93E076AEF2F6E7F62CD6
          E4F06E8FE04F106A1AD788BC266F60F0EE8FA19D7C6A1AEB5D12EDA72CFAA5BA
          5B9F325694C308961433DDCBB3F7939DDF9B1E07F87BE21F89F3797E18F0F6BF
          E259338D9A469B35F367D3112B57A25BFF00C13EBE3BDF4197F829F15AD6161C
          4B7FE15BDB1888F5DF3468BFAD2D1E9633AD87A75A9CA955578C934D3D9A7A34
          FC99F77695F137E01CDA6DA5D5B780FC517F6F790477304B3EA1221923750CA4
          AACE30707904641C820104569E91F1C7E0CF87F55B5BFB0F875AED95F58CE971
          6D7306AB34735BCA8C19244613E5595802083904035E79E04F855E32F18FC0AD
          6355F885A7D9785FC75E1D7FB5DC1D475AB0493C591C8C4CD3C7189CB9BC2D99
          668F6A996569665F3A5BA9162E2961900FB8DF4DA6BC7AFED69CED18AB7A2FF2
          3F9278BA9E7791E6D2C3E13074E50F8A128D18BD1ED76A2F55B7A9F570F8ADFB
          327FC2A3D53C6DE22F85BF0BF45D3F4BD462B3D4FF00E2D2E957D2D9F9FF00EA
          6E6536D66ECB0C926E8BCC3C094A236D6961F33913FB40FEC0BE254C5D43F06E
          DF77F09F869ABD91FCEDB4E503F3AF1BF87DE32BEF87DAEC9750436F756B7D6B
          369BA9585E41E7D9EAB6532EC9AD6E2224092275EAA48E42B0219558785FC43F
          F827EEB7E26F155C6A1F0CD741B8F0ADD333C365AEF8D348D2B50D1A40C43DA3
          8BFB9B792E51701A2BA8D0ACB13C45FCB9C4D045E8612BCEA46D35AAF23F72F0
          DF8AB1B9C609C734A52A75E9BD6E9A4D3D9ABAF9348FB6A4F869FF0004FBF8A3
          0BC2A9F03E55B8428E25F13EBFA0A383C10567BAB64C7B118F5A75EFFC1207F6
          41FDA29634D0DAC3559412204F08FC4CD375992327190A930BE6E7038C76AF80
          66FF0082767C6245FDD785F48D40FF00774DF17E87A831FC20BC73599AB7FC13
          DBE384103492FC12F8A17B6EA32D3DA7852F2FA003D4C90C6E98FC6BAAFE47E9
          1CA7D97F117FE0D77F841A5D9B4163E24F88DE0F126762EBDA143ABBB64A9FF5
          825B16FE01C81C65B030CD9F9D3E22FF00C1AC3E26D36099FC21F143C23E22F9
          0F9116A125CE9574CDDB28D6CF6F8F5CDD2FD7BD7947853E337C57FD907525B2
          D1FC55F11FE175C679B18351BDD184983D1E0DC8AE3D43291EA2BE82F84DFF00
          05C6F8CFE0CD91F8923F05FC47B2C8C9D57495B0BC55EFB2E2C0DBEE7FF6A749
          BAF20D1A0B959F1CFC53FF0082107ED0DF062E2EAE35CF02EBD3F87ED50BB6AD
          A0DAA7882DE3C63995EC649A2857AF2F203C0C804E07CA9E29F85DAE7841FF00
          D2ACCC909791126B7612C6DB01663F2F2BF282DF30070A78E0E3FA1BF81BFF00
          05BCF841E3CBBB64F1459F8ABE156AD9C8B99D4EB7A5C44743F6AB58D2E909EC
          3EC640EEFDEBE80F889F077E14FEDC3E0B6F10EBFA1F813E2BE91725611E27B0
          9E3B9BB8DFF8633AA59BADCC6E3FE784B28C7468FB51CA9EC2F53F946B8B592D
          640B246F1B6C57C32904AB00CA7E841047A822A0AFDB2FDBA7FE0DC4B3F1C4DF
          F0917C21F106B3AD4D6B1143E15D62E608B5495371216D6F022DBDCB025888E4
          8EDDF076AB4EE40AFC73F8A7F0B758F83FE35D4F40D76C6F34DD4B4BBC9ACE6B
          6BC84DBDD44F136D61242DF3C6C0F055802195D4FCC8C02B34073345145200A2
          8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
          8A9ED962334626675899807644DECAB9E4804804E3B647D45007ED57FC1243F6
          15F85FFB217ECB971FB4B7C62862BCD26D242FE1BB4B9B34BAFB6CB1CAF02DD0
          B673B2E2E64B98A686D2DE42228FC89EE65F955664F20FDB7FFE0A39F107F6E4
          D76E61D62EE6D0BC122E8DCD9F85ED2E9A4B7DC1B2935E4A42B5F5D0E0F9D28C
          292DE5242A7657D1DFB60780BC5BFB4B7FC1337F63BB6F86FA4EA1E20D25E1B8
          D2F52B1B1036C5A9DBD9416D1C93962122456B1D7A432C8CB1C6866776556DD5
          C6F85BF63BF84FFB21F84F4EF13FC60F10E8FE20D56FA2FB4D8DA48934FA6CE0
          1E1AC2C2268EEB57E5481753BD9E985D1E3DF72B86217A9F2C7C1BFD9D7C73FB
          424B79FF00086785F52D72D74D60B7FA8284B7D334B27A7DAAF6664B6B6CF633
          4A80F6AFA27E0F7FC12A66F15C5713EB5E2ABDD71B4F1BAF6C3C01A24BAD2588
          1D45DEA33982D2D87FD358BED518EB9F4ABF18FF00E0A9175ACC367A7F827C25
          A7DBD8E8E861D32F7C556F6FA8FF006727FD38E8F122691611375301B7B9DA7A
          4A7AD7CF7F17BE3F78E7F6809603E37F177887C5315A1CDA5AEA17AF259D87B5
          BDB644302FFB3122A8F4A7A06A7D7CFF000BFF0066AF818FE5EA4DF0C8DD4272
          ADE23F196A1E37D4030EA047E1E44B053D46CB98860F0C41E688BFE0A17F097E
          193B0F0AC3E248278CE049E16F86DE1DF07EFF0042B7D14AF74DFEF49106AF84
          D46D1453E6EC1CA8FB57C65FF0574B7F1747E5DDF867E2F6BEA06D03C43F171E
          F6161FF5C934C4207B7986BCFAEBFE0A25630C87EC3F04FE1BB64E73A9EA7AE5
          CB1FA982FADF3F957CD7451CCC3951F463FF00C147EF87FABF83DF0661FF0077
          FE1243FF00A16B26BD9BC0BF123C3FFB4AFC296F15785ED6CFC3DE24F0FC289E
          2EF09C134B2C764BB9628F55B133BC933D8CAEE8922BBBBDB4EE1598C73404FC
          1B5D0FC29F8A3AD7C14F88BA5F8ABC3F34316ADA3C8CF1ADC45E75B5D46E8D1C
          D6F3C6789609A2778A48CF0F1C8EA7AD65522E71E54DA3C0E24C9259A602785A
          551D39BD6328BB34D6DB3575DD753EC5FB749B3EF7E82B3F5AF88E9F0BF52D13
          C4BAAE953788BC29A3EA31B789748B77F26E6F74F9088DDA094105268C90CA32
          1589F9FE506B7352BBD13C63E18D17C67E15578BC2BE2B4924B6B4927371368B
          75115173A6CCF81BA4B7674C3900CB04D6D3155F3B68CDB882DEFEDE6B7BC87E
          D167731BC1711671E6C4EA55D73DB2A48CF6CD7891C456A552D36F4DF53F8FF2
          FE2EE20E1DCFE34733AF524A9CED38B9369C76D136D3D1DD3287C5DFDAC3C21F
          097C7B368FAC7C2BD4B56B39618B50D2757F0FF8EFEC767AE69F3AEFB6BD856E
          B4CB97092275463BE275922936C91BA8CBD2FF006CAF831A9CAB25CE8BF157C2
          EEA720DB43A6788190FB31974FFCF02BCCB48F095C78F3C1DE21F841A8335DF8
          B7E1F3DEEB3E07B9C1DDA85B286B8D434B51D765C401B50B65CF13C53C68A64B
          F26BC395C488083918C823BD7D07B47BA3FB6A8D4856A71AB0774F54FBA67E8A
          F837F6E5F0DCBA77D8F40FDA43C47E1CB39703FB3BC456DAE69AB2FA2B25A2DE
          DAE3D77CA17DEB6EDFC07FF0BEB77D9FC19F05BE32F98374ABE1DB1D1F50D5A4
          1FDE95F4868B554E3BC8CA475E2BF342992DAC7395DF1C6C54E5491F74FA8A39
          FB9A729F6C78D7F647F841E24BEB8B49B41F1B7C33D66162928D2350FED5B3B4
          3E874ED431724FFBDA8AFD3BD721E18FD8FF00E2DFC04F1A0F14FC0BF1C8F126
          AD0AE157C2F772E97E23922E0F91269936D6BCDD8F9A0B56BD423EF6466BCE7C
          05FB7A7C58F01E9F6FA7CDE2CB8F166876A0245A478B614D7ECE08FF00B900BA
          0F25A83EB6AF0B7270C335EC9F0FBF6C4F865F168A597892C26F853ACCB85FB5
          C2D71AC786266FF6D089350B25F7CDFE49E7CB5C915EEB0D4FA27F622FF82BF5
          AFC58F1541F0FF00E3258597847C6AF7234EB7D7E28058E9D7D759D9F67BFB62
          02D8CE5FE5F3536C1B88568ADC0321D5FF0082D17EC03A27ED2BF02BC41E3EFE
          C55FF8583F0FECCDD6A664876C9AD6956E852E127070DF69B38B74B1CDC3AC10
          CF112C16011F987C6EF02E9DF16749B4D23E2CE943C4F6B7D62A745F16E9B790
          DD6AB0DA64AA4B63A8A3343A8DA2E0A882679611B5D236B693322FDC07E20683
          AA7ECBFAE6ADFDBD278A346D1FE1F6A16DAAEAD7307933EA9F64D0A48EF269E2
          2CC63966F2E4768CB31CCDF79B2189676B32767A1FC9FDD5B496371243346D0C
          D131474752AC8C382083C820D415D3FC5CD57FB63E24EAF23C7E5B473FD9880D
          BB3E501167A77D99F6CF7AE62B300A28A2800A28A2800A28A2800A28A2800A28
          A2800A28A2800A28A2800A28A2800AB5A669D2EADA8DBDADBAF99717522C3126
          40DCCC40032781C9EF556AF689A9368DACDADE2EEDD693A4C36901B2AC0F0486
          19E3B823D8F4A00FDF9FD90BE277833F60CFD933E18D8FC55D535A9BC31F1075
          C4F105DE9B142D796266BBB2B5BC8CDCDB8F9A5D3ADAC8E8D3CF0A2B3CB3EA8A
          764A2D045279AFEDB9FF000495F88DACF88AF7E287C36F116A3FB407877C605B
          565BE8EF9754F11DCA1E3783192BAA2280104969971B087B680262B2BC55E097
          FF0082947FC138FC1DFF000865D5C5C78F3E18359D90B0D3A456B8B978EC2D2C
          7C9897043B5E58691A5CD6C0822796CB53B750D2B40B2FC23FB2B7FC14DFE367
          FC13CF5A961D2356BEFEC1D41A491F4BD4ADE39EC75578C88D5A7B772F117F90
          29993170AAF9597046EBD4BD4DB991ADEEA6824568A7B791A29A2752AF13A9C3
          2B29E43020820F208A4AFBC3C1DFF05A2FD9AFFE0A196B1D9FC7EF844ADE238E
          DA35975ED1E392EAE22E303F79E6C1A8C31274D82EAF90123E42081572E3FE09
          83FB3EFED24ED37C09FDA4B40B7BDB8CFD9F40F16CF1F9F231FE152E9677C147
          4C2D84E7A7CCDD4C05D1F01D15F577C64FF8225FED25F0698B3780C78AECF198
          EE3C397C97525C7FD73B397CABE6FF00C06AF9A7E227C3BF117C1FD5FF00B3FC
          5FE1DF10784750271F65D734C9F4D9F3FEE4CAADFA50331E8A449048B95208F5
          14B40051451401F427FC13DBE2416F1EDE7C2DD4241FD97F1324860D28C8D85B
          1F1047B974F9013C01705DEC9F90B8BB8E46CFD9D31EB8414F95832B74218608
          3EE2BE1F2CF19DD1C92432A1DC9246C55E361D1948E410790474C57E807C40F1
          62FC506D0FC791F978F88BA3DBF88AE367CA8B7D26F87510AA38545D4A0BE551
          D9516BCBCCA96D517A1FCCFE3F70D43D9D1CEE92F7AFC93F3EB17F2B5AFE68F9
          DFF6A93A9FC38F89BE09F1F787EF27D2F594D925ADFC5FEBA0D474E9639229D7
          B7C91C964067BC46B8EFDA8BC2DA5E95F11AD7C43E1DB1834DF0A7C44D322F15
          E8D6500C43A6A4EF245756318EBE5DA5FC17B6899E592D918FDEAF5AFDAEB481
          7BFB3ADBEA0DF33E95E28B4B687FE99ADD59DEB4BF99B3873FEE8AF2FB871E33
          FD8A60924E6EBE1CF8D459AB9E59ED35AB292648FF00DC8A7D16E1C0FEF5FBFF
          007ABAF072E6A3167EB1E16E652C6F0C616A4F7516BFF017CABF048F2EA28A2B
          A4FD0028A28A00F65FD92BF6B27F803A849A07899353D73E16EB533CDAB68F6D
          B5EE34F9DA3D8BA9E9E1C858EF23C46580645B98E3F2653B4A3C7F66C1E09D5B
          544F1E7C19B5D63745F13B4DFEC3B0BDB172B05F5D3B4575A55C47919105D489
          6D13E4026DAF65C8DC063E1BFD9AFF00656D6BF691D526B9F39BC3DE06D2E758
          75DF14DC405EDB4EC8DDE442B91F69BE75FF00556A877313B9CC50AC9347F73E
          85F14AC7C25F13AE7E28C96674BF0A7C2C8ED75D86D5E5F33C8B7D39618749D3
          4C981BE599E1B3B40C00CB48D210AAAE56E3B6A4C8FC16F895E1E83C2BE2E9AC
          2D8EE8A086DFE6C11E631823666C12719624E33C6715CFD6E7C41F108F1478CA
          FAF03AC91BC82389D14A892340111B07904AA827DC9E074AC3A82428A28A0028
          A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00F7
          3FD8E3F6E9F147EC6DE278F50D05F7EE2D04F14B89ADAEECE46533DA5C5BB831
          CF039447F2CEDC3AABAB2C8A8E9FA337BE31FD98BFE0AE261BAD6754F0FF00C3
          0F8CD345E735CDF4D04D63ABBB6DCB4B2DC3A4731638CC97325B5EAE40925D5E
          5DB8FC73AD0D13C457DE19BB69EC2EA6B59A489A16746C128C3047F51E840239
          00D03BB3ED6FDA9BFE088FF15BF667D4F50D40E97A93E8369009EE354D2609AF
          ECED6D65C832CDF2C773671346C420BD8213201D4AB6EAF93F574F187C37BE6B
          56B9BCDB7568D04724527DA2296DE3DC7319E76841961D190367E5CD7BB7ECB9
          FF000589F8D9FB25D969D6BE1BF14EA1F61D2E5926B7B19DE3B8B0824620F991
          5ACD1C904127DF0658512439521D4AE4FD61E07FF82B9FC28FDB1AC6E60F8C9F
          B377807C53AABC78BCBDD06F67D03549B70C3CF34C0C93DF1C9230F731A74CA2
          8214823E21F85DFF000521F8D7FB3E436F07837C6FE27F05AC2124923D1B55BD
          D352EC14C832470CC8855B707E1403C76383F4A782FF00E0E6EFDA7BC17A49D3
          7FE12E6D6B4990626B1D6EC34CD462B91E9234966656FF00BEEBD2BC53F05BF6
          0BFDA5F553650FC46F8B1F09F5C81449347E27F0F43E208201D4246BA6C9F6A1
          17CFC79B21C96048E95C1EAFFF000424F07F8C44537C34FDA8FE0378B2379944
          765AAF897FE11DD5EF14E7E44B5BD8635573C7594E3FBA682B5373C33FF05D4D
          23E2CEA97D0F8BBF675FD93EF82AAC8350BEF037F65EA17D9E1F33DB5CA2A907
          1EA4E7231822ABF867FE0A97FB2BF8CBC42F6BAE7EC89E1E8E46DC16EF4EF891
          AEE876CF8EEABE64CAB919237A7B75C0AFCEBF891E039FE19F8D2F347B89EDEE
          A4B472A2582457571D8F04E0FB67D0824104F3F40AECFD4697F6BFFD8D758BBF
          2EE3E0A78C342F3159D7FB2FE310BB550081F7A7B0C03C8C027279C670711DFF
          00ED11FB0EDB5A35C5C7873E3E5B2AE32B63E39D16EDB938E17EC258F5F4AFCB
          DA280BB3F443F683FDA2BF64DB1F83BAB4DF0DF4FF008CC9E32DCA9A69F10789
          34ABBB02CB28F31658ADAD165C346B22A3860A1991892BC37BF7EC93E209BC65
          FF0004F4F85BA9DE49E6DDD8EA9ACE89BC80331A269DA8F41C01E6EAB39E3FBC
          6BF1E6DAD64BEB98E186369A695822222966763C0000E4926BF62FF658F0D1F0
          17EC05F0DB47924F324B9D675CD5E272BB7CD81934ED395F1CE01974B9C75EC6
          B8F1FF00C07F2FCCFCB3C66E47C2D5F9FBC6DEBCCBF4B94BF6A8758FF64FD449
          FBCFE30D1E303FEDCB586CFF00E3BFAD78DFC29FDEFECCBF18E37FF548340B84
          CFFCF75BF78D7F1F2A59FF000CD7A17EDB7AF8D2BE19F833C3EA765C6AD7B77A
          F5CA7FCF48230B6B6927D3CCFED25FF80D5BFD8EBE0B699F12FE108D135FB8BD
          B5D37C7DE26BAD4E45B1754BDB8D3BC2DA15FEA1790C4CCACA86E25D46D23594
          A38436F2BED7F2990D6055A946E767849839E1B8570D1A9A3926FE4E4DAFC2CC
          F992B4FC07E09D73E2B7891346F0A687AD78A75993EE69FA3584BA85DBFD2285
          59CFE55F72E8FA4F807C0AA1F41F851F0BF4971FF2DB51D365F11BB7B95D5E6B
          B841FF0072341DC015E9378FF153C5DF0DB75DDC6BBA57C3E6E77DEDD2787BC2
          91F1D9A46834F4E3B64715DDC87E91CC7C73E18FF82707C45B990378B26F0B7C
          33B718DE3C4DAA0FB7A1FEEB69D68B717F1B7FD75B745F561C91EA9E09FD953E
          12FC2A78EE2EEDF5BF8A5AAC5F36FD6C1D17438DBFEBCADA66B99F1D55DEEE25
          6FE3B72095ABBE3FF8FDF063E08596FF00137C4CD3F51983797FD9DE10B33A93
          2C9C908F793B5B58ED383F3DBCF724609D8718AF9B7E2CFF00C16EEC7C2D7D7D
          63F0BFC176BE176B7CA43ADDF3C5E21D5E4603F82E2644B5806EFBB2DBD924C9
          D5666E189EEA0D4FB3FE28789E1F0AF8274CF127C4FF0011E9BE02F06D9593B6
          876A6C62B732DAE773268FA440225313104991161B40F932CE8C727F3ABF6DCF
          F82A9DAFC76B58FC27E11F0FC9A6FC3BD32479ED34CBAB8F31B50BA3198C5F5F
          BEC5FB55C6C79230A1238A08D9D225CCB34B37CC3F163F68AF1A7C74D7353D4B
          C59E22D4B5CBED62E7ED57D737B334F7378FD8CB33932CB8E31E63B1F9473902
          B85A9726C90A28A2A4028A28A0028A28A0028A28A0028A28A0028A28A0028A28
          A0028A28A0028A28A0028A28A0028A28A002AD69BA95C68F789716B3CD6D711E
          764B0B9474C8C1C11C8E091F8D55A28027BABA92FEE249A691A59A562EEEEC59
          9D89C9249E4926B4342F18EA9E1BB778AC752BCB58E40DBA38E4210965DA4EDE
          9BB1DF1918041C8159145005ED7359BAF11EA935E5E4CD717570DBA4918F2C7F
          900060003800002A8D14500145140A00F44FD9FBE1A5F78D3C6967790DB5C496
          9A7DC23FEE94979E60418E28C609762DB7200E87A82573FB2FE2DF037FC20F7B
          E1BF8756AD6E7FE100D26DFC37348640B08BD42F36A52799F77C93A8CF7D207C
          E3CB6539C0AF98BFE095FF00B3AC3F086E2EBE255CB5C5C69FE07BD57D09A74C
          2EA1E246890C05063FD5D9285BD7FBDB5D6CE37F96E41AEABF692F8A32E81A38
          F06E88B7179E25F142A5ADC456E8D2CF0DBCD80B6E8AB9769EE772AED1C989C8
          C379EA57CFC55EA4D515EACFC57C485573FCC70DC2F83EEAA556BECC568AFE6F
          5B27E479BFC44BFD47F6B4FDA523D37C236ED7A754B88743F0E41330B75FB344
          BB12694B616056024BA9998848BCC99D885526BCC3F6C4FDBA2F3E13FED1BE15
          B2F83FAD4B6BA4FC1EB3834BF0EEB51A496F3DE346F2CF2DF853B593ED777717
          377B492CB1DC450365622A7BDF8FDF16F45FD81BC0FA9F82A3B85D4BE2D78A2D
          64B1F15CB633AC89E19B260449A2452A92BE74A46DBE9973B541B44DCBF6D127
          E7DEA3A836A7A84F72EBF35C48D2B0DCCD82C493CB12C7AF5249F526BD08C525
          647ECB85C2D3C2D0861A8AB460924BB24AC7D85E2AFF0082E7FC76D4208D740D
          5743F06CB8224BAF0EF87F4CD0EF5CF182B73A7DADB4E9DF80F8E780BDFC6FE2
          4FEDADE28F8B46FEFBC4535FEB3E24BE8BCB3ACDFEA73DE5D2E54066DF29690B
          677953BF8CAF5C12DE2F4506A145145001451450014514500145145001451450
          0145145001451450014514500145145001451450014514500145145001451450
          014514500145145001451450058B5B692FAE238628DA59A5608888A599D89C00
          00E4926BE98FD82BF620BFFDA3BC7367E61B186CA4B692F6FAEB50B667B3D06C
          15D164D42E3FBCA370548C2969649A048F32488B49FB097EC51E2CF8D7F14EDA
          D6C74F9ADF5486237866BB9520D3B4BB22BB25BBBC906E68A2432203950C5DE3
          8D165964488FE967C52D37C13FB07FC2A5F07DF6B52785B4F8FCBD5354371631
          BF8B3C5F74A8DB2F1F4F76D9676C89237D985F3A410C72BC8AB7F335CC4D1293
          5A2DCF2736C7D5A31F63838F3D697C2B64BFBD27D22BEF7B2313E2078A7EC971
          A3FC3BF859E1FBCBE9345D3E43E1FD22E5E11FD9D663F7973AD6AB2B15822323
          133CD2CAEB0AE554B25B451A8F973E2EFED77E14FD8D0EA36BE0BF107FC26DF1
          4B5412C7ABF8DED4BAFF006734AA4CB0E92640B2C5E607DB26A5222CF20765B7
          8E18BCC96E7C73F6ACFF0082946ADF12B46D53C19E03B18FC19E00D4274B9BB8
          6DEF26BABFF104EB865BAD4AF245496F2E558BE0BAAC3133335BC16DB883F2BE
          78A54A9282EEDEECE1E1BE1CA795C25526F9EB54779CDEF27FA25B25B58B5AC6
          AB71ADEA135D5CCC669A63966231EC00038000000038000038154E8A2B43E902
          8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
          8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2AE69FA6497F69
          7D32150B63089E4049C9532247C7BE641F8034014E8A28A002BE96FD8B3F6149
          BE3B5CDB788F5FD7345F08F82F4B713EB1ABEB90C9FD9FA7C2C1BCAC84FDEDCD
          C49B19A2B381249670848023595E3F9A6BB4F1AFC72F1078EBC1DA5E8179711C
          7A4E92A561B6B7531C633B7276676AE4A2921428255723E55C007E8A7C63FF00
          82B3F867F652F83D3780FF0066FB16F0BD9C33A1D57C537D711378CBC537A372
          1B8668F7A69A91ABC8B1245BA4846ED9346D3CE24FCF9F8BBF1FF54F8B4CDE67
          9D6B15C4AD737864B969E6BF9D98B192590805893CF3D5B2492718F3E3CD2EEC
          FB50118C536D2DF71A4E4D1454EF0AADBABF991B333152801DCA0018278C60E4
          E3073F29C81C64020A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
          0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2801474AFB2
          FC19FF0004929BC6FF00153E317846CFC791FF006AFC32D274FBDD311F46DBFF
          000935DDEDA89E1B31FBFC5BB331118725C12470338AF8D42F06BEEEF88BFB79
          F84F43F88FF1F3C55E0DF136ED5FC4127836F7C272FD82E13ED971A63DABCF90
          F18D810C4D9F3368603E5DD9AB8A57B3D9E97EDE6295F75BF63C57F652FD84A5
          FDA4FE0A7C4AF1A5E789D7C336BE04D3AE2E6C6DDF4E374FAF5D416935DCB6EA
          7CC411048A105A43BB0658C6D39AA7F0C7F6249BE21FECA7E22F88CDE224B0D5
          34F8EEAEF46F0F9B13249AF5A58BDA8D42759B78F2C40B768D828DBC472E08D8
          6BE8EF88BFB6CFC1CD3BE21EB9A2F81352BCD2FE1E5E7807C51711473595C0DF
          E22D6E2777B608133B6202DED56461B40818EFDA771E6FC1FF00B7D7C39F821F
          197E16683A47843C2BE2CF03F80F45B7F0FDE78A2E4EB305FCF05F46CDAD3C56
          EB731404192EEED57CDB5762A899DD85C2DDDBC925E4EEEEEFF25F265C6C95DE
          BAB7F2B46CBC9EAFE68F07F08FECCFE19D0FE08E8BE3CF895E33D4FC29A6F8BA
          E6783C3BA7E89A0A6B7AA6A515BB18E7BB78E4BAB58A1B7594794AC662EEEAF8
          8F6A96AE8BE117ECD3E03F14E8FF001835893E236B52F827C13A3E9D72BA9699
          E1513DFDF2DDDEDB22C6D693DDDBAC7246E76C804EE995628F228566EF35DF8A
          7F0E3C7DE0CF04695A57C44F07F867C49F05E7D4740D2EFF00C57E13B9D5FC3F
          E2ED1E7BAB89A0BA5B7FB0DD325C279AC1A3B9B500EF47575742A3B2D27F6AEF
          87FA17C55FDA08FC3BF895A3FC1F3E30D1341B0F0DEBBA5E97A968B64F736AF6
          AD7CF0A69B68D35BA4A639C8FDCC7BBCCE557240952F7BEFFBBA3F5F217F9ABF
          DEAFF81E49FB2FFF00C13F743FDB164F8A0DE09F1DEA8B0F81F4CB7BAD123D63
          C3B1DA5D7896EE6590259948EF254B66696328AFE64A1B72921738AC4FD94FF6
          1093F691F82BF12BC6979E285F0CDA78134DB8B9B1B76D38DD3EBB7505ACD772
          DBA9F31044122841690EEC19631B4E6BAEF85FFB53AFC00F0FFC6ABC7F89D6FE
          35F885AC5EF86F55D0B5F85352B85D66EACF504BA959A4BCB78A6CA28C379EA9
          BB690BB8633EA9F113F6D8F839A77C44D7346F026A779A5FC3DBCF00F8A2E228
          E6B29C799E22D6E2677B608133B6202DED56461B40818EFDA771A7FC2BADECD2
          F27BA7E77DBEE1C75AAA2F6BABFA6975FD79F63E69FD83FF00640B4FDB3FE2EE
          A5E18BEF185AF81ED74DD12EB577D52E6C8DDC29E494011C09136292E32F93B4
          02769ACFF1B7EC91AA7C33F80DAD78BF5BBA7B1D63C39E397F045EE8725A7CD0
          CF1DBBCCF21977F668CA6CD9CF5DDDAAEFEC5FF16FC3FF0009AE3E283788350F
          B02F88BE1EEB1A1E9C7C8925FB45E5C220862F915B6EE2A7E66C28C72457D27E
          26FDB0FE0E7ED41FB37FC26D33E206BD71A2F8B3FE137D3EF7E237FA05CCDFDA
          367636325A8BF478E3656967816DE2619DDE682C542E5AAE5A59C5DB457F5E6D
          FEEE84A95B46AFABFB9474FBDFE4647FC142B5EF1C4DFB3168F7BAF6A1E17D4A
          FBC5DAB5B3F8A2D6C34696DAF3C2F20B317DA5E92666B89166B74B6BF90C7F22
          C91F96D117658D547965C7EC4FE06F027C49D2BE1DF8EBE2A5FF0086FE245FA4
          11DD5ADAF85D750D0F41BAB850D15A5EDF7DB2395645DC82630DACC911620349
          B5B1DBDE7FC1407C2BFB40683F1AB4BF13784FC21F0F66F1E463C4BA7EADA69D
          66F269F5AB29FCEB48A449AE6E628C3C4F3C398A18917CC5CED41814BE31F883
          E0FF00ED29FB4CB7C64D5BE2A5AF8774DF10CB1EB7E20F0A49A16A337882D6E9
          17F7F6968D1C06C65591E31E54B25D458598798AA50839C6DCF76AC9EAFAB575
          B7DF7F95BB952BA82B6E95BD6DD7D2DFD68782AFECE7ABE8FF00B4FC7F0AF5E6
          5D1F5B8FC469E1BBD90279CB6B29B81033A8CAEF504EE1C8DC31C8CD7AA78BFF
          0061BF07EA5E23F887E17F007C46D6FC45E3BF870D7B2DDE8DAE78563D1D358B
          7B1328BC7B19E2BEBAF3648D62327952A445E3DC54965D8795D67F690B1F89FF
          00F0504FF85ADAB2B68FA5EADE388FC413A30331B0B6FB62CBB4EC5CB948C63E
          5049DBD0935EB9A8FC53F863F02FF689F8A3F1834BF891A378F75AF10CBAE2F8
          5344D0B4BD5216824D4D2EA2FB45FC97D6B6C891C30CE7E484CCCF2151F2A82F
          4A37F63194BE2B4BEFB2B2FBCA7CBED2496D756FC6FA9C87877FE09E56F777D6
          773A978C2EADFC3F0FC308FE27EAD3D8E85F6CBEB4B7798C3F6682DBED082765
          7284C8F2C48A85D9B1B70D85F0E3F657F87FE35F0DFC4CF14CDF123C44BE09F8
          7B6FA5DC25E5878452E351BFFB74A2211BDACB7D0A44F139DAFB67910956D8EE
          304F7DACFC7CD0FC49E3AF857AC783FE344BF0B7C4FE05F86DA5E911EB0FA7EA
          4B6C97F0CD37DA6CE592D6292751E548082904D149CA315049AECBE24FEDE5E0
          1D22C7E36DE7849BC273789BC51A27866C96697C196F3693E2DD52D6E376A5A8
          269F736CF6F0AC99322F9D146C4FCFB164620549AE6D3CD7E2ECFEEB7FC1335A
          C7E49FE575F99E4FE22FF827AC3E0BF15F88EFF56F1C5AC3F0BFC3BA0E99E246
          F1347A5B3DE5F5B6A7187D3EDE1B0691737B2FCD989A658D0452B34DB5416A31
          FEC4BA178FBC31E13F147C3FF1C6A1E22F09EB9E2AB4F086AF26ABE1E5D2F54F
          0F5E5CB1F25E4B68EEAE2392178D5991D67E591908538274FE1A7ED5B1FC79F0
          4FC5CF08FC5AF1ACDA55F7C4E9B4FD62DBC4D756125CD9D8DFE9E26F26DE786D
          90C915ABC521857ECF138876C4162D8081B3F0FBE32FC3DFD98FE1EF853C13A6
          F8D2D7C6977AB78FF46F15F8975BD2F4DBD8749D2ECAC1E658EDE21750C57534
          A44EF2B91022801154C84B61C63AFBDDD5BD1B57BFA6BDBA3096DA6F6D7D52FD
          594FE2DFFC1322E3E157C7DF883E0DFF0084C21D4F49F08F836FFC67A56BB0E9
          8563F104369F23C42232E61613A4D0BE59CA3C0DC1AD6F19FEC8DFF094FC0FD3
          B4BD2EFF00C2F617DE1DF85F6DF13E2B4B1F0E08EFB5E59AE5A2BC59EFA49E49
          99E0842B845DB09546DB044DBDDFD13C21FF000503F871AD781BF68DF0EF89F5
          49BCEBDFF84AA7F86BAA0B29DC5CC5ABC8E66B06010B44923ADBCE9E605556F3
          77152D83E716FF00B61F84FC27FB497ECF3E25B5BD6D4F43F08F81F4DF0B78BA
          216D2A6D89FED506A16FB5947998B7B86E5032924609C528C5B8A8F5697E3CDB
          FA3E5B95749B76D9BD3BDB976F5D4E37F66EFD82A3F8EBA67C2E9B52F1637876
          6F8A9E29BBD074D8174BFB5B25ADA408F3DF7FAE8F7012C8B12C7C6E21CEF1B7
          073BE187ECCFE00F8FBFB44F827E1FF827C79E309DBC517D259DEDF6B9E0FB6D
          3FFB3F08591A38E1D4AE3CECED6043345B70305B271EBDE1AFDAA3E1CFC3BFF8
          286FC1B6D17C5121F83DF0760B7D334FD71F4FB98FCF05259EEEF4DB88FCF0D2
          5DDC4C71B0B6D09C702B3FE167C7A87C11FB72FC28F1CFC45FDA16D7E2AE91A2
          6A129B8D48CBE21D424D06DF6B6370BFB28A4DACCFC2C024E55B207192F7B35A
          5DFE0AD67F3DC99697B765F7BBB7F7688F8EEEADFECD3BC79CED2573EB83510F
          94D76BF193E1EE8BE02D46D7FB1FE20784FC7697BE63C8FA1DB6A90AD9608C09
          3EDD676C496C9C7961C7CA724719E28FCC6A63B6A5D4B2968251451410145145
          0014514500145145001451450014514500145145001451450014668A2800CD19
          A28A003345145001451450014668A2800A28A2800A28A2800CD1451400668A28
          A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FFFD9}
      end
    end
    object pnlCopiar: TPanel
      Left = 0
      Top = 0
      Width = 388
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
      Width = 388
      Height = 36
      Align = alTop
      Color = 5585152
      Constraints.MaxHeight = 70
      Constraints.MaxWidth = 400
      Constraints.MinHeight = 36
      Constraints.MinWidth = 380
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
        Font.Color = 27607
        Font.Height = -15
        Font.Name = 'Verdana'
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
        Width = 186
        Height = 34
        Align = alClient
        Caption = 'F7  Confirmar produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Verdana'
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
        Font.Height = -15
        Font.Name = 'Verdana'
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
  object ACBrBAL1: TACBrBAL
    Porta = 'COM1'
    Intervalo = 2000
    Device.Baud = 2400
    OnLePeso = ACBrBAL1LePeso
    Left = 352
    Top = 56
  end
end
