object frmManifesto: TfrmManifesto
  Left = 112
  Top = 16
  Width = 1156
  Height = 689
  Caption = 'Manifesto'
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
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 1148
    Height = 658
    ActivePage = TS_Geracao
    ActivePageDefault = TS_Geracao
    Align = alClient
    TabIndex = 1
    TabOrder = 0
    FixedDimension = 19
    object TS_Menu: TRzTabSheet
      Caption = 'Menu'
    end
    object TS_Geracao: TRzTabSheet
      Caption = 'Gera'#231#227'o'
      object gbxVendedor: TRzGroupBox
        Left = 0
        Top = 168
        Width = 1144
        Height = 467
        Align = alClient
        BorderColor = clNavy
        BorderInner = fsButtonUp
        BorderOuter = fsBump
        Caption = ' Notas '
        Ctl3D = True
        FlatColor = clNavy
        FlatColorAdjustment = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        VisualStyle = vsGradient
        object Label15: TLabel
          Left = 470
          Top = 131
          Width = 35
          Height = 13
          Caption = 'Op'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object SMDBGrid1: TSMDBGrid
          Left = 5
          Top = 18
          Width = 1134
          Height = 354
          Align = alClient
          Ctl3D = False
          DataSource = DMManifesto.dsmAuxiliar
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = SMDBGrid1DblClick
          OnKeyDown = SMDBGrid1KeyDown
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
          ExOptions = [eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
          OnGetCellParams = SMDBGrid1GetCellParams
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 27
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
          ColCount = 18
          RowCount = 2
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CCe'
              Width = 30
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Serie'
              Title.Alignment = taCenter
              Title.Caption = 'S'#233'rie'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Num_Nota'
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' Nota'
              Width = 66
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DtEmissao2'
              Title.Alignment = taCenter
              Title.Caption = 'Data Emiss'#227'o'
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nome'
              Title.Alignment = taCenter
              Width = 304
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vlr_Nota'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. Nota'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Descricao_SitManif'
              Title.Alignment = taCenter
              Title.Caption = 'Sit. Manifesto'
              Width = 198
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Download'
              Title.Alignment = taCenter
              Title.Caption = 'Download (XML Baixado)'
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Gravada_Nota'
              Title.Alignment = taCenter
              Title.Caption = 'Lan'#231'ada no Sistema'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Descricao_SitNFe'
              Title.Alignment = taCenter
              Title.Caption = 'Situa'#231#227'o Nota'
              Width = 320
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CNPJ'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Insc_Estadual'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Evento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nota_Propria'
              Title.Alignment = taCenter
              Title.Caption = 'Nota Pr'#243'pria'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Chave_Acesso'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DtEmissao'
              Title.Alignment = taCenter
              Title.Caption = 'Data Emiss'#227'o (Com Hora)'
              Width = 90
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Ocultar'
              Title.Alignment = taCenter
              Visible = True
            end>
        end
        object Panel4: TPanel
          Left = 5
          Top = 372
          Width = 1134
          Height = 90
          Align = alBottom
          Color = 16770764
          TabOrder = 1
          object Label29: TLabel
            Left = 62
            Top = 29
            Width = 37
            Height = 13
            Caption = 'Evento:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label30: TLabel
            Left = 41
            Top = 47
            Width = 58
            Height = 13
            Caption = 'Justificativa:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 12
            Top = 9
            Width = 87
            Height = 13
            Alignment = taRightJustify
            Caption = 'Pasta para Salvar:'
          end
          object Shape1: TShape
            Left = 864
            Top = 5
            Width = 31
            Height = 14
            Brush.Color = clRed
          end
          object Label17: TLabel
            Left = 901
            Top = 7
            Width = 77
            Height = 13
            Caption = 'Nota Cancelada'
          end
          object Label19: TLabel
            Left = 901
            Top = 20
            Width = 97
            Height = 13
            Caption = 'Lan'#231'ada no Sistema'
          end
          object Shape2: TShape
            Left = 864
            Top = 18
            Width = 31
            Height = 14
            Brush.Color = clMoneyGreen
          end
          object Label20: TLabel
            Left = 592
            Top = 3
            Width = 202
            Height = 13
            Caption = 'Duplo Clique na nota para mostrar Eventos'
          end
          object Label21: TLabel
            Left = 592
            Top = 19
            Width = 162
            Height = 13
            Caption = 'F3 para ocultar a nota da consulta'
          end
          object Shape3: TShape
            Left = 864
            Top = 31
            Width = 31
            Height = 14
            Brush.Color = clYellow
          end
          object Label22: TLabel
            Left = 901
            Top = 33
            Width = 57
            Height = 13
            Caption = 'Nota Oculta'
          end
          object Label23: TLabel
            Left = 592
            Top = 34
            Width = 192
            Height = 13
            Caption = 'F4 Consultar Nota no Ambiente Nacional'
          end
          object cbManEvento: TComboBox
            Left = 101
            Top = 21
            Width = 380
            Height = 21
            Hint = 'Informar o tipo do Evento'
            BevelKind = bkFlat
            Style = csDropDownList
            ItemHeight = 13
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = cbManEventoClick
            Items.Strings = (
              '210200 - Confirma'#231#227'o da Opera'#231#227'o'
              '210210 - Ci'#234'ncia da Opera'#231#227'o'
              '210220 - Desconhecimento da Opera'#231#227'o'
              '210240 - Opera'#231#227'o n'#227'o Realizada')
          end
          object edtManJustificativa: TEdit
            Left = 101
            Top = 41
            Width = 465
            Height = 19
            Hint = 'Informar a justificativa da Opera'#231#227'o n'#227'o realizada'
            Ctl3D = False
            MaxLength = 255
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
          end
          object btnManifestar: TNxButton
            Left = 656
            Top = 52
            Width = 49
            Height = 30
            Caption = 'Manifesto e Download das notas selecionadas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Glyph.Data = {
              AE060000424DAE06000000000000360000002800000017000000170000000100
              1800000000007806000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFF3F9F4C6CEC7799D7C4D7B4D235C241C561C225E
              224B7B507B9C7CC6CEC7F4F9F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF95A996456A443E663E29682B306B30
              3871373B713A386C3731643129642B3D663D456C4494AA97FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFEFFFFFFFFFFFFFF4E794D2A602A4F844F0F
              5E0F055A08005001015004014E03004B01004700054C050E4C0E4D774F2B622A
              4C7A4EFFFFFFFFFFFFFEFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF4868483F6E
              402F7B30005400045C07075A0B06590906550907550A075309064F08034C0601
              4B03003D002E64303F6C4349694DFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
              4D7A4E3E6B3F207723005B0208610E075F0B065B0900560105570907550A0854
              0B085109054F07064C07034C080042001E5B1D3D6B414D7B4FFFFFFFFFFFFF00
              0000FFFFFF97AA992A6028308833006400076809076508056308005600397739
              04550500550505560707540B065309065008044D06034D050042002F65312860
              2898AA99FFFFFF000000F5F9F64266464F9051006100066B0C07690A07670A00
              54004B854CFFFFFFA6C1A6004D0000550306550908530A075209065007044C05
              044B09003E004E7850456D46F6F9F6000000C6CEC63F6640107C12056D09066C
              0A056A0A0059003C7F3BFFFFFFFFFFFFFFFFFFABC6AD004D0203550605550908
              550B065209054F07044C06014C040D4C0F3B643CC6CFC600000079997A37823A
              2183260F761407720E005E00559256FFFFFFFFFFFFFEFEFEFEFFFEFFFFFFBED2
              C0004A0002540506560806540907530A064F08034D05054C062A632B7DA08000
              00004A7B4D4C954F29892F218426006500639E66FFFFFFFFFFFFFEFEFFFFFFFF
              FFFFFFFFFEFFFFFFFFA6C1A8004B0002550506550907540A085209054F080047
              002E6330517E52000000245E2767AE6D39964028872D79B37DFFFFFFF7F9F9F9
              FCFAFFFFFFD2DFD1FCFEFDFFFFFFFFFFFFFFFFFFBED2C0014E02005503055608
              07540A075309004C01376C3427612A0000001F562078BA80479F4D449948DFEF
              DFF6FBF8F0F4EDFFFFFFB4CFB5004F00639663FFFFFFFFFFFFFEFEFFFFFFFFAD
              C6B0014D0200550207540A07540A014E033970371B561C000000275E2782BF87
              5DAA604DA0533D9141F1FAF0FFFFFFBAD4B8005B00006A04005A00689967FFFF
              FFFFFFFFFEFFFFFFFFFFA9C4AC004B00015605065509014F0436723529602900
              000048764A7DB18171B87565B16957A55A519E56A2CCA4248729177A20016D06
              056E0A005400568C55FFFFFFFFFFFFFFFFFEFFFFFFC0D6C30048000055040052
              022E6C2E517D530000007494746B9F6F89C88B75B7776BB26F5BA85F45994C4E
              9C51429748258227006604006E090056006E9C6DFFFFFFFFFFFFFEFEFFFFFFFF
              B3C9B4145F150157062A682D7B9F80000000C4CCC4476C46A0D3A382C3887EBC
              8072B67569AE6B5DA76153A2554E9D52358F3A0B7110006C030055005B8E59FF
              FFFFFFFFFFFFFFFFAEC9B00053000D600F3E653EC6CFC6000000F6FBF72E572F
              B5CFB495CC9B8FC69183BF8779B97C6EB17263AA675AA45D519E5446984E2885
              2D0C7413005100639261FFFFFFB6D0B50044000051004D8452456A45F6FBF700
              0000FFFFFF9BAA9A1F571FDBF9DD99CC9C92C79789C28A7DB98271B37868AD6B
              5CA661549F5B4C9A503F8F422F89350D6D143A8537006208005900338035295C
              299BAE9AFFFFFF000000FEFFFFFFFFFF45744B507850D2F0D2A1D0A798CC9D91
              C79384C0887CBA8070B27466AD685CA460519C5546954B3F8F432B83321E7922
              36873B3E6C3E4E7C51FFFFFFFFFEFF000000FFFFFFFFFFFFFFFFFF4160404F77
              4FE9FFEAAAD7AE9FCEA093C7988AC28D81BA8376B5786CAD6F60A664569D5A49
              984D32893961A8653B6C3C476848FFFFFFFFFFFFFFFFFF000000FFFFFFFFFEFF
              FFFFFFFFFFFF45744A20561EC3D8C3C0E5C3B1DDB69ED0A493C69587BF8A7EBA
              7F71B37570B37564AB6B81AE822259234F7A4FFFFFFFFFFFFFFFFFFEFFFFFF00
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9BAB9B29552C466B4985AA849EC5A0
              B2D5B5B0D8B5A0CCA482B2856295644169433B5D3C99AE9BFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FCF6C3
              CBC3719270447545255F24225624245E28457649739575C5CDC5F6FBF7FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
            GlyphSpacing = 5
            ParentFont = False
            TabOrder = 3
            Transparent = True
            Visible = False
            OnClick = btnManifestarClick
          end
          object edtDiretorio: TDirectoryEdit
            Left = 101
            Top = 1
            Width = 380
            Height = 21
            DialogKind = dkWin32
            InitialDir = 'C:\'
            MultipleDirs = True
            Ctl3D = False
            NumGlyphs = 1
            ParentCtl3D = False
            TabOrder = 0
          end
          object NxButton3: TNxButton
            Left = 704
            Top = 52
            Width = 225
            Height = 30
            Caption = 'Outras Op'#231#245'es'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF606060000000FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF60606080
              8080000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF606060808080808080000000000000000000FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF60606080808080808080
              8080000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF6060608080808080808080808080800000000000000000000000000000
              00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF60606080808080808080808080808080
              8080000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF202020
              4040404040404040406060608080808080800000000000000000000000000000
              00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF40404080808080
              8080000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF404040808080808080000000000000000000FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF40404080808080
              8080000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF404040808080808080000000000000000000FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF40404080808080
              8080000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF404040808080808080000000000000000000FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040808080B0
              B0B0303030000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF404040B0B0B0C0C0C0C0C0C0303030000000FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF606060C0C0C0C0
              C0C0C0C0C0C0C0C0303030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            GlyphSpacing = 5
            ParentFont = False
            PopupMenu = PopupMenu1
            ShowArrow = True
            TabOrder = 4
            Transparent = True
          end
          object btnMan: TNxButton
            Left = 100
            Top = 61
            Width = 141
            Height = 28
            Caption = 'Manifesto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            GlyphSpacing = 5
            ParentFont = False
            TabOrder = 5
            Transparent = True
            OnClick = btnManClick
          end
          object btnDownload: TNxButton
            Left = 240
            Top = 61
            Width = 141
            Height = 28
            Caption = 'Download'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            GlyphSpacing = 5
            ParentFont = False
            TabOrder = 6
            Transparent = True
            OnClick = btnDownloadClick
          end
          object cbOpcao: TComboBox
            Left = 573
            Top = 59
            Width = 76
            Height = 21
            Hint = 'Informar o tipo do Evento'
            BevelKind = bkFlat
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
            Text = 'Manifesto e Download'
            Visible = False
            OnChange = cbOpcaoChange
            Items.Strings = (
              'Manifesto e Download'
              'Somente Manifesto'
              'Somente Download')
          end
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 119
        Width = 1144
        Height = 49
        Align = alTop
        Color = 13948116
        TabOrder = 1
        object Label6: TLabel
          Left = 94
          Top = 11
          Width = 188
          Height = 13
          Alignment = taRightJustify
          Caption = 'Processando Notas Ambiente Nacional:'
        end
        object RzProgressBar1: TRzProgressBar
          Left = 283
          Top = 1
          Width = 569
          BorderOuter = fsFlat
          BorderWidth = 0
          InteriorOffset = 0
          PartsComplete = 0
          Percent = 0
          TotalParts = 0
        end
        object Label13: TLabel
          Left = 130
          Top = 34
          Width = 152
          Height = 13
          Alignment = taRightJustify
          Caption = 'Verificando as notas no sistema:'
        end
        object RzProgressBar2: TRzProgressBar
          Left = 283
          Top = 24
          Width = 569
          BorderOuter = fsFlat
          BorderWidth = 0
          InteriorOffset = 0
          PartsComplete = 0
          Percent = 0
          TotalParts = 0
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1144
        Height = 119
        Align = alTop
        TabOrder = 2
        object Label1: TLabel
          Left = 32
          Top = 11
          Width = 23
          Height = 13
          Alignment = taRightJustify
          Caption = 'Filial:'
        end
        object Label16: TLabel
          Left = 20
          Top = 31
          Width = 35
          Height = 13
          Alignment = taRightJustify
          Caption = 'Op'#231#227'o:'
        end
        object Label18: TLabel
          Left = 8
          Top = 51
          Width = 47
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dt. Inicial:'
        end
        object Label2: TLabel
          Left = 289
          Top = 54
          Width = 243
          Height = 15
          Alignment = taCenter
          AutoSize = False
          Caption = 'N'#250'mero Sequencial '#218'nico - NSU'
          Color = clGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object CurrencyEdit5: TCurrencyEdit
          Left = 289
          Top = 69
          Width = 243
          Height = 48
          TabStop = False
          AutoSize = False
          BorderStyle = bsNone
          Color = clGreen
          Ctl3D = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -40
          Font.Name = 'Arial'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object RxDBLookupCombo1: TRxDBLookupCombo
          Left = 58
          Top = 3
          Width = 396
          Height = 21
          DropDownCount = 8
          Ctl3D = False
          LookupField = 'ID'
          LookupDisplay = 'NOME_INTERNO'
          LookupSource = DMManifesto.dsFilial
          ParentCtl3D = False
          TabOrder = 0
          OnEnter = RxDBLookupCombo1Enter
          OnExit = RxDBLookupCombo1Exit
        end
        object btnGerar: TNxButton
          Left = 59
          Top = 85
          Width = 114
          Height = 32
          Caption = 'Consultar'
          Down = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          OnClick = btnGerarClick
        end
        object RzGroupBox1: TRzGroupBox
          Left = 537
          Top = 5
          Width = 183
          Height = 103
          BorderColor = clNavy
          BorderInner = fsButtonUp
          BorderOuter = fsBump
          Caption = ' Informa'#231#245'es da Consulta '
          Ctl3D = True
          FlatColor = clNavy
          FlatColorAdjustment = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 8
          VisualStyle = vsGradient
          object Label4: TLabel
            Left = 44
            Top = 24
            Width = 51
            Height = 13
            Alignment = taRightJustify
            Caption = 'NSU Final:'
          end
          object Label10: TLabel
            Left = 30
            Top = 42
            Width = 65
            Height = 13
            Alignment = taRightJustify
            Caption = 'NSU M'#225'ximo:'
          end
          object Label3: TLabel
            Left = 44
            Top = 62
            Width = 51
            Height = 13
            Alignment = taRightJustify
            Caption = 'Qtd.Notas:'
          end
          object Label12: TLabel
            Left = 33
            Top = 83
            Width = 62
            Height = 13
            Alignment = taRightJustify
            Caption = 'Qtd.Eventos:'
          end
          object CurrencyEdit1: TCurrencyEdit
            Left = 98
            Top = 16
            Width = 71
            Height = 21
            AutoSize = False
            Ctl3D = False
            DecimalPlaces = 0
            DisplayFormat = '0'
            ParentCtl3D = False
            TabOrder = 0
          end
          object CurrencyEdit2: TCurrencyEdit
            Left = 98
            Top = 36
            Width = 71
            Height = 21
            AutoSize = False
            Ctl3D = False
            DecimalPlaces = 0
            DisplayFormat = '0'
            ParentCtl3D = False
            TabOrder = 1
          end
          object CurrencyEdit6: TCurrencyEdit
            Left = 98
            Top = 56
            Width = 71
            Height = 21
            AutoSize = False
            Ctl3D = False
            DecimalPlaces = 0
            DisplayFormat = '0'
            ParentCtl3D = False
            TabOrder = 2
          end
          object CurrencyEdit7: TCurrencyEdit
            Left = 98
            Top = 76
            Width = 71
            Height = 21
            AutoSize = False
            Ctl3D = False
            DecimalPlaces = 0
            DisplayFormat = '0'
            ParentCtl3D = False
            TabOrder = 3
          end
        end
        object NxCheckBox1: TNxCheckBox
          Left = 162
          Top = 63
          Width = 123
          Height = 21
          TabOrder = 5
          Text = 'NxCheckBox1'
          Caption = 'Refazer a consulta'
          OnChange = NxCheckBox1Change
        end
        object NxCheckBox2: TNxCheckBox
          Left = 58
          Top = 63
          Width = 95
          Height = 21
          TabOrder = 4
          Text = 'NxCheckBox1'
          Caption = 'Alterar a NSU'
          OnChange = NxCheckBox2Change
        end
        object BitBtn1: TBitBtn
          Left = 456
          Top = 3
          Width = 75
          Height = 21
          Caption = 'Trocar filial'
          Enabled = False
          TabOrder = 1
          OnClick = BitBtn1Click
        end
        object btnContinua: TNxButton
          Left = 172
          Top = 85
          Width = 114
          Height = 32
          Caption = 'Continua'
          Down = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          OnClick = btnContinuaClick
        end
        object NxComboBox1: TNxComboBox
          Left = 58
          Top = 23
          Width = 473
          Height = 21
          Cursor = crArrow
          TabOrder = 2
          Text = 
            'Todas as notas (excetos as gravadas no sistema e marcadas como o' +
            'cultas)'
          ReadOnly = True
          HideFocus = False
          Style = dsDropDownList
          AutoCompleteDelay = 0
          ItemIndex = 1
          Items.Strings = (
            'Todas as Notas'
            
              'Todas as notas (excetos as gravadas no sistema e marcadas como o' +
              'cultas)'
            'Somente as notas n'#227'o manifestadas'
            'Somente as notas n'#227'o sem download (n'#227'o baixado o xml)'
            ''
            '')
        end
        object BitBtn2: TBitBtn
          Left = 724
          Top = 80
          Width = 126
          Height = 25
          Caption = 'Primeiro Busca'
          TabOrder = 10
          Visible = False
          OnClick = BitBtn2Click
        end
        object NxDatePicker1: TNxDatePicker
          Left = 58
          Top = 43
          Width = 95
          Height = 21
          TabOrder = 3
          Text = '17/07/2016'
          HideFocus = False
          Date = 42568.000000000000000000
          NoneCaption = 'None'
          TodayCaption = 'Today'
        end
        object BitBtn3: TBitBtn
          Left = 724
          Top = 16
          Width = 126
          Height = 25
          Caption = 'Ajustar Manifesto'
          TabOrder = 11
          Visible = False
          OnClick = BitBtn3Click
        end
        object BitBtn4: TBitBtn
          Left = 724
          Top = 48
          Width = 126
          Height = 25
          Caption = 'Ajustar grav. no sistema'
          TabOrder = 12
          Visible = False
          OnClick = BitBtn4Click
        end
      end
    end
    object TabSheet1: TRzTabSheet
      Caption = 'TabSheet1'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1144
        Height = 110
        Align = alTop
        TabOrder = 0
        Visible = False
        object Label5: TLabel
          Left = 120
          Top = 16
          Width = 23
          Height = 13
          Alignment = taRightJustify
          Caption = 'Filial:'
        end
        object Label7: TLabel
          Left = 96
          Top = 36
          Width = 47
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dt. Inicial:'
        end
        object Label8: TLabel
          Left = 277
          Top = 36
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dt. Final:'
        end
        object RxDBLookupCombo2: TRxDBLookupCombo
          Left = 146
          Top = 8
          Width = 473
          Height = 21
          DropDownCount = 8
          Ctl3D = False
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          ParentCtl3D = False
          TabOrder = 0
        end
        object NxDatePicker3: TNxDatePicker
          Left = 146
          Top = 28
          Width = 121
          Height = 21
          TabOrder = 1
          Text = '17/07/2016'
          HideFocus = False
          Date = 42568.000000000000000000
          NoneCaption = 'None'
          TodayCaption = 'Today'
        end
        object NxDatePicker4: TNxDatePicker
          Left = 322
          Top = 28
          Width = 121
          Height = 21
          TabOrder = 2
          Text = '17/07/2016'
          HideFocus = False
          Date = 42568.000000000000000000
          NoneCaption = 'None'
          TodayCaption = 'Today'
        end
        object NxButton1: TNxButton
          Left = 146
          Top = 72
          Width = 120
          Height = 34
          Caption = 'Gerar Arquivo'
          Down = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object NxButton2: TNxButton
          Left = 266
          Top = 72
          Width = 120
          Height = 34
          Caption = 'Fechar'
          Down = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object RzGroupBox2: TRzGroupBox
          Left = 681
          Top = 5
          Width = 312
          Height = 62
          BorderColor = clNavy
          BorderInner = fsButtonUp
          BorderOuter = fsBump
          Caption = ' Informa'#231#245'es da Consulta '
          Ctl3D = True
          FlatColor = clNavy
          FlatColorAdjustment = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          VisualStyle = vsGradient
          object Label9: TLabel
            Left = 44
            Top = 24
            Width = 51
            Height = 13
            Alignment = taRightJustify
            Caption = 'NSU Final:'
          end
          object Label11: TLabel
            Left = 30
            Top = 42
            Width = 65
            Height = 13
            Alignment = taRightJustify
            Caption = 'NSU M'#225'ximo:'
          end
          object CurrencyEdit3: TCurrencyEdit
            Left = 98
            Top = 16
            Width = 121
            Height = 21
            AutoSize = False
            Ctl3D = False
            DecimalPlaces = 0
            DisplayFormat = '0'
            ParentCtl3D = False
            TabOrder = 0
          end
          object CurrencyEdit4: TCurrencyEdit
            Left = 98
            Top = 36
            Width = 121
            Height = 21
            AutoSize = False
            Ctl3D = False
            DecimalPlaces = 0
            DisplayFormat = '0'
            ParentCtl3D = False
            TabOrder = 1
          end
        end
      end
      object BitBtn5: TBitBtn
        Left = 248
        Top = 192
        Width = 75
        Height = 25
        Caption = 'BitBtn5'
        TabOrder = 1
        OnClick = BitBtn5Click
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 863
    Top = 613
    object ConsultarSituaodaNotaCancelada1: TMenuItem
      Caption = 'Consultar Situa'#231#227'o da Nota (Cancelada)'
      OnClick = ConsultarSituaodaNotaCancelada1Click
    end
    object Marcarcomonotasjlanadas1: TMenuItem
      Caption = 'Marcar como notas j'#225' lan'#231'adas'
      OnClick = Marcarcomonotasjlanadas1Click
    end
    object DownloaddoEvento1: TMenuItem
      Caption = 'Download do Evento'
      OnClick = DownloaddoEvento1Click
    end
  end
end
