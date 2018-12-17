object frmConsFaturamento: TfrmConsFaturamento
  Left = 217
  Top = 40
  Width = 1018
  Height = 568
  Caption = 'Consulta Faturamento'
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
    Width = 1002
    Height = 83
    Align = alTop
    BevelOuter = bvNone
    Color = clSilver
    TabOrder = 0
    object Label2: TLabel
      Left = 79
      Top = 29
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'Filial:'
    end
    object Label3: TLabel
      Left = 67
      Top = 49
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente:'
    end
    object Label4: TLabel
      Left = 5
      Top = 69
      Width = 97
      Height = 13
      Alignment = taRightJustify
      Caption = 'Refer'#234'ncia/Produto:'
    end
    object Label6: TLabel
      Left = 205
      Top = 7
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
    end
    object Label18: TLabel
      Left = 489
      Top = 29
      Width = 73
      Height = 13
      Alignment = taRightJustify
      Caption = 'Imprimir Cliente:'
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 103
      Top = 21
      Width = 377
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      LookupField = 'ID'
      LookupDisplay = 'NOME_INTERNO'
      LookupSource = DMConsFaturamento.dsFilial
      ParentCtl3D = False
      TabOrder = 2
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 103
      Top = 41
      Width = 377
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = DMConsFaturamento.dsCliente
      ParentCtl3D = False
      TabOrder = 3
      OnEnter = RxDBLookupCombo2Enter
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 223
      Top = 61
      Width = 257
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMConsFaturamento.dsProduto
      ParentCtl3D = False
      TabOrder = 5
      OnChange = RxDBLookupCombo3Change
      OnEnter = RxDBLookupCombo3Enter
    end
    object RxDBLookupCombo4: TRxDBLookupCombo
      Left = 103
      Top = 61
      Width = 121
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      LookupField = 'ID'
      LookupDisplay = 'REFERENCIA'
      LookupSource = DMConsFaturamento.dsProduto
      ParentCtl3D = False
      TabOrder = 4
      OnChange = RxDBLookupCombo4Change
      OnEnter = RxDBLookupCombo4Enter
    end
    object DateEdit1: TDateEdit
      Left = 103
      Top = 1
      Width = 90
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      StartOfWeek = Sun
      TabOrder = 0
    end
    object DateEdit2: TDateEdit
      Left = 231
      Top = 1
      Width = 90
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      StartOfWeek = Sun
      TabOrder = 1
    end
    object NxComboBox2: TNxComboBox
      Left = 13
      Top = 1
      Width = 89
      Height = 21
      Cursor = crArrow
      Alignment = taRightJustify
      Color = clSilver
      TabOrder = 6
      Text = 'Dt. Emiss'#227'o'
      ReadOnly = True
      HideFocus = False
      Style = dsDropDownList
      AutoCompleteDelay = 0
      ItemIndex = 0
      Items.Strings = (
        'Dt. Emiss'#227'o'
        'Dt. Entrada')
    end
    object btnConsultar: TNxButton
      Left = 481
      Top = 53
      Width = 170
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
      TabOrder = 7
      Transparent = True
      OnClick = btnConsultarClick
    end
    object btnImprimir: TNxButton
      Left = 650
      Top = 53
      Width = 170
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
      PopupMenu = PopupMenu1
      ShowArrow = True
      TabOrder = 8
      Transparent = True
    end
    object cbImpCliente: TNxComboBox
      Left = 564
      Top = 21
      Width = 230
      Height = 21
      Cursor = crArrow
      TabOrder = 9
      Text = 'Raz'#227'o Social'
      ReadOnly = True
      HideFocus = False
      Style = dsDropDownList
      AutoCompleteDelay = 0
      ItemIndex = 1
      Items.Strings = (
        'Fantasia'
        'Raz'#227'o Social')
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 104
    Width = 1002
    Height = 373
    ActivePage = TS_Cliente
    ActivePageDefault = TS_Cliente
    Align = alClient
    BackgroundColor = clGray
    BoldCurrentTab = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBackgroundColor = False
    ParentFont = False
    TabColors.Shadow = clSilver
    TabIndex = 0
    TabOrder = 2
    TextColors.Selected = clBlue
    FixedDimension = 19
    object TS_Cliente: TRzTabSheet
      Caption = 'Cliente'
      object RzPageControl3: TRzPageControl
        Left = 0
        Top = 0
        Width = 998
        Height = 350
        ActivePage = TS_Cliente_Cid_Det
        ActivePageDefault = TS_Cliente_Acum
        Align = alClient
        Color = 16755027
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FlatColor = clSilver
        ParentColor = False
        ParentFont = False
        TabColors.Unselected = clGray
        TabIndex = 3
        TabOrder = 0
        TextColors.Unselected = 5197647
        FixedDimension = 19
        object TS_Cliente_Acum: TRzTabSheet
          Color = 16755027
          Caption = 'Acumulado'
          object SMDBGrid1: TSMDBGrid
            Left = 0
            Top = 0
            Width = 994
            Height = 327
            Align = alClient
            Ctl3D = False
            DataSource = DMConsFaturamento.dsNotaFiscal_Cli
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
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
            ColCount = 8
            RowCount = 2
            Columns = <
              item
                Expanded = False
                FieldName = 'NOME_CLIENTE'
                Title.Caption = 'Nome Cliente / Forn'
                Width = 392
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_TOTAL'
                Title.Caption = 'Vlr. Total'
                Width = 108
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_ICMSSUBST'
                Title.Caption = 'Vlr. ST'
                Width = 117
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_VENDAS'
                Title.Caption = 'Vlr Vendas'
                Width = 118
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTD'
                Title.Caption = 'Quantidade'
                Width = 108
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_LIQUIDO_NFSE'
                Title.Caption = 'Vlr. Servi'#231'o'
                Width = 111
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'clPerc_SobreFat'
                Width = 112
                Visible = True
              end>
          end
        end
        object TS_Cliente_UF: TRzTabSheet
          Color = 16755027
          Caption = 'Por UF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          object SMDBGrid12: TSMDBGrid
            Left = 0
            Top = 0
            Width = 994
            Height = 327
            Align = alClient
            Ctl3D = False
            DataSource = DMConsFaturamento.dsNotaFiscal_Cli_UF
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnTitleClick = SMDBGrid12TitleClick
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
            ColCount = 10
            RowCount = 2
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'UF'
                Title.Alignment = taCenter
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_PESSOA'
                Title.Caption = 'ID Cliente/Forn'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME_CLIENTE'
                Title.Caption = 'Nome Cliente/Fornecedor'
                Width = 338
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_TOTAL'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Total'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_ICMSSUBST'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. ST'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_VENDAS'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Vendas'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTD'
                Title.Alignment = taCenter
                Title.Caption = 'Quantidade'
                Width = 95
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_LIQUIDO_NFSE'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Servi'#231'o'
                Width = 88
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'clPerc_SobreFat'
                Title.Caption = '% Sobre Faturamento'
                Width = 92
                Visible = True
              end>
          end
        end
        object TS_Cliente_Cid: TRzTabSheet
          Color = 16755027
          Caption = 'Cidade'
          object SMDBGrid13: TSMDBGrid
            Left = 0
            Top = 0
            Width = 994
            Height = 327
            Align = alClient
            Ctl3D = False
            DataSource = DMConsFaturamento.dsNotaFiscal_Cli_Cid
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnTitleClick = SMDBGrid13TitleClick
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
            ColCount = 11
            RowCount = 2
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'UF'
                Title.Alignment = taCenter
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CIDADE'
                Title.Alignment = taCenter
                Title.Caption = 'Cidade'
                Width = 206
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_PESSOA'
                Title.Caption = 'ID Cliente/Forn'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME_CLIENTE'
                Title.Caption = 'Nome Cliente/Fornecedor'
                Width = 338
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_TOTAL'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Total'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_ICMSSUBST'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. ST'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_VENDAS'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Vendas'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTD'
                Title.Alignment = taCenter
                Title.Caption = 'Quantidade'
                Width = 95
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_LIQUIDO_NFSE'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Servi'#231'o'
                Width = 88
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'clPerc_SobreFat'
                Title.Caption = '% Sobre Faturamento'
                Width = 92
                Visible = True
              end>
          end
        end
        object TS_Cliente_Cid_Det: TRzTabSheet
          Color = 16755027
          Caption = 'Cidade Detalhado'
          object SMDBGrid18: TSMDBGrid
            Left = 0
            Top = 0
            Width = 994
            Height = 327
            Align = alClient
            Ctl3D = False
            DataSource = DMConsFaturamento.dsNotaFiscal_Cli_Cid_Det
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnTitleClick = SMDBGrid13TitleClick
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
            ColCount = 15
            RowCount = 2
            Columns = <
              item
                Expanded = False
                FieldName = 'UF'
                Title.Alignment = taCenter
                Width = 34
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CIDADE'
                Title.Alignment = taCenter
                Width = 209
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_PESSOA'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'digo Cliente'
                Width = 73
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME_CLIENTE'
                Title.Alignment = taCenter
                Title.Caption = 'Nome Cliente/Fornecedor'
                Width = 321
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DTEMISSAO'
                Title.Alignment = taCenter
                Width = 82
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTD'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_TOTAL'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BASE_ICMS'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR_ICMS'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BASE_ICMSST'
                Title.Alignment = taCenter
                Width = 84
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_ICMSSUBST'
                Title.Alignment = taCenter
                Width = 76
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_VENDAS'
                Title.Alignment = taCenter
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_LIQUIDO_NFSE'
                Title.Alignment = taCenter
                Width = 95
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'clPerc_SobreFat'
                Width = 106
                Visible = True
              end>
          end
        end
      end
    end
    object TS_Cliente_Prod: TRzTabSheet
      Caption = 'Cliente / Produto'
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 25
        Width = 998
        Height = 325
        Align = alClient
        Ctl3D = False
        DataSource = DMConsFaturamento.dsNotaFiscal_CliProd
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnTitleClick = SMDBGrid2TitleClick
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
        ColCount = 10
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_PESSOA'
            Title.Caption = 'ID Cliente / Forn'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_CLIENTE'
            Title.Caption = 'Nome Cliente/Fornecedor'
            Width = 375
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO_MOV'
            Title.Caption = 'Tipo Nota'
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REFERENCIA'
            Title.Caption = 'Refer'#234'ncia'
            Width = 129
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_PRODUTO_SERV'
            Title.Caption = 'Nome Produto / Servi'#231'o'
            Width = 219
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_TOTAL'
            Title.Caption = 'Vlr. Total'
            Width = 108
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_ICMSSUBST'
            Title.Caption = 'Vlr. ST'
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD'
            Title.Caption = 'Quantidade'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'clPerc_SobreFat'
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 998
        Height = 25
        Align = alTop
        Color = clSilver
        TabOrder = 1
        object Label7: TLabel
          Left = 8
          Top = 8
          Width = 131
          Height = 13
          Caption = 'Ordenar Por (na impress'#227'o):'
        end
        object ComboBox1: TComboBox
          Left = 139
          Top = 2
          Width = 272
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 0
          Text = 'Cliente/Fornecedor, Produto'
          Items.Strings = (
            'Cliente/Fornecedor, Produto'
            'Cliente/Fornecedor, Vlr. Faturamento'
            'Produto, Cliente/Fornecedor'
            'Produto, Vlr. Faturamento'
            'Vlr. Faturamento'
            'Padr'#227'o na grid'
            '')
        end
        object CheckBox1: TCheckBox
          Left = 434
          Top = 5
          Width = 233
          Height = 17
          Caption = 'Mostrar Total Pela Ordem de Impress'#227'o'
          Checked = True
          State = cbChecked
          TabOrder = 1
        end
      end
    end
    object TS_Produto: TRzTabSheet
      Caption = 'Produto'
      object SMDBGrid3: TSMDBGrid
        Left = 0
        Top = 0
        Width = 998
        Height = 350
        Align = alClient
        Ctl3D = False
        DataSource = DMConsFaturamento.dsNotaFiscal_Prod
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnTitleClick = SMDBGrid3TitleClick
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
        ColCount = 9
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'REFERENCIA'
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_PRODUTO_SERV'
            Width = 372
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_TOTAL'
            Title.Caption = 'Vlr. Total'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_ICMSSUBST'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. ST'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_VENDAS'
            Title.Alignment = taCenter
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_LIQUIDO_NFSE'
            Title.Alignment = taCenter
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'clPerc_SobreFat'
            Title.Caption = '% Sobre Total'
            Width = 120
            Visible = True
          end>
      end
    end
    object TS_DTEmissao: TRzTabSheet
      Caption = 'Data'
      object SMDBGrid4: TSMDBGrid
        Left = 0
        Top = 0
        Width = 998
        Height = 350
        Align = alClient
        Ctl3D = False
        DataSource = DMConsFaturamento.dsNotaFiscal_DT
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnTitleClick = SMDBGrid4TitleClick
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
        ColCount = 8
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'DTEMISSAO'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_VENDAS'
            Title.Alignment = taCenter
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_LIQUIDO_NFSE'
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_TOTAL'
            Title.Caption = 'Vlr. Total'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_ICMSSUBST'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. ST'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'clPerc_SobreFat'
            Title.Caption = '% Sobre Geral'
            Width = 126
            Visible = True
          end>
      end
    end
    object TS_UF: TRzTabSheet
      Caption = 'UF'
      object RzPageControl4: TRzPageControl
        Left = 0
        Top = 0
        Width = 998
        Height = 350
        ActivePage = TS_UF_Acumulado
        ActivePageDefault = TS_UF_Acumulado
        Align = alClient
        TabIndex = 0
        TabOrder = 0
        FixedDimension = 19
        object TS_UF_Acumulado: TRzTabSheet
          Caption = 'Acumulado'
          object SMDBGrid7: TSMDBGrid
            Left = 0
            Top = 0
            Width = 994
            Height = 327
            Align = alClient
            Ctl3D = False
            DataSource = DMConsFaturamento.dsNotaFiscal_UF
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnTitleClick = SMDBGrid7TitleClick
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
            ColCount = 8
            RowCount = 2
            Columns = <
              item
                Expanded = False
                FieldName = 'UF'
                Title.Alignment = taCenter
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_VENDAS'
                Title.Alignment = taCenter
                Width = 102
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_LIQUIDO_NFSE'
                Width = 101
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_TOTAL'
                Title.Caption = 'Vlr. Total'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_ICMSSUBST'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. ST'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTD'
                Title.Alignment = taCenter
                Title.Caption = 'Quantidade'
                Width = 98
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'clPerc_SobreFat'
                Title.Caption = '% Sobre Geral'
                Width = 126
                Visible = True
              end>
          end
        end
        object TS_UF_Produto: TRzTabSheet
          Caption = 'Produto'
          object SMDBGrid14: TSMDBGrid
            Left = 0
            Top = 0
            Width = 994
            Height = 327
            Align = alClient
            Ctl3D = False
            DataSource = DMConsFaturamento.dsProduto_UF
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnTitleClick = SMDBGrid14TitleClick
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
            ColCount = 12
            RowCount = 2
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'UF'
                Title.Alignment = taCenter
                Width = 37
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
                Expanded = False
                FieldName = 'NOME_PRODUTO_SERV'
                Title.Alignment = taCenter
                Title.Caption = 'Nome Produto / Servi'#231'o'
                Width = 281
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME_GRUPO'
                Title.Alignment = taCenter
                Title.Caption = 'Nome Grupo'
                Width = 245
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COD_GRUPO'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'd. Grupo'
                Width = 104
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTD'
                Title.Caption = 'Quantidade'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_LIQUIDO_NFSE'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Servi'#231'os'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_VENDAS'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Vendas'
                Width = 84
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_ICMSSUBST'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. ST'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'clPerc_SobreFat'
                Title.Caption = '% Sobre Total'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_TOTAL'
                Title.Caption = 'Vlr. Total'
                Visible = True
              end>
          end
        end
        object TS_UF_Grupo: TRzTabSheet
          Caption = 'Grupo'
          object SMDBGrid15: TSMDBGrid
            Left = 0
            Top = 0
            Width = 994
            Height = 327
            Align = alClient
            Ctl3D = False
            DataSource = DMConsFaturamento.dsGrupo_UF
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnTitleClick = SMDBGrid14TitleClick
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
            ColCount = 10
            RowCount = 2
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'UF'
                Title.Alignment = taCenter
                Width = 37
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME_GRUPO'
                Title.Alignment = taCenter
                Title.Caption = 'Nome Grupo'
                Width = 245
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COD_GRUPO'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'd. Grupo'
                Width = 104
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_TOTAL'
                Title.Caption = 'Vlr. Total'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTD'
                Title.Caption = 'Quantidade'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_LIQUIDO_NFSE'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Servi'#231'os'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_VENDAS'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Vendas'
                Width = 84
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_ICMSSUBST'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. ST'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'clPerc_SobreFat'
                Title.Caption = '% Sobre Total'
                Visible = True
              end>
          end
        end
      end
    end
    object TS_Produto_Det: TRzTabSheet
      Caption = 'Produto Detalhado'
      object SMDBGrid5: TSMDBGrid
        Left = 0
        Top = 0
        Width = 998
        Height = 350
        Align = alClient
        Ctl3D = False
        DataSource = DMConsFaturamento.dsProduto_Det
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnTitleClick = SMDBGrid5TitleClick
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
        ColCount = 18
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'TIPO_MOV'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REFERENCIA'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_PRODUTO_SERV'
            Width = 305
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_COR'
            Title.Alignment = taCenter
            Title.Caption = 'Cor'
            Width = 241
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_CLIENTE'
            Width = 210
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_TOTAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_UNITARIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_ICMSSUBST'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. ST'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_DESCONTO'
            Width = 58
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
            FieldName = 'NUM_RPS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTEMISSAO'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTENTRADASAIDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FILIAL'
            Visible = True
          end>
      end
    end
    object TS_Nota: TRzTabSheet
      Caption = 'Nota Fiscal'
      object SMDBGrid6: TSMDBGrid
        Left = 0
        Top = 0
        Width = 998
        Height = 350
        Align = alClient
        Ctl3D = False
        DataSource = DMConsFaturamento.dsNotaFiscal
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnTitleClick = SMDBGrid6TitleClick
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
        ColCount = 16
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'FILIAL'
            Title.Alignment = taCenter
            Title.Caption = 'Filial'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTEMISSAO'
            Title.Caption = 'Data Emiss'#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTSAIDAENTRADA'
            Title.Alignment = taCenter
            Title.Caption = 'Dt. Entrada / Sa'#237'da'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMNOTA'
            Title.Caption = 'N'#186' Nota'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERIE'
            Title.Caption = 'S'#233'rie'
            Width = 33
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_CLIENTE'
            Title.Caption = 'Nome Cliente/Fornecedor'
            Width = 245
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_VENDEDOR'
            Title.Caption = 'Nome Vendedor'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_FATURAMENTO'
            Title.Caption = 'Vlr. Faturamento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BASE_ICMS'
            Title.Alignment = taCenter
            Title.Caption = 'Base ICMS'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_ICMS'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. ICMS'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_ICMSSUBST'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. ST'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_NOTA'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Nota'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_ITENS'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Produto'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_IPI'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. IPI'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_CLIENTE'
            Title.Caption = 'ID Cliente'
            Visible = True
          end>
      end
    end
    object TS_Cupom: TRzTabSheet
      Caption = 'Cupom Fiscal'
      object SMDBGrid8: TSMDBGrid
        Left = 0
        Top = 0
        Width = 998
        Height = 350
        Align = alClient
        Ctl3D = False
        DataSource = DMConsFaturamento.dsCupomFiscal
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnTitleClick = SMDBGrid8TitleClick
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
        ColCount = 8
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'FILIAL'
            Title.Alignment = taCenter
            Title.Caption = 'Filial'
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTEMISSAO'
            Title.Alignment = taCenter
            Title.Caption = 'Data Emiss'#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMCUPOM'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' CUPOM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_CLIENTE'
            Title.Caption = 'Nome Cliente'
            Width = 339
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_VENDEDOR'
            Title.Caption = 'Nome Vendedor'
            Width = 182
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_TOTAL'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Cupom Fiscal'
            Width = 132
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_CLIENTE'
            Title.Alignment = taCenter
            Title.Caption = 'ID Cliente'
            Width = 52
            Visible = True
          end>
      end
    end
    object TS_ReciboNF: TRzTabSheet
      Caption = 'Recibo NF'
      object SMDBGrid17: TSMDBGrid
        Left = 0
        Top = 0
        Width = 998
        Height = 350
        Align = alClient
        Ctl3D = False
        DataSource = DMConsFaturamento.dsReciboNF
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnTitleClick = SMDBGrid6TitleClick
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
        ColCount = 8
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'FILIAL'
            Title.Alignment = taCenter
            Title.Caption = 'Filial'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTEMISSAO'
            Title.Caption = 'Data Emiss'#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMNOTA'
            Title.Caption = 'N'#186' Nota'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_CLIENTE'
            Title.Caption = 'Nome Cliente/Fornecedor'
            Width = 275
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_VENDEDOR'
            Title.Caption = 'Nome Vendedor'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_FATURAMENTO'
            Title.Caption = 'Vlr. Faturamento'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_CLIENTE'
            Title.Caption = 'ID Cliente'
            Visible = True
          end>
      end
    end
    object TS_Vendedor: TRzTabSheet
      Caption = 'Vendedor'
      object RzPageControl2: TRzPageControl
        Left = 0
        Top = 25
        Width = 998
        Height = 325
        ActivePage = TS_Vendedor_Acum
        ActivePageDefault = TS_Vendedor_Acum
        Align = alClient
        Color = 16755027
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FlatColor = clSilver
        ParentColor = False
        ParentFont = False
        TabColors.Unselected = clGray
        TabIndex = 0
        TabOrder = 0
        TextColors.Unselected = 5197647
        FixedDimension = 19
        object TS_Vendedor_Acum: TRzTabSheet
          Color = 16755027
          Caption = 'Acumulado'
          object SMDBGrid10: TSMDBGrid
            Left = 0
            Top = 0
            Width = 994
            Height = 302
            Align = alClient
            Ctl3D = False
            DataSource = DMConsFaturamento.dsNotaFiscal_Vend
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
            ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
            RegistryKey = 'Software\Scalabium'
            RegistrySection = 'SMDBGrid'
            WidthOfIndicator = 11
            DefaultRowHeight = 17
            ScrollBars = ssHorizontal
            ColCount = 9
            RowCount = 2
            Columns = <
              item
                Expanded = False
                FieldName = 'ID_VENDEDOR'
                Title.Alignment = taCenter
                Title.Caption = 'ID Vendedor'
                Width = 51
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME_VENDEDOR'
                Title.Alignment = taCenter
                Title.Caption = 'Nome Vendedor'
                Width = 316
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_DUPLICATA'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Total'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_ICMSSUBST'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. ST'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTD'
                Title.Alignment = taCenter
                Title.Caption = 'Qtde.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_LIQUIDO_NFSE'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Servi'#231'o'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_VENDAS'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Vendas'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'clPerc_SobreFat'
                Title.Alignment = taCenter
                Title.Caption = '% Sobre Total'
                Visible = True
              end>
          end
        end
        object TS_Vendedor_Cli: TRzTabSheet
          Color = 16755027
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          object SMDBGrid9: TSMDBGrid
            Left = 0
            Top = 0
            Width = 994
            Height = 302
            Align = alClient
            Ctl3D = False
            DataSource = DMConsFaturamento.dsNotaFiscal_VendCli
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
            ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
            RegistryKey = 'Software\Scalabium'
            RegistrySection = 'SMDBGrid'
            WidthOfIndicator = 11
            DefaultRowHeight = 17
            ScrollBars = ssHorizontal
            ColCount = 11
            RowCount = 2
            Columns = <
              item
                Expanded = False
                FieldName = 'ID_VENDEDOR'
                Title.Alignment = taCenter
                Title.Caption = 'ID Vendedor'
                Width = 51
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME_VENDEDOR'
                Title.Alignment = taCenter
                Title.Caption = 'Nome Vendedor'
                Width = 316
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_PESSOA'
                Title.Alignment = taCenter
                Title.Caption = 'ID Cli/Forn'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME_CLIFORN'
                Title.Alignment = taCenter
                Title.Caption = 'Nome Cliente/Fornecedor'
                Width = 250
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_DUPLICATA'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Total'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_ICMSSUBST'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. ST'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTD'
                Title.Alignment = taCenter
                Title.Caption = 'Qtde.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_LIQUIDO_NFSE'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Servi'#231'o'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_VENDAS'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Vendas'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'clPerc_SobreFat'
                Title.Alignment = taCenter
                Title.Caption = '% Sobre Total'
                Visible = True
              end>
          end
        end
        object TS_Vendedor_Prod: TRzTabSheet
          Color = 16755027
          Caption = 'Produto'
          object SMDBGrid11: TSMDBGrid
            Left = 0
            Top = 0
            Width = 994
            Height = 302
            Align = alClient
            Ctl3D = False
            DataSource = DMConsFaturamento.dsNotaFiscal_VendProd
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
            ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
            RegistryKey = 'Software\Scalabium'
            RegistrySection = 'SMDBGrid'
            WidthOfIndicator = 11
            DefaultRowHeight = 17
            ScrollBars = ssHorizontal
            ColCount = 11
            RowCount = 2
            Columns = <
              item
                Expanded = False
                FieldName = 'ID_VENDEDOR'
                Title.Alignment = taCenter
                Title.Caption = 'ID Vendedor'
                Width = 51
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME_VENDEDOR'
                Title.Alignment = taCenter
                Title.Caption = 'Nome Vendedor'
                Width = 316
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'REFERENCIA'
                Title.Alignment = taCenter
                Title.Caption = 'Refer'#234'ncia'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME_PRODUTO_SERV'
                Title.Alignment = taCenter
                Title.Caption = 'Nome Produto / Servi'#231'o'
                Width = 250
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_DUPLICATA'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Total'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_ICMSSUBST'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. ST'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTD'
                Title.Alignment = taCenter
                Title.Caption = 'Qtde.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_LIQUIDO_NFSE'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Servi'#231'o'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_VENDAS'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Vendas'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'clPerc_SobreFat'
                Title.Alignment = taCenter
                Title.Caption = '% Sobre Total'
                Visible = True
              end>
          end
        end
        object TS_Cli_Prod: TRzTabSheet
          Color = 16755027
          Caption = 'Cliente / Produto'
          object SMDBGrid16: TSMDBGrid
            Left = 0
            Top = 0
            Width = 994
            Height = 302
            Align = alClient
            Ctl3D = False
            DataSource = DMConsFaturamento.dsVendCliProd
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
            ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
            RegistryKey = 'Software\Scalabium'
            RegistrySection = 'SMDBGrid'
            WidthOfIndicator = 11
            DefaultRowHeight = 17
            ScrollBars = ssHorizontal
            ColCount = 16
            RowCount = 2
            Columns = <
              item
                Expanded = False
                FieldName = 'NUM_NOTA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DTEMISSAO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_MOV'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_PRODUTO'
                Width = 86
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COD_GRUPO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'REFERENCIA'
                Width = 90
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME_CLIFORN'
                Width = 185
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME_PRODUTO_SERV'
                Width = 198
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME_VENDEDOR'
                Width = 141
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_IPI'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_DUPLICATA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTD'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_VENDAS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_ICMSSUBST'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UF_CLI'
                Visible = True
              end>
          end
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 998
        Height = 25
        Align = alTop
        Color = clSilver
        TabOrder = 1
        object CheckBox3: TCheckBox
          Left = 8
          Top = 6
          Width = 193
          Height = 17
          Caption = 'Ordenar por Vendedor'
          TabOrder = 0
          OnClick = CheckBox3Click
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 477
    Width = 1002
    Height = 27
    Align = alBottom
    Color = 16769217
    TabOrder = 3
    object Label1: TLabel
      Left = 594
      Top = 9
      Width = 131
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr. Total Faturamento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 317
      Top = 9
      Width = 80
      Height = 13
      Alignment = taRightJustify
      Caption = 'Total Vendas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 36
      Top = 9
      Width = 81
      Height = 13
      Alignment = taRightJustify
      Caption = 'Total Servi'#231'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ceVlrFaturamento: TCurrencyEdit
      Left = 726
      Top = 1
      Width = 154
      Height = 21
      AutoSize = False
      Color = clMoneyGreen
      Ctl3D = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object ceVlrVendas: TCurrencyEdit
      Left = 398
      Top = 1
      Width = 154
      Height = 21
      AutoSize = False
      Color = clMoneyGreen
      Ctl3D = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object ceVlrServico: TCurrencyEdit
      Left = 118
      Top = 1
      Width = 154
      Height = 21
      AutoSize = False
      Color = clMoneyGreen
      Ctl3D = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 83
    Width = 1002
    Height = 21
    Align = alTop
    BevelOuter = bvNone
    Color = clSilver
    TabOrder = 1
    object Label10: TLabel
      Left = 34
      Top = 5
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tipo Consulta:'
    end
    object NxComboBox1: TNxComboBox
      Left = 103
      Top = -1
      Width = 230
      Height = 21
      Cursor = crArrow
      TabOrder = 0
      Text = 'Vendas/Servi'#231'os'
      ReadOnly = True
      HideFocus = False
      Style = dsDropDownList
      AutoCompleteDelay = 0
      ItemIndex = 2
      Items.Strings = (
        'Vendas'
        'Servi'#231'os'
        'Vendas/Servi'#231'os')
    end
    object CheckBox2: TCheckBox
      Left = 346
      Top = 2
      Width = 97
      Height = 17
      Caption = 'Total sem ST'
      TabOrder = 1
      OnClick = CheckBox2Click
    end
    object CheckBox4: TCheckBox
      Left = 442
      Top = 2
      Width = 97
      Height = 17
      Caption = 'Total sem IPI'
      TabOrder = 2
    end
    object CheckBox5: TCheckBox
      Left = 538
      Top = 2
      Width = 97
      Height = 17
      Caption = 'Total sem Frete'
      TabOrder = 3
    end
    object CheckBox6: TCheckBox
      Left = 650
      Top = 2
      Width = 159
      Height = 17
      Caption = 'Total sem Devolu'#231#245'es'
      TabOrder = 4
    end
    object chkCupomEnv: TCheckBox
      Left = 788
      Top = 1
      Width = 159
      Height = 17
      Caption = 'Somente Cupons Enviados'
      TabOrder = 5
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 504
    Width = 1002
    Height = 25
    Align = alBottom
    Color = 16769217
    TabOrder = 4
    object Label15: TLabel
      Left = 15
      Top = 10
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Total ST:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 671
      Top = 10
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Fat. L'#237'q.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 175
      Top = 10
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Total IPI:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 329
      Top = 10
      Width = 67
      Height = 13
      Alignment = taRightJustify
      Caption = 'Total Frete:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 500
      Top = 10
      Width = 72
      Height = 13
      Alignment = taRightJustify
      Caption = 'Devolu'#231#245'es:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ceVlrIcmsSubst: TCurrencyEdit
      Left = 70
      Top = 2
      Width = 83
      Height = 21
      AutoSize = False
      Color = clMoneyGreen
      Ctl3D = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object ceVlrFaturamento_ST: TCurrencyEdit
      Left = 726
      Top = 2
      Width = 154
      Height = 21
      AutoSize = False
      Color = clMoneyGreen
      Ctl3D = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object ceValorIPI: TCurrencyEdit
      Left = 230
      Top = 2
      Width = 83
      Height = 21
      AutoSize = False
      Color = clMoneyGreen
      Ctl3D = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object ceValorFrete: TCurrencyEdit
      Left = 397
      Top = 2
      Width = 83
      Height = 21
      AutoSize = False
      Color = clMoneyGreen
      Ctl3D = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
    object ceDevolucoes: TCurrencyEdit
      Left = 573
      Top = 2
      Width = 83
      Height = 21
      AutoSize = False
      Color = clMoneyGreen
      Ctl3D = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 848
    Top = 48
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      OnClick = Imprimir1Click
    end
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
end
