object frmLiberacao_Fat_Conf: TfrmLiberacao_Fat_Conf
  Left = 252
  Top = 175
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmLiberacao_Fat_Conf'
  ClientHeight = 442
  ClientWidth = 912
  Color = 14280953
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
  object Label2: TLabel
    Left = 69
    Top = 14
    Width = 23
    Height = 13
    Alignment = taRightJustify
    Caption = 'Filial:'
  end
  object Label5: TLabel
    Left = 20
    Top = 34
    Width = 72
    Height = 13
    Alignment = taRightJustify
    Caption = 'Dt.Inicio Inicial:'
  end
  object Label6: TLabel
    Left = 212
    Top = 34
    Width = 25
    Height = 13
    Alignment = taRightJustify
    Caption = 'Final:'
  end
  object Label1: TLabel
    Left = 23
    Top = 54
    Width = 69
    Height = 13
    Alignment = taRightJustify
    Caption = 'Dt.Final Inicial:'
  end
  object Label3: TLabel
    Left = 212
    Top = 54
    Width = 25
    Height = 13
    Alignment = taRightJustify
    Caption = 'Final:'
  end
  object Label4: TLabel
    Left = 18
    Top = 74
    Width = 74
    Height = 13
    Alignment = taRightJustify
    Caption = 'ID Confer'#234'ncia:'
  end
  object Label7: TLabel
    Left = 202
    Top = 74
    Width = 35
    Height = 13
    Alignment = taRightJustify
    Caption = 'Op'#231#227'o:'
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 95
    Top = 6
    Width = 377
    Height = 21
    DropDownCount = 8
    Ctl3D = False
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = DMBaixaPedido.dsFilial
    ParentCtl3D = False
    TabOrder = 0
  end
  object btnConsultar: TNxButton
    Left = 363
    Top = 56
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
    TabOrder = 1
    Transparent = True
    OnClick = btnConsultarClick
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 88
    Width = 912
    Height = 354
    ActivePage = TabSheet1
    ActivePageDefault = TabSheet1
    Align = alBottom
    TabIndex = 0
    TabOrder = 2
    OnChange = RzPageControl1Change
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Color = 14280953
      Caption = 'Confer'#234'ncia'
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 0
        Width = 908
        Height = 314
        Align = alClient
        Ctl3D = False
        DataSource = DMConferencia.dsConsulta
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = SMDBGrid2DblClick
        OnKeyDown = SMDBGrid2KeyDown
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
        ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoTitleWordWrap, eoShowFilterBar]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 16
        ScrollBars = ssHorizontal
        ColCount = 14
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Title.Color = 16777158
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Title.Alignment = taCenter
            Title.Caption = 'Usu'#225'rio'
            Title.Color = 16777158
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTINICIO'
            Title.Alignment = taCenter
            Title.Caption = 'Dt. In'#237'cio'
            Title.Color = 16777158
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'HRINICIO'
            Title.Alignment = taCenter
            Title.Caption = 'Hr. In'#237'cio'
            Title.Color = 16777158
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTD_PRODUITO'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Title.Color = 16777158
            Width = 88
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TOTAL_ITENS'
            Title.Alignment = taCenter
            Title.Caption = 'Total itens'
            Title.Color = 16777158
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TOTAL_PRODUTO_DIF'
            Title.Alignment = taCenter
            Title.Caption = 'Total Prod. Diferente'
            Title.Color = 16777158
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESO_LIQ'
            Title.Alignment = taCenter
            Title.Caption = 'Peso L'#237'quido'
            Title.Color = 16777158
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESO_BRU'
            Title.Alignment = taCenter
            Title.Caption = 'Peso Bruto'
            Title.Color = 16777158
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ENCERRADO'
            Title.Alignment = taCenter
            Title.Caption = 'Encerrado'
            Title.Color = 16777158
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTENCERRADO'
            Title.Alignment = taCenter
            Title.Caption = 'Dt. Encerrado'
            Title.Color = 16777158
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'HRENCERRADO'
            Title.Alignment = taCenter
            Title.Caption = 'Hr. Encerrado'
            Title.Color = 16777158
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FILIAL'
            Title.Alignment = taCenter
            Title.Caption = 'Filial'
            Title.Color = 16777158
            Visible = True
          end>
      end
      object StaticText1: TStaticText
        Left = 0
        Top = 314
        Width = 908
        Height = 17
        Align = alBottom
        Caption = 'Duplo Clique ou Enter para selecionar os itens da confer'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object TS_Itens: TRzTabSheet
      Color = 14280953
      Caption = 'Itens'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 908
        Height = 41
        Align = alTop
        Color = 14280953
        TabOrder = 0
        object Label8: TLabel
          Left = 16
          Top = 8
          Width = 90
          Height = 13
          Caption = 'ID Confer'#234'ncia:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText1: TDBText
          Left = 108
          Top = 7
          Width = 65
          Height = 15
          DataField = 'ID'
          DataSource = DMConferencia.dsConsulta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btnEtiqueta: TNxButton
          Left = 663
          Top = 4
          Width = 165
          Height = 30
          Caption = 'Etiqueta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          GlyphSpacing = 5
          ParentFont = False
          TabOrder = 0
          Transparent = True
          OnClick = btnEtiquetaClick
        end
      end
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 41
        Width = 908
        Height = 290
        Align = alClient
        Ctl3D = False
        DataSource = DMConferencia.dsConsulta_Itens
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = SMDBGrid2DblClick
        OnKeyDown = SMDBGrid2KeyDown
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
        ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoTitleWordWrap, eoShowFilterBar]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 16
        ScrollBars = ssHorizontal
        ColCount = 9
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID'
            Width = 83
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ITEM'
            Title.Alignment = taCenter
            Title.Caption = 'Item'
            Width = 60
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTD'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.'
            Width = 97
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESO_LIQ'
            Title.Alignment = taCenter
            Title.Caption = 'Peso L'#237'quido'
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESO_BRU'
            Title.Alignment = taCenter
            Title.Caption = 'Peso Bruto'
            Width = 92
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ENCERRADO'
            Title.Alignment = taCenter
            Title.Caption = 'Encerrado'
            Width = 62
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ETIQUETA'
            Title.Alignment = taCenter
            Title.Caption = 'Etiqueta'
            Width = 62
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTD_TIPO_PRODUTO'
            Title.Alignment = taCenter
            Title.Caption = 'Tipos de Produtos Dif.'
            Width = 123
            Visible = True
          end>
      end
    end
  end
  object NxDatePicker1: TNxDatePicker
    Left = 95
    Top = 26
    Width = 90
    Height = 21
    TabOrder = 3
    Text = '22/05/2013'
    HideFocus = False
    Date = 41416.000000000000000000
    NoneCaption = 'Limpar'
    TodayCaption = 'Hoje'
  end
  object NxDatePicker2: TNxDatePicker
    Left = 239
    Top = 26
    Width = 90
    Height = 21
    TabOrder = 4
    Text = '22/05/2013'
    HideFocus = False
    Date = 41416.000000000000000000
    NoneCaption = 'Limpar'
    TodayCaption = 'Hoje'
  end
  object NxDatePicker3: TNxDatePicker
    Left = 95
    Top = 46
    Width = 90
    Height = 21
    TabOrder = 5
    Text = '22/05/2013'
    HideFocus = False
    Date = 41416.000000000000000000
    NoneCaption = 'Limpar'
    TodayCaption = 'Hoje'
  end
  object NxDatePicker4: TNxDatePicker
    Left = 239
    Top = 46
    Width = 90
    Height = 21
    TabOrder = 6
    Text = '22/05/2013'
    HideFocus = False
    Date = 41416.000000000000000000
    NoneCaption = 'Limpar'
    TodayCaption = 'Hoje'
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 95
    Top = 66
    Width = 89
    Height = 21
    AutoSize = False
    Ctl3D = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    ParentCtl3D = False
    TabOrder = 7
  end
  object NxComboBox1: TNxComboBox
    Left = 239
    Top = 66
    Width = 121
    Height = 21
    Cursor = crArrow
    TabOrder = 8
    Text = 'Encerrado'
    ReadOnly = True
    HideFocus = False
    Style = dsDropDownList
    AutoCompleteDelay = 0
    ItemIndex = 1
    Items.Strings = (
      'Pendente'
      'Encerrado'
      'Ambos')
  end
  object btnImprimir: TNxButton
    Left = 540
    Top = 56
    Width = 177
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
    TabOrder = 9
    Transparent = True
    OnClick = btnImprimirClick
  end
end
