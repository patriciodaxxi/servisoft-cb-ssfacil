object frmBaixaPedidoProc: TfrmBaixaPedidoProc
  Left = 181
  Top = 77
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Baixa Pedido Processos'
  ClientHeight = 564
  ClientWidth = 994
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 994
    Height = 68
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 18
      Top = 50
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Caption = 'Pedido (OC):'
    end
    object Label3: TLabel
      Left = 43
      Top = 13
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente:'
    end
    object Label7: TLabel
      Left = 10
      Top = 32
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Entrega Ini:'
    end
    object Label8: TLabel
      Left = 181
      Top = 32
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
    end
    object Edit1: TEdit
      Left = 79
      Top = 44
      Width = 150
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnKeyDown = Edit1KeyDown
    end
    object DateEdit3: TDateEdit
      Left = 79
      Top = 24
      Width = 100
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      StartOfWeek = Sun
      TabOrder = 1
    end
    object DateEdit4: TDateEdit
      Left = 207
      Top = 24
      Width = 100
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      StartOfWeek = Sun
      TabOrder = 2
    end
    object btnConsultar: TNxButton
      Left = 315
      Top = 28
      Width = 177
      Height = 30
      Caption = 'Efetuar Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        AE060000424DAE06000000000000360000002800000017000000170000000100
        1800000000007806000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF7F2F0F5F2F0FCFDFDFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B778D2D52869876
        72B0A3A1FCFDFE000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7780
        0055B812A5FA5E90BDBBA29FFAF5F4000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF5C6377004EAD29BEFFA9ECFFA3F7FF3A89BFF6F5F6000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF75737F0051AC17B1FFA4E7FDD5FFFF12A6E45E90B5FFFCFC00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFD6C6C7D0057BB25BAFFA5E7FEC7FFFF099DDF6A8A
        A8FFFFFDFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF54657D0057B120B5FFA1E5FECFFFFF
        109CDD4D7EA5FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFCFEFEDADDDDDAD9D9CFCFCFEDEFEFFFFFFFFFFFFFFFFFFF00024A21BCFFA5
        EAFFCAFFFF11A7E86587A9FFFFFCFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFDDE0E0958E8D7A63657D60628467678065658D77799C9393D3D1D1ADAA
        A749343776B3E0B4FFFF19A4DF5A84A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFD2D8D84C3334846269967570A39388A99E9AAB9E99AE9890
        B69DA4A28E8F867070E7D0CC806B6E005499467EA7FFFFFAFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFC2C2C2533638A27B799D80649A9A7C94988895
        97979498949198849E9478C4AFA8C8B5B7AFA1A1B6B3B1FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FBFBFB816D6E8A66679C6F4A987D
        5A978F7499978499998D99998C989783948769987854C9B1A9C1B4B6DED8D8FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000E0DCDB74575C
        98634797653998765499876899927799977F99967F99907799826295704B9B64
        3AD4CFD8A39C9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000887F83865B54984D1A945C319969439A77559A7F5F998365998364997F5F
        99735095673F81400DC9A391B2ACB0ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000BDAFB38C57459140079352258D562D875732885D3A8D
        6744946E4B92694587532D91572CBB753CCA906BADAAB0CECDCDFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C6B7BB8F56428528008B3D08A766
        34CA9765D0A272BC8D5F9E6940A06B3ECB9867EFB984FFCB8ACD8A5FBBB8C0DD
        DBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000B8AEB1906152
        AD5529ECB177FFD29AFED7A5FCDEAEFEE7B6FFEABBFFE8B8FDDCABF7D09CFCCB
        90CF9675AEAAB2CBCBCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        00009B96988F6B68EAA769FFD19BF4CD9BF4D8AAF4E0B4F4E4BBF4E5BDF4E4BB
        F4DDB1F6DBABF8C98AC6A399A8A6A9F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000D2D0D07E6B73B47F67FED295F6DBADF4E4BAF5E5C2F5
        E7C8F5E9CAF4E7C8F5E8C3F9E9B9D29E73DDDEE8A6A2A1FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FCFEFE9B8F91B6A0A5CD9972FDE8
        B2F6EDC7F5E9CCF4EDD4F5EED9F5EED6F9EFCDE4C299F3E4DD867F80D7D8D8FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFD4D6D6
        574849C3AEB2CDA88FF0D9B4F6ECD0F6F3E3F6F1E5F4E8D3E2C2ABE1D0CF9E95
        96C6C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFD3D5D59F969797888CC0A6A1D1B6ACD5BEB2D7C0B7D5BDB8
        C1B4B8ADA7AAC0BFBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFCFDFDD2D0D0A3A0A2CEC5C7E1
        D7D8DCD3D4A09C9EE7E5E5F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 4
      Transparent = True
      OnClick = btnConsultarClick
    end
    object Edit2: TEdit
      Left = 79
      Top = 6
      Width = 377
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnKeyDown = Edit1KeyDown
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 68
    Width = 994
    Height = 496
    ActivePage = TS_Baixa
    ActivePageDefault = TS_Baixa
    Align = alClient
    TabIndex = 0
    TabOrder = 1
    FixedDimension = 19
    object TS_Baixa: TRzTabSheet
      Caption = 'Baixa'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 0
        Width = 990
        Height = 431
        Align = alClient
        Ctl3D = False
        DataSource = DMBaixaPedidoProc.dsPedidoProc
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentCtl3D = False
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
        ExOptions = [eoCheckBoxSelect, eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 27
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 13
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'PEDIDO_CLIENTE'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Pedido Cliente'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEM_PEDIDO'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Item Pedido'
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FANTASIA'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Cliente'
            Width = 191
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'REFERENCIA'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_PROCESSO'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Nome Processo'
            Width = 169
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_PROCESSO_PEND'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. No Processo'
            Title.Color = clMoneyGreen
            Width = 97
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_APRODUZIR'
            Title.Alignment = taCenter
            Title.Caption = 'Informar a Qtd Produzida'
            Title.Color = clYellow
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMEPRODUTO'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Nome Produto'
            Width = 136
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_COMBINACAO'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Nome Cor'
            Width = 177
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'UNIDADE'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Unid.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTENTREGA'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Data Entrega'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUM_PEDIDO'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Pedido'
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 431
        Width = 990
        Height = 42
        Align = alBottom
        Color = 16769217
        TabOrder = 1
        object Label4: TLabel
          Left = 21
          Top = 18
          Width = 53
          Height = 13
          Caption = 'Dt.Baixa:'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DateEdit5: TDateEdit
          Left = 77
          Top = 10
          Width = 100
          Height = 21
          DefaultToday = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 0
        end
        object btnConfBaixa: TNxButton
          Left = 220
          Top = 4
          Width = 180
          Height = 30
          Caption = 'Confirmar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Verdana'
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
          TabOrder = 1
          Transparent = True
          OnClick = btnConfBaixaClick
        end
      end
    end
    object TS_ConsBaixa: TRzTabSheet
      Caption = 'Consulta j'#225' Baixados'
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 0
        Width = 990
        Height = 431
        Align = alClient
        Ctl3D = False
        DataSource = DMBaixaPedidoProc.dsConsBaixa
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentCtl3D = False
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
        ExOptions = [eoCheckBoxSelect, eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 27
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 17
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'NOME_PROCESSO'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Processo'
            Title.Color = 16777151
            Width = 170
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTD'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Baixado'
            Title.Color = 16777151
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTBAIXA'
            Title.Alignment = taCenter
            Title.Caption = 'Data Baixa'
            Title.Color = 16777151
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'HRBAIXA'
            Title.Alignment = taCenter
            Title.Caption = 'Hora Baixa'
            Title.Color = 16777151
            Width = 40
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PEDIDO_CLIENTE'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Pedido Cliente'
            Title.Color = 16777151
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ITEM_PEDIDO'
            Title.Alignment = taCenter
            Title.Caption = 'Item Pedido'
            Title.Color = 16777151
            Width = 39
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FANTASIA'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Cliente'
            Title.Color = 16777151
            Width = 253
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'REFERENCIA'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Title.Color = 16777151
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_COR'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Cor'
            Title.Color = 16777151
            Width = 241
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTD_PEDIDO'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Pedido'
            Title.Color = 16777151
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTENTREGA'
            Title.Alignment = taCenter
            Title.Caption = 'Data Entrega'
            Title.Color = 16777151
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID_BAIXA'
            Title.Alignment = taCenter
            Title.Caption = 'ID Baixa'
            Title.Color = 16777151
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ITEM_BAIXA'
            Title.Alignment = taCenter
            Title.Caption = 'Item Baixa'
            Title.Color = 16777151
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID_PEDIDO'
            Title.Alignment = taCenter
            Title.Caption = 'ID Pedido'
            Title.Color = 16777151
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTEMISSAO'
            Title.Alignment = taCenter
            Title.Caption = 'Dt. Emiss'#227'o Pedido'
            Title.Color = 16777151
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID_PRODUTO'
            Title.Alignment = taCenter
            Title.Caption = 'ID Produto'
            Title.Color = 16777151
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 431
        Width = 990
        Height = 42
        Align = alBottom
        Color = 16769217
        TabOrder = 1
        object btnExcluir: TNxButton
          Left = 12
          Top = 4
          Width = 180
          Height = 30
          Caption = 'Excluir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFDF4A5A19F5955581F1C260000070000
            0C1B2021595C59A7A8A3FEFEF5FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC1BEB93E3B4C00000B00004100008D
            010AB20C16BB0710B40002A1000073000033000006414247C9C7BEFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F4EE827F7B00003300007903
            18BA0717C6040FBB0008B10203AE0202AC0406A50004AD0306A7000096000052
            040325858782F4F6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F1EB716F6B0000
            440014B5031CCB0011BB0003B50000BC0000BD0001BB0000BF0101BB0001BA00
            00B80102A702029F000079000023707376F3F4F1FFFFFFFFFFFFFFFFFFFCFBF7
            76757400004A0323D4011BD10007BB0000B90000BC0000BA0100BB0300BE0300
            C00100C10001BA0000BD0201BC0102AC0201A402009500002878797AFCFCFAFF
            FFFFFFFFFFB2ACA900013E0025CA021DD70008BF0000BB0000BF0000BF0000BE
            0100BF0200BF0200C10000C10001BD0000BE0000BD0101C00000B70200A30000
            80000024B3B3AFFFFFFFFFFFFC20213900169F022CE3010CCB0000C10000C500
            00C50000C50000C50000C70000C60000C50000C20102BF0100C40100C70000C7
            0001CA0002AF0202990000631E1F34FFFFFED8DACE0000340834F00420D80000
            C70000CE0000D20000D30000D40000D40000D50000D50000D40000D50000D000
            00D40000D60000D40100D30101C90002A103029C00000FDCDCD685858000028E
            0A36F60312D10000CC0000C90000B50000B10000B10000B10000B10000B10000
            B20000B50000B40000B50000B20000B50000C70000DA0100BA0107A00000488B
            8687403A3A002CDE032FE80006D80000C54947BA9694CF9797D19393CF9494CF
            9494CF9494CF9493CF9195D09594D19792D29696D28F94CF4948B80201CD0201
            C70006A10000873D393B0D0C121444FF0029E80000D53738CFDBDDEBFFFFFFFF
            FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFEFFFEFFFFFEFFFEFEFFFFFEFFFFFF
            DEDCEA3938D70000CF0005A30509B009061300020E0F4EFF002BEA0000D45B5A
            DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF
            FFFFFFFFFFFFFFFFFFFFFC5A5EE00000D70007A10711B5000015000209144EFF
            002FEB0005E20806D49496DFFFFFFFF3F1FAF3F2FCF3F2FCF3F2FCF3F2FCF3F2
            FCF2F2FCF2F2FCF2F3FBF3F3FBFFFFFF9D93DA0D06D40000D20007A90B14BE00
            001209070C0C3FFF0537FB071BEE0000E20000DB0000D90706DA0405D80403D8
            0403D80403D80403D80304D80302DE0504D80708D70000D70000DA0000EC0107
            CA000BAF000FB40D0A0D373533001EC90543FF042CF20001E70000EF0000EE00
            00EB0000EA0000EA0000EA0000EA0000EA0000E60000EB0000EA0000E50000E8
            0000F20001EB000DB70015AF0000933C3B3E84838000006B1045FF033AF4061C
            EE0000EC0000F10000F10000F10000F10000F10000F00000F10100F10000F300
            00F00200EF0200F20000F7000BD40014B00417BE000051888588DEDAD300000C
            0B30EB0342FF0434F50413F10000F00000F20000F40000F30000F30000F20000
            F50100F80000F50000F70100F90300F8000ADF0017BA0018BD070FBA000009DC
            DCD4FFFFFE211B270005820A3AFE0341FA0532F70317F20104F30000F60000F8
            0000FB0000F80100F90000F80000F70000FC0003F4000EE0001AC4001DBD0317
            C8000071211D2EFFFFFEFFFFFFB4B3A80000210215B2083FFF0444FB0235F502
            24F10413F50307F80001F80000F80100F90001F70004F6000CED0018D9001FCA
            0023C7041DCE0006A3000024B3B2ABFFFFFFFDFFFFFCFCFA7A767100002D0214
            C10D39FA0743FF003CF50234F1022AEE0324EB031CEF001AEC001EE40222E101
            26D70028D00427D1051CD60007B700002F767670FBFCF9FFFEFFF9FCFFFFFFFF
            F5F4EE73726C00002E0004A80822EE0A39FB013EF7003BF3053BE90135E20037
            DF0231DD002EDB002DDB0225DD0815D40001A200003571716AF3F3ECFFFFFFFE
            FDFDFDFBFFFEFDFCFFFFFFF7F7F284838100002D000072070BCF081DF40428F7
            0429F70529EE0528EE0525EB051DEE0618EA0208C7000073000031848383F7F7
            F1FFFFFFFFFCFFFEFEFBFFFBFAFBFDFEFAFFFDFFFFFFFFFFFDC4C2BA3E3F4D00
            00160000590000B90000FF0D10FF0C0CFF0000FF0000BA00005F000014403E49
            C2C2BBFFFFFEFEFFFFFAFDFDFEFDFDFFFFFCFBFFFBFFFFFEFFFBFFFBFDFCFCFF
            FFFFFFFFFFFFFDF9F9EAA8A59F5C5A5D1C1E250000100000111F1D22585B539F
            A29CF5F6EEFFFFFDFFFFFFFEFFFFFDFEFCFCFBFEFFFEFCFBFFFF}
          GlyphSpacing = 5
          ParentFont = False
          TabOrder = 0
          Transparent = True
          OnClick = btnExcluirClick
        end
      end
    end
  end
  object UCControls1: TUCControls
    GroupName = 'Baixa Pedido'
    UserControl = fMenu.UserControl1
    NotAllowed = naDisabled
    Left = 560
    Top = 296
  end
end
