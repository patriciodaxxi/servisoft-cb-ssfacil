object frmConsEstoque_Mov: TfrmConsEstoque_Mov
  Left = 163
  Top = 98
  BorderStyle = bsSingle
  Caption = 'Consulta Estoque Movimento'
  ClientHeight = 518
  ClientWidth = 941
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
    Width = 941
    Height = 130
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label2: TLabel
      Left = 302
      Top = 10
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'Filial:'
    end
    object Label3: TLabel
      Left = 269
      Top = 94
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data In'#237'cio:'
    end
    object Label4: TLabel
      Left = 436
      Top = 94
      Width = 25
      Height = 13
      Caption = 'Final:'
    end
    object Label7: TLabel
      Left = 217
      Top = 52
      Width = 108
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente/Fornecedor ID:'
    end
    object Label30: TLabel
      Left = 280
      Top = 73
      Width = 45
      Height = 13
      Alignment = taRightJustify
      Caption = 'Estrutura:'
    end
    object Label10: TLabel
      Left = 254
      Top = 115
      Width = 71
      Height = 13
      Alignment = taRightJustify
      Caption = 'Local Estoque:'
    end
    object Label12: TLabel
      Left = 742
      Top = 10
      Width = 49
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Ordem:'
      Visible = False
    end
    object Label1: TLabel
      Left = 270
      Top = 31
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = 'Refer'#234'ncia:'
    end
    object Label14: TLabel
      Left = 606
      Top = 31
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'ID Produto:'
    end
    object Label16: TLabel
      Left = 411
      Top = 52
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome:'
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 326
      Top = 2
      Width = 401
      Height = 21
      DropDownCount = 15
      LookupField = 'ID'
      LookupDisplay = 'NOME_INTERNO'
      LookupSource = DMConsEstoque.dsFilial
      TabOrder = 0
    end
    object DateEdit1: TDateEdit
      Left = 326
      Top = 86
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 6
    end
    object DateEdit2: TDateEdit
      Left = 462
      Top = 86
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 7
    end
    object btnConsultar: TNxButton
      Left = 754
      Top = 40
      Width = 161
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
      TabOrder = 10
      Transparent = True
      OnClick = btnConsultarClick
    end
    object btnImprimir: TNxButton
      Left = 754
      Top = 68
      Width = 161
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
      TabOrder = 11
      Transparent = True
      OnClick = btnImprimirClick
    end
    object CheckBox1: TCheckBox
      Left = 569
      Top = 88
      Width = 137
      Height = 17
      Caption = 'Mostrar Produto Inativo'
      TabOrder = 8
      OnClick = CheckBox1Click
    end
    object RadioGroup2: TRadioGroup
      Left = 1
      Top = 1
      Width = 103
      Height = 128
      Align = alLeft
      Caption = ' Tipo '
      ItemIndex = 4
      Items.Strings = (
        'Produto'
        'Material'
        'Mat.Consumo'
        'Semi Acabado'
        'Ambos')
      TabOrder = 12
      OnClick = RadioGroup2Click
    end
    object RadioGroup1: TRadioGroup
      Left = 104
      Top = 1
      Width = 96
      Height = 128
      Align = alLeft
      Caption = ' Op'#231#227'o '
      ItemIndex = 2
      Items.Strings = (
        'Entrada'
        'Sa'#237'da'
        'Ambos')
      TabOrder = 13
    end
    object rxdbGrupo: TRxDBLookupCombo
      Left = 326
      Top = 65
      Width = 401
      Height = 21
      DropDownCount = 15
      DropDownWidth = 500
      LookupField = 'ID'
      LookupDisplay = 'NOME_AUX;CODIGO'
      LookupSource = DMConsEstoque.dsGrupo
      TabOrder = 5
      OnDropDown = rxdbGrupoDropDown
      OnKeyDown = rxdbGrupoKeyDowno
    end
    object rxdbLocalEstoque: TRxDBLookupCombo
      Left = 326
      Top = 107
      Width = 401
      Height = 21
      DropDownCount = 15
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMConsEstoque.dsLocal_Estoque
      TabOrder = 9
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 792
      Top = 2
      Width = 89
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 14
      Visible = False
    end
    object btnExcel: TNxButton
      Left = 754
      Top = 97
      Width = 161
      Height = 30
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 15
      Transparent = True
      OnClick = btnExcelClick
    end
    object edtRef: TEdit
      Left = 326
      Top = 23
      Width = 203
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnExit = edtRefExit
      OnKeyDown = edtRefKeyDown
    end
    object ceIDProduto: TCurrencyEdit
      Left = 662
      Top = 23
      Width = 65
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 2
      OnExit = ceIDProdutoExit
      OnKeyDown = ceIDProdutoKeyDown
    end
    object edtNome_Pessoa: TEdit
      Left = 446
      Top = 44
      Width = 281
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 4
      OnExit = edtNome_PessoaExit
      OnKeyDown = edtNome_PessoaKeyDown
    end
    object ceIDPessoa: TCurrencyEdit
      Left = 326
      Top = 44
      Width = 80
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 3
      OnExit = ceIDPessoaExit
      OnKeyDown = ceIDPessoaKeyDown
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 130
    Width = 941
    Height = 388
    ActivePage = TS_Produto_Det
    ActivePageDefault = TS_Produto_Det
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
    TabOrder = 1
    TextColors.Selected = clBlue
    OnChange = RzPageControl1Change
    FixedDimension = 19
    object TS_Produto_Det: TRzTabSheet
      Caption = 'Produto Detalhado'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 30
        Width = 937
        Height = 297
        Align = alClient
        Ctl3D = False
        DataSource = DMConsEstoque.dsEstoque_Mov
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
        ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        OnGetCellParams = SMDBGrid1GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 32
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FILIAL'
            Title.Alignment = taCenter
            Title.Caption = 'Filial'
            Width = 34
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_LOCAL'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Local'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_LOCAL'
            Title.Alignment = taCenter
            Title.Caption = 'Local Estoque'
            Width = 138
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TIPO_ES'
            Title.Alignment = taCenter
            Title.Caption = 'E / S'
            Width = 32
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TIPO_MOV'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Movim.'
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODCFOP'
            Title.Alignment = taCenter
            Title.Caption = 'CFOP'
            Width = 41
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUMNOTA'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Documento'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTMOVIMENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Data Movimento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMEPRODUTO'
            Title.Caption = 'Nome Produto'
            Width = 178
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TAMANHO'
            Title.Alignment = taCenter
            Title.Caption = 'Tamanho'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_COR'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Cor'
            Width = 142
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REFERENCIA'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_UNITARIO'
            Title.Caption = 'Vlr. Unit'#225'rio'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNIDADE'
            Title.Caption = 'Unidade'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECO_CUSTO'
            Title.Alignment = taCenter
            Title.Caption = 'Pre'#231'o Custo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECO_CUSTO_TOTAL'
            Title.Alignment = taCenter
            Title.Caption = 'Pre'#231'o Custo Total'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUM_LOTE_CONTROLE'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Lote Controle'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMEPESSOA'
            Title.Caption = 'Cliente / Fornecedor'
            Width = 227
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PERC_ICMS'
            Title.Caption = '% ICMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PERC_IPI'
            Title.Caption = '% IPI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_DESCONTO'
            Title.Caption = 'Vlr. Desconto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_FRETE'
            Title.Caption = 'Vlr. Frete'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERIE'
            Title.Alignment = taCenter
            Title.Caption = 'S'#233'rie Nota'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_PESSOA'
            Title.Caption = 'ID Pessoa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNIDADE_ORIG'
            Title.Alignment = taCenter
            Title.Caption = 'Unid. da Nota'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_ORIG'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. da Nota'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_UNITARIOORIG'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Unit'#225'rio da Nota'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_GRUPO'
            Title.Alignment = taCenter
            Title.Caption = 'Estrutura'
            Width = 183
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Title.Caption = 'ID Estoque'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_PRODUTO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Produto'
            Visible = True
          end>
      end
      object RzGroupBox2: TRzGroupBox
        Left = 0
        Top = 327
        Width = 937
        Height = 38
        Align = alBottom
        BorderColor = clBlue
        BorderInner = fsButtonUp
        BorderOuter = fsBump
        Caption = ' Total '
        Color = clSilver
        Ctl3D = True
        FlatColor = clBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        VisualStyle = vsGradient
        object Label5: TLabel
          Left = 8
          Top = 16
          Width = 88
          Height = 13
          Caption = 'Total Entradas:'
        end
        object lblEntrada: TLabel
          Left = 98
          Top = 16
          Width = 93
          Height = 13
          AutoSize = False
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 216
          Top = 16
          Width = 78
          Height = 13
          Caption = 'Total Sa'#237'das:'
        end
        object lblSaida: TLabel
          Left = 296
          Top = 16
          Width = 93
          Height = 13
          AutoSize = False
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 458
          Top = 16
          Width = 37
          Height = 13
          Caption = 'Saldo:'
        end
        object lblSaldo: TLabel
          Left = 498
          Top = 16
          Width = 93
          Height = 13
          AutoSize = False
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 937
        Height = 30
        Align = alTop
        Color = clSilver
        TabOrder = 2
        object Label8: TLabel
          Left = 8
          Top = 13
          Width = 56
          Height = 13
          Caption = 'Imprimir por:'
        end
        object ComboBox1: TComboBox
          Left = 66
          Top = 5
          Width = 297
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 0
          Text = 'Produto'
          OnChange = ComboBox1Change
          Items.Strings = (
            'Produto'
            'Cliente/Fornecedor'
            'Conforme ordenado na tabela abaixo')
        end
        object ckEstruturado: TCheckBox
          Left = 376
          Top = 8
          Width = 97
          Height = 17
          Caption = 'Estruturado'
          TabOrder = 1
          OnClick = ckEstruturadoClick
        end
        object ckImpTotalEst: TCheckBox
          Left = 480
          Top = 8
          Width = 185
          Height = 17
          Caption = 'Imprimir Total por estrutura'
          TabOrder = 2
          Visible = False
        end
      end
    end
    object TS_Produto_Acum: TRzTabSheet
      Caption = 'Produto Acumulado'
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 27
        Width = 937
        Height = 338
        Align = alClient
        Ctl3D = False
        DataSource = DMConsEstoque.dsmAuxEst_Acum
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID_Produto'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Produto'
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Referencia'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeProduto'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Produto'
            Width = 341
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd_Ant'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Anterior'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd_Ent'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Entrada'
            Width = 122
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd_Sai'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Sa'#237'da'
            Width = 127
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Saldo'
            Title.Alignment = taCenter
            Title.Caption = 'Soma (Entrada - Sa'#237'da)'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Vlr_Entrada'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Entrada'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Vlr_Saida'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Sa'#237'da'
            Width = 87
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 937
        Height = 27
        Align = alTop
        Color = clSilver
        TabOrder = 1
        object CheckBox2: TCheckBox
          Left = 8
          Top = 8
          Width = 169
          Height = 17
          Caption = 'Somar Saldo Anterior'
          TabOrder = 0
          OnClick = CheckBox2Click
        end
        object CheckBox3: TCheckBox
          Left = 168
          Top = 7
          Width = 265
          Height = 17
          Caption = 'Mostrar o saldo anterior somente com saldo'
          TabOrder = 1
          Visible = False
        end
      end
    end
    object TS_Produto_Local: TRzTabSheet
      Caption = 'Produto Por Local Estoque'
      object SMDBGrid3: TSMDBGrid
        Left = 0
        Top = 27
        Width = 937
        Height = 338
        Align = alClient
        Ctl3D = False
        DataSource = DMConsEstoque.dsEstoque_Local
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
        ColCount = 11
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID_PRODUTO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Produto'
            Width = 53
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
            FieldName = 'NOMEPRODUTO'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Produto'
            Width = 341
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'COD_LOCAL'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Local'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_LOCAL'
            Title.Alignment = taCenter
            Title.Caption = 'Local Estoque'
            Width = 129
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_ENT'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Entrada'
            Width = 122
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_SAI'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Sa'#237'da'
            Width = 127
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SALDO'
            Title.Alignment = taCenter
            Title.Caption = 'Soma (Entrada - Sa'#237'da)'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_ENTRADA'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Entrada'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_SAIDA'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Sa'#237'da'
            Width = 87
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 937
        Height = 27
        Align = alTop
        Color = clSilver
        TabOrder = 1
        object ckImpValor: TCheckBox
          Left = 3
          Top = 8
          Width = 137
          Height = 17
          Caption = 'Imprimir valores'
          TabOrder = 0
        end
      end
    end
    object TS_Reserva: TRzTabSheet
      Caption = 'Reserva de Estoque'
      object SMDBGrid4: TSMDBGrid
        Left = 35
        Top = 0
        Width = 902
        Height = 327
        Align = alClient
        Ctl3D = False
        DataSource = DMConsEstoque.dsEstoque_Mov_Res
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
        ColCount = 14
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUM_ORDEM'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Ordem'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TIPO_ES'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo E/S'
            Width = 49
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TIPO_MOV'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Mov.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DATA'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID_PRODUTO'
            Title.Alignment = taCenter
            Title.Caption = 'ID Material'
            Width = 54
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
            FieldName = 'NOME_PRODUTO'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Material'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_COR'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Cor'
            Width = 170
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
            FieldName = 'FILIAL'
            Title.Alignment = taCenter
            Title.Caption = 'Filial'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID_COR'
            Title.Alignment = taCenter
            Title.Caption = 'ID Cor'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Title.Caption = 'ID Mov.'
            Visible = True
          end>
      end
      object RzGroupBox1: TRzGroupBox
        Left = 0
        Top = 327
        Width = 937
        Height = 38
        Align = alBottom
        BorderColor = clBlue
        BorderInner = fsButtonUp
        BorderOuter = fsBump
        Caption = ' Total  (Reserva)'
        Color = clSilver
        Ctl3D = True
        FlatColor = clBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        VisualStyle = vsGradient
        object Label11: TLabel
          Left = 8
          Top = 16
          Width = 88
          Height = 13
          Caption = 'Total Entradas:'
        end
        object lblEntrada_Res: TLabel
          Left = 98
          Top = 16
          Width = 93
          Height = 13
          AutoSize = False
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 216
          Top = 16
          Width = 78
          Height = 13
          Caption = 'Total Sa'#237'das:'
        end
        object lblSaida_Res: TLabel
          Left = 296
          Top = 16
          Width = 93
          Height = 13
          AutoSize = False
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 458
          Top = 16
          Width = 37
          Height = 13
          Caption = 'Saldo:'
        end
        object lblSaldo_Res: TLabel
          Left = 498
          Top = 16
          Width = 93
          Height = 13
          AutoSize = False
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 35
        Height = 327
        Align = alLeft
        Color = clNavy
        TabOrder = 2
        object btnInserir_Itens: TNxButton
          Left = 2
          Top = 3
          Width = 31
          Height = 29
          Hint = 'Inserir um servi'#231'o'
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
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Transparent = True
          OnClick = btnInserir_ItensClick
        end
        object btnExcluir_Itens: TNxButton
          Left = 2
          Top = 64
          Width = 31
          Height = 29
          Hint = 'Excluir o servi'#231'o selecionado'
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
          GlyphSpacing = 0
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Transparent = True
          OnClick = btnExcluir_ItensClick
        end
        object btnAlterar_Itens: TNxButton
          Left = 2
          Top = 33
          Width = 31
          Height = 29
          Hint = 'Alterar o servi'#231'o selecionado'
          Glyph.Data = {
            AE060000424DAE06000000000000360000002800000017000000170000000100
            18000000000078060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
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
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = btnAlterar_ItensClick
        end
      end
    end
  end
  object UCControls1: TUCControls
    GroupName = 'Consulta Estoque Movimento'
    UserControl = fMenu.UserControl1
    NotAllowed = naDisabled
    Left = 593
    Top = 206
  end
end
