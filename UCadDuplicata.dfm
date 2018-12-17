object frmCadDuplicata: TfrmCadDuplicata
  Left = 187
  Top = 34
  Width = 1062
  Height = 657
  Caption = 'Duplicatas (A Receber/A Pagar)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = OnShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 1054
    Height = 607
    ActivePage = TS_Consulta
    ActivePageDefault = TS_Consulta
    Align = alClient
    BackgroundColor = 15759360
    BoldCurrentTab = True
    FlatColor = clGray
    ParentBackgroundColor = False
    TabColors.Shadow = clSilver
    TabIndex = 0
    TabOrder = 0
    OnChange = RzPageControl1Change
    FixedDimension = 19
    object TS_Consulta: TRzTabSheet
      Caption = 'Consulta'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 207
        Width = 1050
        Height = 344
        Align = alClient
        Ctl3D = False
        DataSource = DMCadDuplicata.dsDuplicata_Consulta
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
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
        ExOptions = [eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        OnGetCellParams = SMDBGrid1GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        OnChangeSelection = SMDBGrid1ChangeSelection
        WidthOfIndicator = 27
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 41
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TIPO_ES'
            Title.Alignment = taCenter
            Title.Caption = '.'
            Width = 20
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FILIAL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Filial'
            Width = 30
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'APROVADO'
            Title.Alignment = taCenter
            Title.Caption = 'Aprovado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'clTipo_Registro'
            Title.Caption = 'Tipo Registro'
            Width = 82
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTVENCIMENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Data Vencimento'
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTFINANCEIRO'
            Title.Caption = 'Data Financeira'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTULTPAGAMENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Data Pagamento'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_PESSOA'
            Title.Alignment = taCenter
            Title.Caption = 'Cliente/Fornecedor'
            Width = 230
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMDUPLICATA'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Duplicata'
            Width = 81
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PARCELA'
            Title.Alignment = taCenter
            Title.Caption = 'Parcela'
            Width = 42
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUMNOTA'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Nota'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SERIE'
            Title.Alignment = taCenter
            Title.Caption = 'S'#233'rie'
            Width = 34
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NOSSONUMERO'
            Title.Alignment = taCenter
            Title.Caption = 'Nosso N'#250'mero'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_PARCELA'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Parcela'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTEMISSAO'
            Title.Alignment = taCenter
            Title.Caption = 'Data Emiss'#227'o'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_RESTANTE'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Pendente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_PAGO'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Pago'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_TOTALPAGO'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Pago'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_DESPESAS'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Despesas'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'clDias_Atraso'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Dias Atraso'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'clVlr_Juros_Calculado'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Juros'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PERC_COMISSAO'
            Title.Alignment = taCenter
            Title.Caption = '% Comiss'#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PERC_BASE_COMISSAO'
            Title.Alignment = taCenter
            Title.Caption = '% Base Comiss'#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_DEVOLUCAO'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Devolu'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_DESCONTO'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Desconto'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTRECEBIMENTO_TITULO'
            Title.Alignment = taCenter
            Title.Caption = 'Data Recebimento T'#237'tulo'
            Width = 107
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TIPO_LANCAMENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Lan'#231'amento'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TRANSFERENCIA_ICMS'
            Title.Alignment = taCenter
            Title.Caption = 'Transf. ICMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_VENDEDOR'
            Title.Caption = 'Vendedor'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_BANCO'
            Title.Caption = 'Banco'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_CONTA'
            Title.Caption = 'Conta Pagamento'
            Width = 109
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_TIPOCOBRANCA'
            Title.Caption = 'Tipo Cobran'#231'a'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUM_REMESSA'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Remessa (Banco)'
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Width = 256
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO2'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o 2 (OBS)'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMRPS'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' RPS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_ORCAMENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Previs'#227'o / Or'#231'amento'
            Width = 274
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TITULO_CARTORIO'
            Title.Alignment = taCenter
            Title.Caption = 'Em Cart'#243'rio'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PROTESTADO'
            Title.Alignment = taCenter
            Title.Caption = 'Protestado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Title.Caption = 'ID Duplicata'
            Width = 79
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1050
        Height = 30
        Align = alTop
        Color = 8404992
        TabOrder = 1
        object btnInserir: TNxButton
          Left = 1
          Top = 1
          Width = 153
          Height = 28
          Cursor = crHandPoint
          Align = alLeft
          Caption = 'Inserir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 0
          Transparent = True
          OnClick = btnInserirClick
        end
        object btnExcluir: TNxButton
          Left = 154
          Top = 1
          Width = 153
          Height = 28
          Cursor = crHandPoint
          Align = alLeft
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
          TabOrder = 1
          Transparent = True
          OnClick = btnExcluirClick
        end
        object btnPesquisar: TNxButton
          Left = 307
          Top = 1
          Width = 153
          Height = 28
          Cursor = crHandPoint
          Align = alLeft
          Caption = 'Pesquisar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            AE060000424DAE06000000000000360000002800000017000000170000000100
            1800000000007806000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFE5E7EAC4C7CB706D6748433723160A1D11031E16
            114B413D746C6AC4C8CDE8EAECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF72707837251D3C2100734408975E0E
            A96D17A86D18A367178A530A69380136190034251E79797FFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFEDEDEE35383D532D01A36D14A9
            7317A56B189C5F129459118F571192580C905A12935C16975C138551133E1A00
            3A3A3EF0F1F2FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFE7E6EA241E1F7450
            08BB7F1CA56A16975F0E8F570E8F56118447017E40008F560991561192541395
            580C945B0D9E5F175E2F02292120E9EAECFFFFFFFFFFFF000000FFFFFFFFFFFF
            2D2F347F560FBB821FA36B17965915965B119B5F0F804600A78C64D3C1A47F4D
            13975D0F985C13985D139A5D1292590E975A14633608323236FFFFFFFFFFFF00
            0000FFFFFF5E5A65604307BE881FAB7113985F0F9D6111996315915B07B0813F
            FFFFFFFFFFFFF4F1E4824A009565129465129D64109D6514945B0C9C5C154823
            00656469FFFFFF000000DADDE036230DB68422B27A17A369119D67129F6814A0
            68149A620EA17125FFFFFFFFFFFFDAC8B0955300A169139E6A11A36717A06817
            9F681392560F8C571229160EDEDFE2000000A0A0A45D3C00C38919B07715A36B
            17A46F14A66F13A16F16A77014A1640D8D621A7C613D915F0CAA700DA96E15A9
            6D14A46C18A46F10A570169E61129A5E0D3F1D00A0A2A6000000665E589A6E14
            B88520AB7514A57119AA7315A87313A97414AB7313966009DCCFB2FDFEF2A585
            4BA76B07A9751AA66F1BA67218AB7414AE7319A77214935A13754304635A5600
            00003A3426C28E20B5851FAD7614A97818AE7616AE7915B07816A97212A67726
            FFFFFFFFFFFFE3DDC87C4600996506B27A14AD7814AC7817B07617AD7A17945C
            11985D10332923000000221A07D39B24C38619AD7D18AF7D19B67C1AB27B1DAE
            7C1CB47811B17E23FFFFFFFDFFFFFFFFFFFFFFFFC0AE89A46A08B57C19B27D1A
            B37D17B17E1D9A5F0DA667171B1203000000261D0BD59E27BF881CB1801BB382
            18BA811DB7801DB98218BA7E0EAC7B0DDCCCAAF1F1E2FFFFFFFCFFFFFFFFFFBD
            A25EAC750FBA821BB98318BB811E955E12A46B18211405000000241A07D89D28
            BE8B1DB9851CB98917BB841CBA881CA3730FAF8640A57213B37B0DA9740CD4C4
            95FFFFFFFFFFFFEFEBCBA46C08BA861EBF871DB7811C99600FAA6B181A100400
            0000342921BF891CC5931CC1891FC08D1BC18D1BAE7708E5DBB2FFFFFFEFEEE3
            A87C1EAA7005C5AF80FFFFFFFFFFFFF2EFD3A47802BE8C1DC88C23AA7715A266
            0F995E11362C260000005D55578E6311CA991FC38C20C08D1FC4911BAE760BF6
            F3C9FFFFFFFFFFFFEBE9DCDBD2BBFDFFF7FCFCFFFFFFFFE0D29AAE7C07C7901D
            C48D22A16C0EA76C1376430A5E5A57000000A09FA63C2200D29B2AC3911DBD8E
            1EC8931FC08E17C49B42FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFF8FAE5B4
            881FCD9218C89924A97515A46A14A96F19371800A2A3A6000000DBE1E31C0D03
            AC7215CE9F23BD911DC68E1ECA9621C2900FC3A340DCD3ACF2EEE1FBF8E9EFEA
            D9D8C797BE9528CC9518CB9924B47C1CA26A13AD731A975C0E240F09DEE0E300
            0000FFFFFF60626A441F00C98D1FCC9B1EC28F20C18F1BC99820CB971BC6951A
            C79A28C99B2FCA9924C89515D09F21C19021AC7917A57118AE771DB07116491B
            00625F69FFFFFF000000FFFEFFFFFFFF303036633000BC861AC99721C68F22C1
            8B1DBF8D1AC2901AC7941DC9941EC7931BC08B1EB27B17AC7815AD7C13AE7E16
            A76F0E5B30002C3036FFFFFFFEFFFF000000FBFEF9FFFFFFE8E9EC1E1F206331
            00BF8312C5911DC79322BF911DBC8B1AB9881AB8841BB48519B27D18B57E1CBB
            811DB57B18AE72145E3400221E1DE8E7EBFFFFFFFCFDFD000000FBFDFDFEFFFC
            FFFFFFEDEFF239373D4624009C6900B88110C8901CC9911BC48C1ABE891BC387
            1CBA861BB78814B47B089A620844210035383DF0EFF3FFFFFFFEFFFBFFFFFE00
            0000FEFBFFFFFDFCFFFFFCFFFFFFFFFFFF74767E3626213D2500845200B57900
            D59B09DBA612D79D0FB47D0082540045260037271F72747CFFFFFFFFFFFFF7FD
            FEFEFBFEFCFFFD000000FCFEF8FEFEFDFBFDFFFAFEFBFFFFFCFFFFFFE6E9EDC0
            C3C7726F6C4C473F291D0D271D0325200D4F473B766E6BBEC1C8E8E9EDFFFFFF
            FFFEFFFAFEF9FEFCFBFFFDFEFDFEFE000000}
          GlyphSpacing = 5
          ParentFont = False
          TabOrder = 2
          Transparent = True
          OnClick = btnPesquisarClick
        end
        object btnImprimir: TNxButton
          Left = 460
          Top = 1
          Width = 153
          Height = 28
          Cursor = crHandPoint
          Align = alLeft
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
          PopupMenu = PopupMenu1
          ShowArrow = True
          TabOrder = 3
          Transparent = True
        end
        object btnOpcao: TNxButton
          Left = 613
          Top = 1
          Width = 153
          Height = 28
          Cursor = crHandPoint
          Align = alLeft
          Caption = 'Op'#231#245'es'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          GlyphSpacing = 5
          ParentFont = False
          PopupMenu = PopupMenu4
          ShowArrow = True
          TabOrder = 4
          Transparent = True
        end
      end
      object pnlPesquisa: TPanel
        Left = 0
        Top = 30
        Width = 1050
        Height = 147
        Align = alTop
        Color = clSilver
        TabOrder = 0
        Visible = False
        object Label6: TLabel
          Left = 221
          Top = 31
          Width = 94
          Height = 13
          Caption = 'Cliente/Fornecedor:'
        end
        object Label3: TLabel
          Left = 242
          Top = 11
          Width = 73
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#186' Documento:'
        end
        object Label15: TLabel
          Left = 425
          Top = 11
          Width = 23
          Height = 13
          Caption = 'Filial:'
        end
        object Label18: TLabel
          Left = 228
          Top = 51
          Width = 86
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dt.Emiss'#227'o Inicial:'
        end
        object Label26: TLabel
          Left = 416
          Top = 51
          Width = 25
          Height = 13
          Caption = 'Final:'
        end
        object Label27: TLabel
          Left = 239
          Top = 72
          Width = 75
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dt.Vecto Inicial:'
        end
        object Label28: TLabel
          Left = 416
          Top = 72
          Width = 25
          Height = 13
          Caption = 'Final:'
        end
        object Shape1: TShape
          Left = 829
          Top = 5
          Width = 23
          Height = 14
          Brush.Color = clGreen
        end
        object Label33: TLabel
          Left = 858
          Top = 5
          Width = 37
          Height = 13
          Caption = 'Quitado'
        end
        object Label34: TLabel
          Left = 858
          Top = 18
          Width = 42
          Height = 13
          Caption = 'Atrasado'
        end
        object Shape2: TShape
          Left = 829
          Top = 18
          Width = 23
          Height = 14
          Brush.Color = clRed
        end
        object Shape3: TShape
          Left = 829
          Top = 31
          Width = 23
          Height = 14
        end
        object Label35: TLabel
          Left = 858
          Top = 31
          Width = 46
          Height = 13
          Caption = 'Pendente'
        end
        object Shape4: TShape
          Left = 829
          Top = 44
          Width = 23
          Height = 14
          Brush.Color = clSilver
        end
        object Label47: TLabel
          Left = 858
          Top = 44
          Width = 26
          Height = 13
          Caption = 'ICMS'
        end
        object Shape5: TShape
          Left = 829
          Top = 57
          Width = 23
          Height = 14
          Brush.Color = 8454143
        end
        object Label49: TLabel
          Left = 858
          Top = 57
          Width = 95
          Height = 13
          Caption = 'Boleto n'#227'o impresso'
        end
        object Label50: TLabel
          Left = 280
          Top = 92
          Width = 34
          Height = 13
          Alignment = taRightJustify
          Caption = 'Banco:'
        end
        object Label51: TLabel
          Left = 242
          Top = 112
          Width = 73
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo Cobran'#231'a:'
        end
        object Shape6: TShape
          Left = 829
          Top = 70
          Width = 23
          Height = 14
          Brush.Color = 16777147
        end
        object Label56: TLabel
          Left = 858
          Top = 70
          Width = 54
          Height = 13
          Caption = 'Em Cart'#243'rio'
        end
        object Label57: TLabel
          Left = 551
          Top = 51
          Width = 35
          Height = 13
          Alignment = taRightJustify
          Caption = 'Op'#231#227'o:'
        end
        object Shape7: TShape
          Left = 829
          Top = 83
          Width = 23
          Height = 14
          Brush.Color = 11053311
        end
        object Label58: TLabel
          Left = 858
          Top = 83
          Width = 57
          Height = 13
          Caption = 'Em Protesto'
        end
        object Shape8: TShape
          Left = 829
          Top = 96
          Width = 23
          Height = 14
          Brush.Color = clBlue
        end
        object Label16: TLabel
          Left = 858
          Top = 96
          Width = 112
          Height = 13
          Caption = 'Descontada (pendente)'
        end
        object Label48: TLabel
          Left = 242
          Top = 133
          Width = 73
          Height = 13
          Caption = 'Representante:'
        end
        object Label61: TLabel
          Left = 559
          Top = 71
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = 'NGR:'
        end
        object Label63: TLabel
          Left = 537
          Top = 90
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Aprovado:'
        end
        object Shape9: TShape
          Left = 829
          Top = 109
          Width = 23
          Height = 14
          Brush.Color = 5483007
        end
        object Label64: TLabel
          Left = 858
          Top = 109
          Width = 68
          Height = 13
          Caption = 'N'#227'o aprovado'
        end
        object edtNumDuplicata: TEdit
          Left = 317
          Top = 5
          Width = 99
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnKeyDown = edtNumDuplicataKeyDown
        end
        object RxDBLookupCombo1: TRxDBLookupCombo
          Left = 450
          Top = 2
          Width = 266
          Height = 22
          DropDownCount = 8
          Ctl3D = False
          LookupField = 'ID'
          LookupDisplay = 'NOME_INTERNO'
          LookupSource = DMCadDuplicata.dsFilial
          ParentCtl3D = False
          TabOrder = 1
        end
        object RxDBLookupCombo2: TRxDBLookupCombo
          Left = 317
          Top = 23
          Width = 399
          Height = 21
          DropDownCount = 15
          Ctl3D = False
          LookupField = 'CODIGO'
          LookupDisplay = 'NOME'
          LookupSource = DMCadDuplicata.dsPessoa
          ParentCtl3D = False
          TabOrder = 2
          OnEnter = RxDBLookupCombo2Enter
          OnExit = RxDBLookupCombo2Exit
          OnKeyDown = RxDBLookupCombo2KeyDown
        end
        object RadioGroup1: TRadioGroup
          Left = 123
          Top = 1
          Width = 91
          Height = 145
          Align = alLeft
          Caption = 'Situa'#231#227'o'
          Ctl3D = True
          ItemIndex = 0
          Items.Strings = (
            'Em Aberto'
            'Quitado'
            'Descontado'
            'Todos')
          ParentCtl3D = False
          TabOrder = 10
        end
        object RxDBLookupCombo7: TRxDBLookupCombo
          Left = 317
          Top = 84
          Width = 215
          Height = 21
          DropDownCount = 15
          Ctl3D = False
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DMCadDuplicata.dsContas
          ParentCtl3D = False
          TabOrder = 7
        end
        object RxDBLookupCombo8: TRxDBLookupCombo
          Left = 317
          Top = 104
          Width = 215
          Height = 21
          DropDownCount = 15
          Ctl3D = False
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DMCadDuplicata.dsTipoCobranca
          ParentCtl3D = False
          TabOrder = 8
        end
        object btnConsultar: TNxButton
          Left = 536
          Top = 116
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
          TabOrder = 11
          Transparent = True
          OnClick = btnConsultarClick
        end
        object NxDatePicker1: TNxDatePicker
          Left = 317
          Top = 43
          Width = 89
          Height = 21
          TabOrder = 3
          Text = '22/05/2013'
          HideFocus = False
          Date = 41416.000000000000000000
          NoneCaption = 'Limpar'
          TodayCaption = 'Hoje'
        end
        object NxDatePicker2: TNxDatePicker
          Left = 444
          Top = 43
          Width = 89
          Height = 21
          TabOrder = 4
          Text = '22/05/2013'
          HideFocus = False
          Date = 41416.000000000000000000
          NoneCaption = 'Limpar'
          TodayCaption = 'Hoje'
        end
        object NxDatePicker3: TNxDatePicker
          Left = 317
          Top = 64
          Width = 89
          Height = 21
          TabOrder = 5
          Text = '22/05/2013'
          HideFocus = False
          Date = 41416.000000000000000000
          NoneCaption = 'Limpar'
          TodayCaption = 'Hoje'
        end
        object NxDatePicker4: TNxDatePicker
          Left = 444
          Top = 64
          Width = 89
          Height = 21
          TabOrder = 6
          Text = '22/05/2013'
          HideFocus = False
          Date = 41416.000000000000000000
          NoneCaption = 'Limpar'
          TodayCaption = 'Hoje'
        end
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 122
          Height = 145
          Align = alLeft
          BevelOuter = bvSpace
          Caption = 'Panel3'
          Color = clSilver
          TabOrder = 12
          object RadioGroup2: TRadioGroup
            Left = 1
            Top = 1
            Width = 120
            Height = 110
            Align = alClient
            Caption = ' Tipo '
            Ctl3D = True
            ItemIndex = 2
            Items.Strings = (
              'Contas a Receber'
              'Contas a Pagar'
              'Ambos')
            ParentCtl3D = False
            TabOrder = 0
            OnClick = RadioGroup2Click
          end
          object RzCheckList1: TRzCheckList
            Left = 1
            Top = 111
            Width = 120
            Height = 33
            Items.Strings = (
              'Cheque'
              'Comissao')
            Items.ItemEnabled = (
              True
              True)
            Items.ItemState = (
              1
              0)
            Align = alBottom
            Color = clSilver
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            GroupColor = clSilver
            GroupFont.Charset = DEFAULT_CHARSET
            GroupFont.Color = clBlue
            GroupFont.Height = -11
            GroupFont.Name = 'MS Sans Serif'
            GroupFont.Style = [fsBold]
            ItemHeight = 13
            MultiSelect = True
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
          end
        end
        object NxComboBox2: TNxComboBox
          Left = 587
          Top = 44
          Width = 129
          Height = 21
          Cursor = crArrow
          TabOrder = 13
          ReadOnly = True
          HideFocus = False
          Style = dsDropDownList
          AutoCompleteDelay = 0
          ItemIndex = 0
          Items.Strings = (
            ''
            'Em Cart'#243'rio'
            'Em Protesto'
            'Em Cart'#243'rio / Protesto'
            'Perdido')
        end
        object btnLerItau: TBitBtn
          Left = 928
          Top = 16
          Width = 89
          Height = 25
          Caption = 'Ler titulos Itau'
          TabOrder = 14
          Visible = False
          OnClick = btnLerItauClick
        end
        object RxDBLookupCombo10: TRxDBLookupCombo
          Left = 317
          Top = 124
          Width = 215
          Height = 22
          DropDownCount = 8
          Ctl3D = False
          LookupField = 'CODIGO'
          LookupDisplay = 'NOME'
          LookupSource = DMCadDuplicata.dsVendedor
          ParentCtl3D = False
          TabOrder = 9
        end
        object ckImpNossoNumero: TCheckBox
          Left = 717
          Top = 125
          Width = 140
          Height = 17
          Caption = 'Imprimir Nosso N'#250'mero'
          TabOrder = 15
          Visible = False
        end
        object cbxNGR: TNxComboBox
          Left = 587
          Top = 64
          Width = 129
          Height = 21
          Cursor = crArrow
          TabOrder = 16
          Text = 'Ambos'
          ReadOnly = True
          HideFocus = False
          Style = dsDropDownList
          AutoCompleteDelay = 0
          ItemIndex = 0
          Items.Strings = (
            'Ambos'
            'N'#227'o mostrar NGR'
            'Somente NGR'
            '')
        end
        object cbxAprovado: TNxComboBox
          Left = 587
          Top = 83
          Width = 129
          Height = 21
          Cursor = crArrow
          TabOrder = 17
          Text = 'Ambos'
          ReadOnly = True
          HideFocus = False
          Style = dsDropDownList
          AutoCompleteDelay = 0
          ItemIndex = 0
          Items.Strings = (
            'Ambos'
            'Aprovados'
            'N'#227'o Aprovados')
        end
        object CheckBox1: TCheckBox
          Left = 718
          Top = 104
          Width = 97
          Height = 17
          Caption = 'Cancelados'
          TabOrder = 18
        end
      end
      object pnlTotal: TPanel
        Left = 0
        Top = 551
        Width = 1050
        Height = 33
        Align = alBottom
        Color = clSilver
        TabOrder = 3
        object Label36: TLabel
          Left = 5
          Top = 3
          Width = 116
          Height = 13
          Alignment = taRightJustify
          Caption = 'Total Contas a Receber:'
        end
        object Label37: TLabel
          Left = 18
          Top = 17
          Width = 103
          Height = 13
          Alignment = taRightJustify
          Caption = 'Total Contas a Pagar:'
        end
        object Label38: TLabel
          Left = 262
          Top = 3
          Width = 78
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. j'#225' Recebido:'
        end
        object Label39: TLabel
          Left = 481
          Top = 3
          Width = 71
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. a Receber:'
        end
        object Label40: TLabel
          Left = 283
          Top = 17
          Width = 57
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. j'#225' Pago:'
        end
        object Label41: TLabel
          Left = 494
          Top = 17
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. a Pagar:'
        end
        object lblCReceber: TLabel
          Left = 124
          Top = 3
          Width = 121
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0,00'
          Color = clWhite
          ParentColor = False
        end
        object lblCPagar: TLabel
          Left = 124
          Top = 17
          Width = 121
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0,00'
          Color = clWhite
          ParentColor = False
        end
        object lblCPagar_Pago: TLabel
          Left = 341
          Top = 17
          Width = 124
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0,00'
          Color = clWhite
          ParentColor = False
        end
        object lblCReceber_Pago: TLabel
          Left = 341
          Top = 3
          Width = 124
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0,00'
          Color = clWhite
          ParentColor = False
        end
        object lblCReceber_Pend: TLabel
          Left = 553
          Top = 3
          Width = 102
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0,00'
          Color = clWhite
          ParentColor = False
        end
        object lblCPagar_Pend: TLabel
          Left = 553
          Top = 17
          Width = 102
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0,00'
          Color = clWhite
          ParentColor = False
        end
        object btnRecalcular: TBitBtn
          Left = 665
          Top = 10
          Width = 69
          Height = 21
          Caption = 'Recalcular'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btnRecalcularClick
        end
        object BitBtn1: TBitBtn
          Left = 736
          Top = 10
          Width = 69
          Height = 21
          Caption = 'mais totais'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn1Click
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 177
        Width = 1050
        Height = 30
        Align = alTop
        Color = 16770764
        TabOrder = 4
        object btnPagamento: TNxButton
          Left = 1
          Top = 1
          Width = 194
          Height = 28
          Cursor = crHandPoint
          Align = alLeft
          Caption = 'Pagamento'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
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
          TabOrder = 0
          Transparent = True
          OnClick = btnPagamentoClick
        end
        object btnPagtoSelecionado: TNxButton
          Left = 195
          Top = 1
          Width = 194
          Height = 28
          Cursor = crHandPoint
          Align = alLeft
          Caption = 'Pagar Selecionados'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
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
          TabOrder = 1
          Transparent = True
          OnClick = btnPagtoSelecionadoClick
        end
        object btnEstorno: TNxButton
          Left = 389
          Top = 1
          Width = 194
          Height = 28
          Cursor = crHandPoint
          Align = alLeft
          Caption = 'Estorno Pagto.'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          GlyphSpacing = 5
          ParentFont = False
          TabOrder = 2
          Transparent = True
          OnClick = btnEstornoClick
        end
        object NxButton1: TNxButton
          Left = 772
          Top = 1
          Width = 168
          Height = 28
          Cursor = crHandPoint
          Align = alLeft
          Caption = 'Gerar comiss'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          GlyphSpacing = 5
          ParentFont = False
          PopupMenu = PopupMenu3
          ShowArrow = True
          TabOrder = 3
          Transparent = True
          Visible = False
        end
        object btnDescontada: TNxButton
          Left = 583
          Top = 1
          Width = 189
          Height = 28
          Cursor = crHandPoint
          Align = alLeft
          Caption = 'Descontar'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          GlyphSpacing = 5
          ParentFont = False
          PopupMenu = PopupMenu2
          ShowArrow = True
          TabOrder = 4
          Transparent = True
        end
      end
    end
    object TS_Cadastro: TRzTabSheet
      Caption = 'Cadastro'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1050
        Height = 30
        Align = alTop
        Color = 8404992
        TabOrder = 1
        object btnAlterar: TNxButton
          Left = 1
          Top = 1
          Width = 153
          Height = 28
          Align = alLeft
          Caption = 'Alterar'
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
          TabOrder = 0
          Transparent = True
          OnClick = btnAlterarClick
        end
        object btnConfirmar: TNxButton
          Left = 154
          Top = 1
          Width = 153
          Height = 28
          Align = alLeft
          Caption = 'Confirmar'
          Enabled = False
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
          TabOrder = 1
          Transparent = True
          OnClick = btnConfirmarClick
        end
        object btnCancelar: TNxButton
          Left = 307
          Top = 1
          Width = 147
          Height = 28
          Align = alLeft
          Caption = 'Cancelar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            AE060000424DAE06000000000000360000002800000017000000170000000100
            1800000000007806000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFEDECE4C8C7B9706E6B39384207081E0000220706
            1D3B3A4274736FCCCCBFEEEEE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7C631F1D2C0000500000810005A3
            000EB4000DB10007AB00009200006C00003C22222A83836EFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFF1F0E93C3B2F00005F000FBE00
            15BD0013B6000BB20006B30003B50003B00005A700069E00029A000092000040
            3E3E35F3F3EDFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFEAE9E11C1D210003
            950021D80015BB0007BF0000C50000C60000C60000C50000C60000C90000C800
            02B50002990000A10000651E1E21EDEDE7FFFFFFFFFFFF000000FFFFFFFFFFFF
            363427000AA50025D70017C10000CD0000CB0000C90000CD0000C90000C90000
            C90000CD0000CD0000D30000CF00029B00019400006C38382EFFFFFFFFFFFF00
            0000FFFFFF6B6549000286002AE7001DC90000D50908C18180B88E8EBD0C0DB9
            0000D30000D20000D21214B77A7BB44344AD0000C90000E100039B00009D0000
            4F6D6D55FFFFFF000000E4E1D80A0F3A0028E70023D00003D40000D28385E1FF
            FFFFFFFFFFDFE0E90709BC0000D71416BCE8E9ECFFFFFFFFFFFF6364D70000D4
            0000D40003940000970A0A26E4E4DC000000ABA69800047D002FE80016D70000
            DA0000D78C8CEEFFFFFFFEFEFDFFFFFFCDCEEC2327BAD7D8EEFFFFFFFEFEFDFF
            FFFF8F8FED0000D70000E10003B5000399000046ABAB9D0000005C5960001BC8
            0031E40005DE0000E00000E00808DEBEBEF6FFFFFFFDFDFDFFFFFFFFFFFFFFFF
            FFFDFDFDFFFFFFC8C8F70C0CDF0000DF0000E40001D700069500007E5B5A5C00
            00002024330030F60031E20000E20000E40000E30000E20A0AE2C9C9FAFFFFFE
            FDFDFDFEFEFEFDFDFDFFFFFED7D6FC1313E30000E20000E30000E50000E80007
            980000A11D1C28000000000830003AFF002EE40000E80000E80000E80000E900
            00E83338DDEEEFF9FFFFFEFDFDFDFFFFFEEFF1F93034DE0000E70000E90000E8
            0000E80000EF000AA00007AF00001F000000000B32003CFF0033E70000EC0000
            EC0000EC0000EB2932E2E9EDF6FFFFFFFDFDFDFFFFFDFDFDFDFFFFFFDFE3F41C
            24E10000EC0000EC0000ED0000F1000CA0000CB400022200000000072F003AFF
            0039EC0008EE0000F00000F0202BEBE5ECF8FFFFFFFEFEFDFFFFFEFFFFFEFFFF
            FEFEFEFDFFFFFFDEE4F71925EA0000F00000F40002E8000FA0000CB700002000
            00001D1C28002CF0003CF60020EF0000F30000F39998F9FFFFFFFDFDFDFFFFFF
            B4B4FB0000F1A9A9FBFFFFFFFEFEFDFFFFFF9595F90000F30000FB000BCC0012
            A70006AD21202B0000005B5653001BB7003FFF0036EF0004F60000F65050F7FF
            FFFFFFFFFFCFCFFD0505F50000F50000F4C8C8FCFFFFFEFFFFFF7374F80000F7
            0001F60012B30014B400008A5C5A5A000000AAA898000051003EFF003DF5002F
            F10000FA0000F92828F94949FA0101F80000F90000F90000F90000F85858F94B
            4BFA0000F90000FF0015C30018B20015BF000049ADAC9D000000E4E4DC0A0518
            0019CE0045FF003EF3002AF20001FB0000FD0000F90000FA0000FA0000FA0000
            FA0000FA0000FA0000FF0000FC0015D1001DB4001CC00005B00A0822E3E3DC00
            0000FFFFFF6C6B5300004D002EF10043FF003DF30036EF0011F70000FF0000FF
            0000FF0000FE0000FF0000FF0000FF000AEE0021CA0021C2001FC40013CA0000
            556C6C53FFFFFF000000FFFFFFFFFFFF38372B0000700023E30042FF003CF700
            3EEE0038EB0021EF0015F20011F40013EF001CE6002AD2002ACB0025CE0025CD
            0012C800007837362BFFFFFFFFFFFF000000FFFFFFFFFFFFECECE51E1D1F0000
            720017E40038F60043FD003BF3003AEC0037E60035E10032DD0030DA002DD800
            2FD90023D1000DD60000791C1B1EEBEBE4FFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFF2F2EB3D3D310000530000C0000EE2002DF70035F40035ED0034E90031
            E4002CE40024E50009D90000C20000573D3C31F1F1EAFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82826722212E00005A0000A20000E1
            0002FF0004FF0001FF0000E20000A500005C21202E808065FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEE5CB
            CBBA73736D3A3A4707062F00003107062F3A3A4771716DCACAB8EDEDE5FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
          GlyphSpacing = 5
          ParentFont = False
          TabOrder = 2
          Transparent = True
          OnClick = btnCancelarClick
        end
        object btnCobranca: TNxButton
          Left = 454
          Top = 1
          Width = 153
          Height = 28
          Align = alLeft
          Caption = 'Cobran'#231'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          GlyphSpacing = 5
          ParentFont = False
          TabOrder = 3
          Transparent = True
          OnClick = btnCobrancaClick
        end
      end
      object pnlCadastro: TPanel
        Left = 0
        Top = 30
        Width = 1050
        Height = 396
        Align = alTop
        Enabled = False
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 39
          Width = 129
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo (Receber/Pagar):'
          Color = 13224393
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label54: TLabel
          Left = 344
          Top = 39
          Width = 57
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo Doc:'
          Color = 13224393
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object pnlNota: TPanel
          Left = 1
          Top = 1
          Width = 1048
          Height = 27
          Align = alTop
          Color = clSilver
          Enabled = False
          TabOrder = 4
          object Label19: TLabel
            Left = 248
            Top = 10
            Width = 23
            Height = 13
            Alignment = taRightJustify
            Caption = 'Filial:'
          end
          object Label23: TLabel
            Left = 715
            Top = 10
            Width = 14
            Height = 13
            Alignment = taRightJustify
            Caption = 'ID:'
          end
          object lblNome_Filial: TLabel
            Left = 312
            Top = 10
            Width = 23
            Height = 13
            Caption = 'Filial:'
          end
          object DBText1: TDBText
            Left = 272
            Top = 10
            Width = 33
            Height = 13
            DataField = 'FILIAL'
            DataSource = DMCadDuplicata.dsDuplicata
          end
          object DBEdit8: TDBEdit
            Left = 730
            Top = 2
            Width = 97
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            Color = clSilver
            DataField = 'ID'
            DataSource = DMCadDuplicata.dsDuplicata
            ReadOnly = True
            TabOrder = 0
          end
        end
        object RxDBComboBox11: TRxDBComboBox
          Left = 142
          Top = 31
          Width = 121
          Height = 21
          Style = csDropDownList
          Color = 14286771
          DataField = 'TIPO_ES'
          DataSource = DMCadDuplicata.dsDuplicata
          EnableValues = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 13
          Items.Strings = (
            'Receber'
            'Pagar')
          ParentFont = False
          TabOrder = 0
          TabStop = False
          Values.Strings = (
            'E'
            'S')
          OnChange = RxDBComboBox11Change
          OnEnter = RxDBComboBox11Enter
          OnExit = RxDBComboBox11Exit
        end
        object RxDBComboBox1: TRxDBComboBox
          Left = 406
          Top = 31
          Width = 121
          Height = 21
          Style = csDropDownList
          Color = 14286771
          DataField = 'TIPO_MOV'
          DataSource = DMCadDuplicata.dsDuplicata
          EnableValues = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 13
          Items.Strings = (
            'Nota'
            'Documento')
          ParentFont = False
          TabOrder = 1
          Values.Strings = (
            'N'
            'D')
          OnChange = RxDBComboBox1Change
        end
        object Panel6: TPanel
          Left = 1
          Top = 55
          Width = 1048
          Height = 340
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 3
          OnEnter = Panel6Enter
          object RzGroupBox3: TRzGroupBox
            Left = 10
            Top = 2
            Width = 529
            Height = 149
            BorderColor = clNavy
            BorderInner = fsButtonUp
            BorderOuter = fsBump
            Caption = ' Dados do T'#237'tulo '
            Ctl3D = True
            FlatColor = clNavy
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            VisualStyle = vsGradient
            object Label2: TLabel
              Left = 21
              Top = 22
              Width = 73
              Height = 13
              Alignment = taRightJustify
              Caption = 'N'#186' Documento:'
            end
            object Label17: TLabel
              Left = 353
              Top = 18
              Width = 68
              Height = 13
              Alignment = taRightJustify
              Caption = 'Data Emiss'#227'o:'
            end
            object Label4: TLabel
              Left = 225
              Top = 21
              Width = 69
              Height = 13
              Alignment = taRightJustify
              Caption = 'N'#186' da Parcela:'
            end
            object Label21: TLabel
              Left = 9
              Top = 40
              Width = 85
              Height = 13
              Alignment = taRightJustify
              Caption = 'Data Vencimento:'
            end
            object Label5: TLabel
              Left = 28
              Top = 60
              Width = 66
              Height = 13
              Alignment = taRightJustify
              Caption = 'Valor Parcela:'
            end
            object lblPessoa: TLabel
              Left = 59
              Top = 78
              Width = 35
              Height = 13
              Alignment = taRightJustify
              Caption = 'Cliente:'
            end
            object SpeedButton1: TSpeedButton
              Left = 454
              Top = 67
              Width = 23
              Height = 22
              Hint = 'Atualiza tabela'
              Glyph.Data = {
                E6040000424DE604000000000000360000002800000014000000140000000100
                180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFDF9FAFBF2
                F1F1EEEEEEEBEBEBE9EAECE4E8E9E2E4E7E3E4E6E4E6E7E6E9EAEBECF0F2F4F7
                F2F6F5F7F6F6FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF1EBE9D0C5BADBDEE2C9CC
                CEC1C3C4B6B0AEB1A397AA876AA6764FA87044AC754BB39174C7BCB3D5D6DBE5
                E7E8EFEFEEFDFDFDFFFFFFFFFFFFFFFFFFEBE5DC9F6B46DBDBDEC9C8CAB9A796
                B68861C18451D29861CD9460CE945CCC9258C58346B26E36C09E83E3E1E3EFF1
                F2FBFBFBFFFFFFFFFFFFFFFFFFF5F0EEBC8A63C3A48CC3A58CC68F61CF9B68C8
                9565CA9361CD9364C18951BF864FC18853C6884FB8763BCEB3A1F7FCFFFEFEFE
                FFFFFFFFFFFFFFFFFFF7F3EFBD916CD5B493D6AD8BD8AA84CB9668CB9664BA85
                53BA8A61C6A281BF926DBB814EC08F67B47437BE8C5EEDE6DFFFFFFFFFFFFFFF
                FFFFFFFFFFF6F2EEB98F69E3C2A3DDB99AE0BF9CCA9C72BD9473E2CFC0E5D9D0
                F1EEECEFE7E3E1CAB1DCC3AACFB193A96B33E4D1BFFFFFFFFFFFFFFFFFFFFFFF
                FFF7F2EFBA9069DFBB9BDEBD9DC79F7BD8C4B1F1EDEAFFFFFFFFFFFFFFFFFFFF
                FFFFF7F3EEEAD6C4FEFEFEB58560D7BDA9FFFFFFFFFFFFFFFFFFFFFFFFF7F3EF
                BD946CDFBC9CD9B996D8B694C8AE97F6F6F6FFFFFFFEFFFFFFFEFFFFFFFFFBF9
                F7F4EBE5FFFFFFC1A287D9C5B5FFFFFFFFFFFFFFFFFFFFFFFFF5EEEAB07E53E0
                BD9FDCB793E2BE9FCE9E73D0B499FCFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFE2D6CBEBE3DCFFFFFFFFFFFFFFFFFFFFFFFFF9F9F5BEA994C2A797BFA1
                92BB9E8CB99C89B39983F7F5F2FFFFFFAB7957BB967BB79676B89778B89777B9
                997EECE3DCFFFFFFFFFFFFFFFFFFFFFFFFF5F0E8CAB09BFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFC9B7A7D3A679DBB088D9AA84DCAD87C7986EE9DB
                CDFFFFFFFFFFFFFFFFFFFFFFFFE6D8CEB67B50E8D0BCDFC7B7F3EFEBFFFFFFFE
                FFFEFEFFFEFFFFFFFFFFFFBA9F8CD6A57DCF9B6ECD9B6CBF9164E9DDD2FFFFFF
                FFFFFFFFFFFFFFFFFFEDE4DCA86B3BBF865CC29776EAE2DBFFFFFFFFFFFFFFFF
                FFFDFFFFDED0C4D4B8A3C79B71D1A478CD9E70BF9265E8DDD0FFFFFFFFFFFFFF
                FFFFFFFFFFF9F5F2BD8F6DBC8A639D5F2DB58968E0D2C8E7DCD3DAC8B8DECBBA
                C09A77D4A882D0A479D2A478D3A77CBF8E64E8DBCFFFFFFFFFFFFFFFFFFFFFFF
                FFF7F5F2CAAB93E5CCB7CCA788C29471CDAC8ED9BDA3CAA98AD7B094E8CEB2DB
                BEA1DDB995C99D76C0946FC39168EADACFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
                E1D2C6C5A284F6E3D0F0DCC9E6CEB7E6CCB5E5CBB6E7CCB5E5CCB2E3C2A4C299
                78CFB9A6D2BEADB58257E7D5C6FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFDFEFEDA
                C9BBBA9675D4B193EDD1B8EED3BCECCEB6D1AF8EBE916DC2A386EEE6E2F9F8F6
                FFFFFFBD9A80DBC9BAFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFDFEFEF6F2
                EFD9C8BDBFA38CC3A388B99D83CFBEACFAF6F4F7F4F2FFFFFFFFFFFFFFFFFFF8
                F7F5F8F7F4FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFFFFFFFFFF
                FFFEFEFFFFFFFFFFFFFF}
              Margin = 0
              OnClick = SpeedButton1Click
            end
            object Label45: TLabel
              Left = 15
              Top = 96
              Width = 79
              Height = 13
              Alignment = taRightJustify
              Caption = 'Descri'#231#227'o (Obs):'
            end
            object Label8: TLabel
              Left = 311
              Top = 58
              Width = 41
              Height = 13
              Alignment = taRightJustify
              Caption = 'N'#186' Nota:'
            end
            object Label46: TLabel
              Left = 437
              Top = 58
              Width = 27
              Height = 13
              Alignment = taRightJustify
              Caption = 'S'#233'rie:'
            end
            object Label55: TLabel
              Left = 284
              Top = 132
              Width = 112
              Height = 13
              Alignment = taRightJustify
              Caption = 'M'#234's/Ano Compet'#234'ncia:'
            end
            object Label44: TLabel
              Left = 6
              Top = 112
              Width = 88
              Height = 13
              Alignment = taRightJustify
              Caption = 'Descri'#231#227'o 2 (Obs):'
            end
            object DBEdit7: TDBEdit
              Left = 96
              Top = 14
              Width = 121
              Height = 19
              CharCase = ecUpperCase
              Ctl3D = False
              DataField = 'NUMDUPLICATA'
              DataSource = DMCadDuplicata.dsDuplicata
              ParentCtl3D = False
              TabOrder = 0
              OnExit = DBEdit7Exit
            end
            object DBDateEdit1: TDBDateEdit
              Left = 423
              Top = 12
              Width = 90
              Height = 21
              DataField = 'DTEMISSAO'
              DataSource = DMCadDuplicata.dsDuplicata
              Ctl3D = False
              NumGlyphs = 2
              ParentCtl3D = False
              TabOrder = 2
              StartOfWeek = Sun
            end
            object DBEdit1: TDBEdit
              Left = 296
              Top = 15
              Width = 39
              Height = 19
              CharCase = ecUpperCase
              Ctl3D = False
              DataField = 'PARCELA'
              DataSource = DMCadDuplicata.dsDuplicata
              ParentCtl3D = False
              TabOrder = 1
            end
            object DBDateEdit2: TDBDateEdit
              Left = 96
              Top = 32
              Width = 121
              Height = 21
              DataField = 'DTVENCIMENTO'
              DataSource = DMCadDuplicata.dsDuplicata
              Ctl3D = False
              NumGlyphs = 2
              ParentCtl3D = False
              TabOrder = 3
              StartOfWeek = Sun
            end
            object DBEdit4: TDBEdit
              Left = 96
              Top = 52
              Width = 121
              Height = 19
              CharCase = ecUpperCase
              Ctl3D = False
              DataField = 'VLR_PARCELA'
              DataSource = DMCadDuplicata.dsDuplicata
              ParentCtl3D = False
              TabOrder = 7
            end
            object RxDBLookupCombo3: TRxDBLookupCombo
              Left = 96
              Top = 70
              Width = 358
              Height = 22
              DropDownCount = 15
              Ctl3D = False
              DataField = 'ID_PESSOA'
              DataSource = DMCadDuplicata.dsDuplicata
              LookupField = 'CODIGO'
              LookupDisplay = 'NOME'
              LookupSource = DMCadDuplicata.dsPessoa
              ParentCtl3D = False
              TabOrder = 9
              OnEnter = RxDBLookupCombo3Enter
              OnExit = RxDBLookupCombo3Exit
              OnKeyDown = RxDBLookupCombo3KeyDown
            end
            object DBEdit18: TDBEdit
              Left = 96
              Top = 90
              Width = 381
              Height = 19
              CharCase = ecUpperCase
              Ctl3D = False
              DataField = 'DESCRICAO'
              DataSource = DMCadDuplicata.dsDuplicata
              ParentCtl3D = False
              TabOrder = 10
            end
            object NxButton2: TNxButton
              Left = 218
              Top = 38
              Width = 81
              Height = 32
              Hint = 'Gerar autom'#225'tico os servi'#231'os'
              Caption = '..Parcelas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
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
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 8
              TabStop = False
              OnClick = NxButton2Click
            end
            object DBEdit2: TDBEdit
              Left = 354
              Top = 52
              Width = 80
              Height = 19
              TabStop = False
              CharCase = ecUpperCase
              Ctl3D = False
              DataField = 'NUMNOTA'
              DataSource = DMCadDuplicata.dsDuplicata
              ParentCtl3D = False
              TabOrder = 5
            end
            object DBEdit19: TDBEdit
              Left = 466
              Top = 52
              Width = 47
              Height = 19
              CharCase = ecUpperCase
              Ctl3D = False
              DataField = 'SERIE'
              DataSource = DMCadDuplicata.dsDuplicata
              ParentCtl3D = False
              TabOrder = 6
            end
            object DBEdit20: TDBEdit
              Left = 398
              Top = 126
              Width = 39
              Height = 19
              CharCase = ecUpperCase
              Ctl3D = False
              DataField = 'MES_REF'
              DataSource = DMCadDuplicata.dsDuplicata
              ParentCtl3D = False
              TabOrder = 12
            end
            object DBEdit21: TDBEdit
              Left = 438
              Top = 126
              Width = 39
              Height = 19
              CharCase = ecUpperCase
              Ctl3D = False
              DataField = 'ANO_REF'
              DataSource = DMCadDuplicata.dsDuplicata
              ParentCtl3D = False
              TabOrder = 13
            end
            object DBEdit23: TDBEdit
              Left = 96
              Top = 108
              Width = 381
              Height = 19
              CharCase = ecUpperCase
              Ctl3D = False
              DataField = 'DESCRICAO2'
              DataSource = DMCadDuplicata.dsDuplicata
              ParentCtl3D = False
              TabOrder = 11
            end
            object DBCheckBox10: TDBCheckBox
              Left = 354
              Top = 34
              Width = 63
              Height = 17
              Caption = 'NGR'
              DataField = 'NGR'
              DataSource = DMCadDuplicata.dsDuplicata
              TabOrder = 4
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
          object RzGroupBox4: TRzGroupBox
            Left = 10
            Top = 158
            Width = 530
            Height = 113
            BorderColor = clBlack
            BorderInner = fsButtonUp
            BorderOuter = fsBump
            Caption = ' Dados da Cobran'#231'a '
            Ctl3D = True
            FlatColor = clRed
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            VisualStyle = vsGradient
            object Label7: TLabel
              Left = 102
              Top = 17
              Width = 34
              Height = 13
              Alignment = taRightJustify
              Caption = 'Banco:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label9: TLabel
              Left = 63
              Top = 37
              Width = 73
              Height = 13
              Alignment = taRightJustify
              Caption = 'Tipo Cobran'#231'a:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label52: TLabel
              Left = 50
              Top = 77
              Width = 86
              Height = 13
              Alignment = taRightJustify
              Caption = 'Conta Or'#231'amento:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label29: TLabel
              Left = 39
              Top = 97
              Width = 97
              Height = 13
              Alignment = taRightJustify
              Caption = 'Data Entrada T'#237'tulo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object SpeedButton4: TSpeedButton
              Left = 454
              Top = 69
              Width = 23
              Height = 21
              Hint = 'Atualiza tabela de Tipo de Cobran'#231'a'
              Glyph.Data = {
                E6040000424DE604000000000000360000002800000014000000140000000100
                180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFDF9FAFBF2
                F1F1EEEEEEEBEBEBE9EAECE4E8E9E2E4E7E3E4E6E4E6E7E6E9EAEBECF0F2F4F7
                F2F6F5F7F6F6FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF1EBE9D0C5BADBDEE2C9CC
                CEC1C3C4B6B0AEB1A397AA876AA6764FA87044AC754BB39174C7BCB3D5D6DBE5
                E7E8EFEFEEFDFDFDFFFFFFFFFFFFFFFFFFEBE5DC9F6B46DBDBDEC9C8CAB9A796
                B68861C18451D29861CD9460CE945CCC9258C58346B26E36C09E83E3E1E3EFF1
                F2FBFBFBFFFFFFFFFFFFFFFFFFF5F0EEBC8A63C3A48CC3A58CC68F61CF9B68C8
                9565CA9361CD9364C18951BF864FC18853C6884FB8763BCEB3A1F7FCFFFEFEFE
                FFFFFFFFFFFFFFFFFFF7F3EFBD916CD5B493D6AD8BD8AA84CB9668CB9664BA85
                53BA8A61C6A281BF926DBB814EC08F67B47437BE8C5EEDE6DFFFFFFFFFFFFFFF
                FFFFFFFFFFF6F2EEB98F69E3C2A3DDB99AE0BF9CCA9C72BD9473E2CFC0E5D9D0
                F1EEECEFE7E3E1CAB1DCC3AACFB193A96B33E4D1BFFFFFFFFFFFFFFFFFFFFFFF
                FFF7F2EFBA9069DFBB9BDEBD9DC79F7BD8C4B1F1EDEAFFFFFFFFFFFFFFFFFFFF
                FFFFF7F3EEEAD6C4FEFEFEB58560D7BDA9FFFFFFFFFFFFFFFFFFFFFFFFF7F3EF
                BD946CDFBC9CD9B996D8B694C8AE97F6F6F6FFFFFFFEFFFFFFFEFFFFFFFFFBF9
                F7F4EBE5FFFFFFC1A287D9C5B5FFFFFFFFFFFFFFFFFFFFFFFFF5EEEAB07E53E0
                BD9FDCB793E2BE9FCE9E73D0B499FCFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFE2D6CBEBE3DCFFFFFFFFFFFFFFFFFFFFFFFFF9F9F5BEA994C2A797BFA1
                92BB9E8CB99C89B39983F7F5F2FFFFFFAB7957BB967BB79676B89778B89777B9
                997EECE3DCFFFFFFFFFFFFFFFFFFFFFFFFF5F0E8CAB09BFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFC9B7A7D3A679DBB088D9AA84DCAD87C7986EE9DB
                CDFFFFFFFFFFFFFFFFFFFFFFFFE6D8CEB67B50E8D0BCDFC7B7F3EFEBFFFFFFFE
                FFFEFEFFFEFFFFFFFFFFFFBA9F8CD6A57DCF9B6ECD9B6CBF9164E9DDD2FFFFFF
                FFFFFFFFFFFFFFFFFFEDE4DCA86B3BBF865CC29776EAE2DBFFFFFFFFFFFFFFFF
                FFFDFFFFDED0C4D4B8A3C79B71D1A478CD9E70BF9265E8DDD0FFFFFFFFFFFFFF
                FFFFFFFFFFF9F5F2BD8F6DBC8A639D5F2DB58968E0D2C8E7DCD3DAC8B8DECBBA
                C09A77D4A882D0A479D2A478D3A77CBF8E64E8DBCFFFFFFFFFFFFFFFFFFFFFFF
                FFF7F5F2CAAB93E5CCB7CCA788C29471CDAC8ED9BDA3CAA98AD7B094E8CEB2DB
                BEA1DDB995C99D76C0946FC39168EADACFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
                E1D2C6C5A284F6E3D0F0DCC9E6CEB7E6CCB5E5CBB6E7CCB5E5CCB2E3C2A4C299
                78CFB9A6D2BEADB58257E7D5C6FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFDFEFEDA
                C9BBBA9675D4B193EDD1B8EED3BCECCEB6D1AF8EBE916DC2A386EEE6E2F9F8F6
                FFFFFFBD9A80DBC9BAFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFDFEFEF6F2
                EFD9C8BDBFA38CC3A388B99D83CFBEACFAF6F4F7F4F2FFFFFFFFFFFFFFFFFFF8
                F7F5F8F7F4FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFFFFFFFFFF
                FFFEFEFFFFFFFFFFFFFF}
              Margin = 0
              OnClick = SpeedButton4Click
            end
            object SpeedButton3: TSpeedButton
              Left = 454
              Top = 28
              Width = 23
              Height = 22
              Hint = 'Atualiza tabela de Tipo de Cobran'#231'a'
              Glyph.Data = {
                E6040000424DE604000000000000360000002800000014000000140000000100
                180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFDF9FAFBF2
                F1F1EEEEEEEBEBEBE9EAECE4E8E9E2E4E7E3E4E6E4E6E7E6E9EAEBECF0F2F4F7
                F2F6F5F7F6F6FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF1EBE9D0C5BADBDEE2C9CC
                CEC1C3C4B6B0AEB1A397AA876AA6764FA87044AC754BB39174C7BCB3D5D6DBE5
                E7E8EFEFEEFDFDFDFFFFFFFFFFFFFFFFFFEBE5DC9F6B46DBDBDEC9C8CAB9A796
                B68861C18451D29861CD9460CE945CCC9258C58346B26E36C09E83E3E1E3EFF1
                F2FBFBFBFFFFFFFFFFFFFFFFFFF5F0EEBC8A63C3A48CC3A58CC68F61CF9B68C8
                9565CA9361CD9364C18951BF864FC18853C6884FB8763BCEB3A1F7FCFFFEFEFE
                FFFFFFFFFFFFFFFFFFF7F3EFBD916CD5B493D6AD8BD8AA84CB9668CB9664BA85
                53BA8A61C6A281BF926DBB814EC08F67B47437BE8C5EEDE6DFFFFFFFFFFFFFFF
                FFFFFFFFFFF6F2EEB98F69E3C2A3DDB99AE0BF9CCA9C72BD9473E2CFC0E5D9D0
                F1EEECEFE7E3E1CAB1DCC3AACFB193A96B33E4D1BFFFFFFFFFFFFFFFFFFFFFFF
                FFF7F2EFBA9069DFBB9BDEBD9DC79F7BD8C4B1F1EDEAFFFFFFFFFFFFFFFFFFFF
                FFFFF7F3EEEAD6C4FEFEFEB58560D7BDA9FFFFFFFFFFFFFFFFFFFFFFFFF7F3EF
                BD946CDFBC9CD9B996D8B694C8AE97F6F6F6FFFFFFFEFFFFFFFEFFFFFFFFFBF9
                F7F4EBE5FFFFFFC1A287D9C5B5FFFFFFFFFFFFFFFFFFFFFFFFF5EEEAB07E53E0
                BD9FDCB793E2BE9FCE9E73D0B499FCFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFE2D6CBEBE3DCFFFFFFFFFFFFFFFFFFFFFFFFF9F9F5BEA994C2A797BFA1
                92BB9E8CB99C89B39983F7F5F2FFFFFFAB7957BB967BB79676B89778B89777B9
                997EECE3DCFFFFFFFFFFFFFFFFFFFFFFFFF5F0E8CAB09BFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFC9B7A7D3A679DBB088D9AA84DCAD87C7986EE9DB
                CDFFFFFFFFFFFFFFFFFFFFFFFFE6D8CEB67B50E8D0BCDFC7B7F3EFEBFFFFFFFE
                FFFEFEFFFEFFFFFFFFFFFFBA9F8CD6A57DCF9B6ECD9B6CBF9164E9DDD2FFFFFF
                FFFFFFFFFFFFFFFFFFEDE4DCA86B3BBF865CC29776EAE2DBFFFFFFFFFFFFFFFF
                FFFDFFFFDED0C4D4B8A3C79B71D1A478CD9E70BF9265E8DDD0FFFFFFFFFFFFFF
                FFFFFFFFFFF9F5F2BD8F6DBC8A639D5F2DB58968E0D2C8E7DCD3DAC8B8DECBBA
                C09A77D4A882D0A479D2A478D3A77CBF8E64E8DBCFFFFFFFFFFFFFFFFFFFFFFF
                FFF7F5F2CAAB93E5CCB7CCA788C29471CDAC8ED9BDA3CAA98AD7B094E8CEB2DB
                BEA1DDB995C99D76C0946FC39168EADACFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
                E1D2C6C5A284F6E3D0F0DCC9E6CEB7E6CCB5E5CBB6E7CCB5E5CCB2E3C2A4C299
                78CFB9A6D2BEADB58257E7D5C6FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFDFEFEDA
                C9BBBA9675D4B193EDD1B8EED3BCECCEB6D1AF8EBE916DC2A386EEE6E2F9F8F6
                FFFFFFBD9A80DBC9BAFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFDFEFEF6F2
                EFD9C8BDBFA38CC3A388B99D83CFBEACFAF6F4F7F4F2FFFFFFFFFFFFFFFFFFF8
                F7F5F8F7F4FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFFFFFFFFFF
                FFFEFEFFFFFFFFFFFFFF}
              Margin = 0
              OnClick = SpeedButton3Click
            end
            object SpeedButton2: TSpeedButton
              Left = 454
              Top = 7
              Width = 23
              Height = 22
              Hint = 'Atualiza tabela de Bancos'
              Glyph.Data = {
                E6040000424DE604000000000000360000002800000014000000140000000100
                180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFDF9FAFBF2
                F1F1EEEEEEEBEBEBE9EAECE4E8E9E2E4E7E3E4E6E4E6E7E6E9EAEBECF0F2F4F7
                F2F6F5F7F6F6FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF1EBE9D0C5BADBDEE2C9CC
                CEC1C3C4B6B0AEB1A397AA876AA6764FA87044AC754BB39174C7BCB3D5D6DBE5
                E7E8EFEFEEFDFDFDFFFFFFFFFFFFFFFFFFEBE5DC9F6B46DBDBDEC9C8CAB9A796
                B68861C18451D29861CD9460CE945CCC9258C58346B26E36C09E83E3E1E3EFF1
                F2FBFBFBFFFFFFFFFFFFFFFFFFF5F0EEBC8A63C3A48CC3A58CC68F61CF9B68C8
                9565CA9361CD9364C18951BF864FC18853C6884FB8763BCEB3A1F7FCFFFEFEFE
                FFFFFFFFFFFFFFFFFFF7F3EFBD916CD5B493D6AD8BD8AA84CB9668CB9664BA85
                53BA8A61C6A281BF926DBB814EC08F67B47437BE8C5EEDE6DFFFFFFFFFFFFFFF
                FFFFFFFFFFF6F2EEB98F69E3C2A3DDB99AE0BF9CCA9C72BD9473E2CFC0E5D9D0
                F1EEECEFE7E3E1CAB1DCC3AACFB193A96B33E4D1BFFFFFFFFFFFFFFFFFFFFFFF
                FFF7F2EFBA9069DFBB9BDEBD9DC79F7BD8C4B1F1EDEAFFFFFFFFFFFFFFFFFFFF
                FFFFF7F3EEEAD6C4FEFEFEB58560D7BDA9FFFFFFFFFFFFFFFFFFFFFFFFF7F3EF
                BD946CDFBC9CD9B996D8B694C8AE97F6F6F6FFFFFFFEFFFFFFFEFFFFFFFFFBF9
                F7F4EBE5FFFFFFC1A287D9C5B5FFFFFFFFFFFFFFFFFFFFFFFFF5EEEAB07E53E0
                BD9FDCB793E2BE9FCE9E73D0B499FCFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFE2D6CBEBE3DCFFFFFFFFFFFFFFFFFFFFFFFFF9F9F5BEA994C2A797BFA1
                92BB9E8CB99C89B39983F7F5F2FFFFFFAB7957BB967BB79676B89778B89777B9
                997EECE3DCFFFFFFFFFFFFFFFFFFFFFFFFF5F0E8CAB09BFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFC9B7A7D3A679DBB088D9AA84DCAD87C7986EE9DB
                CDFFFFFFFFFFFFFFFFFFFFFFFFE6D8CEB67B50E8D0BCDFC7B7F3EFEBFFFFFFFE
                FFFEFEFFFEFFFFFFFFFFFFBA9F8CD6A57DCF9B6ECD9B6CBF9164E9DDD2FFFFFF
                FFFFFFFFFFFFFFFFFFEDE4DCA86B3BBF865CC29776EAE2DBFFFFFFFFFFFFFFFF
                FFFDFFFFDED0C4D4B8A3C79B71D1A478CD9E70BF9265E8DDD0FFFFFFFFFFFFFF
                FFFFFFFFFFF9F5F2BD8F6DBC8A639D5F2DB58968E0D2C8E7DCD3DAC8B8DECBBA
                C09A77D4A882D0A479D2A478D3A77CBF8E64E8DBCFFFFFFFFFFFFFFFFFFFFFFF
                FFF7F5F2CAAB93E5CCB7CCA788C29471CDAC8ED9BDA3CAA98AD7B094E8CEB2DB
                BEA1DDB995C99D76C0946FC39168EADACFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
                E1D2C6C5A284F6E3D0F0DCC9E6CEB7E6CCB5E5CBB6E7CCB5E5CCB2E3C2A4C299
                78CFB9A6D2BEADB58257E7D5C6FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFDFEFEDA
                C9BBBA9675D4B193EDD1B8EED3BCECCEB6D1AF8EBE916DC2A386EEE6E2F9F8F6
                FFFFFFBD9A80DBC9BAFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFDFEFEF6F2
                EFD9C8BDBFA38CC3A388B99D83CFBEACFAF6F4F7F4F2FFFFFFFFFFFFFFFFFFF8
                F7F5F8F7F4FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFFFFFFFFFF
                FFFEFEFFFFFFFFFFFFFF}
              Margin = 0
              OnClick = SpeedButton2Click
            end
            object Label60: TLabel
              Left = 97
              Top = 57
              Width = 39
              Height = 13
              Alignment = taRightJustify
              Caption = 'Carteira:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object SpeedButton7: TSpeedButton
              Left = 454
              Top = 48
              Width = 23
              Height = 22
              Hint = 'Atualiza tabela de Tipo de Cobran'#231'a'
              Glyph.Data = {
                E6040000424DE604000000000000360000002800000014000000140000000100
                180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFDF9FAFBF2
                F1F1EEEEEEEBEBEBE9EAECE4E8E9E2E4E7E3E4E6E4E6E7E6E9EAEBECF0F2F4F7
                F2F6F5F7F6F6FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF1EBE9D0C5BADBDEE2C9CC
                CEC1C3C4B6B0AEB1A397AA876AA6764FA87044AC754BB39174C7BCB3D5D6DBE5
                E7E8EFEFEEFDFDFDFFFFFFFFFFFFFFFFFFEBE5DC9F6B46DBDBDEC9C8CAB9A796
                B68861C18451D29861CD9460CE945CCC9258C58346B26E36C09E83E3E1E3EFF1
                F2FBFBFBFFFFFFFFFFFFFFFFFFF5F0EEBC8A63C3A48CC3A58CC68F61CF9B68C8
                9565CA9361CD9364C18951BF864FC18853C6884FB8763BCEB3A1F7FCFFFEFEFE
                FFFFFFFFFFFFFFFFFFF7F3EFBD916CD5B493D6AD8BD8AA84CB9668CB9664BA85
                53BA8A61C6A281BF926DBB814EC08F67B47437BE8C5EEDE6DFFFFFFFFFFFFFFF
                FFFFFFFFFFF6F2EEB98F69E3C2A3DDB99AE0BF9CCA9C72BD9473E2CFC0E5D9D0
                F1EEECEFE7E3E1CAB1DCC3AACFB193A96B33E4D1BFFFFFFFFFFFFFFFFFFFFFFF
                FFF7F2EFBA9069DFBB9BDEBD9DC79F7BD8C4B1F1EDEAFFFFFFFFFFFFFFFFFFFF
                FFFFF7F3EEEAD6C4FEFEFEB58560D7BDA9FFFFFFFFFFFFFFFFFFFFFFFFF7F3EF
                BD946CDFBC9CD9B996D8B694C8AE97F6F6F6FFFFFFFEFFFFFFFEFFFFFFFFFBF9
                F7F4EBE5FFFFFFC1A287D9C5B5FFFFFFFFFFFFFFFFFFFFFFFFF5EEEAB07E53E0
                BD9FDCB793E2BE9FCE9E73D0B499FCFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFE2D6CBEBE3DCFFFFFFFFFFFFFFFFFFFFFFFFF9F9F5BEA994C2A797BFA1
                92BB9E8CB99C89B39983F7F5F2FFFFFFAB7957BB967BB79676B89778B89777B9
                997EECE3DCFFFFFFFFFFFFFFFFFFFFFFFFF5F0E8CAB09BFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFC9B7A7D3A679DBB088D9AA84DCAD87C7986EE9DB
                CDFFFFFFFFFFFFFFFFFFFFFFFFE6D8CEB67B50E8D0BCDFC7B7F3EFEBFFFFFFFE
                FFFEFEFFFEFFFFFFFFFFFFBA9F8CD6A57DCF9B6ECD9B6CBF9164E9DDD2FFFFFF
                FFFFFFFFFFFFFFFFFFEDE4DCA86B3BBF865CC29776EAE2DBFFFFFFFFFFFFFFFF
                FFFDFFFFDED0C4D4B8A3C79B71D1A478CD9E70BF9265E8DDD0FFFFFFFFFFFFFF
                FFFFFFFFFFF9F5F2BD8F6DBC8A639D5F2DB58968E0D2C8E7DCD3DAC8B8DECBBA
                C09A77D4A882D0A479D2A478D3A77CBF8E64E8DBCFFFFFFFFFFFFFFFFFFFFFFF
                FFF7F5F2CAAB93E5CCB7CCA788C29471CDAC8ED9BDA3CAA98AD7B094E8CEB2DB
                BEA1DDB995C99D76C0946FC39168EADACFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
                E1D2C6C5A284F6E3D0F0DCC9E6CEB7E6CCB5E5CBB6E7CCB5E5CCB2E3C2A4C299
                78CFB9A6D2BEADB58257E7D5C6FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFDFEFEDA
                C9BBBA9675D4B193EDD1B8EED3BCECCEB6D1AF8EBE916DC2A386EEE6E2F9F8F6
                FFFFFFBD9A80DBC9BAFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFDFEFEF6F2
                EFD9C8BDBFA38CC3A388B99D83CFBEACFAF6F4F7F4F2FFFFFFFFFFFFFFFFFFF8
                F7F5F8F7F4FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFFFFFFFFFF
                FFFEFEFFFFFFFFFFFFFF}
              Margin = 0
              OnClick = SpeedButton7Click
            end
            object Label62: TLabel
              Left = 359
              Top = 97
              Width = 26
              Height = 13
              Alignment = taRightJustify
              Caption = 'Data:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object RxDBLookupCombo4: TRxDBLookupCombo
              Left = 138
              Top = 9
              Width = 316
              Height = 21
              DropDownCount = 15
              Ctl3D = False
              DataField = 'ID_CONTA_BOLETO'
              DataSource = DMCadDuplicata.dsDuplicata
              LookupField = 'ID'
              LookupDisplay = 'NOME'
              LookupSource = DMCadDuplicata.dsContas
              ParentCtl3D = False
              TabOrder = 0
              OnEnter = RxDBLookupCombo4Enter
            end
            object RxDBLookupCombo5: TRxDBLookupCombo
              Left = 138
              Top = 29
              Width = 316
              Height = 21
              DropDownCount = 15
              Ctl3D = False
              DataField = 'ID_TIPOCOBRANCA'
              DataSource = DMCadDuplicata.dsDuplicata
              LookupField = 'ID'
              LookupDisplay = 'NOME'
              LookupSource = DMCadDuplicata.dsTipoCobranca
              ParentCtl3D = False
              TabOrder = 1
              OnEnter = RxDBLookupCombo5Enter
            end
            object RxDBLookupCombo9: TRxDBLookupCombo
              Left = 138
              Top = 69
              Width = 316
              Height = 21
              DropDownCount = 15
              Ctl3D = False
              DataField = 'ID_CONTA_ORCAMENTO'
              DataSource = DMCadDuplicata.dsDuplicata
              LookupField = 'ID'
              LookupDisplay = 'DESCRICAO'
              LookupSource = DMCadDuplicata.dsContaOrcamento
              ParentCtl3D = False
              TabOrder = 3
              OnCloseUp = RxDBLookupCombo9CloseUp
              OnDropDown = RxDBLookupCombo9DropDown
              OnEnter = RxDBLookupCombo9Enter
              OnExit = RxDBLookupCombo9Exit
              OnKeyDown = RxDBLookupCombo9KeyDown
            end
            object DBDateEdit3: TDBDateEdit
              Left = 138
              Top = 89
              Width = 90
              Height = 21
              DataField = 'DTRECEBIMENTO_TITULO'
              DataSource = DMCadDuplicata.dsDuplicata
              Ctl3D = False
              NumGlyphs = 2
              ParentCtl3D = False
              TabOrder = 4
              StartOfWeek = Sun
            end
            object RxDBLookupCombo13: TRxDBLookupCombo
              Left = 138
              Top = 49
              Width = 316
              Height = 21
              DropDownCount = 15
              Ctl3D = False
              DataField = 'ID_CARTEIRA'
              DataSource = DMCadDuplicata.dsDuplicata
              LookupField = 'ID'
              LookupDisplay = 'NOME'
              LookupSource = DMCadDuplicata.dsCarteira
              ParentCtl3D = False
              TabOrder = 2
              OnEnter = RxDBLookupCombo13Enter
            end
            object DBCheckBox11: TDBCheckBox
              Left = 283
              Top = 96
              Width = 71
              Height = 15
              Caption = 'Aprovado'
              DataField = 'APROVADO'
              DataSource = DMCadDuplicata.dsDuplicata
              TabOrder = 5
              ValueChecked = 'S'
              ValueUnchecked = 'N'
              OnExit = DBCheckBox11Exit
            end
            object DBDateEdit4: TDBDateEdit
              Left = 387
              Top = 89
              Width = 90
              Height = 21
              DataField = 'DTAPROVADO'
              DataSource = DMCadDuplicata.dsDuplicata
              Ctl3D = False
              NumGlyphs = 2
              ParentCtl3D = False
              TabOrder = 6
              StartOfWeek = Sun
            end
          end
          object gbxVendedor: TRzGroupBox
            Left = 10
            Top = 273
            Width = 396
            Height = 60
            BorderColor = clNavy
            BorderInner = fsButtonUp
            BorderOuter = fsBump
            Caption = ' Vendedor / Representante '
            Ctl3D = True
            FlatColor = clTeal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
            VisualStyle = vsGradient
            object lblVendedor: TLabel
              Left = 15
              Top = 21
              Width = 49
              Height = 13
              Alignment = taRightJustify
              Caption = 'Vendedor:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object SpeedButton5: TSpeedButton
              Left = 363
              Top = 12
              Width = 23
              Height = 22
              Hint = 'Atualiza tabela de Vendedor'
              Glyph.Data = {
                E6040000424DE604000000000000360000002800000014000000140000000100
                180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFDF9FAFBF2
                F1F1EEEEEEEBEBEBE9EAECE4E8E9E2E4E7E3E4E6E4E6E7E6E9EAEBECF0F2F4F7
                F2F6F5F7F6F6FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF1EBE9D0C5BADBDEE2C9CC
                CEC1C3C4B6B0AEB1A397AA876AA6764FA87044AC754BB39174C7BCB3D5D6DBE5
                E7E8EFEFEEFDFDFDFFFFFFFFFFFFFFFFFFEBE5DC9F6B46DBDBDEC9C8CAB9A796
                B68861C18451D29861CD9460CE945CCC9258C58346B26E36C09E83E3E1E3EFF1
                F2FBFBFBFFFFFFFFFFFFFFFFFFF5F0EEBC8A63C3A48CC3A58CC68F61CF9B68C8
                9565CA9361CD9364C18951BF864FC18853C6884FB8763BCEB3A1F7FCFFFEFEFE
                FFFFFFFFFFFFFFFFFFF7F3EFBD916CD5B493D6AD8BD8AA84CB9668CB9664BA85
                53BA8A61C6A281BF926DBB814EC08F67B47437BE8C5EEDE6DFFFFFFFFFFFFFFF
                FFFFFFFFFFF6F2EEB98F69E3C2A3DDB99AE0BF9CCA9C72BD9473E2CFC0E5D9D0
                F1EEECEFE7E3E1CAB1DCC3AACFB193A96B33E4D1BFFFFFFFFFFFFFFFFFFFFFFF
                FFF7F2EFBA9069DFBB9BDEBD9DC79F7BD8C4B1F1EDEAFFFFFFFFFFFFFFFFFFFF
                FFFFF7F3EEEAD6C4FEFEFEB58560D7BDA9FFFFFFFFFFFFFFFFFFFFFFFFF7F3EF
                BD946CDFBC9CD9B996D8B694C8AE97F6F6F6FFFFFFFEFFFFFFFEFFFFFFFFFBF9
                F7F4EBE5FFFFFFC1A287D9C5B5FFFFFFFFFFFFFFFFFFFFFFFFF5EEEAB07E53E0
                BD9FDCB793E2BE9FCE9E73D0B499FCFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFE2D6CBEBE3DCFFFFFFFFFFFFFFFFFFFFFFFFF9F9F5BEA994C2A797BFA1
                92BB9E8CB99C89B39983F7F5F2FFFFFFAB7957BB967BB79676B89778B89777B9
                997EECE3DCFFFFFFFFFFFFFFFFFFFFFFFFF5F0E8CAB09BFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFC9B7A7D3A679DBB088D9AA84DCAD87C7986EE9DB
                CDFFFFFFFFFFFFFFFFFFFFFFFFE6D8CEB67B50E8D0BCDFC7B7F3EFEBFFFFFFFE
                FFFEFEFFFEFFFFFFFFFFFFBA9F8CD6A57DCF9B6ECD9B6CBF9164E9DDD2FFFFFF
                FFFFFFFFFFFFFFFFFFEDE4DCA86B3BBF865CC29776EAE2DBFFFFFFFFFFFFFFFF
                FFFDFFFFDED0C4D4B8A3C79B71D1A478CD9E70BF9265E8DDD0FFFFFFFFFFFFFF
                FFFFFFFFFFF9F5F2BD8F6DBC8A639D5F2DB58968E0D2C8E7DCD3DAC8B8DECBBA
                C09A77D4A882D0A479D2A478D3A77CBF8E64E8DBCFFFFFFFFFFFFFFFFFFFFFFF
                FFF7F5F2CAAB93E5CCB7CCA788C29471CDAC8ED9BDA3CAA98AD7B094E8CEB2DB
                BEA1DDB995C99D76C0946FC39168EADACFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
                E1D2C6C5A284F6E3D0F0DCC9E6CEB7E6CCB5E5CBB6E7CCB5E5CCB2E3C2A4C299
                78CFB9A6D2BEADB58257E7D5C6FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFDFEFEDA
                C9BBBA9675D4B193EDD1B8EED3BCECCEB6D1AF8EBE916DC2A386EEE6E2F9F8F6
                FFFFFFBD9A80DBC9BAFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFDFEFEF6F2
                EFD9C8BDBFA38CC3A388B99D83CFBEACFAF6F4F7F4F2FFFFFFFFFFFFFFFFFFF8
                F7F5F8F7F4FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFFFFFFFFFF
                FFFEFEFFFFFFFFFFFFFF}
              Margin = 0
              OnClick = SpeedButton5Click
            end
            object lblComissao: TLabel
              Left = 5
              Top = 39
              Width = 59
              Height = 13
              Alignment = taRightJustify
              Caption = '% Comiss'#227'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label42: TLabel
              Left = 202
              Top = 39
              Width = 86
              Height = 13
              Alignment = taRightJustify
              Caption = '% Base Comiss'#227'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object rxdbVendedor: TRxDBLookupCombo
              Left = 66
              Top = 13
              Width = 297
              Height = 21
              DropDownCount = 15
              Ctl3D = False
              DataField = 'ID_VENDEDOR'
              DataSource = DMCadDuplicata.dsDuplicata
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              LookupField = 'CODIGO'
              LookupDisplay = 'NOME'
              LookupSource = DMCadDuplicata.dsVendedor
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              OnEnter = rxdbVendedorEnter
              OnExit = rxdbVendedorExit
            end
            object dbedtComissao: TDBEdit
              Left = 66
              Top = 33
              Width = 96
              Height = 19
              Ctl3D = False
              DataField = 'PERC_COMISSAO'
              DataSource = DMCadDuplicata.dsDuplicata
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit22: TDBEdit
              Left = 290
              Top = 33
              Width = 96
              Height = 19
              Ctl3D = False
              DataField = 'PERC_BASE_COMISSAO'
              DataSource = DMCadDuplicata.dsDuplicata
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 2
            end
          end
          object RzGroupBox1: TRzGroupBox
            Left = 586
            Top = 2
            Width = 323
            Height = 50
            BorderColor = clNavy
            BorderInner = fsButtonUp
            BorderOuter = fsBump
            Ctl3D = True
            FlatColor = clNavy
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
            VisualStyle = vsGradient
            object Label30: TLabel
              Left = 25
              Top = 33
              Width = 86
              Height = 13
              Alignment = taRightJustify
              Caption = 'Tipo Lan'#231'amento:'
            end
            object Label31: TLabel
              Left = 38
              Top = 15
              Width = 73
              Height = 13
              Alignment = taRightJustify
              Caption = 'Nosso N'#250'mero:'
            end
            object DBEdit15: TDBEdit
              Left = 113
              Top = 27
              Width = 76
              Height = 19
              TabStop = False
              CharCase = ecUpperCase
              Color = clSilver
              Ctl3D = False
              DataField = 'TIPO_LANCAMENTO'
              DataSource = DMCadDuplicata.dsDuplicata
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit16: TDBEdit
              Left = 113
              Top = 9
              Width = 185
              Height = 19
              CharCase = ecUpperCase
              Ctl3D = False
              DataField = 'NOSSONUMERO'
              DataSource = DMCadDuplicata.dsDuplicata
              ParentCtl3D = False
              TabOrder = 1
            end
          end
          object gbxDadosPagamento: TRzGroupBox
            Left = 584
            Top = 56
            Width = 327
            Height = 215
            BorderColor = clNavy
            BorderInner = fsButtonUp
            BorderOuter = fsBump
            Caption = ' Dados de Pagamento  / Outros'
            Color = clSilver
            Ctl3D = True
            FlatColor = clNavy
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
            Visible = False
            VisualStyle = vsGradient
            object Label11: TLabel
              Left = 19
              Top = 59
              Width = 52
              Height = 13
              Alignment = taRightJustify
              Caption = 'Em Aberto:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label10: TLabel
              Left = 40
              Top = 23
              Width = 31
              Height = 13
              Alignment = taRightJustify
              Caption = 'Conta:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label12: TLabel
              Left = 214
              Top = 59
              Width = 28
              Height = 13
              Alignment = taRightJustify
              Caption = 'Pago:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label13: TLabel
              Left = 16
              Top = 77
              Width = 55
              Height = 13
              Alignment = taRightJustify
              Caption = 'Devolu'#231#227'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label14: TLabel
              Left = 192
              Top = 77
              Width = 50
              Height = 13
              Alignment = taRightJustify
              Caption = 'Despesas:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label20: TLabel
              Left = 22
              Top = 95
              Width = 49
              Height = 13
              Alignment = taRightJustify
              Caption = 'Desconto:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label22: TLabel
              Left = 10
              Top = 113
              Width = 61
              Height = 13
              Alignment = taRightJustify
              Caption = 'Juros Pagos:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label24: TLabel
              Left = 45
              Top = 41
              Width = 26
              Height = 13
              Alignment = taRightJustify
              Caption = 'Data:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label25: TLabel
              Left = 3
              Top = 131
              Width = 68
              Height = 13
              Alignment = taRightJustify
              Caption = 'Q.Dias Atraso:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label43: TLabel
              Left = 180
              Top = 113
              Width = 62
              Height = 13
              Alignment = taRightJustify
              Caption = 'N'#186' Remessa:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label32: TLabel
              Left = 170
              Top = 95
              Width = 72
              Height = 13
              Alignment = taRightJustify
              Caption = 'Taxa Banc'#225'ria:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object RxDBLookupCombo6: TRxDBLookupCombo
              Left = 73
              Top = 15
              Width = 241
              Height = 21
              DropDownCount = 15
              Color = clSilver
              Ctl3D = False
              DataField = 'ID_CONTA'
              DataSource = DMCadDuplicata.dsDuplicata
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              LookupField = 'ID'
              LookupDisplay = 'NOME'
              LookupSource = DMCadDuplicata.dsContas
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TabStop = False
            end
            object DBEdit5: TDBEdit
              Left = 73
              Top = 53
              Width = 96
              Height = 19
              TabStop = False
              Color = clSilver
              Ctl3D = False
              DataField = 'VLR_RESTANTE'
              DataSource = DMCadDuplicata.dsDuplicata
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit6: TDBEdit
              Left = 244
              Top = 53
              Width = 79
              Height = 19
              TabStop = False
              Color = clSilver
              Ctl3D = False
              DataField = 'VLR_PAGO'
              DataSource = DMCadDuplicata.dsDuplicata
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
            object DBEdit9: TDBEdit
              Left = 73
              Top = 71
              Width = 96
              Height = 19
              TabStop = False
              Color = clSilver
              Ctl3D = False
              DataField = 'VLR_DEVOLUCAO'
              DataSource = DMCadDuplicata.dsDuplicata
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
            end
            object DBEdit10: TDBEdit
              Left = 244
              Top = 71
              Width = 79
              Height = 19
              TabStop = False
              Color = clSilver
              Ctl3D = False
              DataField = 'VLR_DESPESAS'
              DataSource = DMCadDuplicata.dsDuplicata
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 4
            end
            object DBEdit11: TDBEdit
              Left = 73
              Top = 89
              Width = 96
              Height = 19
              TabStop = False
              Color = clSilver
              Ctl3D = False
              DataField = 'VLR_DESCONTO'
              DataSource = DMCadDuplicata.dsDuplicata
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 5
            end
            object DBEdit12: TDBEdit
              Left = 73
              Top = 107
              Width = 96
              Height = 19
              TabStop = False
              Color = clSilver
              Ctl3D = False
              DataField = 'VLR_JUROSPAGOS'
              DataSource = DMCadDuplicata.dsDuplicata
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 6
            end
            object DBEdit13: TDBEdit
              Left = 73
              Top = 35
              Width = 96
              Height = 19
              TabStop = False
              Color = clSilver
              Ctl3D = False
              DataField = 'DTULTPAGAMENTO'
              DataSource = DMCadDuplicata.dsDuplicata
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 7
            end
            object DBEdit14: TDBEdit
              Left = 73
              Top = 125
              Width = 96
              Height = 19
              TabStop = False
              Color = clSilver
              Ctl3D = False
              DataField = 'QTD_DIASATRASO'
              DataSource = DMCadDuplicata.dsDuplicata
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 8
            end
            object DBCheckBox1: TDBCheckBox
              Left = 74
              Top = 180
              Width = 113
              Height = 17
              TabStop = False
              Caption = 'Pago em cart'#243'rio'
              DataField = 'PAGO_CARTORIO'
              DataSource = DMCadDuplicata.dsDuplicata
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 9
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox3: TDBCheckBox
              Left = 206
              Top = 163
              Width = 113
              Height = 17
              TabStop = False
              Caption = 'Arquivo Gerado'
              DataField = 'ARQUIVO_GERADO'
              DataSource = DMCadDuplicata.dsDuplicata
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBEdit17: TDBEdit
              Left = 244
              Top = 107
              Width = 79
              Height = 19
              TabStop = False
              Color = clSilver
              Ctl3D = False
              DataField = 'NUM_REMESSA'
              DataSource = DMCadDuplicata.dsDuplicata
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 11
            end
            object DBEdit3: TDBEdit
              Left = 244
              Top = 89
              Width = 79
              Height = 19
              TabStop = False
              Color = clSilver
              Ctl3D = False
              DataField = 'VLR_TAXA_BANCARIA'
              DataSource = DMCadDuplicata.dsDuplicata
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 12
            end
            object DBCheckBox2: TDBCheckBox
              Left = 74
              Top = 163
              Width = 97
              Height = 17
              Caption = 'Protestado'
              DataField = 'PROTESTADO'
              DataSource = DMCadDuplicata.dsDuplicata
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 13
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox5: TDBCheckBox
              Left = 206
              Top = 180
              Width = 97
              Height = 17
              Caption = 'Boleto Impresso'
              Color = clSilver
              DataField = 'IMP_BOLETO'
              DataSource = DMCadDuplicata.dsDuplicata
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 14
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox4: TDBCheckBox
              Left = 206
              Top = 147
              Width = 97
              Height = 17
              Caption = 'ICMS'
              Color = clSilver
              DataField = 'TRANSFERENCIA_ICMS'
              DataSource = DMCadDuplicata.dsDuplicata
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 15
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox6: TDBCheckBox
              Left = 74
              Top = 147
              Width = 115
              Height = 17
              Caption = 'T'#237'tulo em Cart'#243'rio'
              Color = clSilver
              DataField = 'TITULO_CARTORIO'
              DataSource = DMCadDuplicata.dsDuplicata
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 16
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox7: TDBCheckBox
              Left = 74
              Top = 196
              Width = 108
              Height = 17
              TabStop = False
              Caption = 'Perdido'
              DataField = 'PERDIDO'
              DataSource = DMCadDuplicata.dsDuplicata
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 17
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox9: TDBCheckBox
              Left = 206
              Top = 196
              Width = 120
              Height = 17
              Caption = 'Instru'#231#227'o de Protesto'
              Color = clSilver
              DataField = 'INSTRUCAO_PROTESTO'
              DataSource = DMCadDuplicata.dsDuplicata
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 18
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
          object gbxContabil: TRzGroupBox
            Left = 410
            Top = 276
            Width = 503
            Height = 61
            BorderColor = clNavy
            BorderInner = fsButtonUp
            BorderOuter = fsBump
            Caption = ' Lan'#231'amento Cont'#225'bil '
            Ctl3D = True
            FlatColor = clMaroon
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 5
            VisualStyle = vsGradient
            object Label53: TLabel
              Left = 9
              Top = 21
              Width = 79
              Height = 13
              Alignment = taRightJustify
              Caption = 'Op.Lan'#231'amento:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object SpeedButton6: TSpeedButton
              Left = 467
              Top = 12
              Width = 23
              Height = 22
              Hint = 'Atualiza tabela de Vendedor'
              Glyph.Data = {
                E6040000424DE604000000000000360000002800000014000000140000000100
                180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFDF9FAFBF2
                F1F1EEEEEEEBEBEBE9EAECE4E8E9E2E4E7E3E4E6E4E6E7E6E9EAEBECF0F2F4F7
                F2F6F5F7F6F6FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF1EBE9D0C5BADBDEE2C9CC
                CEC1C3C4B6B0AEB1A397AA876AA6764FA87044AC754BB39174C7BCB3D5D6DBE5
                E7E8EFEFEEFDFDFDFFFFFFFFFFFFFFFFFFEBE5DC9F6B46DBDBDEC9C8CAB9A796
                B68861C18451D29861CD9460CE945CCC9258C58346B26E36C09E83E3E1E3EFF1
                F2FBFBFBFFFFFFFFFFFFFFFFFFF5F0EEBC8A63C3A48CC3A58CC68F61CF9B68C8
                9565CA9361CD9364C18951BF864FC18853C6884FB8763BCEB3A1F7FCFFFEFEFE
                FFFFFFFFFFFFFFFFFFF7F3EFBD916CD5B493D6AD8BD8AA84CB9668CB9664BA85
                53BA8A61C6A281BF926DBB814EC08F67B47437BE8C5EEDE6DFFFFFFFFFFFFFFF
                FFFFFFFFFFF6F2EEB98F69E3C2A3DDB99AE0BF9CCA9C72BD9473E2CFC0E5D9D0
                F1EEECEFE7E3E1CAB1DCC3AACFB193A96B33E4D1BFFFFFFFFFFFFFFFFFFFFFFF
                FFF7F2EFBA9069DFBB9BDEBD9DC79F7BD8C4B1F1EDEAFFFFFFFFFFFFFFFFFFFF
                FFFFF7F3EEEAD6C4FEFEFEB58560D7BDA9FFFFFFFFFFFFFFFFFFFFFFFFF7F3EF
                BD946CDFBC9CD9B996D8B694C8AE97F6F6F6FFFFFFFEFFFFFFFEFFFFFFFFFBF9
                F7F4EBE5FFFFFFC1A287D9C5B5FFFFFFFFFFFFFFFFFFFFFFFFF5EEEAB07E53E0
                BD9FDCB793E2BE9FCE9E73D0B499FCFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFE2D6CBEBE3DCFFFFFFFFFFFFFFFFFFFFFFFFF9F9F5BEA994C2A797BFA1
                92BB9E8CB99C89B39983F7F5F2FFFFFFAB7957BB967BB79676B89778B89777B9
                997EECE3DCFFFFFFFFFFFFFFFFFFFFFFFFF5F0E8CAB09BFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFC9B7A7D3A679DBB088D9AA84DCAD87C7986EE9DB
                CDFFFFFFFFFFFFFFFFFFFFFFFFE6D8CEB67B50E8D0BCDFC7B7F3EFEBFFFFFFFE
                FFFEFEFFFEFFFFFFFFFFFFBA9F8CD6A57DCF9B6ECD9B6CBF9164E9DDD2FFFFFF
                FFFFFFFFFFFFFFFFFFEDE4DCA86B3BBF865CC29776EAE2DBFFFFFFFFFFFFFFFF
                FFFDFFFFDED0C4D4B8A3C79B71D1A478CD9E70BF9265E8DDD0FFFFFFFFFFFFFF
                FFFFFFFFFFF9F5F2BD8F6DBC8A639D5F2DB58968E0D2C8E7DCD3DAC8B8DECBBA
                C09A77D4A882D0A479D2A478D3A77CBF8E64E8DBCFFFFFFFFFFFFFFFFFFFFFFF
                FFF7F5F2CAAB93E5CCB7CCA788C29471CDAC8ED9BDA3CAA98AD7B094E8CEB2DB
                BEA1DDB995C99D76C0946FC39168EADACFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
                E1D2C6C5A284F6E3D0F0DCC9E6CEB7E6CCB5E5CBB6E7CCB5E5CCB2E3C2A4C299
                78CFB9A6D2BEADB58257E7D5C6FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFDFEFEDA
                C9BBBA9675D4B193EDD1B8EED3BCECCEB6D1AF8EBE916DC2A386EEE6E2F9F8F6
                FFFFFFBD9A80DBC9BAFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFDFEFEF6F2
                EFD9C8BDBFA38CC3A388B99D83CFBEACFAF6F4F7F4F2FFFFFFFFFFFFFFFFFFF8
                F7F5F8F7F4FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFFFFFFFFFF
                FFFEFEFFFFFFFFFFFFFF}
              Margin = 0
              OnClick = SpeedButton5Click
            end
            object Label59: TLabel
              Left = 42
              Top = 41
              Width = 46
              Height = 13
              Alignment = taRightJustify
              Caption = 'Op.Baixa:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object RxDBLookupCombo11: TRxDBLookupCombo
              Left = 90
              Top = 13
              Width = 374
              Height = 21
              DropDownCount = 15
              Ctl3D = False
              DataField = 'ID_CONTABIL_OPE_LACTO'
              DataSource = DMCadDuplicata.dsDuplicata
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              LookupField = 'ID'
              LookupDisplay = 'NOME'
              LookupSource = DMCadDuplicata.dsContabil_Ope
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
            end
            object RxDBLookupCombo12: TRxDBLookupCombo
              Left = 90
              Top = 33
              Width = 374
              Height = 21
              DropDownCount = 15
              Ctl3D = False
              DataField = 'ID_CONTABIL_OPE_BAIXA'
              DataSource = DMCadDuplicata.dsDuplicata
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              LookupField = 'ID'
              LookupDisplay = 'NOME'
              LookupSource = DMCadDuplicata.dsContabil_Ope
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
            end
          end
        end
        object DBCheckBox8: TDBCheckBox
          Left = 589
          Top = 35
          Width = 239
          Height = 17
          Caption = 'Lan'#231'amento por Regime de Caixa'
          Color = 14286771
          DataField = 'REGIME_CAIXA'
          DataSource = DMCadDuplicata.dsDuplicata
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnExit = DBCheckBox8Exit
        end
      end
      object RzGroupBox2: TRzGroupBox
        Left = 0
        Top = 426
        Width = 1050
        Height = 158
        Align = alClient
        BorderColor = clNavy
        BorderInner = fsButtonUp
        BorderOuter = fsBump
        Caption = ' Hist'#243'rico da Parcela '
        Color = clSilver
        Ctl3D = True
        FlatColor = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        VisualStyle = vsGradient
        object SMDBGrid2: TSMDBGrid
          Left = 5
          Top = 18
          Width = 1040
          Height = 135
          Align = alClient
          Ctl3D = False
          DataSource = DMCadDuplicata.dsDuplicata_Hist
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clNavy
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
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 11
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
          ColCount = 18
          RowCount = 2
          Columns = <
            item
              Expanded = False
              FieldName = 'ITEM'
              Title.Color = 16777170
              Width = 34
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTHISTORICO'
              Title.Color = 16777170
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTLANCAMENTO'
              Title.Color = 16777170
              Width = 76
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'clCheque'
              Title.Caption = 'Pg Com Cheque'
              Title.Color = 16777170
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COMPLEMENTO'
              Title.Color = 16777170
              Width = 307
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_LANCAMENTO'
              Title.Color = 16777170
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_PAGAMENTO'
              Title.Color = 16777170
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_JUROSPAGOS'
              Title.Color = 16777170
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_DESCONTOS'
              Title.Color = 16777170
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_DESPESAS'
              Title.Color = 16777170
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_TAXA_BANCARIA'
              Title.Color = 16777170
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_DEVOLUCAO'
              Title.Color = 16777170
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_JUROSCALCULADO'
              Title.Color = 16777170
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_CONTA'
              Title.Color = 16777170
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_FORMA_PAGAMENTO'
              Title.Alignment = taCenter
              Title.Caption = 'ID Forma de Pagamento'
              Title.Color = 16777170
              Width = 72
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMCHEQUE'
              Title.Alignment = taCenter
              Title.Color = 16777170
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clFormaPgto'
              Title.Alignment = taCenter
              Title.Caption = 'Forma de Pagto'
              Title.Color = 16777170
              Width = 181
              Visible = True
            end>
        end
      end
    end
  end
  object stat1: TStatusBar
    Left = 0
    Top = 607
    Width = 1054
    Height = 19
    Panels = <
      item
        Text = 'Usu'#225'rio'
        Width = 200
      end
      item
        Text = 'Empresa'
        Width = 400
      end
      item
        Width = 400
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 521
    Top = 48
    object Duplicata1: TMenuItem
      Caption = 'Duplicata'
      OnClick = Duplicata1Click
    end
    object Boleto1: TMenuItem
      Caption = 'Boleto'
      OnClick = Boleto1Click
    end
    object RecibodePagamento1: TMenuItem
      Caption = 'Recibo de Pagamento'
      OnClick = RecibodePagamento1Click
    end
    object Detalhada1: TMenuItem
      Caption = 'Detalhada'
      OnClick = Detalhada1Click
    end
    object ApenasLista1: TMenuItem
      Caption = 'Apenas Lista'
      object AgrupadoPordia1: TMenuItem
        Caption = 'Agrupado Por dia'
        OnClick = AgrupadoPordia1Click
      end
      object ListaSimples1: TMenuItem
        Caption = 'Lista Simples'
        OnClick = ListaSimples1Click
      end
      object Cobrana1: TMenuItem
        Caption = 'Cobran'#231'a'
        OnClick = Cobrana1Click
      end
    end
    object ExtratoVendedor1: TMenuItem
      Caption = 'Extrato Vendedor'
      OnClick = ExtratoVendedor1Click
    end
    object SaldoClienteFornecedor1: TMenuItem
      Caption = 'Extrato Cliente/Fornecedor'
      OnClick = SaldoClienteFornecedor1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Excel1: TMenuItem
      Caption = 'Excel'
      object LayoutBorder1: TMenuItem
        Caption = 'Layout Border'#244
        OnClick = LayoutBorder1Click
      end
      object Lista1: TMenuItem
        Caption = 'Lista'
        OnClick = Lista1Click
      end
      object Gradecompleta1: TMenuItem
        Caption = 'Grade completa'
        OnClick = Gradecompleta1Click
      end
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 681
    Top = 216
    object MenuItem4: TMenuItem
      Caption = 'Gerar Cobran'#231'a'
      OnClick = MenuItem4Click
    end
    object Zerar1: TMenuItem
      Caption = 'Zerar (tabela auxiliar)'
      OnClick = Zerar1Click
    end
    object ConfirmaPagamento1: TMenuItem
      Caption = 'Confirma Pagamento'
      OnClick = ConfirmaPagamento1Click
    end
    object Clientenopagou1: TMenuItem
      Caption = 'Cliente n'#227'o pagou'
      OnClick = Clientenopagou1Click
    end
    object AlterarDataVencimento1: TMenuItem
      Caption = 'Alterar Data Vencimento'
      OnClick = AlterarDataVencimento1Click
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 817
    Top = 208
    object GravarComissao1: TMenuItem
      Caption = 'Gravar % de comiss'#227'o que est'#225' no cadastro cliente nas duplicatas'
      OnClick = GravarComissao1Click
    end
    object GravaComissao2: TMenuItem
      Caption = 'Gerar comiss'#227'o conforme a consulta'
      OnClick = GravaComissao2Click
    end
  end
  object UCControls1: TUCControls
    GroupName = 'Duplicata'
    UserControl = fMenu.UserControl1
    NotAllowed = naDisabled
    Left = 897
    Top = 60
  end
  object PopupMenu4: TPopupMenu
    Left = 737
    Top = 39
    object Aprovar1: TMenuItem
      Caption = 'Aprovar'
      OnClick = Aprovar1Click
    end
  end
end
