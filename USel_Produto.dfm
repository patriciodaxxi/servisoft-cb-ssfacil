object frmSel_Produto: TfrmSel_Produto
  Left = 107
  Top = 79
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmSel_Produto'
  ClientHeight = 540
  ClientWidth = 1053
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
  OnKeyDown = Fdmcad
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1053
    Height = 72
    Align = alTop
    Color = 16768959
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 0
    object Label1: TLabel
      Left = 248
      Top = 12
      Width = 71
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome Produto:'
    end
    object Label2: TLabel
      Left = 65
      Top = 12
      Width = 24
      Height = 13
      Caption = 'Tipo:'
    end
    object Label3: TLabel
      Left = 288
      Top = 33
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'Placa:'
    end
    object Label4: TLabel
      Left = 36
      Top = 34
      Width = 53
      Height = 13
      Caption = 'C'#243'd. Barra:'
    end
    object Label5: TLabel
      Left = 456
      Top = 34
      Width = 35
      Height = 13
      Caption = 'Cliente:'
      Visible = False
    end
    object Label6: TLabel
      Left = 468
      Top = 56
      Width = 23
      Height = 13
      Caption = 'Filial:'
      Visible = False
    end
    object Edit1: TEdit
      Left = 320
      Top = 4
      Width = 393
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyDown = Edit1KeyDown
    end
    object BitBtn1: TBitBtn
      Left = 714
      Top = 1
      Width = 75
      Height = 25
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn1Click
    end
    object ComboBox1: TComboBox
      Left = 92
      Top = 4
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      TabStop = False
      OnKeyDown = ComboBox1KeyDown
      Items.Strings = (
        'Produto'
        'Material'
        'Material Consumo'
        'Semi Acabado'
        'Ambos')
    end
    object Edit2: TEdit
      Left = 320
      Top = 26
      Width = 129
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
      OnKeyDown = Edit1KeyDown
    end
    object Edit3: TEdit
      Left = 92
      Top = 26
      Width = 144
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyDown = Edit3KeyDown
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 493
      Top = 26
      Width = 345
      Height = 21
      DropDownCount = 8
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = dsCliente
      TabOrder = 4
      Visible = False
      OnKeyDown = RxDBLookupCombo1KeyDown
    end
    object BitBtn2: TBitBtn
      Left = 840
      Top = 22
      Width = 35
      Height = 28
      TabOrder = 6
      Visible = False
      OnClick = BitBtn2Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
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
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 493
      Top = 48
      Width = 345
      Height = 21
      DropDownCount = 8
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = dsCliente
      TabOrder = 7
      Visible = False
      OnKeyDown = RxDBLookupCombo1KeyDown
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 72
    Width = 1053
    Height = 217
    Align = alClient
    Ctl3D = False
    DataSource = dsProduto
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
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
    ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 14
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'PLACA'
        Title.Alignment = taCenter
        Title.Caption = 'Placa'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 350
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFERENCIA'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Width = 108
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'UNIDADE'
        Title.Alignment = taCenter
        Title.Caption = 'Unid.'
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_BARRA'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Barra'
        Width = 115
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_VENDA'
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o Venda'
        Title.Color = clAqua
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_PROMOCAO'
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o Promocional'
        Title.Color = clYellow
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_VENDA1'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr.Venda 1'
        Title.Color = 12910532
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_VENDA2'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr.Venda 2'
        Title.Color = 10485663
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_VENDA3'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr.Venda 3'
        Title.Color = 8454016
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Estoque'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDGERAL'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Geral (Nas Empresas)'
        Width = 109
        Visible = True
      end>
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 523
    Width = 1053
    Height = 17
    Align = alBottom
    BorderStyle = sbsSingle
    Caption = 
      'Duplo Clique  ou   Enter para selecionar o produto       ESC= Fe' +
      'char tela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object gbxPedido: TRzGroupBox
    Left = 0
    Top = 384
    Width = 1053
    Height = 139
    Align = alBottom
    BorderColor = clNavy
    BorderInner = fsButtonUp
    BorderOuter = fsBump
    Caption = ' Pedido '
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
    TabOrder = 3
    VisualStyle = vsGradient
    object SMDBGrid2: TSMDBGrid
      Left = 5
      Top = 18
      Width = 883
      Height = 116
      Align = alClient
      Ctl3D = False
      DataSource = DMSel_Produto.dsmCarrinho
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
      DefaultRowHeight = 16
      ScrollBars = ssHorizontal
      ColCount = 8
      RowCount = 2
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_Produto'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Cod.'
          Title.Color = 8454143
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Referencia'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Title.Color = 8454143
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome_Produto'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Nome Produto'
          Title.Color = 8454143
          Width = 344
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Unidade'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Unid.'
          Title.Color = 8454143
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qtd'
          Title.Alignment = taCenter
          Title.Color = 8454143
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vlr_Unitario'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Unit.'
          Title.Color = 8454143
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vlr_Total'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Total'
          Title.Color = 8454143
          Width = 93
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 888
      Top = 18
      Width = 160
      Height = 116
      Align = alRight
      TabOrder = 1
      object btnConfirmar: TNxButton
        Left = 6
        Top = 43
        Width = 147
        Height = 30
        Caption = 'Grava Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
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
        OnClick = btnConfirmarClick
      end
      object btnExcluir: TNxButton
        Left = 6
        Top = 75
        Width = 147
        Height = 30
        Caption = 'Excluir Item'
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
        TabOrder = 1
        Transparent = True
        OnClick = btnExcluirClick
      end
    end
  end
  object NxPanel1: TNxPanel
    Left = 0
    Top = 289
    Width = 1053
    Height = 16
    Align = alBottom
    UseDockManager = False
    ParentBackground = False
    TabOrder = 4
  end
  object DBMemo1: TDBMemo
    Left = 0
    Top = 305
    Width = 1053
    Height = 79
    Align = alBottom
    DataField = 'OBS'
    DataSource = dsProduto
    TabOrder = 5
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PRO.ID, PRO.NOME, PRO.REFERENCIA, PRO.PRECO_VENDA, PRO.UN' +
      'IDADE, PRO.PRECO_CUSTO, PV.PLACA, '#13#10' PRO.COD_BARRA, VT.VLR_VENDA' +
      '1, VT.VLR_VENDA2, VT.VLR_VENDA3, PRO.USA_COR, PRO.OBS, PRO.USA_P' +
      'RECO_COR, '#13#10'(SELECT SUM(EST.QTD) QTD '#13#10'  FROM ESTOQUE_ATUAL EST ' +
      #13#10'  WHERE EST.FILIAL = :FILIAL AND EST.ID_PRODUTO = PRO.ID) QTD,' +
      #13#10'(SELECT SUM(E2.QTD) QTDGERAL '#13#10'  FROM ESTOQUE_ATUAL E2 '#13#10'  WHE' +
      'RE E2.ID_PRODUTO = PRO.ID) QTDGERAL,'#13#10'  CAST(0 AS FLOAT) AS PREC' +
      'O_PROMOCAO, PRO.OBS'#13#10'FROM PRODUTO PRO'#13#10'LEFT JOIN PRODUTO_VEICULO' +
      ' PV ON (PRO.ID = PV.ID)'#13#10'LEFT JOIN VTAB_PRECO VT ON PRO.ID = VT.' +
      'ID_PRODUTO'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'FILIAL'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 224
    Top = 208
    object sdsProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsProdutoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object sdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsProdutoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object sdsProdutoPLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object sdsProdutoCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object sdsProdutoVLR_VENDA1: TFloatField
      FieldName = 'VLR_VENDA1'
    end
    object sdsProdutoVLR_VENDA2: TFloatField
      FieldName = 'VLR_VENDA2'
    end
    object sdsProdutoVLR_VENDA3: TFloatField
      FieldName = 'VLR_VENDA3'
    end
    object sdsProdutoUSA_COR: TStringField
      FieldName = 'USA_COR'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsProdutoUSA_PRECO_COR: TStringField
      FieldName = 'USA_PRECO_COR'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 6
    end
    object sdsProdutoQTDGERAL: TFMTBCDField
      FieldName = 'QTDGERAL'
      Precision = 15
      Size = 6
    end
    object sdsProdutoPRECO_PROMOCAO: TFloatField
      FieldName = 'PRECO_PROMOCAO'
      Required = True
    end
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME;ID'
    Params = <>
    ProviderName = 'dspProduto'
    Left = 288
    Top = 208
    object cdsProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsProdutoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
      DisplayFormat = '0.000'
    end
    object cdsProdutoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
      DisplayFormat = '0.000'
    end
    object cdsProdutoQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 6
    end
    object cdsProdutoQTDGERAL: TFMTBCDField
      FieldName = 'QTDGERAL'
      Precision = 15
      Size = 6
    end
    object cdsProdutoPLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object cdsProdutoCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object cdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsProdutoUSA_COR: TStringField
      FieldName = 'USA_COR'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoUSA_PRECO_COR: TStringField
      FieldName = 'USA_PRECO_COR'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPRECO_PROMOCAO: TFloatField
      FieldName = 'PRECO_PROMOCAO'
      Required = True
    end
    object cdsProdutoVLR_VENDA1: TFloatField
      FieldName = 'VLR_VENDA1'
    end
    object cdsProdutoVLR_VENDA2: TFloatField
      FieldName = 'VLR_VENDA2'
    end
    object cdsProdutoVLR_VENDA3: TFloatField
      FieldName = 'VLR_VENDA3'
    end
    object cdsProdutoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 256
    Top = 208
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 320
    Top = 208
  end
  object qFilial: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT COUNT(1) FILIAL'
      'FROM FILIAL')
    SQLConnection = dmDatabase.scoDados
    Left = 480
    Top = 168
    object qFilialFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT P.EMPRESA_VEICULO, P.USA_COD_BARRAS, P.USA_PRODUTO_CLIENT' +
        'E,'
      
        '(SELECT PP.USA_PRODUTO_FILIAL FROM PARAMETROS_PROD PP WHERE PP.I' +
        'D = 1),'
      
        '(SELECT CP.USA_TABELA_PRECO FROM CUPOMFISCAL_PARAMETROS CP WHERE' +
        ' ID = 1)'
      'FROM PARAMETROS P')
    SQLConnection = dmDatabase.scoDados
    Left = 480
    Top = 200
    object qParametrosEMPRESA_VEICULO: TStringField
      FieldName = 'EMPRESA_VEICULO'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_COD_BARRAS: TStringField
      FieldName = 'USA_COD_BARRAS'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_PRODUTO_CLIENTE: TStringField
      FieldName = 'USA_PRODUTO_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_PRODUTO_FILIAL: TStringField
      FieldName = 'USA_PRODUTO_FILIAL'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_TABELA_PRECO: TStringField
      FieldName = 'USA_TABELA_PRECO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME'#13#10'FROM PESSOA CLI'#13#10'WHERE TP_CLIENTE = '#39'S'#39#13#10'AN' +
      'D INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 224
    Top = 240
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 256
    Top = 240
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCliente'
    Left = 288
    Top = 240
    object cdsClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 320
    Top = 240
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME, NOME_INTERNO'#13#10'FROM FILIAL'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 224
    Top = 272
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 256
    Top = 272
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFilial'
    Left = 288
    Top = 272
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 320
    Top = 272
  end
  object qParametros_Fin: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT USA_TABPRECO_PROM, ID_TABPRECO1, ID_TABPRECO2, ID_TABPREC' +
        'O3'
      'FROM PARAMETROS_FIN')
    SQLConnection = dmDatabase.scoDados
    Left = 480
    Top = 232
    object qParametros_FinUSA_TABPRECO_PROM: TStringField
      FieldName = 'USA_TABPRECO_PROM'
      FixedChar = True
      Size = 1
    end
    object qParametros_FinID_TABPRECO1: TIntegerField
      FieldName = 'ID_TABPRECO1'
    end
    object qParametros_FinID_TABPRECO2: TIntegerField
      FieldName = 'ID_TABPRECO2'
    end
    object qParametros_FinID_TABPRECO3: TIntegerField
      FieldName = 'ID_TABPRECO3'
    end
  end
  object qPromocao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DTINICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTFINAL'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT COUNT(1) CONTADOR FROM TAB_PRECO T'
      '  WHERE T.tabpromocional = '#39'S'#39
      '    AND T.dtinicial >= :DTINICIAL'
      '    AND T.DTFINAL >= :DTFINAL')
    SQLConnection = dmDatabase.scoDados
    Left = 480
    Top = 264
    object qPromocaoCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      Required = True
    end
  end
  object qParametros_Geral: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT EMPRESA_VAREJO'
      'FROM PARAMETROS_GERAL')
    SQLConnection = dmDatabase.scoDados
    Left = 480
    Top = 296
    object qParametros_GeralEMPRESA_VAREJO: TStringField
      FieldName = 'EMPRESA_VAREJO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsProdAux: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PRO.ID, PRO.NOME, PRO.REFERENCIA, PRO.PRECO_VENDA, PRO.UN' +
      'IDADE,PRO.OBS,'#13#10'PRO.PRECO_CUSTO, PV.PLACA, PRO.COD_BARRA,'#13#10'cast(' +
      '0 as Float) AS VLR_VENDA1, cast(0 as Float) AS VLR_VENDA2, cast(' +
      '0 as Float) AS VLR_VENDA3,'#13#10'PRO.USA_COR, PRO.USA_PRECO_COR, (SEL' +
      'ECT SUM(EST.QTD) QTD FROM ESTOQUE_ATUAL EST'#13#10'                  W' +
      'HERE EST.FILIAL = :FILIAL AND'#13#10'                    EST.ID_PRODUT' +
      'O = PRO.ID) QTD,'#13#10'(SELECT SUM(E2.QTD) QTDGERAL FROM ESTOQUE_ATUA' +
      'L E2'#13#10'                    WHERE E2.ID_PRODUTO = PRO.ID) QTDGERAL' +
      ','#13#10'                   /**/ cast(0 as Float) AS PRECO_PROMOCAO'#13#10'F' +
      'ROM PRODUTO PRO'#13#10'LEFT JOIN PRODUTO_VEICULO PV'#13#10'ON PRO.ID = PV.ID' +
      #13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'FILIAL'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 512
    Top = 264
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object StringField2: TStringField
      FieldName = 'REFERENCIA'
    end
    object FloatField1: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object FloatField2: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 6
    end
    object FMTBCDField2: TFMTBCDField
      FieldName = 'QTDGERAL'
      Precision = 15
      Size = 6
    end
    object StringField3: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object StringField4: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object StringField5: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object StringField6: TStringField
      FieldName = 'USA_COR'
      FixedChar = True
      Size = 1
    end
    object StringField7: TStringField
      FieldName = 'USA_PRECO_COR'
      FixedChar = True
      Size = 1
    end
    object FloatField3: TFloatField
      FieldName = 'PRECO_PROMOCAO'
      Required = True
    end
    object FloatField4: TFloatField
      FieldName = 'VLR_VENDA1'
    end
    object FloatField5: TFloatField
      FieldName = 'VLR_VENDA2'
    end
    object FloatField6: TFloatField
      FieldName = 'VLR_VENDA3'
    end
    object sdsProdAuxOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
  end
  object qParametros_Prod: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT CONS_PROD_USA_PERC, USA_LOTE_PROD, USA_REF2,MOSTRA_PROD_T' +
        'PRECO'
      'FROM PARAMETROS_PROD')
    SQLConnection = dmDatabase.scoDados
    Left = 512
    Top = 296
    object qParametros_ProdCONS_PROD_USA_PERC: TStringField
      FieldName = 'CONS_PROD_USA_PERC'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdUSA_LOTE_PROD: TStringField
      FieldName = 'USA_LOTE_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdUSA_REF2: TStringField
      FieldName = 'USA_REF2'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdMOSTRA_PROD_TPRECO: TStringField
      FieldName = 'MOSTRA_PROD_TPRECO'
      FixedChar = True
      Size = 1
    end
  end
end
