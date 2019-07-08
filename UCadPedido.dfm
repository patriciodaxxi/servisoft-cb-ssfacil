object frmCadPedido: TfrmCadPedido
  Left = 127
  Top = 0
  Width = 1105
  Height = 710
  Caption = 'Pedido de Venda'
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
    Width = 1097
    Height = 679
    ActivePage = TS_Cadastro
    ActivePageDefault = TS_Consulta
    Align = alClient
    BackgroundColor = 16752448
    BoldCurrentTab = True
    UseColoredTabs = True
    FlatColor = clGray
    ParentBackgroundColor = False
    TabColors.Shadow = clSilver
    TabIndex = 1
    TabOrder = 0
    OnChange = RzPageControl1Change
    FixedDimension = 19
    object TS_Consulta: TRzTabSheet
      Caption = 'Tela de Consulta'
      object lblInfDtExpedicao: TLabel
        Left = 800
        Top = 633
        Width = 94
        Height = 13
        Caption = 'Inf. Data Expedi'#231#227'o'
      end
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 156
        Width = 1093
        Height = 429
        Align = alClient
        Ctl3D = False
        DataSource = DMCadPedido.dsPedido_Consulta
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        OnGetCellParams = SMDBGrid1GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 28
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'AMOSTRA'
            Title.Alignment = taCenter
            Title.Caption = 'Amostra'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO_STATUS'
            Title.Alignment = taCenter
            Title.Caption = 'Status'
            Width = 101
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'APROVADO_PED'
            Title.Alignment = taCenter
            Title.Caption = 'Aprovado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_OPERACAO'
            Title.Alignment = taCenter
            Title.Caption = 'Opera'#231#227'o'
            Width = 171
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUM_PEDIDO'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Pedido'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FILIAL'
            Title.Alignment = taCenter
            Width = 37
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PEDIDO_CLIENTE'
            Title.Alignment = taCenter
            Title.Caption = 'Pedido Cliente (OC)'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTEMISSAO'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTENTREGA'
            Title.Alignment = taCenter
            Title.Caption = 'Data Entrega'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTRECEBIMENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Data Recebimento'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUM_DOC'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Documento'
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'UF'
            Title.Alignment = taCenter
            Width = 28
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_CLIENTE'
            Title.Caption = 'Nome do Cliente'
            Width = 265
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FANTASIA'
            Title.Alignment = taCenter
            Width = 175
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_TOTAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_ITENS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD'
            Title.Caption = 'Qtd. Produtos'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FATURADO'
            Title.Alignment = taCenter
            Title.Caption = 'Faturado'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_CLIENTE'
            Title.Alignment = taCenter
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_CONSUMIDOR'
            Title.Alignment = taCenter
            Width = 294
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTAPROVADO'
            Title.Alignment = taCenter
            Title.Caption = 'Data Aprovado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_TRANSPORTADORA'
            Title.Alignment = taCenter
            Title.Caption = 'Transportadora'
            Width = 113
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Title.Alignment = taCenter
            Title.Caption = 'Usu'#225'rio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_VENDEDOR'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Vendedor'
            Width = 232
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_VENDEDOR_INT'
            Title.Alignment = taCenter
            Title.Caption = 'Vendedor Interno'
            Width = 196
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMPRESSO'
            Title.Alignment = taCenter
            Title.Caption = 'Impresso'
            Visible = True
          end>
      end
      object pnlPesquisa: TPanel
        Left = 0
        Top = 30
        Width = 1093
        Height = 126
        Align = alTop
        Color = clSilver
        TabOrder = 0
        Visible = False
        object lblCliente: TLabel
          Left = 57
          Top = 72
          Width = 35
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cliente:'
        end
        object lblNumNota: TLabel
          Left = 16
          Top = 34
          Width = 76
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#186' Ped. Interno:'
        end
        object Label5: TLabel
          Left = 6
          Top = 54
          Width = 86
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dt.Emiss'#227'o Inicial:'
        end
        object Label6: TLabel
          Left = 260
          Top = 54
          Width = 25
          Height = 13
          Alignment = taRightJustify
          Caption = 'Final:'
        end
        object Label12: TLabel
          Left = 69
          Top = 16
          Width = 23
          Height = 13
          Alignment = taRightJustify
          Caption = 'Filial:'
        end
        object lblSerie: TLabel
          Left = 225
          Top = 36
          Width = 60
          Height = 13
          Alignment = taRightJustify
          Caption = 'Ped. Cliente:'
        end
        object lblNaoMostrarPreco: TLabel
          Left = 504
          Top = 40
          Width = 89
          Height = 13
          Caption = 'N'#227'o Mostrar Pre'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label41: TLabel
          Left = 387
          Top = 72
          Width = 17
          Height = 13
          Alignment = taRightJustify
          Caption = 'UF:'
        end
        object Label56: TLabel
          Left = 23
          Top = 112
          Width = 69
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dt.Aprova'#231#227'o:'
        end
        object Label60: TLabel
          Left = 260
          Top = 112
          Width = 25
          Height = 13
          Alignment = taRightJustify
          Caption = 'Final:'
        end
        object Label67: TLabel
          Left = 57
          Top = 92
          Width = 35
          Height = 13
          Alignment = taRightJustify
          Caption = 'Op'#231#227'o:'
        end
        object edtCliente: TEdit
          Left = 95
          Top = 66
          Width = 282
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
          OnKeyDown = edtClienteKeyDown
        end
        object cePedInterno: TCurrencyEdit
          Left = 95
          Top = 28
          Width = 100
          Height = 19
          AutoSize = False
          Ctl3D = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          ParentCtl3D = False
          TabOrder = 1
          OnKeyDown = cePedInternoKeyDown
        end
        object RxDBLookupCombo1: TRxDBLookupCombo
          Left = 95
          Top = 8
          Width = 369
          Height = 21
          DropDownCount = 8
          Ctl3D = False
          LookupField = 'ID'
          LookupDisplay = 'NOME_INTERNO'
          LookupSource = DMCadPedido.dsFilial
          ParentCtl3D = False
          TabOrder = 0
        end
        object edtPedCliente: TEdit
          Left = 287
          Top = 28
          Width = 177
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          OnKeyDown = edtPedClienteKeyDown
        end
        object btnConsultar: TNxButton
          Left = 475
          Top = 95
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
          TabOrder = 10
          Transparent = True
          OnClick = btnConsultarClick
        end
        object RxDBLookupCombo8: TRxDBLookupCombo
          Left = 408
          Top = 64
          Width = 57
          Height = 21
          DropDownCount = 8
          Ctl3D = False
          LookupField = 'UF'
          LookupDisplay = 'UF'
          LookupSource = DMCadPedido.dsUF
          ParentCtl3D = False
          TabOrder = 6
        end
        object ckImpPreco: TCheckBox
          Left = 741
          Top = 10
          Width = 79
          Height = 17
          Caption = 'Imp. Pre'#231'o'
          TabOrder = 11
          OnClick = ckImpPrecoClick
        end
        object ckMeiaFolha: TCheckBox
          Left = 632
          Top = 10
          Width = 96
          Height = 17
          Caption = 'Imp. Meia Folha'
          TabOrder = 12
        end
        object ckImpImposto: TCheckBox
          Left = 741
          Top = 26
          Width = 94
          Height = 17
          Caption = 'Imp. Imposto'
          TabOrder = 13
        end
        object ckImpPeso: TCheckBox
          Left = 741
          Top = 41
          Width = 94
          Height = 17
          Caption = 'Imp. Peso'
          TabOrder = 14
        end
        object ckImpDtProducao: TCheckBox
          Left = 632
          Top = 25
          Width = 108
          Height = 17
          Caption = 'Imp. Dt.Produ'#231#227'o'
          TabOrder = 15
        end
        object ckImpFoto: TCheckBox
          Left = 632
          Top = 40
          Width = 108
          Height = 17
          Caption = 'Imp. Foto'
          TabOrder = 16
        end
        object NxDatePicker1: TNxDatePicker
          Left = 95
          Top = 46
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
          Left = 287
          Top = 46
          Width = 90
          Height = 21
          TabOrder = 4
          Text = '22/05/2013'
          HideFocus = False
          Date = 41416.000000000000000000
          NoneCaption = 'Limpar'
          TodayCaption = 'Hoje'
        end
        object gbImpressao: TGroupBox
          Left = 1007
          Top = 1
          Width = 85
          Height = 124
          Align = alRight
          Caption = 'Impress'#227'o'
          TabOrder = 17
          object cbPorta: TCheckBox
            Left = 16
            Top = 16
            Width = 59
            Height = 17
            Caption = 'Porta'
            TabOrder = 0
          end
          object cbVidro: TCheckBox
            Left = 16
            Top = 40
            Width = 61
            Height = 17
            Caption = 'Vidro'
            TabOrder = 1
          end
          object cbOutros: TCheckBox
            Left = 16
            Top = 64
            Width = 61
            Height = 17
            Caption = 'Outros'
            TabOrder = 2
          end
        end
        object ckNaoAprovado: TCheckBox
          Left = 472
          Top = 8
          Width = 135
          Height = 18
          Caption = 'Mostrar N'#227'o Aprovados'
          TabOrder = 18
        end
        object NxDatePicker3: TNxDatePicker
          Left = 95
          Top = 104
          Width = 90
          Height = 21
          TabOrder = 8
          Text = '22/05/2013'
          HideFocus = False
          Date = 41416.000000000000000000
          NoneCaption = 'Limpar'
          TodayCaption = 'Hoje'
        end
        object NxDatePicker4: TNxDatePicker
          Left = 287
          Top = 104
          Width = 90
          Height = 21
          TabOrder = 9
          Text = '22/05/2013'
          HideFocus = False
          Date = 41416.000000000000000000
          NoneCaption = 'Limpar'
          TodayCaption = 'Hoje'
        end
        object BitBtn1: TBitBtn
          Left = 880
          Top = 96
          Width = 121
          Height = 25
          Caption = 'Atualizar Metas'
          TabOrder = 19
          Visible = False
          OnClick = BitBtn1Click
        end
        object cbxOpcao: TComboBox
          Left = 95
          Top = 84
          Width = 145
          Height = 21
          BevelKind = bkSoft
          Style = csDropDownList
          Ctl3D = False
          ItemHeight = 13
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 7
          Text = 'Pendente'
          Items.Strings = (
            'Pendente'
            'Faturados'
            'Ambos')
        end
        object ckImpAcumulado: TCheckBox
          Left = 741
          Top = 57
          Width = 108
          Height = 17
          Caption = 'Imp. ACumulado'
          TabOrder = 20
        end
        object ckImpOrdem: TCheckBox
          Left = 741
          Top = 74
          Width = 180
          Height = 17
          Caption = 'Imp. Na Ordem de Refer'#234'ncia'
          TabOrder = 21
          OnClick = ckImpPrecoClick
        end
      end
      object StaticText1: TStaticText
        Left = 0
        Top = 639
        Width = 1093
        Height = 17
        Align = alBottom
        BorderStyle = sbsSunken
        Caption = 
          'Duplo clique para consultar       F3 Tabela de Pre'#231'o    F4-Inf. ' +
          'Data Expedi'#231#227'o    F6 Cons. Notas     F8= Produtos     F11 Proces' +
          'sos     F12 Cons. Alt. Por Senha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object Panel11: TPanel
        Left = 0
        Top = 0
        Width = 1093
        Height = 30
        Align = alTop
        Color = clSilver
        TabOrder = 1
        object btnInserir: TNxButton
          Left = 1
          Top = 1
          Width = 151
          Height = 28
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
        object btnPesquisar: TNxButton
          Left = 152
          Top = 1
          Width = 151
          Height = 28
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
          TabOrder = 1
          Transparent = True
          OnClick = btnPesquisarClick
        end
        object btnExcluir: TNxButton
          Left = 303
          Top = 1
          Width = 151
          Height = 28
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
          TabOrder = 2
          Transparent = True
          OnClick = btnExcluirClick
        end
        object btnImprimir: TNxButton
          Left = 605
          Top = 1
          Width = 151
          Height = 28
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
        object btnImportarXML: TNxButton
          Left = 756
          Top = 1
          Width = 151
          Height = 28
          Align = alLeft
          Caption = 'Importar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          GlyphSpacing = 5
          ParentFont = False
          PopupMenu = PopupMenu3
          ShowArrow = True
          TabOrder = 4
          Transparent = True
        end
        object btnCopiarPedido: TNxButton
          Left = 454
          Top = 1
          Width = 151
          Height = 28
          Align = alLeft
          Caption = 'Copiar Ped.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            AE060000424DAE06000000000000360000002800000017000000170000000100
            1800000000007806000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3B9A6C57C66AC583FAA5038AD55
            44C2796BEABCB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8705E6C1700782702B05E34
            D17C4FD78054D77F57AF5A34782702631700B4705DFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFF2C8BC561401933819F1
            8D63FFB27FFFB179FFB47CFFB57DFFAE77FFB47EFFB27BED9162913A18591600
            F3D0BCFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFCCA08F570B
            00CD7351FFA477F6A169F2A567F3A667FDAA6CFFB374F3AC6DEDA666F9A968F6
            9F66FCA475C9734F5A0B00DDA894FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            F1C3B2561000DB7E57FA9765EC935AF0A061EC9F60F5A667F9A466F8A567EEA6
            66EBA562F4A463F29D5FEC9259F79A69DD79565A0B00F1D0BCFFFFFFFFFFFF00
            0000FFFFFFFFFFFF611500C86840E98C54EF9554F09858F19A5CF89F66F79D66
            FB9E66FCA468F5A467F2A164F79C65F4975FF3985BEA8E53EF8D5DC367445A14
            00FFFFFFFFFFFF000000FFFFFFA470638B2F0CF58C5BE68A4FD78447B86A35B8
            6C3CB96B40BD6E45C17148BE7045B67041B67041BC6B45BB6940BA6B38D28049
            E68755EA875B8A2B0ABE7965FFFFFF000000FFFFFF631A04C66A3BE9854FC165
            3C8D4020CF9680C69984C29580C29482C49385C09385BB9680BB977FC29483C7
            9382CD9780824220C1693AE6814DD46A3B711F00FFFEE9000000FFBEAD6F1800
            E38250E07D497C2102FFFCEAFFFEF2FFF8F1FFFFF5FFFEF8FFFBFCFFFCFCFFFF
            F8FFFFF7FFFEF8FFFCF8FFFDF5FFFEE97F2A00E37B46ED7E4C761A00FDCFB700
            0000DB8163953714DB7649D77448852B0DFFFDEAFFFFF1FFFFF4FFFFF5FFFFF9
            FFFCFEFFFCFFFFFDFEFFFFFBFFFEF9FFFEF8FFF9F5FFFEED7E2300E7784AE070
            429B3812DB9179000000C46642A5461BD36C3BDC7646A54827A0553FFBCDBCE3
            C7BCDEC8BDE0C6BFE7C3C3E9C2C4E5C3C3E3C4C1E7C4C0EAC4BFFACAC4985644
            AB4C25E27343DD6E3EA73E17C56B53000000B45B2FA94D1AD57131D26D2FE17E
            52A64A2D5D0E01540D09520E09520E07570D07590E06570E06560E06520F0654
            0F055A0E02A34D35DF7E4CD56A30E06E39BA4C22BC5C44000000C46642A34413
            D06A29D87433B45628B25E42FFC9C1FFC5C6FFC4C3FFC3C0FFC3BFFFC4BDFFC4
            BDFFC4BDFFC5BDFFC6BEFFC9C0AA5C45B65A27DB7134D7662EA4390DC66F5500
            0000E87E6D9A3110CD6228D97A3B7B2E07FFFEEBFFFBFBFFF9FEFFFCFEFFFDFC
            FFFBFFFFFBFFFFFBFFFFFCFEFFFDFEFFFCFEFFFCFCFFFCEE7B2500E1753FD363
            2E933206D6947B000000FFB8B4791600C9612CDE7C40762902FFFDE8FFFBF6FF
            FDFCFFFFF8FFFFF7FFFDFBFFFDFCFFFEFBFFFEFBFFFEF9FFFFF8FFFDF5FFFFEB
            7D2600E0743ECF5D2E771900FFCFBB000000FFF6F65F1404B34F1FDB7036CD6F
            41843310D08B77C88975CB8C70C98B6DC1886EC38A71C68A72C78A70C78B6ECA
            8C6ECD8F717B320CD87941DB6C34BE481F771A01FFFDF5000000FFFAFCB0796C
            842500C55723FA9460E7895BBC6943BA6B44C37245C47445C5784ABF7448C171
            48C5734AC06E44BC6B3EBB6B3CE48E5AF28B52C558248A2100CD7F6FFFF8F800
            0000FFFCFDFFFCF46B1300AB3C14D66D3AFB9E66EFA46CECA76EF6AE72F7AC6E
            FDB072FCAE73FCAF77FCAD7AF4A370F0A06BEC9D64F19A61DE713EA239126015
            00FFFCF5FFFCFF000000FFFFFEFFFEF8FFD1C3680E00A03C12E07E48F8A66CF1
            A969F4AE6BF8B16DFFB570FFB874FDB176F7A86FF8A56EFDA66EFFA76BD87B44
            A03912640A00FFD3C7FFFAFAFFFBFF000000FFFFFBFFFFF9FFF5EFD8A69A670F
            009B310CD06938FFA86DF9B26FFEBD78FFBA75FFBB7BFFB87CFFB178FFAF76FF
            A069D263319D330A681100EBAEA0FFFCFBFFFBFFFFFCFF000000FFFCF7FFFFFC
            FFFFFEFFFEF9FFC5BA6B14007D1E0095390EC1723FDD935BF3A36CFBAB76F2A3
            72DD8B5BC3693A9B3C107F1D006E1600FFCCBDFFFCF8FFFDFFFFFCFFFDFBFF00
            0000FDFFFEF9FCFAFFFFFEFFF8F5FFFDFBFFFCF7BE8379611908660D007D1A00
            902909942A0B8726057A20026B1A005C1801B88376FFFDF7FFFEFBFFFCFDFCF9
            FBFFFFFFFFFFFC000000F9FFFEFBFFFEFFFEFDFFFDFCFFFEFFFFFBFEFFF4F5FF
            F9F5FFC1BBFA8D7FE16B5AD5604BD86E57EE917CFFC3B1FFFCF1FFFCF9FFFBFD
            FBFEFFF5FEFFFDFFFFFFFFFEFEFCF4000000}
          GlyphSpacing = 5
          ParentFont = False
          TabOrder = 5
          Transparent = True
          OnClick = btnCopiarPedidoClick
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 615
        Width = 1093
        Height = 24
        Align = alBottom
        Color = clSilver
        TabOrder = 4
        object Label25: TLabel
          Left = 45
          Top = 8
          Width = 51
          Height = 13
          Caption = 'Cancelada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Shape1: TShape
          Left = 13
          Top = 5
          Width = 30
          Height = 16
          Brush.Color = clRed
        end
        object Shape5: TShape
          Left = 109
          Top = 5
          Width = 30
          Height = 16
          Brush.Color = clAqua
        end
        object Label30: TLabel
          Left = 141
          Top = 8
          Width = 53
          Height = 13
          Caption = 'Fat. Parcial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Shape6: TShape
          Left = 204
          Top = 5
          Width = 30
          Height = 16
          Brush.Color = clGreen
        end
        object Label31: TLabel
          Left = 236
          Top = 8
          Width = 42
          Height = 13
          Caption = 'Faturado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Shape9: TShape
          Left = 290
          Top = 5
          Width = 30
          Height = 16
          Brush.Color = clSilver
        end
        object Label45: TLabel
          Left = 322
          Top = 8
          Width = 104
          Height = 13
          Caption = 'Emitido sem cobran'#231'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Shape10: TShape
          Left = 434
          Top = 5
          Width = 30
          Height = 16
          Brush.Color = 8454143
        end
        object Label50: TLabel
          Left = 466
          Top = 8
          Width = 116
          Height = 13
          Caption = 'Pendente de Aprova'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Shape7: TShape
          Left = 591
          Top = 5
          Width = 30
          Height = 16
          Brush.Color = 11184895
        end
        object Label32: TLabel
          Left = 623
          Top = 8
          Width = 69
          Height = 13
          Caption = 'N'#227'o Aprovado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Shape11: TShape
          Left = 699
          Top = 4
          Width = 30
          Height = 16
          Brush.Color = 33023
        end
        object Label68: TLabel
          Left = 731
          Top = 7
          Width = 45
          Height = 13
          Caption = 'Conferido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Shape12: TShape
          Left = 803
          Top = 4
          Width = 30
          Height = 16
          Brush.Color = 16755370
        end
        object Label75: TLabel
          Left = 835
          Top = 7
          Width = 78
          Height = 13
          Caption = 'Gerou Produ'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Shape13: TShape
          Left = 931
          Top = 4
          Width = 30
          Height = 16
          Brush.Color = clOlive
        end
        object Label82: TLabel
          Left = 963
          Top = 7
          Width = 42
          Height = 13
          Caption = 'Impresso'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
      end
      object pnlTotal: TPanel
        Left = 0
        Top = 585
        Width = 1093
        Height = 30
        Align = alBottom
        Color = clSilver
        TabOrder = 5
        object Label23: TLabel
          Left = 298
          Top = 8
          Width = 56
          Height = 16
          Alignment = taRightJustify
          Caption = 'Vlr.Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label51: TLabel
          Left = 360
          Top = 8
          Width = 7
          Height = 16
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label64: TLabel
          Left = 576
          Top = 8
          Width = 138
          Height = 16
          Alignment = taRightJustify
          Caption = 'Vlr. Pend. Aprova'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Label65: TLabel
          Left = 720
          Top = 8
          Width = 7
          Height = 16
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object btnRecalcular: TNxButton
          Left = 6
          Top = 2
          Width = 107
          Height = 27
          Hint = 'Copiar OS'
          Caption = 'Recalcular'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
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
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Transparent = True
          OnClick = btnRecalcularClick
        end
      end
    end
    object TS_Cadastro: TRzTabSheet
      Caption = 'Tela de Cadastro'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1093
        Height = 30
        Align = alTop
        Color = 8404992
        TabOrder = 3
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
          Width = 147
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
          Left = 301
          Top = 1
          Width = 153
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
        object btnConsOrd_Prod: TNxButton
          Left = 454
          Top = 1
          Width = 153
          Height = 28
          Hint = 'Consulta Ordem de Produ'#231#227'o'
          Align = alLeft
          Caption = 'Ord. Produ'#231#227'o'
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
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          Transparent = True
          OnClick = btnConsOrd_ProdClick
        end
        object btnOutrasOpcoes: TNxButton
          Left = 607
          Top = 1
          Width = 152
          Height = 28
          Align = alLeft
          Caption = 'Outras Op'#231#245'es'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          GlyphSpacing = 5
          ParentFont = False
          PopupMenu = PopupMenu2
          ShowArrow = True
          TabOrder = 4
          Transparent = True
        end
      end
      object pnlCadastro: TPanel
        Left = 0
        Top = 30
        Width = 1093
        Height = 137
        Align = alTop
        Enabled = False
        TabOrder = 0
        object Panel3: TPanel
          Left = 1
          Top = 27
          Width = 1091
          Height = 109
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Label18: TLabel
            Left = 19
            Top = 51
            Width = 56
            Height = 13
            Alignment = taRightJustify
            Caption = 'Dt.Emiss'#227'o:'
          end
          object Label4: TLabel
            Left = 723
            Top = 50
            Width = 110
            Height = 13
            Caption = 'N'#186' Pedido Cliente (OC):'
          end
          object Label10: TLabel
            Left = 16
            Top = 72
            Width = 59
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cond.Pagto:'
          end
          object SpeedButton4: TSpeedButton
            Left = 437
            Top = 65
            Width = 23
            Height = 21
            Hint = 'Atualiza tabela de cliente'
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
          object Label19: TLabel
            Left = 772
            Top = 9
            Width = 61
            Height = 13
            Alignment = taRightJustify
            Caption = 'Ped. Interno:'
          end
          object Label21: TLabel
            Left = 197
            Top = 51
            Width = 54
            Height = 13
            Alignment = taRightJustify
            Caption = 'Dt.Entrega:'
          end
          object Label35: TLabel
            Left = 760
            Top = 29
            Width = 73
            Height = 13
            Alignment = taRightJustify
            Caption = 'N'#186' Documento:'
          end
          object Label42: TLabel
            Left = 760
            Top = 93
            Width = 73
            Height = 13
            Alignment = taRightJustify
            Caption = 'Tipo da Venda:'
          end
          object btnAlterar_CondPgto: TSpeedButton
            Left = 462
            Top = 65
            Width = 23
            Height = 21
            Hint = 'Alterar Condi'#231#227'o Pagamento'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Layout = blGlyphRight
            Margin = 0
            ParentFont = False
            OnClick = btnAlterar_CondPgtoClick
          end
          object Label69: TLabel
            Left = 495
            Top = 72
            Width = 72
            Height = 13
            Alignment = taRightJustify
            Caption = 'Forma de Pgto:'
          end
          object Label77: TLabel
            Left = 4
            Top = 93
            Width = 72
            Height = 13
            Alignment = taRightJustify
            Caption = 'Email Compras:'
            Visible = False
          end
          object Label78: TLabel
            Left = 378
            Top = 51
            Width = 59
            Height = 13
            Alignment = taRightJustify
            Caption = 'Dt.Recebim:'
          end
          object Label79: TLabel
            Left = 457
            Top = 93
            Width = 74
            Height = 13
            Alignment = taRightJustify
            Caption = 'Fone(DDD/N'#186'):'
            Visible = False
          end
          object DBDateEdit1: TDBDateEdit
            Left = 78
            Top = 43
            Width = 90
            Height = 21
            DataField = 'DTEMISSAO'
            DataSource = DMCadPedido.dsPedido
            NumGlyphs = 2
            TabOrder = 2
            StartOfWeek = Sun
          end
          object DBEdit4: TDBEdit
            Left = 836
            Top = 43
            Width = 140
            Height = 21
            CharCase = ecUpperCase
            Color = clAqua
            DataField = 'PEDIDO_CLIENTE'
            DataSource = DMCadPedido.dsPedido
            TabOrder = 6
            OnExit = DBEdit4Exit
          end
          object DBCheckBox1: TDBCheckBox
            Left = 570
            Top = 50
            Width = 145
            Height = 14
            Caption = 'Imp. o n'#186' da OC na Nota'
            DataField = 'IMP_OC_NOTA'
            DataSource = DMCadPedido.dsPedido
            TabOrder = 5
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBEdit6: TDBEdit
            Left = 836
            Top = 1
            Width = 139
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            Color = clSilver
            DataField = 'NUM_PEDIDO'
            DataSource = DMCadPedido.dsPedido
            ReadOnly = True
            TabOrder = 13
          end
          object pnlCliente: TPanel
            Left = 11
            Top = -2
            Width = 702
            Height = 44
            BevelOuter = bvNone
            TabOrder = 0
            OnEnter = pnlClienteEnter
            OnExit = pnlClienteExit
            object Label22: TLabel
              Left = 29
              Top = 32
              Width = 35
              Height = 13
              Alignment = taRightJustify
              Caption = 'Cliente:'
            end
            object SpeedButton1: TSpeedButton
              Left = 426
              Top = 19
              Width = 23
              Height = 24
              Hint = 'Atualiza tabela de cliente'
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
            object Label3: TLabel
              Left = 14
              Top = 11
              Width = 50
              Height = 13
              Alignment = taRightJustify
              Caption = 'Opera'#231#227'o:'
            end
            object Label20: TLabel
              Left = 466
              Top = 11
              Width = 51
              Height = 13
              Alignment = taRightJustify
              Caption = 'Finalidade:'
            end
            object Label43: TLabel
              Left = 459
              Top = 29
              Width = 58
              Height = 13
              Alignment = taRightJustify
              Caption = 'Consumidor:'
              Visible = False
            end
            object RxDBLookupCombo3: TRxDBLookupCombo
              Left = 67
              Top = 24
              Width = 359
              Height = 21
              DropDownCount = 15
              DropDownWidth = 700
              DataField = 'ID_CLIENTE'
              DataSource = DMCadPedido.dsPedido
              LookupField = 'CODIGO'
              LookupDisplay = 'NOME;CNPJ_CPF'
              LookupSource = DMCadPedido.dsCliente
              TabOrder = 2
              OnChange = RxDBLookupCombo3Change
              OnEnter = RxDBLookupCombo3Enter
              OnExit = RxDBLookupCombo3Exit
              OnKeyDown = RxDBLookupCombo3KeyDown
            end
            object RxDBLookupCombo10: TRxDBLookupCombo
              Left = 67
              Top = 3
              Width = 359
              Height = 21
              DropDownCount = 15
              DropDownWidth = 500
              DataField = 'ID_OPERACAO_NOTA'
              DataSource = DMCadPedido.dsPedido
              LookupField = 'ID'
              LookupDisplay = 'NOME'
              LookupSource = DMCadPedido.dsOperacao_Nota
              TabOrder = 0
              OnChange = RxDBLookupCombo10Change
              OnExit = RxDBLookupCombo10Change
            end
            object rxcbFinalidade: TRxDBComboBox
              Left = 521
              Top = 3
              Width = 179
              Height = 21
              Style = csDropDownList
              DataField = 'FINALIDADE'
              DataSource = DMCadPedido.dsPedido
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'C=Consumo'
                'R=Revenda'
                'I=Industrializa'#231#227'o'
                'O=Outros')
              TabOrder = 1
              Values.Strings = (
                'C'
                'R'
                'I'
                'O')
            end
            object DBEdit12: TDBEdit
              Left = 521
              Top = 23
              Width = 174
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NOME_CONSUMIDOR'
              DataSource = DMCadPedido.dsPedido
              TabOrder = 3
              Visible = False
            end
          end
          object DBDateEdit2: TDBDateEdit
            Left = 253
            Top = 43
            Width = 90
            Height = 21
            DataField = 'DTENTREGA'
            DataSource = DMCadPedido.dsPedido
            NumGlyphs = 2
            TabOrder = 3
            StartOfWeek = Sun
          end
          object DBEdit11: TDBEdit
            Left = 836
            Top = 21
            Width = 139
            Height = 21
            DataField = 'NUM_DOC'
            DataSource = DMCadPedido.dsPedido
            TabOrder = 1
          end
          object RxDBComboBox1: TRxDBComboBox
            Left = 836
            Top = 85
            Width = 142
            Height = 21
            Style = csDropDownList
            DataField = 'TIPO_VENDA'
            DataSource = DMCadPedido.dsPedido
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              'M'#227'o de Obra'
              'Venda')
            TabOrder = 12
            Values.Strings = (
              'M'
              'V')
          end
          object RxDBLookupCombo2: TRxDBLookupCombo
            Left = 78
            Top = 64
            Width = 359
            Height = 21
            DropDownCount = 15
            DropDownWidth = 500
            DataField = 'ID_CONDPGTO'
            DataSource = DMCadPedido.dsPedido
            LookupField = 'ID'
            LookupDisplay = 'NOME'
            LookupSource = DMCadPedido.dsCondPgto
            TabOrder = 7
            OnChange = RxDBLookupCombo2Change
          end
          object rxdbTipoCobranca2: TRxDBLookupCombo
            Left = 570
            Top = 64
            Width = 243
            Height = 21
            DropDownCount = 15
            Ctl3D = True
            DataField = 'ID_TIPO_COBRANCA'
            DataSource = DMCadPedido.dsPedido
            Enabled = False
            LookupField = 'ID'
            LookupDisplay = 'NOME'
            LookupSource = DMCadPedido.dsTipoCobranca
            ParentCtl3D = False
            TabOrder = 8
          end
          object DBEdit24: TDBEdit
            Left = 78
            Top = 85
            Width = 359
            Height = 21
            DataField = 'EMAIL_COMPRAS'
            DataSource = DMCadPedido.dsPedido
            TabOrder = 9
            Visible = False
          end
          object DBDateEdit4: TDBDateEdit
            Left = 440
            Top = 43
            Width = 90
            Height = 21
            DataField = 'DTRECEBIMENTO'
            DataSource = DMCadPedido.dsPedido
            NumGlyphs = 2
            TabOrder = 4
            StartOfWeek = Sun
          end
          object DBEdit25: TDBEdit
            Left = 534
            Top = 85
            Width = 34
            Height = 21
            DataField = 'DDD'
            DataSource = DMCadPedido.dsPedido
            TabOrder = 10
            Visible = False
          end
          object DBEdit26: TDBEdit
            Left = 570
            Top = 85
            Width = 141
            Height = 21
            DataField = 'FONE'
            DataSource = DMCadPedido.dsPedido
            TabOrder = 11
            Visible = False
          end
          object DBCheckBox5: TDBCheckBox
            Left = 989
            Top = 43
            Width = 94
            Height = 17
            Caption = 'NGR'
            DataField = 'NGR'
            DataSource = DMCadPedido.dsPedido
            TabOrder = 14
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox6: TDBCheckBox
            Left = 837
            Top = 67
            Width = 94
            Height = 17
            Caption = 'Amostra'
            DataField = 'AMOSTRA'
            DataSource = DMCadPedido.dsPedido
            TabOrder = 15
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object pnlNota: TPanel
          Left = 1
          Top = 1
          Width = 1091
          Height = 26
          Align = alTop
          Color = clSilver
          Enabled = False
          TabOrder = 1
          object Label16: TLabel
            Left = 248
            Top = 12
            Width = 23
            Height = 13
            Alignment = taRightJustify
            Caption = 'Filial:'
          end
          object lblNome_Filial: TLabel
            Left = 312
            Top = 12
            Width = 23
            Height = 13
            Caption = 'Filial:'
          end
          object DBText1: TDBText
            Left = 272
            Top = 12
            Width = 33
            Height = 13
            DataField = 'FILIAL'
            DataSource = DMCadPedido.dsPedido
          end
          object Label17: TLabel
            Left = 643
            Top = 12
            Width = 14
            Height = 13
            Alignment = taRightJustify
            Caption = 'ID:'
            Visible = False
          end
          object DBEdit3: TDBEdit
            Left = 658
            Top = 4
            Width = 97
            Height = 21
            CharCase = ecUpperCase
            Color = clSilver
            DataField = 'ID'
            DataSource = DMCadPedido.dsPedido
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            Visible = False
          end
          object btnFilial: TNxButton
            Left = 204
            Top = 1
            Width = 37
            Height = 26
            Hint = 'Altera filial (empresa) do pedido'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
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
            GlyphSpacing = 5
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            Transparent = True
            OnClick = btnFilialClick
          end
        end
      end
      object RzPageControl2: TRzPageControl
        Left = 0
        Top = 190
        Width = 1093
        Height = 397
        ActivePage = RzTabSheet1
        ActivePageDefault = RzTabSheet1
        Align = alClient
        BackgroundColor = clSilver
        BoldCurrentTab = True
        FlatColor = clGray
        ParentBackgroundColor = False
        TabColors.Shadow = clSilver
        TabIndex = 0
        TabOrder = 1
        FixedDimension = 19
        object RzTabSheet1: TRzTabSheet
          Caption = 'Itens'
          object SMDBGrid2: TSMDBGrid
            Left = 0
            Top = 53
            Width = 1089
            Height = 81
            Align = alClient
            Ctl3D = False
            DataSource = DMCadPedido.dsPedido_Itens
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
            OnGetCellParams = SMDBGrid2GetCellParams
            RegistryKey = 'Software\Scalabium'
            RegistrySection = 'SMDBGrid'
            WidthOfIndicator = 11
            DefaultRowHeight = 17
            ScrollBars = ssHorizontal
            ColCount = 50
            RowCount = 2
            Columns = <
              item
                Expanded = False
                FieldName = 'ITEM'
                Width = 28
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ITEM_CLIENTE'
                Title.Alignment = taCenter
                Title.Caption = 'Item Ped. do Cliente'
                Width = 53
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODCFOP'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_PRODUTO'
                Width = 47
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'REFERENCIA'
                Width = 116
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOMEPRODUTO'
                Width = 245
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME_COR_COMBINACAO'
                Title.Alignment = taCenter
                Title.Caption = 'Cor / Combina'#231#227'o'
                Width = 161
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'NCM'
                Title.Alignment = taCenter
                Width = 71
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'UNIDADE'
                Title.Alignment = taCenter
                Width = 46
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUM_OS_SERV'
                Title.Alignment = taCenter
                Title.Caption = 'N'#186' OS Servi'#231'o'
                Width = 59
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUM_NOTA_ENT'
                Title.Alignment = taCenter
                Title.Caption = 'N'#186' Nota'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMOS'
                Width = 109
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'FABRICA'
                Title.Alignment = taCenter
                Title.Caption = 'F'#225'brica'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'ENCERADO'
                Title.Alignment = taCenter
                Title.Caption = 'Encerado'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'NUM_TALAO'
                Title.Alignment = taCenter
                Title.Caption = 'N'#186' Lote / Tal'#227'o'
                Width = 71
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
                FieldName = 'QTD'
                Title.Alignment = taCenter
                Width = 83
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTD_FATURADO'
                Title.Alignment = taCenter
                Title.Caption = 'Qtd. Faturada'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTD_RESTANTE'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_UNITARIO'
                Width = 68
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_MATERIAL'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Material'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_DESCONTO_CALC'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Desconto'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_TOTAL'
                Width = 78
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BASE_ICMS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_ICMS'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_IPI'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERC_IPI'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DTENTREGA'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'TAMANHO'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTD_CANCELADO'
                Title.Alignment = taCenter
                Title.Caption = 'Qtd. Cancelada'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERC_DESCONTO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COMPLEMENTO'
                Width = 225
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COD_CST'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COD_IPI'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTD_PRODUZIDA'
                Title.Alignment = taCenter
                Title.Caption = 'Qtd. Produzida'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CARIMBO'
                Title.Alignment = taCenter
                Title.Caption = 'Carimbo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CAIXINHA'
                Title.Alignment = taCenter
                Title.Caption = 'Caixinha'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'GRAVACAO_COM_ERRO'
                Title.Alignment = taCenter
                Title.Caption = 'Com Notifica'#231#227'o'
                Width = 93
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTD_FUT'
                Title.Alignment = taCenter
                Title.Caption = 'Qtd. Enviada (Sem Cobr.)'
                Width = 71
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ITEM_ORIGINAL'
                Title.Alignment = taCenter
                Title.Caption = 'Item Original'
                Width = 70
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DTEXPEDICAO'
                Title.Alignment = taCenter
                Title.Caption = 'Data Expedi'#231#227'o'
                Width = 89
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_FRETE'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DTCONFERENCIA'
                Title.Alignment = taCenter
                Title.Caption = 'Dt. Confer'#234'ncia'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'HRCONFERENCIA'
                Title.Alignment = taCenter
                Title.Caption = 'Hr. Confer'#234'ncia'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USUARIO_CONF'
                Title.Alignment = taCenter
                Title.Caption = 'Usu'#225'rio Confer'#234'ncia'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'TAMANHO_CLIENTE'
                Title.Alignment = taCenter
                Title.Caption = 'Tam. No Cliente'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'COD_COR_CLIENTE'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'd. Cor Cliente'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COD_PRODUTO_CLIENTE'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BASE_IPI'
                Title.Alignment = taCenter
                Title.Caption = 'Base IPI'
                Visible = True
              end>
          end
          object pnlItem: TPanel
            Left = 0
            Top = 23
            Width = 1089
            Height = 30
            Align = alTop
            Color = clSilver
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 0
            object btnInserir_Itens: TNxButton
              Left = 1
              Top = 1
              Width = 151
              Height = 28
              Align = alLeft
              Caption = 'Inserir Produto'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
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
              OnClick = btnInserir_ItensClick
            end
            object btnAlterar_Itens: TNxButton
              Left = 152
              Top = 1
              Width = 151
              Height = 28
              Align = alLeft
              Caption = 'Alterar Produto'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
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
              OnClick = btnAlterar_ItensClick
            end
            object btnExcluir_Itens: TNxButton
              Left = 303
              Top = 1
              Width = 151
              Height = 28
              Align = alLeft
              Caption = 'Excluir Produto'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
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
              OnClick = btnExcluir_ItensClick
            end
            object btnCopiar_Item: TBitBtn
              Left = 469
              Top = 4
              Width = 108
              Height = 25
              Caption = 'Copiar Item'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnClick = btnCopiar_ItemClick
            end
            object btnAltDtEntrega: TBitBtn
              Left = 592
              Top = 5
              Width = 80
              Height = 25
              Caption = 'Alt.Dt.Entrega'
              Enabled = False
              TabOrder = 4
              OnClick = btnAltDtEntregaClick
            end
            object btnCopiarOS: TBitBtn
              Left = 719
              Top = 4
              Width = 89
              Height = 25
              Caption = 'Copiar OS'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 5
              OnClick = btnCopiarOSClick
            end
            object btnAltProdCli: TBitBtn
              Left = 864
              Top = 4
              Width = 89
              Height = 25
              Caption = 'Alt.Prod.Cliente'
              TabOrder = 6
              OnClick = btnAltProdCliClick
            end
            object btnConsTempo: TBitBtn
              Left = 976
              Top = 3
              Width = 89
              Height = 25
              Caption = 'Cons. Tempo'
              TabOrder = 7
              OnClick = btnConsTempoClick
            end
          end
          object pnlMaterial: TPanel
            Left = 0
            Top = 323
            Width = 1089
            Height = 27
            Align = alBottom
            Caption = 'pnlMaterial'
            TabOrder = 2
            object SMDBGrid3: TSMDBGrid
              Left = 908
              Top = 1
              Width = 180
              Height = 25
              Align = alRight
              Ctl3D = False
              DataSource = DMCadPedido.dsPedido_Etiqueta
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlue
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
              DefaultRowHeight = 16
              ScrollBars = ssHorizontal
              ColCount = 2
              RowCount = 2
              Columns = <
                item
                  Expanded = False
                  FieldName = 'TAMANHO'
                  Title.Color = 16764831
                  Width = 121
                  Visible = True
                end>
            end
            object SMDBGrid4: TSMDBGrid
              Left = 1
              Top = 1
              Width = 716
              Height = 25
              Align = alLeft
              Ctl3D = False
              DataSource = DMCadPedido.dsPedido_Material
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlue
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
              DefaultRowHeight = 16
              ScrollBars = ssHorizontal
              ColCount = 10
              RowCount = 2
              Columns = <
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'ID_PRODUTO'
                  Title.Alignment = taCenter
                  Title.Caption = 'C'#243'd. Material'
                  Title.Color = 16764831
                  Width = 49
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NOME_PRODUTO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Nome Material'
                  Title.Color = 16764831
                  Width = 265
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NOME_ETIQUETA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Nome Etiqueta'
                  Title.Color = 16764831
                  Width = 135
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTD_CONSUMO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Consumo M'#233'dio'
                  Title.Color = 16764831
                  Width = 53
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTD_PECA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Qtde.'
                  Title.Color = 16764831
                  Width = 42
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTD_CONSUMO_TOTAL'
                  Title.Caption = 'Consumo Total'
                  Title.Color = 16764831
                  Width = 58
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLR_UNITARIO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Vlr. Unit'#225'rio'
                  Title.Color = 16764831
                  Width = 68
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLR_TOTAL'
                  Title.Alignment = taCenter
                  Title.Caption = 'Vlr. Total'
                  Title.Color = 16764831
                  Width = 82
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'UNIDADE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Unid.'
                  Title.Color = 16764831
                  Width = 32
                  Visible = True
                end>
            end
          end
          object pnlTipoItem: TPanel
            Left = 0
            Top = 252
            Width = 1089
            Height = 71
            Align = alBottom
            Caption = 'pnlMaterial'
            TabOrder = 3
            object SMDBGrid6: TSMDBGrid
              Left = 1
              Top = 1
              Width = 1087
              Height = 69
              Align = alClient
              Ctl3D = False
              DataSource = DMCadPedido.dsPedido_Item_Tipo
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlue
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
              DefaultRowHeight = 16
              ScrollBars = ssHorizontal
              ColCount = 15
              RowCount = 2
              Columns = <
                item
                  Expanded = False
                  FieldName = 'DESCRICAO_TIPO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Tipo'
                  Title.Color = 16764831
                  Width = 72
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'COMPLEMENTO_NOME'
                  Title.Alignment = taCenter
                  Title.Caption = 'Descri'#231#227'o'
                  Title.Color = 16764831
                  Width = 119
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DIAMETRO'
                  Title.Alignment = taCenter
                  Title.Caption = #216
                  Title.Color = 16764831
                  Width = 41
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DIAMETRO_EXT'
                  Title.Alignment = taCenter
                  Title.Caption = #216' Ext.'
                  Title.Color = 16764831
                  Width = 40
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DIAMETRO_INT'
                  Title.Alignment = taCenter
                  Title.Caption = #216' Int.'
                  Title.Color = 16764831
                  Width = 40
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PAREDE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Parede'
                  Title.Color = 16764831
                  Width = 43
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'COMPRIMENTO'
                  Title.Alignment = taCenter
                  Title.Caption = 'X (mm)'
                  Title.Color = 16764831
                  Width = 41
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'LARGURA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Y (mm)'
                  Title.Color = 16764831
                  Width = 43
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ESPESSURA'
                  Title.Alignment = taCenter
                  Title.Caption = '# (mm)'
                  Title.Color = 16764831
                  Width = 46
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTD'
                  Title.Alignment = taCenter
                  Title.Caption = 'Qtde.'
                  Title.Color = 16764831
                  Width = 52
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLR_KG'
                  Title.Alignment = taCenter
                  Title.Caption = 'Pre'#231'o Kg'
                  Title.Color = 16764831
                  Width = 73
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLR_UNITARIO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Vlr. Unit'#225'rio'
                  Title.Color = 16764831
                  Width = 72
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLR_TOTAL'
                  Title.Alignment = taCenter
                  Title.Caption = 'Vlr. Total'
                  Title.Color = 16764831
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PESO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Peso'
                  Title.Color = 16764831
                  Visible = True
                end>
            end
          end
          object pnlPorta: TPanel
            Left = 0
            Top = 193
            Width = 1089
            Height = 59
            Align = alBottom
            TabOrder = 4
            Visible = False
            object SMDBGrid8: TSMDBGrid
              Left = 1
              Top = 1
              Width = 1087
              Height = 57
              Align = alClient
              Color = 12189625
              Ctl3D = False
              DataSource = DMCadPedido.dsPedido_Item_Tipo
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlue
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
              DefaultRowHeight = 16
              ScrollBars = ssHorizontal
              ColCount = 7
              RowCount = 2
              Columns = <
                item
                  Color = clWindow
                  Expanded = False
                  FieldName = 'DESCRICAO_TIPO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Tipo'
                  Title.Color = 16764831
                  Width = 72
                  Visible = True
                end
                item
                  Color = clWindow
                  Expanded = False
                  FieldName = 'clNome_Perfil'
                  Title.Alignment = taCenter
                  Title.Caption = 'Perfil'
                  Title.Color = 16764831
                  Width = 206
                  Visible = True
                end
                item
                  Color = clWindow
                  Expanded = False
                  FieldName = 'clNome_Vidro'
                  Title.Alignment = taCenter
                  Title.Caption = 'Vidro'
                  Title.Color = 16764831
                  Width = 193
                  Visible = True
                end
                item
                  Color = clWindow
                  Expanded = False
                  FieldName = 'clNome_Furacao'
                  Title.Alignment = taCenter
                  Title.Caption = 'Fura'#231#227'o'
                  Title.Color = 16764831
                  Width = 140
                  Visible = True
                end
                item
                  Color = clWindow
                  Expanded = False
                  FieldName = 'ALTURA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Altura'
                  Title.Color = 16764831
                  Width = 53
                  Visible = True
                end
                item
                  Color = clWindow
                  Expanded = False
                  FieldName = 'LARGURA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Largura'
                  Title.Color = 16764831
                  Width = 74
                  Visible = True
                end>
            end
          end
          object pnlVidro: TPanel
            Left = 0
            Top = 134
            Width = 1089
            Height = 59
            Align = alBottom
            Caption = 'pnlMaterial'
            TabOrder = 5
            Visible = False
            object SMDBGrid7: TSMDBGrid
              Left = 1
              Top = 1
              Width = 1087
              Height = 57
              Align = alClient
              Color = 12189625
              Ctl3D = False
              DataSource = DMCadPedido.dsPedido_Item_Tipo
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlue
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
              DefaultRowHeight = 16
              ScrollBars = ssHorizontal
              ColCount = 9
              RowCount = 2
              Columns = <
                item
                  Color = clWindow
                  Expanded = False
                  FieldName = 'DESCRICAO_TIPO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Tipo'
                  Title.Color = 16764831
                  Width = 72
                  Visible = True
                end
                item
                  Color = clWindow
                  Expanded = False
                  FieldName = 'clNome_Acabamento'
                  Title.Alignment = taCenter
                  Title.Caption = 'Acabamento'
                  Title.Color = 16764831
                  Width = 173
                  Visible = True
                end
                item
                  Color = clWindow
                  Expanded = False
                  FieldName = 'clNome_Redondo_Mod'
                  Title.Alignment = taCenter
                  Title.Caption = 'Redondo Mod.'
                  Title.Color = 16764831
                  Width = 166
                  Visible = True
                end
                item
                  Color = clWindow
                  Expanded = False
                  FieldName = 'clNome_CMoeda'
                  Title.Alignment = taCenter
                  Title.Caption = 'Canto Moeda'
                  Title.Color = 16764831
                  Width = 102
                  Visible = True
                end
                item
                  Color = clWindow
                  Expanded = False
                  FieldName = 'clNome_Furos'
                  Title.Alignment = taCenter
                  Title.Caption = 'Furos'
                  Title.Color = 16764831
                  Width = 74
                  Visible = True
                end
                item
                  Color = clWindow
                  Expanded = False
                  FieldName = 'QTD_FUROS'
                  Title.Alignment = taCenter
                  Title.Caption = 'Qtd. Furos'
                  Title.Color = 16764831
                  Width = 76
                  Visible = True
                end
                item
                  Color = clWindow
                  Expanded = False
                  FieldName = 'ALTURA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Altura'
                  Title.Color = 16764831
                  Width = 53
                  Visible = True
                end
                item
                  Color = clWindow
                  Expanded = False
                  FieldName = 'LARGURA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Largura'
                  Title.Color = 16764831
                  Width = 74
                  Visible = True
                end>
            end
          end
          object pnlServico: TPanel
            Left = 0
            Top = 350
            Width = 1089
            Height = 24
            Align = alBottom
            Color = clSilver
            TabOrder = 6
            Visible = False
            object Label73: TLabel
              Left = 3
              Top = 9
              Width = 39
              Height = 13
              Alignment = taRightJustify
              Caption = 'Servi'#231'o:'
            end
            object DBEdit23: TDBEdit
              Left = 46
              Top = 3
              Width = 814
              Height = 19
              CharCase = ecUpperCase
              Color = 13092807
              Ctl3D = False
              DataField = 'NOME_SERVICO_INT'
              DataSource = DMCadPedido.dsPedido_Itens
              MaxLength = 18
              ParentCtl3D = False
              TabOrder = 0
            end
          end
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 1089
            Height = 23
            Align = alTop
            TabOrder = 7
            object pnlLocalEstoque: TPanel
              Left = 1
              Top = 1
              Width = 528
              Height = 21
              Align = alLeft
              BevelOuter = bvNone
              Enabled = False
              TabOrder = 0
              object Label94: TLabel
                Left = 10
                Top = 8
                Width = 71
                Height = 13
                Alignment = taRightJustify
                Caption = 'Local Estoque:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object RxDBLookupCombo9: TRxDBLookupCombo
                Left = 85
                Top = 0
                Width = 438
                Height = 21
                DropDownCount = 8
                DataField = 'ID_LOCAL_ESTOQUE'
                DataSource = DMCadPedido.dsPedido
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                LookupField = 'ID'
                LookupDisplay = 'NOME;COD_LOCAL'
                LookupSource = DMCadPedido.dsLocal_Estoque
                ParentFont = False
                TabOrder = 0
              end
            end
            object pnlTab_Preco: TPanel
              Left = 529
              Top = 1
              Width = 552
              Height = 21
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object Label83: TLabel
                Left = 14
                Top = 8
                Width = 67
                Height = 13
                Alignment = taRightJustify
                Caption = 'Tabela Pre'#231'o:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object RxDBLookupCombo13: TRxDBLookupCombo
                Left = 85
                Top = 0
                Width = 438
                Height = 21
                DropDownCount = 8
                DataField = 'ID_TAB_PRECO'
                DataSource = DMCadPedido.dsPedido
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                LookupField = 'ID'
                LookupDisplay = 'NOME'
                LookupSource = DMCadPedido.dsTab_Preco
                ParentFont = False
                TabOrder = 0
              end
            end
          end
        end
        object RzTabSheet2: TRzTabSheet
          Caption = 'Dados'
          object pnlTransporte_Geral: TPanel
            Left = 0
            Top = 0
            Width = 1089
            Height = 374
            Align = alClient
            TabOrder = 0
            DesignSize = (
              1089
              374)
            object Label70: TLabel
              Left = 9
              Top = 15
              Width = 86
              Height = 13
              Alignment = taRightJustify
              Caption = 'Tipo Atendimento:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object RzGroupBox1: TRzGroupBox
              Left = 1
              Top = 205
              Width = 472
              Height = 143
              BorderColor = clLime
              BorderInner = fsButtonUp
              BorderOuter = fsBump
              Caption = ' Obs. (Pedido)   (N'#227'o vai ser copiado para a nota) '
              Ctl3D = True
              FlatColor = clGreen
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 3
              VisualStyle = vsGradient
              object Label66: TLabel
                Left = 8
                Top = 127
                Width = 59
                Height = 13
                Caption = 'Obs. R'#243'tulo:'
              end
              object DBMemo1: TDBMemo
                Left = 5
                Top = 47
                Width = 462
                Height = 70
                Align = alTop
                DataField = 'OBS'
                DataSource = DMCadPedido.dsPedido
                MaxLength = 378
                ReadOnly = True
                ScrollBars = ssVertical
                TabOrder = 0
              end
              object DBEdit8: TDBEdit
                Left = 69
                Top = 120
                Width = 397
                Height = 21
                Ctl3D = True
                DataField = 'OBS_ROTULO'
                DataSource = DMCadPedido.dsPedido
                ParentCtl3D = False
                ReadOnly = True
                TabOrder = 1
              end
              object pnlDadosAdicionais: TPanel
                Left = 5
                Top = 18
                Width = 462
                Height = 29
                Align = alTop
                BevelInner = bvSpace
                BevelOuter = bvLowered
                Color = clSilver
                Enabled = False
                TabOrder = 2
                OnEnter = pnlDadosAdicionaisEnter
                object SpeedButton8: TSpeedButton
                  Left = 366
                  Top = 5
                  Width = 23
                  Height = 21
                  Hint = 'Abre a tela de Produtos'
                  Caption = '...'
                  OnClick = SpeedButton8Click
                end
                object Label81: TLabel
                  Left = 27
                  Top = 11
                  Width = 25
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Obs.:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object RxDBLookupCombo11: TRxDBLookupCombo
                  Left = 56
                  Top = 4
                  Width = 307
                  Height = 21
                  DropDownCount = 8
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  LookupField = 'ID'
                  LookupDisplay = 'NOME'
                  LookupSource = DMCadPedido.dsObs_Aux
                  ParentFont = False
                  TabOrder = 0
                end
                object BitBtn2: TBitBtn
                  Left = 389
                  Top = 5
                  Width = 69
                  Height = 21
                  Caption = 'Copiar'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlue
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 1
                  OnClick = BitBtn2Click
                  Glyph.Data = {
                    F6000000424DF600000000000000760000002800000010000000100000000100
                    0400000000008000000000000000000000001000000000000000000000000000
                    8000008000000080800080000000800080008080000080808000C0C0C0000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFF70FFF
                    FFFFFFFFFF7700FFFFFFFFFFF777000FFFFFFFFF77770000FFFFFFF777770000
                    0FFFFF777777000000FFF00007770000000FFFFFF077000FFFFFFFFFF077000F
                    FFFFFFFFF077000FFFFFFFFFF077000FFFFFFFFFF077000FFFFFFFFFF077000F
                    FFFFFFFFF078000FFFFFFFFFF088800FFFFFFFFFF788880FFFFF}
                end
              end
            end
            object gbxTransportes: TRzGroupBox
              Left = 2
              Top = 35
              Width = 471
              Height = 126
              BorderColor = clActiveCaption
              BorderInner = fsButtonUp
              BorderOuter = fsBump
              Caption = ' Transporte '
              Ctl3D = True
              FlatColor = clActiveCaption
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clActiveCaption
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              GradientColorStyle = gcsCustom
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
              VisualStyle = vsGradient
              object pnlTransporte: TPanel
                Left = 5
                Top = 18
                Width = 461
                Height = 103
                Align = alClient
                BevelOuter = bvNone
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                object Label84: TLabel
                  Left = 10
                  Top = 8
                  Width = 69
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Local Entrega:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label57: TLabel
                  Left = 52
                  Top = 29
                  Width = 27
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Frete:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label1: TLabel
                  Left = 4
                  Top = 50
                  Width = 75
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Transportadora:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label2: TLabel
                  Left = 15
                  Top = 71
                  Width = 64
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Redespacho:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object SpeedButton2: TSpeedButton
                  Left = 433
                  Top = 40
                  Width = 23
                  Height = 22
                  Hint = 'Atualiza tabela de transportadora'
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
                object Label36: TLabel
                  Left = 24
                  Top = 92
                  Width = 55
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Peso Bruto:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label37: TLabel
                  Left = 268
                  Top = 92
                  Width = 66
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Peso L'#237'quido:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object RxDBComboBox3: TRxDBComboBox
                  Left = 82
                  Top = 0
                  Width = 199
                  Height = 21
                  Style = csDropDownList
                  DataField = 'LOCALENTREGA'
                  DataSource = DMCadPedido.dsPedido
                  EnableValues = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ItemHeight = 13
                  Items.Strings = (
                    'Endere'#231'o Cadastro'
                    'Endere'#231'o de Entrega')
                  ParentFont = False
                  TabOrder = 0
                  Values.Strings = (
                    'N'
                    'E')
                end
                object RxDBComboBox6: TRxDBComboBox
                  Left = 82
                  Top = 21
                  Width = 199
                  Height = 21
                  Style = csDropDownList
                  DataField = 'TIPO_FRETE'
                  DataSource = DMCadPedido.dsPedido
                  EnableValues = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ItemHeight = 13
                  Items.Strings = (
                    'Emitente'
                    'Destinat'#225'rio'
                    'Terceiros'
                    'Transporte Pr'#243'prio por conta do Remetente'
                    'Transporte Pr'#243'prio por conta do Destinat'#225'rio'
                    'Sem Frete')
                  ParentFont = False
                  TabOrder = 2
                  Values.Strings = (
                    '1'
                    '2'
                    '3'
                    '4'
                    '5'
                    '9')
                end
                object RxDBLookupCombo4: TRxDBLookupCombo
                  Left = 82
                  Top = 42
                  Width = 351
                  Height = 21
                  DropDownCount = 15
                  DataField = 'ID_TRANSPORTADORA'
                  DataSource = DMCadPedido.dsPedido
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  LookupField = 'CODIGO'
                  LookupDisplay = 'NOME'
                  LookupSource = DMCadPedido.dsTransportadora
                  ParentFont = False
                  TabOrder = 4
                  OnEnter = RxDBLookupCombo4Enter
                end
                object RxDBLookupCombo5: TRxDBLookupCombo
                  Left = 82
                  Top = 63
                  Width = 350
                  Height = 21
                  DropDownCount = 15
                  DataField = 'ID_REDESPACHO'
                  DataSource = DMCadPedido.dsPedido
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  LookupField = 'CODIGO'
                  LookupDisplay = 'NOME'
                  LookupSource = DMCadPedido.dsTransportadora
                  ParentFont = False
                  TabOrder = 5
                  OnEnter = RxDBLookupCombo4Enter
                end
                object DBEdit29: TDBEdit
                  Left = 82
                  Top = 84
                  Width = 97
                  Height = 21
                  CharCase = ecUpperCase
                  DataField = 'PESOBRUTO'
                  DataSource = DMCadPedido.dsPedido
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  MaxLength = 20
                  ParentFont = False
                  TabOrder = 6
                end
                object DBEdit30: TDBEdit
                  Left = 335
                  Top = 84
                  Width = 97
                  Height = 21
                  CharCase = ecUpperCase
                  DataField = 'PESOLIQUIDO'
                  DataSource = DMCadPedido.dsPedido
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  MaxLength = 20
                  ParentFont = False
                  TabOrder = 7
                end
                object DBCheckBox2: TDBCheckBox
                  Left = 291
                  Top = 25
                  Width = 164
                  Height = 14
                  Caption = 'Somar frete no total do pedido'
                  DataField = 'FRETE_SOMAR'
                  DataSource = DMCadPedido.dsPedido
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 3
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox3: TDBCheckBox
                  Left = 291
                  Top = 3
                  Width = 164
                  Height = 14
                  Caption = 'Romaneio'
                  DataField = 'ROMANEIO'
                  DataSource = DMCadPedido.dsPedido
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
              end
            end
            object gbxDuplicata: TRzGroupBox
              Left = 482
              Top = 73
              Width = 588
              Height = 274
              Anchors = [akLeft, akTop, akRight]
              BorderColor = clMaroon
              BorderInner = fsButtonUp
              BorderOuter = fsBump
              BorderWidth = 1
              Caption = ' Parcelas (Duplicatas) '
              Ctl3D = True
              FlatColor = clMaroon
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 5
              VisualStyle = vsGradient
              object Label47: TLabel
                Left = 56
                Top = 103
                Width = 55
                Height = 13
                Caption = 'Vlr.Entrada:'
              end
              object Label72: TLabel
                Left = 6
                Top = 19
                Width = 105
                Height = 13
                Alignment = taRightJustify
                Caption = 'Condi'#231#227'o Pagamento:'
              end
              object SpeedButton6: TSpeedButton
                Left = 401
                Top = 9
                Width = 23
                Height = 22
                Hint = 'Atualiza tabela de Condi'#231#227'o de Pagamento'
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
              end
              object Label58: TLabel
                Left = 7
                Top = 40
                Width = 104
                Height = 13
                Alignment = taRightJustify
                Caption = 'Forma de Pagamento:'
              end
              object SpeedButton5: TSpeedButton
                Left = 401
                Top = 31
                Width = 23
                Height = 22
                Hint = 'Atualiza tabela de forma de pagamento'
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
              object Label59: TLabel
                Left = 44
                Top = 61
                Width = 67
                Height = 13
                Alignment = taRightJustify
                Caption = 'Conta/Banco:'
              end
              object Label62: TLabel
                Left = 10
                Top = 82
                Width = 101
                Height = 13
                Alignment = taRightJustify
                Caption = 'Conta de Or'#231'amento:'
              end
              object Label74: TLabel
                Left = 248
                Top = 103
                Width = 30
                Height = 13
                Caption = 'Inicial:'
              end
              object SpeedButton7: TSpeedButton
                Left = 401
                Top = 55
                Width = 23
                Height = 22
                Hint = 'Atualizar Banco'
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
              object SMDBGrid_Dupl2: TSMDBGrid
                Left = 6
                Top = 135
                Width = 576
                Height = 133
                Align = alBottom
                Ctl3D = False
                DataSource = DMCadPedido.dsPedido_Parc
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                ParentCtl3D = False
                ParentFont = False
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
                DefaultRowHeight = 16
                ScrollBars = ssHorizontal
                ColCount = 8
                RowCount = 2
                Columns = <
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'ITEM'
                    Title.Alignment = taCenter
                    Title.Caption = 'Parc.'
                    Width = 47
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'DTVENCIMENTO'
                    Title.Alignment = taCenter
                    Title.Caption = 'Data Vcto.'
                    Width = 82
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VLR_VENCIMENTO'
                    Title.Alignment = taCenter
                    Title.Caption = 'Valor Vcto.'
                    Width = 113
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'lkNome_TipoCobranca'
                    Title.Alignment = taCenter
                    Title.Caption = 'Forma de Pagamento'
                    Width = 251
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'lkNome_Conta'
                    Title.Alignment = taCenter
                    Title.Caption = 'Nome Conta'
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'ID_TIPOCOBRANCA'
                    Title.Alignment = taCenter
                    Title.Caption = 'C'#243'd. Forma'
                    Width = 66
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'ID_CONTA'
                    Title.Alignment = taCenter
                    Title.Caption = 'ID Conta'
                    Visible = True
                  end>
              end
              object rxdbCondicaoPgto: TRxDBLookupCombo
                Left = 113
                Top = 11
                Width = 288
                Height = 21
                DropDownCount = 15
                Ctl3D = True
                DataField = 'ID_CONDPGTO'
                DataSource = DMCadPedido.dsPedido
                DisplayEmpty = '[..Nenhuma..]'
                Enabled = False
                LookupField = 'ID'
                LookupDisplay = 'Nome'
                LookupSource = DMCadPedido.dsCondPgto
                ParentCtl3D = False
                TabOrder = 1
                OnChange = rxdbCondicaoPgtoChange
              end
              object rxdbTipoCobranca: TRxDBLookupCombo
                Left = 113
                Top = 32
                Width = 288
                Height = 21
                DropDownCount = 15
                Ctl3D = True
                DataField = 'ID_TIPO_COBRANCA'
                DataSource = DMCadPedido.dsPedido
                Enabled = False
                LookupField = 'ID'
                LookupDisplay = 'NOME'
                LookupSource = DMCadPedido.dsTipoCobranca
                ParentCtl3D = False
                TabOrder = 2
              end
              object rxdbConta: TRxDBLookupCombo
                Left = 113
                Top = 53
                Width = 288
                Height = 21
                DropDownCount = 15
                Ctl3D = True
                DataField = 'ID_CONTA'
                DataSource = DMCadPedido.dsPedido
                Enabled = False
                LookupField = 'ID'
                LookupDisplay = 'NOME'
                LookupSource = DMCadPedido.dsContas
                ParentCtl3D = False
                TabOrder = 3
                OnChange = rxdbContaChange
              end
              object DBEdit16: TDBEdit
                Left = 113
                Top = 95
                Width = 76
                Height = 21
                Ctl3D = True
                DataField = 'VLR_ENTRADA'
                DataSource = DMCadPedido.dsPedido
                Enabled = False
                ParentCtl3D = False
                TabOrder = 5
                OnChange = DBEdit16Change
                OnExit = DBEdit16Exit
                OnKeyDown = DBEdit16KeyDown
              end
              object btnGerarParcelas: TNxButton
                Left = 372
                Top = 94
                Width = 31
                Height = 29
                Hint = 'Gerar autom'#225'tico os servi'#231'os'
                Enabled = False
                Glyph.Data = {
                  AE060000424DAE06000000000000360000002800000017000000170000000100
                  18000000000078060000130B0000130B00000000000000000000FFFFFFFFFFFF
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
                ParentShowHint = False
                ShowHint = True
                TabOrder = 6
                Transparent = True
                OnClick = btnGerarParcelasClick
              end
              object btnExcluirParcelas: TNxButton
                Left = 403
                Top = 94
                Width = 31
                Height = 29
                Hint = 'Excluir a parcela selecionada'
                Enabled = False
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
                TabOrder = 7
                Transparent = True
                OnClick = btnExcluirParcelasClick
              end
              object rxdbConta_Orcamento: TRxDBLookupCombo
                Left = 113
                Top = 74
                Width = 288
                Height = 21
                DropDownCount = 15
                Ctl3D = True
                DataField = 'ID_CONTA_ORCAMENTO'
                DataSource = DMCadPedido.dsPedido
                Enabled = False
                LookupField = 'ID'
                LookupDisplay = 'DESCRICAO'
                LookupSource = DMCadPedido.dsContaOrcamento
                ParentCtl3D = False
                TabOrder = 4
              end
              object DBDateEdit3: TDBDateEdit
                Left = 280
                Top = 95
                Width = 90
                Height = 21
                DataField = 'DTINICIO_DUPLICATA'
                DataSource = DMCadPedido.dsPedido
                NumGlyphs = 2
                TabOrder = 8
              end
              object DBCheckBox4: TDBCheckBox
                Left = 113
                Top = 116
                Width = 256
                Height = 17
                Caption = 'Cliente vai pagar entrada no pedido'
                DataField = 'GERA_ENTRADA_NO_PEDIDO'
                DataSource = DMCadPedido.dsPedido
                TabOrder = 9
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                Visible = False
              end
            end
            object gbxVlr_Adiantado: TRzGroupBox
              Left = 2
              Top = 162
              Width = 471
              Height = 37
              BorderColor = clMaroon
              BorderInner = fsButtonUp
              BorderOuter = fsBump
              Caption = ' Varlor Entrada / Adiantamento '
              Ctl3D = True
              FlatColor = clMaroon
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 2
              Visible = False
              VisualStyle = vsGradient
              object Label52: TLabel
                Left = 35
                Top = 22
                Width = 27
                Height = 13
                Alignment = taRightJustify
                Caption = 'Valor:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object DBEdit20: TDBEdit
                Left = 65
                Top = 14
                Width = 136
                Height = 21
                DataField = 'VLR_ADIANTAMENTO'
                DataSource = DMCadPedido.dsPedido
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
            end
            object gbxVendedor: TRzGroupBox
              Left = 481
              Top = 3
              Width = 584
              Height = 67
              BorderColor = clNavy
              BorderInner = fsButtonUp
              BorderOuter = fsBump
              Caption = ' Vendedor '
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
              VisualStyle = vsGradient
              object pnlVendedor: TPanel
                Left = 5
                Top = 18
                Width = 574
                Height = 44
                Align = alClient
                BevelOuter = bvNone
                Enabled = False
                TabOrder = 0
                object Label7: TLabel
                  Left = 18
                  Top = 10
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
                object SpeedButton3: TSpeedButton
                  Left = 362
                  Top = 1
                  Width = 23
                  Height = 22
                  Hint = 'Atualiza tabela de cliente'
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
                object Label8: TLabel
                  Left = 390
                  Top = 10
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
                object Label87: TLabel
                  Left = 3
                  Top = 31
                  Width = 64
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Vend.Interno:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object RxDBLookupCombo6: TRxDBLookupCombo
                  Left = 70
                  Top = 2
                  Width = 291
                  Height = 21
                  DropDownCount = 15
                  DropDownWidth = 500
                  DataField = 'ID_VENDEDOR'
                  DataSource = DMCadPedido.dsPedido
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  LookupField = 'CODIGO'
                  LookupDisplay = 'NOME'
                  LookupSource = DMCadPedido.dsVendedor
                  ParentFont = False
                  TabOrder = 0
                  OnEnter = RxDBLookupCombo6Enter
                  OnExit = RxDBLookupCombo6Exit
                end
                object DBEdit2: TDBEdit
                  Left = 451
                  Top = 1
                  Width = 84
                  Height = 21
                  DataField = 'PERC_COMISSAO'
                  DataSource = DMCadPedido.dsPedido
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
                object RxDBLookupCombo14: TRxDBLookupCombo
                  Left = 70
                  Top = 23
                  Width = 291
                  Height = 21
                  DropDownCount = 15
                  DropDownWidth = 500
                  DataField = 'ID_VENDEDOR_INT'
                  DataSource = DMCadPedido.dsPedido
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  LookupField = 'CODIGO'
                  LookupDisplay = 'NOME'
                  LookupSource = DMCadPedido.dsVendedor
                  ParentFont = False
                  TabOrder = 2
                  OnEnter = RxDBLookupCombo6Enter
                end
              end
            end
            object RxDBComboBox2: TRxDBComboBox
              Left = 98
              Top = 7
              Width = 287
              Height = 21
              Style = csDropDownList
              DataField = 'TIPO_ATENDIMENTO'
              DataSource = DMCadPedido.dsPedido
              EnableValues = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 13
              Items.Strings = (
                'Opera'#231#227'o presencial'
                'NFC-e em opera'#231#227'o com entrega em domic'#237'lio')
              ParentFont = False
              TabOrder = 0
              Values.Strings = (
                '1'
                '4')
              OnChange = RxDBComboBox2Change
            end
            object btnDadosCupom: TBitBtn
              Left = 386
              Top = 3
              Width = 83
              Height = 25
              Caption = 'Dados Cupom'
              TabOrder = 6
              OnClick = btnDadosCupomClick
            end
          end
        end
        object TS_Valores: TRzTabSheet
          Caption = 'Valores'
          Enabled = False
          DesignSize = (
            1089
            374)
          object Label27: TLabel
            Left = 303
            Top = 46
            Width = 67
            Height = 13
            Alignment = taRightJustify
            Caption = 'Vlr. Desconto:'
          end
          object Label28: TLabel
            Left = 50
            Top = 46
            Width = 60
            Height = 13
            Alignment = taRightJustify
            Caption = '% Desconto:'
          end
          object Label39: TLabel
            Left = 393
            Top = 124
            Width = 31
            Height = 13
            Alignment = taRightJustify
            Caption = 'Vlr.IPI:'
          end
          object Label38: TLabel
            Left = 379
            Top = 148
            Width = 45
            Height = 13
            Alignment = taRightJustify
            Caption = 'Vlr. Frete:'
          end
          object Label71: TLabel
            Left = 357
            Top = 170
            Width = 67
            Height = 13
            Alignment = taRightJustify
            Caption = '% ICMS Frete:'
          end
          object Label85: TLabel
            Left = 381
            Top = 100
            Width = 43
            Height = 13
            Alignment = taRightJustify
            Caption = 'Base IPI:'
          end
          object pnlValores: TPanel
            Left = 0
            Top = 0
            Width = 1089
            Height = 32
            Align = alTop
            Color = clSilver
            Enabled = False
            TabOrder = 0
            object Label24: TLabel
              Left = 20
              Top = 14
              Width = 90
              Height = 13
              Alignment = taRightJustify
              Caption = 'Vlr. Total Produtos:'
            end
            object Label26: TLabel
              Left = 533
              Top = 14
              Width = 81
              Height = 13
              Alignment = taRightJustify
              Caption = 'Vlr. Total Pedido:'
            end
            object DBEdit1: TDBEdit
              Left = 114
              Top = 6
              Width = 150
              Height = 21
              CharCase = ecUpperCase
              DataField = 'VLR_ITENS'
              DataSource = DMCadPedido.dsPedido
              MaxLength = 18
              TabOrder = 0
            end
            object DBEdit7: TDBEdit
              Left = 618
              Top = 6
              Width = 150
              Height = 21
              CharCase = ecUpperCase
              DataField = 'VLR_TOTAL'
              DataSource = DMCadPedido.dsPedido
              MaxLength = 18
              TabOrder = 1
            end
          end
          object DBEdit9: TDBEdit
            Left = 374
            Top = 38
            Width = 150
            Height = 21
            CharCase = ecUpperCase
            DataField = 'VLR_DESCONTO'
            DataSource = DMCadPedido.dsPedido
            MaxLength = 18
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit10: TDBEdit
            Left = 114
            Top = 38
            Width = 150
            Height = 21
            CharCase = ecUpperCase
            DataField = 'PERC_DESCONTO'
            DataSource = DMCadPedido.dsPedido
            MaxLength = 18
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit19: TDBEdit
            Left = 425
            Top = 116
            Width = 100
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            DataField = 'VLR_IPI'
            DataSource = DMCadPedido.dsPedido
            TabOrder = 5
          end
          object gbxIcms: TGroupBox
            Left = 56
            Top = 80
            Width = 217
            Height = 67
            Caption = ' ICMS Geral '
            Enabled = False
            TabOrder = 6
            object Label29: TLabel
              Left = 46
              Top = 20
              Width = 56
              Height = 13
              Alignment = taRightJustify
              Caption = 'Base ICMS:'
            end
            object Label40: TLabel
              Left = 55
              Top = 44
              Width = 47
              Height = 13
              Alignment = taRightJustify
              Caption = 'Vlr. ICMS:'
            end
            object DBEdit13: TDBEdit
              Left = 105
              Top = 12
              Width = 98
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              DataField = 'BASE_ICMS'
              DataSource = DMCadPedido.dsPedido
              TabOrder = 0
            end
            object DBEdit15: TDBEdit
              Left = 105
              Top = 36
              Width = 98
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              DataField = 'VLR_ICMS'
              DataSource = DMCadPedido.dsPedido
              TabOrder = 1
            end
          end
          object DBEdit14: TDBEdit
            Left = 425
            Top = 140
            Width = 100
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            DataField = 'VLR_FRETE'
            DataSource = DMCadPedido.dsPedido
            TabOrder = 7
            OnEnter = DBEdit14Enter
            OnExit = DBEdit14Exit
          end
          object btnDesconto: TBitBtn
            Left = 684
            Top = 70
            Width = 177
            Height = 31
            Anchors = [akTop, akRight]
            Caption = 'Informar Desconto'
            DragCursor = crHandPoint
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = btnDescontoClick
          end
          object btnCalcular_Valores: TBitBtn
            Left = 684
            Top = 102
            Width = 177
            Height = 31
            Anchors = [akTop, akRight]
            Caption = 'Calcular Desc./Valores'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnClick = btnCalcular_ValoresClick
            Glyph.Data = {
              12090000424D120900000000000036000000280000001B0000001B0000000100
              180000000000DC08000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFC3C3C3BDBDBDB7B7B7B7B7B7BBBBBBBABABAB8B8B8BCBCBCBCBCBCB6B6
              B6B7B7B7BBBBBBB9B9B9B9B9B9BCBCBCBCBCBCB6B6B6B7B7B7BCBCBCB8B8B8C7
              C7C7FCFCFCFFFFFFFFFFFF000000FFFFFFE5E5E5414141272727232323242424
              2727272828282121212323232626262424242727272828282525252323231F1F
              1F2727272525252727272727272828282424241F1F1F474747E5E5E5FFFFFF00
              0000FFFFFF7171712C2C2C3535353B3B3B2828281E1E1E1C1C1C2D2D2D3A3A3A
              3535352F2F2F2222222222222424243939393838383A3A3A2828282222221D1D
              1D2929293838383434342B2B2B5B5B5BFFFFFF000000FFFFFF7C7C7C2B2B2B3C
              3C3C262626A1A1A1C7C7C7D6D6D67A7A7A282828333333555555CFCFCFC7C7C7
              B7B7B7353535323232303030A3A3A3C7C7C7CCCCCC7676762C2C2C3636362A2A
              2A686868FFFFFF000000FFFFFF7272722C2C2C2E2E2E7F7F7FFFFFFFFFFFFFFF
              FFFFFFFFFF5757572C2C2CF4F4F4FFFFFFFFFFFFFFFFFFC7C7C71B1B1B8F8F8F
              FFFFFFFFFFFFFFFFFFFFFFFF444444313131353535686868FFFFFF000000FFFF
              FF7676762B2B2B313131646464FFFFFFFFFFFFFFFFFFFFFFFF454545252525D1
              D1D1FDFDFDFFFFFFFFFFFF9696961F1F1F7D7D7DFFFFFFF6F6F6FFFFFFF7F7F7
              3B3B3B333333323232636363FFFFFF000000FFFFFF7474742E2E2E3434342B2B
              2B5A5A5A8080807F7F7F4949492B2B2B3636363D3D3D7777777F7F7F6C6C6C32
              32323131312D2D2D6565657A7A7A7E7E7E4A4A4A343434363636303030656565
              FFFFFF000000FFFFFF7A7A7A2929293E3E3E3030302323232F2F2F2828282222
              223A3A3A3333331F1F1F2A2A2A2D2D2D2424242F2F2F3737373232322525252E
              2E2E2929292B2B2B3131313838382D2D2D676767FFFFFF000000FFFFFF727272
              3131312B2B2B464646FCFCFCFDFDFDF7F7F7C9C9C92A2A2A252525B2B2B2FFFF
              FFFFFFFFF1F1F16464642929294E4E4EF4F4F4FFFFFFFFFFFFBFBFBF30303038
              38382F2F2F686868FFFFFF000000FFFFFF7676762D2D2D2C2C2C919191FFFFFF
              FFFFFFFAFAFAFFFFFF575757343434FFFFFFFFFFFFFEFEFEFFFFFFC7C7C71616
              169F9F9FFFFFFFFFFFFFFFFFFFFFFFFF4A4A4A3535352F2F2F686868FFFFFF00
              0000FFFFFF7B7B7B2B2B2B353535424242FFFFFFFFFFFFFFFFFFD3D3D3313131
              282828ABABABFFFFFFFFFFFFFFFFFF6868682A2A2A575757F8F8F8FFFFFFFFFF
              FFCDCDCD2D2D2D3636362E2E2E676767FFFFFF000000FFFFFF7B7B7B2B2B2B3D
              3D3D2F2F2F1A1A1A262626202020252525323232383838212121242424272727
              1D1D1D2929293636363434341E1E1E2A2A2A2323232222223636363737372D2D
              2D666666FFFFFF000000FFFFFF7777772828283D3D3D2E2E2E58585871717172
              72724A4A4A2C2C2C3232323D3D3D6363636E6E6E7171712B2B2B3636362F2F2F
              5F5F5F6868687070704545452E2E2E353535333333636363FFFFFF000000FFFF
              FF7777772C2C2C2D2D2D6D6D6DFFFFFFFCFCFCFFFFFFFFFFFF414141292929E1
              E1E1FFFFFFFAFAFAFFFFFF9C9C9C202020777777FFFFFFFEFEFEFDFDFDFDFDFD
              3B3B3B343434303030656565FFFFFF000000FFFFFF7777772E2E2E2F2F2F8686
              86FFFFFFF4F4F4EBEBEBFFFFFF5353532D2D2DFFFFFFFFFFFFF3F3F3F5F5F5C2
              C2C21616169C9C9CFFFFFFFFFFFFF7F7F7FFFFFF4848483434342D2D2D676767
              FFFFFF000000FFFFFF7171712D2D2D3434342F2F2FB1B1B1CECECEC3C3C38181
              812C2C2C2D2D2D6C6C6CC8C8C8D0D0D0BABABA3E3E3E333333313131B0B0B0D0
              D0D0CECECE8181812929293939392E2E2E686868FFFFFF000000FFFFFF767676
              2E2E2E3737373535352424241C1C1C2020202C2C2C3636363131312626262222
              221D1D1D2222223434343737373636362222221C1C1C24242429292937373739
              39392F2F2F696969FFFFFF000000FFFFFF7878782C2C2C353535363636313131
              3939393030303232323232323434343636363131313838383232323131313131
              312B2B2B3B3B3B3838383737373333332D2D2D363636323232646464FFFFFF00
              0000FFFFFF7373732D2D2D323232555555ECECECEEEEEEFCFCFCFAFAFAFBFBFB
              F9F9F9FAFAFAEDEDEDECECECFCFCFCFBFBFBF7F7F7FEFEFEF1F1F1B2B2B2CFCF
              CFFFFFFF5A5A5A313131313131646464FFFFFF000000FFFFFF7878782B2B2B2B
              2B2B9A9A9AFFFFFFE7E7E7F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCE9E9E9
              F1F1F1FFFFFFFFFFFFF6F6F68989895353537D7D7DDFDFDF9999992C2C2C2E2E
              2E666666FFFFFF000000FFFFFF7171713232322C2C2C939393FFFFFFFAFAFAE9
              E9E9F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCEBEBEBEEEEEEFFFFFFFDFDFD
              343434FFFFFF5D5D5DDCDCDC8A8A8A2E2E2E2D2D2D676767FFFFFF000000FFFF
              FF7575753030302C2C2C888888FFFFFFFEFEFEF5F5F5E7E7E7F0F0F0FEFEFEFB
              FBFBFAFAFAFEFEFEFBFBFBE5E5E5EEEEEEFEFEFE3A3A3AFFFFFF666666E2E2E2
              9393932E2E2E2F2F2F666666FFFFFF000000FFFFFF7575752C2C2C3232329D9D
              9DFFFFFFFFFFFFFFFFFFFDFDFDEDEDEDF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFE8E8E8EDEDED9292923F3F3F8A8A8AF2F2F29999992C2C2C2D2D2D666666
              FFFFFF000000FFFFFF7878782D2D2D3333334F4F4FE8E8E8EEEEEEF1F1F1EEEE
              EEE7E7E7DEDEDEE6E6E6F0F0F0EEEEEEEBEBEBECECECEAEAEAE6E6E6D4D4D4C3
              C3C3D5D5D5F6F6F65050503232322C2C2C626262FFFFFF000000FFFFFF898989
              2121213535352F2F2F2A2A2A2D2D2D2F2F2F2D2D2D2E2E2E2E2E2E2A2A2A2C2C
              2C2D2D2D2C2C2C2B2B2B3232322B2B2B3131313131313131312828282D2D2D32
              32322121217D7D7DFFFFFF000000FFFFFFFFFFFF8F8F8F353535323232343434
              2C2C2C2B2B2B3434343030303030303030303434342E2E2E2A2A2A2E2E2E3030
              303030303030303434343030302B2B2B3232322D2D2D8B8B8BFFFFFFFFFFFF00
              0000FFFFFFFDFDFDFFFFFFFFFFFFECECECF5F5F5EDEDEDE8E8E8EDEDEDF2F2F2
              F2F2F2F2F2F2F3F3F3EDEDEDE8E8E8ECECECF2F2F2F2F2F2F2F2F2F3F3F3EDED
              EDE9E9E9EBEBEBFFFFFFFFFFFFFBFBFBFFFFFF000000}
          end
          object gbxSubstituicao: TGroupBox
            Left = 56
            Top = 160
            Width = 217
            Height = 65
            Caption = ' ICMS Subst. '
            Enabled = False
            TabOrder = 8
            object Label46: TLabel
              Left = 46
              Top = 20
              Width = 56
              Height = 13
              Alignment = taRightJustify
              Caption = 'Base ICMS:'
            end
            object Label53: TLabel
              Left = 55
              Top = 44
              Width = 47
              Height = 13
              Alignment = taRightJustify
              Caption = 'Vlr. ICMS:'
            end
            object DBEdit18: TDBEdit
              Left = 104
              Top = 12
              Width = 98
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              DataField = 'BASE_ICMSSUBST'
              DataSource = DMCadPedido.dsPedido
              TabOrder = 0
            end
            object DBEdit33: TDBEdit
              Left = 104
              Top = 36
              Width = 98
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              DataField = 'VLR_ICMSSUBST'
              DataSource = DMCadPedido.dsPedido
              TabOrder = 1
            end
          end
          object gbxTransfIcms: TGroupBox
            Left = 56
            Top = 240
            Width = 217
            Height = 65
            Caption = ' Transfer'#234'ncia ICMS '
            Enabled = False
            TabOrder = 9
            object Label54: TLabel
              Left = 46
              Top = 20
              Width = 56
              Height = 13
              Alignment = taRightJustify
              Caption = 'Base ICMS:'
            end
            object Label55: TLabel
              Left = 55
              Top = 44
              Width = 47
              Height = 13
              Alignment = taRightJustify
              Caption = 'Vlr. ICMS:'
            end
            object DBEdit34: TDBEdit
              Left = 104
              Top = 12
              Width = 98
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              DataField = 'BASE_ICMSTRANSF'
              DataSource = DMCadPedido.dsPedido
              TabOrder = 0
            end
            object DBEdit35: TDBEdit
              Left = 104
              Top = 36
              Width = 98
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              DataField = 'VLR_TRANSF'
              DataSource = DMCadPedido.dsPedido
              TabOrder = 1
            end
          end
          object GroupBox1: TGroupBox
            Left = 720
            Top = 237
            Width = 201
            Height = 97
            Caption = ' Vlr. ICMS UF Destino '
            Enabled = False
            TabOrder = 10
            object Label96: TLabel
              Left = 11
              Top = 18
              Width = 87
              Height = 26
              Alignment = taRightJustify
              Caption = 'Vlr.ICMS. Fundo'#13#10'Combate Pobreza:'
            end
            object Label97: TLabel
              Left = 12
              Top = 51
              Width = 89
              Height = 13
              Alignment = taRightJustify
              Caption = 'Vlr. ICMS UF Dest:'
            end
            object Label98: TLabel
              Left = 3
              Top = 75
              Width = 98
              Height = 13
              Alignment = taRightJustify
              Caption = 'Vlr. ICMS UF Remet:'
            end
            object DBEdit56: TDBEdit
              Left = 104
              Top = 22
              Width = 91
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = clSilver
              DataField = 'VLR_ICMS_FCP'
              DataSource = DMCadPedido.dsPedido
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit57: TDBEdit
              Left = 104
              Top = 47
              Width = 91
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = clSilver
              DataField = 'VLR_ICMS_UF_DEST'
              DataSource = DMCadPedido.dsPedido
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit58: TDBEdit
              Left = 104
              Top = 71
              Width = 91
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = clSilver
              DataField = 'VLR_ICMS_UF_REMET'
              DataSource = DMCadPedido.dsPedido
              ReadOnly = True
              TabOrder = 2
            end
          end
          object btnRegravaItens: TBitBtn
            Left = 684
            Top = 135
            Width = 177
            Height = 31
            Anchors = [akTop, akRight]
            Caption = 'Recalc. Itens'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            Visible = False
            OnClick = btnRegravaItensClick
            Glyph.Data = {
              12090000424D120900000000000036000000280000001B0000001B0000000100
              180000000000DC08000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFC3C3C3BDBDBDB7B7B7B7B7B7BBBBBBBABABAB8B8B8BCBCBCBCBCBCB6B6
              B6B7B7B7BBBBBBB9B9B9B9B9B9BCBCBCBCBCBCB6B6B6B7B7B7BCBCBCB8B8B8C7
              C7C7FCFCFCFFFFFFFFFFFF000000FFFFFFE5E5E5414141272727232323242424
              2727272828282121212323232626262424242727272828282525252323231F1F
              1F2727272525252727272727272828282424241F1F1F474747E5E5E5FFFFFF00
              0000FFFFFF7171712C2C2C3535353B3B3B2828281E1E1E1C1C1C2D2D2D3A3A3A
              3535352F2F2F2222222222222424243939393838383A3A3A2828282222221D1D
              1D2929293838383434342B2B2B5B5B5BFFFFFF000000FFFFFF7C7C7C2B2B2B3C
              3C3C262626A1A1A1C7C7C7D6D6D67A7A7A282828333333555555CFCFCFC7C7C7
              B7B7B7353535323232303030A3A3A3C7C7C7CCCCCC7676762C2C2C3636362A2A
              2A686868FFFFFF000000FFFFFF7272722C2C2C2E2E2E7F7F7FFFFFFFFFFFFFFF
              FFFFFFFFFF5757572C2C2CF4F4F4FFFFFFFFFFFFFFFFFFC7C7C71B1B1B8F8F8F
              FFFFFFFFFFFFFFFFFFFFFFFF444444313131353535686868FFFFFF000000FFFF
              FF7676762B2B2B313131646464FFFFFFFFFFFFFFFFFFFFFFFF454545252525D1
              D1D1FDFDFDFFFFFFFFFFFF9696961F1F1F7D7D7DFFFFFFF6F6F6FFFFFFF7F7F7
              3B3B3B333333323232636363FFFFFF000000FFFFFF7474742E2E2E3434342B2B
              2B5A5A5A8080807F7F7F4949492B2B2B3636363D3D3D7777777F7F7F6C6C6C32
              32323131312D2D2D6565657A7A7A7E7E7E4A4A4A343434363636303030656565
              FFFFFF000000FFFFFF7A7A7A2929293E3E3E3030302323232F2F2F2828282222
              223A3A3A3333331F1F1F2A2A2A2D2D2D2424242F2F2F3737373232322525252E
              2E2E2929292B2B2B3131313838382D2D2D676767FFFFFF000000FFFFFF727272
              3131312B2B2B464646FCFCFCFDFDFDF7F7F7C9C9C92A2A2A252525B2B2B2FFFF
              FFFFFFFFF1F1F16464642929294E4E4EF4F4F4FFFFFFFFFFFFBFBFBF30303038
              38382F2F2F686868FFFFFF000000FFFFFF7676762D2D2D2C2C2C919191FFFFFF
              FFFFFFFAFAFAFFFFFF575757343434FFFFFFFFFFFFFEFEFEFFFFFFC7C7C71616
              169F9F9FFFFFFFFFFFFFFFFFFFFFFFFF4A4A4A3535352F2F2F686868FFFFFF00
              0000FFFFFF7B7B7B2B2B2B353535424242FFFFFFFFFFFFFFFFFFD3D3D3313131
              282828ABABABFFFFFFFFFFFFFFFFFF6868682A2A2A575757F8F8F8FFFFFFFFFF
              FFCDCDCD2D2D2D3636362E2E2E676767FFFFFF000000FFFFFF7B7B7B2B2B2B3D
              3D3D2F2F2F1A1A1A262626202020252525323232383838212121242424272727
              1D1D1D2929293636363434341E1E1E2A2A2A2323232222223636363737372D2D
              2D666666FFFFFF000000FFFFFF7777772828283D3D3D2E2E2E58585871717172
              72724A4A4A2C2C2C3232323D3D3D6363636E6E6E7171712B2B2B3636362F2F2F
              5F5F5F6868687070704545452E2E2E353535333333636363FFFFFF000000FFFF
              FF7777772C2C2C2D2D2D6D6D6DFFFFFFFCFCFCFFFFFFFFFFFF414141292929E1
              E1E1FFFFFFFAFAFAFFFFFF9C9C9C202020777777FFFFFFFEFEFEFDFDFDFDFDFD
              3B3B3B343434303030656565FFFFFF000000FFFFFF7777772E2E2E2F2F2F8686
              86FFFFFFF4F4F4EBEBEBFFFFFF5353532D2D2DFFFFFFFFFFFFF3F3F3F5F5F5C2
              C2C21616169C9C9CFFFFFFFFFFFFF7F7F7FFFFFF4848483434342D2D2D676767
              FFFFFF000000FFFFFF7171712D2D2D3434342F2F2FB1B1B1CECECEC3C3C38181
              812C2C2C2D2D2D6C6C6CC8C8C8D0D0D0BABABA3E3E3E333333313131B0B0B0D0
              D0D0CECECE8181812929293939392E2E2E686868FFFFFF000000FFFFFF767676
              2E2E2E3737373535352424241C1C1C2020202C2C2C3636363131312626262222
              221D1D1D2222223434343737373636362222221C1C1C24242429292937373739
              39392F2F2F696969FFFFFF000000FFFFFF7878782C2C2C353535363636313131
              3939393030303232323232323434343636363131313838383232323131313131
              312B2B2B3B3B3B3838383737373333332D2D2D363636323232646464FFFFFF00
              0000FFFFFF7373732D2D2D323232555555ECECECEEEEEEFCFCFCFAFAFAFBFBFB
              F9F9F9FAFAFAEDEDEDECECECFCFCFCFBFBFBF7F7F7FEFEFEF1F1F1B2B2B2CFCF
              CFFFFFFF5A5A5A313131313131646464FFFFFF000000FFFFFF7878782B2B2B2B
              2B2B9A9A9AFFFFFFE7E7E7F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCE9E9E9
              F1F1F1FFFFFFFFFFFFF6F6F68989895353537D7D7DDFDFDF9999992C2C2C2E2E
              2E666666FFFFFF000000FFFFFF7171713232322C2C2C939393FFFFFFFAFAFAE9
              E9E9F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCEBEBEBEEEEEEFFFFFFFDFDFD
              343434FFFFFF5D5D5DDCDCDC8A8A8A2E2E2E2D2D2D676767FFFFFF000000FFFF
              FF7575753030302C2C2C888888FFFFFFFEFEFEF5F5F5E7E7E7F0F0F0FEFEFEFB
              FBFBFAFAFAFEFEFEFBFBFBE5E5E5EEEEEEFEFEFE3A3A3AFFFFFF666666E2E2E2
              9393932E2E2E2F2F2F666666FFFFFF000000FFFFFF7575752C2C2C3232329D9D
              9DFFFFFFFFFFFFFFFFFFFDFDFDEDEDEDF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFE8E8E8EDEDED9292923F3F3F8A8A8AF2F2F29999992C2C2C2D2D2D666666
              FFFFFF000000FFFFFF7878782D2D2D3333334F4F4FE8E8E8EEEEEEF1F1F1EEEE
              EEE7E7E7DEDEDEE6E6E6F0F0F0EEEEEEEBEBEBECECECEAEAEAE6E6E6D4D4D4C3
              C3C3D5D5D5F6F6F65050503232322C2C2C626262FFFFFF000000FFFFFF898989
              2121213535352F2F2F2A2A2A2D2D2D2F2F2F2D2D2D2E2E2E2E2E2E2A2A2A2C2C
              2C2D2D2D2C2C2C2B2B2B3232322B2B2B3131313131313131312828282D2D2D32
              32322121217D7D7DFFFFFF000000FFFFFFFFFFFF8F8F8F353535323232343434
              2C2C2C2B2B2B3434343030303030303030303434342E2E2E2A2A2A2E2E2E3030
              303030303030303434343030302B2B2B3232322D2D2D8B8B8BFFFFFFFFFFFF00
              0000FFFFFFFDFDFDFFFFFFFFFFFFECECECF5F5F5EDEDEDE8E8E8EDEDEDF2F2F2
              F2F2F2F2F2F2F3F3F3EDEDEDE8E8E8ECECECF2F2F2F2F2F2F2F2F2F3F3F3EDED
              EDE9E9E9EBEBEBFFFFFFFFFFFFFBFBFBFFFFFF000000}
          end
          object DBEdit22: TDBEdit
            Left = 425
            Top = 162
            Width = 100
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            DataField = 'PERC_ICMS_FRETE'
            DataSource = DMCadPedido.dsPedido
            TabOrder = 12
            OnEnter = DBEdit14Enter
            OnExit = DBEdit14Exit
          end
          object DBEdit27: TDBEdit
            Left = 425
            Top = 92
            Width = 100
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            DataField = 'BASE_IPI'
            DataSource = DMCadPedido.dsPedido
            TabOrder = 13
          end
        end
        object TS_Trilhos: TRzTabSheet
          Caption = 'Trilhos / Divisores / Puxadores'
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 1089
            Height = 30
            Align = alTop
            Color = clSilver
            TabOrder = 0
            object btnInserir_Trilhos: TNxButton
              Left = 1
              Top = 1
              Width = 144
              Height = 28
              Align = alLeft
              Caption = 'Inserir'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
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
              OnClick = btnInserir_TrilhosClick
            end
            object btnAlterar_Trilhos: TNxButton
              Left = 145
              Top = 1
              Width = 144
              Height = 28
              Align = alLeft
              Caption = 'Alterar'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
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
              OnClick = btnAlterar_TrilhosClick
            end
            object btnExcluir_Trilhos: TNxButton
              Left = 289
              Top = 1
              Width = 144
              Height = 28
              Align = alLeft
              Caption = 'Excluir'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
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
              OnClick = btnExcluir_TrilhosClick
            end
          end
          object SMDBGrid9: TSMDBGrid
            Left = 0
            Top = 30
            Width = 1089
            Height = 344
            Align = alClient
            DataSource = DMCadPedido.dsPedido_Ace
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Flat = False
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
            OnGetCellParams = SMDBGrid9GetCellParams
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
                FieldName = 'ITEM'
                Title.Alignment = taCenter
                Title.Caption = 'Item'
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
                Expanded = False
                FieldName = 'NOMEPRODUTO'
                Title.Alignment = taCenter
                Title.Caption = 'Nome Produto'
                Width = 341
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
                Expanded = False
                FieldName = 'COMPRIMENTO_VOLUME'
                Title.Alignment = taCenter
                Title.Caption = 'Comprimento'
                Width = 88
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_UNITARIO'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Unit'#225'rio'
                Width = 66
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_TOTAL'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Total'
                Visible = True
              end>
          end
        end
        object TS_Roldanas: TRzTabSheet
          Caption = 'Roldanas / Acess'#243'rios'
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 1089
            Height = 30
            Align = alTop
            Color = clSilver
            TabOrder = 0
            object btnInserir_Roldanas: TNxButton
              Left = 1
              Top = 1
              Width = 144
              Height = 28
              Align = alLeft
              Caption = 'Inserir'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
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
              OnClick = btnInserir_RoldanasClick
            end
            object btnAlterar_Roldanas: TNxButton
              Left = 145
              Top = 1
              Width = 144
              Height = 28
              Align = alLeft
              Caption = 'Alterar'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
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
              OnClick = btnAlterar_RoldanasClick
            end
            object btnExcluir_Roldanas: TNxButton
              Left = 289
              Top = 1
              Width = 144
              Height = 28
              Align = alLeft
              Caption = 'Excluir'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
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
              OnClick = btnExcluir_RoldanasClick
            end
          end
          object SMDBGrid10: TSMDBGrid
            Left = 0
            Top = 30
            Width = 1089
            Height = 344
            Align = alClient
            DataSource = DMCadPedido.dsPedido_Rol
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Flat = False
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
            OnGetCellParams = SMDBGrid10GetCellParams
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
                FieldName = 'ITEM'
                Title.Alignment = taCenter
                Title.Caption = 'Item'
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
                Expanded = False
                FieldName = 'NOMEPRODUTO'
                Title.Alignment = taCenter
                Title.Caption = 'Nome Produto'
                Width = 350
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
                Expanded = False
                FieldName = 'COMPRIMENTO_VOLUME'
                Title.Alignment = taCenter
                Title.Caption = 'Volume'
                Width = 88
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_UNITARIO'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Unit'#225'rio'
                Width = 66
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLR_TOTAL'
                Title.Alignment = taCenter
                Title.Caption = 'Vlr. Total'
                Visible = True
              end>
          end
        end
        object TS_ObsNota: TRzTabSheet
          Caption = 'Obs Para NF'
          object RzGroupBox2: TRzGroupBox
            Left = 0
            Top = 0
            Width = 1089
            Height = 374
            Align = alClient
            BorderColor = clLime
            BorderInner = fsButtonUp
            BorderOuter = fsBump
            Caption = 
              ' Observa'#231#227'o  (Pedido)  (esta observa'#231#227'o vai ser copiada para a n' +
              'ota)'
            Ctl3D = True
            FlatColor = clGreen
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            VisualStyle = vsGradient
            object DBMemo2: TDBMemo
              Left = 5
              Top = 18
              Width = 1079
              Height = 351
              Align = alClient
              DataField = 'OBS_NOTA'
              DataSource = DMCadPedido.dsPedido
              MaxLength = 378
              ReadOnly = True
              ScrollBars = ssVertical
              TabOrder = 0
              OnKeyPress = DBMemo2KeyPress
            end
          end
        end
      end
      object Panel10: TPanel
        Left = 0
        Top = 609
        Width = 1093
        Height = 24
        Align = alBottom
        Color = clSilver
        TabOrder = 2
        object Label76: TLabel
          Left = 310
          Top = 10
          Width = 90
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. Total Produtos:'
        end
        object Label80: TLabel
          Left = 591
          Top = 10
          Width = 81
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. Total Pedido:'
        end
        object Label9: TLabel
          Left = 59
          Top = 10
          Width = 68
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtd. Produtos:'
        end
        object DBEdit47: TDBEdit
          Left = 404
          Top = 3
          Width = 150
          Height = 19
          CharCase = ecUpperCase
          Color = clSilver
          Ctl3D = False
          DataField = 'VLR_ITENS'
          DataSource = DMCadPedido.dsPedido
          MaxLength = 18
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBEdit52: TDBEdit
          Left = 676
          Top = 3
          Width = 150
          Height = 19
          CharCase = ecUpperCase
          Color = clSilver
          Ctl3D = False
          DataField = 'VLR_TOTAL'
          DataSource = DMCadPedido.dsPedido
          MaxLength = 18
          ParentCtl3D = False
          TabOrder = 1
        end
        object DBEdit5: TDBEdit
          Left = 131
          Top = 3
          Width = 150
          Height = 19
          CharCase = ecUpperCase
          Color = clSilver
          Ctl3D = False
          DataField = 'QTD'
          DataSource = DMCadPedido.dsPedido
          MaxLength = 18
          ParentCtl3D = False
          TabOrder = 2
        end
      end
      object Panel12: TPanel
        Left = 0
        Top = 633
        Width = 1093
        Height = 23
        Align = alBottom
        Color = clSilver
        TabOrder = 4
        object Label13: TLabel
          Left = 45
          Top = 6
          Width = 51
          Height = 13
          Caption = 'Cancelada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Shape2: TShape
          Left = 13
          Top = 3
          Width = 30
          Height = 16
          Brush.Color = clRed
        end
        object Shape3: TShape
          Left = 109
          Top = 3
          Width = 30
          Height = 16
          Brush.Color = clAqua
        end
        object Label14: TLabel
          Left = 141
          Top = 6
          Width = 53
          Height = 13
          Caption = 'Fat. Parcial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Shape4: TShape
          Left = 204
          Top = 3
          Width = 30
          Height = 16
          Brush.Color = clGreen
        end
        object Label15: TLabel
          Left = 236
          Top = 6
          Width = 42
          Height = 13
          Caption = 'Faturado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label34: TLabel
          Left = 584
          Top = 8
          Width = 113
          Height = 13
          Caption = 'F3 Tabela de Pre'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 440
          Top = 8
          Width = 122
          Height = 13
          Caption = 'F2 Consulta Cadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Shape8: TShape
          Left = 296
          Top = 5
          Width = 30
          Height = 16
          Brush.Color = clMaroon
        end
        object Label44: TLabel
          Left = 328
          Top = 8
          Width = 78
          Height = 13
          Caption = 'Com Notifica'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label61: TLabel
          Left = 881
          Top = 8
          Width = 91
          Height = 13
          Caption = 'F5 Cons. Chapa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label86: TLabel
          Left = 729
          Top = 7
          Width = 116
          Height = 13
          Caption = 'F4 Cons.Obs Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object btnTab_Preco: TBitBtn
        Left = 901
        Top = 121
        Width = 139
        Height = 23
        Hint = 'Tabela de pre'#231'o usada pelo cliente:'
        Caption = 'Tab. Pre'#231'o'
        DragCursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        TabStop = False
        OnClick = btnTab_PrecoClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFF3F3F00202020000000FFFFFFFFFFFFFFFFFF000000000000FFFF
          FF000000000000FFFFFFFFFFFFFFFFFFFFFFFF3F3F005F5F00BFBFBFB0B0B000
          0000FFFFFF0000003FBFBF60DFDF303030CFCFCFC0C0C0303030FFFFFFFFFFFF
          3F3F009F9F00505030B0B0B0BFBFBF4040402020200000006FEFEF6FEFEF6060
          60DFDFDFCFCFCF606060FFFFFF3F3F009F9F0080BF6060DF60205F004040007F
          7F00606060202020003F3F306F6F303030CFCFCFCFCFCF3030300000009F9F00
          70AF3060DF6060DF6050CF3050CF3050CF309F9F00606060202020FFFFFFFFFF
          FF000000000000FFFFFFFFFFFF0000009F9F0040BF0050CF3060DF6080BF6070
          AF3040BF009F9F00606060202020FFFFFF000000000000FFFFFF0000009F9F00
          7070309F9F0040BF0050CF3040BF0040BF0080800050CF309F9F006060602020
          20606060CFCFCF000000FFFFFF3F3F007FBF00508F309F9F0040BF0080800060
          9F0040BF0060DF6050CF309F9F00606060505050606060000000FFFFFFFFFFFF
          3F3F007FBF00407F009F9F0040BF00609F0080BF6080BF6060DF6070AF307FBF
          00606060202020FFFFFFFFFFFFFFFFFFFFFFFF3F3F007FBF00609F609F9F0040
          BF0050CF3060DF6080BF6050CF309F9F005F5F20202020FFFFFFFFFFFFFFFFFF
          0000000000003F3F007FBF00609F609F9F0040BF0060DF6080BF609F9F003F3F
          00606060FFFFFFFFFFFFFFFFFF003F3F6FEFEF3FBFBF0000003F3F007FBF0050
          8F309F9F0040BF009F9F005F5F009F9F005F5F20404040FFFFFFFFFFFF306F6F
          6FEFEF6FEFEF000000FFFFFF3F3F007FBF00407F009F9F005F5F008080009F9F
          00404040FFFFFFFFFFFFFFFFFF000000306F6F003F3F000000000000FFFFFF3F
          3F007FBF008080608080009F9F00404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF606060CFCFCF000000FFFFFF3F3F007FBF009F9F00404040FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF303030606060000000FF
          FFFFFFFFFF3F3F00404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      object pnlAcessorios: TPanel
        Left = 0
        Top = 587
        Width = 1093
        Height = 22
        Align = alBottom
        Color = clSilver
        TabOrder = 6
        object Label48: TLabel
          Left = 4
          Top = 9
          Width = 182
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. Total Trilhos/Divisores/Puxadores:'
        end
        object Label49: TLabel
          Left = 368
          Top = 9
          Width = 90
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr.Total Roldanas:'
        end
        object DBEdit17: TDBEdit
          Left = 190
          Top = 3
          Width = 91
          Height = 19
          CharCase = ecUpperCase
          Color = 13092807
          Ctl3D = False
          DataField = 'VLR_TOTAL_TRILHOS'
          DataSource = DMCadPedido.dsPedido
          MaxLength = 18
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBEdit21: TDBEdit
          Left = 462
          Top = 3
          Width = 91
          Height = 19
          CharCase = ecUpperCase
          Color = 13092807
          Ctl3D = False
          DataField = 'VLR_TOTAL_ROLDANAS'
          DataSource = DMCadPedido.dsPedido
          MaxLength = 18
          ParentCtl3D = False
          TabOrder = 1
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 167
        Width = 1093
        Height = 23
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 7
        Visible = False
        object Label33: TLabel
          Left = 3
          Top = 9
          Width = 85
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cliente Triangular:'
        end
        object Label63: TLabel
          Left = 500
          Top = 10
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Terceiro:'
        end
        object RxDBLookupCombo7: TRxDBLookupCombo
          Left = 91
          Top = 1
          Width = 359
          Height = 21
          DropDownCount = 15
          DropDownWidth = 700
          DataField = 'ID_CLIENTE_TRIANGULAR'
          DataSource = DMCadPedido.dsPedido
          LookupField = 'CODIGO'
          LookupDisplay = 'NOME;CNPJ_CPF'
          LookupSource = DMCadPedido.dsCliente
          TabOrder = 0
          OnChange = RxDBLookupCombo3Change
          OnEnter = RxDBLookupCombo3Enter
          OnKeyDown = RxDBLookupCombo3KeyDown
        end
        object RxDBLookupCombo12: TRxDBLookupCombo
          Left = 545
          Top = 2
          Width = 354
          Height = 21
          DropDownCount = 15
          DropDownWidth = 500
          DataField = 'ID_ATELIER'
          DataSource = DMCadPedido.dsPedido
          LookupField = 'CODIGO'
          LookupDisplay = 'NOME'
          LookupSource = DMCadPedido.dsAtelier
          TabOrder = 1
          OnEnter = RxDBLookupCombo12Enter
        end
      end
    end
  end
  object UCControls1: TUCControls
    GroupName = 'Pedidos'
    UserControl = fMenu.UserControl1
    NotAllowed = naInvisible
    Left = 730
    Top = 262
  end
  object PopupMenu1: TPopupMenu
    Left = 1000
    Top = 94
    object Pedido1: TMenuItem
      Caption = 'Pedido'
      object Normal1: TMenuItem
        Caption = 'Pedido'
        OnClick = Normal1Click
      end
      object PedidoSaldo1: TMenuItem
        Caption = 'Pedido (Saldo)'
        Enabled = False
        OnClick = PedidoSaldo1Click
      end
      object PedidoProduo2: TMenuItem
        Caption = 'Pedido Produ'#231#227'o'
        OnClick = PedidoProduo2Click
      end
      object Conferncia1: TMenuItem
        Caption = 'Confer'#234'ncia'
        OnClick = Conferncia1Click
      end
      object amanho1: TMenuItem
        Caption = 'Tamanho'
        OnClick = amanho1Click
      end
      object amanhoSemMaterial1: TMenuItem
        Caption = 'Tamanho Sem Material'
        OnClick = amanhoSemMaterial1Click
      end
      object SalvarPedido1: TMenuItem
        Caption = 'Salvar Pedido'
        OnClick = SalvarPedido1Click
      end
      object Matricial80Colunas1: TMenuItem
        Caption = 'Matricial 80 Colunas'
        OnClick = Matricial80Colunas1Click
      end
    end
    object EtiquetaIndividual1: TMenuItem
      Caption = 'Etiqueta Individual'
      object EtiquetaCaixaIndividual1: TMenuItem
        Caption = 'Etiqueta Caixa Individual'
        OnClick = EtiquetaCaixaIndividual1Click
      end
      object EtiquetaA41: TMenuItem
        Caption = 'Etiqueta (A4)'
        OnClick = EtiquetaA41Click
      end
      object EtiquetaA4Seleciona1: TMenuItem
        Caption = 'Etiqueta (A4) Seleciona Itens'
        OnClick = EtiquetaA4Seleciona1Click
      end
      object Etiqueta2: TMenuItem
        Caption = 'Etiqueta Cal'#231'ados (DOS)'
        OnClick = Etiqueta2Click
      end
      object Etiqueta1: TMenuItem
        Caption = 'Etiqueta Navalha'
        OnClick = Etiqueta1Click
      end
      object EtiquetaPorItemdoPedido1: TMenuItem
        Caption = 'Etiqueta Por Item do Pedido (Tal'#227'o)'
        OnClick = EtiquetaPorItemdoPedido1Click
      end
      object EtiquetaA4ItensPersonalizado1: TMenuItem
        Caption = 'Etiqueta (A4) Itens Personalizado'
        OnClick = EtiquetaA4ItensPersonalizado1Click
      end
    end
    object EtiquetaRtulo1: TMenuItem
      Caption = 'Etiqueta R'#243'tulo'
      object Rtulo11: TMenuItem
        Caption = 'R'#243'tulo 1'
        OnClick = Rtulo11Click
      end
      object Rtulo21: TMenuItem
        Caption = 'R'#243'tulo 2'
        OnClick = Rtulo21Click
      end
      object Rtulo31: TMenuItem
        Caption = 'R'#243'tulo 3 (Cadastro Com Embalagem)'
        OnClick = Rtulo31Click
      end
      object RtuloPorGrade1: TMenuItem
        Caption = 'R'#243'tulo Por Grade'
        OnClick = RtuloPorGrade1Click
      end
      object Pictograma1: TMenuItem
        Caption = 'Pictograma'
        OnClick = Pictograma1Click
      end
      object RtuloComEmbalagemRolo1: TMenuItem
        Caption = 'R'#243'tulo Com Embalagem (Textil)'
        OnClick = RtuloComEmbalagemRolo1Click
      end
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Personalizado1: TMenuItem
      Caption = 'Personalizado'
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object PedidoProduo1: TMenuItem
      Caption = 'Pedido Produ'#231#227'o'
      OnClick = PedidoProduo1Click
    end
    object PedidoProduoTerceiro1: TMenuItem
      Caption = 'Pedido Produ'#231#227'o Terceiro'
      OnClick = PedidoProduoTerceiro1Click
    end
    object RomaneioParaExpedio1: TMenuItem
      Caption = 'Romaneio Para Expedi'#231#227'o'
      OnClick = RomaneioParaExpedio1Click
    end
    object aloPorPedido1: TMenuItem
      Caption = 'Tal'#227'o Por Pedido'
      OnClick = aloPorPedido1Click
    end
    object aloPorProcesso1: TMenuItem
      Caption = 'Tal'#227'o Por Processo'
      OnClick = aloPorProcesso1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object CarndePagamento1: TMenuItem
      Caption = 'Carn'#234' de Pagamento'
      OnClick = CarndePagamento1Click
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 866
    Top = 32
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 614
    Top = 59
    object CancelarPedido1: TMenuItem
      Caption = 'Cancelar Pedido'
      OnClick = CancelarPedido1Click
    end
    object CancelarItemdoPedido1: TMenuItem
      Caption = 'Cancelar Item do Pedido'
      OnClick = CancelarItemdoPedido1Click
    end
  end
end
