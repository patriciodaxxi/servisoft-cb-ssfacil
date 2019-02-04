object frmAjuste_OperacaoNota: TfrmAjuste_OperacaoNota
  Left = 234
  Top = 83
  Width = 928
  Height = 586
  Caption = 'frmAjuste_OperacaoNota'
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
    Width = 920
    Height = 85
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object lblCliente: TLabel
      Left = 273
      Top = 70
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente:'
    end
    object lblSerie: TLabel
      Left = 281
      Top = 32
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'S'#233'rie:'
    end
    object lblNumNota: TLabel
      Left = 426
      Top = 32
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Nota:'
    end
    object Label5: TLabel
      Left = 222
      Top = 52
      Width = 86
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Emiss'#227'o Inicial:'
    end
    object Label6: TLabel
      Left = 443
      Top = 52
      Width = 25
      Height = 13
      Caption = 'Final:'
    end
    object Label12: TLabel
      Left = 285
      Top = 12
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'Filial:'
    end
    object Edit2: TEdit
      Left = 311
      Top = 64
      Width = 250
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
    end
    object edtSerie: TEdit
      Left = 311
      Top = 24
      Width = 55
      Height = 22
      AutoSize = False
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 471
      Top = 24
      Width = 89
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      ParentCtl3D = False
      TabOrder = 2
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 311
      Top = 4
      Width = 250
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      LookupField = 'ID'
      LookupDisplay = 'NOME_INTERNO'
      LookupSource = DMCadNotaFiscal.dsFilial
      ParentCtl3D = False
      TabOrder = 0
    end
    object btnConsultar: TNxButton
      Left = 567
      Top = 54
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
      TabOrder = 6
      Transparent = True
      OnClick = btnConsultarClick
    end
    object NxDatePicker1: TNxDatePicker
      Left = 311
      Top = 44
      Width = 90
      Height = 21
      TabOrder = 3
      HideFocus = False
      Date = 43480.000000000000000000
      NoneCaption = 'Limpar'
      TodayCaption = 'Hoje'
    end
    object NxDatePicker2: TNxDatePicker
      Left = 471
      Top = 44
      Width = 90
      Height = 21
      TabOrder = 4
      HideFocus = False
      Date = 43480.000000000000000000
      NoneCaption = 'Limpar'
      TodayCaption = 'Hoje'
    end
    object RadioGroup1: TRadioGroup
      Left = 1
      Top = 1
      Width = 208
      Height = 83
      Align = alLeft
      Caption = ' Tipo '
      ItemIndex = 2
      Items.Strings = (
        'Notas Emitidas pelo Faturamento'
        'Notas Entrada pelo Compras'
        'Ambas')
      TabOrder = 7
    end
    object ckMostrarOperacao: TCheckBox
      Left = 592
      Top = 8
      Width = 225
      Height = 17
      Caption = 'Mostrar s'#243' os que n'#227'o tem Opera'#231#227'o'
      TabOrder = 8
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 514
    Width = 920
    Height = 41
    Align = alBottom
    Color = 9961263
    TabOrder = 1
    object Label1: TLabel
      Left = 10
      Top = 18
      Width = 50
      Height = 13
      Alignment = taRightJustify
      Caption = 'Opera'#231#227'o:'
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 63
      Top = 10
      Width = 314
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMCadNotaFiscal.dsOperacao_Nota
      ParentCtl3D = False
      TabOrder = 0
    end
    object NxButton1: TNxButton
      Left = 383
      Top = 6
      Width = 353
      Height = 28
      Caption = 'Confirmar a Opera'#231#227'o para as Notas Selecionadas'
      Down = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = NxButton1Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 85
    Width = 920
    Height = 429
    Align = alClient
    BorderStyle = bsNone
    Ctl3D = False
    DataSource = DMCadNotaFiscal.dsNotaFiscal_Consulta
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 2
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
    ExOptions = [eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 27
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 16
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FILIAL'
        Title.Alignment = taCenter
        Title.Caption = 'Filial'
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_OPERACAO_NOTA'
        Title.Alignment = taCenter
        Title.Caption = 'Opera'#231#227'o Nota'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_REG'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo Reg.'
        Width = 39
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TIPO_NOTA'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo Nota'
        Width = 45
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SERIE'
        Title.Alignment = taCenter
        Title.Caption = 'S'#233'rie'
        Width = 30
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
        FieldName = 'DTEMISSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Emiss'#227'o'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODCFOP'
        Title.Alignment = taCenter
        Title.Caption = 'CFOP'
        Width = 64
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'UF_CLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'UF'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLIENTE'
        Title.Caption = 'Nome Terceiro'
        Width = 271
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FANTASIA'
        Title.Alignment = taCenter
        Title.Caption = 'Fantasia'
        Width = 172
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_NOTA'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Nota'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_DUPLICATA'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Duplicatas'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_CLIENTE'
        Title.Caption = 'ID Terceiro'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
end
