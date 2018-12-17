object fOrcamento: TfOrcamento
  Left = 137
  Top = 6
  Width = 948
  Height = 772
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fOrcamento'
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
    Height = 68
    Align = alTop
    TabOrder = 0
    object Label5: TLabel
      Left = 40
      Top = 24
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente:'
    end
    object Label12: TLabel
      Left = 4
      Top = 48
      Width = 71
      Height = 13
      Alignment = taRightJustify
      Caption = 'Ficha T'#233'cnica:'
    end
    object Label93: TLabel
      Left = 392
      Top = 48
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'Faca:'
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 80
      Top = 16
      Width = 281
      Height = 21
      DropDownCount = 15
      DataSource = dmOrcamento.dsProdutoCarto
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = dmOrcamento.dsPessoa
      TabOrder = 1
    end
    object DBCheckBox38: TDBCheckBox
      Left = 384
      Top = 18
      Width = 55
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Inativo'
      DataField = 'Inativo'
      DataSource = dmOrcamento.dsProduto
      TabOrder = 0
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBEdit34: TDBEdit
      Left = 856
      Top = 8
      Width = 65
      Height = 21
      DataField = 'ID'
      DataSource = dmOrcamento.dsProduto
      TabOrder = 2
      Visible = False
    end
    object RxDBLookupCombo36: TRxDBLookupCombo
      Left = 80
      Top = 40
      Width = 281
      Height = 21
      DropDownCount = 15
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = dmOrcamento.dsPessoa
      TabOrder = 3
    end
    object RxDBLookupCombo37: TRxDBLookupCombo
      Left = 424
      Top = 40
      Width = 281
      Height = 21
      DropDownCount = 15
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = dmOrcamento.dsPessoa
      TabOrder = 4
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 97
    Width = 932
    Height = 639
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 1
    object TabSheet3: TTabSheet
      Caption = 'Quantidades / Medidas'
      ImageIndex = 2
      DesignSize = (
        924
        611)
      object Shape2: TShape
        Left = -1
        Top = 193
        Width = 924
        Height = 100
        Anchors = [akLeft, akTop, akRight]
        Brush.Color = clMoneyGreen
        Pen.Color = clMoneyGreen
        Pen.Width = 0
      end
      object Shape1: TShape
        Left = 0
        Top = 89
        Width = 922
        Height = 100
        Anchors = [akLeft, akTop, akRight]
        Brush.Color = 13743257
        Pen.Color = clActiveCaption
        Pen.Width = 0
      end
      object Label2: TLabel
        Left = 80
        Top = 159
        Width = 33
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fundo:'
        Color = 13743257
        ParentColor = False
      end
      object Label3: TLabel
        Left = 77
        Top = 262
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tampa:'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label4: TLabel
        Left = 73
        Top = 367
        Width = 40
        Height = 13
        Alignment = taRightJustify
        Caption = 'Suporte:'
      end
      object Label6: TLabel
        Left = 122
        Top = 135
        Width = 61
        Height = 13
        Alignment = taCenter
        Caption = 'Comprimento'
        Color = 13743257
        ParentColor = False
      end
      object Label7: TLabel
        Left = 206
        Top = 135
        Width = 36
        Height = 13
        Alignment = taCenter
        Caption = 'Largura'
        Color = 13743257
        ParentColor = False
      end
      object Label8: TLabel
        Left = 283
        Top = 135
        Width = 27
        Height = 13
        Alignment = taCenter
        Caption = 'Altura'
        Color = 13743257
        ParentColor = False
      end
      object Label56: TLabel
        Left = 344
        Top = 122
        Width = 48
        Height = 26
        Alignment = taCenter
        Caption = 'Aba Int.'#13#10'Cabeceira'
        Color = 13743257
        ParentColor = False
      end
      object Label57: TLabel
        Left = 422
        Top = 122
        Width = 37
        Height = 26
        Alignment = taCenter
        Caption = 'Aba Int.'#13#10'Lateral'
        Color = 13743257
        ParentColor = False
      end
      object Label59: TLabel
        Left = 200
        Top = 226
        Width = 48
        Height = 26
        Alignment = taCenter
        Caption = 'Aba Int.'#13#10'Cabeceira'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label60: TLabel
        Left = 422
        Top = 226
        Width = 37
        Height = 26
        Alignment = taCenter
        Caption = 'Aba Int.'#13#10'Lateral'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label61: TLabel
        Left = 128
        Top = 226
        Width = 48
        Height = 26
        Alignment = taCenter
        Caption = 'Aba Ext.'#13#10'Cabeceira'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label62: TLabel
        Left = 348
        Top = 226
        Width = 40
        Height = 26
        Alignment = taCenter
        Caption = 'Aba Ext.'#13#10'Lateral'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label63: TLabel
        Left = 122
        Top = 343
        Width = 61
        Height = 13
        Alignment = taCenter
        Caption = 'Comprimento'
      end
      object Label64: TLabel
        Left = 206
        Top = 343
        Width = 36
        Height = 13
        Alignment = taCenter
        Caption = 'Largura'
      end
      object Label65: TLabel
        Left = 283
        Top = 343
        Width = 27
        Height = 13
        Alignment = taCenter
        Caption = 'Altura'
      end
      object Label66: TLabel
        Left = 344
        Top = 330
        Width = 48
        Height = 26
        Alignment = taCenter
        Caption = 'Aba Int.'#13#10'Cabeceira'
      end
      object Label67: TLabel
        Left = 422
        Top = 330
        Width = 37
        Height = 26
        Alignment = taCenter
        Caption = 'Aba Int.'#13#10'Lateral'
      end
      object Label28: TLabel
        Left = 554
        Top = 238
        Width = 61
        Height = 13
        Alignment = taCenter
        Caption = 'Comprimento'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label29: TLabel
        Left = 638
        Top = 238
        Width = 36
        Height = 13
        Alignment = taCenter
        Caption = 'Largura'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label17: TLabel
        Left = 554
        Top = 135
        Width = 61
        Height = 13
        Alignment = taCenter
        Caption = 'Comprimento'
        Color = 13743257
        ParentColor = False
      end
      object Label25: TLabel
        Left = 638
        Top = 135
        Width = 36
        Height = 13
        Alignment = taCenter
        Caption = 'Largura'
        Color = 13743257
        ParentColor = False
      end
      object Label30: TLabel
        Left = 37
        Top = 206
        Width = 76
        Height = 13
        Alignment = taRightJustify
        Caption = 'Material Tampa:'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label31: TLabel
        Left = 40
        Top = 103
        Width = 73
        Height = 13
        Alignment = taRightJustify
        Caption = 'Material Fundo:'
        Color = 13743257
        ParentColor = False
      end
      object Label32: TLabel
        Left = 33
        Top = 311
        Width = 80
        Height = 13
        Alignment = taRightJustify
        Caption = 'Material Suporte:'
      end
      object Label35: TLabel
        Left = 554
        Top = 343
        Width = 61
        Height = 13
        Alignment = taCenter
        Caption = 'Comprimento'
      end
      object Label36: TLabel
        Left = 638
        Top = 343
        Width = 36
        Height = 13
        Alignment = taCenter
        Caption = 'Largura'
      end
      object Label37: TLabel
        Left = 696
        Top = 159
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
        Top = 262
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
        Top = 367
        Width = 73
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tamanho ideal:'
        Visible = False
      end
      object Label84: TLabel
        Left = 446
        Top = 103
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = 'Faca:'
        Color = 13743257
        ParentColor = False
      end
      object Label87: TLabel
        Left = 33
        Top = 472
        Width = 66
        Height = 13
        Alignment = taRightJustify
        Caption = 'Observa'#231#245'es:'
      end
      object Label85: TLabel
        Left = 778
        Top = 135
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
        Top = 135
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
        Top = 238
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
        Top = 238
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
        Top = 343
        Width = 61
        Height = 13
        Alignment = taCenter
        Caption = 'Comprimento'
        Visible = False
      end
      object Label91: TLabel
        Left = 870
        Top = 343
        Width = 36
        Height = 13
        Alignment = taCenter
        Caption = 'Largura'
        Visible = False
      end
      object Shape3: TShape
        Left = 0
        Top = 297
        Width = 924
        Height = 100
        Anchors = [akLeft, akTop, akRight]
        Brush.Color = 8963327
        Pen.Color = 8963327
        Pen.Width = 0
      end
      object Label92: TLabel
        Left = 33
        Top = 311
        Width = 80
        Height = 13
        Alignment = taRightJustify
        Caption = 'Material Suporte:'
        Color = 8963327
        ParentColor = False
      end
      object Label13: TLabel
        Left = 446
        Top = 206
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = 'Faca:'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label58: TLabel
        Left = 446
        Top = 311
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = 'Faca:'
        Color = 8963327
        ParentColor = False
      end
      object Label94: TLabel
        Left = 73
        Top = 367
        Width = 40
        Height = 13
        Alignment = taRightJustify
        Caption = 'Suporte:'
        Color = 8963327
        ParentColor = False
      end
      object Label95: TLabel
        Left = 122
        Top = 343
        Width = 61
        Height = 13
        Alignment = taCenter
        Caption = 'Comprimento'
        Color = 8963327
        ParentColor = False
      end
      object Label96: TLabel
        Left = 206
        Top = 343
        Width = 36
        Height = 13
        Alignment = taCenter
        Caption = 'Largura'
        Color = 8963327
        ParentColor = False
      end
      object Label97: TLabel
        Left = 283
        Top = 343
        Width = 27
        Height = 13
        Alignment = taCenter
        Caption = 'Altura'
        Color = 8963327
        ParentColor = False
      end
      object DBEdit2: TDBEdit
        Left = 120
        Top = 151
        Width = 65
        Height = 21
        DataField = 'FD_COMPR'
        DataSource = dmOrcamento.dsProdutoCarto
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 192
        Top = 151
        Width = 65
        Height = 21
        DataField = 'FD_LARGURA'
        DataSource = dmOrcamento.dsProdutoCarto
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 264
        Top = 151
        Width = 65
        Height = 21
        DataField = 'FD_ALTURA'
        DataSource = dmOrcamento.dsProdutoCarto
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 192
        Top = 254
        Width = 65
        Height = 21
        DataField = 'TP_ABA_INT_CAB'
        DataSource = dmOrcamento.dsProdutoCarto
        TabOrder = 13
      end
      object DBEdit6: TDBEdit
        Left = 120
        Top = 254
        Width = 65
        Height = 21
        DataField = 'TP_ABA_EXT_CAB'
        DataSource = dmOrcamento.dsProdutoCarto
        TabOrder = 12
      end
      object DBEdit7: TDBEdit
        Left = 408
        Top = 254
        Width = 65
        Height = 21
        DataField = 'TP_ABA_INT_LAT'
        DataSource = dmOrcamento.dsProdutoCarto
        TabOrder = 15
      end
      object DBEdit30: TDBEdit
        Left = 120
        Top = 359
        Width = 65
        Height = 21
        DataField = 'SP_COMPR'
        DataSource = dmOrcamento.dsProdutoCarto
        TabOrder = 21
      end
      object DBEdit44: TDBEdit
        Left = 192
        Top = 359
        Width = 65
        Height = 21
        DataField = 'SP_LARGURA'
        DataSource = dmOrcamento.dsProdutoCarto
        TabOrder = 22
      end
      object DBEdit45: TDBEdit
        Left = 264
        Top = 359
        Width = 65
        Height = 21
        DataField = 'SP_ALTURA'
        DataSource = dmOrcamento.dsProdutoCarto
        TabOrder = 23
      end
      object DBEdit73: TDBEdit
        Left = 336
        Top = 151
        Width = 65
        Height = 21
        DataField = 'FD_ABA_INT_CAB'
        DataSource = dmOrcamento.dsProdutoCarto
        TabOrder = 4
      end
      object DBEdit74: TDBEdit
        Left = 336
        Top = 254
        Width = 65
        Height = 21
        DataField = 'TP_ABA_EXT_LAT'
        DataSource = dmOrcamento.dsProdutoCarto
        TabOrder = 14
      end
      object DBEdit75: TDBEdit
        Left = 336
        Top = 359
        Width = 65
        Height = 21
        DataField = 'SP_ABA_INT_CAB'
        DataSource = dmOrcamento.dsProdutoCarto
        TabOrder = 24
      end
      object DBEdit76: TDBEdit
        Left = 408
        Top = 151
        Width = 65
        Height = 21
        DataField = 'FD_ABA_INT_LAT'
        DataSource = dmOrcamento.dsProdutoCarto
        TabOrder = 5
      end
      object DBEdit78: TDBEdit
        Left = 408
        Top = 359
        Width = 65
        Height = 21
        DataField = 'SP_ABA_INT_LAT'
        DataSource = dmOrcamento.dsProdutoCarto
        TabOrder = 25
      end
      object DBEdit1: TDBEdit
        Left = 552
        Top = 151
        Width = 65
        Height = 21
        TabStop = False
        DataField = 'FD_DIMENSAO1'
        DataSource = dmOrcamento.dsProdutoCarto
        TabOrder = 7
      end
      object DBEdit9: TDBEdit
        Left = 624
        Top = 151
        Width = 65
        Height = 21
        TabStop = False
        DataField = 'FD_DIMENSAO2'
        DataSource = dmOrcamento.dsProdutoCarto
        TabOrder = 8
      end
      object DBEdit11: TDBEdit
        Left = 552
        Top = 254
        Width = 65
        Height = 21
        TabStop = False
        DataField = 'TP_DIMENSAO1'
        DataSource = dmOrcamento.dsProdutoCarto
        TabOrder = 16
      end
      object DBEdit12: TDBEdit
        Left = 624
        Top = 254
        Width = 65
        Height = 21
        TabStop = False
        DataField = 'TP_DIMENSAO2'
        DataSource = dmOrcamento.dsProdutoCarto
        TabOrder = 17
      end
      object BitBtn10: TBitBtn
        Left = 104
        Top = 419
        Width = 75
        Height = 25
        Caption = 'Ca&lcular'
        TabOrder = 28
      end
      object RxDBComboBox5: TRxDBComboBox
        Left = 120
        Top = 198
        Width = 281
        Height = 21
        Style = csDropDownList
        DataField = 'TP_TIPO_MAT'
        DataSource = dmOrcamento.dsProdutoCarto
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
      end
      object RxDBComboBox11: TRxDBComboBox
        Left = 120
        Top = 95
        Width = 281
        Height = 21
        Style = csDropDownList
        DataField = 'FD_TIPO_MAT'
        DataSource = dmOrcamento.dsProdutoCarto
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
      end
      object RxDBComboBox13: TRxDBComboBox
        Left = 120
        Top = 303
        Width = 281
        Height = 21
        Style = csDropDownList
        DataField = 'SP_TIPO_MAT'
        DataSource = dmOrcamento.dsProdutoCarto
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
      object DBEdit15: TDBEdit
        Left = 776
        Top = 151
        Width = 65
        Height = 21
        DataSource = dmOrcamento.dsProdutoCarto
        ReadOnly = True
        TabOrder = 9
        Visible = False
      end
      object DBEdit16: TDBEdit
        Left = 776
        Top = 254
        Width = 65
        Height = 21
        DataSource = dmOrcamento.dsProdutoCarto
        ReadOnly = True
        TabOrder = 18
        Visible = False
      end
      object DBEdit17: TDBEdit
        Left = 784
        Top = 359
        Width = 65
        Height = 21
        DataSource = dmOrcamento.dsProdutoCarto
        ReadOnly = True
        TabOrder = 26
        Visible = False
      end
      object DBEdit18: TDBEdit
        Left = 848
        Top = 151
        Width = 65
        Height = 21
        DataSource = dmOrcamento.dsProdutoCarto
        ReadOnly = True
        TabOrder = 10
        Visible = False
      end
      object DBEdit19: TDBEdit
        Left = 848
        Top = 254
        Width = 65
        Height = 21
        DataSource = dmOrcamento.dsProdutoCarto
        ReadOnly = True
        TabOrder = 19
        Visible = False
      end
      object DBEdit20: TDBEdit
        Left = 856
        Top = 359
        Width = 65
        Height = 21
        DataSource = dmOrcamento.dsProdutoCarto
        ReadOnly = True
        TabOrder = 27
        Visible = False
      end
      object RxDBLookupCombo35: TRxDBLookupCombo
        Left = 480
        Top = 95
        Width = 138
        Height = 21
        DropDownCount = 8
        DataField = 'FACA_FD'
        DataSource = dmOrcamento.dsProdutoCarto
        LookupField = 'ID'
        LookupDisplay = 'ID'
        TabOrder = 6
        OnChange = RxDBLookupCombo23Change
      end
      object DBMemo1: TDBMemo
        Left = 104
        Top = 448
        Width = 601
        Height = 39
        DataField = 'OBS'
        DataSource = dmOrcamento.dsProdutoCarto
        TabOrder = 29
      end
      object RxDBLookupCombo38: TRxDBLookupCombo
        Left = 480
        Top = 198
        Width = 138
        Height = 21
        DropDownCount = 8
        DataField = 'FACA_TP'
        DataSource = dmOrcamento.dsProdutoCarto
        LookupField = 'ID'
        LookupDisplay = 'ID'
        TabOrder = 30
        OnChange = RxDBLookupCombo23Change
      end
      object RxDBLookupCombo39: TRxDBLookupCombo
        Left = 480
        Top = 303
        Width = 138
        Height = 21
        DropDownCount = 8
        DataField = 'FACA_SP'
        DataSource = dmOrcamento.dsProdutoCarto
        LookupField = 'ID'
        LookupDisplay = 'ID'
        TabOrder = 31
        OnChange = RxDBLookupCombo23Change
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Fundo / Cartucho / Sacola'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 432
        Width = 924
        Height = 179
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
        object Label10: TLabel
          Left = 47
          Top = 68
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Material 1:'
        end
        object Label33: TLabel
          Left = 47
          Top = 90
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Material 2:'
        end
        object Label34: TLabel
          Left = 47
          Top = 112
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
          Top = 198
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
          Left = 297
          Top = 232
          Width = 36
          Height = 13
          Alignment = taCenter
          Caption = 'Largura'
        end
        object Label50: TLabel
          Left = 406
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
          Left = 821
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
          Top = 46
          Width = 32
          Height = 13
          Caption = 'Grupo:'
        end
        object Label81: TLabel
          Left = 249
          Top = 46
          Width = 108
          Height = 13
          Caption = 'Sub-grupo (gramatura):'
        end
        object Label18: TLabel
          Left = 57
          Top = 26
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fio a fio:'
          Color = 13743257
          ParentColor = False
        end
        object Label1: TLabel
          Left = 685
          Top = 44
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Corte Inicial'
          Color = 13743257
          ParentColor = False
        end
        object Label79: TLabel
          Left = 818
          Top = 44
          Width = 50
          Height = 13
          Alignment = taRightJustify
          Caption = 'Corte Final'
          Color = 13743257
          ParentColor = False
        end
        object Label98: TLabel
          Left = 370
          Top = 46
          Width = 37
          Height = 13
          Caption = 'Material'
        end
        object DBCheckBox6: TDBCheckBox
          Left = 668
          Top = 168
          Width = 113
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Restistente a atrito'
          DataField = 'REVEST_FT_ATRITO'
          DataSource = dmOrcamento.dsProdutoCartoFD
          TabOrder = 12
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox7: TDBCheckBox
          Left = 788
          Top = 168
          Width = 105
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Restistente a luz'
          DataField = 'REVEST_FT_LUZ'
          DataSource = dmOrcamento.dsProdutoCartoFD
          TabOrder = 13
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object RxDBLookupCombo2: TRxDBLookupCombo
          Left = 369
          Top = 60
          Width = 281
          Height = 21
          DropDownCount = 8
          DataField = 'MATERIAL1'
          DataSource = dmOrcamento.dsProdutoCartoFD
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmOrcamento.dsqMaterialFD1
          TabOrder = 2
        end
        object RxDBLookupCombo5: TRxDBLookupCombo
          Left = 369
          Top = 82
          Width = 281
          Height = 21
          DropDownCount = 8
          DataField = 'MATERIAL2'
          DataSource = dmOrcamento.dsProdutoCartoFD
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmOrcamento.dsqMaterialFD2
          TabOrder = 5
        end
        object RxDBLookupCombo6: TRxDBLookupCombo
          Left = 369
          Top = 104
          Width = 281
          Height = 21
          DropDownCount = 8
          DataField = 'MATERIAL3'
          DataSource = dmOrcamento.dsProdutoCartoFD
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmOrcamento.dsqMaterialFD3
          TabOrder = 8
        end
        object RxDBComboBox14: TRxDBComboBox
          Left = 104
          Top = 168
          Width = 169
          Height = 21
          Style = csDropDownList
          DataField = 'REVEST_FT'
          DataSource = dmOrcamento.dsProdutoCartoFD
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O'
            'VERNIZ'
            'BARREIRA ALIMENTA'#199#195'O'
            'PL'#193'STICO'
            'PROLAN')
          TabOrder = 9
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4')
          OnChange = RxDBComboBox14Change
        end
        object RxDBLookupCombo11: TRxDBLookupCombo
          Left = 273
          Top = 168
          Width = 281
          Height = 21
          DropDownCount = 8
          DataField = 'REVEST_FT_MAT'
          DataSource = dmOrcamento.dsProdutoCartoFD
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmOrcamento.dsqMaterial
          TabOrder = 10
        end
        object DBCheckBox10: TDBCheckBox
          Left = 668
          Top = 190
          Width = 113
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Restistente a atrito'
          DataField = 'REVEST_VS_ATRITO'
          DataSource = dmOrcamento.dsProdutoCartoFD
          TabOrder = 17
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox11: TDBCheckBox
          Left = 788
          Top = 190
          Width = 105
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Restistente a luz'
          DataField = 'REVEST_VS_LUZ'
          DataSource = dmOrcamento.dsProdutoCartoFD
          TabOrder = 18
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object RxDBComboBox15: TRxDBComboBox
          Left = 104
          Top = 190
          Width = 169
          Height = 21
          Style = csDropDownList
          DataField = 'REVEST_VS'
          DataSource = dmOrcamento.dsProdutoCartoFD
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'N'#195'O'
            'VERNIZ'
            'BARREIRA ALIMENTA'#199#195'O'
            'PL'#193'STICO'
            'PROLAN')
          TabOrder = 14
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4')
          OnChange = RxDBComboBox15Change
        end
        object RxDBLookupCombo12: TRxDBLookupCombo
          Left = 273
          Top = 190
          Width = 281
          Height = 21
          DropDownCount = 8
          DataField = 'REVEST_VS_MAT'
          DataSource = dmOrcamento.dsProdutoCartoFD
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmOrcamento.dsqMaterial
          TabOrder = 15
        end
        object RxDBComboBox18: TRxDBComboBox
          Left = 554
          Top = 168
          Width = 105
          Height = 21
          Style = csDropDownList
          DataField = 'REVEST_FT_BRIL'
          DataSource = dmOrcamento.dsProdutoCartoFD
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'BRILHO'
            'FOSCO'
            'ALTO BRILHO')
          TabOrder = 11
          Values.Strings = (
            '1'
            '2'
            '3')
        end
        object RxDBComboBox19: TRxDBComboBox
          Left = 554
          Top = 190
          Width = 105
          Height = 21
          Style = csDropDownList
          DataField = 'REVEST_VS_BRIL'
          DataSource = dmOrcamento.dsProdutoCartoFD
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'BRILHO'
            'FOSCO'
            'ALTO BRILHO')
          TabOrder = 16
          Values.Strings = (
            '1'
            '2'
            '3')
        end
        object RxDBComboBox2: TRxDBComboBox
          Left = 344
          Top = 248
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'AR_LOCAL'
          DataSource = dmOrcamento.dsProdutoCartoFD
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CABECEIRA'
            'LATERAL'
            'FUNDO DO FUNDO'
            'EM CIMA DA TAMPA')
          TabOrder = 22
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
          DataSource = dmOrcamento.dsProdutoCartoFD
          TabOrder = 19
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox28Click
        end
        object DBCheckBox29: TDBCheckBox
          Left = 104
          Top = 272
          Width = 97
          Height = 17
          Caption = 'Baixo relevo'
          DataField = 'BR'
          DataSource = dmOrcamento.dsProdutoCartoFD
          TabOrder = 23
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox29Click
        end
        object DBCheckBox30: TDBCheckBox
          Left = 104
          Top = 294
          Width = 97
          Height = 17
          Caption = 'Hot stamping'
          DataField = 'HS'
          DataSource = dmOrcamento.dsProdutoCartoFD
          TabOrder = 27
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox30Click
        end
        object DBCheckBox31: TDBCheckBox
          Left = 104
          Top = 316
          Width = 97
          Height = 17
          Caption = 'Visor'
          DataField = 'VISOR'
          DataSource = dmOrcamento.dsProdutoCartoFD
          TabOrder = 31
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox31Click
        end
        object DBCheckBox32: TDBCheckBox
          Left = 568
          Top = 314
          Width = 70
          Height = 17
          Caption = 'Ilh'#243's'
          DataField = 'ILHOS'
          DataSource = dmOrcamento.dsProdutoCartoFD
          TabOrder = 47
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
          DataSource = dmOrcamento.dsProdutoCartoFD
          TabOrder = 39
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox33Click
        end
        object DBCheckBox34: TDBCheckBox
          Left = 568
          Top = 270
          Width = 70
          Height = 17
          Caption = 'Passa fita'
          DataField = 'PASSAFITA'
          DataSource = dmOrcamento.dsProdutoCartoFD
          TabOrder = 42
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox34Click
        end
        object DBCheckBox35: TDBCheckBox
          Left = 568
          Top = 292
          Width = 70
          Height = 17
          Caption = 'Al'#231'a'
          DataField = 'ALCA'
          DataSource = dmOrcamento.dsProdutoCartoFD
          TabOrder = 45
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox35Click
        end
        object DBCheckBox36: TDBCheckBox
          Left = 104
          Top = 338
          Width = 137
          Height = 17
          Caption = 'Verniz UV localizado'
          DataField = 'VERNIZUV'
          DataSource = dmOrcamento.dsProdutoCartoFD
          TabOrder = 35
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox36Click
        end
        object DBCheckBox37: TDBCheckBox
          Left = 568
          Top = 336
          Width = 110
          Height = 17
          Caption = 'Verniz UV total'
          DataField = 'VERNIZUV_TOTAL'
          DataSource = dmOrcamento.dsProdutoCartoFD
          TabOrder = 49
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit21: TDBEdit
          Left = 232
          Top = 248
          Width = 55
          Height = 21
          DataField = 'AR_COMPR'
          DataSource = dmOrcamento.dsProdutoCartoFD
          TabOrder = 20
        end
        object DBEdit22: TDBEdit
          Left = 287
          Top = 248
          Width = 57
          Height = 21
          DataField = 'AR_LARG'
          DataSource = dmOrcamento.dsProdutoCartoFD
          TabOrder = 21
        end
        object DBEdit23: TDBEdit
          Left = 232
          Top = 270
          Width = 55
          Height = 21
          DataField = 'BR_COMPR'
          DataSource = dmOrcamento.dsProdutoCartoFD
          TabOrder = 24
        end
        object DBEdit24: TDBEdit
          Left = 287
          Top = 270
          Width = 57
          Height = 21
          DataField = 'BR_LARG'
          DataSource = dmOrcamento.dsProdutoCartoFD
          TabOrder = 25
        end
        object RxDBComboBox8: TRxDBComboBox
          Left = 344
          Top = 270
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'BR_LOCAL'
          DataSource = dmOrcamento.dsProdutoCartoFD
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CABECEIRA'
            'LATERAL'
            'FUNDO DO FUNDO'
            'EM CIMA DA TAMPA')
          TabOrder = 26
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object DBEdit25: TDBEdit
          Left = 232
          Top = 292
          Width = 55
          Height = 21
          DataField = 'HS_COMPR'
          DataSource = dmOrcamento.dsProdutoCartoFD
          TabOrder = 28
        end
        object DBEdit26: TDBEdit
          Left = 287
          Top = 292
          Width = 57
          Height = 21
          DataField = 'HS_LARG'
          DataSource = dmOrcamento.dsProdutoCartoFD
          TabOrder = 29
        end
        object RxDBComboBox20: TRxDBComboBox
          Left = 344
          Top = 292
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'HS_LOCAL'
          DataSource = dmOrcamento.dsProdutoCartoFD
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CABECEIRA'
            'LATERAL'
            'FUNDO DO FUNDO'
            'EM CIMA DA TAMPA')
          TabOrder = 30
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object DBEdit27: TDBEdit
          Left = 232
          Top = 314
          Width = 55
          Height = 21
          DataField = 'VISOR_COMPR'
          DataSource = dmOrcamento.dsProdutoCartoFD
          TabOrder = 32
        end
        object DBEdit28: TDBEdit
          Left = 287
          Top = 314
          Width = 57
          Height = 21
          DataField = 'VISOR_LARG'
          DataSource = dmOrcamento.dsProdutoCartoFD
          TabOrder = 33
        end
        object RxDBComboBox21: TRxDBComboBox
          Left = 344
          Top = 314
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'VISOR_LOCAL'
          DataSource = dmOrcamento.dsProdutoCartoFD
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CABECEIRA'
            'LATERAL'
            'FUNDO DO FUNDO'
            'EM CIMA DA TAMPA')
          TabOrder = 34
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object DBEdit29: TDBEdit
          Left = 232
          Top = 336
          Width = 55
          Height = 21
          DataField = 'VERNIZUV_COMPR'
          DataSource = dmOrcamento.dsProdutoCartoFD
          TabOrder = 36
        end
        object DBEdit31: TDBEdit
          Left = 287
          Top = 336
          Width = 57
          Height = 21
          DataField = 'VERNIZUV_LARG'
          DataSource = dmOrcamento.dsProdutoCartoFD
          TabOrder = 37
        end
        object RxDBComboBox22: TRxDBComboBox
          Left = 344
          Top = 336
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'VERNIZUV_LOCAL'
          DataSource = dmOrcamento.dsProdutoCartoFD
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CABECEIRA'
            'LATERAL'
            'FUNDO DO FUNDO'
            'EM CIMA DA TAMPA')
          TabOrder = 38
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
          DataSource = dmOrcamento.dsProdutoCartoFD
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
        object RxDBComboBox24: TRxDBComboBox
          Left = 642
          Top = 270
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'PASSAFITA_LOCAL'
          DataSource = dmOrcamento.dsProdutoCartoFD
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
        object RxDBComboBox25: TRxDBComboBox
          Left = 642
          Top = 292
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'ALCA_LOCAL'
          DataSource = dmOrcamento.dsProdutoCartoFD
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
        object RxDBComboBox26: TRxDBComboBox
          Left = 642
          Top = 314
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'ILHOS_LOCAL'
          DataSource = dmOrcamento.dsProdutoCartoFD
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'CABECEIRA'
            'LATERAL'
            'FUNDO DO FUNDO'
            'EM CIMA DA TAMPA')
          TabOrder = 48
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object RxDBComboBox27: TRxDBComboBox
          Left = 792
          Top = 270
          Width = 105
          Height = 21
          Style = csDropDownList
          DataField = 'PASSAFITA_TIPO'
          DataSource = dmOrcamento.dsProdutoCartoFD
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'REDONDO'
            'OVAL'
            'RETANGULAR')
          TabOrder = 44
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object RxDBComboBox28: TRxDBComboBox
          Left = 792
          Top = 248
          Width = 105
          Height = 21
          Style = csDropDownList
          DataField = 'PICOTE_TIPO'
          DataSource = dmOrcamento.dsProdutoCartoFD
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'MICRO SERRILHA'
            '0.5 POR 0.5')
          TabOrder = 41
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object RxDBLookupCombo23: TRxDBLookupCombo
          Left = 104
          Top = 60
          Width = 145
          Height = 21
          DropDownCount = 8
          DataField = 'GRUPO1'
          DataSource = dmOrcamento.dsProdutoCartoFD
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmOrcamento.dsqGrupo
          TabOrder = 0
          OnChange = RxDBLookupCombo23Change
        end
        object RxDBLookupCombo24: TRxDBLookupCombo
          Left = 249
          Top = 60
          Width = 121
          Height = 21
          DropDownCount = 8
          DataField = 'SUBGRUPO1'
          DataSource = dmOrcamento.dsProdutoCartoFD
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmOrcamento.dsGrupoItemFD1
          TabOrder = 1
          OnChange = RxDBLookupCombo24Change
        end
        object RxDBLookupCombo25: TRxDBLookupCombo
          Left = 104
          Top = 82
          Width = 145
          Height = 21
          DropDownCount = 8
          DataField = 'GRUPO2'
          DataSource = dmOrcamento.dsProdutoCartoFD
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmOrcamento.dsqGrupo
          TabOrder = 3
          OnChange = RxDBLookupCombo25Change
        end
        object RxDBLookupCombo26: TRxDBLookupCombo
          Left = 249
          Top = 82
          Width = 120
          Height = 21
          DropDownCount = 8
          DataField = 'SUBGRUPO2'
          DataSource = dmOrcamento.dsProdutoCartoFD
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmOrcamento.dsGrupoItemFD2
          TabOrder = 4
          OnChange = RxDBLookupCombo26Change
        end
        object RxDBLookupCombo27: TRxDBLookupCombo
          Left = 104
          Top = 104
          Width = 145
          Height = 21
          DropDownCount = 8
          DataField = 'GRUPO3'
          DataSource = dmOrcamento.dsProdutoCartoFD
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmOrcamento.dsqGrupo
          TabOrder = 6
          OnChange = RxDBLookupCombo27Change
        end
        object RxDBLookupCombo28: TRxDBLookupCombo
          Left = 249
          Top = 104
          Width = 120
          Height = 21
          DropDownCount = 8
          DataField = 'SUBGRUPO3'
          DataSource = dmOrcamento.dsProdutoCartoFD
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmOrcamento.dsGrupoItemFD3
          TabOrder = 7
          OnChange = RxDBLookupCombo28Change
        end
        object DBCheckBox3: TDBCheckBox
          Left = 248
          Top = 20
          Width = 55
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Pin'#231'a'
          DataField = 'PINCA'
          DataSource = dmOrcamento.dsProdutoCartoFD
          TabOrder = 50
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit58: TDBEdit
          Left = 303
          Top = 18
          Width = 65
          Height = 21
          TabStop = False
          DataField = 'PINCA_TAM'
          DataSource = dmOrcamento.dsProdutoCartoFD
          TabOrder = 51
        end
        object DBEdit8: TDBEdit
          Left = 104
          Top = 18
          Width = 65
          Height = 21
          TabStop = False
          DataField = 'FD_DIMENSAO1'
          DataSource = dmFaca.dsCartoFaca
          TabOrder = 52
        end
        object DBEdit10: TDBEdit
          Left = 169
          Top = 18
          Width = 65
          Height = 21
          TabStop = False
          DataField = 'FD_DIMENSAO2'
          DataSource = dmFaca.dsCartoFaca
          TabOrder = 53
        end
        object DBEdit13: TDBEdit
          Left = 651
          Top = 60
          Width = 62
          Height = 21
          TabStop = False
          DataField = 'FD_DIMENSAO1'
          DataSource = dmFaca.dsCartoFaca
          TabOrder = 54
        end
        object DBEdit14: TDBEdit
          Left = 776
          Top = 60
          Width = 65
          Height = 21
          TabStop = False
          DataField = 'FD_DIMENSAO1'
          DataSource = dmFaca.dsCartoFaca
          TabOrder = 55
        end
        object DBEdit32: TDBEdit
          Left = 713
          Top = 60
          Width = 62
          Height = 21
          TabStop = False
          DataField = 'FD_DIMENSAO1'
          DataSource = dmFaca.dsCartoFaca
          TabOrder = 56
        end
        object DBEdit33: TDBEdit
          Left = 841
          Top = 60
          Width = 62
          Height = 21
          TabStop = False
          DataField = 'FD_DIMENSAO1'
          DataSource = dmFaca.dsCartoFaca
          TabOrder = 57
        end
        object DBEdit60: TDBEdit
          Left = 651
          Top = 82
          Width = 62
          Height = 21
          TabStop = False
          DataField = 'FD_DIMENSAO1'
          DataSource = dmFaca.dsCartoFaca
          TabOrder = 58
        end
        object DBEdit61: TDBEdit
          Left = 776
          Top = 82
          Width = 65
          Height = 21
          TabStop = False
          DataField = 'FD_DIMENSAO1'
          DataSource = dmFaca.dsCartoFaca
          TabOrder = 59
        end
        object DBEdit62: TDBEdit
          Left = 713
          Top = 82
          Width = 62
          Height = 21
          TabStop = False
          DataField = 'FD_DIMENSAO1'
          DataSource = dmFaca.dsCartoFaca
          TabOrder = 60
        end
        object DBEdit63: TDBEdit
          Left = 841
          Top = 82
          Width = 62
          Height = 21
          TabStop = False
          DataField = 'FD_DIMENSAO1'
          DataSource = dmFaca.dsCartoFaca
          TabOrder = 61
        end
        object DBEdit64: TDBEdit
          Left = 651
          Top = 104
          Width = 62
          Height = 21
          TabStop = False
          DataField = 'FD_DIMENSAO1'
          DataSource = dmFaca.dsCartoFaca
          TabOrder = 62
        end
        object DBEdit65: TDBEdit
          Left = 776
          Top = 104
          Width = 65
          Height = 21
          TabStop = False
          DataField = 'FD_DIMENSAO1'
          DataSource = dmFaca.dsCartoFaca
          TabOrder = 63
        end
        object DBEdit66: TDBEdit
          Left = 713
          Top = 104
          Width = 62
          Height = 21
          TabStop = False
          DataField = 'FD_DIMENSAO1'
          DataSource = dmFaca.dsCartoFaca
          TabOrder = 64
        end
        object DBEdit67: TDBEdit
          Left = 841
          Top = 104
          Width = 62
          Height = 21
          TabStop = False
          DataField = 'FD_DIMENSAO1'
          DataSource = dmFaca.dsCartoFaca
          TabOrder = 65
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
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoTP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmOrcamento.dsqMaterialTP1
          TabOrder = 2
        end
        object RxDBLookupCombo7: TRxDBLookupCombo
          Left = 440
          Top = 44
          Width = 281
          Height = 21
          DropDownCount = 8
          DataField = 'MATERIAL2'
          DataSource = dmOrcamento.dsProdutoCartoTP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmOrcamento.dsqMaterialTP2
          TabOrder = 7
        end
        object RxDBLookupCombo8: TRxDBLookupCombo
          Left = 440
          Top = 68
          Width = 281
          Height = 21
          DropDownCount = 8
          DataField = 'MATERIAL3'
          DataSource = dmOrcamento.dsProdutoCartoTP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmOrcamento.dsqMaterialTP3
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
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoTP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmOrcamento.dsqMaterial
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
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoTP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmOrcamento.dsqMaterial
          TabOrder = 18
        end
        object RxDBComboBox17: TRxDBComboBox
          Left = 558
          Top = 168
          Width = 105
          Height = 21
          Style = csDropDownList
          DataField = 'REVEST_FT_BRIL'
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoTP
          TabOrder = 23
        end
        object DBEdit36: TDBEdit
          Left = 290
          Top = 248
          Width = 57
          Height = 21
          DataField = 'AR_LARG'
          DataSource = dmOrcamento.dsProdutoCartoTP
          TabOrder = 24
        end
        object DBEdit37: TDBEdit
          Left = 232
          Top = 272
          Width = 55
          Height = 21
          DataField = 'BR_COMPR'
          DataSource = dmOrcamento.dsProdutoCartoTP
          TabOrder = 27
        end
        object DBEdit38: TDBEdit
          Left = 290
          Top = 272
          Width = 57
          Height = 21
          DataField = 'BR_LARG'
          DataSource = dmOrcamento.dsProdutoCartoTP
          TabOrder = 28
        end
        object RxDBComboBox31: TRxDBComboBox
          Left = 350
          Top = 272
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'BR_LOCAL'
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoTP
          TabOrder = 31
        end
        object DBEdit40: TDBEdit
          Left = 290
          Top = 296
          Width = 57
          Height = 21
          DataField = 'HS_LARG'
          DataSource = dmOrcamento.dsProdutoCartoTP
          TabOrder = 32
        end
        object RxDBComboBox32: TRxDBComboBox
          Left = 350
          Top = 296
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'HS_LOCAL'
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoTP
          TabOrder = 35
        end
        object DBEdit42: TDBEdit
          Left = 290
          Top = 320
          Width = 57
          Height = 21
          DataField = 'VISOR_LARG'
          DataSource = dmOrcamento.dsProdutoCartoTP
          TabOrder = 36
        end
        object RxDBComboBox33: TRxDBComboBox
          Left = 350
          Top = 320
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'VISOR_LOCAL'
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoTP
          TabOrder = 39
        end
        object DBEdit46: TDBEdit
          Left = 290
          Top = 344
          Width = 57
          Height = 21
          DataField = 'VERNIZUV_LARG'
          DataSource = dmOrcamento.dsProdutoCartoTP
          TabOrder = 40
        end
        object RxDBComboBox34: TRxDBComboBox
          Left = 350
          Top = 344
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'VERNIZUV_LOCAL'
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoTP
          TabOrder = 4
        end
        object RxDBLookupCombo17: TRxDBLookupCombo
          Left = 104
          Top = 20
          Width = 166
          Height = 21
          DropDownCount = 8
          DataField = 'GRUPO1'
          DataSource = dmOrcamento.dsProdutoCartoTP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmOrcamento.dsqGrupo
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
          DataSource = dmOrcamento.dsProdutoCartoTP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmOrcamento.dsGrupoItemTP1
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
          DataSource = dmOrcamento.dsProdutoCartoTP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmOrcamento.dsqGrupo
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
          DataSource = dmOrcamento.dsProdutoCartoTP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmOrcamento.dsGrupoItemTP2
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
          DataSource = dmOrcamento.dsProdutoCartoTP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmOrcamento.dsqGrupo
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
          DataSource = dmOrcamento.dsProdutoCartoTP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmOrcamento.dsGrupoItemTP3
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
        Height = 179
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
          DataSource = dmOrcamento.dsProdutoCartoSP
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
          DataSource = dmOrcamento.dsProdutoCartoSP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmOrcamento.dsqMaterialSP1
          TabOrder = 2
        end
        object RxDBLookupCombo9: TRxDBLookupCombo
          Left = 440
          Top = 44
          Width = 281
          Height = 21
          DropDownCount = 8
          DataField = 'MATERIAL2'
          DataSource = dmOrcamento.dsProdutoCartoSP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmOrcamento.dsqMaterialSP2
          TabOrder = 7
        end
        object RxDBLookupCombo10: TRxDBLookupCombo
          Left = 440
          Top = 68
          Width = 281
          Height = 21
          DropDownCount = 8
          DataField = 'MATERIAL3'
          DataSource = dmOrcamento.dsProdutoCartoSP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmOrcamento.dsqMaterialSP3
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
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoSP
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
          DataSource = dmOrcamento.dsProdutoCartoSP
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
          DataSource = dmOrcamento.dsProdutoCartoSP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmOrcamento.dsqMaterial
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
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoTP
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
          DataSource = dmOrcamento.dsProdutoCartoSP
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
          DataSource = dmOrcamento.dsProdutoCartoSP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmOrcamento.dsqMaterial
          TabOrder = 18
        end
        object RxDBComboBox42: TRxDBComboBox
          Left = 558
          Top = 168
          Width = 105
          Height = 21
          Style = csDropDownList
          DataField = 'REVEST_FT_BRIL'
          DataSource = dmOrcamento.dsProdutoCartoSP
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
          DataSource = dmOrcamento.dsProdutoCartoSP
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
          DataSource = dmOrcamento.dsProdutoCartoSP
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
          DataSource = dmOrcamento.dsProdutoCartoSP
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
          DataSource = dmOrcamento.dsProdutoCartoSP
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
          DataSource = dmOrcamento.dsProdutoCartoSP
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
          DataSource = dmOrcamento.dsProdutoCartoSP
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
          DataSource = dmOrcamento.dsProdutoCartoSP
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
          DataSource = dmOrcamento.dsProdutoCartoSP
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
          DataSource = dmOrcamento.dsProdutoCartoSP
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
          DataSource = dmOrcamento.dsProdutoCartoSP
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
          DataSource = dmOrcamento.dsProdutoCartoSP
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
          DataSource = dmOrcamento.dsProdutoCartoSP
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
          DataSource = dmOrcamento.dsProdutoCartoSP
          TabOrder = 23
        end
        object DBEdit48: TDBEdit
          Left = 290
          Top = 248
          Width = 57
          Height = 21
          DataField = 'AR_LARG'
          DataSource = dmOrcamento.dsProdutoCartoSP
          TabOrder = 24
        end
        object DBEdit49: TDBEdit
          Left = 232
          Top = 272
          Width = 55
          Height = 21
          DataField = 'BR_COMPR'
          DataSource = dmOrcamento.dsProdutoCartoSP
          TabOrder = 27
        end
        object DBEdit50: TDBEdit
          Left = 290
          Top = 272
          Width = 57
          Height = 21
          DataField = 'BR_LARG'
          DataSource = dmOrcamento.dsProdutoCartoSP
          TabOrder = 28
        end
        object RxDBComboBox45: TRxDBComboBox
          Left = 350
          Top = 272
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'BR_LOCAL'
          DataSource = dmOrcamento.dsProdutoCartoSP
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
          DataSource = dmOrcamento.dsProdutoCartoSP
          TabOrder = 31
        end
        object DBEdit52: TDBEdit
          Left = 290
          Top = 296
          Width = 57
          Height = 21
          DataField = 'HS_LARG'
          DataSource = dmOrcamento.dsProdutoCartoSP
          TabOrder = 32
        end
        object RxDBComboBox46: TRxDBComboBox
          Left = 350
          Top = 296
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'HS_LOCAL'
          DataSource = dmOrcamento.dsProdutoCartoSP
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
          DataSource = dmOrcamento.dsProdutoCartoSP
          TabOrder = 35
        end
        object DBEdit54: TDBEdit
          Left = 290
          Top = 320
          Width = 57
          Height = 21
          DataField = 'VISOR_LARG'
          DataSource = dmOrcamento.dsProdutoCartoSP
          TabOrder = 36
        end
        object RxDBComboBox47: TRxDBComboBox
          Left = 350
          Top = 320
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'VISOR_LOCAL'
          DataSource = dmOrcamento.dsProdutoCartoSP
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
          DataSource = dmOrcamento.dsProdutoCartoSP
          TabOrder = 39
        end
        object DBEdit56: TDBEdit
          Left = 290
          Top = 344
          Width = 57
          Height = 21
          DataField = 'VERNIZUV_LARG'
          DataSource = dmOrcamento.dsProdutoCartoSP
          TabOrder = 40
        end
        object RxDBComboBox48: TRxDBComboBox
          Left = 350
          Top = 344
          Width = 150
          Height = 21
          Style = csDropDownList
          DataField = 'VERNIZUV_LOCAL'
          DataSource = dmOrcamento.dsProdutoCartoSP
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
          DataSource = dmOrcamento.dsProdutoCartoSP
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
          DataSource = dmOrcamento.dsProdutoCartoSP
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
          DataSource = dmOrcamento.dsProdutoCartoSP
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
          DataSource = dmOrcamento.dsProdutoCartoSP
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
          DataSource = dmOrcamento.dsProdutoCartoSP
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
          DataSource = dmOrcamento.dsProdutoCartoSP
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
          DataSource = dmOrcamento.dsProdutoCartoSP
          TabOrder = 4
        end
        object RxDBLookupCombo29: TRxDBLookupCombo
          Left = 104
          Top = 20
          Width = 166
          Height = 21
          DropDownCount = 8
          DataField = 'GRUPO1'
          DataSource = dmOrcamento.dsProdutoCartoSP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmOrcamento.dsqGrupo
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
          DataSource = dmOrcamento.dsProdutoCartoSP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmOrcamento.dsGrupoItemSP1
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
          DataSource = dmOrcamento.dsProdutoCartoSP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmOrcamento.dsqGrupo
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
          DataSource = dmOrcamento.dsProdutoCartoSP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmOrcamento.dsGrupoItemSP2
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
          DataSource = dmOrcamento.dsProdutoCartoSP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmOrcamento.dsqGrupo
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
          DataSource = dmOrcamento.dsProdutoCartoSP
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmOrcamento.dsGrupoItemSP3
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
        Height = 179
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
