object frmEnviaEmailTitulos: TfrmEnviaEmailTitulos
  Left = 165
  Top = 51
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmEnviaEmailTitulos'
  ClientHeight = 589
  ClientWidth = 1005
  Color = 13303754
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1005
    Height = 107
    Align = alTop
    Color = 13041606
    TabOrder = 0
    DesignSize = (
      1005
      107)
    object Label1: TLabel
      Left = 272
      Top = 82
      Width = 624
      Height = 23
      Caption = 'Aguarde, enviando emails (t'#237'tulos atrasados)....'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label2: TLabel
      Left = 808
      Top = 17
      Width = 134
      Height = 13
      Caption = 'Qtd. Cliente Sem Email:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Shape1: TShape
      Left = 856
      Top = 49
      Width = 30
      Height = 15
      Brush.Color = 16777145
    end
    object Label3: TLabel
      Left = 890
      Top = 49
      Width = 81
      Height = 13
      Caption = 'Email Enviado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 645
      Top = 11
      Width = 56
      Height = 13
      Caption = 'Data Inicial:'
      Visible = False
    end
    object Label5: TLabel
      Left = 650
      Top = 33
      Width = 51
      Height = 13
      Caption = 'Data Final:'
      Visible = False
    end
    object Label6: TLabel
      Left = 303
      Top = 11
      Width = 142
      Height = 13
      Alignment = taRightJustify
      Caption = 'Enviar T'#237'tulos ao Benefici'#225'rio:'
    end
    object Label7: TLabel
      Left = 288
      Top = 32
      Width = 157
      Height = 13
      Alignment = taRightJustify
      Caption = 'Enviar T'#237'tulos ao Representante:'
    end
    object Shape2: TShape
      Left = 0
      Top = 68
      Width = 1005
      Height = 2
      Anchors = [akLeft, akTop, akRight]
    end
    object btnEnviarEmail: TNxButton
      Left = 120
      Top = 72
      Width = 113
      Height = 31
      Hint = 'Vai enviar emails dos t'#237'tulos vencidos e a vencer no dia'
      Caption = 'Enviar'
      Glyph.Data = {
        C6070000424DC60700000000000036000000280000001D000000160000000100
        1800000000009007000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFE0FFFED0FDFFD8FFFFC8FFFFCCF5F6D0FCFCD8FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3
        FFFFC8FFFFCDFFFF9EC7C797ADAD758183728F8EC8FFFFCBFEFEFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0FFFFC9FFFFBFF7F7B0DCDC6F8B87
        717C7C838A8BA9B2B3828B8CAACFD1C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFC9FFFFCEFFFFBCEFEF90C2BF6F808380868A979FA29CA8ACAAB5B9BAC7
        CBBFC7CA868F92BEFFFEC6FEFEFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDFFFFC1FFFFC1F1F298B9
        B767737685888E9DA4A9A8B8BBA1ACB1ABB7BBC2CFD3C5D1D5CEDDE0AAB4B997
        B6B9C8FFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFC9FFFFAFE2E19DBFC27A868A868A8F9DA7ABADB9BDB7
        C4C7B9C8CBA9B2B8C6D2D6C8D9DCCBDBDECBE0E3D8E5E89AA7ABC2F8F8C3FFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFAF
        EFEEA4C3C36A797A888F909EA8ACADB8BCB5C0C4BECACEC4D0D4AAB5B9CCD8DC
        CFD9DECDDFE2D2E2E5D2E3E6DAEBEEC8D5D899B2B5C5FFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFC1FEFDB7EBEC84A4A57881877A858AA3ADB0
        B0BBBEB7C3C7BDC9CDC4CFD3CBD7DBBCC8CCC7D6DACDDEE1D1E2E5D3E4E7D5E7
        EAD7E8EBD9EBEEE4F5F8A8B2B4AADEDDC2FFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        D4FFFFB4EEEB7D9496808E918A9095A2ABB0B1BCC0B6C3C7BCC8CCC2CED2C7D3
        D7CEDADEB3BFC3C1CCD0CFE0E3D3E4E7D4E5E8D8E9ECD8E9ECDBECEFDDEDF0E0
        F1F4D9E8E99DB6B8C9FFFFFFFFFFFFFFFF00BEFAFBA7D4D47082817072789DA4
        A8AAB5B9B3C0C4BEC8CEC0CFD2C1D2D5C5D8DAC8D5D9CDD9DDC9D5D9BFCBCFCA
        D6DACFDEE1D3E4E7D4E5E8D8E9ECD9EAEDDCEDF0DCEEF0DDEDF1EBFAFEBCC5C9
        B0D4D4C1FFFFFFFFFF0097B5B77580829AA1A0AAB6B9B5C2C6BBC7CCC0CCCFC3
        CFD4CBD9DDCADBDECDDEE2B9C4C89CA8AA9CA8ADD0DDE1D4E1E5C9D9DCCADCDF
        CBDDE0D1E2E5D4E5E8D5E6E9D9EAEDDCEDF0E2F0F4E7F8FA9AABADB7F2F3C3FF
        FE00D2F1F3BDCBD0B0BDC0B4C6C8BDCFD2C4D5D8C2D3D5C2D4D7D1DFE1CAD6DA
        A9B6BACBD7D7C3CFD0566263151E22585F64969EA3BFC9CDCBD5D9C0D1D7CDDD
        E0D8EAEDD7E8EBD9EAEDDEEFF2E9FBFECCDADDADD0D1C3FFFF00BCFFFFC7FEFF
        CCD2D4CADCDFCCDDE0D0E1E4D1E2E5D3E4E7D4E3E6BFCBD0B7C4C8E6F6FBE7F8
        FDFFFFFFFFFFFFFFFFFFE6F7FA6C7677656C6EC2CACDA1ACB16C797BABBABDC4
        D4D7B0C1C4BBCBCFE9F5F8A8B0B7B3E1E200BDFEFFC3FFFFCDE1E3CFDDE1D1E2
        E5D4E5E8D4E5E8D6E7EACFE1E4B5C6C8E2F5F8E1F2F5DFF1F4DDEFF3DDF1F4DC
        F0F3E2F4F7F9FFFFFAFFFFF0FFFFE2F3F4D0D8D8E1EEEFE7F5F9B9C2C4B9C4C5
        E5F1F3C3DCE0B6E4E700FFFFFFFFFFFFCDF5F3DAE6E9D7E8EBD8E9ECDAEBEED6
        E7EAB8CACDCCDDDFE6F8FBE0F1F4E2F3F6E3F4F7E2F2F5E2F3F6E2F2F5E0F2F5
        E1F2F6E4F4F7E8F7F8EBFAFCE5F6FAE4F9FCD6EFF1D2FFFFB9FBFBFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFDCEBEFDBECEEDAEBEEDBECEFC4D5D9BCCCCDEBFBFC
        E2F4F7E2F2F5E2F2F5E1F2F5E1F2F6E4F5F8E5F5F8E7F5F8E7F3F7E6F4F4DEF5
        F3CEF1F0C1F6F7B8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFD9F5F6DFECF1DEEEF2DBEBEEBECFD2E2F3F5E3F4F8E3F5F8E3F4F6E3F4
        F7E4F4F8E6F4F7E8F2F5E5F0F3DDF2F5D0F1F4C4FDFDBBFBF9FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFDFED
        F5E0EEF4C3D4D7D4E5E8E9FBFEE4F5F8E7F5F9E9F5F7E6F6F8DBEDF0D9F4F7C6
        F6F5BFFCFDB9FCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFDCF3F7D7E6E9D1E3E2F0
        FCFDEBF2F5E9F7FAD9F0F2D6F7F9C6F9F7B9F9F7B9FDFCFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFD3FBFADAE6E8E7F4F6D4F2F2CEF8F8C0FAF9
        BCFEFDBBFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFC8F5F6C6FCFEB9FCFCBBFFFEC2FCFECEFDFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00}
      TabOrder = 6
      OnClick = btnEnviarEmailClick
    end
    object DateEdit1: TDateEdit
      Left = 703
      Top = 3
      Width = 99
      Height = 21
      NumGlyphs = 2
      TabOrder = 3
      Text = '01/01/2000'
      Visible = False
    end
    object DateEdit2: TDateEdit
      Left = 703
      Top = 25
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 4
      Visible = False
    end
    object btnConsultar: TNxButton
      Left = 6
      Top = 72
      Width = 113
      Height = 31
      Hint = 'Pesquisar'
      Caption = 'Pesquisar'
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
      TabOrder = 5
      OnClick = btnConsultarClick
    end
    object CheckBox1: TCheckBox
      Left = 448
      Top = 47
      Width = 186
      Height = 17
      Caption = 'Anexar Boleto dos t'#237'tulos a vencer'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object cbxFilial: TComboBox
      Left = 448
      Top = 3
      Width = 145
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 0
      Text = 'Agrupado'
      Items.Strings = (
        'Agrupado'
        'Individual')
    end
    object cbxVendedor: TComboBox
      Left = 448
      Top = 24
      Width = 145
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 1
      Text = 'Agrupado'
      Items.Strings = (
        'Agrupado'
        'Individual')
    end
    object gbxVencidos: TRzGroupBox
      Left = 4
      Top = 1
      Width = 130
      Height = 64
      BorderColor = clNavy
      BorderInner = fsButtonUp
      BorderOuter = fsBump
      Caption = ' Em atraso (enviar para) '
      Color = 13041606
      Ctl3D = True
      FlatColor = clNavy
      FlatColorAdjustment = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
      Visible = False
      VisualStyle = vsGradient
      object ckVendedor: TNxCheckBox
        Left = 8
        Top = 16
        Width = 97
        Height = 14
        BorderStyle = bsNone
        Color = 13041606
        TabOrder = 0
        Text = 'ckVendedor'
        Caption = 'Representante'
        Checked = True
      end
      object ckFilial: TNxCheckBox
        Left = 8
        Top = 31
        Width = 97
        Height = 14
        BorderStyle = bsNone
        Color = 13041606
        TabOrder = 1
        Text = 'NxCheckBox1'
        Caption = 'Benefici'#225'rio'
        Checked = True
      end
      object ckCliente: TNxCheckBox
        Left = 8
        Top = 46
        Width = 62
        Height = 14
        BorderStyle = bsNone
        Color = 13041606
        TabOrder = 2
        Text = 'NxCheckBox1'
        Caption = 'Cliente'
        Checked = True
      end
    end
    object gbxAVencer: TRzGroupBox
      Left = 140
      Top = 1
      Width = 130
      Height = 64
      BorderColor = clNavy
      BorderInner = fsButtonUp
      BorderOuter = fsBump
      Caption = ' A Vencer (enviar para) '
      Color = 13041606
      Ctl3D = True
      FlatColor = clNavy
      FlatColorAdjustment = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
      Visible = False
      VisualStyle = vsGradient
      object ckCliente_AVencer: TNxCheckBox
        Left = 8
        Top = 15
        Width = 62
        Height = 14
        BorderStyle = bsNone
        Color = 13041606
        TabOrder = 0
        Text = 'NxCheckBox1'
        Caption = 'Cliente'
        Checked = True
      end
    end
    object btnLimpar_Emails: TBitBtn
      Left = 288
      Top = 47
      Width = 105
      Height = 21
      Caption = 'Limpar os emails'
      TabOrder = 9
      Visible = False
      OnClick = btnLimpar_EmailsClick
    end
  end
  object RzPageControl5: TRzPageControl
    Left = 0
    Top = 107
    Width = 1005
    Height = 482
    ActivePage = TS_Atraso
    ActivePageDefault = TS_Atraso
    Align = alClient
    BoldCurrentTab = True
    TabIndex = 0
    TabOrder = 1
    FixedDimension = 19
    object TS_Atraso: TRzTabSheet
      Color = 13303754
      Caption = 'Titulos em atraso e vencendo no dia'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 0
        Width = 1001
        Height = 459
        Align = alClient
        Ctl3D = False
        DataSource = DMCob_Eletronica.dsmEmail
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
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
        ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        OnGetCellParams = SMDBGrid1GetCellParams
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
            FieldName = 'Email'
            Title.Alignment = taCenter
            Width = 226
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome'
            ReadOnly = True
            Title.Caption = 'Cliente'
            Width = 252
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNPJ_CPF'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'CNPJ/CPF'
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd_Titulos'
            ReadOnly = True
            Title.Caption = 'Qtd. T'#237'tulos'
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Titulos'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'T'#237'tulos'
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DtVencimento'
            Title.Alignment = taCenter
            Title.Caption = 'Dt. Vencimento (mais antigo)'
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Obs'
            ReadOnly = True
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Email_Filial'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Email_Vendedor'
            Width = 200
            Visible = True
          end>
      end
    end
    object TS_AVencer: TRzTabSheet
      Color = 13303754
      Caption = 'T'#237'tulos a vencer'
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 0
        Width = 1001
        Height = 459
        Align = alClient
        Ctl3D = False
        DataSource = DMCob_Eletronica.dsmEmail_AVencer
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
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
        ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        OnGetCellParams = SMDBGrid2GetCellParams
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
            FieldName = 'Email'
            Title.Alignment = taCenter
            Width = 226
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome'
            ReadOnly = True
            Title.Caption = 'Cliente'
            Width = 252
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNPJ_CPF'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'CNPJ/CPF'
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Num_Duplicata'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' T'#237'tulo'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Parcela'
            Title.Alignment = taCenter
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            Title.Alignment = taCenter
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DtVencimento'
            Title.Alignment = taCenter
            Title.Caption = 'Dt. Vencimento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_Conta'
            Title.Alignment = taCenter
            Title.Caption = 'ID Conta'
            Width = 34
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Email_Filial'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Email_Vendedor'
            Width = 200
            Visible = True
          end>
      end
    end
    object TS_Vendedor: TRzTabSheet
      Color = 13303754
      Caption = 'Representantes (T'#237'tulos Vencidos)'
      object RzGroupBox1: TRzGroupBox
        Left = 0
        Top = 201
        Width = 1001
        Height = 258
        Align = alClient
        BorderColor = clRed
        BorderInner = fsButtonUp
        BorderOuter = fsBump
        Caption = ' T'#237'tulos do Representante '
        Color = 13041606
        Ctl3D = True
        FlatColor = clRed
        FlatColorAdjustment = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        VisualStyle = vsGradient
        object SMDBGrid3: TSMDBGrid
          Left = 5
          Top = 18
          Width = 991
          Height = 235
          Align = alClient
          Ctl3D = False
          DataSource = DMCob_Eletronica.dsmVendedor_Tit
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clRed
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
          ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 11
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
          ColCount = 7
          RowCount = 2
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Num_Titulo'
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' T'#237'tulo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NossoNumero'
              Title.Alignment = taCenter
              Title.Caption = 'Nosso N'#250'mero'
              Width = 134
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vlr_Titulo'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. T'#237'tulo'
              Width = 86
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DtVencimento'
              Title.Alignment = taCenter
              Title.Caption = 'Data Vencimento'
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_Cliente'
              Title.Alignment = taCenter
              Title.Caption = 'ID Cliente'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nome_Cliente'
              Title.Alignment = taCenter
              Title.Caption = 'Nome Cliente'
              Width = 409
              Visible = True
            end>
        end
      end
      object RzGroupBox2: TRzGroupBox
        Left = 0
        Top = 0
        Width = 1001
        Height = 201
        Align = alTop
        BorderColor = clNavy
        BorderInner = fsButtonUp
        BorderOuter = fsBump
        Caption = ' Representantes '
        Color = 13041606
        Ctl3D = True
        FlatColor = clNavy
        FlatColorAdjustment = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        VisualStyle = vsGradient
        object SMDBGrid4: TSMDBGrid
          Left = 5
          Top = 18
          Width = 991
          Height = 178
          Align = alClient
          Ctl3D = False
          DataSource = DMCob_Eletronica.dsmVendedor
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clNavy
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
          ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
          OnGetCellParams = SMDBGrid4GetCellParams
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
              FieldName = 'ID'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'ID Repr.'
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nome'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Nome Representante'
              Width = 317
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Filial'
              ReadOnly = True
              Title.Alignment = taCenter
              Width = 33
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vlr_Total'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. Total'
              Width = 82
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Qtd_Titulos'
              ReadOnly = True
              Title.Caption = 'Qtd. T'#237'tulos'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Email'
              Title.Alignment = taCenter
              Title.Caption = 'Email Representante'
              Width = 214
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Email_Filial'
              Title.Alignment = taCenter
              Title.Caption = 'Email Filial'
              Width = 166
              Visible = True
            end>
        end
      end
    end
  end
end
