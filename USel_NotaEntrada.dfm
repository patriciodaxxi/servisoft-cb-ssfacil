object frmSel_NotaEntrada: TfrmSel_NotaEntrada
  Left = 70
  Top = 68
  Width = 1210
  Height = 630
  BorderIcons = [biSystemMenu]
  Caption = 'Notas de beneficiamento'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1202
    Height = 57
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 0
    object Label2: TLabel
      Left = 451
      Top = 39
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = 'Notas de:'
    end
    object Label3: TLabel
      Left = 5
      Top = 39
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = 'Produto:'
    end
    object Label4: TLabel
      Left = 14
      Top = 17
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'CFOP:'
    end
    object Label11: TLabel
      Left = 156
      Top = 17
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Nota:'
    end
    object ComboBox1: TComboBox
      Left = 500
      Top = 31
      Width = 213
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 3
      Text = 'Beneficiamento/Terceiros'
      Items.Strings = (
        'Beneficiamento/Terceiros'
        'Beneficiamento'
        'Terceiros'
        'Todas')
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 47
      Top = 31
      Width = 400
      Height = 21
      DropDownCount = 8
      DropDownWidth = 500
      LookupField = 'ID'
      LookupDisplay = 'NOME;REFERENCIA'
      LookupSource = DMCadNotaFiscal.dsProduto
      TabOrder = 2
      OnKeyDown = RxDBLookupCombo2KeyDown
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 47
      Top = 9
      Width = 83
      Height = 21
      DropDownCount = 8
      DropDownWidth = 500
      LookupField = 'ID'
      LookupDisplay = 'CODCFOP;NOME;NOME_INTERNO'
      LookupSource = DMCadNotaFiscal.dsCFOP
      TabOrder = 0
    end
    object ckAgrupar: TCheckBox
      Left = 1032
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Agrupar'
      TabOrder = 4
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 200
      Top = 9
      Width = 89
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 1
      OnKeyDown = CurrencyEdit1KeyDown
    end
    object BitBtn1: TBitBtn
      Left = 718
      Top = 26
      Width = 147
      Height = 29
      Caption = 'Efetuar Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn1Click
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
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 558
    Width = 1202
    Height = 41
    Align = alBottom
    Color = 8404992
    TabOrder = 1
    object Shape1: TShape
      Left = 792
      Top = 2
      Width = 39
      Height = 18
      Brush.Color = clRed
    end
    object Label1: TLabel
      Left = 834
      Top = 5
      Width = 122
      Height = 13
      Caption = 'Item j'#225' est'#225' na Nota Atual'
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object BitBtn2: TBitBtn
      Left = 8
      Top = 8
      Width = 194
      Height = 30
      Caption = 'Copiar Notas Selecionadas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn2Click
      Glyph.Data = {
        AE060000424DAE06000000000000360000002800000017000000170000000100
        18000000000078060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
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
    end
  end
  object gbxConsumo: TRzGroupBox
    Left = 0
    Top = 57
    Width = 1202
    Height = 137
    Align = alTop
    BorderInner = fsGroove
    BorderOuter = fsGroove
    Caption = ' Materiais da Produto '
    Color = 8454143
    Ctl3D = True
    FlatColor = clBlue
    GradientColorStyle = gcsCustom
    GradientDirection = gdDiagonalUp
    ParentCtl3D = False
    TabOrder = 2
    VisualStyle = vsGradient
    object SMDBGrid2: TSMDBGrid
      Left = 5
      Top = 18
      Width = 1192
      Height = 114
      Align = alClient
      Ctl3D = False
      DataSource = DMCadNotaFiscal.dsmMaterialConsumo
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
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
      ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
      OnGetCellParams = SMDBGrid2GetCellParams
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 8
      RowCount = 2
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QtdProduto'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd. Produto Final'
          Width = 93
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'QtdConsumo'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd. da Materia Prima'
          Title.Color = clYellow
          Width = 124
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QtdJaInformada'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd. J'#225' Informada na Nota'
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QtdAutomatica'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd. Autom'#225'tica'
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QtdAutomatica2'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd. Autom'#225'tica (CFOP 2)'
          Width = 113
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_Material'
          Title.Alignment = taCenter
          Title.Caption = 'ID Material'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeMaterial'
          Width = 500
          Visible = True
        end>
    end
  end
  object RzGroupBox2: TRzGroupBox
    Left = 0
    Top = 215
    Width = 1202
    Height = 343
    Align = alClient
    Caption = ' Notas Pendentes do Cliente '
    Color = 8454016
    FlatColor = 65408
    TabOrder = 3
    object SMDBGrid1: TSMDBGrid
      Left = 1
      Top = 14
      Width = 1200
      Height = 328
      Align = alClient
      Ctl3D = False
      DataSource = DMCadNotaFiscal.dsNotaEntrada
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentCtl3D = False
      PopupMenu = PopupMenu1
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
      OnGetCellParams = SMDBGrid1GetCellParams
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 25
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 23
      RowCount = 2
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SERIE'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'S'#233'rie'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NUMNOTA'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Nota'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ITEM'
          Title.Alignment = taCenter
          Title.Caption = 'Item'
          Width = 33
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 16760445
          Expanded = False
          FieldName = 'CODCFOP'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'CFOP'
          Title.Color = 16759413
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUM_LOTE_CONTROLE'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Lote Controle'
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_PRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'ID Produto'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_PRODUTO'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Nome Produto'
          Width = 316
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTD_NOTAATUAL'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd. Informada Na Nota Atual'
          Width = 70
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTD'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Qtd. Nota'
          Width = 62
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTDRESTANTE'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Qtd. Pendente'
          Title.Color = clMoneyGreen
          Width = 79
          Visible = True
        end
        item
          Color = clYellow
          Expanded = False
          FieldName = 'QTD_ADEVOLVER'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd. Informada para devolu'#231#227'o'
          Title.Color = clYellow
          Width = 78
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTDDEVOLVIDA'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Qtd. Devolvida'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_COR'
          Title.Alignment = taCenter
          Title.Caption = 'Cor'
          Width = 152
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_UNITARIO'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Unit'#225'rio'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DTEMISSAO'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Data Emiss'#227'o'
          Width = 64
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DTSAIDAENTRADA'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Data Entrada'
          Width = 64
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'UNIDADE'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Unidade'
          Width = 51
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PERC_ICMS'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = '% ICMS'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PERC_IPI'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = '% IPI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMECLIENTE'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Nome Cliente'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REFERENCIA'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Width = 115
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_CLIENTETRIANG'
          Title.Alignment = taCenter
          Title.Caption = 'Cliente Triangular'
          Width = 64
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 194
    Width = 1202
    Height = 21
    Align = alTop
    Color = clSilver
    TabOrder = 4
    object Label5: TLabel
      Left = 40
      Top = 3
      Width = 182
      Height = 13
      Caption = 'Total Materia Prima Necess'#225'ria:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label6: TLabel
      Left = 227
      Top = 3
      Width = 26
      Height = 13
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label7: TLabel
      Left = 408
      Top = 4
      Width = 108
      Height = 13
      Caption = 'Total Selecionada:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label8: TLabel
      Left = 523
      Top = 4
      Width = 26
      Height = 13
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label9: TLabel
      Left = 755
      Top = 3
      Width = 60
      Height = 13
      Caption = 'Diferen'#231'a:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label10: TLabel
      Left = 819
      Top = 3
      Width = 26
      Height = 13
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 560
    Top = 343
    object Copiarqtdependentepdevoluo1: TMenuItem
      Caption = 'Copiar qtde pendente p/devolu'#231#227'o'
      OnClick = Copiarqtdependentepdevoluo1Click
    end
  end
end
