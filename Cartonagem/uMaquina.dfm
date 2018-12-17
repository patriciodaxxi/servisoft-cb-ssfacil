object fMaquina: TfMaquina
  Left = 444
  Top = 124
  Width = 693
  Height = 600
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fMaquina'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 677
    Height = 29
    Align = alTop
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 2
      Top = 2
      Width = 74
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
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 29
    Width = 677
    Height = 533
    ActivePage = TabSheet1
    ActivePageDefault = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 1
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Cadastro'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 673
        Height = 510
        Align = alClient
        TabOrder = 0
        object Label1: TLabel
          Left = 90
          Top = 14
          Width = 14
          Height = 13
          Alignment = taRightJustify
          Caption = 'ID:'
        end
        object Label2: TLabel
          Left = 73
          Top = 35
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nome:'
        end
        object Label3: TLabel
          Left = 17
          Top = 56
          Width = 87
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor de Mercado:'
        end
        object Label4: TLabel
          Left = 214
          Top = 56
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vida '#218'til:'
        end
        object Label5: TLabel
          Left = 404
          Top = 56
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'Residual:'
        end
        object Label6: TLabel
          Left = 64
          Top = 267
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = 'Deprecia'#231#227'o:'
        end
        object Label7: TLabel
          Left = 20
          Top = 77
          Width = 84
          Height = 13
          Alignment = taRightJustify
          Caption = 'Horas Produtivas:'
        end
        object Label8: TLabel
          Left = 473
          Top = 289
          Width = 103
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Hora Calculado:'
        end
        object Label9: TLabel
          Left = 350
          Top = 56
          Width = 31
          Height = 13
          Caption = 'Meses'
        end
        object Label10: TLabel
          Left = 198
          Top = 77
          Width = 34
          Height = 13
          Caption = 'Mensal'
        end
        object Label11: TLabel
          Left = 41
          Top = 288
          Width = 87
          Height = 13
          Alignment = taRightJustify
          Caption = 'Custo Funcin'#225'rios:'
        end
        object Label17: TLabel
          Left = 523
          Top = 198
          Width = 53
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtd. Cores:'
        end
        object Label19: TLabel
          Left = 25
          Top = 174
          Width = 103
          Height = 13
          Alignment = taRightJustify
          Caption = 'Comprimento M'#225'ximo:'
        end
        object Label20: TLabel
          Left = 51
          Top = 237
          Width = 77
          Height = 13
          Alignment = taRightJustify
          Caption = 'Largura M'#237'nima:'
        end
        object Label12: TLabel
          Left = 48
          Top = 309
          Width = 80
          Height = 13
          Alignment = taRightJustify
          Caption = 'Custo Despesas:'
        end
        object Label18: TLabel
          Left = 26
          Top = 195
          Width = 102
          Height = 13
          Alignment = taRightJustify
          Caption = 'Comprimento M'#237'nimo:'
        end
        object Label24: TLabel
          Left = 50
          Top = 216
          Width = 78
          Height = 13
          Alignment = taRightJustify
          Caption = 'Largura M'#225'xima:'
        end
        object Label21: TLabel
          Left = 487
          Top = 309
          Width = 89
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Hora Efetivo:'
        end
        object Label23: TLabel
          Left = 471
          Top = 473
          Width = 47
          Height = 13
          Alignment = taRightJustify
          Caption = 'Consumo:'
        end
        object Label30: TLabel
          Left = 374
          Top = 77
          Width = 74
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tempo M'#237'nimo:'
        end
        object Label26: TLabel
          Left = 87
          Top = 477
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = 'Material:'
        end
        object Label40: TLabel
          Left = 80
          Top = 453
          Width = 47
          Height = 13
          Alignment = taRightJustify
          Caption = 'Processo:'
        end
        object DBEdit1: TDBEdit
          Left = 112
          Top = 6
          Width = 121
          Height = 21
          TabStop = False
          DataField = 'ID'
          DataSource = dmMaquina.dsMaquina
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 112
          Top = 27
          Width = 425
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = dmMaquina.dsMaquina
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 112
          Top = 48
          Width = 81
          Height = 21
          DataField = 'VALORMERCADO'
          DataSource = dmMaquina.dsMaquina
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 264
          Top = 48
          Width = 81
          Height = 21
          DataField = 'VIDAUTIL'
          DataSource = dmMaquina.dsMaquina
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 456
          Top = 48
          Width = 81
          Height = 21
          DataField = 'RESIDUAL'
          DataSource = dmMaquina.dsMaquina
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 136
          Top = 259
          Width = 81
          Height = 21
          DataField = 'DEPRECIACAO'
          DataSource = dmMaquina.dsMaquina
          TabOrder = 13
          OnEnter = DBEdit6Enter
        end
        object DBEdit7: TDBEdit
          Left = 112
          Top = 69
          Width = 81
          Height = 21
          DataField = 'HORASPRODUTIVAS'
          DataSource = dmMaquina.dsMaquina
          TabOrder = 5
        end
        object DBEdit8: TDBEdit
          Left = 584
          Top = 280
          Width = 81
          Height = 21
          DataField = 'VALORHORACALC'
          DataSource = dmMaquina.dsMaquina
          TabOrder = 17
        end
        object DBEdit9: TDBEdit
          Left = 136
          Top = 280
          Width = 81
          Height = 21
          DataField = 'CUSTOOPERACIONAL'
          DataSource = dmMaquina.dsMaquina
          TabOrder = 14
        end
        object DBEdit13: TDBEdit
          Left = 584
          Top = 190
          Width = 81
          Height = 21
          DataField = 'CORES_QTD'
          DataSource = dmMaquina.dsMaquina
          TabOrder = 12
        end
        object DBEdit14: TDBEdit
          Left = 136
          Top = 166
          Width = 81
          Height = 21
          DataField = 'COMPR_MAX'
          DataSource = dmMaquina.dsMaquina
          TabOrder = 8
        end
        object DBEdit15: TDBEdit
          Left = 136
          Top = 229
          Width = 81
          Height = 21
          DataField = 'LARG_MIN'
          DataSource = dmMaquina.dsMaquina
          TabOrder = 11
        end
        object GroupBox1: TGroupBox
          Left = 8
          Top = 104
          Width = 577
          Height = 49
          Caption = 'Produtividade (folhas/hora)'
          TabOrder = 7
          object Label22: TLabel
            Left = 11
            Top = 28
            Width = 21
            Height = 13
            Alignment = taRightJustify
            Caption = 'Alta:'
          end
          object Label14: TLabel
            Left = 219
            Top = 28
            Width = 32
            Height = 13
            Alignment = taRightJustify
            Caption = 'M'#233'dia:'
          end
          object Label25: TLabel
            Left = 411
            Top = 28
            Width = 29
            Height = 13
            Alignment = taRightJustify
            Caption = 'Baixa:'
          end
          object DBEdit16: TDBEdit
            Left = 40
            Top = 20
            Width = 81
            Height = 21
            DataField = 'PROD_ALTA'
            DataSource = dmMaquina.dsMaquina
            TabOrder = 0
          end
          object DBEdit10: TDBEdit
            Left = 257
            Top = 20
            Width = 81
            Height = 21
            DataField = 'PROD_MEDIA'
            DataSource = dmMaquina.dsMaquina
            TabOrder = 1
          end
          object DBEdit17: TDBEdit
            Left = 448
            Top = 20
            Width = 81
            Height = 21
            DataField = 'PROD_BAIXA'
            DataSource = dmMaquina.dsMaquina
            TabOrder = 2
          end
        end
        object DBEdit19: TDBEdit
          Left = 136
          Top = 301
          Width = 81
          Height = 21
          DataField = 'CUSTODESPESAS'
          DataSource = dmMaquina.dsMaquina
          TabOrder = 15
        end
        object DBEdit20: TDBEdit
          Left = 136
          Top = 187
          Width = 81
          Height = 21
          DataField = 'COMPR_MIN'
          DataSource = dmMaquina.dsMaquina
          TabOrder = 9
        end
        object DBEdit21: TDBEdit
          Left = 136
          Top = 208
          Width = 81
          Height = 21
          DataField = 'LARG_MAX'
          DataSource = dmMaquina.dsMaquina
          TabOrder = 10
        end
        object BitBtn5: TBitBtn
          Left = 584
          Top = 255
          Width = 81
          Height = 25
          Hint = 'Calcula valor da hora da m'#225'quina'
          Caption = 'C&alcular'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 16
          OnClick = BitBtn5Click
        end
        object DBEdit22: TDBEdit
          Left = 584
          Top = 301
          Width = 81
          Height = 21
          DataField = 'VALORHORAEFETIVO'
          DataSource = dmMaquina.dsMaquina
          TabOrder = 18
        end
        object DBEdit23: TDBEdit
          Left = 526
          Top = 465
          Width = 57
          Height = 21
          DataField = 'CONSUMO'
          DataSource = dmMaquina.dsMaquina
          TabOrder = 22
        end
        object DBEdit24: TDBEdit
          Left = 456
          Top = 69
          Width = 81
          Height = 21
          DataField = 'TEMPO_MINIMO'
          DataSource = dmMaquina.dsMaquina
          TabOrder = 6
        end
        object RxDBLookupCombo3: TRxDBLookupCombo
          Left = 584
          Top = 465
          Width = 82
          Height = 21
          DropDownCount = 8
          DataField = 'UNIDADE'
          DataSource = dmMaquina.dsMaquina
          LookupField = 'UNIDADE'
          LookupDisplay = 'UNIDADE'
          LookupSource = dmMaquina.dsUnidade
          TabOrder = 23
          OnEnter = RxDBLookupCombo3Enter
        end
        object RxDBLookupCombo4: TRxDBLookupCombo
          Left = 136
          Top = 469
          Width = 329
          Height = 21
          DropDownCount = 8
          DataField = 'MATERIAL_ID'
          DataSource = dmMaquina.dsMaquina
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmMaquina.dsMaterial
          TabOrder = 21
          OnEnter = RxDBLookupCombo4Enter
        end
        object GroupBox2: TGroupBox
          Left = 40
          Top = 336
          Width = 625
          Height = 94
          Caption = 'Tempo de Ajuste (em minutos)'
          TabOrder = 19
          object Label15: TLabel
            Left = 30
            Top = 54
            Width = 74
            Height = 13
            Alignment = taRightJustify
            Caption = 'Sem impress'#227'o:'
          end
          object Label16: TLabel
            Left = 292
            Top = 33
            Width = 28
            Height = 13
            Alignment = taRightJustify
            Caption = '1 Cor:'
          end
          object Label31: TLabel
            Left = 257
            Top = 54
            Width = 63
            Height = 13
            Alignment = taRightJustify
            Caption = '2 ou 3 Cores:'
          end
          object Label32: TLabel
            Left = 241
            Top = 75
            Width = 79
            Height = 13
            Alignment = taRightJustify
            Caption = '4 ou Mais Cores:'
          end
          object Label34: TLabel
            Left = 31
            Top = 33
            Width = 73
            Height = 13
            Alignment = taRightJustify
            Caption = 'Tempo m'#237'nimo:'
          end
          object DBEdit11: TDBEdit
            Left = 112
            Top = 46
            Width = 81
            Height = 21
            DataField = 'AJUSTE_COR_0'
            DataSource = dmMaquina.dsMaquina
            TabOrder = 1
          end
          object DBEdit12: TDBEdit
            Left = 328
            Top = 25
            Width = 81
            Height = 21
            DataField = 'AJUSTE_COR_1'
            DataSource = dmMaquina.dsMaquina
            TabOrder = 2
          end
          object DBEdit25: TDBEdit
            Left = 328
            Top = 46
            Width = 81
            Height = 21
            DataField = 'AJUSTE_COR_2_3'
            DataSource = dmMaquina.dsMaquina
            TabOrder = 3
          end
          object DBEdit26: TDBEdit
            Left = 328
            Top = 67
            Width = 81
            Height = 21
            DataField = 'AJUSTE_COR_4'
            DataSource = dmMaquina.dsMaquina
            TabOrder = 4
          end
          object DBEdit27: TDBEdit
            Left = 112
            Top = 25
            Width = 81
            Height = 21
            DataField = 'TEMPO_MINIMO'
            DataSource = dmMaquina.dsMaquina
            TabOrder = 0
          end
        end
        object RxDBLookupCombo5: TRxDBLookupCombo
          Left = 136
          Top = 445
          Width = 329
          Height = 21
          DropDownCount = 15
          DataField = 'PROCESSO_ID'
          DataSource = dmMaquina.dsMaquina
          LookupField = 'ID'
          LookupDisplay = 'DESCRICAO'
          LookupSource = dmMaquina.dsCartoProcesso
          TabOrder = 20
          OnEnter = RxDBLookupCombo5Enter
        end
      end
    end
    object TabSheet3: TRzTabSheet
      Caption = 'Quebra (folhas)'
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 673
        Height = 53
        Align = alTop
        TabOrder = 0
        object Label36: TLabel
          Left = 23
          Top = 10
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtd. M'#237'n.'
        end
        object Label33: TLabel
          Left = 95
          Top = 10
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtd. M'#225'x.'
        end
        object Label35: TLabel
          Left = 253
          Top = 10
          Width = 25
          Height = 13
          Alignment = taRightJustify
          Caption = '1 Cor'
        end
        object Label37: TLabel
          Left = 309
          Top = 10
          Width = 60
          Height = 13
          Alignment = taRightJustify
          Caption = '2 ou 3 Cores'
        end
        object Label38: TLabel
          Left = 394
          Top = 10
          Width = 36
          Height = 13
          Alignment = taRightJustify
          Caption = '4 Cores'
        end
        object Label39: TLabel
          Left = 156
          Top = 10
          Width = 72
          Height = 13
          Alignment = taRightJustify
          Caption = 'Sem Impress'#227'o'
        end
        object BitBtn6: TBitBtn
          Left = 451
          Top = 19
          Width = 25
          Height = 25
          Hint = 'Adioncia quantidade de folhas de quebra'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = BitBtn6Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333333FF33333333FF333993333333300033377F3333333777333993333333
            300033F77FFF3333377739999993333333333777777F3333333F399999933333
            33003777777333333377333993333333330033377F3333333377333993333333
            3333333773333333333F333333333333330033333333F33333773333333C3333
            330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
            993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
            333333333337733333FF3333333C333330003333333733333777333333333333
            3000333333333333377733333333333333333333333333333333}
          NumGlyphs = 2
        end
        object BitBtn7: TBitBtn
          Left = 476
          Top = 19
          Width = 25
          Height = 25
          Hint = 'Excluir qantidade de folhas de quebra'
          Caption = '-'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333FF33333333333330003333333333333777333333333333
            300033FFFFFF3333377739999993333333333777777F3333333F399999933333
            3300377777733333337733333333333333003333333333333377333333333333
            3333333333333333333F333333333333330033333F33333333773333C3333333
            330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
            993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
            333333377F33333333FF3333C333333330003333733333333777333333333333
            3000333333333333377733333333333333333333333333333333}
          NumGlyphs = 2
        end
        object CurrencyEdit1: TCurrencyEdit
          Left = 8
          Top = 24
          Width = 74
          Height = 21
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          TabOrder = 0
        end
        object CurrencyEdit2: TCurrencyEdit
          Left = 81
          Top = 24
          Width = 74
          Height = 21
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          TabOrder = 1
        end
        object CurrencyEdit3: TCurrencyEdit
          Left = 155
          Top = 24
          Width = 74
          Height = 21
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          TabOrder = 2
        end
        object CurrencyEdit4: TCurrencyEdit
          Left = 228
          Top = 24
          Width = 74
          Height = 21
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          TabOrder = 3
        end
        object CurrencyEdit5: TCurrencyEdit
          Left = 302
          Top = 24
          Width = 74
          Height = 21
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          TabOrder = 4
        end
        object CurrencyEdit6: TCurrencyEdit
          Left = 375
          Top = 24
          Width = 74
          Height = 21
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          TabOrder = 5
        end
      end
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 53
        Width = 673
        Height = 457
        Align = alClient
        DataSource = dmMaquina.dsMaquinaQuebra
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
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
        ColCount = 7
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'QTD_MIN'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. M'#237'n.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_MAX'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. M'#225'x.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COR_0'
            Title.Alignment = taCenter
            Title.Caption = 'Sem Impress'#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COR_1'
            Title.Alignment = taCenter
            Title.Caption = '1 Cor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COR_2_3'
            Title.Alignment = taCenter
            Title.Caption = '2 ou 3 Cores'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COR_4'
            Title.Alignment = taCenter
            Title.Caption = '4 ou Mais Cores'
            Visible = True
          end>
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Operadores'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 673
        Height = 54
        Align = alTop
        TabOrder = 0
        object Label13: TLabel
          Left = 13
          Top = 37
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = 'Funcion'#225'rio:'
        end
        object Label27: TLabel
          Left = 43
          Top = 13
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Setor:'
        end
        object Label28: TLabel
          Left = 417
          Top = 13
          Width = 99
          Height = 13
          Alignment = taRightJustify
          Caption = 'Rateio de Despesas:'
        end
        object Label29: TLabel
          Left = 566
          Top = 13
          Width = 8
          Height = 13
          Alignment = taRightJustify
          Caption = '%'
        end
        object BitBtn3: TBitBtn
          Left = 402
          Top = 27
          Width = 25
          Height = 25
          Hint = 'Adioncia operarar '#224' m'#225'quina'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = BitBtn3Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333333FF33333333FF333993333333300033377F3333333777333993333333
            300033F77FFF3333377739999993333333333777777F3333333F399999933333
            33003777777333333377333993333333330033377F3333333377333993333333
            3333333773333333333F333333333333330033333333F33333773333333C3333
            330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
            993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
            333333333337733333FF3333333C333330003333333733333777333333333333
            3000333333333333377733333333333333333333333333333333}
          NumGlyphs = 2
        end
        object BitBtn4: TBitBtn
          Left = 427
          Top = 27
          Width = 25
          Height = 25
          Hint = 'Excluir operador da m'#225'quina'
          Caption = '-'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = BitBtn4Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333FF33333333333330003333333333333777333333333333
            300033FFFFFF3333377739999993333333333777777F3333333F399999933333
            3300377777733333337733333333333333003333333333333377333333333333
            3333333333333333333F333333333333330033333F33333333773333C3333333
            330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
            993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
            333333377F33333333FF3333C333333330003333733333333777333333333333
            3000333333333333377733333333333333333333333333333333}
          NumGlyphs = 2
        end
        object RxDBLookupCombo1: TRxDBLookupCombo
          Left = 80
          Top = 29
          Width = 321
          Height = 21
          DropDownCount = 8
          LookupField = 'CODIGO'
          LookupDisplay = 'NOME'
          LookupSource = dmMaquina.dsFuncionario
          TabOrder = 2
        end
        object RxDBLookupCombo2: TRxDBLookupCombo
          Left = 80
          Top = 5
          Width = 321
          Height = 21
          DropDownCount = 8
          DataField = 'SETOR_ID'
          DataSource = dmMaquina.dsMaquina
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dmMaquina.dsSetor
          TabOrder = 0
        end
        object DBEdit18: TDBEdit
          Left = 520
          Top = 5
          Width = 41
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DESPESA_RATEIO'
          DataSource = dmMaquina.dsMaquina
          TabOrder = 1
        end
      end
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 54
        Width = 673
        Height = 456
        Align = alClient
        DataSource = dmMaquina.dsMaquinaOper
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
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
        ColCount = 6
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Width = 303
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SALARIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENCARGOS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL'
            Visible = True
          end>
      end
    end
  end
end
