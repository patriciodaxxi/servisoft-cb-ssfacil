object fProdutoCarto: TfProdutoCarto
  Left = 400
  Top = 0
  Width = 948
  Height = 772
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fProdutoCarto'
  Color = clBtnFace
  Constraints.MinHeight = 772
  Constraints.MinWidth = 948
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 932
    Height = 29
    Align = alTop
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 2
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Confirmar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 77
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Ca&ncelar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 152
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Im&primir'
      TabOrder = 2
      OnClick = BitBtn3Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 29
    Width = 932
    Height = 93
    Align = alTop
    TabOrder = 0
    object Label5: TLabel
      Left = 32
      Top = 48
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente:'
    end
    object Label12: TLabel
      Left = 27
      Top = 72
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = 'Produto:'
    end
    object Label13: TLabel
      Left = 687
      Top = 64
      Width = 36
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'digo:'
      Visible = False
    end
    object Label58: TLabel
      Left = 31
      Top = 24
      Width = 36
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'digo:'
    end
    object Label79: TLabel
      Left = 209
      Top = 24
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tipo:'
    end
    object DBEdit8: TDBEdit
      Left = 728
      Top = 56
      Width = 121
      Height = 21
      TabStop = False
      DataField = 'ID'
      DataSource = dmProdutoCarto.dsProduto
      ReadOnly = True
      TabOrder = 0
      Visible = False
    end
    object DBEdit10: TDBEdit
      Left = 72
      Top = 64
      Width = 281
      Height = 21
      DataField = 'Nome'
      DataSource = dmProdutoCarto.dsProduto
      TabOrder = 5
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 72
      Top = 40
      Width = 281
      Height = 21
      DropDownCount = 15
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = dmProdutoCarto.dsPessoa
      TabOrder = 4
    end
    object DBEdit79: TDBEdit
      Left = 72
      Top = 16
      Width = 121
      Height = 21
      DataField = 'Referencia'
      DataSource = dmProdutoCarto.dsProduto
      TabOrder = 1
    end
    object DBCheckBox38: TDBCheckBox
      Left = 552
      Top = 18
      Width = 55
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Inativo'
      DataField = 'Inativo'
      DataSource = dmProdutoCarto.dsProduto
      TabOrder = 3
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBEdit32: TDBEdit
      Left = 856
      Top = 32
      Width = 65
      Height = 21
      DataField = 'ID'
      DataSource = dmProdutoCarto.dsProdutoCarto
      TabOrder = 6
      Visible = False
    end
    object DBEdit33: TDBEdit
      Left = 856
      Top = 56
      Width = 65
      Height = 21
      DataField = 'ID'
      DataSource = dmProdutoCarto.dsProdutoCartoFD
      TabOrder = 7
      Visible = False
    end
    object DBEdit34: TDBEdit
      Left = 856
      Top = 8
      Width = 65
      Height = 21
      DataField = 'ID'
      DataSource = dmProdutoCarto.dsProduto
      TabOrder = 8
      Visible = False
    end
    object RxDBComboBox55: TRxDBComboBox
      Left = 240
      Top = 16
      Width = 281
      Height = 21
      Style = csDropDownList
      DataField = 'TIPO'
      DataSource = dmProdutoCarto.dsProdutoCarto
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'CAIXA NORMAL'
        'TAMPA ACOPLADA'
        'CARTUCHO'
        'SACOLA')
      TabOrder = 2
      Values.Strings = (
        '1'
        '2'
        '3'
        '4')
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 122
    Width = 932
    Height = 612
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 1
    object TabSheet3: TTabSheet
      Caption = 'Medidas'
      ImageIndex = 2
      DesignSize = (
        924
        584)
      object Shape2: TShape
        Left = -1
        Top = 166
        Width = 924
        Height = 158
        Anchors = [akLeft, akTop, akRight]
        Brush.Color = clMoneyGreen
        Pen.Color = clMoneyGreen
        Pen.Width = 0
      end
      object Shape1: TShape
        Left = 0
        Top = 2
        Width = 922
        Height = 159
        Anchors = [akLeft, akTop, akRight]
        Brush.Color = 13743257
        Pen.Color = clActiveCaption
        Pen.Width = 0
      end
      object Label2: TLabel
        Left = 80
        Top = 72
        Width = 33
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fundo:'
        Color = 13743257
        ParentColor = False
      end
      object Label3: TLabel
        Left = 77
        Top = 232
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tampa:'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label4: TLabel
        Left = 73
        Top = 392
        Width = 40
        Height = 13
        Alignment = taRightJustify
        Caption = 'Suporte:'
      end
      object Label6: TLabel
        Left = 122
        Top = 48
        Width = 61
        Height = 13
        Alignment = taCenter
        Caption = 'Comprimento'
        Color = 13743257
        ParentColor = False
      end
      object Label7: TLabel
        Left = 206
        Top = 48
        Width = 36
        Height = 13
        Alignment = taCenter
        Caption = 'Largura'
        Color = 13743257
        ParentColor = False
      end
      object Label8: TLabel
        Left = 283
        Top = 48
        Width = 27
        Height = 13
        Alignment = taCenter
        Caption = 'Altura'
        Color = 13743257
        ParentColor = False
      end
      object Label56: TLabel
        Left = 344
        Top = 35
        Width = 48
        Height = 26
        Alignment = taCenter
        Caption = 'Aba Int.'#13#10'Cabeceira'
        Color = 13743257
        ParentColor = False
      end
      object Label57: TLabel
        Left = 422
        Top = 35
        Width = 37
        Height = 26
        Alignment = taCenter
        Caption = 'Aba Int.'#13#10'Lateral'
        Color = 13743257
        ParentColor = False
      end
      object Label59: TLabel
        Left = 200
        Top = 196
        Width = 48
        Height = 26
        Alignment = taCenter
        Caption = 'Aba Int.'#13#10'Cabeceira'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label60: TLabel
        Left = 422
        Top = 196
        Width = 37
        Height = 26
        Alignment = taCenter
        Caption = 'Aba Int.'#13#10'Lateral'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label61: TLabel
        Left = 128
        Top = 196
        Width = 48
        Height = 26
        Alignment = taCenter
        Caption = 'Aba Ext.'#13#10'Cabeceira'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label62: TLabel
        Left = 348
        Top = 196
        Width = 40
        Height = 26
        Alignment = taCenter
        Caption = 'Aba Ext.'#13#10'Lateral'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label63: TLabel
        Left = 122
        Top = 368
        Width = 61
        Height = 13
        Alignment = taCenter
        Caption = 'Comprimento'
      end
      object Label64: TLabel
        Left = 206
        Top = 368
        Width = 36
        Height = 13
        Alignment = taCenter
        Caption = 'Largura'
      end
      object Label65: TLabel
        Left = 283
        Top = 368
        Width = 27
        Height = 13
        Alignment = taCenter
        Caption = 'Altura'
      end
      object Label66: TLabel
        Left = 344
        Top = 355
        Width = 48
        Height = 26
        Alignment = taCenter
        Caption = 'Aba Int.'#13#10'Cabeceira'
      end
      object Label67: TLabel
        Left = 422
        Top = 355
        Width = 37
        Height = 26
        Alignment = taCenter
        Caption = 'Aba Int.'#13#10'Lateral'
      end
      object Label28: TLabel
        Left = 554
        Top = 208
        Width = 61
        Height = 13
        Alignment = taCenter
        Caption = 'Comprimento'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label29: TLabel
        Left = 638
        Top = 208
        Width = 36
        Height = 13
        Alignment = taCenter
        Caption = 'Largura'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label17: TLabel
        Left = 554
        Top = 48
        Width = 61
        Height = 13
        Alignment = taCenter
        Caption = 'Comprimento'
        Color = 13743257
        ParentColor = False
      end
      object Label25: TLabel
        Left = 638
        Top = 48
        Width = 36
        Height = 13
        Alignment = taCenter
        Caption = 'Largura'
        Color = 13743257
        ParentColor = False
      end
      object Label30: TLabel
        Left = 37
        Top = 176
        Width = 76
        Height = 13
        Alignment = taRightJustify
        Caption = 'Material Tampa:'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label31: TLabel
        Left = 40
        Top = 16
        Width = 73
        Height = 13
        Alignment = taRightJustify
        Caption = 'Material Fundo:'
        Color = 13743257
        ParentColor = False
      end
      object Label32: TLabel
        Left = 33
        Top = 336
        Width = 80
        Height = 13
        Alignment = taRightJustify
        Caption = 'Material Suporte:'
      end
      object Label35: TLabel
        Left = 554
        Top = 368
        Width = 61
        Height = 13
        Alignment = taCenter
        Caption = 'Comprimento'
      end
      object Label36: TLabel
        Left = 638
        Top = 368
        Width = 36
        Height = 13
        Alignment = taCenter
        Caption = 'Largura'
      end
      object Label37: TLabel
        Left = 696
        Top = 72
        Width = 73
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tamanho ideal:'
        Color = 13743257
        ParentColor = False
        Visible = False
      end
      object Label38: TLabel
        Left = 696
        Top = 232
        Width = 73
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tamanho ideal:'
        Color = clMoneyGreen
        ParentColor = False
        Visible = False
      end
      object Label39: TLabel
        Left = 704
        Top = 392
        Width = 73
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tamanho ideal:'
        Visible = False
      end
      object Label84: TLabel
        Left = 446
        Top = 16
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = 'Faca:'
        Color = 13743257
        ParentColor = False
      end
      object Label87: TLabel
        Left = 33
        Top = 552
        Width = 66
        Height = 13
        Alignment = taRightJustify
        Caption = 'Observa'#231#245'es:'
      end
      object Label85: TLabel
        Left = 778
        Top = 48
        Width = 61
        Height = 13
        Alignment = taCenter
        Caption = 'Comprimento'
        Color = 13743257
        ParentColor = False
        Visible = False
      end
      object Label86: TLabel
        Left = 862
        Top = 48
        Width = 36
        Height = 13
        Alignment = taCenter
        Caption = 'Largura'
        Color = 13743257
        ParentColor = False
        Visible = False
      end
      object Label88: TLabel
        Left = 778
        Top = 208
        Width = 61
        Height = 13
        Alignment = taCenter
        Caption = 'Comprimento'
        Color = clMoneyGreen
        ParentColor = False
        Visible = False
      end
      object Label89: TLabel
        Left = 862
        Top = 208
        Width = 36
        Height = 13
        Alignment = taCenter
        Caption = 'Largura'
        Color = clMoneyGreen
        ParentColor = False
        Visible = False
      end
      object Label90: TLabel
        Left = 786
        Top = 368
        Width = 61
        Height = 13
        Alignment = taCenter
        Caption = 'Comprimento'
        Visible = False
      end
      object Label91: TLabel
        Left = 870
        Top = 368
        Width = 36
        Height = 13
        Alignment = taCenter
        Caption = 'Largura'
        Visible = False
      end
      object Shape3: TShape
        Left = 0
        Top = 326
        Width = 924
        Height = 158
        Anchors = [akLeft, akTop, akRight]
        Brush.Color = 8963327
        Pen.Color = 8963327
        Pen.Width = 0
      end
      object Label92: TLabel
        Left = 33
        Top = 336
        Width = 80
        Height = 13
        Alignment = taRightJustify
        Caption = 'Material Suporte:'
        Color = 8963327
        ParentColor = False
      end
      object DBEdit2: TDBEdit
        Left = 120
        Top = 64
        Width = 65
        Height = 21
        DataField = 'FD_COMPR'
        DataSource = dmProdutoCarto.dsProdutoCarto
        TabOrder = 1
        OnExit = DBEdit2Exit
      end
      object DBEdit3: TDBEdit
        Left = 192
        Top = 64
        Width = 65
        Height = 21
        DataField = 'FD_LARGURA'
        DataSource = dmProdutoCarto.dsProdutoCarto
        TabOrder = 2
        OnExit = DBEdit2Exit
      end
      object DBEdit4: TDBEdit
        Left = 264
        Top = 64
        Width = 65
        Height = 21
        DataField = 'FD_ALTURA'
        DataSource = dmProdutoCarto.dsProdutoCarto
        TabOrder = 3
        OnExit = DBEdit2Exit
      end
      object DBEdit5: TDBEdit
        Left = 192
        Top = 224
        Width = 65
        Height = 21
        DataField = 'TP_ABA_INT_CAB'
        DataSource = dmProdutoCarto.dsProdutoCarto
        TabOrder = 13
        OnExit = DBEdit6Exit
      end
      object DBEdit6: TDBEdit
        Left = 120
        Top = 224
        Width = 65
        Height = 21
        DataField = 'TP_ABA_EXT_CAB'
        DataSource = dmProdutoCarto.dsProdutoCarto
        TabOrder = 12
        OnExit = DBEdit6Exit
      end
      object DBEdit7: TDBEdit
        Left = 408
        Top = 224
        Width = 65
        Height = 21
        DataField = 'TP_ABA_INT_LAT'
        DataSource = dmProdutoCarto.dsProdutoCarto
        TabOrder = 15
        OnExit = DBEdit6Exit
      end
      object DBEdit30: TDBEdit
        Left = 120
        Top = 384
        Width = 65
        Height = 21
        DataField = 'SP_COMPR'
        DataSource = dmProdutoCarto.dsProdutoCarto
        TabOrder = 21
        OnExit = DBEdit30Exit
      end
      object DBEdit44: TDBEdit
        Left = 192
        Top = 384
        Width = 65
        Height = 21
        DataField = 'SP_LARGURA'
        DataSource = dmProdutoCarto.dsProdutoCarto
        TabOrder = 22
        OnExit = DBEdit30Exit
      end
      object DBEdit45: TDBEdit
        Left = 264
        Top = 384
        Width = 65
        Height = 21
        DataField = 'SP_ALTURA'
        DataSource = dmProdutoCarto.dsProdutoCarto
        TabOrder = 23
        OnExit = DBEdit30Exit
      end
      object DBEdit73: TDBEdit
        Left = 336
        Top = 64
        Width = 65
        Height = 21
        DataField = 'FD_ABA_INT_CAB'
        DataSource = dmProdutoCarto.dsProdutoCarto
        TabOrder = 4
        OnExit = DBEdit2Exit
      end
      object DBEdit74: TDBEdit
        Left = 336
        Top = 224
        Width = 65
        Height = 21
        DataField = 'TP_ABA_EXT_LAT'
        DataSource = dmProdutoCarto.dsProdutoCarto
        TabOrder = 14
        OnExit = DBEdit6Exit
      end
      object DBEdit75: TDBEdit
        Left = 336
        Top = 384
        Width = 65
        Height = 21
        DataField = 'SP_ABA_INT_CAB'
        DataSource = dmProdutoCarto.dsProdutoCarto
        TabOrder = 24
        OnExit = DBEdit30Exit
      end
      object DBEdit76: TDBEdit
        Left = 408
        Top = 64
        Width = 65
        Height = 21
        DataField = 'FD_ABA_INT_LAT'
        DataSource = dmProdutoCarto.dsProdutoCarto
        TabOrder = 5
      end
      object DBEdit78: TDBEdit
        Left = 408
        Top = 384
        Width = 65
        Height = 21
        DataField = 'SP_ABA_INT_LAT'
        DataSource = dmProdutoCarto.dsProdutoCarto
        TabOrder = 25
        OnExit = DBEdit30Exit
      end
      object DBEdit1: TDBEdit
        Left = 552
        Top = 64
        Width = 65
        Height = 21
        TabStop = False
        DataField = 'FD_DIMENSAO1'
        DataSource = dmProdutoCarto.dsProdutoCarto
        TabOrder = 7
      end
      object DBEdit9: TDBEdit
        Left = 624
        Top = 64
        Width = 65
        Height = 21
        TabStop = False
        DataField = 'FD_DIMENSAO2'
        DataSource = dmProdutoCarto.dsProdutoCarto
        TabOrder = 8
      end
      object DBEdit11: TDBEdit
        Left = 552
        Top = 224
        Width = 65
        Height = 21
        TabStop = False
        DataField = 'TP_DIMENSAO1'
        DataSource = dmProdutoCarto.dsProdutoCarto
        TabOrder = 16
      end
      object DBEdit12: TDBEdit
        Left = 624
        Top = 224
        Width = 65
        Height = 21
        TabStop = False
        DataField = 'TP_DIMENSAO2'
        DataSource = dmProdutoCarto.dsProdutoCarto
        TabOrder = 17
      end
      object BitBtn10: TBitBtn
        Left = 104
        Top = 499
        Width = 75
        Height = 25
        Caption = 'Ca&lcular'
        TabOrder = 30
        OnClick = BitBtn10Click
      end
      object RxDBComboBox5: TRxDBComboBox
        Left = 120
        Top = 168
        Width = 281
        Height = 21
        Style = csDropDownList
        DataField = 'TP_TIPO_MAT'
        DataSource = dmProdutoCarto.dsProdutoCarto
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'DUPLEX'
          'MICRO'
          'CART'#195'O / CART'#195'O'
          'MICRO / ABAS INTERNAS')
        TabOrder = 11
        Values.Strings = (
          '1'
          '2'
          '3'
          '4')
        OnChange = DBEdit6Exit
      end
      object RxDBComboBox11: TRxDBComboBox
        Left = 120
        Top = 8
        Width = 281
        Height = 21
        Style = csDropDownList
        DataField = 'FD_TIPO_MAT'
        DataSource = dmProdutoCarto.dsProdutoCarto
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'DUPLEX'
          'MICRO'
          'CART'#195'O / CART'#195'O'
          'MICRO / ABAS INTERNAS')
        TabOrder = 0
        Values.Strings = (
          '1'
          '2'
          '3'
          '4')
        OnChange = DBEdit2Exit
      end
      object RxDBComboBox13: TRxDBComboBox
        Left = 120
        Top = 328
        Width = 281
        Height = 21
        Style = csDropDownList
        DataField = 'SP_TIPO_MAT'
        DataSource = dmProdutoCarto.dsProdutoCarto
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'DUPLEX'
          'MICRO'
          'CART'#195'O / CART'#195'O'
          'MICRO / ABAS INTERNAS')
        TabOrder = 20
        Values.Strings = (
          '1'
          '2'
          '3'
          '4')
      end
      object DBEdit13: TDBEdit
        Left = 552
        Top = 384
        Width = 65
        Height = 21
        TabStop = False
        DataSource = dmProdutoCarto.dsProdutoCarto
        TabOrder = 26
      end
      object DBEdit14: TDBEdit
        Left = 624
        Top = 384
        Width = 65
        Height = 21
        TabStop = False
        DataSource = dmProdutoCarto.dsProdutoCarto
        TabOrder = 27
      end
      object DBEdit15: TDBEdit
        Left = 776
        Top = 64
        Width = 65
        Height = 21
        DataSource = dmProdutoCarto.dsProdutoCarto
        ReadOnly = True
        TabOrder = 9
        Visible = False
      end
      object DBEdit16: TDBEdit
        Left = 776
        Top = 224
        Width = 65
        Height = 21
        DataSource = dmProdutoCarto.dsProdutoCarto
        ReadOnly = True
        TabOrder = 18
        Visible = False
      end
      object DBEdit17: TDBEdit
        Left = 784
        Top = 384
        Width = 65
        Height = 21
        DataSource = dmProdutoCarto.dsProdutoCarto
        ReadOnly = True
        TabOrder = 28
        Visible = False
      end
      object DBEdit18: TDBEdit
        Left = 848
        Top = 64
        Width = 65
        Height = 21
        DataSource = dmProdutoCarto.dsProdutoCarto
        ReadOnly = True
        TabOrder = 10
        Visible = False
      end
      object DBEdit19: TDBEdit
        Left = 848
        Top = 224
        Width = 65
        Height = 21
        DataSource = dmProdutoCarto.dsProdutoCarto
        ReadOnly = True
        TabOrder = 19
        Visible = False
      end
      object DBEdit20: TDBEdit
        Left = 856
        Top = 384
        Width = 65
        Height = 21
        DataSource = dmProdutoCarto.dsProdutoCarto
        ReadOnly = True
        TabOrder = 29
        Visible = False
      end
      object RxDBLookupCombo35: TRxDBLookupCombo
        Left = 480
        Top = 8
        Width = 138
        Height = 21
        DropDownCount = 8
        DataField = 'FACA_FD'
        DataSource = dmProdutoCarto.dsProdutoCarto
        LookupField = 'ID'
        LookupDisplay = 'ID'
        TabOrder = 6
        OnChange = RxDBLookupCombo23Change
      end
      object DBMemo1: TDBMemo
        Left = 104
        Top = 528
        Width = 601
        Height = 39
        DataField = 'OBS'
        DataSource = dmProdutoCarto.dsProdutoCarto
        TabOrder = 31
      end
      object SMDBGrid4: TSMDBGrid
        Left = 0
        Top = 88
        Width = 921
        Height = 75
        Anchors = [akLeft, akTop, akRight]
        DataSource = dmProdutoCarto.dsFacaFD
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 32
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = SMDBGrid4DblClick
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
        ColCount = 9
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'FD_COMPR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FD_LARGURA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FD_ALTURA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FD_ABA_INT_CAB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FD_ABA_INT_LAT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FD_COPIAS_C'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FD_COPIAS_L'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end>
      end
      object BitBtn11: TBitBtn
        Left = 475
        Top = 61
        Width = 75
        Height = 25
        Caption = 'Incluir Faca'
        TabOrder = 33
        OnClick = BitBtn11Click
      end
      object SMDBGrid5: TSMDBGrid
        Left = 0
        Top = 248
        Width = 922
        Height = 75
        Anchors = [akLeft, akTop, akRight]
        DataSource = dmProdutoCarto.dsFacaTP
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 34
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = SMDBGrid5DblClick
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
        ColCount = 9
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'TP_ABA_EXT_CAB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TP_ABA_INT_CAB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TP_ABA_EXT_LAT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TP_ABA_INT_LAT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TP_COPIAS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TP_COPIAS_C'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TP_COPIAS_L'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end>
      end
      object SMDBGrid6: TSMDBGrid
        Left = 0
        Top = 408
        Width = 922
        Height = 75
        Anchors = [akLeft, akTop, akRight]
        DataSource = dmProdutoCarto.dsFacaSP
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 35
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = SMDBGrid6DblClick
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
        ColCount = 9
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'FD_COMPR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FD_LARGURA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FD_ALTURA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FD_ABA_INT_CAB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FD_ABA_INT_LAT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SP_COPIAS_C'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SP_COPIAS_L'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end>
      end
      object BitBtn12: TBitBtn
        Left = 475
        Top = 221
        Width = 75
        Height = 25
        Caption = 'Incluir Faca'
        TabOrder = 36
        OnClick = BitBtn12Click
      end
      object BitBtn13: TBitBtn
        Left = 475
        Top = 381
        Width = 75
        Height = 25
        Caption = 'Incluir Faca'
        TabOrder = 37
        OnClick = BitBtn13Click
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Fundo / Cartucho / Sacola'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 432
        Width = 924
        Height = 152
        Align = alClient
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
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
        ColCount = 8
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'POSICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FRENTEVERSO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODCOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODMATERIAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONSUMO'
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 400
        Width = 924
        Height = 32
        Align = alTop
        TabOrder = 1
        object Label14: TLabel
          Left = 13
          Top = 12
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cores'
        end
        object BitBtn4: TBitBtn
          Left = 48
          Top = 4
          Width = 75
          Height = 25
          Caption = '&Incluir'
          TabOrder = 0
          OnClick = BitBtn4Click
        end
        object BitBtn5: TBitBtn
          Left = 123
          Top = 4
          Width = 75
          Height = 25
          Caption = 'E&xcluir'
          TabOrder = 1
          OnClick = BitBtn5Click
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 924
        Height = 400
        Align = alTop
        Color = 13743257
        TabOrder = 2
        object Label1: TLabel
          Left = 34
          Top = 104
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fechamento:'
        end
        object Label10: TLabel
          Left = 47
          Top = 28
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Material 1:'
        end
        object Label18: TLabel
          Left = 50
          Top = 128
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cartucho:'
        end
        object Label33: TLabel
          Left = 47
          Top = 52
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Material 2:'
        end
        object Label34: TLabel
          Left = 47
          Top = 76
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Material 3:'
        end
        object Label44: TLabel
          Left = 63
          Top = 176
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'Frente:'
        end
        object Label45: TLabel
          Left = 66
          Top = 200
          Width = 30
          Height = 13
          Alignment = taRightJustify
          Caption = 'Verso:'
        end
        object Label11: TLabel
          Left = 90
          Top = 152
          Width = 78
          Height = 13
          Alignment = taRightJustify
          Caption = 'Revestimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 243
          Top = 232
          Width = 33
          Height = 13
          Alignment = taCenter
          Caption = 'Compr.'
        end
        object Label49: TLabel
          Left = 300
          Top = 232
          Width = 36
          Height = 13
          Alignment = taCenter
          Caption = 'Largura'
        end
        object Label50: TLabel
          Left = 412
          Top = 232
          Width = 26
          Height = 13
          Alignment = taCenter
          Caption = 'Local'
        end
        object Label51: TLabel
          Left = 704
          Top = 232
          Width = 26
          Height = 13
          Alignment = taCenter
          Caption = 'Local'
        end
        object Label52: TLabel
          Left = 823
          Top = 232
          Width = 21
          Height = 13
          Alignment = taCenter
          Caption = 'Tipo'
        end
        object Label48: TLabel
          Left = 92
          Top = 232
          Width = 71
          Height = 13
          Alignment = taRightJustify
          Caption = 'Acabamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label80: TLabel
          Left = 104
          Top = 6
          Width = 32
          Height = 13
          Caption = 'Grupo:'
        end
        object Label81: TLabel
          Left = 272
          Top = 6
          Width = 108
          Height = 13
          Caption = 'Sub-grupo (gramatura):'
        end
        object DBCheckBox1: TDBCheckBox
          Left = 392
          Top = 124
          Width = 55
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Trava'
          DataField = 'TRAVA'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          TabOrder = 13
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox2: TDBCheckBox
          Left = 477
          Top = 124
          Width = 55
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Display'
          DataField = 'DISPLAY'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          TabOrder = 14
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox3: TDBCheckBox
          Left = 728
          Top = 22
          Width = 55
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Pin'#231'a'
          DataField = 'PINCA'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          TabOrder = 3
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox6: TDBCheckBox
          Left = 672
          Top = 168
          Width = 113
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Restistente a atrito'
          DataField = 'REVEST_FT_ATRITO'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          TabOrder = 18
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox7: TDBCheckBox
          Left = 792
          Top = 168
          Width = 105
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Restistente a luz'
          DataField = 'REVEST_FT_LUZ'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          TabOrder = 19
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object RxDBLookupCombo2: TRxDBLookupCombo
          Left = 440
          Top = 20
          Width = 281
          Height = 21
          DropDownCount = 8
          DataField = 'MATERIAL1'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmProdutoCarto.dsqMaterialFD1
          TabOrder = 2
        end
        object RxDBComboBox1: TRxDBComboBox
          Left = 104
          Top = 96
          Width = 281
          Height = 21
          Style = csDropDownList
          DataField = 'FECHAMENTO'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O'
            'AUTO ADESIVO NORMAL'
            'AUTO ADESIVO COM ABAS LATERAIS COLADAS'
            'ENCAIXE SEM COLA'
            'ENCAIXE COM ABAS LATERAIS COLADAS')
          TabOrder = 11
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4')
        end
        object RxDBComboBox7: TRxDBComboBox
          Left = 104
          Top = 120
          Width = 281
          Height = 21
          Style = csDropDownList
          DataField = 'FECHAMENTO_CT'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O'
            'FUNDO NORMAL - FN'
            'FUNDO AUTOM'#193'TICO - FA'
            'FUNDO AMERICANO - FAM'
            'ENCAIXE SEM COLA'
            'ENCAIXE COM COLA'
            '4 PONTOS'
            '6 PONTOS'
            'DISPLAY'
            'ENVOLT'#211'RIO')
          TabOrder = 12
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9')
        end
        object RxDBLookupCombo5: TRxDBLookupCombo
          Left = 440
          Top = 44
          Width = 281
          Height = 21
          DropDownCount = 8
          DataField = 'MATERIAL2'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmProdutoCarto.dsqMaterialFD2
          TabOrder = 7
        end
        object RxDBLookupCombo6: TRxDBLookupCombo
          Left = 440
          Top = 68
          Width = 281
          Height = 21
          DropDownCount = 8
          DataField = 'MATERIAL3'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmProdutoCarto.dsqMaterialFD3
          TabOrder = 10
        end
        object RxDBComboBox14: TRxDBComboBox
          Left = 104
          Top = 168
          Width = 169
          Height = 21
          Style = csDropDownList
          DataField = 'REVEST_FT'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O'
            'VERNIZ'
            'BARREIRA ALIMENTA'#199#195'O'
            'PL'#193'STICO'
            'PROLAN')
          TabOrder = 15
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4')
          OnChange = RxDBComboBox14Change
        end
        object RxDBLookupCombo11: TRxDBLookupCombo
          Left = 275
          Top = 168
          Width = 281
          Height = 21
          DropDownCount = 8
          DataField = 'REVEST_FT_MAT'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmProdutoCarto.dsqMaterial
          TabOrder = 16
        end
        object DBCheckBox10: TDBCheckBox
          Left = 672
          Top = 192
          Width = 113
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Restistente a atrito'
          DataField = 'REVEST_VS_ATRITO'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          TabOrder = 23
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox11: TDBCheckBox
          Left = 792
          Top = 192
          Width = 105
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Restistente a luz'
          DataField = 'REVEST_VS_LUZ'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          TabOrder = 24
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object RxDBComboBox15: TRxDBComboBox
          Left = 104
          Top = 192
          Width = 169
          Height = 21
          Style = csDropDownList
          DataField = 'REVEST_VS'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O'
            'VERNIZ'
            'BARREIRA ALIMENTA'#199#195'O'
            'PL'#193'STICO'
            'PROLAN')
          TabOrder = 20
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4')
          OnChange = RxDBComboBox15Change
        end
        object RxDBLookupCombo12: TRxDBLookupCombo
          Left = 275
          Top = 192
          Width = 281
          Height = 21
          DropDownCount = 8
          DataField = 'REVEST_VS_MAT'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmProdutoCarto.dsqMaterial
          TabOrder = 21
        end
        object RxDBComboBox18: TRxDBComboBox
          Left = 558
          Top = 168
          Width = 105
          Height = 21
          Style = csDropDownList
          DataField = 'REVEST_FT_BRIL'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'BRILHO'
            'FOSCO'
            'ALTO BRILHO')
          TabOrder = 17
          Values.Strings = (
            '1'
            '2'
            '3')
        end
        object RxDBComboBox19: TRxDBComboBox
          Left = 558
          Top = 192
          Width = 105
          Height = 21
          Style = csDropDownList
          DataField = 'REVEST_VS_BRIL'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'BRILHO'
            'FOSCO'
            'ALTO BRILHO')
          TabOrder = 22
          Values.Strings = (
            '1'
            '2'
            '3')
        end
        object RxDBComboBox2: TRxDBComboBox
          Left = 350
          Top = 248
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'AR_LOCAL'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CABECEIRA'
            'LATERAL'
            'FUNDO DO FUNDO'
            'EM CIMA DA TAMPA')
          TabOrder = 28
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object DBCheckBox28: TDBCheckBox
          Left = 104
          Top = 250
          Width = 97
          Height = 17
          Caption = 'Alto relevo'
          DataField = 'AR'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          TabOrder = 25
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox28Click
        end
        object DBCheckBox29: TDBCheckBox
          Left = 104
          Top = 274
          Width = 97
          Height = 17
          Caption = 'Baixo relevo'
          DataField = 'BR'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          TabOrder = 29
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox29Click
        end
        object DBCheckBox30: TDBCheckBox
          Left = 104
          Top = 298
          Width = 97
          Height = 17
          Caption = 'Hot stamping'
          DataField = 'HS'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          TabOrder = 33
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox30Click
        end
        object DBCheckBox31: TDBCheckBox
          Left = 104
          Top = 322
          Width = 97
          Height = 17
          Caption = 'Visor'
          DataField = 'VISOR'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          TabOrder = 37
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox31Click
        end
        object DBCheckBox32: TDBCheckBox
          Left = 568
          Top = 320
          Width = 70
          Height = 17
          Caption = 'Ilh'#243's'
          DataField = 'ILHOS'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          TabOrder = 53
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox32Click
        end
        object DBCheckBox33: TDBCheckBox
          Left = 568
          Top = 248
          Width = 70
          Height = 17
          Caption = 'Picote'
          DataField = 'PICOTE'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          TabOrder = 45
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox33Click
        end
        object DBCheckBox34: TDBCheckBox
          Left = 568
          Top = 272
          Width = 70
          Height = 17
          Caption = 'Passa fita'
          DataField = 'PASSAFITA'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          TabOrder = 48
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox34Click
        end
        object DBCheckBox35: TDBCheckBox
          Left = 568
          Top = 296
          Width = 70
          Height = 17
          Caption = 'Al'#231'a'
          DataField = 'ALCA'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          TabOrder = 51
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox35Click
        end
        object DBCheckBox36: TDBCheckBox
          Left = 104
          Top = 346
          Width = 137
          Height = 17
          Caption = 'Verniz UV localizado'
          DataField = 'VERNIZUV'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          TabOrder = 41
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox36Click
        end
        object DBCheckBox37: TDBCheckBox
          Left = 568
          Top = 344
          Width = 110
          Height = 17
          Caption = 'Verniz UV total'
          DataField = 'VERNIZUV_TOTAL'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          TabOrder = 55
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit21: TDBEdit
          Left = 232
          Top = 248
          Width = 55
          Height = 21
          DataField = 'AR_COMPR'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          TabOrder = 26
        end
        object DBEdit22: TDBEdit
          Left = 290
          Top = 248
          Width = 57
          Height = 21
          DataField = 'AR_LARG'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          TabOrder = 27
        end
        object DBEdit23: TDBEdit
          Left = 232
          Top = 272
          Width = 55
          Height = 21
          DataField = 'BR_COMPR'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          TabOrder = 30
        end
        object DBEdit24: TDBEdit
          Left = 290
          Top = 272
          Width = 57
          Height = 21
          DataField = 'BR_LARG'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          TabOrder = 31
        end
        object RxDBComboBox8: TRxDBComboBox
          Left = 350
          Top = 272
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'BR_LOCAL'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CABECEIRA'
            'LATERAL'
            'FUNDO DO FUNDO'
            'EM CIMA DA TAMPA')
          TabOrder = 32
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object DBEdit25: TDBEdit
          Left = 232
          Top = 296
          Width = 55
          Height = 21
          DataField = 'HS_COMPR'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          TabOrder = 34
        end
        object DBEdit26: TDBEdit
          Left = 290
          Top = 296
          Width = 57
          Height = 21
          DataField = 'HS_LARG'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          TabOrder = 35
        end
        object RxDBComboBox20: TRxDBComboBox
          Left = 350
          Top = 296
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'HS_LOCAL'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CABECEIRA'
            'LATERAL'
            'FUNDO DO FUNDO'
            'EM CIMA DA TAMPA')
          TabOrder = 36
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object DBEdit27: TDBEdit
          Left = 232
          Top = 320
          Width = 55
          Height = 21
          DataField = 'VISOR_COMPR'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          TabOrder = 38
        end
        object DBEdit28: TDBEdit
          Left = 290
          Top = 320
          Width = 57
          Height = 21
          DataField = 'VISOR_LARG'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          TabOrder = 39
        end
        object RxDBComboBox21: TRxDBComboBox
          Left = 350
          Top = 320
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'VISOR_LOCAL'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CABECEIRA'
            'LATERAL'
            'FUNDO DO FUNDO'
            'EM CIMA DA TAMPA')
          TabOrder = 40
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object DBEdit29: TDBEdit
          Left = 232
          Top = 344
          Width = 55
          Height = 21
          DataField = 'VERNIZUV_COMPR'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          TabOrder = 42
        end
        object DBEdit31: TDBEdit
          Left = 290
          Top = 344
          Width = 57
          Height = 21
          DataField = 'VERNIZUV_LARG'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          TabOrder = 43
        end
        object RxDBComboBox22: TRxDBComboBox
          Left = 350
          Top = 344
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'VERNIZUV_LOCAL'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CABECEIRA'
            'LATERAL'
            'FUNDO DO FUNDO'
            'EM CIMA DA TAMPA')
          TabOrder = 44
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object RxDBComboBox23: TRxDBComboBox
          Left = 642
          Top = 248
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'PICOTE_LOCAL'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CABECEIRA'
            'LATERAL'
            'FUNDO DO FUNDO'
            'EM CIMA DA TAMPA')
          TabOrder = 46
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object RxDBComboBox24: TRxDBComboBox
          Left = 642
          Top = 272
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'PASSAFITA_LOCAL'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CABECEIRA'
            'LATERAL'
            'FUNDO DO FUNDO'
            'EM CIMA DA TAMPA')
          TabOrder = 49
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object RxDBComboBox25: TRxDBComboBox
          Left = 642
          Top = 296
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'ALCA_LOCAL'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CABECEIRA'
            'LATERAL'
            'FUNDO DO FUNDO'
            'EM CIMA DA TAMPA')
          TabOrder = 52
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object RxDBComboBox26: TRxDBComboBox
          Left = 642
          Top = 320
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'ILHOS_LOCAL'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CABECEIRA'
            'LATERAL'
            'FUNDO DO FUNDO'
            'EM CIMA DA TAMPA')
          TabOrder = 54
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object RxDBComboBox27: TRxDBComboBox
          Left = 794
          Top = 272
          Width = 105
          Height = 21
          Style = csDropDownList
          DataField = 'PASSAFITA_TIPO'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'REDONDO'
            'OVAL'
            'RETANGULAR')
          TabOrder = 50
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object RxDBComboBox28: TRxDBComboBox
          Left = 794
          Top = 248
          Width = 105
          Height = 21
          Style = csDropDownList
          DataField = 'PICOTE_TIPO'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'MICRO SERRILHA'
            '0.5 POR 0.5')
          TabOrder = 47
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object DBEdit58: TDBEdit
          Left = 785
          Top = 20
          Width = 65
          Height = 21
          TabStop = False
          DataField = 'PINCA_TAM'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          TabOrder = 4
        end
        object RxDBLookupCombo23: TRxDBLookupCombo
          Left = 104
          Top = 20
          Width = 166
          Height = 21
          DropDownCount = 8
          DataField = 'GRUPO1'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmProdutoCarto.dsqGrupo
          TabOrder = 0
          OnChange = RxDBLookupCombo23Change
        end
        object RxDBLookupCombo24: TRxDBLookupCombo
          Left = 272
          Top = 20
          Width = 166
          Height = 21
          DropDownCount = 8
          DataField = 'SUBGRUPO1'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmProdutoCarto.dsGrupoItemFD1
          TabOrder = 1
          OnChange = RxDBLookupCombo24Change
        end
        object RxDBLookupCombo25: TRxDBLookupCombo
          Left = 104
          Top = 44
          Width = 166
          Height = 21
          DropDownCount = 8
          DataField = 'GRUPO2'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmProdutoCarto.dsqGrupo
          TabOrder = 5
          OnChange = RxDBLookupCombo25Change
        end
        object RxDBLookupCombo26: TRxDBLookupCombo
          Left = 272
          Top = 44
          Width = 166
          Height = 21
          DropDownCount = 8
          DataField = 'SUBGRUPO2'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmProdutoCarto.dsGrupoItemFD2
          TabOrder = 6
          OnChange = RxDBLookupCombo26Change
        end
        object RxDBLookupCombo27: TRxDBLookupCombo
          Left = 104
          Top = 68
          Width = 166
          Height = 21
          DropDownCount = 8
          DataField = 'GRUPO3'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmProdutoCarto.dsqGrupo
          TabOrder = 8
          OnChange = RxDBLookupCombo27Change
        end
        object RxDBLookupCombo28: TRxDBLookupCombo
          Left = 272
          Top = 68
          Width = 166
          Height = 21
          DropDownCount = 8
          DataField = 'SUBGRUPO3'
          DataSource = dmProdutoCarto.dsProdutoCartoFD
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmProdutoCarto.dsGrupoItemFD3
          TabOrder = 9
          OnChange = RxDBLookupCombo28Change
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Tampa'
      ImageIndex = 1
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 924
        Height = 400
        Align = alTop
        Color = clMoneyGreen
        TabOrder = 0
        object Label15: TLabel
          Left = 47
          Top = 28
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Material 1:'
        end
        object Label40: TLabel
          Left = 47
          Top = 52
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Material 2:'
        end
        object Label41: TLabel
          Left = 47
          Top = 76
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Material 3:'
        end
        object Label9: TLabel
          Left = 34
          Top = 104
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fechamento:'
        end
        object Label20: TLabel
          Left = 63
          Top = 176
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'Frente:'
        end
        object Label46: TLabel
          Left = 66
          Top = 200
          Width = 30
          Height = 13
          Alignment = taRightJustify
          Caption = 'Verso:'
        end
        object Label47: TLabel
          Left = 90
          Top = 152
          Width = 78
          Height = 13
          Alignment = taRightJustify
          Caption = 'Revestimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label53: TLabel
          Left = 243
          Top = 232
          Width = 33
          Height = 13
          Alignment = taCenter
          Caption = 'Compr.'
        end
        object Label54: TLabel
          Left = 300
          Top = 232
          Width = 36
          Height = 13
          Alignment = taCenter
          Caption = 'Largura'
        end
        object Label55: TLabel
          Left = 412
          Top = 232
          Width = 26
          Height = 13
          Alignment = taCenter
          Caption = 'Local'
        end
        object Label68: TLabel
          Left = 704
          Top = 232
          Width = 26
          Height = 13
          Alignment = taCenter
          Caption = 'Local'
        end
        object Label69: TLabel
          Left = 823
          Top = 232
          Width = 21
          Height = 13
          Alignment = taCenter
          Caption = 'Tipo'
        end
        object Label70: TLabel
          Left = 92
          Top = 232
          Width = 71
          Height = 13
          Alignment = taRightJustify
          Caption = 'Acabamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 104
          Top = 6
          Width = 32
          Height = 13
          Caption = 'Grupo:'
        end
        object Label42: TLabel
          Left = 272
          Top = 6
          Width = 52
          Height = 13
          Caption = 'Sub-grupo:'
        end
        object DBCheckBox12: TDBCheckBox
          Left = 728
          Top = 22
          Width = 55
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Pin'#231'a'
          DataField = 'PINCA'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          TabOrder = 3
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object RxDBLookupCombo3: TRxDBLookupCombo
          Left = 440
          Top = 20
          Width = 281
          Height = 21
          DropDownCount = 8
          DataField = 'MATERIAL1'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmProdutoCarto.dsqMaterialTP1
          TabOrder = 2
        end
        object RxDBLookupCombo7: TRxDBLookupCombo
          Left = 440
          Top = 44
          Width = 281
          Height = 21
          DropDownCount = 8
          DataField = 'MATERIAL2'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmProdutoCarto.dsqMaterialTP2
          TabOrder = 7
        end
        object RxDBLookupCombo8: TRxDBLookupCombo
          Left = 440
          Top = 68
          Width = 281
          Height = 21
          DropDownCount = 8
          DataField = 'MATERIAL3'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmProdutoCarto.dsqMaterialTP3
          TabOrder = 10
        end
        object DBCheckBox8: TDBCheckBox
          Left = 672
          Top = 168
          Width = 113
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Restistente a atrito'
          DataField = 'REVEST_FT_ATRITO'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          TabOrder = 15
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox9: TDBCheckBox
          Left = 792
          Top = 168
          Width = 105
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Restistente a luz'
          DataField = 'REVEST_FT_LUZ'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          TabOrder = 16
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object RxDBComboBox3: TRxDBComboBox
          Left = 104
          Top = 96
          Width = 281
          Height = 21
          Style = csDropDownList
          DataField = 'FECHAMENTO'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O'
            'AUTO ADESIVO NORMAL'
            'AUTO ADESIVO COM ABAS LATERAIS COLADAS'
            'ENCAIXE SEM COLA'
            'ENCAIXE COM ABAS LATERAIS COLADAS'
            'ACOPLADA')
          TabOrder = 11
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5')
        end
        object RxDBComboBox6: TRxDBComboBox
          Left = 104
          Top = 168
          Width = 169
          Height = 21
          Style = csDropDownList
          DataField = 'REVEST_FT'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O'
            'VERNIZ'
            'BARREIRA ALIMENTA'#199#195'O'
            'PL'#193'STICO'
            'PROLAN')
          TabOrder = 12
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4')
          OnChange = RxDBComboBox6Change
        end
        object RxDBLookupCombo13: TRxDBLookupCombo
          Left = 275
          Top = 168
          Width = 281
          Height = 21
          DropDownCount = 8
          DataField = 'REVEST_FT_MAT'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmProdutoCarto.dsqMaterial
          TabOrder = 13
        end
        object DBCheckBox13: TDBCheckBox
          Left = 672
          Top = 192
          Width = 113
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Restistente a atrito'
          DataField = 'REVEST_VS_ATRITO'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          TabOrder = 20
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox14: TDBCheckBox
          Left = 792
          Top = 192
          Width = 105
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Restistente a luz'
          DataField = 'REVEST_VS_LUZ'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          TabOrder = 21
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object RxDBComboBox16: TRxDBComboBox
          Left = 104
          Top = 192
          Width = 169
          Height = 21
          Style = csDropDownList
          DataField = 'REVEST_VS'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O'
            'VERNIZ'
            'BARREIRA ALIMENTA'#199#195'O'
            'PL'#193'STICO'
            'PROLAN')
          TabOrder = 17
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4')
          OnChange = RxDBComboBox16Change
        end
        object RxDBLookupCombo14: TRxDBLookupCombo
          Left = 275
          Top = 192
          Width = 281
          Height = 21
          DropDownCount = 8
          DataField = 'REVEST_VS_MAT'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmProdutoCarto.dsqMaterial
          TabOrder = 18
        end
        object RxDBComboBox17: TRxDBComboBox
          Left = 558
          Top = 168
          Width = 105
          Height = 21
          Style = csDropDownList
          DataField = 'REVEST_FT_BRIL'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'BRILHO'
            'FOSCO'
            'ALTO BRILHO')
          TabOrder = 14
          Values.Strings = (
            '1'
            '2'
            '3')
        end
        object RxDBComboBox29: TRxDBComboBox
          Left = 558
          Top = 192
          Width = 105
          Height = 21
          Style = csDropDownList
          DataField = 'REVEST_VS_BRIL'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'BRILHO'
            'FOSCO'
            'ALTO BRILHO')
          TabOrder = 19
          Values.Strings = (
            '1'
            '2'
            '3')
        end
        object RxDBComboBox30: TRxDBComboBox
          Left = 350
          Top = 248
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'AR_LOCAL'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CABECEIRA'
            'LATERAL'
            'FUNDO DO FUNDO'
            'EM CIMA DA TAMPA')
          TabOrder = 25
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object DBCheckBox15: TDBCheckBox
          Left = 104
          Top = 250
          Width = 97
          Height = 17
          Caption = 'Alto relevo'
          DataField = 'AR'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          TabOrder = 22
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox15Click
        end
        object DBCheckBox16: TDBCheckBox
          Left = 104
          Top = 274
          Width = 97
          Height = 17
          Caption = 'Baixo relevo'
          DataField = 'BR'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          TabOrder = 26
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox16Click
        end
        object DBCheckBox17: TDBCheckBox
          Left = 104
          Top = 298
          Width = 97
          Height = 17
          Caption = 'Hot stamping'
          DataField = 'HS'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          TabOrder = 30
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox17Click
        end
        object DBCheckBox18: TDBCheckBox
          Left = 104
          Top = 322
          Width = 97
          Height = 17
          Caption = 'Visor'
          DataField = 'VISOR'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          TabOrder = 34
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox18Click
        end
        object DBCheckBox39: TDBCheckBox
          Left = 568
          Top = 320
          Width = 69
          Height = 17
          Caption = 'Ilh'#243's'
          DataField = 'ILHOS'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          TabOrder = 50
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox39Click
        end
        object DBCheckBox40: TDBCheckBox
          Left = 568
          Top = 248
          Width = 69
          Height = 17
          Caption = 'Picote'
          DataField = 'PICOTE'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          TabOrder = 42
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox40Click
        end
        object DBCheckBox41: TDBCheckBox
          Left = 568
          Top = 272
          Width = 69
          Height = 17
          Caption = 'Passa fita'
          DataField = 'PASSAFITA'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          TabOrder = 45
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox41Click
        end
        object DBCheckBox42: TDBCheckBox
          Left = 568
          Top = 296
          Width = 69
          Height = 17
          Caption = 'Al'#231'a'
          DataField = 'ALCA'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          TabOrder = 48
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox42Click
        end
        object DBCheckBox43: TDBCheckBox
          Left = 104
          Top = 346
          Width = 124
          Height = 17
          Caption = 'Verniz UV localizado'
          DataField = 'VERNIZUV'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          TabOrder = 38
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox43Click
        end
        object DBCheckBox44: TDBCheckBox
          Left = 568
          Top = 344
          Width = 109
          Height = 17
          Caption = 'Verniz UV total'
          DataField = 'VERNIZUV_TOTAL'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          TabOrder = 52
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit35: TDBEdit
          Left = 232
          Top = 248
          Width = 55
          Height = 21
          DataField = 'AR_COMPR'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          TabOrder = 23
        end
        object DBEdit36: TDBEdit
          Left = 290
          Top = 248
          Width = 57
          Height = 21
          DataField = 'AR_LARG'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          TabOrder = 24
        end
        object DBEdit37: TDBEdit
          Left = 232
          Top = 272
          Width = 55
          Height = 21
          DataField = 'BR_COMPR'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          TabOrder = 27
        end
        object DBEdit38: TDBEdit
          Left = 290
          Top = 272
          Width = 57
          Height = 21
          DataField = 'BR_LARG'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          TabOrder = 28
        end
        object RxDBComboBox31: TRxDBComboBox
          Left = 350
          Top = 272
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'BR_LOCAL'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CABECEIRA'
            'LATERAL'
            'FUNDO DO FUNDO'
            'EM CIMA DA TAMPA')
          TabOrder = 29
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object DBEdit39: TDBEdit
          Left = 232
          Top = 296
          Width = 55
          Height = 21
          DataField = 'HS_COMPR'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          TabOrder = 31
        end
        object DBEdit40: TDBEdit
          Left = 290
          Top = 296
          Width = 57
          Height = 21
          DataField = 'HS_LARG'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          TabOrder = 32
        end
        object RxDBComboBox32: TRxDBComboBox
          Left = 350
          Top = 296
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'HS_LOCAL'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CABECEIRA'
            'LATERAL'
            'FUNDO DO FUNDO'
            'EM CIMA DA TAMPA')
          TabOrder = 33
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object DBEdit41: TDBEdit
          Left = 232
          Top = 320
          Width = 55
          Height = 21
          DataField = 'VISOR_COMPR'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          TabOrder = 35
        end
        object DBEdit42: TDBEdit
          Left = 290
          Top = 320
          Width = 57
          Height = 21
          DataField = 'VISOR_LARG'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          TabOrder = 36
        end
        object RxDBComboBox33: TRxDBComboBox
          Left = 350
          Top = 320
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'VISOR_LOCAL'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CABECEIRA'
            'LATERAL'
            'FUNDO DO FUNDO'
            'EM CIMA DA TAMPA')
          TabOrder = 37
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object DBEdit43: TDBEdit
          Left = 232
          Top = 344
          Width = 55
          Height = 21
          DataField = 'VERNIZUV_COMPR'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          TabOrder = 39
        end
        object DBEdit46: TDBEdit
          Left = 290
          Top = 344
          Width = 57
          Height = 21
          DataField = 'VERNIZUV_LARG'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          TabOrder = 40
        end
        object RxDBComboBox34: TRxDBComboBox
          Left = 350
          Top = 344
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'VERNIZUV_LOCAL'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CABECEIRA'
            'LATERAL'
            'FUNDO DO FUNDO'
            'EM CIMA DA TAMPA')
          TabOrder = 41
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object RxDBComboBox35: TRxDBComboBox
          Left = 642
          Top = 248
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'PICOTE_LOCAL'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CABECEIRA'
            'LATERAL'
            'FUNDO DO FUNDO'
            'EM CIMA DA TAMPA')
          TabOrder = 43
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object RxDBComboBox36: TRxDBComboBox
          Left = 642
          Top = 272
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'PASSAFITA_LOCAL'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CABECEIRA'
            'LATERAL'
            'FUNDO DO FUNDO'
            'EM CIMA DA TAMPA')
          TabOrder = 46
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object RxDBComboBox37: TRxDBComboBox
          Left = 642
          Top = 296
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'ALCA_LOCAL'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CABECEIRA'
            'LATERAL'
            'FUNDO DO FUNDO'
            'EM CIMA DA TAMPA')
          TabOrder = 49
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object RxDBComboBox38: TRxDBComboBox
          Left = 642
          Top = 320
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'ILHOS_LOCAL'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CABECEIRA'
            'LATERAL'
            'FUNDO DO FUNDO'
            'EM CIMA DA TAMPA')
          TabOrder = 51
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object RxDBComboBox39: TRxDBComboBox
          Left = 794
          Top = 272
          Width = 105
          Height = 21
          Style = csDropDownList
          DataField = 'PASSAFITA_TIPO'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'REDONDO'
            'OVAL'
            'RETANGULAR')
          TabOrder = 47
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object RxDBComboBox40: TRxDBComboBox
          Left = 794
          Top = 248
          Width = 105
          Height = 21
          Style = csDropDownList
          DataField = 'PICOTE_TIPO'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'MICRO SERRILHA'
            '0.5 POR 0.5')
          TabOrder = 44
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object DBEdit57: TDBEdit
          Left = 785
          Top = 20
          Width = 65
          Height = 21
          TabStop = False
          DataField = 'PINCA_TAM'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          TabOrder = 4
        end
        object RxDBLookupCombo17: TRxDBLookupCombo
          Left = 104
          Top = 20
          Width = 166
          Height = 21
          DropDownCount = 8
          DataField = 'GRUPO1'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmProdutoCarto.dsqGrupo
          TabOrder = 0
          OnChange = RxDBLookupCombo17Change
        end
        object RxDBLookupCombo18: TRxDBLookupCombo
          Left = 272
          Top = 20
          Width = 166
          Height = 21
          DropDownCount = 8
          DataField = 'SUBGRUPO1'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmProdutoCarto.dsGrupoItemTP1
          TabOrder = 1
          OnChange = RxDBLookupCombo18Change
        end
        object RxDBLookupCombo19: TRxDBLookupCombo
          Left = 104
          Top = 44
          Width = 166
          Height = 21
          DropDownCount = 8
          DataField = 'GRUPO2'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmProdutoCarto.dsqGrupo
          TabOrder = 5
          OnChange = RxDBLookupCombo19Change
        end
        object RxDBLookupCombo20: TRxDBLookupCombo
          Left = 272
          Top = 44
          Width = 166
          Height = 21
          DropDownCount = 8
          DataField = 'SUBGRUPO2'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmProdutoCarto.dsGrupoItemTP2
          TabOrder = 6
          OnChange = RxDBLookupCombo20Change
        end
        object RxDBLookupCombo21: TRxDBLookupCombo
          Left = 104
          Top = 68
          Width = 166
          Height = 21
          DropDownCount = 8
          DataField = 'GRUPO3'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmProdutoCarto.dsqGrupo
          TabOrder = 8
          OnChange = RxDBLookupCombo21Change
        end
        object RxDBLookupCombo22: TRxDBLookupCombo
          Left = 272
          Top = 68
          Width = 166
          Height = 21
          DropDownCount = 8
          DataField = 'SUBGRUPO3'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmProdutoCarto.dsGrupoItemTP3
          TabOrder = 9
          OnChange = RxDBLookupCombo22Change
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 400
        Width = 924
        Height = 32
        Align = alTop
        TabOrder = 1
        object Label21: TLabel
          Left = 13
          Top = 12
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cores'
        end
        object BitBtn6: TBitBtn
          Left = 48
          Top = 4
          Width = 75
          Height = 25
          Caption = '&Incluir'
          TabOrder = 0
        end
        object BitBtn7: TBitBtn
          Left = 123
          Top = 4
          Width = 75
          Height = 25
          Caption = 'E&xcluir'
          TabOrder = 1
        end
      end
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 432
        Width = 924
        Height = 152
        Align = alClient
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
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
        ColCount = 8
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'POSICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FRENTEVERSO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODCOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODMATERIAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONSUMO'
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Suporte'
      ImageIndex = 3
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 924
        Height = 400
        Align = alTop
        Color = 8963327
        TabOrder = 0
        object Label22: TLabel
          Left = 47
          Top = 28
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Material 1:'
        end
        object Label23: TLabel
          Left = 47
          Top = 52
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Material 2:'
        end
        object Label24: TLabel
          Left = 47
          Top = 76
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Material 3:'
        end
        object Label26: TLabel
          Left = 34
          Top = 104
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fechamento:'
        end
        object Label43: TLabel
          Left = 63
          Top = 176
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'Frente:'
        end
        object Label71: TLabel
          Left = 66
          Top = 200
          Width = 30
          Height = 13
          Alignment = taRightJustify
          Caption = 'Verso:'
        end
        object Label72: TLabel
          Left = 90
          Top = 152
          Width = 78
          Height = 13
          Alignment = taRightJustify
          Caption = 'Revestimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label73: TLabel
          Left = 243
          Top = 232
          Width = 33
          Height = 13
          Alignment = taCenter
          Caption = 'Compr.'
        end
        object Label74: TLabel
          Left = 300
          Top = 232
          Width = 36
          Height = 13
          Alignment = taCenter
          Caption = 'Largura'
        end
        object Label75: TLabel
          Left = 412
          Top = 232
          Width = 26
          Height = 13
          Alignment = taCenter
          Caption = 'Local'
        end
        object Label76: TLabel
          Left = 704
          Top = 232
          Width = 26
          Height = 13
          Alignment = taCenter
          Caption = 'Local'
        end
        object Label77: TLabel
          Left = 823
          Top = 232
          Width = 21
          Height = 13
          Alignment = taCenter
          Caption = 'Tipo'
        end
        object Label78: TLabel
          Left = 92
          Top = 232
          Width = 71
          Height = 13
          Alignment = taRightJustify
          Caption = 'Acabamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label82: TLabel
          Left = 104
          Top = 6
          Width = 32
          Height = 13
          Caption = 'Grupo:'
        end
        object Label83: TLabel
          Left = 272
          Top = 6
          Width = 52
          Height = 13
          Caption = 'Sub-grupo:'
        end
        object DBCheckBox19: TDBCheckBox
          Left = 728
          Top = 22
          Width = 55
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Pin'#231'a'
          DataField = 'PINCA'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          TabOrder = 3
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object RxDBLookupCombo4: TRxDBLookupCombo
          Left = 440
          Top = 20
          Width = 281
          Height = 21
          DropDownCount = 8
          DataField = 'MATERIAL1'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmProdutoCarto.dsqMaterialSP1
          TabOrder = 2
        end
        object RxDBLookupCombo9: TRxDBLookupCombo
          Left = 440
          Top = 44
          Width = 281
          Height = 21
          DropDownCount = 8
          DataField = 'MATERIAL2'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmProdutoCarto.dsqMaterialSP2
          TabOrder = 7
        end
        object RxDBLookupCombo10: TRxDBLookupCombo
          Left = 440
          Top = 68
          Width = 281
          Height = 21
          DropDownCount = 8
          DataField = 'MATERIAL3'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmProdutoCarto.dsqMaterialSP3
          TabOrder = 10
        end
        object DBCheckBox22: TDBCheckBox
          Left = 672
          Top = 168
          Width = 113
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Restistente a atrito'
          DataField = 'REVEST_FT_ATRITO'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          TabOrder = 15
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox23: TDBCheckBox
          Left = 792
          Top = 168
          Width = 105
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Restistente a luz'
          DataField = 'REVEST_FT_LUZ'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          TabOrder = 16
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object RxDBComboBox9: TRxDBComboBox
          Left = 104
          Top = 96
          Width = 281
          Height = 21
          Style = csDropDownList
          DataField = 'FECHAMENTO'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O'
            'AUTO ADESIVO NORMAL'
            'AUTO ADESIVO COM ABAS LATERAIS COLADAS'
            'ENCAIXE SEM COLA'
            'ENCAIXE COM ABAS LATERAIS COLADAS')
          TabOrder = 11
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4')
        end
        object RxDBComboBox12: TRxDBComboBox
          Left = 104
          Top = 168
          Width = 169
          Height = 21
          Style = csDropDownList
          DataField = 'REVEST_FT'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O'
            'VERNIZ'
            'BARREIRA ALIMENTA'#199#195'O'
            'PL'#193'STICO'
            'PROLAN')
          TabOrder = 12
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4')
          OnChange = RxDBComboBox6Change
        end
        object RxDBLookupCombo15: TRxDBLookupCombo
          Left = 275
          Top = 168
          Width = 281
          Height = 21
          DropDownCount = 8
          DataField = 'REVEST_FT_MAT'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmProdutoCarto.dsqMaterial
          TabOrder = 13
        end
        object DBCheckBox24: TDBCheckBox
          Left = 672
          Top = 192
          Width = 113
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Restistente a atrito'
          DataField = 'REVEST_VS_ATRITO'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          TabOrder = 20
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox25: TDBCheckBox
          Left = 792
          Top = 192
          Width = 105
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Restistente a luz'
          DataField = 'REVEST_VS_LUZ'
          DataSource = dmProdutoCarto.dsProdutoCartoTP
          TabOrder = 21
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object RxDBComboBox41: TRxDBComboBox
          Left = 104
          Top = 192
          Width = 169
          Height = 21
          Style = csDropDownList
          DataField = 'REVEST_VS'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O'
            'VERNIZ'
            'BARREIRA ALIMENTA'#199#195'O'
            'PL'#193'STICO'
            'PROLAN')
          TabOrder = 17
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4')
          OnChange = RxDBComboBox16Change
        end
        object RxDBLookupCombo16: TRxDBLookupCombo
          Left = 275
          Top = 192
          Width = 281
          Height = 21
          DropDownCount = 8
          DataField = 'REVEST_VS_MAT'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmProdutoCarto.dsqMaterial
          TabOrder = 18
        end
        object RxDBComboBox42: TRxDBComboBox
          Left = 558
          Top = 168
          Width = 105
          Height = 21
          Style = csDropDownList
          DataField = 'REVEST_FT_BRIL'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'BRILHO'
            'FOSCO'
            'ALTO BRILHO')
          TabOrder = 14
          Values.Strings = (
            '1'
            '2'
            '3')
        end
        object RxDBComboBox43: TRxDBComboBox
          Left = 558
          Top = 192
          Width = 105
          Height = 21
          Style = csDropDownList
          DataField = 'REVEST_VS_BRIL'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'BRILHO'
            'FOSCO'
            'ALTO BRILHO')
          TabOrder = 19
          Values.Strings = (
            '1'
            '2'
            '3')
        end
        object RxDBComboBox44: TRxDBComboBox
          Left = 350
          Top = 248
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'AR_LOCAL'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CABECEIRA'
            'LATERAL'
            'FUNDO DO FUNDO'
            'EM CIMA DA TAMPA')
          TabOrder = 25
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object DBCheckBox26: TDBCheckBox
          Left = 104
          Top = 250
          Width = 90
          Height = 17
          Caption = 'Alto relevo'
          DataField = 'AR'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          TabOrder = 22
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox15Click
        end
        object DBCheckBox27: TDBCheckBox
          Left = 104
          Top = 274
          Width = 90
          Height = 17
          Caption = 'Baixo relevo'
          DataField = 'BR'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          TabOrder = 26
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox16Click
        end
        object DBCheckBox45: TDBCheckBox
          Left = 104
          Top = 298
          Width = 90
          Height = 17
          Caption = 'Hot stamping'
          DataField = 'HS'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          TabOrder = 30
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox17Click
        end
        object DBCheckBox46: TDBCheckBox
          Left = 104
          Top = 322
          Width = 90
          Height = 17
          Caption = 'Visor'
          DataField = 'VISOR'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          TabOrder = 34
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox18Click
        end
        object DBCheckBox47: TDBCheckBox
          Left = 568
          Top = 320
          Width = 72
          Height = 17
          Caption = 'Ilh'#243's'
          DataField = 'ILHOS'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          TabOrder = 50
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox39Click
        end
        object DBCheckBox48: TDBCheckBox
          Left = 568
          Top = 248
          Width = 72
          Height = 17
          Caption = 'Picote'
          DataField = 'PICOTE'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          TabOrder = 42
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox40Click
        end
        object DBCheckBox49: TDBCheckBox
          Left = 568
          Top = 272
          Width = 72
          Height = 17
          Caption = 'Passa fita'
          DataField = 'PASSAFITA'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          TabOrder = 45
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox41Click
        end
        object DBCheckBox50: TDBCheckBox
          Left = 568
          Top = 296
          Width = 72
          Height = 17
          Caption = 'Al'#231'a'
          DataField = 'ALCA'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          TabOrder = 48
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox42Click
        end
        object DBCheckBox51: TDBCheckBox
          Left = 104
          Top = 346
          Width = 130
          Height = 17
          Caption = 'Verniz UV localizado'
          DataField = 'VERNIZUV'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          TabOrder = 38
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox43Click
        end
        object DBCheckBox52: TDBCheckBox
          Left = 568
          Top = 344
          Width = 112
          Height = 17
          Caption = 'Verniz UV total'
          DataField = 'VERNIZUV_TOTAL'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          TabOrder = 52
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit47: TDBEdit
          Left = 232
          Top = 248
          Width = 55
          Height = 21
          DataField = 'AR_COMPR'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          TabOrder = 23
        end
        object DBEdit48: TDBEdit
          Left = 290
          Top = 248
          Width = 57
          Height = 21
          DataField = 'AR_LARG'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          TabOrder = 24
        end
        object DBEdit49: TDBEdit
          Left = 232
          Top = 272
          Width = 55
          Height = 21
          DataField = 'BR_COMPR'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          TabOrder = 27
        end
        object DBEdit50: TDBEdit
          Left = 290
          Top = 272
          Width = 57
          Height = 21
          DataField = 'BR_LARG'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          TabOrder = 28
        end
        object RxDBComboBox45: TRxDBComboBox
          Left = 350
          Top = 272
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'BR_LOCAL'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CABECEIRA'
            'LATERAL'
            'FUNDO DO FUNDO'
            'EM CIMA DA TAMPA')
          TabOrder = 29
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object DBEdit51: TDBEdit
          Left = 232
          Top = 296
          Width = 55
          Height = 21
          DataField = 'HS_COMPR'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          TabOrder = 31
        end
        object DBEdit52: TDBEdit
          Left = 290
          Top = 296
          Width = 57
          Height = 21
          DataField = 'HS_LARG'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          TabOrder = 32
        end
        object RxDBComboBox46: TRxDBComboBox
          Left = 350
          Top = 296
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'HS_LOCAL'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CABECEIRA'
            'LATERAL'
            'FUNDO DO FUNDO'
            'EM CIMA DA TAMPA')
          TabOrder = 33
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object DBEdit53: TDBEdit
          Left = 232
          Top = 320
          Width = 55
          Height = 21
          DataField = 'VISOR_COMPR'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          TabOrder = 35
        end
        object DBEdit54: TDBEdit
          Left = 290
          Top = 320
          Width = 57
          Height = 21
          DataField = 'VISOR_LARG'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          TabOrder = 36
        end
        object RxDBComboBox47: TRxDBComboBox
          Left = 350
          Top = 320
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'VISOR_LOCAL'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CABECEIRA'
            'LATERAL'
            'FUNDO DO FUNDO'
            'EM CIMA DA TAMPA')
          TabOrder = 37
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object DBEdit55: TDBEdit
          Left = 232
          Top = 344
          Width = 55
          Height = 21
          DataField = 'VERNIZUV_COMPR'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          TabOrder = 39
        end
        object DBEdit56: TDBEdit
          Left = 290
          Top = 344
          Width = 57
          Height = 21
          DataField = 'VERNIZUV_LARG'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          TabOrder = 40
        end
        object RxDBComboBox48: TRxDBComboBox
          Left = 350
          Top = 344
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'VERNIZUV_LOCAL'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CABECEIRA'
            'LATERAL'
            'FUNDO DO FUNDO'
            'EM CIMA DA TAMPA')
          TabOrder = 41
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object RxDBComboBox49: TRxDBComboBox
          Left = 642
          Top = 248
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'PICOTE_LOCAL'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CABECEIRA'
            'LATERAL'
            'FUNDO DO FUNDO'
            'EM CIMA DA TAMPA')
          TabOrder = 43
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object RxDBComboBox50: TRxDBComboBox
          Left = 642
          Top = 272
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'PASSAFITA_LOCAL'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CABECEIRA'
            'LATERAL'
            'FUNDO DO FUNDO'
            'EM CIMA DA TAMPA')
          TabOrder = 46
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object RxDBComboBox51: TRxDBComboBox
          Left = 642
          Top = 296
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'ALCA_LOCAL'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CABECEIRA'
            'LATERAL'
            'FUNDO DO FUNDO'
            'EM CIMA DA TAMPA')
          TabOrder = 49
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object RxDBComboBox52: TRxDBComboBox
          Left = 642
          Top = 320
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'ILHOS_LOCAL'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CABECEIRA'
            'LATERAL'
            'FUNDO DO FUNDO'
            'EM CIMA DA TAMPA')
          TabOrder = 51
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object RxDBComboBox53: TRxDBComboBox
          Left = 794
          Top = 272
          Width = 105
          Height = 21
          Style = csDropDownList
          DataField = 'PASSAFITA_TIPO'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'REDONDO'
            'OVAL'
            'RETANGULAR')
          TabOrder = 47
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object RxDBComboBox54: TRxDBComboBox
          Left = 794
          Top = 248
          Width = 105
          Height = 21
          Style = csDropDownList
          DataField = 'PICOTE_TIPO'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'MICRO SERRILHA'
            '0.5 POR 0.5')
          TabOrder = 44
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object DBEdit59: TDBEdit
          Left = 785
          Top = 20
          Width = 65
          Height = 21
          TabStop = False
          DataField = 'PINCA_TAM'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          TabOrder = 4
        end
        object RxDBLookupCombo29: TRxDBLookupCombo
          Left = 104
          Top = 20
          Width = 166
          Height = 21
          DropDownCount = 8
          DataField = 'GRUPO1'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmProdutoCarto.dsqGrupo
          TabOrder = 0
          OnChange = RxDBLookupCombo29Change
        end
        object RxDBLookupCombo30: TRxDBLookupCombo
          Left = 272
          Top = 20
          Width = 166
          Height = 21
          DropDownCount = 8
          DataField = 'SUBGRUPO1'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmProdutoCarto.dsGrupoItemSP1
          TabOrder = 1
          OnChange = RxDBLookupCombo30Change
        end
        object RxDBLookupCombo31: TRxDBLookupCombo
          Left = 104
          Top = 44
          Width = 166
          Height = 21
          DropDownCount = 8
          DataField = 'GRUPO2'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmProdutoCarto.dsqGrupo
          TabOrder = 5
          OnChange = RxDBLookupCombo31Change
        end
        object RxDBLookupCombo32: TRxDBLookupCombo
          Left = 272
          Top = 44
          Width = 166
          Height = 21
          DropDownCount = 8
          DataField = 'SUBGRUPO2'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmProdutoCarto.dsGrupoItemSP2
          TabOrder = 6
          OnChange = RxDBLookupCombo32Change
        end
        object RxDBLookupCombo33: TRxDBLookupCombo
          Left = 104
          Top = 68
          Width = 166
          Height = 21
          DropDownCount = 8
          DataField = 'GRUPO3'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmProdutoCarto.dsqGrupo
          TabOrder = 8
          OnChange = RxDBLookupCombo33Change
        end
        object RxDBLookupCombo34: TRxDBLookupCombo
          Left = 272
          Top = 68
          Width = 166
          Height = 21
          DropDownCount = 8
          DataField = 'SUBGRUPO3'
          DataSource = dmProdutoCarto.dsProdutoCartoSP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmProdutoCarto.dsGrupoItemSP3
          TabOrder = 9
          OnChange = RxDBLookupCombo34Change
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 400
        Width = 924
        Height = 32
        Align = alTop
        TabOrder = 1
        object Label27: TLabel
          Left = 13
          Top = 12
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cores'
        end
        object BitBtn8: TBitBtn
          Left = 48
          Top = 4
          Width = 75
          Height = 25
          Caption = '&Incluir'
          TabOrder = 0
        end
        object BitBtn9: TBitBtn
          Left = 123
          Top = 4
          Width = 75
          Height = 25
          Caption = 'E&xcluir'
          TabOrder = 1
        end
      end
      object SMDBGrid3: TSMDBGrid
        Left = 0
        Top = 432
        Width = 924
        Height = 152
        Align = alClient
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
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
        ColCount = 8
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'POSICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FRENTEVERSO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODCOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODMATERIAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONSUMO'
            Visible = True
          end>
      end
    end
  end
end
