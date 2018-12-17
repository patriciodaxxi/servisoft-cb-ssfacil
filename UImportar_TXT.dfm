object frmImportar_TXT: TfrmImportar_TXT
  Left = 214
  Top = 91
  Width = 942
  Height = 579
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'frmImportar_TXT'
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 934
    Height = 92
    Align = alTop
    Color = clSilver
    TabOrder = 0
    DesignSize = (
      934
      92)
    object Label5: TLabel
      Left = 7
      Top = 31
      Width = 113
      Height = 13
      Alignment = taRightJustify
      Caption = 'Informar o Arquivo (Txt):'
    end
    object Label7: TLabel
      Left = 17
      Top = 10
      Width = 102
      Height = 13
      Caption = 'Procurar Produto Por:'
    end
    object Shape1: TShape
      Left = 487
      Top = 73
      Width = 28
      Height = 15
      Brush.Color = clRed
    end
    object Label2: TLabel
      Left = 519
      Top = 75
      Width = 92
      Height = 13
      Caption = 'Faltam Informa'#231#245'es'
    end
    object Label13: TLabel
      Left = 327
      Top = 54
      Width = 31
      Height = 13
      Caption = 'CFOP:'
    end
    object Label14: TLabel
      Left = 97
      Top = 76
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'Filial:'
    end
    object FilenameEdit1: TFilenameEdit
      Left = 122
      Top = 24
      Width = 362
      Height = 21
      Filter = '*.paq'
      NumGlyphs = 1
      TabOrder = 1
      OnChange = FilenameEdit1Change
      OnKeyDown = FilenameEdit1KeyDown
    end
    object btnGravar_Pedido: TNxButton
      Left = 486
      Top = 37
      Width = 147
      Height = 32
      Caption = 'Gravar Nota'
      Color = 16752448
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
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
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Transparent = True
      OnClick = btnGravar_PedidoClick
    end
    object ComboBox1: TComboBox
      Left = 122
      Top = 2
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'Refer'#234'ncia'
      Items.Strings = (
        'Refer'#234'ncia'
        'Fornecedor / Produto')
    end
    object ComboBox2: TComboBox
      Left = 122
      Top = 46
      Width = 145
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 2
      Text = 'Usar CST do Sistema'
      Items.Strings = (
        'Usar CST do Sistema'
        'Usar CST do TXT')
    end
    object RzGroupBox2: TRzGroupBox
      Left = 640
      Top = 5
      Width = 275
      Height = 63
      Anchors = [akLeft, akTop, akRight]
      BorderColor = clNavy
      BorderInner = fsButtonUp
      BorderOuter = fsBump
      Caption = '  N'#227'o Encontrados '
      Color = clWhite
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
      TabOrder = 6
      VisualStyle = vsGradient
      object Label8: TLabel
        Left = 23
        Top = 15
        Width = 83
        Height = 13
        Caption = 'Qtd. Produtos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 112
        Top = 13
        Width = 9
        Height = 16
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 9
        Top = 46
        Width = 258
        Height = 13
        Caption = 'Cliente n'#227'o encontrado ou sem (Cidade,Pa'#237's)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label11: TLabel
        Left = 7
        Top = 31
        Width = 99
        Height = 13
        Caption = 'Qtd. Adi'#231#227'o Erro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 112
        Top = 29
        Width = 9
        Height = 16
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 363
      Top = 46
      Width = 121
      Height = 21
      DropDownCount = 15
      DropDownWidth = 300
      LookupField = 'ID'
      LookupDisplay = 'CODCFOP;NOME'
      LookupSource = DMCadNotaFiscal.dsCFOP
      TabOrder = 3
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 122
      Top = 68
      Width = 362
      Height = 21
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'NOME_INTERNO'
      LookupSource = DMImportarXML.dsFilial
      TabOrder = 4
    end
  end
  object gbxVendedor: TRzGroupBox
    Left = 0
    Top = 92
    Width = 934
    Height = 219
    Align = alClient
    BorderColor = clNavy
    BorderInner = fsButtonUp
    BorderOuter = fsBump
    Caption = ' Itens da Nota (Produtos) '
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
    TabOrder = 1
    VisualStyle = vsGradient
    object SMDBGrid3: TSMDBGrid
      Left = 5
      Top = 18
      Width = 924
      Height = 196
      Align = alClient
      Ctl3D = False
      DataSource = DMImportarXML.dsmItensNota
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = SMDBGrid3DblClick
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
      OnGetCellParams = SMDBGrid3GetCellParams
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 38
      RowCount = 2
      Columns = <
        item
          Expanded = False
          FieldName = 'CFOP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Item'
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CodProduto'
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CodProdutoInterno'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeProduto'
          Width = 453
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NCM'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qtd'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrUnitario'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrTotal'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AliqIcms'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BaseIcms'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrIcms'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AliqIPI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrImportacao'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Importa'#231#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrDespesaAduaneira'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Aduaneira'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrIOF'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. IOF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CodSitTrib'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CodCSTIPI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CodCofins'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CodPIS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AliqPIS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AliqCofins'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrPis'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrCofins'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrIPI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Unidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PercRedIcms'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BaseCSTRet'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrIcmsCSTRet'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Origem'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PercMVAST'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PercRedBCST'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BaseCST'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PercIcmsST'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrIcmsST'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VlrFrete'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'InfAdicionais'
          Visible = True
        end>
    end
  end
  object RzPageControl2: TRzPageControl
    Left = 0
    Top = 311
    Width = 934
    Height = 237
    ActivePage = TS_Registros
    ActivePageDefault = TS_Registros
    Align = alBottom
    BackgroundColor = clSilver
    BoldCurrentTab = True
    FlatColor = clGray
    ParentBackgroundColor = False
    TabColors.Shadow = clSilver
    TabIndex = 0
    TabOrder = 2
    FixedDimension = 19
    object TS_Registros: TRzTabSheet
      Caption = 'Registros'
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 0
        Width = 930
        Height = 68
        Align = alClient
        Ctl3D = False
        DataSource = DMImportarXML.dsmRegistro
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
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
        ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        OnGetCellParams = SMDBGrid2GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 16
        ScrollBars = ssHorizontal
        ColCount = 16
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNPJ_CPF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'CNPJ / CPF'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Pessoa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Endereco'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Endere'#231'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Num_Endereco'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' End.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cod_Municipio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Municipio'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cep'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Bairro'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome_Cidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Cidade'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cod_Pais'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Pais'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome_Pais'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Pais'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cod_UF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. UF'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Insc_Estadual'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Inscr. Estadual'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end>
      end
      object RzGroupBox1: TRzGroupBox
        Left = 0
        Top = 68
        Width = 930
        Height = 146
        Align = alBottom
        BorderColor = clNavy
        BorderInner = fsButtonUp
        BorderOuter = fsBump
        Caption = ' Dados Importa'#231#227'o '
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
        TabOrder = 1
        VisualStyle = vsGradient
        object SMDBGrid1: TSMDBGrid
          Left = 5
          Top = 18
          Width = 583
          Height = 123
          Align = alClient
          Ctl3D = False
          DataSource = DMImportarXML.dsmDadosImp
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
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
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
          ColCount = 8
          RowCount = 2
          Columns = <
            item
              Expanded = False
              FieldName = 'NumDI'
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' DI'
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DtRegistro'
              Title.Alignment = taCenter
              Title.Caption = 'Data Registro'
              Width = 72
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DtDesembaracao'
              Title.Alignment = taCenter
              Title.Caption = 'Data Desembara'#231'o'
              Width = 79
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CodExportador'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'd. Exportador'
              Width = 218
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Local_Desembaraco'
              Title.Alignment = taCenter
              Title.Caption = 'Local Desembara'#231'o'
              Width = 252
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UF'
              Title.Alignment = taCenter
              Title.Caption = 'UF Desemb.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NumFatura'
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' Fatura'
              Visible = True
            end>
        end
        object SMDBGrid4: TSMDBGrid
          Left = 599
          Top = 18
          Width = 326
          Height = 123
          Align = alRight
          Ctl3D = False
          DataSource = DMImportarXML.dsmDadosImp_Adi
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColExit = SMDBGrid4ColExit
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
          OnGetCellParams = SMDBGrid4GetCellParams
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 11
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
          RowCount = 2
          Columns = <
            item
              Expanded = False
              FieldName = 'NumAdicao'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' Adi'#231#227'o'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Item_Adi'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Item'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CodFabricante'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'd. Fabricante'
              Width = 138
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VlrDesconto'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. Desconto'
              Visible = True
            end>
        end
        object Panel1: TPanel
          Left = 588
          Top = 18
          Width = 11
          Height = 123
          Align = alRight
          Color = clGray
          TabOrder = 2
        end
      end
    end
    object TabSheet1: TRzTabSheet
      Caption = 'Volumes'
      object Label1: TLabel
        Left = 32
        Top = 16
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Caption = 'Qtd. Volume:'
      end
      object Label3: TLabel
        Left = 52
        Top = 37
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'Esp'#233'cie:'
      end
      object Label4: TLabel
        Left = 60
        Top = 59
        Width = 33
        Height = 13
        Alignment = taRightJustify
        Caption = 'Marca:'
      end
      object Label6: TLabel
        Left = 35
        Top = 81
        Width = 58
        Height = 13
        Alignment = taRightJustify
        Caption = 'N'#186' Volumes:'
      end
      object DBEdit1: TDBEdit
        Left = 96
        Top = 8
        Width = 121
        Height = 21
        DataField = 'QtdVolume'
        DataSource = DMImportarXML.dsmOutrosNota
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 96
        Top = 29
        Width = 121
        Height = 21
        DataField = 'Especie'
        DataSource = DMImportarXML.dsmOutrosNota
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 96
        Top = 51
        Width = 121
        Height = 21
        DataField = 'Marca'
        DataSource = DMImportarXML.dsmOutrosNota
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 96
        Top = 73
        Width = 121
        Height = 21
        DataField = 'Marca'
        DataSource = DMImportarXML.dsmOutrosNota
        TabOrder = 3
      end
    end
  end
end
