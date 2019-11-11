object frmConsPedido_Producao: TfrmConsPedido_Producao
  Left = 150
  Top = 92
  Width = 1072
  Height = 561
  Caption = 'frmConsPedido_Producao'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1056
    Height = 100
    Align = alTop
    BevelOuter = bvNone
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 33
      Top = 12
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Caption = 'Pedido (OC):'
    end
    object Label3: TLabel
      Left = 59
      Top = 34
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente:'
    end
    object Label5: TLabel
      Left = 24
      Top = 56
      Width = 70
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Emiss'#227'o Ini:'
    end
    object Label6: TLabel
      Left = 328
      Top = 56
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
    end
    object Label12: TLabel
      Left = 295
      Top = 12
      Width = 72
      Height = 13
      Alignment = taRightJustify
      Caption = 'Pedido Interno:'
    end
    object Label4: TLabel
      Left = 465
      Top = 12
      Width = 35
      Height = 13
      Caption = 'Op'#231#227'o:'
    end
    object Label2: TLabel
      Left = 32
      Top = 79
      Width = 62
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'd.Produto:'
    end
    object Label7: TLabel
      Left = 199
      Top = 79
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome:'
    end
    object Shape1: TShape
      Left = 811
      Top = 48
      Width = 29
      Height = 20
      Brush.Color = clMoneyGreen
    end
    object Label8: TLabel
      Left = 842
      Top = 52
      Width = 49
      Height = 13
      Caption = 'Conclu'#237'do'
    end
    object Shape2: TShape
      Left = 811
      Top = 67
      Width = 29
      Height = 20
      Brush.Color = clAqua
    end
    object Label9: TLabel
      Left = 842
      Top = 71
      Width = 32
      Height = 13
      Caption = 'Parcial'
    end
    object Edit1: TEdit
      Left = 96
      Top = 5
      Width = 175
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
    end
    object DateEdit1: TDateEdit
      Left = 96
      Top = 48
      Width = 100
      Height = 21
      Ctl3D = True
      NumGlyphs = 2
      ParentCtl3D = False
      StartOfWeek = Sun
      TabOrder = 3
    end
    object DateEdit2: TDateEdit
      Left = 354
      Top = 48
      Width = 100
      Height = 21
      Ctl3D = True
      NumGlyphs = 2
      ParentCtl3D = False
      StartOfWeek = Sun
      TabOrder = 4
    end
    object ComboBox2: TComboBox
      Left = 502
      Top = 4
      Width = 175
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 7
      Text = 'Ambos'
      Items.Strings = (
        'Ambos'
        'Pendente'
        'Produzido')
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 368
      Top = 4
      Width = 86
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 1
    end
    object btnConsultar: TNxButton
      Left = 457
      Top = 64
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
      TabOrder = 8
      Transparent = True
      OnClick = btnConsultarClick
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 96
      Top = 70
      Width = 100
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 5
    end
    object Edit2: TEdit
      Left = 231
      Top = 71
      Width = 223
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object Edit3: TEdit
      Left = 96
      Top = 27
      Width = 358
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 100
    Width = 1056
    Height = 422
    ActivePage = TS_Item
    ActivePageDefault = TS_Item
    Align = alClient
    TabIndex = 0
    TabOrder = 1
    FixedDimension = 19
    object TS_Item: TRzTabSheet
      Color = clMoneyGreen
      Caption = 'Por Item do Pedido'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 0
        Width = 1052
        Height = 399
        Align = alClient
        Ctl3D = False
        DataSource = DMConsPedido.dsConsPedido_Item_Proc
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        OnGetCellParams = SMDBGrid1GetCellParams
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
            FieldName = 'NUM_PEDIDO'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Pedido'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEM'
            Title.Alignment = taCenter
            Title.Caption = 'Item'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTEMISSAO'
            Title.Alignment = taCenter
            Title.Caption = 'Dt. Emiss'#227'o'
            Visible = True
          end
          item
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
            Width = 259
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
            FieldName = 'NOME_PROCESSO'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Processo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODUCAO_CONCLUIDA'
            Title.Alignment = taCenter
            Title.Caption = 'Conclu'#237'da'
            Width = 64
            Visible = True
          end>
      end
    end
  end
end
