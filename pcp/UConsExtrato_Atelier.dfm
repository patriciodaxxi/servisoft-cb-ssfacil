object frmConsExtrato_Atelier: TfrmConsExtrato_Atelier
  Left = 215
  Top = 91
  Width = 932
  Height = 573
  Caption = 'Controle Pagamento Atelier'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl2: TRzPageControl
    Left = 0
    Top = 98
    Width = 916
    Height = 437
    ActivePage = TS_Resumido
    ActivePageDefault = TS_Resumido
    Align = alClient
    BackgroundColor = 16752448
    BoldCurrentTab = True
    FlatColor = clGray
    ParentBackgroundColor = False
    TabColors.Shadow = clSilver
    TabIndex = 0
    TabOrder = 0
    OnChange = RzPageControl2Change
    FixedDimension = 19
    object TS_Resumido: TRzTabSheet
      Caption = 'Resumido'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 0
        Width = 912
        Height = 414
        Align = alClient
        Ctl3D = False
        DataSource = DMMov_Atelier.dsConsAtelier_Ret
        FixedColor = clWhite
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 15
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID_ATELIER'
            Title.Alignment = taCenter
            Title.Caption = 'ID Atelier'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_ATELIER'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Atelier'
            Width = 380
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_TOTAL'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. A Pagar'
            Width = 112
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_PAGAMENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. J'#225' Pago'
            Width = 107
            Visible = True
          end>
      end
    end
    object TS_Detalhado: TRzTabSheet
      Caption = 'Detalhado'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 912
        Height = 33
        Align = alTop
        Color = clSilver
        TabOrder = 0
        object Shape1: TShape
          Left = 528
          Top = 8
          Width = 30
          Height = 17
          Brush.Color = clMoneyGreen
        end
        object Label1: TLabel
          Left = 562
          Top = 10
          Width = 54
          Height = 13
          Caption = 'Tal'#227'o pago'
        end
        object btnSelecionar: TNxButton
          Left = 5
          Top = 3
          Width = 175
          Height = 30
          Hint = 'Selecionar os tal'#245'es para pagamento'
          Caption = 'Selecionar Todos'
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
          TabOrder = 0
          Transparent = True
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 33
        Width = 912
        Height = 381
        Align = alClient
        TabOrder = 1
        object SMDBGrid3: TSMDBGrid
          Left = 1
          Top = 1
          Width = 910
          Height = 258
          Align = alClient
          Ctl3D = False
          DataSource = DMMov_Atelier.dsConsulta_Talao_Aux
          FixedColor = clWhite
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
          ExOptions = [eoBooleanAsCheckBox, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
          FixedCols = 1
          OnGetCellParams = SMDBGrid3GetCellParams
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 13
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
          ColCount = 23
          RowCount = 2
          Columns = <
            item
              Expanded = False
              FieldName = 'NOME_ATELIER'
              Title.Alignment = taCenter
              Title.Caption = 'Nome Atelier'
              Width = 226
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'NUM_ORDEM'
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' Ordem Produ'#231#227'o'
              Width = 63
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'NUM_LOTE'
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' Lote'
              Width = 48
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ID_TALAO'
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' Tal'#227'o'
              Width = 52
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ITEM'
              Title.Alignment = taCenter
              Title.Caption = 'Item Tal'#227'o'
              Width = 33
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TALAO_COD_BARRA'
              Title.Alignment = taCenter
              Title.Caption = 'Tal'#227'o (C'#243'd.Barra)'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REFERENCIA'
              Title.Alignment = taCenter
              Title.Caption = 'Refer'#234'ncia'
              Width = 103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_COMBINACAO'
              Title.Alignment = taCenter
              Title.Caption = 'Nome Combina'#231#227'o'
              Width = 207
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'QTD_TALAO'
              Title.Alignment = taCenter
              Title.Caption = 'Qtd.'
              Width = 51
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_PAR'
              Title.Alignment = taCenter
              Title.Caption = 'Valor'
              Visible = True
            end
            item
              Color = 11599792
              Expanded = False
              FieldName = 'VLR_TOTAL'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. a Pagar'
              Title.Color = 11599792
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTPAGAMENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Data Pagto.'
              Width = 79
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DTRETORNO'
              Title.Alignment = taCenter
              Title.Caption = 'Data Retorno do Atelier'
              Width = 73
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DTSAIDA'
              Title.Alignment = taCenter
              Title.Caption = 'Data Sa'#237'da Para o Atelier'
              Width = 75
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'HRSAIDA'
              Title.Alignment = taCenter
              Title.Caption = 'Hora Sa'#237'da Para o Atelier'
              Width = 73
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'HRRETORNO'
              Title.Alignment = taCenter
              Title.Caption = 'Hora Retorno do Atelier'
              Width = 72
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_SETOR'
              Title.Alignment = taCenter
              Title.Caption = 'Nome Setor'
              Width = 185
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_PRODUTO'
              Title.Alignment = taCenter
              Title.Caption = 'Nome Produto'
              Width = 188
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ID_ATELIER'
              Title.Alignment = taCenter
              Title.Caption = 'ID Atelier'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ID_SETOR'
              Title.Alignment = taCenter
              Title.Caption = 'ID Setor'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ID_PRODUTO'
              Title.Alignment = taCenter
              Title.Caption = 'ID Produto'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ID_COMBINACAO'
              Title.Alignment = taCenter
              Title.Caption = 'ID Combina'#231#227'o'
              Visible = True
            end>
        end
        object gbxPagamentos: TRzGroupBox
          Left = 1
          Top = 259
          Width = 910
          Height = 121
          Align = alBottom
          BorderColor = clNavy
          BorderInner = fsButtonUp
          BorderOuter = fsBump
          Caption = ' Pagamentos '
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
          object SMDBGrid2: TSMDBGrid
            Left = 5
            Top = 18
            Width = 900
            Height = 98
            Align = alClient
            Ctl3D = False
            DataSource = DMMov_Atelier.dsConsMov_Pagto
            FixedColor = clWhite
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentCtl3D = False
            ReadOnly = True
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
            ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
            RegistryKey = 'Software\Scalabium'
            RegistrySection = 'SMDBGrid'
            WidthOfIndicator = 13
            DefaultRowHeight = 17
            ScrollBars = ssHorizontal
            ColCount = 7
            RowCount = 2
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DT_CADASTRO'
                Title.Alignment = taCenter
                Title.Caption = 'Dt. Pagamento'
                Width = 118
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DT_REFERENCIA'
                Title.Alignment = taCenter
                Title.Caption = 'Data Refer'#234'ncia'
                Width = 99
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'TIPO_REG'
                Title.Alignment = taCenter
                Title.Caption = 'Tipo Reg'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_MOV'
                Title.Alignment = taCenter
                Title.Caption = 'Valor'
                Width = 90
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'FILIAL'
                Title.Alignment = taCenter
                Title.Caption = 'Filial'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'ID'
                Title.Alignment = taCenter
                Title.Caption = 'ID Mov.'
                Width = 91
                Visible = True
              end>
          end
        end
      end
    end
    object TS_MovPagto: TRzTabSheet
      Caption = 'Movimento de Pagamentos'
      object SMDBGrid4: TSMDBGrid
        Left = 0
        Top = 32
        Width = 912
        Height = 382
        Align = alClient
        Ctl3D = False
        DataSource = DMMov_Atelier.dsConsMov_Pagto
        FixedColor = clWhite
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 13
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 9
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID_ATELIER'
            Title.Alignment = taCenter
            Title.Caption = 'ID Atelier'
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_ATELIER'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Atelier'
            Width = 314
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DT_CADASTRO'
            Title.Alignment = taCenter
            Title.Caption = 'Dt. Pagamento'
            Width = 115
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DT_REFERENCIA'
            Title.Alignment = taCenter
            Title.Caption = 'Data Refer'#234'ncia'
            Width = 99
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TIPO_REG'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Reg'
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_MOV'
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FILIAL'
            Title.Alignment = taCenter
            Title.Caption = 'Filial'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Title.Caption = 'ID Mov.'
            Width = 91
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 912
        Height = 32
        Align = alTop
        Color = clSilver
        TabOrder = 1
        object NxButton1: TNxButton
          Left = 4
          Top = 2
          Width = 153
          Height = 30
          Caption = 'Excluir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
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
          OnClick = NxButton1Click
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 916
    Height = 98
    Align = alTop
    Color = clSilver
    TabOrder = 1
    object NxLabel2: TNxLabel
      Left = 230
      Top = 53
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object NxLabel15: TNxLabel
      Left = 78
      Top = 33
      Width = 32
      Height = 13
      Alignment = taRightJustify
      Caption = 'Atelier:'
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object NxLabel17: TNxLabel
      Left = 9
      Top = 53
      Width = 102
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Retorno do Atelier:'
      Transparent = False
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object NxLabel3: TNxLabel
      Left = 87
      Top = 13
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'Filial:'
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object DateEdit1: TDateEdit
      Left = 112
      Top = 45
      Width = 100
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 2
    end
    object DateEdit2: TDateEdit
      Left = 257
      Top = 45
      Width = 100
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 3
    end
    object btnConsAtelier_Ret: TNxButton
      Left = 111
      Top = 66
      Width = 175
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
      OnClick = btnConsAtelier_RetClick
    end
    object RxDBLookupCombo5: TRxDBLookupCombo
      Left = 112
      Top = 25
      Width = 302
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = DMMov_Atelier.dsAtelier
      ParentCtl3D = False
      TabOrder = 1
    end
    object NxButton2: TNxButton
      Left = 287
      Top = 66
      Width = 153
      Height = 30
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        AE060000424DAE06000000000000360000002800000017000000170000000100
        1800000000007806000000000000000000000000000000000000FCFFFFFFFEFE
        FCFFFCF9FEFEF9FCFDFFFCFFF3FAFBF3FAFAF3FAFAF2FAFAF3FAFAF4F9FAF4F9
        FAF2FAFAF2FAFAF4F9FAF5FAFAFDFBFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FEFFFEFEFEFEFBFFFDFCFDFEFFFFFFD5EAF0489FC55DB4D15EB4D157B3D2
        5BB3D05BB4D458B2D359B3D25AB3D45DB1D352A8C3AFDDEAFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FEFFFDFEFDFEFCFFFCFFFDFEFFFFFFB5E2EA4AB8D0A1
        FAFC9EF1F597F1F69DF1F59AF1F699F1F69EF1F598F1F4A0F6FB58C7D98DCFE8
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FAFFFEFEFDFEFCFFFDFFFEFEFFFF
        FEB8E1EC53C0D899E8E97EBCC083BECA8CBEC189BCC582BCC785BEC282BAB899
        E0E667D1E08CCEE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FCFEFEFFFDFE
        FFFFFFFFFFFFFFFFFFC1E6F147BFDA84E1E860ADB05FAFB862B1B45AB1B559B1
        B659B1B54EA8AE70D9E25ED0E28FCFE9FFFFFFFFFFFFFFFFFFFFFFFFFDFFFF00
        0000FAFEFEFFFFFFDCDAD9D5D2D2E0D9D6AABFCD41C3DD8AF5FD8BDEE591E4EA
        92DFEA8FE0E78CE1E697DFEA8FDDEA8AF3FB4FD4E48FC6D5E1D8D5D5D3D2DBD9
        D9FDFDFDFDFFFF000000FFFFFFB5B1B371635E806E6B503A2F0E3B4C69E7FF6E
        E2F660C9D361CCD95FC7D65FC8D661C8D761CBD55DC7CD6BDFF069EEFF114764
        45322C776C666E6460AEAAA9FFFFFF000000FDFDFC827A78CFBFB9E9DDD66F5B
        52324448396F7A4373754974744574734674754B73764B727545757544747549
        6F75426D793646505F5049DDCDCAD1C1BE827B78FCFCFB000000FCFCFB87817D
        CCC0BADEDCD4D2C2BCAD9A9CAB9697AF9895AF9794AC9794A79994AC9693AD99
        8FAD9893A79897A89A92AC9B90AE9E98C1B7B2E8DBD9CFC0BD897F7CFBFBFA00
        0000FCFCFB8B807ED3C7C3E6E6E2EAE4E4F2ECECF6EEEBF3EEEEF7EEEEF7EEEF
        F0EFEEF5EFF0F4EFEEF7EEF0F5EDF2EFF1EFF1EFEEF2ECEEEBE6EAEAE4E3D3C8
        C4887F7DFCFBFB000000FCFCFC89817FDBCECEF7F2F2F7F0F4EBEAE7E4E3DEDF
        E3E1E4E1E2E3E0DFDDE1DFE2E0DFE1E0E0E1E0DEE5E0DDE4DDDCE0DDDDECE8E7
        F2F2F3F5F3F1DAD2D188827DFBFCFB000000FCFDFC8B8282DFD3D4FFFDFFE8EC
        EB7D797665605E68626165605F635E5D635D5B625C5C605A595F59595C58575B
        5655585453676362E9E8EAFFFDFDE1D4D189837EFAFCFC000000FCFDFD8B8482
        DED6D5FFFFFFC2C4C3514B4A322F2D3735353835353735353734343735353633
        333836353835343836353431304C4746AFB0B0FFFFFFE4D4DB8C8485FCFCFC00
        0000FCFCFD8F8986DCD5D1FFFFFFC6C5C4554F4D2F2E2D383838383838373838
        37383838373837393737383737393738373733302F4C4747B7B1B2FFFFFFDED6
        D0898884FCFBFD000000FBFCFC928C89D4CAC5DAD4D0BDBAB8605C5A2C2D2D25
        28282B2E2E313434333737343737363838363737353838363838343131514C4C
        ADA1AE7F70C2CEC2CA938B8BFAFBFC000000FFFFFF999490B7A9A2BEAFADAAA0
        A084807FA6A6A58182825C5C5C46474739383835363635333332323231333332
        32322F2D2D534C4FA1A19760AB80BAB8AA9A9290FCFFFF000000FFFFFFC6C1BE
        94817DC4AFACA39A98868784C9CACAB9BABBBABBBCB4B5B5A9AAAB9D9E9F9093
        938A87888482827A7B7C7F7F7E6D6669918D8195A67B847F79C1BEBFFFFFFF00
        0000FFFFFEFEFFFFB2A9A99F9494989895796C6EA69694A49593A1918EA0908C
        9B8D899A8C899889879987849686809882808C7C7C6359588E8B8BA4999EAEA9
        ACFFFFFFFFFFFF000000FEFCFEFCFEFFFFFFFFFFFFFFFFFFFF98AFC059919F6A
        9FA5689CA2689CA165989D679BA065989D5E999A56999D5E959F498295A2ABB4
        FFFFFFFFFFFFFFFFFFFEFFFFFFFFFF000000FDFDFDFCFDFEFEFEFCFAFDFDFFFF
        FF90D3EC50CEE37FF9FF7DF4FF7EF5FF7DF4FF7DF5FF7CF5FF7FF8FC7FF6FF89
        FAFF3DBBD5C8EAF1FFFFFFFDFDFDFEFFFFFDFEFEFFFFFF000000FBFEFEFAFDFE
        FDFFFCFCFDFEFFFFFF88C9E457CCDF8DFAFE89F4FC89F5FB89F6FB8AF6FC86F4
        FC8DF5FC8DF5FC91FBFF39B8D0B5E1EBFFFFFFFCFFFFFCFFFFFFFEFEFFFFFF00
        0000FDFEFFFFFDFFFEFFFDFFFDFEFFFFFFA7DBE44AA8C558B6D059B5CE5AB5CD
        59B5CD5AB5CF55B5CF5DB4D059B1D356B5D246A5C3D4ECF0FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FEFDFFFDFDFFF7FFFFFCFEFBFFFDFEF8FEFEF1F9FAEF
        F8F9F0F8F9F0F8FAF0F8FAF0F8F9F0F8F9F0F8FAEEF8FAF0F7FAF3FAFAFCFDFF
        FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF000000}
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 5
      Transparent = True
      OnClick = NxButton2Click
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 112
      Top = 5
      Width = 302
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      LookupField = 'ID'
      LookupDisplay = 'NOME_INTERNO'
      LookupSource = DMMov_Atelier.dsFilial
      ParentCtl3D = False
      TabOrder = 0
    end
    object btnPagamento: TNxButton
      Left = 439
      Top = 66
      Width = 153
      Height = 30
      Caption = 'Pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        66090000424D660900000000000036000000280000001C0000001C0000000100
        1800000000003009000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF949792FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        073A00000000E9EAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5BC88174E003C463CF2F1F3
        BAC0B595A194768474687665818B84ACAEAEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF567F2A143D04566C4A4F6A3249683A365C24134200
        0733000A280043543CC0C1C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A
        610E1F590030551DC7D1B8FFFFFFE6EEDFA3BA872F62003166001B47001C2E10
        C6C8C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFCACEBE183D1C69893E8AAA6612380097989DFF
        FFFFFFFFFFFFFFFF7B98572A6100336B00204D00293D1AE5E6E4FFFFFFFFFFFF
        FFFFFFFFFFFFD0D6C5E1E7D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFD3
        C2214A15003100FFFFFFE0E8D7235600233F16CDCFCEFFFFFFFFFFFFF7F8F52F
        5E002E6200386D00002300A2A6A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8AA26E
        D8DECEFFFFFFFFFFFFFFFFFFFFFFFFDBE0D6335B23043C009DAA8FFFFFFFFFFF
        FFA9C08E012B00757C74FFFFFFFFFFFFFFFFFF48741F2B6000346901255A0036
        4A25FFFFFFFFFFFFC1CEB026530214470054792CE6EBE1FFFFFFFFFFFFFFFFFF
        FFFFFF728F5F1D5200012F00E1E6E0FFFFFFFFFFFFE3E9DE5F8734001900BFC2
        BFFFFFFFF6F9F31F5400306500356701306500143000FFFFFFFFFFFFC1CBB2B8
        C8A4DCE6D2D2DBC9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0C29A407209001F00
        FFFFFFFFFFFFFFFFFFFFFFFFB5C99E1E4C00374834FFFFFFA1B68C164E003366
        003565012E6400173A00FFFFFFFFFFFFFFFFFFDDE0D7F3F3EFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF8FAF87C9D54001A00FFFFFFFFFFFFFFFFFFFFFFFF
        F5F7F374994B001F00A8ABA52955062F6400336500346600275C003F6024FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFD5E2C4073400D7DAD8FFFFFFFFFFFFFFFFFFFFFFFFC7D4B93E6E11274C04
        265B0035670033650036690012450091A483FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F4E8E9E4FFFFFFFFFFFF5D7F3C879976FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF85A4662B6000366500326400336600326600
        174700D2D9CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF718F50819D61A7B694FFFFFFE7EFE3F0F3E3FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF637B412A6100346401366600376701164C00769467FFFFFFFFFFFFFFFFFF
        FFFFFFD0D9C67B945FADBE9BFFFFFFFFFFFFFFFFFFA7B49888A369839E5FF7F8
        F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF91A67F2157002F640034660034
        660029600033600ECFD6C7FFFFFFFFFFFFFFFFFFFFFFFFDEE4D497AC7C486F1A
        D6DDCBFFFFFFFFFFFFFFFFFFA4B78F638440BDCAADFAFBF8FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF4B7236265A003565013266003265002358009BAE8DFFFFFFFF
        FFFFFFFFFFFFFFFFA0AD96E4E5E6D9E4CF678A468A9C71FFFFFFFFFFFFFFFFFF
        E9ECE5C5CFB6EDF2E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0B48E275A003164
        003365003366002A5F003B6020CCD1C8FFFFFFFFFFFFFFFFFFFFFFFF5F7C4757
        6654FFFFFFAFC19C8A9D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFBFDF874945C2056003467003264003466002D62001B41
        00828985FFFFFFFFFFFFFFFFFFFFFFFFA7BE9A143502C2C2C1FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEE4D6
        527B2D295F00336500336500295C017F9D5A4A73271F390ACCCDC9FFFFFFFFFF
        FFFFFFFFC6D5B6063700566353F2F1F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFBBC6AD81946AFFFFFFFFFFFFD2DDC742711A2C6000336602306500
        285103FFFFFFADC494053200657363FFFFFFFFFFFFFFFFFFBCCDAE1953000E33
        00AFB4A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEC59591
        A57BFFFFFFD6DFCD4C77222D5E00346801164D00909E84FFFFFFE3EBDE608935
        001100DCDDE0FFFFFFFFFFFF8EA9750946005A8144EEF3EAFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF6C87490637000D3A00F1F9ECFFFFFFF0F4EE7494522A
        5D00356A00023600D0CCCBFFFFFFFFFFFFBDCCAB2856001C3010FFFFFFFFFFFF
        15470039671AD2D9C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1BF
        97D1DCC0FFFFFFFFFFFFFFFFFFFFFFFFB5C4A13364032F6500194A00737672FF
        FFFFFFFFFFF9FCF983A65C001800BCBCBC6C8659215609BFCDABFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E5D7BCC5AEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF83A0602F60002F6800031D00CBCBCBFFFFFFFFFFFFCCD9BB3D
        6E0D073200325C20D2DCC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF89A4
        6C36680820510013300067796A7687786881514D7921275E004D5B46FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBD6BE92AE736D8D4E516F
        3E617E5199AB8BDCE5D24D771C002200B4B4B0FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3C6
        9C0E430092A280FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF}
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 6
      Transparent = True
      OnClick = btnPagamentoClick
    end
    object ckImpDetalhado: TCheckBox
      Left = 672
      Top = 80
      Width = 121
      Height = 17
      Caption = 'Imprimir detalhado'
      TabOrder = 7
    end
  end
end
