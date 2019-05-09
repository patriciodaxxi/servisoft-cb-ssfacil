object frmGerar_Pedido_EDI: TfrmGerar_Pedido_EDI
  Left = 120
  Top = 87
  Width = 1095
  Height = 567
  Caption = 'frmGerar_Pedido_EDI'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1087
    Height = 68
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label5: TLabel
      Left = 4
      Top = 29
      Width = 116
      Height = 13
      Alignment = taRightJustify
      Caption = 'Informar o Arquivo (EDI):'
    end
    object Label1: TLabel
      Left = 69
      Top = 9
      Width = 51
      Height = 13
      Alignment = taRightJustify
      Caption = 'Finalidade:'
    end
    object Shape1: TShape
      Left = 720
      Top = 29
      Width = 28
      Height = 15
      Brush.Color = clRed
    end
    object Label2: TLabel
      Left = 752
      Top = 32
      Width = 43
      Height = 13
      Caption = 'Com Erro'
    end
    object Label3: TLabel
      Left = 21
      Top = 49
      Width = 99
      Height = 13
      Alignment = taRightJustify
      Caption = 'Opera'#231#227'o de Venda:'
    end
    object FilenameEdit1: TFilenameEdit
      Left = 122
      Top = 22
      Width = 391
      Height = 21
      NumGlyphs = 1
      TabOrder = 1
      OnChange = FilenameEdit1Change
    end
    object btnGravar_Pedido: TNxButton
      Left = 518
      Top = 22
      Width = 147
      Height = 44
      Caption = 'Gravar Pedido'
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
      TabOrder = 2
      Transparent = True
      OnClick = btnGravar_PedidoClick
    end
    object ComboBox1: TComboBox
      Left = 122
      Top = 1
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 0
      Text = 'Industrializa'#231#227'o'
      Items.Strings = (
        'Consumo'
        'Revenda'
        'Industrializa'#231#227'o'
        'Outros')
    end
    object CheckBox1: TCheckBox
      Left = 296
      Top = 4
      Width = 137
      Height = 17
      Caption = 'Usar Pre'#231'o do Arquivo'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 122
      Top = 44
      Width = 391
      Height = 21
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMGerar_EDI.dsOperacao
      TabOrder = 4
    end
    object ckExportacao: TCheckBox
      Left = 472
      Top = 4
      Width = 177
      Height = 17
      Caption = 'Cliente Exporta'#231#227'o'
      TabOrder = 5
    end
  end
  object gbxVendedor: TRzGroupBox
    Left = 0
    Top = 68
    Width = 1087
    Height = 215
    Align = alClient
    BorderColor = clNavy
    BorderInner = fsButtonUp
    BorderOuter = fsBump
    Caption = ' Arquivo EDI '
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
      Width = 1077
      Height = 175
      Align = alClient
      Ctl3D = False
      DataSource = DMGerar_EDI.dsmAuxiliar
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
      ColCount = 25
      RowCount = 2
      Columns = <
        item
          Expanded = False
          FieldName = 'NumOC'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Item'
          Title.Alignment = taCenter
          Title.Caption = 'Ocorr'#234'ncia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Item_Cliente'
          Title.Alignment = taCenter
          Title.Caption = 'Item Cliente'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Plano'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DtEmissao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DtEntrega'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CodProdCli'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd. Produto no Cliente'
          Width = 107
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'Quantidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Unidade'
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'VlrUnitario'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Plano2'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodCorCli'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd. Cor Cli'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeCorCli'
          Title.Alignment = taCenter
          Title.Caption = 'Nome Cor Cli'
          Width = 269
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeProduto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNPJFornecedor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Reservado'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tamnanho'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LocalEntrega'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fabrica'
          Title.Caption = 'F'#225'brica'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TipoOperacao'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo Opera'#231#227'o'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PercTransferencia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Drawback'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CondPgto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNPJCliente'
          Visible = True
        end>
    end
    object StaticText1: TStaticText
      Left = 5
      Top = 193
      Width = 1077
      Height = 17
      Align = alBottom
      Caption = 
        'Duplo Clique para consultar o produto ou fazer o relacionamento ' +
        'do produto cliente com o produto interno'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object RzPageControl2: TRzPageControl
    Left = 0
    Top = 283
    Width = 1087
    Height = 253
    ActivePage = RzTabSheet1
    ActivePageDefault = RzTabSheet1
    Align = alBottom
    BackgroundColor = clSilver
    BoldCurrentTab = True
    FlatColor = clGray
    ParentBackgroundColor = False
    TabColors.Shadow = clSilver
    TabIndex = 0
    TabOrder = 2
    FixedDimension = 19
    object RzTabSheet1: TRzTabSheet
      Caption = 'Pedidos Gerados'
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 0
        Width = 1083
        Height = 230
        Align = alClient
        Ctl3D = False
        DataSource = DMGerar_EDI.dsmGerado
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
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
        ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 3
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'NumPedido'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Pedido Interno'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PedidoCliente'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Pedido Cliente (OC)'
            Width = 254
            Visible = True
          end>
      end
    end
    object ts_Erro: TRzTabSheet
      Caption = 'Pedidos n'#227'o gerados'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 0
        Width = 1083
        Height = 230
        Align = alClient
        Ctl3D = False
        DataSource = DMGerar_EDI.dsmNaoGerado
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
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
        ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
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
            FieldName = 'Pedido'
            Title.Alignment = taCenter
            Title.Caption = 'Pedido Cliente (OC)'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Item'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NumOS'
            Title.Alignment = taCenter
            Title.Caption = 'Num OS/Plano'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Motivo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 508
            Visible = True
          end>
      end
    end
    object TabSheet1: TRzTabSheet
      Caption = 'Verificar'
      object SMDBGrid4: TSMDBGrid
        Left = 0
        Top = 41
        Width = 1083
        Height = 189
        Align = alClient
        Ctl3D = False
        DataSource = DMGerar_EDI.dsmVer
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
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
        ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 13
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_Pedido'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Num_Pedido'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Item'
            Width = 32
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Item_Cliente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Item_EDI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Num_OS'
            Width = 136
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_Produto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_Cor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cod_Produto_Cli'
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Diferenca'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_Produto_EDI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_Cor_EDI'
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1083
        Height = 41
        Align = alTop
        TabOrder = 1
        object BitBtn1: TBitBtn
          Left = 40
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Verificar'
          TabOrder = 0
          OnClick = BitBtn1Click
        end
      end
    end
  end
end
