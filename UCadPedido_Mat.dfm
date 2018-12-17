object frmCadPedido_Mat: TfrmCadPedido_Mat
  Left = 261
  Top = 113
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmCadPedido_Mat'
  ClientHeight = 512
  ClientWidth = 889
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object NxPanel1: TNxPanel
    Left = 0
    Top = 0
    Width = 889
    Height = 137
    Align = alTop
    UseDockManager = False
    ParentBackground = False
    TabOrder = 0
    object NxLabel1: TNxLabel
      Left = 255
      Top = 4
      Width = 46
      Height = 13
      Caption = 'Material'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object NxLabel2: TNxLabel
      Left = 513
      Top = 4
      Width = 71
      Height = 13
      Caption = 'Cons. M'#233'dio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object NxLabel3: TNxLabel
      Left = 672
      Top = 4
      Width = 68
      Height = 13
      Caption = 'Vlr. Unit'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object NxLabel4: TNxLabel
      Left = 615
      Top = 4
      Width = 25
      Height = 13
      Caption = 'Qtd.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object Label2: TLabel
      Left = 8
      Top = 48
      Width = 88
      Height = 13
      Caption = 'Nome Etiqueta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 95
      Top = 17
      Width = 409
      Height = 21
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMCadPedido.dsMaterial
      TabOrder = 1
      OnExit = RxDBLookupCombo1Exit
      OnKeyDown = RxDBLookupCombo1KeyDown
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 504
      Top = 16
      Width = 81
      Height = 21
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = '0.00000'
      TabOrder = 2
      OnKeyDown = CurrencyEdit1KeyDown
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 668
      Top = 16
      Width = 73
      Height = 21
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = '0.00000'
      TabOrder = 4
      OnKeyDown = CurrencyEdit2KeyDown
    end
    object CurrencyEdit3: TCurrencyEdit
      Left = 585
      Top = 16
      Width = 82
      Height = 21
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = '0'
      TabOrder = 3
      OnKeyDown = CurrencyEdit3KeyDown
    end
    object Edit1: TEdit
      Left = 96
      Top = 39
      Width = 409
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 25
      TabOrder = 5
      OnKeyDown = Edit1KeyDown
    end
    object Edit2: TEdit
      Left = 4
      Top = 17
      Width = 90
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 20
      TabOrder = 0
      OnExit = Edit2Exit
      OnKeyDown = Edit2KeyDown
    end
    object VDBGrid2: TVDBGrid
      Left = 0
      Top = 63
      Width = 839
      Height = 73
      Color = clSilver
      Ctl3D = True
      DataSource = DMCadPedido.dsmTamanho_Mat
      FixedColor = 16765606
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Vertical = True
      DefaultColWidth = 80
      TitlesWidth = 90
      OnExit = VDBGrid2Exit
      OnKeyDown = VDBGrid2KeyDown
      Columns = <
        item
          Alignment = taCenter
          Color = clWhite
          FieldName = 'Tamanho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
        end>
    end
    object Panel1: TPanel
      Left = 840
      Top = 0
      Width = 49
      Height = 137
      Align = alRight
      TabOrder = 7
      object btnConfirmar: TNxButton
        Left = 5
        Top = 7
        Width = 39
        Height = 30
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
      object btnAlterar: TNxButton
        Left = 5
        Top = 39
        Width = 39
        Height = 30
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Glyph.Data = {
          AE060000424DAE06000000000000360000002800000017000000170000000100
          1800000000007806000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFDDDAD9D4CCC8B9ACA8B0A59FCDC2
          BDD4CECDE9E7E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9A96533E351F1A180C2D3C
          094662104D68093F5212222A2A1E17715E5BD8D6D9FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFEEECEB20120D141D271D
          88B322BFF61EC1FF20C1FF20C0FF1FBFFF22BFF923B4F31757700D06006A615D
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFAEA9A81D12
          0F2D82A42FCFFF1DC3FF20BBFF1FB9FF20B5FF26B9FB37B8F435B8F631B9FA34
          CDFF30B7EE0931403C2B22F6F6F6FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          D7CDCF0300002385A51EC9FF20B8FE1EB7FD1FB7FD20B9FE20B8FC1FB8FF1DB5
          FE1DB6FD21B6FE20B5FD1CBEFF24C8FF123C4E3B271FFFFFFFFFFFFFFFFFFF00
          0000FFFFFFF7F7F60200001D8CB21FCFFF1CB3F822C0FF20BFFF1FBAFF1EB5FF
          1FB9FE1FB9FD1EB7FF1EB7FF1EB8FF1EB7FF1FB8FC1FBBFF24CAFF002E3E645D
          5CFFFFFFFFFFFF000000FFFFFF665E5C0C384A27D3FF20BAFF269AC6122C4028
          A3DD21B1F022CFFF24BBFF21BAFD20B8FE1FB6FE1FB7FF1EB8FD21B8FE1FB9FD
          1FBDFF24B5EE020000D4D2D4FFFFFF000000E4E0E00F000020B7E71EBAFF1CB8
          FF1BB3EF24678D13405912566B1541581AB2ED1EC3FF1DB8FF1AB7FD1AB6FF20
          B9FE1DB7FF20B6FE1FB5FE22CFFF114C646A615EFFFFFF000000B3ABAA002F49
          35C1FF2CB8F82FB7F733C6FF1C546E2EC1EC36DCFF24617334698A2D6C814BD4
          FF3FBAF939BBF42EB9F62AB7F525B5FD1FB7FF1CBAFF22B5F41B0F09E9E7E600
          0000695B5810688329C3FF23B7FA1FB8FA29C1FF398ABA4495BB2C61792C5A74
          439CC415121C32687959E6FF4FBFFA4EC1F93BBCFA1AB5FC1EB8FF1EB9FF24BE
          F7011319D2CECD000000382E2F1286A922C0FF1CB5FF28B7FD59C5FD5DE4FF1A
          303850A7CB1B35411009094CA6C9111319376A7B5EDAFF53C6FE58C6F948C2F9
          19B4FD1EB8FF1DC1FF003249BBB3AE0000002622211A90B91FBFFF1DB6FC57C6
          FD65CBF761CBFD73D2FF0A0B1156A0BF18232D1A1A1857AACC10111C3A6B7B6F
          E4FF5EC8F96ACCF93FBFFA1BB4FF21C3FF01435EA49B99000000251F201388B0
          1ABFFF3DC0FA77CFF870CCF86FCDF871D8FF4E86970100006FB6D81A292C170C
          0C69B4D30D1017477C8983EAFF71CBFB6ACDF724B6FF20C1FF003957A9A08B00
          00005548481C82A31CBFFF6CC9F785D2F581D0F683CEF77ECFF98CE9FF6DA3B7
          06000072A9C42B3C411918167AB5D21415184E727C88DFFF88D1FA3BBFFB1BBD
          FF123547D0C3B4000000BBB2AB4688A62DBCFF82CDF193D1EE8FD0F18FD1F38C
          D4F58CD2F69BECFF62909C15100F85B6CC3839422A2E3086B7CE191C1F5F8B9B
          99E2FF4EC3FA14B8F96D6C6DEAE7D9000000E9E4E267707309BAFC86D2F9A0D9
          F698D8F699D7F59AD7F59AD7F599D6F5A4EDFF7A9FAC0B00018ABACC2F3D4219
          101387B8CF9DD8F4A6DDF542C5FF2F9FD1A18D89FDFAEB000000FEFEFEA89286
          379FCC5ED1FFB9DFF1A8DCF2AADDF4A9DCF2A9DCF2A9DBF2A5DBF2BAF5FF7FA7
          B0140D0C84A0AE4D5A65A5D4E6A9E1FCABDEF223C7FF6D7C85CDC9C5FFFDF400
          0000FFFFFFD6D4D478807E35BFFFB4E5F6B9DFF0B2DEF4B3DEF2B3DFF3B3DFF3
          B4DEF2B3DDF3C8F4FF798E953C474FC2F1FFB6E4FAC3E0EF8CDCFF3D9DCC9488
          83FFFFFFFFFFFD000000FFFFFFFFFFFFC8BBB2658A9B60CAF9D7EBF4CBE3F1C5
          E1F3C5E2F2C6E2F2C6E2F2C6E2F2C5E3F1D0F1FFDEFBFFC4E5F3D2E5F1BAE8FF
          34ABD58D8884F8F6F4FFFFFFFCFFFF000000FFFFFFFDFDFDFCFDFEBAB0AA7098
          A47DD0F8DDEBF3DFE9F3D3E9EFD2E9F0D2E8F0D1E6EECAE1E8CCE3E8CFE1E7E6
          E8EEAFE2FC56B7DE92928FE0D9D6FFFFFFFCFAFAF0F3F3000000FFFFFFFCFCFC
          FDFDFDFFFFFFCFC0C48D9E9C60B1DAACE0F5E1EEF4E4EEF2E7EEF2E8EEF3E6ED
          F2E2EBF3D9EBF47BCDEE6CA4BCA59D9AF5EBEAFFFFFFFFFFFFFFFDFEEBF3F000
          0000FFFFFFFEFEFEFFFFFFFFFFFFFFFFFFE8E0E2CBBDB383A3AF77AFCE8DC4DB
          A0CFE4A2D0E596CCE284BDD76EA8BFAAADA8D9CAC5FCFCFBFFFFFFFEFFFFFFFF
          FFFFFFFFFCFEFD000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEF7
          F1EDE2DDD5CBCCCAB5C1C4B4BFC2BFC3C1D6D2CFEEE7E3FAF7F5FFFFFFFFFFFF
          FEFFFFFFFFFFFFFFFFFFFFFFF9FEFE000000}
        GlyphSpacing = 5
        ParentFont = False
        TabOrder = 1
        Transparent = True
        OnClick = btnAlterarClick
      end
      object btnExcluir: TNxButton
        Left = 5
        Top = 71
        Width = 39
        Height = 30
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
        TabOrder = 2
        Transparent = True
        OnClick = btnExcluirClick
      end
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 137
    Width = 889
    Height = 262
    Align = alClient
    Ctl3D = False
    DataSource = DMCadPedido.dsPedido_Material
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 1
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
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 12
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'REFERENCIA'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_PRODUTO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Nome Produto'
        Width = 225
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'UNIDADE'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Unid.'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_CONSUMO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Consumo M'#233'dio'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_PECA'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_CONSUMO_TOTAL'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Consumo Total'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_UNITARIO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Unit'#225'rio'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_TOTAL'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Total'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_ETIQUETA'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o Etiqueta'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ITEM_MAT'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Item'
        Width = 38
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_PRODUTO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Material'
        Width = 51
        Visible = True
      end>
  end
  object NxPanel2: TNxPanel
    Left = 0
    Top = 492
    Width = 889
    Height = 20
    Align = alBottom
    UseDockManager = False
    ParentBackground = False
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 3
      Width = 109
      Height = 13
      Caption = 'F10 - Fechar a tela'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object VDBGrid1: TVDBGrid
    Left = 0
    Top = 419
    Width = 889
    Height = 73
    Align = alBottom
    Color = clSilver
    Ctl3D = True
    DataSource = DMCadPedido.dsPedido_Etiqueta
    FixedColor = 16765606
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Vertical = True
    DefaultColWidth = 80
    TitlesWidth = 90
    OnExit = VDBGrid1Exit
    Columns = <
      item
        Alignment = taCenter
        Color = clWhite
        FieldName = 'TAMANHO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
      end>
  end
  object NxPanel3: TNxPanel
    Left = 0
    Top = 399
    Width = 889
    Height = 20
    Align = alBottom
    Caption = 'Tamanho para imprimir na Etiqueta'
    UseDockManager = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 4
  end
end
