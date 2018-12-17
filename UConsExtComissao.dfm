object frmConsExtComissao: TfrmConsExtComissao
  Left = 161
  Top = 10
  Width = 1048
  Height = 718
  Caption = 'Cadastro do Comiss'#227'o'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 1032
    Height = 679
    ActivePage = TS_Consulta
    ActivePageDefault = TS_Consulta
    Align = alClient
    BackgroundColor = clSilver
    BoldCurrentTab = True
    FlatColor = clGray
    ParentBackgroundColor = False
    TabColors.Shadow = clSilver
    TabIndex = 0
    TabOrder = 0
    FixedDimension = 19
    object TS_Consulta: TRzTabSheet
      Caption = 'Consulta'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1028
        Height = 105
        Align = alTop
        Color = clSilver
        TabOrder = 0
        object Label15: TLabel
          Left = 84
          Top = 11
          Width = 23
          Height = 13
          Alignment = taRightJustify
          Caption = 'Filial:'
        end
        object Label18: TLabel
          Left = 24
          Top = 57
          Width = 83
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data Base Inicial:'
        end
        object Label26: TLabel
          Left = 215
          Top = 57
          Width = 25
          Height = 13
          Caption = 'Final:'
        end
        object Label3: TLabel
          Left = 58
          Top = 33
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vendedor:'
        end
        object Label2: TLabel
          Left = 5
          Top = 80
          Width = 102
          Height = 13
          Alignment = taRightJustify
          Caption = 'Ano/M'#234's Refer'#234'ncia:'
        end
        object Label4: TLabel
          Left = 216
          Top = 80
          Width = 214
          Height = 13
          Caption = 'Serve para buscar o valor de venda e a meta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RxDBLookupCombo1: TRxDBLookupCombo
          Left = 109
          Top = 5
          Width = 234
          Height = 21
          DropDownCount = 8
          LookupField = 'ID'
          LookupDisplay = 'NOME_INTERNO'
          LookupSource = DMCadExtComissao.dsFilial
          TabOrder = 0
          OnChange = RxDBLookupCombo1Change
        end
        object DateEdit1: TDateEdit
          Left = 109
          Top = 49
          Width = 100
          Height = 21
          NumGlyphs = 2
          StartOfWeek = Sun
          TabOrder = 2
          OnExit = DateEdit1Exit
        end
        object DateEdit2: TDateEdit
          Left = 243
          Top = 49
          Width = 100
          Height = 21
          NumGlyphs = 2
          StartOfWeek = Sun
          TabOrder = 3
        end
        object RxDBLookupCombo2: TRxDBLookupCombo
          Left = 109
          Top = 27
          Width = 234
          Height = 21
          DropDownCount = 8
          LookupField = 'CODIGO'
          LookupDisplay = 'NOME'
          LookupSource = DMCadExtComissao.dsVendedor
          TabOrder = 1
        end
        object RzGroupBox1: TRzGroupBox
          Left = 690
          Top = 3
          Width = 191
          Height = 99
          BorderColor = clNavy
          BorderInner = fsButtonUp
          BorderOuter = fsBump
          Caption = ' Valores Totais  do Per'#237'odo '
          Color = 14737632
          Ctl3D = True
          FlatColor = clNavy
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          VisualStyle = vsGradient
          object Label8: TLabel
            Left = 39
            Top = 16
            Width = 40
            Height = 13
            Alignment = taRightJustify
            Caption = 'Entrada:'
          end
          object Label10: TLabel
            Left = 17
            Top = 33
            Width = 62
            Height = 13
            Alignment = taRightJustify
            Caption = 'Pagamentos:'
          end
          object Label11: TLabel
            Left = 6
            Top = 51
            Width = 73
            Height = 13
            Alignment = taRightJustify
            Caption = 'Adiantamentos:'
          end
          object lblEntrada: TLabel
            Left = 84
            Top = 16
            Width = 97
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
          end
          object lblPagamento: TLabel
            Left = 84
            Top = 32
            Width = 97
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
          end
          object lblAdiantamento: TLabel
            Left = 84
            Top = 48
            Width = 97
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
          end
          object Label12: TLabel
            Left = 24
            Top = 68
            Width = 55
            Height = 13
            Alignment = taRightJustify
            Caption = 'Devolu'#231#227'o:'
          end
          object lblDevolucao: TLabel
            Left = 84
            Top = 65
            Width = 97
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
          end
          object Label14: TLabel
            Left = 42
            Top = 84
            Width = 37
            Height = 13
            Alignment = taRightJustify
            Caption = 'Saldo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblSaldo: TLabel
            Left = 85
            Top = 81
            Width = 97
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object btnConsultar: TNxButton
          Left = 345
          Top = 43
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
        object CurrencyEdit1: TCurrencyEdit
          Left = 108
          Top = 72
          Width = 53
          Height = 21
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          TabOrder = 6
        end
        object CurrencyEdit2: TCurrencyEdit
          Left = 161
          Top = 72
          Width = 53
          Height = 21
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          TabOrder = 7
        end
        object BitBtn1: TBitBtn
          Left = 528
          Top = 76
          Width = 134
          Height = 25
          Caption = 'Recalcular Cfe. a Base'
          TabOrder = 8
          Visible = False
          OnClick = BitBtn1Click
        end
        object DateEdit3: TDateEdit
          Left = 541
          Top = 48
          Width = 120
          Height = 21
          NumGlyphs = 2
          TabOrder = 9
          Text = '28/01/2016'
          Visible = False
        end
      end
      object RzPageControl2: TRzPageControl
        Left = 0
        Top = 105
        Width = 1028
        Height = 551
        ActivePage = TS_Resumido
        ActivePageDefault = TS_Resumido
        Align = alClient
        TabIndex = 0
        TabOrder = 1
        OnChange = RzPageControl2Change
        FixedDimension = 19
        object TS_Resumido: TRzTabSheet
          Caption = 'Resumido'
          object SMDBGrid1: TSMDBGrid
            Left = 0
            Top = 32
            Width = 1024
            Height = 479
            Align = alClient
            Ctl3D = False
            DataSource = DMCadExtComissao.dsmExtComissao_Red
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDblClick = SMDBGrid1DblClick
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
            ColCount = 10
            RowCount = 2
            Columns = <
              item
                Expanded = False
                FieldName = 'NomeVendedor'
                Title.Caption = 'Nome Vendedor'
                Width = 335
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Vlr_Meta_Vendas'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Meta'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Vlr_Vendas'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Vendas'
                Width = 83
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Base_Comissao'
                Title.Caption = 'Base Comiss'#227'o'
                Width = 82
                Visible = True
              end
              item
                Color = clMoneyGreen
                Expanded = False
                FieldName = 'Vlr_Comissao'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Comiss'#227'o a Pagar'
                Title.Color = clMoneyGreen
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 104
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Vlr_Entrada'
                Title.Caption = 'Vlr. Entrada'
                Width = 87
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Vlr_Pagamento'
                Title.Caption = 'Vlr. J'#225' Pago'
                Width = 89
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Vlr_Adiantamento'
                Title.Caption = 'Vlr. Adiantamento'
                Width = 91
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Vlr_Devolucao'
                Title.Caption = 'Vlr. Devolu'#231#227'o'
                Width = 81
                Visible = True
              end>
          end
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 1024
            Height = 32
            Align = alTop
            Color = clSilver
            TabOrder = 1
            object Shape1: TShape
              Left = 720
              Top = 8
              Width = 25
              Height = 17
              Brush.Color = clRed
            end
            object Label5: TLabel
              Left = 748
              Top = 9
              Width = 102
              Height = 13
              Caption = 'N'#227'o alcan'#231'ou a meta'
            end
            object CheckBox1: TCheckBox
              Left = 368
              Top = 11
              Width = 121
              Height = 17
              Caption = 'Imprimir as notas'
              TabOrder = 0
              OnClick = CheckBox1Click
            end
            object CheckBox2: TCheckBox
              Left = 496
              Top = 11
              Width = 185
              Height = 17
              Caption = 'Separar Vendedor por p'#225'gina'
              TabOrder = 1
              Visible = False
            end
            object btnImprimir: TNxButton
              Left = 154
              Top = 2
              Width = 151
              Height = 29
              Caption = 'Imprimir'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
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
              TabOrder = 2
              Transparent = True
              OnClick = btnImprimirClick
            end
            object btnPagamento: TNxButton
              Left = 3
              Top = 2
              Width = 151
              Height = 29
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
              TabOrder = 3
              Transparent = True
              OnClick = btnPagamentoClick
            end
          end
          object StaticText1: TStaticText
            Left = 0
            Top = 511
            Width = 1024
            Height = 17
            Align = alBottom
            BorderStyle = sbsSunken
            Caption = 'Duplo clique para consultar detalhado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16384
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
        end
        object TS_Detalhado: TRzTabSheet
          Caption = 'Detalhado'
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 1024
            Height = 29
            Align = alTop
            Color = clSilver
            TabOrder = 0
            object Label1: TLabel
              Left = 16
              Top = 8
              Width = 49
              Height = 13
              Caption = 'Vendedor:'
            end
            object DBText1: TDBText
              Left = 70
              Top = 6
              Width = 419
              Height = 15
              DataField = 'NomeVendedor'
              DataSource = DMCadExtComissao.dsmExtComissao_Red
            end
          end
          object SMDBGrid2: TSMDBGrid
            Left = 0
            Top = 29
            Width = 1024
            Height = 499
            Align = alClient
            Ctl3D = False
            DataSource = DMCadExtComissao.dsConsulta
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
            GridStyle.Style = gsAquaBlue
            GridStyle.OddColor = 16774361
            GridStyle.EvenColor = 16768959
            TitleHeight.PixelCount = 24
            FooterColor = clBtnFace
            ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
            RegistryKey = 'Software\Scalabium'
            RegistrySection = 'SMDBGrid'
            WidthOfIndicator = 11
            DefaultRowHeight = 17
            ScrollBars = ssHorizontal
            ColCount = 17
            RowCount = 2
            Columns = <
              item
                Expanded = False
                FieldName = 'FILIAL'
                Width = 31
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_REG'
                Width = 41
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOMEVENDEDOR'
                Width = 274
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SERIE'
                Width = 34
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUM_NOTA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PARCELA'
                Width = 43
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DTBASE'
                Width = 68
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BASE_COMISSAO'
                Width = 86
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERC_COMISSAO'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_COMISSAO'
                Width = 79
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOMECLIENTE'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DTCADASTRO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OBS'
                Width = 200
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
                FieldName = 'OBS_PEDIDO'
                Title.Alignment = taCenter
                Title.Caption = 'Pedido'
                Width = 300
                Visible = True
              end>
          end
        end
      end
    end
  end
end
