object frmConsOrdemServico_Mat: TfrmConsOrdemServico_Mat
  Left = 233
  Top = 98
  BorderStyle = bsDialog
  Caption = 'Consulta Ordem de Servi'#231'o de Pe'#231'as Usadas (Produtos)'
  ClientHeight = 552
  ClientWidth = 912
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPesquisa: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 127
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object lblCliente: TLabel
      Left = 193
      Top = 51
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente:'
    end
    object lblNumNota: TLabel
      Left = 195
      Top = 32
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' OS:'
    end
    object Label12: TLabel
      Left = 205
      Top = 11
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'Filial:'
    end
    object Label1: TLabel
      Left = 419
      Top = 29
      Width = 81
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Nota Entrada:'
    end
    object Label2: TLabel
      Left = 617
      Top = 29
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' OC:'
    end
    object Label5: TLabel
      Left = 162
      Top = 71
      Width = 66
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Conclu'#237'do:'
    end
    object Label6: TLabel
      Left = 355
      Top = 71
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
    end
    object Label3: TLabel
      Left = 172
      Top = 91
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Emiss'#227'o:'
    end
    object Label4: TLabel
      Left = 355
      Top = 91
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
    end
    object Label7: TLabel
      Left = 174
      Top = 111
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Entrega:'
    end
    object Label8: TLabel
      Left = 355
      Top = 111
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
    end
    object Edit2: TEdit
      Left = 231
      Top = 45
      Width = 250
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 231
      Top = 25
      Width = 100
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      ParentCtl3D = False
      TabOrder = 1
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 231
      Top = 5
      Width = 250
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      LookupField = 'ID'
      LookupDisplay = 'NOME_INTERNO'
      LookupSource = DMCadOrdemServico.dsFilial
      ParentCtl3D = False
      TabOrder = 0
    end
    object btnConsultar: TNxButton
      Left = 483
      Top = 94
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
      TabOrder = 3
      Transparent = True
      OnClick = btnConsultarClick
    end
    object RadioGroup1: TRadioGroup
      Left = 1
      Top = 1
      Width = 156
      Height = 125
      Align = alLeft
      Caption = ' Op'#231#227'o '
      ItemIndex = 0
      Items.Strings = (
        'Pendente'
        'Faturado'
        'Ambos (Pend/Fat)'
        'Pe'#231'as Para N'#227'o Faturar')
      TabOrder = 4
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 503
      Top = 21
      Width = 100
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      ParentCtl3D = False
      TabOrder = 5
    end
    object CurrencyEdit3: TCurrencyEdit
      Left = 653
      Top = 21
      Width = 100
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      ParentCtl3D = False
      TabOrder = 6
    end
    object DateEdit1: TDateEdit
      Left = 231
      Top = 63
      Width = 100
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      StartOfWeek = Sun
      TabOrder = 7
    end
    object DateEdit2: TDateEdit
      Left = 382
      Top = 63
      Width = 100
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      StartOfWeek = Sun
      TabOrder = 8
    end
    object DateEdit3: TDateEdit
      Left = 231
      Top = 83
      Width = 100
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      StartOfWeek = Sun
      TabOrder = 9
    end
    object DateEdit4: TDateEdit
      Left = 382
      Top = 83
      Width = 100
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      StartOfWeek = Sun
      TabOrder = 10
    end
    object DateEdit5: TDateEdit
      Left = 231
      Top = 103
      Width = 100
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      StartOfWeek = Sun
      TabOrder = 11
    end
    object DateEdit6: TDateEdit
      Left = 382
      Top = 103
      Width = 100
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      StartOfWeek = Sun
      TabOrder = 12
    end
    object NxButton1: TNxButton
      Left = 660
      Top = 94
      Width = 103
      Height = 30
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 13
      Transparent = True
      OnClick = NxButton1Click
    end
    object NxButton2: TNxButton
      Left = 763
      Top = 94
      Width = 103
      Height = 30
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 14
      Transparent = True
      OnClick = NxButton2Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 515
    Width = 912
    Height = 37
    Align = alBottom
    Color = clSilver
    TabOrder = 1
    object Shape3: TShape
      Left = 333
      Top = 13
      Width = 30
      Height = 16
      Brush.Color = clAqua
    end
    object Label14: TLabel
      Left = 365
      Top = 16
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
      Left = 436
      Top = 13
      Width = 30
      Height = 16
      Brush.Color = clGreen
    end
    object Label15: TLabel
      Left = 468
      Top = 16
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
    object BitBtn3: TBitBtn
      Left = 8
      Top = 5
      Width = 297
      Height = 31
      Caption = 'Mostrar Notas da Pe'#231'a selecionada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn3Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000000000000000000000000000000000003F3F3F000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000003F3F3F000000BFBFBF7F7F7FBFBFBF7F7F7FFFFFFF7F7F7FBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7FBFBFBF7F7F7F7F7F7F000000BFBFBF
        BFBFBF7F7F7FBFBFBFFFFFFF7F7F7F7F7F7FBFBFBF7F7F7FBFBFBFBFBFBF7F7F
        7F7F7F7FBFBFBF7F7F7F000000BFBFBFBFBFBFBFBFBF7F7F7FFFFFFF7F7F7FBF
        BFBF7F7F7FBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F7F7F7F7F7F7F000000BFBFBF
        BFBFBFBFBFBF7F7F7FFFFFFF7F7F7FBFBFBF7F7F7F7F7F7FBFBFBFBFBFBF7F7F
        7FBFBFBF7F7F7F7F7F7F000000BFBFBFBFBFBF7F7F7F7F7F7FFFFFFF7F7F7F7F
        7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBF7F7F7FBFBFBF7F7F7F000000BFBFBF
        BFBFBFBFBFBFBFBFBF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FBFBFBF7F7F
        7FBFBFBF7F7F7F7F7F7F000000BFBFBFBFBFBFBFBFBFBFBFBF3F3F007FBF007F
        7F003F7F7F3F3F7F00003F7F7F7FBFBFBF7F7F7F7F7F7F7F7F7F000000BFBFBF
        7F7F7FBFBFBFBFBFBF7F7F00FFFF003F3FBF0000FF0000BF0000FF7F7F7F7F7F
        7FBFBFBFBFBFBF7F7F7F000000BFBFBFBFBFBFBFBFBFBFBFBF3F7F003FFF0000
        7F3F00FF0000FF0000FF007F7F7FBFBFBF7F7F7FBFBFBF7F7F7F000000BFBFBF
        BFBFBF7F7F7FBFBFBF7F7F00FFFF00FFFF007FFF007FFF00BFFF007F7F7FBFBF
        BF7F7F7F7F7F7F7F7F7F0000007F7F7F7F7F7F7F7F7F7F7F7F3F3F007F7F007F
        7F007F7F007F7F007F7F003F3F3F7F7F7F7F7F7F7F7F7F3F3F3F000000BFBFBF
        7F7F7FBFBFBFBFBFBFFFFFFFBFBFBFFFFFFFBFBFBFFFFFFFBFBFBFBFBFBFBFBF
        BFFFFFFFBFBFBF7F7F7F0000007F7F7F7F7F7FBFBFBFBFBFBF7F7F7FFFFFFFFF
        FFFF7F7F7FFFFFFF3F3F3F7F7F7FBFBFBF7F7F7F7F7F7F7F7F7F0000007F7F7F
        7F7F7FBFBFBF7F7F7FBFBFBFBFBFBF7F7F7F3F3F3FBFBFBF3F3F3F7F7F7FFFFF
        FF7F7F7FBFBFBF7F7F7F3F3F3F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F}
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 127
    Width = 912
    Height = 388
    ActivePage = TabSheet2
    Align = alClient
    TabIndex = 1
    TabOrder = 2
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Formato Pe'#231'as'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 0
        Width = 908
        Height = 365
        Align = alClient
        Ctl3D = False
        DataSource = DMCadOrdemServico.dsConsulta_Mat
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
        OnGetCellParams = SMDBGrid1GetCellParams
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
            FieldName = 'NOME_PECA'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Pe'#231'a Usada'
            Width = 333
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTD_MAT'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Pe'#231'a'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTD_RESTANTE_MAT'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Pendente Fat.'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTD_FATURADO_MAT'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Faturada'
            Width = 76
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUM_OS'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' OS'
            Width = 91
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUM_SERIE'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' S'#233'rie'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_PRODUTO'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Equipamento'
            Width = 256
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_CLIENTE'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Cliente'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTENTRADA'
            Title.Alignment = taCenter
            Title.Caption = 'Dt. Entrada Produ'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 82
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTCONCLUIDO'
            Title.Alignment = taCenter
            Title.Caption = 'Data Conclu'#237'do'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MARCA'
            Title.Alignment = taCenter
            Title.Caption = 'Marca'
            Width = 148
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MODELO'
            Title.Alignment = taCenter
            Title.Caption = 'Modelo'
            Width = 127
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO_GARANTIA'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Garantia'
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID_PRODUTO'
            Title.Alignment = taCenter
            Title.Caption = 'ID Produto'
            Width = 44
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ITEM'
            Title.Alignment = taCenter
            Title.Caption = 'Item'
            Width = 32
            Visible = True
          end>
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Formato Extrato'
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 0
        Width = 908
        Height = 365
        Align = alClient
        DataSource = DMCadOrdemServico.dsConsultaMat2
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
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
            FieldName = 'NOME_CLIENTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_PRODUTO'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUM_OS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTEMISSAO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MARCA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MODELO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUM_SERIE'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONCLUIDO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTCONCLUIDO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO_GARANTIA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_PECA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_MAT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_UNITARIO_MAT'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_TOTAL_MAT'
            Width = 64
            Visible = True
          end>
      end
    end
  end
end
