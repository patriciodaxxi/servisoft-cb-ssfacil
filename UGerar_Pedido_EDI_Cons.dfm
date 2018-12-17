object frmGerar_Pedido_EDI_Cons: TfrmGerar_Pedido_EDI_Cons
  Left = 162
  Top = 163
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmGerar_Pedido_EDI_Cons'
  ClientHeight = 472
  ClientWidth = 1079
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl2: TRzPageControl
    Left = 0
    Top = 0
    Width = 1079
    Height = 472
    ActivePage = RzTabSheet1
    ActivePageDefault = RzTabSheet1
    Align = alClient
    BackgroundColor = clSilver
    BoldCurrentTab = True
    FlatColor = clGray
    ParentBackgroundColor = False
    TabColors.Shadow = clSilver
    TabIndex = 0
    TabOrder = 0
    FixedDimension = 19
    object RzTabSheet1: TRzTabSheet
      Caption = 'C'#243'digos do Produto'
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 124
        Width = 1075
        Height = 325
        Align = alClient
        Ctl3D = False
        DataSource = DMGerar_EDI.dsProduto_Forn
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
        ColCount = 10
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'NOME_CLIENTE'
            Title.Alignment = taCenter
            Title.Caption = 'Cliente'
            Width = 318
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CNPJ_CPF'
            Title.Alignment = taCenter
            Title.Caption = 'CNPJ / CPF'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Title.Caption = 'ID Produto'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'COD_MATERIAL_FORN'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Produto Cliente'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TAMANHO'
            Title.Alignment = taCenter
            Title.Caption = 'Tamanho'
            Width = 48
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'REFERENCIA'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID_COR'
            Title.Alignment = taCenter
            Title.Caption = 'ID Cor'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_COMBINACAO'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Combina'#231#227'o'
            Width = 248
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID_FORNECEDOR'
            Title.Alignment = taCenter
            Title.Caption = 'ID Fornecedor'
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1075
        Height = 41
        Align = alTop
        Color = 16766378
        TabOrder = 1
        object Label1: TLabel
          Left = 16
          Top = 16
          Width = 141
          Height = 13
          Alignment = taRightJustify
          Caption = 'C'#243'digo do Produto do Cliente:'
        end
        object Label8: TLabel
          Left = 320
          Top = 16
          Width = 79
          Height = 13
          Alignment = taRightJustify
          Caption = 'C'#243'd. Cor Cliente:'
        end
        object Label9: TLabel
          Left = 504
          Top = 16
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tam.Cliente:'
        end
        object Edit1: TEdit
          Left = 160
          Top = 8
          Width = 145
          Height = 21
          TabOrder = 0
        end
        object btnSelecionar_Prod: TNxButton
          Left = 665
          Top = 3
          Width = 155
          Height = 32
          Caption = 'Selecionar Produto'
          Color = 16752448
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
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
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          Transparent = True
          Visible = False
          OnClick = btnSelecionar_ProdClick
        end
        object btnInserir: TNxButton
          Left = 819
          Top = 3
          Width = 155
          Height = 32
          Caption = 'Inserir Produto'
          Color = 16752448
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF7F8E9DEE096898D695A6040383D4434
            3C6A5B6196898EEADEE0FDF6F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E2E38D8383121512001C15005750
            19948D26B5B01DB5B20F968F005751001C131315128E8285E7E2E2FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEB4B63837350040321D
            AC963CFFEF3FFFFF46FFFF4DFFFF47FFFF45FFFF43FFFF3EFFF01BAF97003E33
            383636BFB4B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADA3A51919
            19117C6529F3CC36FFDE44F3DA3EEDDA31F1E031F3E639F0E536F1DF3AEFDD3E
            F2DC37FEDF2FF2CC0E7C651C1B1AB0A2A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            BDB4B9191A181D8C6E30FCCB2AE5BA2DE4BE2AE8C729EACF22EED81FEFDB23ED
            DA22EFD926EAD22BE6C82FE1C028E5BB28FFCA158F6C1B1917BFB4B7FFFFFFFF
            FFFFFFFFFFE6E2E43936371674502CF6B617D59F25D8AB1BDEB50CE2B759E5CF
            AAF3EEABF1EBABF1EBA9F3ED59E5CE0EE0B81ADEB721DAAD16D7A125F7B31373
            50393635E6E3E4FFFFFFFFFFFF8D838801371B2FD99413D59218D09B19D6A413
            DAAA00DBAB74E0CBFFF5F8FFF4F6FFF4F6FFF4F872E2C900DCAC10D9AA17D6A4
            17D19B18D4932CD99700361D8E8489FFFFFFFCF9FC13171223915428DA8B15CA
            8918D09218D49713D79D00D7A067DDC3FBF5F6F5F4F4F5F4F4FCF4F765DEC500
            D8A318D6A01CD29A16D0951ACA8A25DA8D189358131513FCF8FBE9E2E7000C00
            39D28020C77616C5810EC7810ACA8507CE8A00CB8D60D5B7FBF5F7F6F4F4F6F4
            F4FBF5F760D6B900CD8F05CF8D0AC9850EC88118C67E24C67635D480000B00EA
            E1E5979094003A0F2FDB7F17C06C2DC57F69CEA675D3B16DD4B064D3B2A4DCCD
            F8F4F5F4F4F4F4F4F4F8F3F5A3DBCB60D2B169D5B172D3B063CEA22AC67C1FBD
            6C36DB7B0039109592946B626711692A32D06F1AB86248C783DCECE4FFF8FDFC
            F4F8FCF4F7F8F3F5F5F4F4F3F4F4F3F4F4F5F4F4F8F3F5FBF5F6FBF4F8FFF8FD
            DAECE34BC6841EB66730CE6F11672A656269403D3E1D81392BC96120B75D47C0
            80D6E9E1FFF7FBF5F4F4F5F4F4F5F4F4F4F4F3F3F4F4F3F4F4F4F4F3F5F4F4F5
            F4F4F5F4F4FFF7FCDAE9E04CC27F23B65E36C76424833A463F3E464142227B30
            45C25F31B75653BF79DBEAE0FFF7FCF5F4F5F5F5F5F5F4F4F3F4F4F3F4F3F3F4
            F3F4F4F4F5F4F5F5F5F5F5F4F5FFF7FCDBE8E252C17E2BB85839C35B19812B44
            3D40696364105E1841C55533B9545EC27EDEEAE2FEF9FDFAF5FAFAF6F9F6F5F7
            F5F4F5F3F4F3F3F4F3F5F4F5F6F5F7FAF6F9FAF5F9FEF9FEDCE9E15DC07C39B7
            563FC658106419686269989095002D004DC8534EB95E55B96972B87C76B78474
            B9866BB27EA3C7ADF8F6F7F4F4F4F4F4F4F7F6F7A3C6AB6BB17C72B88376B783
            73B78053B8684FBA5D49C8530031009A949AE9E4E90000004BB64861BE635ABA
            664ABB5A45B95E45BC6138B95984C996FAF6F9F5F4F5F5F4F5FAF6F986C7963C
            B65949BD6044BB5C4CB95D59B9635FBE5E49B649000100E9E3E9FCFAFC111311
            20701963C55A6DC17368BE6E69C0746AC2755FBF6C98CEA1FAF5F8F5F3F5F5F3
            F5F9F5F995CEA05DC06D6CC27766C27069BF6D73C17162C659226F1B121510FC
            F9FCFFFFFF8E868F00220051AD397DCD717FC2787BC17477C5776BC073A8CFAB
            FFFBFFFEFAFFFEFAFFFFFBFFA5D2A96BBF7076C47874C3747BC4797CCB734EAE
            3B0022008E888FFFFFFFFFFFFFE6E3E735353518490671CA5591D2878DC88485
            C88083C77BA6CBA0D0DBD0CFDCCECEDACDD2DAD0A2C8A183C57D88C87C8ECA85
            8FD38571C9561B4B08333634E4E3E6FFFFFFFFFFFFFFFFFFBDB7BE181616265C
            137FD060A4DE98A6D49D9FCD8C99CC8D8FC58C92C98796C68793C78C97C98C9D
            CE90A4D39CA7DE9786CE602E5C13161617BBB8BEFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFAEA8AF17161618460369B246ADE38EC2E6AEB9DEB1B0DCADB5DCA6BDD7
            ACB8DBAABBE0ADBBE6B2A6E2926CB0461E4502151618ACA7B0FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFBEB8BE353532001A002E65147FBE53A8E282
            B9EA9EC0E8ACC5ECA8BCEA9EACE1847CBC57276712001900333532BCB8BFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E5E78E87910D
            130C000000001D00184C002C6B15286B1117480200190000000010160C8B8692
            E5E5E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFDFAFDE8E4EC939399636A63403E4048404262666392919AEA
            E4EDFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          GlyphSpacing = 5
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          Transparent = True
          Visible = False
          OnClick = btnInserirClick
        end
        object Edit4: TEdit
          Left = 401
          Top = 8
          Width = 97
          Height = 21
          TabOrder = 1
        end
        object Edit5: TEdit
          Left = 566
          Top = 8
          Width = 97
          Height = 21
          TabOrder = 2
        end
      end
      object pnlProduto_Proprio: TPanel
        Left = 0
        Top = 41
        Width = 1075
        Height = 83
        Align = alTop
        Color = 11468718
        TabOrder = 2
        Visible = False
        object Label2: TLabel
          Left = 104
          Top = 40
          Width = 55
          Height = 13
          Caption = 'Refer'#234'ncia:'
        end
        object Label5: TLabel
          Left = 272
          Top = 40
          Width = 36
          Height = 13
          Caption = 'C'#243'digo:'
        end
        object Label6: TLabel
          Left = 120
          Top = 14
          Width = 266
          Height = 13
          Caption = 'Gerar o relacionamento no produto com o cliente CNPJ: '
        end
        object Label7: TLabel
          Left = 97
          Top = 62
          Width = 62
          Height = 13
          Caption = 'Combina'#231#227'o:'
        end
        object btnConfirmar: TNxButton
          Left = 430
          Top = 19
          Width = 171
          Height = 32
          Caption = 'Relacionar Produto'
          Color = 16752448
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Glyph.Data = {
            AE060000424DAE06000000000000360000002800000017000000170000000100
            1800000000007806000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9BED7B786B5A064A1955795965B
            95AB84AAD5C8D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB571AA801171831376902787
            9B3B9BA451A6AA5DAEA25DA89C68A45B215C8E6B8EFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFDEBAD9880C728E177D9B
            3193A54CA4A550A4A44DA2A34BA2A24BA1A448A2A247A1C37CC6AC84B6480E48
            D1C6D2FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFCA90C18602
            719524899E3898A249A1A147A0A0449DA1469FA1469FA1469FA1469FA1459F9E
            409BA747A0CB91CF5D2A61B39CB2FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            D8AED2860072962489983092A1449CA0419A9F4199AA55A59E3D989F419BA041
            99A0419AA0419BA0419B9F3F9A9E3996C57EC65A285FCFC1CFFFFFFFFFFFFF00
            0000FFFFFFFFFFFF8A06779421849127899E3C959D3E949D3D949B3691D8BECF
            9D3D949E3B949D3D949D3D949D3D949D3D949D3D949C3B93972D8DC88ECC480E
            4AFFFFFFFFFFFF000000FFFFFFB15FA790197D8B2782942E899E37919D36919D
            36919C34909A308DFFFFFF9220859D35919D36919D35909D36919D35919F3692
            942C8994338BA97FB48F6A8DFFFFFF000000FFFFFF8D0D7B88277F81277F9A31
            8C9B318D9B318D9A318D9B318D962588C896C2FFFFFF9421859B318D9B318D9B
            318D9B318D9B318D9D318D7D1E79AF69B25C225FFFFFFF000000D8B2D38D187E
            7721787B237B9B2A8A9629889629889629889629889628888F1880FDFFFEA23F
            95922184962988962988962988962988992A8A80237D741B76995F9FD8CBD800
            0000C07AB6821F7B5E195F731C6E991F83941D80941D80941D80941E80931E81
            8E137ABF7BB2F5FDF48F127B941F829621839521839521839821857C1E735C15
            5C8C4292AF89AF000000B35DAB701B6C390D3E74206AA139949F4098A1439BA1
            429A9F3C96972B878E157786046DF1F2ECD8BECF8B087094217D94227D94227D
            982380781C6A3D0C3F7B357D9E659E000000B76CB9701B6F7821739A3F97A751
            A7A44EA4A44EA4A34EA49E419DFFFFFFFFFFFFFEFFFFEFEFE9F4FFF0BD81AA90
            15719621789521779921797618634D134F8828869B5F9C000000C38AC87E227C
            8A257D963A90A54FA5A44DA3A34CA2A44CA29E429EC997C9FFFFFFFEFCFEC693
            C7CA99C9C9A1C89C378D9B368D9E398FA042979B3D958C27808C2182A670A800
            0000D8B4DE8132838F237F95348CA54FA5A34CA2A34CA2A34CA2A34BA29D409C
            FFFFFFFFFFFFB873B69B3B9A9F449EA44EA4A44FA5A44FA4A650A697388F8E26
            7F891D7EBD90BB000000ECDDF3975B9F861D77942A84A755AAA44FA5A44FA5A4
            4FA5A550A59E429FD6B0D6FFFFFFFDFEFD9C3F9DA44EA5A54FA5A54FA5A44FA5
            A654AA942D87912782831277E0CADE000000FFFFFFC899D96D1764962083A855
            ADA95AB1A959B0A959B0A959B1A857AFA859B0FFFFFFFFFFFFD0A5D4A34EAAA9
            59B1A959B0AA5AB1A959B0932080952285831674FFFFFF000000FFFFFFE7D0F6
            8C5B958C1678A03E9CB16EC2AE67BCAE67BCAE67BCAE67BCA658B5E5D1EAFFFF
            FFFFFFFFAC64BCAE65BBAE67BCB16DC2A0429F9622868C147ABC7FB3FFFFFF00
            0000FFFFFFFFFFFFDCBCF16322639A2284B472C9B778CEB576CBB576CBB576CB
            B472CAFFFFFFF9F3FAF8F1F9FFFFFFB26FC9B678CDB575CB962783931F828B12
            78FFFFFFFFFFFF000000FFFFFFFFFFFFF7F0FCD0B0E35E1459A1328FC291E7BD
            8AE1BC88DFBD88DFBC88DFBA84DDB57AD9B67ADAB781DBBC8AE0C192E99F3A92
            962483870171E6CDE3FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFF4EBFCCFB0
            E364216095308ACDA2F7CAA1F4C599EFC598EEC598EEC598EEC599EEC8A1F3CB
            A3F4A04299921E7D860072D5ACD0FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFDCBDF18958936B1E63B785C5E3CDFEE3CDFEE1CCFDE3CF
            FEE4D0FFC291D39130838911768B0D7BE5CAE1FFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9D4F5CA99DA9150977A307B
            8F49909951999443918218778108718E127DBF7AB6FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFF1E4F5DCBBE1C792CAB86FB9B76AB0C78DC0E4C8E0FFFFFFFFFFFFFFFFFF
            FFFFFFF2F2F2FFFFFFFFFFFFF2F2F2000000}
          GlyphSpacing = 5
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Transparent = True
          OnClick = btnConfirmarClick
        end
        object Edit2: TEdit
          Left = 160
          Top = 34
          Width = 97
          Height = 19
          TabStop = False
          Color = clBtnFace
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object CurrencyEdit1: TCurrencyEdit
          Left = 312
          Top = 34
          Width = 73
          Height = 19
          TabStop = False
          AutoSize = False
          Color = clBtnFace
          Ctl3D = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
        object Edit3: TEdit
          Left = 234
          Top = 56
          Width = 367
          Height = 19
          TabStop = False
          Color = clBtnFace
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object CurrencyEdit2: TCurrencyEdit
          Left = 160
          Top = 56
          Width = 73
          Height = 19
          TabStop = False
          AutoSize = False
          Color = clBtnFace
          Ctl3D = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
        end
      end
    end
    object RzTabSheet2: TRzTabSheet
      Caption = 'Cliente'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1075
        Height = 41
        Align = alTop
        Color = 16766378
        TabOrder = 0
        object Label3: TLabel
          Left = 16
          Top = 16
          Width = 95
          Height = 13
          Caption = 'Produtos no Cliente:'
        end
        object Label4: TLabel
          Left = 112
          Top = 16
          Width = 6
          Height = 13
          Caption = '0'
        end
      end
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 41
        Width = 1075
        Height = 408
        Align = alClient
        Ctl3D = False
        DataSource = DMGerar_EDI.dsProduto_Forn_CNPJ
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
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
            FieldName = 'COD_MATERIAL_FORN'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Produto Cliente'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TAMANHO'
            Title.Alignment = taCenter
            Title.Caption = 'Tamanho'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Title.Caption = 'ID Produto'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'REFERENCIA'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID_FORNECEDOR'
            Title.Alignment = taCenter
            Title.Caption = 'ID Fornecedor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_CLIENTE'
            Title.Alignment = taCenter
            Title.Caption = 'Cliente'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CNPJ_CPF'
            Title.Alignment = taCenter
            Title.Caption = 'CNPJ / CPF'
            Visible = True
          end>
      end
    end
  end
end
